local meta = FindMetaTable("Entity")
if not meta then return end

local M_Player = FindMetaTable("Player")
local P_Team = M_Player.Team
local E_IsValid = meta.IsValid
local vector_origin = vector_origin
local util_SharedRandom = util.SharedRandom
local util_TraceHull = util.TraceHull
local util_TraceLine = util.TraceLine
local TEAM_HUMAN = TEAM_HUMAN
local TEAM_UNDEAD = TEAM_UNDEAD
local HITGROUP_HEAD = HITGROUP_HEAD
local MASK_SHOT = MASK_SHOT
local pairs = pairs
local CONTENTS_LIQUID = bit.bor(CONTENTS_WATER, CONTENTS_SLIME)
local MASK_SHOT_HIT_WATER = bit.bor(MASK_SHOT, CONTENTS_LIQUID)
local bullet_tr = {}
local bullet_water_tr = {}
local temp_angle = Angle(0, 0, 0)
local temp_ignore_team
local temp_has_spread
local method_to_use, base_ang
local bullet_trace = {mask = MASK_SHOT, output = bullet_tr}
local temp_shooter = NULL
local temp_attacker = NULL
local attacker_player, inflictor_weapon
local temp_vel_ents = {}

local LASTHITCLIPHULL = false
local ClipHullBulletsResult
local ClipHullBulletsReturn = {effects = false, damage = false}
local ClipHullBullets = {
	Damage = 0,
	Force = 0,
	Tracer = 0,
	Callback = function(from, tr, dmginfo)
		ClipHullBulletsResult = tr
		return ClipHullBulletsReturn
	end
}
function meta:ClipHullTraceHull(distance, size, start, dir)
	start = start or self:GetShootPos()
	dir = dir or self:GetAimVector()

	ClipHullBullets.Src = start
	ClipHullBullets.Dir = dir
	ClipHullBullets.HullSize = size
	ClipHullBullets.Distance = distance
	ClipHullBulletsResult = nil
	self:FireBullets(ClipHullBullets)

	LASTHITCLIPHULL = false

	if ClipHullBulletsResult and ClipHullBulletsResult.HitNonWorld and ClipHullBulletsResult.Entity:IsValid() and ClipHullBulletsResult.Entity:IsPlayer() and ClipHullBulletsResult.HitPos:Distance(start) <= distance then
		LASTHITCLIPHULL = true
		return ClipHullBulletsResult
	end

	return self:TraceHull(distance, mask, size, filter, start)
end

function meta:ClipHullMeleeTrace(distance, size, filter, start)
	local cliphullpretrace = self:ClipHullTraceHull(distance, size, start)
	if cliphullpretrace and LASTHITCLIPHULL then
		return cliphullpretrace
	end

	self:LagCompensation(true)
	local t = self:MeleeTrace(distance, size, filter, start)
	self:LagCompensation(false)

	return t
end

-- Extremely shitty workaround for util trace functions not using clip hulls
function meta:PenetratingClipHullMeleeTrace(distance, size, prehit, start, dir)
	local t
	local cliphullpretrace = self:ClipHullTraceHull(distance, size, start, dir)
	self:LagCompensation(true)
	t = self:PenetratingMeleeTrace(distance, size, prehit, start, dir)
	if cliphullpretrace and LASTHITCLIPHULL and cliphullpretrace.Entity ~= prehit and not (t[1] and t[1].Entity:IsValid() and t[1].Entity == cliphullpretrace.Entity) then
		table.insert(t, 1, cliphullpretrace)
	end
	self:LagCompensation(false)

	return t
end

function meta:ApplyPlayerProperties(ply)
	self.GetPlayerColor = function() return ply:GetPlayerColor() end
	self:SetBodygroup( ply:GetBodygroup(1), 1 )
	self:SetMaterial( ply:GetMaterial() )
	self:SetSkin( ply:GetSkin() or 1 )
