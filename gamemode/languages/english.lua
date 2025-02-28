--[[
English is the standard language that you should base your ID's off of.
If something isn't found in your language file then it will fall back to English.

Valid languages (from gmod's menu): bg cs da de el en en-PT es-ES et fi fr ga-IE he hr hu it ja ko lt nl no pl pt-BR pt-PT ru sk sv-SE th tr uk vi zh-CN zh-TW
You MUST use one of the above when using translate.AddLanguage
]]

--[[
RULES FOR TRANSLATORS!!
* Only translate formally. Do not translate with slang, improper grammar, spelling, etc.
* Do not translate proper things. For example, do not translate Zombie Survival (the name of the game). Do translate "survive the zombies".
  For names of weapons, you would translate only the "Handgun" part of 'Peashooter' Handgun (and the quotes if your language doesn't use ' as quotes)
  For names of classes, you would translate Bloated Zombie to whatever the word for Bloated and Zombie are. But you wouldn't translate Pukepus or Bonemesh.
* Comment out things that you have not yet translated in your language file.
  It will then fall back to this file instead of potentially using out of date wording in yours.
]]

translate.AddLanguage("en", "English")

-- Various gamemode stuff
LANGUAGE.minute_points_added						= "No damage received for a whole minute! Added %d points."
LANGUAGE.infliction_reached_class_unlocked			= "%d%% infliction has been reached! %s unlocked!"
LANGUAGE.infliction_reached							= "%d%% of humans have died!"
LANGUAGE.x_unlocked									= "%s unlocked!"
LANGUAGE.disconnect_killed							= "%s was disconnect killed by %s."
LANGUAGE.nail_removed_by							= "%s removed a nail belonging to %s."
LANGUAGE.banned_for_life_warning					= "You're banned for life so you can't purchase anything!"
LANGUAGE.need_to_be_near_arsenal_crate				= "You need to be near an Arsenal Crate to purchase items!"
LANGUAGE.cant_purchase_right_now					= "You can't purchase anything right now."
LANGUAGE.dont_have_enough_points					= "You don't have enough points."
LANGUAGE.prepare_yourself							= "Prepare yourself..."
LANGUAGE.purchased_x_for_y_points					= "Purchased %s for %d points!"
LANGUAGE.give_time_before_suicide					= "Give others time to spawn before suiciding."
LANGUAGE.no_spare_ammo_to_give						= "No spare ammo to give!"
LANGUAGE.no_person_in_range							= "No person in range!"
LANGUAGE.that_life									= "That life..."
LANGUAGE.x_damage_to_barricades						= "%d damage to barricades"
LANGUAGE.x_damage_to_humans							= "%d damage to humans"
LANGUAGE.x_brains_eaten								= "%d brains eaten"
LANGUAGE.press_jump_to_free_roam					= "Press JUMP to free roam"
LANGUAGE.press_rmb_to_cycle_targets					= "Press RMB to cycle targets"
LANGUAGE.press_lmb_to_spawn_on_them					= "Press LMB to spawn on them"
LANGUAGE.press_lmb_to_spawn							= "Press LMB to spawn"
LANGUAGE.press_reload_to_spawn_at_normal_point		= "Press RELOAD to spawn at a normal spawn point"
LANGUAGE.press_walk_to_spawn_as_x					= "Press WALK to spawn as a %s"
LANGUAGE.observing_x								= "Observing %s (%d)"
LANGUAGE.waiting_for_next_wave						= "Waiting for the next wave to begin..."
LANGUAGE.impossible									= "Impossible."
LANGUAGE.trying_to_put_nails_in_glass				= "Trying to put nails in glass is a silly thing to do."
LANGUAGE.boss_class_select							= "You will be %s the next time you're a boss zombie."
LANGUAGE.person_has_weapon							= "They already have that weapon."
LANGUAGE.cant_do_that_in_classic_mode				= "You can't do that in Classic Mode."
LANGUAGE.cant_use_x_in_classic_mode					= "You can't use %s in Classic Mode."
LANGUAGE.cant_use_x_in_zombie_escape				= "You can't use %s in Zombie Escape."
LANGUAGE.cant_use_x_noodlearm						= "You're banned from using %s!"
LANGUAGE.no_class_switch_in_this_mode				= "The current mode doesn't allow you to switch classes."
LANGUAGE.press_sprint_to_get_up						= "Press SPRINT to get up"
LANGUAGE.zombie_escape								= "Zombie Escape!"
LANGUAGE.nothing_for_this_ammo						= "You don't have anything that uses this type of ammo."
LANGUAGE.you_decide_to_leave_some					= "You decide to leave some for your team."
LANGUAGE.you_cant_purchase_now						= "You can't purchase items right now."
LANGUAGE.no_ammo_here								= "There's no ammo here right now."
LANGUAGE.you_redeemed								= "You have redeemed!"
LANGUAGE.kill_the_last_human						= "Kill the last human!"
LANGUAGE.kick_the_last_human						= "Kick the last human!"
LANGUAGE.you_are_the_last_human						= "YOU ARE THE LAST HUMAN!"
LANGUAGE.x_zombies_out_to_get_you					= "%d ZOMBIES ARE OUT TO GET YOU!"
LANGUAGE.x_pants_out_to_get_you						= "%d PANTS ARE OUT TO GET YOU!"
LANGUAGE.you_have_died								= "You have died."
LANGUAGE.you_were_killed_by_x						= "You were killed by %s"
LANGUAGE.you_were_kicked_by_x						= "You were kicked in the shins by %s"
LANGUAGE.arsenal_upgraded							= "Arsenal Upgraded"
LANGUAGE.final_wave									= "THE FINAL WAVE HAS BEGUN!"
LANGUAGE.final_wave_sub								= "ALL classes unlocked and the chance for redemption has ended!"
LANGUAGE.wave_x_has_begun							= "Wave %d has begun!"
LANGUAGE.x_unlocked									= "%s unlocked!"
LANGUAGE.wave_x_is_over								= "Wave %d is over!"
LANGUAGE.wave_x_is_over_sub							= "The Undead have stopped rising and the Points Shop is %d%% off."
LANGUAGE.you_are_x									= "You are %s!"
LANGUAGE.x_has_risen_as_y							= "%s has risen as %s!!"
LANGUAGE.x_has_risen								= "%s has risen!"
LANGUAGE.cant_use_worth_anymore						= "You can't use the Worth menu any more!"
LANGUAGE.class_not_unlocked_will_be_unlocked_x		= "That class is not unlocked yet. It will be unlocked at the start of wave %d."
LANGUAGE.you_are_already_a_x						= "You are already a %s."
LANGUAGE.you_will_spawn_as_a_x						= "You will spawn as a %s."
LANGUAGE.crafting_successful						= "Crafting successful!"
LANGUAGE.x_crafted_y								= "%s crafted %s."
LANGUAGE.escape_from_the_zombies					= "Escape from the zombies!"
LANGUAGE.too_close_to_another_nail					= "Too close to another nail."
LANGUAGE.object_too_damaged_to_be_used				= "That object is too damaged to be used anymore."
LANGUAGE.thanks_for_being_a_fan_of_zs				= "Thanks for being a fan of Zombie Survival!"
LANGUAGE.cant_remove_nails_of_superior_player		= "You can't remove the nails of a player doing so much better than you."
LANGUAGE.x_turned_on_noclip							= "%s turned on noclip."
LANGUAGE.x_turned_off_noclip						= "%s turned off noclip."
LANGUAGE.unlocked_on_wave_x							= "Unlocked on wave %d"
LANGUAGE.brains_eaten_x								= "Brains eaten: %s"
LANGUAGE.points_x									= "Points: %s"
LANGUAGE.next_wave_in_x								= "Next wave in %s"
LANGUAGE.wave_ends_in_x								= "Wave ends in %s"
LANGUAGE.wave_x_of_y								= "Wave %d of %d"
LANGUAGE.zombie_invasion_in_x						= "Zombie invasion in %s"
LANGUAGE.intermission								= "Intermission"
LANGUAGE.press_f2_for_the_points_shop				= "Press F2 for the Points Shop!"
LANGUAGE.breath										= "Breath"
LANGUAGE.zombie_volunteers							= "Zombie Volunteers"
LANGUAGE.x_will_be_y_soon							= "%s will become %s soon!"
LANGUAGE.you_will_be_x_soon							= "You will become %s soon!"
LANGUAGE.x_discount_for_buying_between_waves		= "%d%% discount for buying between waves!"
LANGUAGE.number_of_initial_zombies_this_game		= "Number of initial zombies this game (%d%%): %d"
LANGUAGE.humans_closest_to_spawns_are_zombies		= "The humans closest to the zombie spawns will start as zombies."
LANGUAGE.waiting_for_players						= "Waiting for players..."
LANGUAGE.requires_x_people							= "Requires %d people"
LANGUAGE.packing_others_object						= "Packing other person's object"
LANGUAGE.packing									= "Packing"
LANGUAGE.ze_humans_are_frozen_until_x				= "Humans are frozen until %d seconds before the round starts."
LANGUAGE.loading									= "Loading..."
LANGUAGE.next_round_in_x							= "Next round in: %s"
LANGUAGE.warning									= "Warning!"
LANGUAGE.ok_and_no_reminder							= "OK and don't pop this message up anymore"
LANGUAGE.classic_mode_warning						= "This server is running Zombie Survival in 'Classic Mode'\nClassic Mode is a setting which greatly alters gameplay. Things that are changed:\n* No selection of zombie classes. Everyone uses the Classic Zombie class\n* No barricading tools such as nailing or turrets\n* More but faster waves\n\nThis is NOT original Zombie Survival!\n\n-- Servers which run classic mode will display CLASSIC MODE in the bottom left of the screen --"
LANGUAGE.classic_mode								= "CLASSIC MODE"
LANGUAGE.resist_x									= "Resist: %d%%"
LANGUAGE.right_click_to_hammer_nail					= "Right click to hammer in a nail."
LANGUAGE.nails_x									= "Nails: %d"
LANGUAGE.resupply_box								= "Resupply Box"
LANGUAGE.purchase_now								= "Purchase now!"
LANGUAGE.integrity_x								= "Integrity: %d%%"
LANGUAGE.empty										= "EMPTY"
LANGUAGE.manual_control								= "MANUAL CONTROL"
LANGUAGE.arsenal_crate								= "Arsenal Crate"
LANGUAGE.not_enough_room_for_a_nest					= "Not enough room here for a nest!"
LANGUAGE.too_close_to_another_nest					= "Too close to another nest!"
LANGUAGE.nest_created								= "Nest created! Finish building to enable spawning here."
LANGUAGE.nest_built_by_x							= "A Flesh Creeper nest has been built by %s and is now a spawn point."
LANGUAGE.nest_destroyed								= "A Flesh Creeper nest has been destroyed."
LANGUAGE.wait_x_seconds_before_making_a_new_nest	= "You must wait %d more seconds before creating a new nest."
LANGUAGE.too_close_to_a_human						= "Too close to a human!"
LANGUAGE.too_close_to_a_spawn						= "Too close to a zombie spawn!"
--LANGUAGE.nest_already_being_built					= "This nest is already being built by someone else!"
LANGUAGE.x_has_built_this_nest_and_is_still_around	= "%s has built this nest and is still around, so you can't demolish it."
LANGUAGE.no_other_nests								= "You can't destroy a nest if only one remains."
LANGUAGE.no_free_channel							= "Radio interference from too many already being placed!"
LANGUAGE.gave_x_y_ammo_to_z							= "Gave %d %s ammo to %s"
LANGUAGE.obtained_x_y_ammo_from_z					= "Obtained %d %s ammo from %s"

-- Sigils point objectives
LANGUAGE.sigil_destroyed							= "The Undead have destroyed a Sigil!"
LANGUAGE.sigil_destroyed_only_one_remain_h			= "Only one remains! If it falls then there is no hope of escape!"
LANGUAGE.sigil_destroyed_only_one_remain_z			= "Only one remains!"
LANGUAGE.sigil_destroyed_x_remain					= "%d Sigils remaining."
LANGUAGE.last_sigil_destroyed_all_is_lost			= "The Undead have destroyed the last Sigil."
LANGUAGE.last_sigil_destroyed_all_is_lost2			= "There is no hope of escape."
LANGUAGE.prop_obj_exit_h							= "Escape!"
LANGUAGE.prop_obj_exit_z							= "Stop them!"
LANGUAGE.sigil_escapestart                          = "Escape sequence started"
LANGUAGE.sigil_escapeboss                           = "Escape sequence boss stage"
LANGUAGE.sigil_deathfog                             = "Escape sequence death fog stage"
LANGUAGE.sigil_yousurvived                          = "You've managed to survive! Waiting for other survivors..."
LANGUAGE.sigil_teleporting                          = "Teleporting to %s"

-- Message beacon messages
LANGUAGE.message_beacon_1							= "Meet up here"
LANGUAGE.message_beacon_2							= "Need defense here"
LANGUAGE.message_beacon_3							= "Need turrets here"
LANGUAGE.message_beacon_4							= "Need arsenal crates here"
LANGUAGE.message_beacon_5							= "Need medics here"
LANGUAGE.message_beacon_6							= "Ammunition box here"
LANGUAGE.message_beacon_7							= "Arsenal crate here"
LANGUAGE.message_beacon_8							= "Need force fields here"
LANGUAGE.message_beacon_9							= "Need explosives here"
LANGUAGE.message_beacon_10							= "Zombies come from here"
LANGUAGE.message_beacon_11							= "Do not enter!!"
LANGUAGE.message_beacon_12							= "Don't go out"
LANGUAGE.message_beacon_13							= "Defend this area"
LANGUAGE.message_beacon_14							= "Defend this spot"
LANGUAGE.message_beacon_15							= "Medics here"
LANGUAGE.message_beacon_16							= "Buy from my crate"
LANGUAGE.message_beacon_17							= "Barricade here"
LANGUAGE.message_beacon_18							= "Don't barricade here"
LANGUAGE.message_beacon_19							= "Don't let zombies in here"
LANGUAGE.message_beacon_20							= "This will break"
LANGUAGE.message_beacon_21							= "This place is dangerous!"
LANGUAGE.message_beacon_22							= "Beware of poison!"
LANGUAGE.message_beacon_23							= "Zombies are breaking through here!"
LANGUAGE.message_beacon_24							= "Zombies are coming. Build a barricade!"
LANGUAGE.message_beacon_25							= "Plan B here"

-- Class names
LANGUAGE.class_zombie								= "Zombie"
LANGUAGE.class_poison_zombie						= "Poison Zombie"
LANGUAGE.class_fast_zombie							= "Fast Zombie"
LANGUAGE.class_bloated_zombie						= "Bloated Zombie"
LANGUAGE.class_classic_zombie						= "Classic Zombie"
LANGUAGE.class_super_zombie							= "Super Zombie"
LANGUAGE.class_fresh_dead							= "Fresh Dead"
LANGUAGE.class_ghoul								= "Ghoul"
LANGUAGE.class_headcrab								= "Headcrab"
LANGUAGE.class_fast_headcrab						= "Fast Headcrab"
LANGUAGE.class_poison_headcrab						= "Poison Headcrab"
LANGUAGE.class_the_tickle_monster					= "The Tickle Monster"
LANGUAGE.class_burster                              = "Burster"
LANGUAGE.class_nightmare							= "Nightmare"
LANGUAGE.class_pukepus								= "Pukepus"
LANGUAGE.class_bonemesh								= "Bonemesh"
LANGUAGE.class_crow									= "Crow"
LANGUAGE.class_wilowisp								= "Wil O' Wisp"
LANGUAGE.class_zombie_torso							= "Zombie Torso"
LANGUAGE.class_zombie_legs							= "Zombie Legs"
LANGUAGE.class_wraith								= "Wraith"
LANGUAGE.class_fast_zombie_legs						= "Fast Zombie Legs"
LANGUAGE.class_chem_zombie							= "Chem Zombie"
LANGUAGE.class_shade								= "Shade"
LANGUAGE.class_butcher								= "The Butcher"
LANGUAGE.class_flesh_creeper						= "Flesh Creeper"
LANGUAGE.class_gore_child							= "Gore Child"
LANGUAGE.class_giga_gore_child						= "Giga Gore Child"
LANGUAGE.class_reaper								= "Reaper"
LANGUAGE.class_nugget								= "Nugget"
LANGUAGE.class_boss_inferno					  	 	= "Inferno Zombie"
LANGUAGE.class_bastardzine							= "Bastardzine"
LANGUAGE.class_zombine								= "Zombine"
LANGUAGE.class_undertaker							= "The Undertaker"
LANGUAGE.class_night_stalker                        = "Night Stalker"


-- Class descriptions
LANGUAGE.description_zombie							= "The basic zombie is very durable and has powerful claws.\nIt's hard to keep down, especially if not shot in the head."
LANGUAGE.description_poison_zombie					= "This mutated zombie is not only extremely durable but has abnormal strength.\nIts body is extremely toxic and will even tear out and toss its own flesh at things too far away to hit."
LANGUAGE.description_fast_zombie					= "This boney cadaver is much faster than other zombies.\nThey aren't much of a threat by themselves but can reach nearly any area by climbing with their razor sharp claws\nThey also have no problem hunting down weak or hurt humans."
LANGUAGE.description_bloated_zombie					= "Their body is comprised of volatile, toxic chemicals.\nAlthough they move slower, they can take slightly more of a beating."
LANGUAGE.description_ghoul							= "This zombie has highly toxic flesh.\nIt's slightly weaker than other zombies but makes up for it with its debilitating attacks.\nIts claws can debuff a human for a short time, causing increased damage from other attacks."
LANGUAGE.description_headcrab						= "Headcrabs are what caused the initial infection.\nNo one knows where they truely came from.\nTheir method of attack is lunging with the sharp beaks on their belly."
LANGUAGE.description_fast_headcrab					= "The male headcrab is considerably faster but less beefy than the female.\nEither way, it's equally as annoying and deadly in groups."
LANGUAGE.description_poison_headcrab				= "This Headcrab is full of deadly nuerotoxins.\nOne bite is usually enough to kill an adult human.\nIt also has the ability to spit a less potent version of its poisons.\nThe spit is just as deadly if its victim is hit in the face."
LANGUAGE.description_the_tickle_monster				= "Said to be the monster that hides in your closet at night to drag you from your bed.\nThe Tickle Monster's almost elastic arms make it extremely hard to outrun and they also make it an ideal barricade destroyer."
LANGUAGE.description_nightmare						= "An extremely rare mutation gives the Nightmare its abnormal abilities.\nStronger than the every day zombie in almost every way, the Nightmare is a force to be reckoned with.\nOne swipe of its claws is enough to put down almost any person."
LANGUAGE.description_pukepus						= "The rotting body of the Puke Pus is comprised entirely of organs used for the generation of poison.\nIts capable of vomiting gallons of poison puke at a time making it extremely dangerous."
LANGUAGE.description_bonemesh						= "Disfigured and mangled, the Bonemesh is capable of tossing blood bombs.\nEach bomb is comprised of bones and flesh that damages humans while giving precious food to other zombies."
LANGUAGE.description_crow							= "Carrion Crows are more of a pest than they were before the infection.\nThey feed on infected flesh and become 'carriers' for the undead.\nWhy would you ever make this class not hidden?\nWhat is wrong with you?"
LANGUAGE.description_wilowisp						= "Sometimes referred to as spirits of the dead."
LANGUAGE.description_zombie_torso					= "You shouldn't even be seeing this."
LANGUAGE.description_zombie_legs					= "You shouldn't even be seeing this."
LANGUAGE.description_wraith							= "A zombie or an apparition?\nNot much is known about it besides the fact that it uses its\nunique stealth ability and sharp claws to cut things to ribbons."
LANGUAGE.description_fast_zombie_legs				= "You shouldn't even be seeing this."
LANGUAGE.description_chem_zombie					= "The Chem Zombie body is comprised of volatile, toxic chemicals.\nIt has no other means of attack besides being killed in hopes of blowing up next to any nearby humans."
LANGUAGE.description_shade							= "By creating a strong magnetic field around itself, all bullets and melee attacks are rendered useless against it.\nFor some reason the Shade is vulnerable to bright lights."
LANGUAGE.description_butcher						= "A crazed, undead butcher. It isn't very tough but anyone unlucky enough to be near it will most likely be torn to shreds."
LANGUAGE.description_flesh_creeper					= "Flesh Creepers possess the ability to create nests.\nFrom these nests, other zombified creatures emerge.\nThe way this works is unknown but it is imperitive to destroy any nests or creepers."
LANGUAGE.description_gore_child						= "Once zombified, an unborn child becomes infected as well.\nPossessing no special abilities, their strength comes from their numbers."
LANGUAGE.description_giga_gore_child				= "The result of a Gore Child which has been left unchecked for too long.\nA horror to behold, their massive body is the result of zombified stem cells.\nThey also become a host for Gore Children which can always be found in tow with it."
LANGUAGE.description_reaper							= "Fast as hell an can scare the shit out of humans\n Run your foes down an eat those brains!"
LANGUAGE.description_bastardzine                    = "Once nuggets began to roam the earth, they found hosts just like their lower headcrab kin.\n This new breed of zombie is a hybrid of mass chaos, crazy fast and deadly."
LANGUAGE.description_burster                        = "This infected can explode if he killed."
LANGUAGE.description_zombine						= "When a head-crab infects a Combine Soldier this horrid zombie is created.\nThis zombie is a threat to barricades mostly an is only unlocked on later waves."
LANGUAGE.description_undertaker						= "Risen from the grave Undertaker. \nThings didn't change for him - he's still trying to put you into a tomb."
LANGUAGE.description_night_stalker					= "The shadowed version of bastardzine. \nThis unseen entity can ambush humans and knock them back, when leaping at them. \nBut when standing still or attacking and leaping, it can be visible \nBut when moving it becomes invisible. Which make this creature a dangerous threat in darkness and shadow"
LANGUAGE.description_boss_inferno                   = "The pits of hell an back, this zombie utilizes fire as a strength.\n Everything is touchs with its claws burst to flames.\n Most infernos near death will erupt in a big explosion."


-- Class control schemes
LANGUAGE.controls_zombie							= "> PRIMARY: Claws\n> SECONDARY: Scream\n> RELOAD: Moan\n> SPRINT: Feign death\n> ON FATAL HIT IN LEGS: Revive / Transform"
LANGUAGE.controls_poison_zombie						= "> PRIMARY: Claws\n> SECONDARY: Flesh toss\n> RELOAD: Scream"
LANGUAGE.controls_fast_zombie						= "> PRIMARY: Claws\n> SECONDARY: Lunge / Climb (next to wall)\n> RELOAD: Scream"
LANGUAGE.controls_bloated_zombie					= "> PRIMARY: Claws\n> SECONDARY: Moan\n> SPRINT: Feign death\n> ON DEATH: Poison Gibs"
LANGUAGE.controls_ghoul								= "> PRIMARY: Poison claws\n> SECONDARY: Flesh toss\n> SPRINT: Feign death\n> RELOAD: Scream\n> ON HIT HUMAN: Ghoul Touch"
LANGUAGE.controls_headcrab							= "> PRIMARY: Lunge attack\n> RELOAD: Burrow"
LANGUAGE.controls_fast_headcrab						= "> PRIMARY: Lunge attack"
LANGUAGE.controls_poison_headcrab					= "> PRIMARY: Lunge attack\n> SECONDARY: Spit poison\n> ON HIT HUMAN: Deadly poison\n> ON HIT POISON IN EYES: Blind\n> RELOAD: Scream"
LANGUAGE.controls_the_tickle_monster				= "> PRIMARY: Elastic claws\n> SECONDARY: Moan"
LANGUAGE.controls_nightmare							= "> PRIMARY: Death touch\n> SECONDARY: Moan"
LANGUAGE.controls_pukepus							= "> PRIMARY: Puke"
LANGUAGE.controls_bonemesh							= "> PRIMARY: Claws\n> SECONDARY: Toss blood bomb"
LANGUAGE.controls_wraith							= "> PRIMARY: Claws\n> SECONDARY: Scream\n> INVISIBILITY BASED ON MOVEMENT AND VIEW DISTANCE"
LANGUAGE.controls_chem_zombie						= "> ON DEATH: Poison Bomb"
LANGUAGE.controls_shade								= "> PRIMARY: Lift\n> SECONDARY: Throw"
LANGUAGE.controls_butcher							= "> PRIMARY: Chop"
LANGUAGE.controls_flesh_creeper						= "> PRIMARY: Head Smash\n> SECONDARY: Nest"
LANGUAGE.controls_gore_child						= "> PRIMARY: Claws"
LANGUAGE.controls_giga_gore_child					= "> PRIMARY: Smash\n> SECONDARY: Throw Gore Child"
LANGUAGE.controls_reaper							= "> PRIMARY: Axe\n> RELOAD: Moan"
LANGUAGE.controls_burster                           = "> PRIMARY: Poison Bomb\n> ON DEATH: Poison Bomb"
LANGUAGE.controls_zombine							= "> PRIMARY: Claws\n> SECONDARY: Grenade"	
LANGUAGE.controls_undertaker						= "> PRIMARY: Hit\n> SECONDARY: Throw dart, that can heal zombies and damage humans."
LANGUAGE.controls_night_stalker                     = "> PRIMARY: Claws\n> SECONDARY: Lunge / Climb (next to wall)\n> RELOAD: Scream \n> INVISIBILITY WHEN MOVING"
LANGUAGE.controls_boss_inferno                      = "> PRIMARY: Incendiary Claws\n> SECONDARY: N/A\n> RELOAD: Moan\n> SPRINT: Regenerate"

-- The help file... Quite big! I wouldn't blame you if you didn't translate this part.
LANGUAGE.help_cat_introduction						= "Introduction"
LANGUAGE.help_cat_survival							= "Survival"
LANGUAGE.help_cat_barricading						= "Barricading"
LANGUAGE.help_cat_upgrades							= "Upgrades"
LANGUAGE.help_cat_being_a_zombie					= "Being a Zombie"
LANGUAGE.help_cont_introduction						= [[<p>    Welcome to Zombie Survival, the (zombie) survival simulator. ZS allows you to fight zombie attacks, create barricades, and even be part of the undead horde.</p>

<p>There are two teams: the survivors and the zombies. The humans win if they survive every wave. Some levels have special objectives to be completed, which may be optional or required to win.
If a human is killed then they'll come back as a zombie, which makes it even more difficult for the remaining humans.</p>

<p>The goal for the zombies is to kill all of the humans, making them all zombies and causing everyone to lose the round.
Alternatively, a zombie can kill four humans to be redeemed. This allows them a second chance at survival and victory.
Remember, the only way to win a round is to be a human when the round ends. Zombies can't technically win the game; zombies can only make everyone else lose!</p>

<p>A certain amount of people are chosen (or volunteer) for being the starting zombies. This amount is displayed at the bottom of your screen before the round starts.</p>

<p><b>Use the buttons up top to get help on more specific things.</b></p>

<p>Tips for this section:
<ul><li>If you leave the game as a human then you'll rejoin as a zombie.</li>
<li>After a certain amount of time has gone by, even new players will spawn as zombies.</li>
<li>Use TEAM CHAT when needed. The default key is U and allows you to speak to only your team.</li>
</ul></p>
]]
LANGUAGE.help_cont_survival							= [[<p>Tips for this section:
<ul><li>Holding the ZOOM key (default: Z) allows you to move freely through barricades while walking extremely slow.</li>
<li>You can only buy more items such as weapons and ammo during wave breaks but you can also loot ammunition, weapons, and tools from fallen comrades.</li>
<li>If a human is directly killed by a zombie then they will rise again wherever they stand. Make sure you end their misery before they give you any.</li>
<li>You're only given a certain amount of Worth to play with so think carefully what you should get!</li>
<li>You can create, save, load, delete, and mark as default carts by pressing F2. This saves a ton of time which could be better spent setting up barricades or creating game plans.</li>
<li>A spot that feels safe one moment may be a death trap with more or different types of zombies roaming around. Always allow extra space and a "Plan B" if things get ugly.</li>
<li>You're useless to your team if you're not doing anything to help. You're even more useless to yourself since you're not getting any points or bigger weapons!</li>
<li>By holding your SPRINT key for about ten seconds while looking at deployed objects that you own, you can pack them up for later use.</li>
<li>Turrets without owners (a blue light) can be claimed by pressing USE on them. Ownerless turrets will not scan for targets!</li>
<li>Props that aren't nailed to something don't make very good barricades unless they're really heavy.</li>
<li>With enough punishment, doors can be thrown off their hinges.</li>
<li>Most props will become red with more and more damage.</li>
<li>Zombies can spawn on top of each other if no humans are around to witness it.</li>
<li>Most melee weapons have a longer reach than zombie claws. Use this to your advantage if you insist on defending with a melee weapon.</li>
<li>Players on the same team do not damage or collide with each other and can freely shoot and swing through each other.</li>
<li>Make sure you use a barricade to your advantage and stay behind it a good distance away from the zombies. Guns have an infinite range, zombie claws do not.</li>
<li>Poison damage will heal over time but enough of it can still kill you.</li>
<li>Your team members aren't always right, don't be a sheep! Zombies like to kill sheep.</li>
<li>Zombies can see your health, even through walls. Make sure to fall back when hurt as zombies will most likely try to pick you off.</li>
<li>Don't hide, zombies can sense you through walls and in complete darkness.</li>
<li>The Horde Meter at the bottom of the screen indicates how much of a damage and knockback resistance you have. Huddle up with other zombies for a big resistance when taking down strongholds!</li>
<li>If you don't have enough zombies to take down a barricade, try hunting for new "team mates" elsewhere.</li>
<li>Don't shoot zombies in the green gas! It quickly heals them and you're only wasting ammunition!</li>
<li>Zombies are resistant to damage in the chest and even more so in the arms and legs. Make sure you're aiming for the head as some zombies have the ability to get up again if you don't!</li>
<li>Although zombies take less damage in the legs, shooting them there will slow them down for a short time, enough to allow you or a team member to escape.</li>
</ul></p>
]]
LANGUAGE.help_cont_barricading						= [[<p>Barricading is an extremely important part of survival. It may seem like the undead aren't a threat early on but eventually they'll be powerful enough to kill your entire team in a few seconds.</p>

<p>The only thing keeping the zombies out is a well-built and well-maintained barricade.</p>

<p>There are a couple of tools that give you the ability to set this up. The one most useful tool is the hammer and nails. This allows you to nail down props which then must have the nails destroyed in order for the zombies to get to you.
Position the prop you want to nail by pressing USE on it to pick it up. You can hold SPRINT while holding it to lock it in place. Then take your hammer and right click where you want the nail to go. It's a good idea to nail the prop to a sturdy object such as a wall instead of other props.
Remember, when a prop is nailed it will forward the damage it takes to the nails themselves. You can repair nails by hitting them with the hammer but eventually they'll become too damaged to repair anymore. You can hold SHIFT with the hammer out to get a view of every single nail deployed on your screen as well as the owner.
If you think a nail is in a bad place or you'd like to reposition a prop, you can remove nails by pointing at it and pressing RELOAD. Be warned, if you take a nail that doesn't belong to you then you will be given a point penalty.
One more thing to remember: nails take less damage when they're nailed to bigger props. The bigger the size of the prop, the less damage its nails take and the other way around.</p>

<p>One other tool is the 'Aegis' Barricade Kit. This quick-deploying tool allows you to place boards on any surface or deploy them between two walls. It doesn't even need props. To use it, you need to position a board in a spot that is legal. The ghost will turn from red to green to let you know.
Deploy a board by pressing PRIMARY ATTACK. Rotate the board by using SECONDARY ATTACK and RELOAD. It uses boards for ammunition so boards you have from the Board Pack work as extra ammunition! You can pack up boards you've deployed by pressing SPRINT while pointing at it.</p>

<p>Another tool worth noting is the Turret. This tosses bullets at any zombie that gets in the way of its laser. Its only downside is that it requires ammunition. You can refill ammunition by pressing USE on it. This will give you bonus points for helping the team.
To deploy the turret, position it in a way so that the ghost is green. It must be on a solid surface (no props!). Rotate the turret with SECONDARY ATTACK and RELOAD. If you mess up, you can always pack the turret back up by pressing SPRINT while pointing at it. Remember, the turret will only fire at zombies that cross its tracking beam.</p>

<p>Tips for this section:
<ul>
<li>You get a 25% point bonus for killing zombies that are attacking a barricade!</li>
<li>Use bigger props for barricades. The nails take less damage and the prop has room for more nails. In addition to that, it even acts as cover from projectiles.</li>
</ul></p>]]
LANGUAGE.help_cont_upgrades							= [[<p>Points are obtained through killing zombies, healing team mates, and building defenses.
You can then exchange points in the Points Shop which is available during wave breaks.
Try to make your purchases at Arsenal Crates for a hefty discount!</p>

<p>Tips for this section:
<ul>
<li>Try planning ahead. Buy extra pistol ammunition in the Worth menu so you have plenty to spare once you get your first upgrade.</li>
<li>You still get points for assists. The greater half of the points goes to the killer and the lesser half goes to the one who assisted in the kill.</li>
<li>Worth and Points are separate. Make sure you spend all of your Worth!</li>
<li>Arsenal Crates are extremely valuable and prime targets for zombie attacks.</li>
</ul></p>]]
LANGUAGE.help_cont_being_a_zombie					= [[<p>Tips for this section:
<ul>
<li>You have an unlimited amount of lives, the humans only have one each. Don't be afraid to attack, attack, attack!</li>
<li>The regular Zombie class has the ability of durability. The only way to kill you for sure is to get shot in the head or be killed by a melee weapon. You don't need your legs.</li>
<li>Zombies can spawn on top of each other if no humans are around to see it. Check the eyes of the skull on the bottom of your screen. If they're green then you are a valid spawn point!</li>
<li>With enough practice, you can use props to slam them in to humans from a distance.</li>
<li>Destroy deployables such as turrets and especially Arsenal Crates to cripple the humans.</li>
<li>With enough punishment, doors can be thrown off their hinges.</li>
<li>Most props will become red with more and more damage.</li>
<li>The Wraith is completely invisible while standing still or at a distance.</li>
<li>The Fast Zombie's lunge attack damage scales by how long you're in the air. The more air time you get, the larger the damage. Use your claw attack when in close range!</li>
<li>In addition to being extremely tough, the Poison Zombie can rip out chunks of its own poison flesh and throw them at humans by pressing SECONDARY ATTACK.</li>
<li>Most zombie claws have two chances to hit their target. If you "hit" your target when you click your mouse button then you're guaranteed a hit as long as they remain in range.</li>
<li>The Poison Headcrab's spit projectile can confuse humans if it hits them in the head.</li>
<li>Go for the humans with low health! Other zombies are also attracted to them so they should be the easiest targets.</li>
<li>The Horde Meter at the bottom of the screen indicates how much of a damage and knockback resistance you have. Huddle up with other zombies for a big resistance when taking down strongholds!</li>
<li>If you don't have enough zombies to take down a barricade, try hunting for new "team mates" elsewhere.</li>
<li>If an area is too dark, try pressing your FLASHLIGHT button to toggle night vision.</li>
</ul></p>
]]

-- Place any custom stuff below here...

--[[ Anything that has an \n means a new line: Example
Hello there.\nWelcome to the server will output as:

Hello there. 
Welcome to the server

So remember that when translating]]--

-- Redeem Menu

LANGUAGE.redeemer_credit							= "Zombie Survival - created by William \"JetBoom\" Moodhe.             Zombie Survival: Bandits by MrCraigTunstall"
LANGUAGE.redeemer_save								= "CHANGE TO A HUMAN AND SAVE HUMANITY"
LANGUAGE.redeemer_kill								= "STAY AS A BANDIT AND CHOOSE TO HELP OR KILL THE HUMANS"

-- Worth Menu

LANGUAGE.worth_title								= "Select Your Survival Loadout"
LANGUAGE.worth_close								= "Press F2 to re-open the Worth Menu."
LANGUAGE.worth_worth								= "Worth: %s"
LANGUAGE.worth_worth_cost							= "%s Worth"
LANGUAGE.worth_favtab								= "Favorites"
LANGUAGE.worth_favtooltip							= "This is your default cart.\nIf you join the game late then you'll spawn with this cart."
LANGUAGE.worth_favbuy								= "Purchase this saved cart."
LANGUAGE.worth_favload								= "Load this saved cart."
LANGUAGE.worth_favremove							= "Remove this cart as your default."
LANGUAGE.worth_favdelete							= "Delete this saved cart."
LANGUAGE.worth_favdefault							= "Make this cart your default."
LANGUAGE.worth_checkout								= "Checkout"
LANGUAGE.worth_checkouttooltip						= "Self-Explanatory."
LANGUAGE.worth_random								= "Random Loadout"
LANGUAGE.worth_randomtooltip						= "Using this will randomly give you a set of items instead of normal checkout.\n Also use this to close the worth menu."
LANGUAGE.worth_clear								= "Clear Loadout"
LANGUAGE.worth_cleartooltip							= "Clears all items out of your cart."
LANGUAGE.worth_saveload								= "Save Loadout"
LANGUAGE.worth_saveloadtooltip						= "Use this to save your current cart(s) for easy checkout later."
LANGUAGE.worth_github								= "GitHub"
LANGUAGE.worth_githubtooltip						= "This will take you to the modified Zombie Survival GitHub page."
LANGUAGE.worth_forum								= "Forum"
LANGUAGE.worth_forumtooltip							= "This will take you to voidresonance.com"
LANGUAGE.worth_steam								= "Steam Group"
LANGUAGE.worth_steamtooltip							= "This will take you to our Void Resonance's Steam group."
LANGUAGE.worth_savecart								= "Save cart"
LANGUAGE.worth_entername                            = "Enter a name for this cart."
LANGUAGE.worth_name                                 = "Name"
LANGUAGE.worth_ok                                   = "OK"
LANGUAGE.worth_cancel                               = "Cancel"

-- Pointshop Menu

LANGUAGE.all_sales                                  = "All sales are final"
LANGUAGE.the_pointshop                              = "The Points Shop"
LANGUAGE.for_allapocalypse                          = "For all of your zombie apocalypse needs!"
LANGUAGE.pts_tospend                                = "Points to spend: %s"
LANGUAGE.ars_discount                               = "%s%% discount for buying between waves!"
LANGUAGE.ars_tooltip                                = "This shop is armed with the QUIK - Anti-zombie backstab device.\nMove your mouse outside of the shop to quickly close it!"
LANGUAGE.ars_worth                                  = "Worth Menu"
LANGUAGE.ars_purchase                               = "Purchase"  
LANGUAGE.ars_purchaseammo                           = "Purchase ammunition"
LANGUAGE.ars_pts                                    = "%s Points"

-- Ressuply Box

LANGUAGE.res_box_ready                              = "Ready"
LANGUAGE.res_box_seconds                            = "%i s"

-- Helios
LANGUAGE.helios_venting                             = "VENTING"
LANGUAGE.helios_heat                                = "Heat"

-- Message beacon

LANGUAGE.msgbeacon_text                             = "Select a message"

-- PendBoard (End Game)

LANGUAGE.win                                        = "You have won!"
LANGUAGE.lose                                       = "You have lost."
LANGUAGE.humans_win                                 = "The humans have survived for now."
LANGUAGE.zombies_win                                = "The undead army grows stronger."
LANGUAGE.mentions                                   = "Honorable Mentions"
LANGUAGE.end_profile                                = "Click here to view their Steam Community profile."

-- Shop Items (worth menu)

--[[Some shop items that are part of the 
arsenal crate get their translations from the Worth Menu as
it's pointless to translate the same weapon twice]]-- 

LANGUAGE.worth_peashooter                           = "'Peashooter' Handgun"
LANGUAGE.worth_battleaxe                            = "'Battleaxe' Handgun"
LANGUAGE.worth_owens                                = "'Owens' Handgun"
LANGUAGE.worth_blaster                              = "'Blaster' Shotgun"
LANGUAGE.worth_tosser                               = "'Tosser' SMG"
LANGUAGE.worth_stubber                              = "'Stubber' Rifle"
LANGUAGE.worth_crackler                             = "'Crackler' Assault Rifle"
LANGUAGE.worth_z9000                                = "'Z9000' Pulse Pistol"
LANGUAGE.worth_3pistol                              = "3 pistol ammo boxes"
LANGUAGE.worth_3shotgun                             = "3 shotgun ammo boxes"
LANGUAGE.worth_3smg                                 = "3 SMG ammo boxes"
LANGUAGE.worth_3assaultrifle                        = "3 assault rifle ammo boxes"
LANGUAGE.worth_3rifle                               = "3 rifle ammo boxes"
LANGUAGE.worth_3pulse                               = "3 pulse ammo boxes"
LANGUAGE.worth_5pistol                              = "5 pistol ammo boxes"
LANGUAGE.worth_5shotgun                             = "5 shotgun ammo boxes"
LANGUAGE.worth_5smg                                 = "5 SMG ammo boxes"
LANGUAGE.worth_5assaultrifle                        = "5 assault rifle ammo boxes"
LANGUAGE.worth_5rifle                               = "5 rifle ammo boxes"
LANGUAGE.worth_5pulse                               = "5 pulse ammo boxes"
LANGUAGE.worth_axe                                  = "Axe"
LANGUAGE.worth_crowbar                              = "Crowbar"
LANGUAGE.worth_stun                                 = "Stun Baton"
LANGUAGE.worth_knife                                = "Knife"
LANGUAGE.worth_plank                                = "Plank"
LANGUAGE.worth_fryingpan                            = "Frying Pan"
LANGUAGE.worth_cookingpot                           = "Cooking Pot"
LANGUAGE.worth_leadpipe                             = "Lead Pipe"
LANGUAGE.worth_meathook                             = "Meat Hook"
LANGUAGE.worth_medkit                               = "Medical Kit"
LANGUAGE.worth_medgun                               = "Medic Gun"
LANGUAGE.worth_150meds                              = "150 Medical Kit power"
LANGUAGE.worth_150meds2                             = "150 extra power for the Medical Kit."
LANGUAGE.worth_arsenalcrate                         = "Arsenal Crate"
LANGUAGE.worth_resupplybox                          = "Resupply Box"
LANGUAGE.worth_turret                               = "Infrared Gun Turret"
LANGUAGE.worth_turret2                              = "This automated turret requires constant upkeep to be useful.\nPress PRIMARY ATTACK to deploy the turret.\nPress SECONDARY ATTACK and RELOAD to rotate the turret.\nPress USE on a deployed turret to give it some of your SMG ammunition.\nPress USE on a deployed turret with no owner (blue light) to reclaim it."
LANGUAGE.worth_manhack                              = "Manhack"
LANGUAGE.worth_wrench                               = "Mechanic's Wrench"
LANGUAGE.worth_hammer                               = "Carpenter's Hammer"
LANGUAGE.worth_6nails                               = "Box of 12 nails"
LANGUAGE.worth_6nails2                              = "An extra box of nails for all your barricading needs."
LANGUAGE.worth_junkpack                             = "Junk Pack"
LANGUAGE.worth_spotlamp                             = "Spot Lamp"
LANGUAGE.worth_beacon                               = "Message Beacon"
LANGUAGE.worth_fieldemiter                          = "Force Field Emitter"
LANGUAGE.worth_fieldemiter_desc                     = "Blocks zombie projectiles but will not stop humans or zombies from passing.\nPress PRIMARY ATTACK to deploy.\nPress SECONDARY ATTACK and RELOAD to rotate."
LANGUAGE.worth_stone                                = "Stone"
LANGUAGE.worth_oxygentank                           = "Oxygen Tank"
LANGUAGE.worth_oxygentank2                          = "Grants significantly more underwater breathing time to the user."
LANGUAGE.worth_fit                                  = "Fit"
LANGUAGE.worth_fit2                                 = "Increases survivability by increasing maximum health by a small amount."
LANGUAGE.worth_tough                                = "Tough"
LANGUAGE.worth_tough2                               = "Increases survivability by increasing maximum health."
LANGUAGE.worth_quick                                = "Quick"
LANGUAGE.worth_quick2                               = "Gives a slight bonus to running speed."
LANGUAGE.worth_surged                               = "Surged"
LANGUAGE.worth_surged2                              = "Gives a noticeable bonus to running speed."
LANGUAGE.worth_handy                                = "Handy"
LANGUAGE.worth_handy2                               = "Gives a 25% bonus to all repair rates."
LANGUAGE.worth_engi                                 = "Engineer"
LANGUAGE.worth_engi2                                = "Gives a 50% bonus to all repair rates."
LANGUAGE.worth_surgeon                              = "Surgeon"
LANGUAGE.worth_surgeon2                             = "Increases the rate by which you can heal yourself and others with the Medical Kit by 30%. Increases Medic Gun effectiveness by 33%."
LANGUAGE.worth_medicine                             = "Medicine"
LANGUAGE.worth_medicine2                            = "Increases the rate by which you can heal yourself and others with the Medical Kit by 50%. Increases Medic Gun effectiveness by 53%."
LANGUAGE.worth_resistant                            = "Resistant"
LANGUAGE.worth_resistant2                           = "You will take half damage from poison."
LANGUAGE.worth_regen                                = "Regenerative"
LANGUAGE.worth_regen2                               = "If you drop below 50% health, you will regenerate 1 health every 6 seconds."
LANGUAGE.worth_muscular                             = "Muscular"
LANGUAGE.worth_muscular2                            = "You do 20% extra damage with melee weapons and you can carry heavy objects instead of dragging them."
LANGUAGE.worth_carpenter                            = "Carpenter"
LANGUAGE.worth_carpenter2                           = "50% Decreased delay in using hammers."
LANGUAGE.worth_cannibal                             = "Cannibalism"
LANGUAGE.worth_cannibal2                            = "You can now eat gore giblets from zombies an humans to regain health.\n Simply touch the gore gibs to eat them."
LANGUAGE.worth_ghostmode                            = "Ghost Mode"
LANGUAGE.worth_ghostmode2                           = "You can ghost through props much faster."
LANGUAGE.worth_fastresupply                         = "Resupplyer"
LANGUAGE.worth_fastresupply2                        = "Resupply boxes recharge much faster."
LANGUAGE.worth_fastteleport                         = "Teleporter"
LANGUAGE.worth_fastteleport2                        = "You teleport nearly instantly."
LANGUAGE.worth_crateshare                           = "Crate Share"
LANGUAGE.worth_crateshare2                          = "Allows to buy from crates on another client's back."
LANGUAGE.worth_crateshare3                          = "You're missing the Crate Share trait!"
LANGUAGE.worth_allergic                             = "Allergic"
LANGUAGE.worth_allergic2                            = "Poison does twice as much damage in exchange for Worth."
LANGUAGE.worth_weak                                 = "Weakness"
LANGUAGE.worth_weak2                                = "Reduces health by 30 in exchange for Worth."
LANGUAGE.worth_slow                                 = "Slowness"
LANGUAGE.worth_slow2                                = "Reduces speed by a significant amount in exchange for Worth."
LANGUAGE.worth_palasy                               = "Palsy"
LANGUAGE.worth_palasy2                              = "Reduces aiming ability while hurt in exchange for Worth."
LANGUAGE.worth_hemo                                 = "Hemophilia"
LANGUAGE.worth_hemo2                                = "Applies bleeding damage when hit in exchange for Worth."
LANGUAGE.worth_banlive                              = "Banned for Life"
LANGUAGE.worth_banlive2                             = "Disallows point purchases in exchange for Worth."
LANGUAGE.worth_clumsy                               = "Clumsy"
LANGUAGE.worth_clumsy2                              = "Makes you extremely easy to knock down in exchange for Worth."
LANGUAGE.worth_wideload                             = "Wide Load"
LANGUAGE.worth_wideload2                            = "Prevents you from ghosting through props in exchange for Worth."
LANGUAGE.worth_noodlearms                           = "Noodle Arms"
LANGUAGE.worth_noodlearms2                          = "Disallows picking up of objects in exchange for Worth."

-- Shop Items (arsenal crate) 

LANGUAGE.ars_deagle                                 = "'Zombie Drill' Desert Eagle"
LANGUAGE.ars_glock                                  = "'Crossfire' Glock 3"
LANGUAGE.ars_magnum                                 = "'Ricochet' Magnum"
LANGUAGE.ars_tacticalpistol                         = "'Eraser' Tactical Pistol"
LANGUAGE.ars_uzi                                    = "'Sprayer' Uzi 9mm"
LANGUAGE.ars_shredder                               = "'Shredder' SMG"
LANGUAGE.ars_bulletstorm                            = "'Bullet Storm' SMG"
LANGUAGE.ars_hunter                                 = "'Hunter' Rifle"
LANGUAGE.ars_reaperump                              = "'Reaper' UMP"
LANGUAGE.ars_autoen                                 = "'Ender' Automatic Shotgun"
LANGUAGE.ars_akbar                                  = "'Akbar' Assault Rifle"
LANGUAGE.ars_galil                                  = "'Riddler' Galil Assault Rifle"
LANGUAGE.ars_silencer                               = "'Silencer' SMG"
LANGUAGE.ars_stalker                                = "'Stalker' Assault Rifle"
LANGUAGE.ars_inferno                                = "'Inferno' Assault Rifle"
LANGUAGE.ars_annabele                               = "'Annabelle' Rifle"
LANGUAGE.ars_infiltrator                            = "'Infiltrator' G3sg1 Rifle"
LANGUAGE.ars_crossbow                               = "'Impaler' Crossbow"
LANGUAGE.ars_eliminator                             = "'Eliminator' SG552 Assault Rifle"
LANGUAGE.ars_sweeper                                = "'Sweeper' Shotgun"
LANGUAGE.ars_tiny                                   = "'Tiny' Slug Rifle"
LANGUAGE.ars_adonis                                 = "'Adonis' Pulse Rifle"
LANGUAGE.ars_punisher                               = "'Punisher' M249 Machine Gun"
LANGUAGE.ars_killer                                 = "'Killer' SG550 Sniper Rifle"
LANGUAGE.ars_boomstick                              = "Boom Stick"
LANGUAGE.ars_pistol_ammo                            = "pistol ammo box"
LANGUAGE.ars_shotgun_ammo                           = "shotgun ammo box"
LANGUAGE.ars_smg_ammo                               = "SMG ammo box"
LANGUAGE.ars_assaultrifle_ammo                      = "assault rifle ammo box"
LANGUAGE.ars_rifle_ammo                             = "rifle ammo box"
LANGUAGE.ars_bolt                                   = "crossbow bolt"
LANGUAGE.ars_pulse_ammo                             = "pulse ammo box"
LANGUAGE.ars_shovel                                 = "Shovel"
LANGUAGE.ars_sledge                                 = "Sledge Hammer"
LANGUAGE.ars_aegis                                  = "'Aegis' Barricade Kit"
LANGUAGE.ars_nail                                   = "Nail"
LANGUAGE.ars_nail2                                  = "It's just one nail."
LANGUAGE.ars_50meds                                 = "50 Medical Kit power"
LANGUAGE.ars_50meds2                                = "50 extra power for the Medical Kit."
LANGUAGE.ars_grenade                                = "Grenade"
LANGUAGE.ars_detpack                                = "Detonation Pack"
LANGUAGE.ars_mednade                                = "Medic Cloud Bomb"
LANGUAGE.ars_mednade_desc                           = "Explodes in to a cloud of healing gas. Heals 2HP, every second, for 10 seconds."
LANGUAGE.ars_molotov                                = "Molotov"
LANGUAGE.ars_molotov2                               = "Molotov Cocktail"
LANGUAGE.ars_molotov_desc                           = "A highly flammable concoction.\nThrow at your own risk."
LANGUAGE.ars_spinfusor                              = "'Spinfusor' Pulse Disc Launcher"
LANGUAGE.ars_spinfusor_desc                         = "Launches pulse projectiles that react on walls, sending energy back in the direction they travelled."
LANGUAGE.ars_helios                                 = "Helios' Gluon Gun"
LANGUAGE.ars_helios_desc                            = "Projects a stream of gluons at the target, causing immense damage."
LANGUAGE.ars_gluon                                  = "Gluon Gun"

-- Shop Items (zombie shop)
-- Normal Mutations
LANGUAGE.zshop_alphazomb                            = "Alpha Zombie"
LANGUAGE.zshop_alphazomb2                           = "Increases survivability by increasing maximum health by 50."
LANGUAGE.zshop_zombsprint                           = "Zombie Sprint"
LANGUAGE.zshop_zombsprint2                          = "As a Zombie, gain the ability to sprint, toggle R to start sprinting."
LANGUAGE.zshop_zombguard                            = "Zombie Guard"
LANGUAGE.zshop_zombguard2                           = "As a Zombie, taking damage while sprinting no longer breaks your speed."
-- Boss Mutations
LANGUAGE.zshop_bossphysicshazard                    = "Physics Hazard"
LANGUAGE.zshop_bossphysicshazard2                   = "As a Shade, physics strength is tripled for the ultimate carnage."

-- Craft Weapons 

LANGUAGE.craft_electricshovel                       = "Electric Shovel"
LANGUAGE.craft_empower                              = "Empowerment Tool"
LANGUAGE.craft_empower_desk                         = "While it's useless as a weapon, it seems to have a mystical property while you hold it."
LANGUAGE.craft_empowercrowbar                       = "Empowered Crowbar"
LANGUAGE.craft_hammergod                            = "Hammergod"
LANGUAGE.craft_infinity                             = "'Infinity' Handgun"
LANGUAGE.craft_glock9                               = "'Crossfire' Glock 9"
LANGUAGE.medkitgod                                  = "Medkit God"
LANGUAGE.craft_infboomstick                         = "Infinity Boom Stick"
LANGUAGE.craft_infdeagle                            = "'Infinity' Desert Eagle"
LANGUAGE.craft_infm249                              = "'Infinity M249' Machine Gun"
LANGUAGE.craft_infplank                             = "Infinity Plank"
LANGUAGE.craft_infinochet                           = "'Infinochet' Handgun"
LANGUAGE.craft_deagleredeemers                      = "'Redemption' Desert Eagles"
LANGUAGE.craft_dualboomstick                        = "Dual Boom Stick"
LANGUAGE.craft_dualboomstickdesk                    = "These shotguns allow you to load up to four shells in the chamber at once. Hold down reload for faster loading of each shell."
LANGUAGE.craft_empowershovel                        = "Empowered Shovel"
LANGUAGE.craft_empowerkongol                        = "Empowered Kongol Axe"
LANGUAGE.craft_jethammer                            = "Jet Hammer"
LANGUAGE.craft_jethammerdesk                        = "Powered by powerful jet engines, this hammer still takes time to load up but has extreme damage and knockback output in return."
LANGUAGE.craft_kongol                               = "Kongol Axe"
LANGUAGE.craft_multiinferno                         = "'Multi Inferno' AUG"
LANGUAGE.craft_nukemasher                           = "Nuke Masher"
LANGUAGE.craft_scar                                 = "'Terminus' SCAR-L"
LANGUAGE.craft_volcanoarm                           = "'Volcano Arm Handgun'"
LANGUAGE.craft_volcanoarmdesk                       = "This gun deals extremely large amounts of damage. That's it."

-- Weapon Names 

LANGUAGE.wn_bonemesh                                = "Bone Mesh"
LANGUAGE.wn_chem                                    = "Chem Zombie"
LANGUAGE.wn_crow                                    = "Crow"
LANGUAGE.wn_detpack                                 = "Remote Detonation Pack"
LANGUAGE.wn_turret                                  = "Gun Turret"
LANGUAGE.wn_headcrab                                = "Headcrab"
LANGUAGE.wn_pheadcrab                               = "Poison Headcrab"
LANGUAGE.wn_poisonzombie                            = "Poison Zombie"
LANGUAGE.wn_wisp                                    = "Will O' Wisp"
LANGUAGE.wn_spotlmp                                 = "Spot Lamp"
LANGUAGE.wn_wraith                                  = "Wraith"
LANGUAGE.wn_zombie                                  = "Zombie"
LANGUAGE.wn_bloatedzombie                           = "Bloated Zombie"
LANGUAGE.wn_buststick                               = "Bust-on-a-stick"
LANGUAGE.wn_butcherknife                            = "Butcher Knife"
LANGUAGE.wn_detpackremote                           = "Detonation Pack Remote"
LANGUAGE.wn_drone                                   = "Drone"
LANGUAGE.wn_droncontroll                            = "Drone Control"
LANGUAGE.wn_hammerelectro                           = "Electrohammer"
LANGUAGE.wn_fheadcrab                               = "Fast Headcrab"
LANGUAGE.wn_fastlegs                                = "Fast Zombie Kung Fu"
LANGUAGE.wn_fists                                   = "Fists"
LANGUAGE.wn_freshcreeper                            = "Flesh Creeper"
LANGUAGE.wn_ghoul                                   = "Ghoul"
LANGUAGE.wn_turretcontroll                          = "Gun Turret Controller"
LANGUAGE.wn_keyboard                                = "Keyboard"
LANGUAGE.wn_lamp                                    = "Lamp"
LANGUAGE.wn_manhacksaw                              = "Manhack - Saw Attachment"
LANGUAGE.wn_manhackcontroll                         = "Manhack Control"
LANGUAGE.wn_megamasher                              = "Mega Masher"
LANGUAGE.wn_nightmare                               = "Nightmare"
LANGUAGE.wn_pot                                     = "Pot"
LANGUAGE.wn_pukepus                                 = "Puke Pus"
LANGUAGE.wn_redeemers                               = "'Redeemers' Dual Handguns"
LANGUAGE.wn_sawhack                                 = "Sawhack"
LANGUAGE.wn_ticlemonster                            = "The Tickle Monster"
LANGUAGE.wn_waraxe                                  = "'Waraxe' Handgun"
LANGUAGE.wn_zombielegs                              = "Zombie Kung Fu"
LANGUAGE.weapon_katana                              = "Katana"
LANGUAGE.weapon_python                              = "'Python' Magnum"
LANGUAGE.wn_suicidebmb                              = "Suicide Bomb"
LANGUAGE.wn_explosivecrowbar                        = "Explosive Crowbar"
LANGUAGE.wn_explosiveredeemers                      = "Explosive 'Redeemers' Dual Handguns"
LANGUAGE.wn_claws                                   = "Claws"

-- Special Weapons (rape swep, admins only things)

LANGUAGE.wns_rape                                   = "Rape SWEP"
LANGUAGE.wn_gokufists                               = "Goku's Fists"

-- Item Descriptions 

LANGUAGE.z900_desk                                  = "Although the Z9000 does not deal that much damage, the pulse shots it fires will slow targets."
LANGUAGE.knife_desk                                 = "Deals double damage to the back."
LANGUAGE.crowbar_desk                               = "Instantly kills headcrabs."
LANGUAGE.stun_desk                                  = "Although weak compared to the other weapons, this baton\nhas the ability to slow zombies with an electric shock."
LANGUAGE.wrench_desk                                = "This tool can be used to repair deployables as long as they were not damaged recently."
LANGUAGE.manhack_desk                               = "A deployable, remotely controlled device.\nIdeal for scouting but also can be used for attacking from safety."
LANGUAGE.ars_desk                                   = "This crate is invaluable to survival. It allows people to purchase new weapons, tools, ammunition, etc.\nThe deployer gets a 7% commission on purchases not made by themselves.\nPress PRIMARY ATTACK to deploy the crate.\nPress SECONDARY ATTACK and RELOAD to rotate the crate."
LANGUAGE.ars_resupply                               = "Allows survivors to get ammunition for their current weapon. Each person can only use the box once every so often.\nPress PRIMARY ATTACK to deploy the box.\nPress SECONDARY ATTACK and RELOAD to rotate the box."
LANGUAGE.medkit_desk                                = "An advanced kit of medicine, bandages, and morphine.\nVery useful for keeping a group of survivors healthy.\nUse PRIMARY FIRE to heal other players.\nUse SECONDARY FIRE to heal yourself.\nHealing other players is not only faster but you get a nice point bonus!"
LANGUAGE.medgun_desk                                = "Fires medical darts which can heal at a range. Although less potent than a full medical kit, it can be fired rapidly and used at a range."
LANGUAGE.carpenderhm_desk                           = "A simple but extremely useful tool. Allows you to hammer in nails to make barricades.\nPress SECONDARY FIRE to hammer in nail. It will be attached to whatever is behind it.\nPress RELOAD to take a nail out.\nUse PRIMARY FIRE to bash zombie brains or to repair damaged nails.\nYou get a point bonus for repairing damaged nails but a point penalty for removing another player's nails."
LANGUAGE.junk_desk                                  = "It's simply a pack of wooden junk kept together with some duct tape.\nVery useful for making barricades when no materials are around.\nNeeds something like a hammer and nails to keep the things in place."
LANGUAGE.msgbeacon_desk                             = "This beacon allows you to display messages to all other humans in range.\nPress SECONDARY ATTACK to select different messages.\nPress PRIMARY ATTACK to deploy.\nPress SPRINT on a deployed message beacon that you own to pick it up."
LANGUAGE.femiter_desk                               = "Blocks bullets and other projectiles but will not stop humans, zombies, or other creatures from passing.\nPress PRIMARY ATTACK to deploy.\nPress SECONDARY ATTACK and RELOAD to rotate."
LANGUAGE.stone_desk                                 = "A simple stone found laying pretty much anywhere."
LANGUAGE.deagle_desk                                = "This handgun uses high-powered rounds that have more knockback than others."
LANGUAGE.erazer_desk                                = "Damage increases as remaining bullets decrease. The last shot is worth triple damage."
LANGUAGE.magnum_desk                                = "This gun's bullets will bounce off of walls which will then deal extra damage."
LANGUAGE.stalker_desk                               = "Using this gun will severely reduce the distance in which zombies can see your aura."
LANGUAGE.hunter_desk                                = "Fires special large caliber rounds. The reloading time is slow but it packs a powerful punch."
LANGUAGE.bulletstorm_desk                           = "Hold right click to use the Storm firing mode: fire rate is reduced to 60% but two bullets are fired at once."
LANGUAGE.annabele_desk                              = "This modified hunting rifle's bullets will explode in to smaller bullets upon hitting a hard surface."
LANGUAGE.crossbow_desk                              = "This ancient weapon can easily skewer groups of zombies."
LANGUAGE.tiny_desk                                  = "This powerful rifle instantly kills any zombie with a head shot."
LANGUAGE.boom_desk                                  = "This shotgun allows you to load up to four shells in the chamber at once. Hold down reload for faster loading of each shell."
LANGUAGE.adonis_desk                                = "Deals massive damage and slows targets."
LANGUAGE.shovel_desk                                = "Instantly kills zombies that are knocked down."
LANGUAGE.grenade_desk                               = "A simple fragmentation grenade.\nWhen used in the right conditions, it can obliterate groups of zombies."
LANGUAGE.detpack_desk                               = "A pack of explosives that can be placed on surfaces and detonated remotely.\nPress PRIMARY ATTACK to deploy.\nPress PRIMARY ATTACK again to detonate.\nPress SPRINT on a deployed detonation pack to disarm and retrieve it."
LANGUAGE.aegis_desk                                 = "A ready-to-go, all-in-one board deployer.\nIt automatically deploys the board and then firmly attaches it to almost any surface.\nUse PRIMARY FIRE to deploy boards.\nUse SECONADRY FIRE and RELOAD to rotate the board.\nA ghost of the board shows you if placement is valid or not."
LANGUAGE.spotlmp_desk                               = "This lamp is a watchful eye which illuminates an area.\nPress PRIMARY ATTACK to deploy.\nPress SECONDARY ATTACK and RELOAD to rotate."
LANGUAGE.medkit_text                                = "Medical Kit"
LANGUAGE.wn_detpackremotedes                        = "Allows the user to remotely detonate their detonation packs."
LANGUAGE.wn_dronedes                                = "A deployable, remotely controlled device.\nIdeal for scouting, retrieval, and targeted attacks."
LANGUAGE.wn_droncontrolldes                         = "Controller for your Drone."
LANGUAGE.wn_turretcontrolldes                       = "Allows the user to manually take control of any turrets they own."
LANGUAGE.wn_manhacksawdes                           = "A modified manhack with a saw blade attachment.\nDoes significantly more damage and is more durable. Slightly less easy to control."
LANGUAGE.wn_manhackcontrolldes                      = "Controller for your Manhack."
LANGUAGE.wn_manhacksawcontrolldes                   = "Controller for your modified Manhack."
LANGUAGE.wn_oxygentankdes                           = "Grants the user much higher air capacity."
LANGUAGE.wn_manhacksawcontroll                      = "A modified manhack with a saw blade attachment.\nDoes significantly more damage and is more durable. Slightly less easy to control."

-- Honorable Mentions 

LANGUAGE.hm_most_zombies_killed                     = "Most zombies killed"
LANGUAGE.hm_most_zombies_killed2                    = "by %s, with %d killed zombies."
LANGUAGE.hm_most_dmg_undead                         = "Most damage to undead"
LANGUAGE.hm_most_dmg_undead2                        = "goes to %s, with a total of %d damage dealt to the undead."
LANGUAGE.hm_pacifist                                = "Pacifist"
LANGUAGE.hm_pacifist2                               = "goes to %s for not killing a single zombie and still surviving!"
LANGUAGE.hm_most_helpful                            = "Most helpful"
LANGUAGE.hm_most_helpful2                           = "goes to %s for assisting in the disposal of %d zombies."
LANGUAGE.hm_last_human                              = "Last Human"
LANGUAGE.hm_last_human2                             = "goes to %s for being the last person alive."
LANGUAGE.hm_outlander                               = "Outlander"
LANGUAGE.hm_outlander2                              = "goes to %s for getting killed %d feet away from a zombie spawn."                       
LANGUAGE.hm_good_doctor                             = "Good Doctor"
LANGUAGE.hm_good_doctor2                            = "goes to %s for healing their team for %d points of health."
LANGUAGE.hm_handy_man                               = "Handy Man"
LANGUAGE.hm_handy_man2                              = "goes to %s for getting %d barricade assistance points."
LANGUAGE.hm_scarecrow                               = "Scarecrow"
LANGUAGE.hm_scarecrow2                              = "goes to %s for killing %d poor crows."
LANGUAGE.hm_most_brains_eaten                       = "Most brains eaten"
LANGUAGE.hm_most_brains_eaten2                      = "by %s, with %d brains eaten."
LANGUAGE.hm_most_dmg_tohumans                       = "Most damage to humans"
LANGUAGE.hm_most_dmg_tohumans2                      = "goes to %s, with a total of %d damage given to living players."
LANGUAGE.hm_last_bite                               = "Last Bite"
LANGUAGE.hm_last_bite2                              = "goes to %s for ending the round."
LANGUAGE.hm_most_useful                             = "Most useful to opposite team"
LANGUAGE.hm_most_useful2                            = "goes to %s for giving up a whopping %d kills!"
LANGUAGE.hm_stupid                                  = "Stupid"
LANGUAGE.hm_stupid2                                 = "is what %s is for getting killed %d feet away from a zombie spawn."
LANGUAGE.hm_salesman                                = "Salesman"
LANGUAGE.hm_salesman2                               = "is what %s is for having %d points worth of items taken from their arsenal crate."
LANGUAGE.hm_warehouse                               = "Warehouse"
LANGUAGE.hm_warehouse2                              = "describes %s well since they had their resupply boxes used %d times."
LANGUAGE.hm_spawn_point                             = "Spawn Point"
LANGUAGE.hm_spawn_point2                            = "goes to %s for having %d zombies spawn on them."
LANGUAGE.hm_crow_fighter                            = "Crow Fighter"
LANGUAGE.hm_crow_fighter2                           = "goes to %s for annihilating %d of his crow brethren."
LANGUAGE.hm_minor_annoyance                         = "Minor Annoyance"
LANGUAGE.hm_minor_annoyance2                        = "is what %s is for dealing %d damage to barricades while a crow."
LANGUAGE.hm_barricade_destroyer                     = "Barricade Destroyer"
LANGUAGE.hm_barricade_destroyer2                    = "goes to %s for doing %d damage to barricades."
LANGUAGE.hm_nest_destroyer                          = "Nest Destroyer"
LANGUAGE.hm_nest_destroyer2                         = "goes to %s for destroying %d nests."
LANGUAGE.hm_nest_master                             = "Nest Master"
LANGUAGE.hm_nest_master2                            = "goes to %s for having %d zombies spawn through their nest."

-- Weapon Titles

LANGUAGE.title_worthguns                            = "Weaponry"
LANGUAGE.title_guns                                 = "Hand Guns"
LANGUAGE.title_shotguns                             = "Shotguns"
LANGUAGE.title_smg                                  = "SMG"
LANGUAGE.title_assault                              = "Assault"
LANGUAGE.title_rifles                               = "Rifles"
LANGUAGE.title_ammo                                 = "Ammunition"
LANGUAGE.title_melee                                = "Melee Weapons"
LANGUAGE.title_tools                                = "Tools"
LANGUAGE.title_other                                = "Other"
LANGUAGE.title_traits                               = "Traits"
LANGUAGE.title_returns                              = "Returns"
LANGUAGE.title_classm                               = "Class Mutations"
LANGUAGE.title_bossm                                = "Boss Mutations"

-- Main Menu (F1 menu)

LANGUAGE.mm_menu                                    = "Main Menu"
LANGUAGE.mm_pm_selection                            = "Player model selection"
LANGUAGE.mm_pm_color                                = "Player color"
LANGUAGE.mm_color                                   = "Colors"
LANGUAGE.mm_w_color                                 = "Weapon color"
LANGUAGE.mm_close                                   = "Close"
LANGUAGE.mm_credits                                 = "Credits"
LANGUAGE.mm_credits2                                = "ZS:R Credits"
LANGUAGE.mm_options                                 = "Options"
LANGUAGE.mm_pc                                      = "Player color"
LANGUAGE.mm_pm                                      = "Player model"
LANGUAGE.mm_pm2                                     = "Player models"
LANGUAGE.mm_pm3                                     = "Models"
LANGUAGE.mm_back                                    = "Back" 
LANGUAGE.mm_help                                    = "Help" 
LANGUAGE.mm_pm_messg                                = "You've changed your desired player model to %s"
LANGUAGE.mm_sp                                      = "Spectate"
LANGUAGE.mm_unsp                                    = "Un-Spectate"
LANGUAGE.mm_spectators                              = "Spectators"
LANGUAGE.spectator_now                              = "You are now a Spectator"
LANGUAGE.spectator_cantchange                       = "You can't change during wave 0"
LANGUAGE.spectator_cantchange2                      = "This server has disabled spectator mode"
LANGUAGE.spectator_cantchange3                      = "You can't change during last human phase"
LANGUAGE.spectator_canchange_in_x                   = "You can change from spectator in %s"


-- Weapon Database

LANGUAGE.wb_database                                = "Weapon Database"
LANGUAGE.wb_wspeed                                  = "Movement speed"
LANGUAGE.wb_mdmg                                    = "Damage"
LANGUAGE.wb_range                                   = "Range"
LANGUAGE.wb_msize                                   = "Size"
LANGUAGE.wb_clipsize                                = "Clip size"
LANGUAGE.wb_dmg                                     = "Damage"
LANGUAGE.wb_numshots                                = "Number of shots"
LANGUAGE.wb_delay                                   = "Rate of fire"
LANGUAGE.wb_minaccu                                 = "Minimum accuracy"
LANGUAGE.wb_maxaccu                                 = "Maximum accuracy"

-- Class Selection

LANGUAGE.close                                      = "Close"
LANGUAGE.normal_selection                           = "Back to normal class menu..."
LANGUAGE.boss_selection                             = "Select desired boss class..."
LANGUAGE.mutations_selection                        = "Mutations"
LANGUAGE.classes_and                                = "and"
LANGUAGE.classes_undeadclasses                      = "UNDEAD CLASSES"
LANGUAGE.classes_chooseresawn                       = "Choose the class you want to respawn as."
LANGUAGE.classes_hp_x                               = "HP : %s"
LANGUAGE.classes_speed_x                            = "SPEED : %s"
LANGUAGE.classes_dmg_x                              = "DMG : %s"
LANGUAGE.classes_force_x                            = "FORCE : %s"

-- Options

LANGUAGE.options_gameplay                           = "Gameplay"
LANGUAGE.options_weapon                             = "Weapon"
LANGUAGE.options_visual                             = "Visual"
LANGUAGE.options_sound                              = "Sound"
LANGUAGE.options_player                             = "Player"


LANGUAGE.options_options                            = "Options"
LANGUAGE.options_no_discord                         = "Don't show the official Discord link in chat"
LANGUAGE.options_no_ars_crate                       = "Don't show arsenal crates through walls"
LANGUAGE.options_no_status_ars_crate                = "Don't show arsenal crates on clients"
LANGUAGE.options_no_resupply                        = "Don't show resupply boxes through walls"
LANGUAGE.options_no_floating_score                  = "Don't show point floaters"
LANGUAGE.options_iron_sights_crosshair              = "Draw crosshair in ironsights"
LANGUAGE.options_film_mode                          = "Film Mode (disable most of the HUD)"
LANGUAGE.options_beats                              = "Enable ambient music"
LANGUAGE.options_play_music                         = "Enable last human music"
LANGUAGE.options_post_processing                    = "Enable post processing"
LANGUAGE.options_film_grain                         = "Enable film grain"
LANGUAGE.options_color_mod                          = "Enable Color Mod"
LANGUAGE.options_draw_pain_flash                    = "Enable pain flashes"
LANGUAGE.options_no_crosshair_rotate                = "No crosshair rotate"
LANGUAGE.options_auras                              = "Enable human health auras"
LANGUAGE.options_damage_floaters                    = "Enable damage indicators"
LANGUAGE.options_movement_view_roll                 = "Enable movement view roll"
LANGUAGE.options_always_show_nails                  = "Always display nail health"
LANGUAGE.options_show_old_baseoutlined_hud          = "Show old base outlined HUD"
LANGUAGE.options_no_redeem                          = "Disable automatic redeeming (next round)"
LANGUAGE.options_no_bandit                          = "Disable becoming a bandit"
LANGUAGE.options_always_volunteer                   = "Always volunteer to start as a zombie"
LANGUAGE.options_no_boss_pick                       = "Prevent being picked as a boss zombie"
LANGUAGE.options_suicide_on_change                  = "Automatic suicide when changing classes"
LANGUAGE.options_intro_music                        = "Enable intro music"
LANGUAGE.options_music_volume                       = "Music volume"
LANGUAGE.options_transparency_radius                = "Transparency radius"
LANGUAGE.options_film_grain                         = "Film grain"
LANGUAGE.options_crosshair_p                        = "Crosshair primary color"
LANGUAGE.options_crosshair_s                        = "Crosshair secondary color"
LANGUAGE.options_hp_full                            = "Health aura color - Full health"
LANGUAGE.options_hp_no                              = "Health aura color - No health"
LANGUAGE.options_beatset_zombie                     = "Zombie ambient beat set"
LANGUAGE.options_beatset_human                      = "Human ambient beat set"
LANGUAGE.options_weapon_hud_mode                    = "Weapon HUD display style"
LANGUAGE.options_thirdpersoned                      = "Third person view point"
LANGUAGE.options_proprotation                       = "Prop rotation snap angle"


-- Help menu

LANGUAGE.help_help                                  = "Help"
LANGUAGE.help_credits                               = "Credits"
LANGUAGE.help_credits2                              = "Zombie Survival : Redemption"

-- Scoreboard (teams)

LANGUAGE.team_humans                                = "Survivors"
LANGUAGE.team_zombie                                = "Zombies"

-- Scoreboard (tags)
LANGUAGE.tag_jetboom                                = "JetBoom\nCreator of Zombie Survival!"
LANGUAGE.tag_craig                                  = "MrCraigTunstall\nCoder of Zombie Survival Redemption."
LANGUAGE.tag_flair                                  = "Flairieve\nThat Awesome Cat!"
LANGUAGE.tag_mka                                    = "Mka0207\nConcepted and created Zombie Survival Redemption."
LANGUAGE.tag_d3                                     = "D3\nAssistant coder of Zombie Survival Redemption."
LANGUAGE.tag_gabi                                   = "Gabi\nHollowcreek Owner."

LANGUAGE.tag_ru                                     = "berry\nRussian Translator."
LANGUAGE.tag_es                                     = "Sulfito\nSpanish Translator."
LANGUAGE.tag_ko                                     = "Sandball\nKorean Translator."

LANGUAGE.tag_bot                                    = "Beep Boop!\nI'm a bot!"
LANGUAGE.tag_sa                                     = "Super Admin"
LANGUAGE.tag_admin                                  = "Admin"
LANGUAGE.tag_mod                                    = "Moderator"
LANGUAGE.tag_user                                   = "User"
LANGUAGE.tag_supporter                              = "ZSR Supporter"

-- ALT menu

LANGUAGE.alt_gw                                     = "Give Weapon"
LANGUAGE.alt_gw5                                    = "Give Weapon and 5 clips"
LANGUAGE.alt_dw                                     = "Drop weapon"
LANGUAGE.alt_ec                                     = "Empty clip"
LANGUAGE.alt_drop                                   = "Drop"
LANGUAGE.alt_give                                   = "Give"

-- Ammo names

LANGUAGE.ammo_pistol                                = "Pistol"
LANGUAGE.ammo_smg                                   = "SMG"
LANGUAGE.ammo_rifle                                 = "Rifle"
LANGUAGE.ammo_bolts                                 = "Bolts"
LANGUAGE.ammo_buckshots                             = "Buckshot"
LANGUAGE.ammo_boards                                = "Boards"
LANGUAGE.ammo_grenade                               = "Grenades"
LANGUAGE.ammo_turrets                               = "Turrets"
LANGUAGE.ammo_meds                                  = "Medical Supplies"
LANGUAGE.ammo_nail                                  = "Nails"
LANGUAGE.ammo_ars                                   = "Arsenal Crates"
LANGUAGE.ammo_beacons                               = "Beacons"
LANGUAGE.ammo_forcefilds                            = "Force Field Emitters"
LANGUAGE.ammo_spotlamp                              = "Spot Lamps"
LANGUAGE.ammo_stone                                 = "Stones"
LANGUAGE.ammo_pulse                                 = "Pulse Shots"

-- Player HUD things

LANGUAGE.pl_poison                                  = "POISON!"
LANGUAGE.pl_bleed                                   = "BLEED!"
LANGUAGE.pl_ghtc                                    = "GHOUL TOUCH!"
LANGUAGE.carrying_prop                              = "Carrying [%s]"
LANGUAGE.stay_from_zombie_spawns                    = "Stay Away from the Zombie Spawns!"
LANGUAGE.invasion_in                                = "The invasion will begin in..."
LANGUAGE.wave_intermission                          = "Wave Intermission:"
LANGUAGE.wave                                       = "Wave:"
LANGUAGE.health                                     = "Health:"

-- Floating Score

LANGUAGE.fc_assisted                                = "(assisted)"
LANGUAGE.fc_assist                                  = "(assist)"
LANGUAGE.fc_point                                   = "point"
LANGUAGE.fc_s                                       = "s"
LANGUAGE.fc_munch                                   = "MUNCH!"
LANGUAGE.fc_brainget                                = "BRAIN GET!"
LANGUAGE.fc_joinus                                  = "JOIN US!"
LANGUAGE.fc_oneofus                                 = "ONE OF US!"
LANGUAGE.fc_buttmagned                              = "BUTT MANGLED!"
LANGUAGE.fc_chomp                                   = "CHOMP!"

-- Credits

LANGUAGE.credits_credits                            = "Zombie Survival Credits"


-- Tier System

LANGUAGE.dont_have_weapon_x                         = "Can't sell, you do not have a %s"
LANGUAGE.not_unlocked_yet_unlocked_on_x             = "That weapon is not unlocked yet. It will be unlocked at the start of wave %d."
LANGUAGE.weapon_tier_x                              = "Weapon tier %d unlocked."
LANGUAGE.sold_x_for_y_points                        = "Sold %s for %d points!"

-- Spray mon

LANGUAGE.spray_spraycant                            = "You can't place your spray here."
LANGUAGE.spray_sprayedby                            = "Sprayed by:"

-- Mutations

LANGUAGE.you_dont_have_enough_btokens               = "You don't have enough damage tokens!"
LANGUAGE.purchased_x_for_y_btokens                  = "Purchased %s for %d damage tokens!"
LANGUAGE.cant_buy_mutations                         = "You can't use the Mutation Shop right now!"
LANGUAGE.mutationstokens                            = "%s Tokens"
LANGUAGE.mutationsdamagetokens                      = "Damage Tokens: %s"

-- Discord / misc

LANGUAGE.post_discord_init_text                     = "Hey there! This gamemode has an official Discord.\nYou can be part of it by following this link - \nhttps://discord.me/voidresonance"
LANGUAGE.post_discord_init_text2                    = "You can disable this message with the console command\nzs_nodiscord 1"

