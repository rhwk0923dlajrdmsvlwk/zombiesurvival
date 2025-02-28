AddCSLuaFile("cl_init.lua")
AddCSLuaFile("shared.lua")
AddCSLuaFile("cl_animations.lua")

include("shared.lua")

ENT.CleanupPriority = 1

function ENT:Initialize()
	self.m_Health = 200
	self.IgnorePickupCount = self.IgnorePickupCount or false
	self.Forced = self.Forced or false
	self.NeverRemove = self.NeverRemove or false
	self.IgnoreUse = self.IgnoreUse or false
	self.Empty = self.Empty or false
	
	local class = self:GetWeaponType()
	local sandbox_tab = self.SandBoxTable[class]
	local weptab = weapons.GetStored(self:GetWeaponType())
	if weptab and not weptab.BoxPhysicsMax or self.SandBoxTable and sandbox_tab then
		self:PhysicsInit(SOLID_VPHYSICS)
	end
	self:SetSolid(SOLID_VPHYSICS)
	self:SetCollisionGroup(COLLISION_GROUP_DEBRIS_TRIGGER)

	self:SetUseType(SIMPLE_USE)

	local phys = self:GetPhysicsObject()
	if phys:IsValid() then
		phys:SetMaterial("material")
		phys:EnableMotion(true)
		phys:Wake()
	end

	self:ItemCreated()
end

function ENT:SetClip1(ammo)
	self.m_Clip1 = tonumber(ammo) or self:GetClip1()
end

function ENT:GetClip1()
	return self.m_Clip1 or 0
end

function ENT:SetClip2(ammo)
	self.m_Clip2 = tonumber(ammo) or self:GetClip2()
end

function ENT:GetClip2()
	return self.m_Clip2 or 0
end

function ENT:SetShouldRemoveAmmo(bool)
	self.m_DontRemoveAmmo = not bool
end

function ENT:GetShouldRemoveAmmo()
	return not self.m_DontRemoveAmmo
end

function ENT:Use(activator, caller)
	if self.IgnoreUse then return end
	self:GiveToActivator(activator, caller)
end

function ENT:GiveToActivator(activator, caller)
	if  not activator:IsPlayer()
		or not activator:Alive()
		or activator:Team() ~= TEAM_HUMAN
		or self.Removing
		or (activator:KeyDown(GAMEMODE.UtilityKey) and not self.Forced)
		or self.NoPickupsTime and CurTime() < self.NoPickupsTime and self.NoPickupsOwner ~= activator then 
		
		self:Input("OnPickupFailed", activator)
		return 
	end

	local weptype = self:GetWeaponType()
	if not weptype then 
		self:Input("OnPickupFailed", activator)
		return 
	end

	if activator:HasWeapon(weptype) and (self.Forced or not GAMEMODE.MaxWeaponPickups) then
		local wep = activator:GetWeapon(weptype)
		if wep:IsValid() then
			local primary = wep:ValidPrimaryAmmo()
			local secondary = wep:ValidSecondaryAmmo()

			if primary then activator:GiveAmmo(self:GetClip1(), primary) self:SetClip1(0) end
			if secondary then activator:GiveAmmo(self:GetClip2(), secondary) self:SetClip2(0) end

			local stored = weapons.GetStored(weptype)
			if stored and stored.AmmoIfHas then
				self:Input("OnPickupPassed", activator)
				if not self.NeverRemove then self:RemoveNextFrame() end
			end
			return
		end
	end

	if not self.PlacedInMap or not GAMEMODE.MaxWeaponPickups or (activator.WeaponPickups or 0) < GAMEMODE.MaxWeaponPickups or team.NumPlayers(TEAM_HUMAN) <= 1 then
		local wep = (self.PlacedInMap and not self.Empty) and activator:Give(weptype) or activator:GiveEmptyWeapon(weptype)
		if wep and wep:IsValid() and wep:GetOwner():IsValid() then
			if self:GetShouldRemoveAmmo() then
				wep:SetClip1(self:GetClip1())
				wep:SetClip2(self:GetClip2())
			end

			if self.PlacedInMap and not self.IgnorePickupCount then
				activator.WeaponPickups = (activator.WeaponPickups or 0) + 1
			end
			self:Input("OnPickupPassed", activator)
			if not self.NeverRemove then self:RemoveNextFrame() end
		else
			self:Input("OnPickupFailed", activator)
		end
	else
		self:Input("OnPickupFailed", activator)
		activator:CenterNotify(COLOR_RED, translate.ClientGet(activator, "you_decide_to_leave_some"))
	end
end

function ENT:KeyValue(key, value)
	key = string.lower(key)
	if key == "weapontype" then
		self:SetWeaponType(value)
	elseif key == "ignorepickupcount" then
		self.IgnorePickupCount = tonumber(value) == 1
	elseif key == "neverremove" then
		self.NeverRemove = tonumber(value) == 1
	elseif key == "ignoreuse" then
		self.IgnoreUse = tonumber(value) == 1
	elseif key == "empty" then
		self.Empty = tonumber(value) == 1
	elseif string.sub(key, 1, 2) == "on" then
		self:AddOnOutput(key, value)
	end
end

function ENT:AcceptInput(name, activator, caller, arg)
	name = string.lower(name)
	if name == "givetoactivator" then
		self.Forced = true
		self:GiveToActivator(activator,caller)
		return true
	elseif name == "setneverremove" then
		self.NeverRemove = tonumber(arg) == 1
		return true
	elseif name == "setignorepickupcount" then
		self.IgnorePickupCount = tonumber(arg) == 1
		return true
	elseif name == "setignoreuse" then
		self.IgnoreUse = tonumber(arg) == 1
		return true
	elseif name == "setweapontype" then
		self:SetWeaponType(arg)
		return true
	elseif name == "setempty" then
		self.Empty = tonumber(arg) == 1
	elseif string.sub(name, 1, 2) == "on" then
		self:FireOutput(name, activator, caller, args)
	end
end

function ENT:OnTakeDamage(dmginfo)
	if self.NeverRemove then return end
	self:TakePhysicsDamage(dmginfo)

	self.m_Health = self.m_Health - dmginfo:GetDamage()
	if self.m_Health <= 0 then
		self:RemoveNextFrame()
	end
end