end

function meta:RestartGesture(act)
	-- was previously deprecated. will update later, this is to stop errors.
end

function meta:GetVolume()
	local mins, maxs = self:OBBMins(), self:OBBMaxs()
	return (maxs.x - mins.x) + (maxs.y - mins.y) + (maxs.z - mins.z)
end

function meta:TakeSpecialDamage(damage, damagetype, attacker, inflictor, hitpos, damageforce)
	attacker = attacker or self
	if not attacker:IsValid() then attacker = self end
	inflictor = inflictor or attacker
	if not inflictor:IsValid() then inflictor = attacker end

	local nearest = self:NearestPoint(inflictor:NearestPoint(self:LocalToWorld(self:OBBCenter())))

	local dmginfo = DamageInfo()
	dmginfo:SetDamage(damage)
	dmginfo:SetAttacker(attacker)
	dmginfo:SetInflictor(inflictor)
	dmginfo:SetDamagePosition(hitpos or nearest)
	dmginfo:SetDamageType(damagetype)
	if damageforce then
		dmginfo:SetDamageForce(damageforce)
	end
	self:TakeDamageInfo(dmginfo)

	return dmginfo
end

function meta:NearestBone(pos)
	local count = self:GetBoneCount()
	if count == 0 then return end

	local nearest
	local nearestdist

	for boneid = 1, count - 1 do
		local bonepos, boneang = self:GetBonePositionMatrixed(boneid)
		local dist = bonepos:Distance(pos)

		if not nearest or dist < nearestdist then
			nearest = boneid
			nearestdist = dist
		end
	end

	return nearest
end

function meta:IsProjectile()
	return IsValid(self) and self:GetCollisionGroup() == COLLISION_GROUP_PROJECTILE or self.AlwaysProjectile
end

function meta:SetupGenericProjectile(gravity)
	self:SetCustomCollisionCheck(true)
	self:SetCollisionGroup(COLLISION_GROUP_PROJECTILE)

	local phys = self:GetPhysicsObject()
	if phys:IsValid() then
		phys:SetMass(1)
		phys:SetBuoyancyRatio(0.0001)
		phys:EnableMotion(true)
		if not gravity then phys:EnableGravity(gravity) end
		phys:EnableDrag(false)
		phys:Wake()
	end
end

function meta:ProjectileDamageSource()
	return (self.ProjSource and E_IsValid(self.ProjSource)) and self.ProjSource or self
end

function meta:ResetBones(onlyscale)
	local v = Vector(1, 1, 1)
	if onlyscale then
		for i=0, self:GetBoneCount() - 1 do
			self:ManipulateBoneScale(i, v)
		end
	else
		local a = Angle(0, 0, 0)
		for i=0, self:GetBoneCount() - 1 do
			self:ManipulateBoneScale(i, v)
			self:ManipulateBoneAngles(i, a)
			self:ManipulateBonePosition(i, vector_origin)
		end
	end
end

function meta:SetBarricadeHealth(m)
	self:SetDTFloat(1, m)
end

function meta:GetBarricadeHealth()
	return self:GetDTFloat(1)
end

function meta:SetMaxBarricadeHealth(m)
	self:SetDTFloat(2, m)
end

function meta:GetMaxBarricadeHealth()
	return self:GetDTFloat(2)
end

function meta:SetBarricadeRepairs(m)
	self:SetDTFloat(3, m)
end

function meta:GetBarricadeRepairs()
	return self:GetDTFloat(3)
end

function meta:GetMaxBarricadeRepairs()
	return self:GetMaxBarricadeHealth() * 1.5
end

function meta:GetBonePositionMatrixed(index)
	local matrix = self:GetBoneMatrix(index)
	if matrix then
		return matrix:GetTranslation(), matrix:GetAngles()
	end

	return self:GetPos(), self:GetAngles()
end

