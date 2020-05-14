STAGE <- 0;

function MapStart()
{
    if(STAGE == 0)
	{
	    EntFire("Server","Command","say *** WARMUP ROUND (60 sec) ***",0.10,null);
	    EntFire("Server","Command","say *** WARMUP ROUND (50 sec) ***",10.00,null);
	    EntFire("Server","Command","say *** WARMUP ROUND (40 sec) ***",20.00,null);
	    EntFire("Server","Command","say *** WARMUP ROUND (30 sec) ***",30.00,null);
	    EntFire("Music_isaac","PlaySound","",0.00,null);
	    EntFire("Server","Command","say *** WARMUP ROUND (20 sec) ***",40.00,null);
	    EntFire("Server","Command","say *** WARMUP ROUND (10 sec) ***",50.00,null);
	    EntFire("Server","Command","say *** Stage 1 loaded ***",60.00,null);
		EntFire("Snake_thruster_*","FireUser1","",0.00,null);
		EntFire("Snake_Move_Physbox","RunScriptCode","Stop();",1.00,null);
		EntFire("Medusa_thruster_*","FireUser1","",0.00,null);
		EntFire("Medusa_Move_Physbox","RunScriptCode","Stop();",1.00,null);
		EntFire("Serphibrido_thruster_*","FireUser1","",0.00,null);
		EntFire("Serphibrido_Move_Physbox","RunScriptCode","Stop();",1.00,null);
	    EntFire("Temp_Spawn","ForceSpawn","",0.00,null);
	    EntFire("Tele_Spawn","Enable","",0.00,null);
	    EntFire("Buyzone","FireUser1","",0.00,null);
	    EntFire("game_playerdie","Kill","",1.00,null);
		EntFireByHandle(self, "RunScriptCode", " STAGE = 1; ", 60.00, null, null);
		EntFireByHandle(self, "RunScriptCode", " KillAll(); ", 62.00, null, null);
	}
	else if(STAGE == 1)
	{
		EntFire("Server","Command","say *** STAGE 1 ***",8.00,null);
		EntFire("Main_Room_Door1","Toggle","",2.00,null);
		EntFire("Music_Lich","PlaySound","",0.00,null);
		EntFire("Server","Command","say *** Find a way to reach the temple ***",14.00,null);
		EntFire("Item_Poison_Template","FireUser1","",5.00,null);
		EntFire("Item_Heal_Template","FireUser1","",5.00,null);
		EntFire("Snake_thruster_*","FireUser1","",0.00,null);
		EntFire("Snake_Move_Physbox","RunScriptCode","Stop();",1.00,null);
		EntFire("Medusa_thruster_*","FireUser1","",0.00,null);
		EntFire("Medusa_Move_Physbox","RunScriptCode","Stop();",1.00,null);
		EntFire("Serphibrido_thruster_*","FireUser1","",0.00,null);
		EntFire("Serphibrido_Move_Physbox","RunScriptCode","Stop();",1.00,null);
		EntFire("Map_FadeBlack","Fade","",0.00,null);
		EntFire("Temp_Spawn","ForceSpawn","",0.00,null);
		EntFire("Item_Fire_Template","FireUser1","",5.00,null);
		EntFire("Tele_Spawn","Enable","",0.00,null);
		EntFire("chamber_mouthdoor","Close","",5.00,null);
		EntFire("Spawn_Break","Kill","",1.00,null);
		EntFire("Buyzone","FireUser1","",0.00,null);
		EntFire("game_playerdie","Kill","",1.00,null);
		EntFire("stage1_tpfix_hestia_*","Enable","",0.00,null);
		EntFire("stage1_tpfix_hestia_*","Disable","",16.00,null);
	}
	else if(STAGE == 2)
	{
		EntFire("Server","Command","say *** STAGE 2 ***",8.00,null);
		EntFire("Tele_Temple","Enable","",10.00,null);
		EntFire("map_brush","RunScriptCode","ResetValue();",0.00,null);
		EntFire("map_brush","RunScriptCode","Bol=0;",0.00,null);
		EntFire("map_brush","RunScriptCode","HpBarFrame(40);",10.00,null);
		EntFire("Music_Iron","PlaySound","",5.00,null);
		EntFire("Main_Room_Door3","Toggle","",2.00,null);
		EntFire("Temp_Room3","ForceSpawn","",8.00,null);
		EntFire("Medusa_thruster_*","FireUser1","",0.00,null);
		EntFire("Medusa_Move_Physbox","RunScriptCode","Stop();",1.00,null);
		EntFire("Serphibrido_thruster_*","FireUser1","",0.00,null);
		EntFire("Serphibrido_Move_Physbox","RunScriptCode","Stop();",1.00,null);
		EntFire("Item_Poison_Template","FireUser2","",5.00,null);
		EntFire("Item_Heal_Template","FireUser2","",5.00,null);
		EntFire("Spawn_Lava","Kill","",10.00,null);
		EntFire("Map_FadeBlack","FireUser1","",0.00,null);
		EntFire("Item_Fire_Template","FireUser2","",5.00,null);
		EntFire("Temp_Spawn","FireUser1","",0.00,null);
		EntFire("Map_Main_Dest","FireUser1","",5.00,null);
		EntFire("Main_Room_Door2","Toggle","",0.00,null);
		EntFire("Tp_Room2","Kill","",0.00,null);
		EntFire("Temp_SnakeParticle","FireUser1","",0.00,null);
		EntFire("game_playerdie","Kill","",1.00,null);
		EntFire("stage2_tpfix_hestia_*","Enable","",0.00,null);
		EntFire("stage2_tpfix_hestia_*","Disable","",16.00,null);
	}
	else if(STAGE == 3)
	{
		EntFire("Server","Command","say *** STAGE 3 ***",8.00,null);
		EntFire("Tele_Temple","Enable","",10.00,null);
		EntFire("Music_walker","AddOutput","message serpentis_escape/what shall we die for extended.mp3",1.00,null);
		EntFire("Main_Room_Door5","Toggle","",2.00,null);
		EntFire("Temp_Room5","ForceSpawn","",9.00,null);
		EntFire("map_brush","RunScriptCode","ResetValue();",0.00,null);
		EntFire("Map_FadeBlack","FireUser1","",0.00,null);
		EntFire("map_brush","RunScriptCode","Bol=1;",0.00,null);
		EntFire("map_brush","RunScriptCode","HpBarFrame(1);",10.00,null);
		EntFire("Snake_thruster_*","FireUser1","",0.00,null);
		EntFire("Snake_Move_Physbox","RunScriptCode","Stop();",1.00,null);
		EntFire("Medusa_thruster_*","FireUser1","",0.00,null);
		EntFire("Medusa_Move_Physbox","RunScriptCode","Stop();",1.00,null);
		EntFire("Serphibrido_thruster_*","FireUser1","",0.00,null);
		EntFire("Serphibrido_Move_Physbox","RunScriptCode","Stop();",1.00,null);
		EntFire("Item_Fire_Template","FireUser3","",5.00,null);
		EntFire("Snake_thruster_*","FireUser1","",0.00,null);
		EntFire("Snake_Move_Physbox","RunScriptCode","Start();",1.00,null);
		EntFire("Item_Heal_Template","FireUser3","",5.00,null);
		EntFire("Item_Poison_Template","FireUser3","",5.00,null);
		EntFire("Temp_Spawn","FireUser1","",0.00,null);
		EntFire("Map_Main_Dest","FireUser2","",5.00,null);
		EntFire("Main_Room_Door4","Toggle","",0.00,null);
		EntFire("Tp_Room4","Kill","",0.00,null);
		EntFire("Temp_SnakeParticle","FireUser2","",0.00,null);
		EntFire("Torch_Template","FireUser1","",9.00,null);
		EntFire("Music_Dawn","PlaySound","",8.00,null);
		EntFire("game_playerdie","Kill","",1.00,null);
		EntFire("stage3_tpfix_hestia_*","Enable","",0.00,null);
		EntFire("stage3_tpfix_hestia_*","Disable","",16.00,null);
	}
	else if(STAGE == 4)
	{
		EntFire("Server","Command","say *** STAGE 4 ***",8.00,null);
		EntFire("Music_walker","PlaySound","",4.00,null);
		EntFire("Main_Room_Door7","Toggle","",2.00,null);
		EntFire("Temp_Room7","ForceSpawn","",5.00,null);
		EntFire("map_brush","RunScriptCode","ResetValue();",0.00,null);
		EntFire("map_brush","RunScriptCode","Bol=2;",0.00,null);
		EntFire("map_brush","RunScriptCode","HpBarFrame(40);",10.00,null);
		EntFire("Tele_Temple","Enable","",10.00,null);
		EntFire("Map_FadeBlack","FireUser1","",0.00,null);
		EntFire("Snake_thruster_*","FireUser1","",0.00,null);
		EntFire("Snake_Move_Physbox","RunScriptCode","Start();",1.00,null);
		EntFire("Snake_thruster_*","FireUser1","",0.00,null);
		EntFire("Snake_Move_Physbox","RunScriptCode","Stop();",1.00,null);
		EntFire("Medusa_thruster_*","FireUser1","",0.00,null);
		EntFire("Medusa_Move_Physbox","RunScriptCode","Stop();",1.00,null);
		EntFire("Item_Heal_Template","FireUser4","",5.00,null);
		EntFire("Item_Fire_Template","FireUser4","",5.00,null);
		EntFire("Item_Poison_Template","FireUser4","",5.00,null);
		EntFire("Temp_Spawn","FireUser1","",0.00,null);
		EntFire("Map_Main_Dest","FireUser3","",5.00,null);
		EntFire("Main_Room_Door6","Toggle","",0.00,null);
		EntFire("Tp_Room6","Kill","",0.00,null);
		EntFire("Temp_SnakeParticle","FireUser3","",0.00,null);
		EntFire("game_playerdie","Kill","",1.00,null);
		EntFire("stage4_tpfix_hestia_*","Enable","",0.00,null);
		EntFire("stage4_tpfix_hestia_*","Disable","",16.00,null);

	}
	else if(STAGE == 5)
	{
		EntFire("Server","Command","say *** STAGE 5 ***",8.00,null);
		EntFire("Tele_Temple","Enable","",10.00,null);
		EntFire("Map_FadeBlack","FireUser1","",0.00,null);
		EntFire("map_brush","RunScriptCode","ResetValue();",0.00,null);
		EntFire("Music_heart","PlaySound","",1.00,null);
		EntFire("mboss_relay_start","Trigger","",43.00,null);
		EntFire("map_brush","RunScriptCode","Bol=3;",0.00,null);
		EntFire("map_brush","RunScriptCode","HpBarFrame(30);",10.00,null);
		EntFire("Map_Main_Dest","FireUser4","",5.00,null);
		EntFire("Main_Room_Tele8","Kill","",45.00,null);
		EntFire("Snake_thruster_*","FireUser1","",0.00,null);
		EntFire("Snake_Move_Physbox","RunScriptCode","Start();",1.00,null);
		EntFire("Main_Room_Door8","Toggle","",0.00,null);
		EntFire("Tp_Room8","Kill","",0.00,null);
		EntFire("Temp_SnakeParticle","FireUser4","",0.00,null);
		EntFire("Snake_thruster_*","FireUser1","",0.00,null);
		EntFire("Snake_Move_Physbox","RunScriptCode","Stop();",1.00,null);
		EntFire("Serphibrido_thruster_*","FireUser1","",0.00,null);
		EntFire("Serphibrido_Move_Physbox","RunScriptCode","Stop();",1.00,null);
		EntFire("Main_Room_Tele8","Enable","",15.20,null);
		EntFire("Map_Main_Dest","AddOutput","origin -3720 6512 7707",15.00,null);
		EntFire("Main_Room_Door8","Toggle","",15.00,null);
		EntFire("Item_Heal_Template","AddOutput","origin 6944 -9248 -12576",6.00,null);
		EntFire("Item_Heal_Template","ForceSpawn","",6.10,null);
		EntFire("Item_fire_Template","AddOutput","origin 6944 -9464 -12576",7.00,null);
		EntFire("Item_fire_Template","ForceSpawn","",7.10,null);
		EntFire("Buyzone","FireUser2","",0.00,null);
		EntFire("Tp_Room*","Kill","",8.00,null);
		EntFire("stage5_tpfix_hestia_*","Enable","",0.00,null);
		EntFire("stage5_tpfix_hestia_*","Disable","",16.00,null);
	}
	EntFireByHandle(self, "RunScriptCode", " RestartParticle(); ", 1.00, null, null);
}

