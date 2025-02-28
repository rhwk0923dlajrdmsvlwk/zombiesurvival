--TODO: Move this global variable to sv_sigilpropspawner!
--TODO: Also rename this variable to GM.SigilSpawnRandomProps!
GM.SpawnSigilProps = true

function GM:OnSigilDestroyed(ent, dmginfo)
	local numsigils = self:NumSigils()
	if numsigils > 0 then
		for _, pl in pairs(player.GetAll()) do
			pl:CenterNotify({killicon = "default"}, " ", COLOR_RED, translate.ClientGet(pl, "sigil_destroyed"), {killicon = "default"})
			if numsigils == 1 then
				pl:CenterNotify(COLOR_RED, translate.ClientGet(pl, pl:Team() == TEAM_HUMAN and "sigil_destroyed_only_one_remain_h" or "sigil_destroyed_only_one_remain_z"))
			else
				pl:EmitSound("zombiesurvival/sigilbreak.mp3", 100, 100)
				pl:CenterNotify(COLOR_RED, translate.ClientFormat(pl, "sigil_destroyed_x_remain", numsigils))
			end
		end
	else
		for _, pl in pairs(player.GetAll()) do
			pl:CenterNotify({killicon = "default"}, " ", COLOR_RED, translate.ClientGet(pl, "last_sigil_destroyed_all_is_lost"), {killicon = "default"})
			pl:CenterNotify(COLOR_RED, translate.ClientGet(pl, "last_sigil_destroyed_all_is_lost2"))
		end

		self.LastHumanPosition = ent:LocalToWorld(ent:OBBCenter())
		timer.Simple(4, function() gamemode.Call("EndRound", TEAM_UNDEAD) end)
	end
end

--Put this in sv_utils!
local function SortDistFromLast(a, b)
	return a.d < b.d
end
function GM:CreateSigils()
	if #self.ProfilerNodes < self.MaxSigils
	or self.ZombieEscape or self.ObjectiveMap
	or self:IsClassicMode() or self.PantsMode or self:IsBabyMode() then
		self:SetUseSigils(false)
		return
	end

	--TODO: Move this variable to sv_sigilpropspawner!
	local propCount = #ents.FindByClass("prop_physics*")

	-- Copy
	local nodes = {}
	for _, node in pairs(self.ProfilerNodes) do
		local vec = Vector()
		vec:Set(node)
		nodes[#nodes + 1] = {v = vec}
	end

	local NextSigilLetter = "A"

	local spawns = team.GetSpawnPoint(TEAM_UNDEAD)
	for i=1, self.MaxSigils do
		local id
		local sigs = ents.FindByClass("prop_obj_sigil")

		for _, n in pairs(nodes) do
			n.d = 999999

			for __, spawn in pairs(spawns) do
				n.d = math.min(n.d, n.v:Distance(spawn:GetPos()))
			end
			for __, sig in pairs(sigs) do
				n.d = math.min(n.d, n.v:Distance(sig.NodePos))
			end

			local tr = util.TraceLine({start = n.v + Vector(0, 0, 8), endpos = n.v + Vector(0, 0, 512), mask = MASK_SOLID_BRUSHONLY})
			n.d = n.d * (2 - tr.Fraction)
		end

		-- Sort the nodes by their distances.
		table.sort(nodes, SortDistFromLast)

		-- Now select a node using an exponential weight.
		-- We use a random float between 0 and 1 then sqrt it.
		-- This way we're much more likely to get a lower index but a higher index is still possible.
		id = math.Rand(0, 0.7) ^ 0.3
		id = math.Clamp(math.ceil(id * #nodes), 1, #nodes)

		-- Remove the chosen point from the temp table and make the sigil.
		local point = nodes[id].v
		table.remove(nodes, id)

		local ent = ents.Create("prop_obj_sigil")
		if ent:IsValid() then
			ent:SetPos(point)
			ent:Spawn()
			ent:SetSigilLetter(NextSigilLetter)
			NextSigilLetter = util.IncreaseLetter(NextSigilLetter)
			ent.NodePos = point
			--TODO: Move this to sv_sigilpropspawner!
			if propCount < 10 or GAMEMODE.SpawnSigilProps == true then
				if GAMEMODE.SpawnSigilProps ~= false then
					gamemode.Call("SpawnRandomSigilProps", point)
					gamemode.Call("SetupProps")
				end
			end
		end
	end

	self:SetUseSigils(#ents.FindByClass("prop_obj_sigil") > 0)
end

--TODO: Move this to sv_sigilpropspawner!
function GM:SpawnRandomSigilProps(pos)
	for i=1, 8 do
		local range = 80

		local randompos = {
			Vector(range, 0, 0),
			Vector(-range, 0, 0),
			Vector(0, range, 0),
			Vector(0, -range, 0)
		}

		local randommodel = GAMEMODE.RandomProps

		pos = pos + randompos[math.random(#randompos)]

		local prop = ents.Create("prop_physics")
		prop:SetModel(randommodel[math.random(#randommodel)])

		prop:IsInWorld()
		prop:SetPos(pos)
		prop:SetVelocity(Vector(0, 0, 0))
		local iterationLimit = 100
		while prop:IsInWorld() == false and iterationLimit > 0 do
			iterationLimit = iterationLimit - 1
			pos = pos + randompos[math.random(#randompos)]
			prop:SetPos(pos)
		end
		if iterationLimit > 0 then
			prop:Spawn()
		else
			prop:Remove()
		end
	end
end

function GM:SetUseSigils(use)
	if self:GetUseSigils() ~= use then
		self.UseSigils = use
		SetGlobalBool("sigils", true)
	end
end

function GM:GetUseSigils(use)
	return self.UseSigils
end

concommand.Add("zs_sigilplacer", function(sender)
		if sender:IsValid() and sender:IsSuperAdmin() then
			sender:Give("weapon_zs_sigilplacer")
		end
end)