-- This needs to be done otherwise the physics might crash.
function meta:CollisionRulesChanged()
	if not self.m_OldCollisionGroup then self.m_OldCollisionGroup = self:GetCollisionGroup() end
	self:SetCollisionGroup(self.m_OldCollisionGroup == COLLISION_GROUP_DEBRIS and COLLISION_GROUP_WORLD or COLLISION_GROUP_DEBRIS)
	self:SetCollisionGroup(self.m_OldCollisionGroup)
	self.m_OldCollisionGroup = nil
end

function meta:GetIsNailed()
	return self:GetNWBool("IsNailed", false)
end

function meta:IsNailed()
	return self:GetIsNailed()
end

function meta:GetAlpha()
	return self:GetColor().a
end

function meta:SetAlpha(a)
	local col = self:GetColor()
	col.a = a
	self:SetColor(col)
end

local function barricadetimer(self, timername)
	if self:IsValid() then
		for _, e in pairs(ents.FindInBox(self:WorldSpaceAABB())) do
			if e and e:IsValid() and e:IsPlayer() and e:Alive() then
				return
			end
		end

		self.IsBarricadeObject = nil
		self:CollisionRulesChanged()
	end

	timer.Destroy(timername)
end

function meta:TemporaryBarricadeObject()
	if self.IsBarricadeObject then return end

	for _, e in pairs(ents.FindInBox(self:WorldSpaceAABB())) do
		if e and e:IsValid() and e:IsPlayer() and e:Alive() then
			self.IsBarricadeObject = true
			self:CollisionRulesChanged()

			local timername = "TemporaryBarricadeObject"..self:GetCreationID()
			timer.CreateEx(timername, 0, 0, barricadetimer, self, timername)

			return
		end
	end
end

function meta:IsBarricadeProp()
	return self.IsBarricadeObject or self:IsNailed()
end

function meta:GetHolder()
	for _, ent in pairs(ents.FindByClass("status_human_holding")) do
		if ent:GetObject() == self then
			local owner = ent:GetOwner()
			if owner:IsPlayer() and owner:Alive() then return owner, ent end
		end
	end
end

function meta:ThrowFromPosition(pos, force, noknockdown)
	if force == 0 or self:IsProjectile() or self.NoThrowFromPosition then return false end

	if self:IsPlayer() and self:ActiveBarricadeGhosting() then return false end

	if self:GetMoveType() == MOVETYPE_VPHYSICS then
		local phys = self:GetPhysicsObject()
		if phys:IsValid() and phys:IsMoveable() then
			local nearest = self:NearestPoint(pos)
			phys:ApplyForceOffset(force * 50 * (nearest - pos):GetNormalized(), nearest)
		end

		return true
	elseif self:GetMoveType() >= MOVETYPE_WALK and self:GetMoveType() < MOVETYPE_PUSH then
		self:SetGroundEntity(NULL)
		if SERVER and not noknockdown and self:IsPlayer() then
			local absforce = math.abs(force)
			if absforce >= 512 or self.Clumsy and self:Team() ~= TEAM_UNDEAD and absforce >= 32 then
				self:KnockDown()
			end
		end
		self:SetVelocity(force * (self:LocalToWorld(self:OBBCenter()) - pos):GetNormalized())

		return true
	end
end