function Precache()
{
    self.PrecacheScriptSound("serpentis_escape/what shall we die for extended.mp3");
}

function RestartParticle()
{
    EntFire("RoomFinal_ParticleTp2","Stop","",0.00,null);
	EntFire("RoomFinal_ParticleTp2","Start","",10.00,null);
	EntFire("roomfinal_particle_bridge","Stop","",0.00,null);
	EntFire("roomfinal_particle_bridge","Start","",10.00,null);
	EntFire("Room8_Fire_Particle","Stop","",0.00,null);
	EntFire("Room8_Fire_Particle","Start","",10.00,null);
	EntFire("Room5_Sacrifice_Particle","Stop","",0.00,null);
    EntFire("Room5_Sacrifice_Particle","Start","",10.00,null);
	EntFire("Room5_Phys_Particle*","Stop","",0.00,null);
	EntFire("Room5_Phys_Particle*","Start","",10.00,null);
	EntFire("Room5_FireParticle","Stop","",0.00,null);
	EntFire("Room5_FireParticle","Start","",10.00,null);
	EntFire("Room4_Water_Particle","Stop","",0.00,null);
	EntFire("Room4_Water_Particle","Start","",10.00,null);
	EntFire("Room3_Lava_Particle","Stop","",0.00,null);
	EntFire("Room3_Lava_Particle","Start","",10.00,null);
	EntFire("Room2_Particle_Snake*","Stop","",0.00,null);
	EntFire("Room2_Particle_Snake*","Start","",10.00,null);
	EntFire("Room1_Particle","Stop","",0.00,null);
	EntFire("Room1_Particle","Start","",10.00,null);
	
}
function KillT()
{
    local h = null;
	while(null != (h = Entities.FindInSphere(h,self.GetOrigin(),500000)))
	{
	   if(h.GetTeam() == 2 && h.GetHealth() > 0)EntFireByHandle(h,"SetHealth","-69",0.00,null,null);
	}
}
function KillAll()
{
	local p = null;
	while(null != (p = Entities.FindByClassname(p,"player")))
	{
		if(p != null && p.IsValid() && p.GetHealth()>0)
			EntFireByHandle(p, "SetHealth", "-69", 0.00, null, null);
	}
}