AddCSLuaFile("cl_init.lua")
AddCSLuaFile("shared.lua")

include("shared.lua")

local function RefreshCrateOwners(pl)
	for _, ent in pairs(ents.FindByClass("prop_arsenalcrate")) do
		if ent:IsValid() and ent:GetObjectOwner() == pl then
			ent:SetObjectOwner(NULL)
		end
	end
end
hook.Add("PlayerDisconnected", "ArsenalCrate.PlayerDisconnected", RefreshCrateOwners)
hook.Add("OnPlayerChangedTeam", "ArsenalCrate.OnPlayerChangedTeam", RefreshCrateOwners)

function ENT:Initialize()
	self:SetModel("models/Items/item_item_crate.mdl")
	self:PhysicsInit(SOLID_VPHYSICS)
	self:SetUseType(SIMPLE_USE)

	local phys = self:GetPhysicsObject()
	if phys:IsValid() then
		phys:EnableMotion(false)
	end

	self:SetMaxObjectHealth(200)
	self:SetObjectHealth(self:GetMaxObjectHealth())
end

function ENT:KeyValue(key, value)
	key = string.lower(key)
	if key == "maxcratehealth" then
		value = tonumber(value)
		if not value then return end

		self:SetMaxObjectHealth(value)
	elseif key == "cratehealth" then
		value = tonumber(value)
		if not value then return end

		self:SetObjectHealth(value)
	end
end

function ENT:AcceptInput(name, activator, caller, args)
	if name == "setcratehealth" then
		self:KeyValue("cratehealth", args)
		return true
	elseif name == "setmaxcratehealth" then
		self:KeyValue("maxcratehealth", args)
		return true
	end
end

function ENT:SetObjectHealth(health)
	self:SetDTFloat(0, health)
	if health <= 0 and not self.Destroyed then
		self.Destroyed = true

		local ent = ents.Create("prop_physics")
		if ent:IsValid() then
			ent:SetModel(self:GetModel())
			ent:SetMaterial(self:GetMaterial())
			ent:SetAngles(self:GetAngles())
			ent:SetPos(self:GetPos())
			ent:SetSkin(self:GetSkin() or 0)
			ent:SetColor(self:GetColor())
			ent:Spawn()
			ent:Fire("break", "", 0)
			ent:Fire("kill", "", 0.1)
		end
	end
end

function ENT:OnTakeDamage(dmginfo)
	self:TakePhysicsDamage(dmginfo)

	local attacker = dmginfo:GetAttacker()
	if not (attacker:IsValid() and attacker:IsPlayer() and attacker:Team() == TEAM_HUMAN) then
		self:ResetLastBarricadeAttacker(attacker, dmginfo)
		self:SetObjectHealth(self:GetObjectHealth() - dmginfo:GetDamage())
	end
end

function ENT:Use(activator, caller)
	local ishuman = activator:Team() ~= TEAM_UNDEAD and activator:Alive()

	if not self.NoTakeOwnership and not self:GetObjectOwner():IsValid() and ishuman then
		self:SetObjectOwner(activator)
	end

	if gamemode.Call("PlayerCanPurchase", activator) then
		activator:SendLua("GAMEMODE:OpenPointsShop()")
	elseif ishuman then
		activator:CenterNotify(COLOR_RED, translate.ClientGet(activator, "you_cant_purchase_now"))
	end
end

function ENT:AltUse(activator, tr)
	self:PackUp(activator)
end

function ENT:OnPackedUp(pl)
	
    	if pl:HasWeapon("weapon_zs_arsenalcrate") then
        	pl:GiveAmmo(1, "airboatgun")
    	else
        	pl:Give("weapon_zs_arsenalcrate")
    	end

	pl:PushPackedItem(self:GetClass(), self:GetObjectHealth())

	self:Remove()
end

function ENT:Think()
	if self.Destroyed then
		self:Remove()
	end
end