function meta:ThrowFromPositionSetZ(pos, force, zmul, noknockdown)
	if force == 0 or self:IsProjectile() or self.NoThrowFromPosition then return false end
	zmul = zmul or 0.7

	if self:IsPlayer() and self:ActiveBarricadeGhosting() then return false end

	if self:GetMoveType() == MOVETYPE_VPHYSICS then
		local phys = self:GetPhysicsObject()
		if phys:IsValid() and phys:IsMoveable() then
			local nearest = self:NearestPoint(pos)
			local dir = nearest - pos
			dir.z = 0
			dir:Normalize()
			dir.z = zmul
			phys:ApplyForceOffset(force * 50 * dir, nearest)
		end

		return true
	elseif self:GetMoveType() >= MOVETYPE_WALK and self:GetMoveType() < MOVETYPE_PUSH then
		self:SetGroundEntity(NULL)
		if SERVER and not noknockdown and self:IsPlayer() then
			local absforce = math.max(math.abs(force) * math.abs(zmul), math.abs(force))
			if absforce >= 512 or self.Clumsy and self:Team() ~= TEAM_UNDEAD and absforce >= 32 then
				self:KnockDown()
			end
		end

		local dir = self:LocalToWorld(self:OBBCenter()) - pos
		dir.z = 0
		dir:Normalize()
		dir.z = zmul
		self:SetVelocity(force * dir)

		return true
	end
end

util.PrecacheSound("player/pl_pain5.wav")
util.PrecacheSound("player/pl_pain6.wav")
util.PrecacheSound("player/pl_pain7.wav")
function meta:PoisonDamage(damage, attacker, inflictor, hitpos, noreduction)
	damage = damage or 1

	local dmginfo = DamageInfo()

	if self:IsPlayer() then
		if self:Team() ~= TEAM_HUMAN then return end

		if self.BuffResistant then
			damage = damage / 2
		end
		
		if self.Allergic then
			damage = damage * 2
		end

		self:ViewPunch(Angle(math.random(-10, 10), math.random(-10, 10), math.random(-20, 20)))
		self:EmitSound("player/pl_pain"..math.random(5, 7)..".wav")

		if SERVER then
			self:GiveStatus("poisonrecovery"):AddDamage(math.floor(damage * 0.75))
		end

		dmginfo:SetDamageType(DMG_ACID)
	else
		if not noreduction then
			damage = damage / 3
		end
		dmginfo:SetDamageType(DMG_SLASH) -- Fixes not doing damage to props.
	end

	attacker = attacker or self
	inflictor = inflictor or attacker

	dmginfo:SetDamagePosition(hitpos or self:NearestPoint(inflictor:NearestPoint(self:LocalToWorld(self:OBBCenter()))))
	dmginfo:SetDamage(damage)
	dmginfo:SetAttacker(attacker)
	dmginfo:SetInflictor(inflictor)
	self:TakeDamageInfo(dmginfo)
end

if CLIENT then
	function meta:SetModelScaleVector(vec)
		local bonecount = self:GetBoneCount()
		if bonecount and bonecount > 1 then
			local scale
			if type(vec) == "number" then
				scale = vec
			else
				scale = math.min(vec.x, vec.y, vec.z)
			end
			self._ModelScale = Vector(scale, scale, scale)
			self:SetModelScale(scale, 0)
		else
			if type(vec) == "number" then
				vec = Vector(vec, vec, vec)
			end

			self._ModelScale = vec
			local m = Matrix()
			m:Scale(vec)
			self:EnableMatrix("RenderMultiply", m)
		end
	end

	if not meta.TakeDamageInfo then
		meta.TakeDamageInfo = function() end
	end
	if not meta.SetPhysicsAttacker then
		meta.SetPhysicsAttacker = function() end
	end
end

local string_sub = string.sub
function meta:IsAPhysicsProp()
	if not IsValid(self) then return false end
	
	if not self.CheckedIsPhysProp then
		self.CheckedIsPhysProp = (string_sub(self:GetClass(), 1, 12) == "prop_physics" or string_sub(self:GetClass(), 1, 12) == "func_physbox") and 1 or 0
	end
	return self.CheckedIsPhysProp==1
end

local OldSequenceDuration = meta.SequenceDuration
function meta:SequenceDuration(seqid)
	return OldSequenceDuration(self, seqid) or 0
end

function meta:IsValidPlayer()
	return self:IsValid() and self:IsPlayer()
end

function meta:IsValidHuman()
	return E_IsValid(self) and self:IsPlayer() and P_Team(self) == TEAM_HUMAN
end

function meta:IsValidZombie()
	return E_IsValid(self) and self:IsPlayer() and P_Team(self) == TEAM_UNDEAD
end

function meta:IsHuman()
	return self:IsPlayer() and P_Team(self) == TEAM_HUMAN
end

function meta:IsZombie()
	return self:IsPlayer() and P_Team(self) == TEAM_UNDEAD
end

function meta:IsValidLivingPlayer()
	return self:IsValidPlayer() and self:Alive()
end

function meta:IsValidLivingHuman()
	return self:IsValidHuman() and self:Alive()
end

function meta:IsValidLivingZombie()
	return self:IsValidZombie() and self:Alive()
end


local function BaseBulletFilter(ent) 
	if ent == temp_shooter or ent == temp_attacker or ent.NeverAlive or ent.SpawnProtection or ent.IgnoreBullets or ent:IsPlayer() and ent:Team() == temp_ignore_team then
		return false
	end

	if ent.AlwaysImpactBullets then
		return true
	end
	return true
end

function meta:SetLastHitGroup(group)

	self.m_LastHitGroup = group

end

function meta:LastHitGroup()
	return self.m_LastHitGroup or HITGROUP_CHEST
end

local function HandleShotImpactingWater(damage)
	-- Trace again with water enabled
	bullet_trace.mask = MASK_SHOT_HIT_WATER
	bullet_trace.output = bullet_water_tr
	util_TraceLine(bullet_trace)
	bullet_trace.output = bullet_tr
	bullet_trace.mask = MASK_SHOT

	if bullet_water_tr.AllSolid then return false end

	local contents = util.PointContents(bullet_water_tr.HitPos - bullet_water_tr.HitNormal * 0.1)
	if bit.band(contents, CONTENTS_LIQUID) == 0 then return false end

	if IsFirstTimePredicted() then
		local effectdata = EffectData()
		effectdata:SetOrigin(bullet_water_tr.HitPos)
		effectdata:SetNormal(bullet_water_tr.HitNormal)
		effectdata:SetScale(math.Clamp(damage * 0.25, 5, 30))
		effectdata:SetFlags(bit.band(contents, CONTENTS_SLIME) ~= 0 and 1 or 0)
		util.Effect("gunshotsplash", effectdata)
	end

	return true
end


local wspawn = Entity(0)
local function CheckFHB(tr)
	local ent = tr.Entity
	if ent == wspawn then
		return
	end

	if ent.FHB and ent:IsValid() then
		tr.Entity = ent:GetParent()
	end
end


function meta:FireBulletsLua(src, dir, spread, num, damage, attacker, force_mul, tracer, callback, hull_size, hit_own_team, max_distance, filter, inflictor)
	max_distance = max_distance or 56756
	attacker = attacker or self

	if not attacker:IsValid() then attacker = self end

	force_mul = force_mul or 1
	temp_shooter = self
	temp_attacker = attacker
	attacker_player = attacker:IsPlayer()
	inflictor_weapon = inflictor and inflictor:IsWeapon()
	bullet_trace.start = src

	if filter then
		bullet_trace.filter = filter
	else
		bullet_trace.filter = BaseBulletFilter

		if not hit_own_team and attacker_player then
			temp_ignore_team = attacker:Team()
		else
			temp_ignore_team = nil
		end
	end

	if hull_size then
		bullet_trace.maxs = Vector(hull_size, hull_size, hull_size) * 0.5
		bullet_trace.mins = bullet_trace.maxs * -1
		method_to_use = util_TraceHull
	else
		method_to_use = util_TraceLine
	end

	base_ang = dir:Angle()
	temp_has_spread = spread > 0

	for i=0, num - 1 do
		if temp_has_spread then
			temp_angle:Set(base_ang)
			temp_angle:RotateAroundAxis(temp_angle:Forward(), inflictor_weapon and util_SharedRandom("bulletrotate" .. i, 0, 360) or math.Rand(0, 360))
			temp_angle:RotateAroundAxis(temp_angle:Up(), inflictor_weapon and util_SharedRandom("bulletangle" .. i, -spread, spread) or math.Rand(-spread, spread))
			dir = temp_angle:Forward()
		end

		bullet_trace.endpos = src + dir * max_distance
		bullet_tr = method_to_use(bullet_trace)
		CheckFHB(bullet_tr)

		local hitwater

		if bit.band(util.PointContents(bullet_tr.HitPos), CONTENTS_LIQUID) ~= 0 then
			hitwater = HandleShotImpactingWater(damage)
		end

		local damageinfo = DamageInfo()
		damageinfo:SetDamageType(DMG_BULLET)
		damageinfo:SetDamage(damage)
		damageinfo:SetDamagePosition(bullet_tr.HitPos)
		damageinfo:SetAttacker(attacker)
		damageinfo:SetInflictor(inflictor or self)

		if force_mul > 0 then
			damageinfo:SetDamageForce(force_mul * damage * 70 * dir:GetNormalized())
		else
			damageinfo:SetDamageForce(Vector(0, 0, 1))
		end

		local use_tracer = true
		local use_impact = true
		local use_ragdoll_impact = true
		local use_damage = true

		if callback then
			local ret = callback(attacker, bullet_tr, damageinfo)
			
			if ret then
				if ret.donothing then continue end
				if ret.tracer ~= nil then use_tracer = ret.tracer end
				if ret.impact ~= nil then use_impact = ret.impact end
				if ret.ragdoll_impact ~= nil then use_ragdoll_impact = ret.ragdoll_impact end
				if ret.damage ~= nil then use_damage = ret.damage end
			end
		end

		local ent = bullet_tr.Entity
		if ent:IsValid() then
			if use_damage then
				if ent:IsPlayer() then
					temp_vel_ents[ent] = temp_vel_ents[ent] or ent:GetVelocity()

					if SERVER then
						ent:SetLastHitGroup(bullet_tr.HitGroup)
					end
				elseif attacker:IsValidPlayer() then
					local phys = ent:GetPhysicsObject()
					
					if ent:GetMoveType() == MOVETYPE_VPHYSICS and phys:IsValid() and phys:IsMoveable() then
						ent:SetPhysicsAttacker(attacker)
					end
				end
				ent:DispatchTraceAttack(damageinfo, bullet_tr, dir)
			end
		end


		if IsFirstTimePredicted() then
			local effectdata = EffectData()
			
			effectdata:SetOrigin(bullet_tr.HitPos)
			effectdata:SetStart(src)
			effectdata:SetNormal(bullet_tr.HitNormal)

			if hitwater then
				if use_ragdoll_impact then
					util.Effect("RagdollImpact", effectdata)
				end

			elseif use_impact and not bullet_tr.HitSky and bullet_tr.Fraction < 1 then
				effectdata:SetSurfaceProp(bullet_tr.SurfaceProps)
				effectdata:SetDamageType(DMG_BULLET)
				effectdata:SetHitBox(bullet_tr.HitBox)
				effectdata:SetEntity(ent)
				util.Effect("Impact", effectdata)
			end

			if use_tracer then
				if self:IsPlayer() and self:GetActiveWeapon():IsValid() then

					effectdata:SetFlags( 0x0003 )
					effectdata:SetEntity(self:GetActiveWeapon())
					effectdata:SetAttachment(1)
				else
					effectdata:SetEntity(self)
					effectdata:SetFlags( 0x0001 )
				end
				effectdata:SetScale(5000)
				util.Effect(tracer or "Tracer", effectdata)
			end
		end
	end
	for ent, vel in pairs(temp_vel_ents) do
		ent:SetLocalVelocity(vel)
	end
	table.Empty(temp_vel_ents)
end