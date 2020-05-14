BossHpBar <- 0;

ticking <- false;

BossHealth <- 0.00;

ChangeHealth <- 0.00;

Bol <- 0;

soundloop <- false;

BossItem <- false;

Player <- 0;

hibrido <- 0;

BossNoDamage <- false;



function AddHealth(add_amount)
{
    local c = add_amount;
	local p = null;
	while(null != (p = Entities.FindByClassname(p,"player")))
	{
	     if(p.GetTeam() == 3 && p.GetHealth() > 0)
		 {
		     BossHealth += add_amount;
			 ChangeHealth += c;
			 Player ++;
		 }
	}
}
function HpBarFrame(Frame){if(BossHpBar==0)BossHpBar = Frame;}
function ChangeHp()
{
	if(BossHealth<=0)
	{
	    HpBar();
		BossHpBar--;
		BossHealth += ChangeHealth;
		EntFireByHandle(self, "RunScriptCode", " NoDamage(); ", 0.00, null, null);
	}
	else if(BossHpBar<=0)
	{
		BossKill();
		ticking=false;
	}
}
function NoDamage()
{
    if(BossHealth<0&&!BossNoDamage)
	{
	    if(Bol==0){EntFire("Noctali_Boss_Break","SetDamageFilter","No_Damage",0.00,null);BossNoDamage=true;}
		else if(Bol==2){EntFire("Nostar_Boss_Break_2","SetDamageFilter","No_Damage",0.00,null);BossNoDamage=true;}
		else if(Bol==3){EntFire("mboss_physhurt","SetDamageFilter","No_Damage",0.00,null);BossNoDamage=true;}
	}
	else if(BossHealth>=0&&BossNoDamage)
	{
	    if(Bol==0){EntFire("Noctali_Boss_Break","SetDamageFilter","",0.00,null);BossNoDamage=false;}
		else if(Bol==2){EntFire("Nostar_Boss_Break_2","SetDamageFilter","",0.00,null);BossNoDamage=false;}
		else if(Bol==3){EntFire("mboss_physhurt","SetDamageFilter","",0.00,null);BossNoDamage=false;}
	}
}
function HpBar(){for(local i = BossHpBar; i >= 0; i--){EntFire("HpTexture","IncrementTextureIndex","",0.00,null);return;}}
function Start()
{
     ticking = true;
	 Tick();
}
function Tick()
{
	if(ticking == true)
	{
		EntFireByHandle(self, "RunScriptCode", " Tick() ", 0.05, null, null);
		EntFireByHandle(self, "RunScriptCode", " ChangeHp() ", 0.02, null, null);
	}
}


function ResetValue()
{
     BossHpBar = 0;
     ticking = false;
     BossHealth = 0.00;
     ChangeHealth = 0.00;
     soundloop = false;
     BossItem = false;
     Player = 0;
     hibrido = 0;
	 BossNoDamage = false;
}
function ItemDamage(Item)
{
//item=0 HE
//item=1 Poison
//item=2 Fire
     if(BossItem==true&&Item==0)
	 {
	     BossHealth -= 5 * Player;
	 }
	 else if(BossItem==true&&Item==1)
	 {
	     if(Bol==0)
		 {
			 EntFire("Snake_Move_Physbox","DisableMotion","",0.00,null);
			 EntFire("Snake_Move_Physbox","EnableMotion","",4.50,null);
		 }
		else if(Bol==2)
		 {
			 EntFire("Serphibrido_Move_Physbox","DisableMotion","",0.00,null);
			 EntFire("Serphibrido_Move_Physbox","EnableMotion","",4.50,null);
		 }
	 }
	 else if(BossItem==true&&Item==2)
	 {
	     if(Bol==0)
		 {
			 BossHealth -= 20 * Player;
		 }
		 else if(Bol==2)
		 {
	         BossHealth -= 30 * Player;
		 }
	 }
}

function BossRandomSound()
{
     local Sound = RandomInt(1,3);
	 if(Sound == 1)
	{
	    EntFire("Room4_Boss_Son1","PlaySound","",0.00,null);
	}
	 else if(Sound == 2)
    {
	    EntFire("Room4_Boss_Son2","PlaySound","",0.00,null);
	}	 
	 else if(Sound == 3)
	{
	    EntFire("Room4_Boss_Son3","PlaySound","",0.00,null);
	}
	 EntFireByHandle(self, "RunScriptCode", " SnakeAttack() ", 0.50, null, null);
}
function SnakeAttack()
{
     if(!soundloop)
	 {
	     EntFire("Noctali_Boss_Model","SetAnimation","Move_02",0.00,null);
		 EntFire("Noctali_Boss_Poison","ForceSpawn","",0.10,null);
		 EntFire("Noctali_Boss_Poison","ForceSpawn","",1.10,null);
		 EntFire("Noctali_Boss_Model","SetAnimation","Move_01",2.00,null);
		 EntFire("Noctali_Boss_Poison","ForceSpawn","",2.10,null);
		 EntFire("Snake_Particle","Stop","",4.00,null);
		 EntFire("Snake_Hurt","Kill","",5.00,null);
		 EntFire("Snake_Particle","Kill","",5.00,null);
		 EntFireByHandle(self, "RunScriptCode", " BossRandomSound() ", 10.00, null, null);
	 }
}	 

function BossStart()
{
// boss 0 snake
// boss 1 particle
// boss 2 hibrido
// boss 3 medusa
    if(Bol==0)
	{
	    EntFireByHandle(self, "RunScriptCode", " BossRandomSound() ", 6.00, null, null);
		EntFire("Noctali_Boss_Break","SetDamageFilter","humans",8.00,null);
		EntFire("Boss_Temp","ForceSpawn","",6.00,null);
		EntFire("Snake_thruster_*","FireUser1","",5.00,null);
		EntFire("Snake_Move_Physbox","RunScriptCode","Start();",6.00,null);
		EntFire("Room4_Boss_Particle1","Start","",6.00,null);
		EntFire("Room4_Boss_Fade","Fade","",5.00,null);
		EntFire("Map_Shake2","StartShake","",6.00,null);
		EntFire("Room4_Boss_Particle2","SetParent","Snake_Move_Physbox",6.50,null);
	}
	else if(Bol==1){}
	else if(Bol==2){}
	else if(Bol==3){}
}
function BossKill()
{
     if(Bol==0)
	 {
	     EntFire("Noctali_Boss_HPSprite","Kill","",1.50,null);
		 EntFire("Room4_Tp4","Enable","",17.00,null);
		 EntFire("Server","Command","say *** COVER ! GET TO THE DOOR ! ***",5.00,null);
		 EntFire("Room4_Door2","Open","",10.00,null);
		 EntFire("Noctali_Boss_Break","Break","",0.1,null);
		 EntFire("Music_Spirit","PlaySound","",0.00,null);
		 EntFire("Music_lucius","Volume","0",0.00,null);
		 EntFire("Room4_Boss_Particle2","Start","",0.00,null);
		 EntFire("Noctali_Boss_Model","Break","",0.00,null);
		 EntFire("Noctali_Boss_Nade_Sound","Kill","",0.00,null);
		 EntFire("Noctali_Boss_Nade_Explode","Kill","",0.00,null);
		 EntFire("Noctali_Boss_Nade","Kill","",0.00,null);
		 EntFire("Room4_Boss_Particle2","Stop","",2.00,null);
		 EntFire("Room4_Dest1","AddOutput","origin 14015 -7421 5644",10.00,null);
		 EntFire("Room4_Dest1","AddOutput","angles 0 270 0",10.00,null);
		 EntFire("Map_Shake2","FireUser1","",4.00,null);
		 EntFire("boss_health","Kill","",0.00,null);
		 soundloop=true;
	 }
	 else if(Bol==1)
	 {
	     EntFire("Room5_Phys_Particle1","Stop","",0.00,null);
		 EntFire("Room5_Phys_Particle2","Stop","",0.00,null);
		 EntFire("Room5_Phys_1","Break","",0.00,null);
		 EntFire("Room5_Phys_2","Break","",0.00,null);
	     EntFire("Server","Command","say *** HOLD 20 SECONDS ***",3.00,null);
	     EntFire("Room5_FireHurt","Kill","",23.00,null);
	     EntFire("Room5_FireParticle","Stop","",23.00,null);
		 EntFire("boss_health","Kill","",0.00,null);
	 }
	 else if(Bol==2)
	 {
	     if(hibrido==0)
		 {
		     EntFire("Room8_Boss_End_Relay1","Trigger","",0.00,null);
		     hibrido=1;BossHpBar=40;
			 EntFireByHandle(self, "RunScriptCode", " AddHealth(10) ", 0.00, null, null);
			 EntFireByHandle(self, "RunScriptCode", " BossItem=false; ", 0.00, null, null);
			 EntFire("Serphibrido_Move_Physbox","DisableMotion","",0.05,null);
			 EntFireByHandle(self, "RunScriptCode", " Start() ", 1.00, null, null);
		 }
		 else if(hibrido==1)
		 {
		     EntFire("Room8_Boss_End_Relay2","Trigger","",0.00,null);
			 EntFire("boss_health","Kill","",0.00,null);
		 }
	 }
	 else if(Bol==3)
	 {
	    EntFire("HPSprite","Kill","",1.50,null);
		EntFire("particle_end","Start","",1.00,null);
		EntFire("stoned_relay","FireUser4","",0.00,null);
		 EntFire("mboss_trigger","Disable","",0.00,null);
		 EntFire("mboss_snake_trigger","Kill","",1.00,null);
		 EntFire("mboss_snake_trigger","Disable","",0.00,null);
		 EntFire("mboss_shake2","StartShake","",10.00,null);
		 EntFire("mboss_shake2","StartShake","",1.00,null);
		 EntFire("mboss_shake","StartShake","",0.00,null);
		 EntFire("mboss_s5","Volume","0",0.00,null);
		EntFire("Medusa_thruster_*","FireUser1","",0.00,null);
		EntFire("Medusa_Move_Physbox","RunScriptCode","Stop();",1.00,null);
		 EntFire("mboss_s4","Volume","0",0.00,null);
		 EntFire("mboss_s3","PlaySound","",0.00,null);
		 EntFire("mboss_s2","Volume","0",0.00,null);
		 EntFire("mboss_s1","Volume","0",0.00,null);
		 EntFire("mboss_relay_scream_timer","Disable","",0.00,null);
		 EntFire("mboss_relay_hurted_timer","Disable","",0.00,null);
		 EntFire("mboss_relay_attack_timer","Disable","",0.00,null);
		 EntFire("mboss_physhurt_t","Deactivate","",1.50,null);
		 EntFire("mboss_physhurt_t","Activate","",1.00,null);
		 EntFire("mboss_physhurt","EnableMotion","",0.90,null);
		 EntFire("mboss_physhurt","ClearParent","",0.70,null);
		 EntFire("mboss_model","Skin","1",5.00,null);
		 EntFire("mboss_model","SetDefaultAnimation","m_dieidle",1.00,null);
		 EntFire("mboss_model","SetParent","mboss_physhurt",0.50,null);
		 EntFire("mboss_model","SetDefaultAnimation","m_dieidle",0.10,null);
		 EntFire("mboss_model","SetDefaultAnimation","m_dieidle",0.02,null);
		 EntFire("mboss_model","SetAnimation","m_die",0.00,null);
		 EntFire("mboss_look_trigger","Disable","",0.00,null);
		 EntFire("acid_spawn_timer","Disable","",0.00,null);
		 EntFire("mboss_hurt","Disable","",0.00,null);
		 EntFire("particle_end","Stop","",10.00,null);
		 EntFire("MedusaParticleDrool","Kill","",5.00,null);
		 EntFire("Music_heart","Volume","0",0.00,null);
		 EntFire("music_sw","PlaySound","",0.00,null);
		 EntFire("particle_fire_end","Start","",10.00,null);
		 EntFire("fallrock","RunScriptCode","SpawnRock();",8.00,null);
		 EntFire("fallrock","RunScriptCode","BossRock=false;",30.00,null);
		 EntFire("mboss_s3","PlaySound","",0.10,null);
		 EntFire("mboss_s3","PlaySound","",0.60,null);
		 EntFire("mboss_s3","PlaySound","",1.10,null);
		 EntFire("particle_fire_end","Stop","",30.00,null);
		 EntFire("Temp_RoomFinal","ForceSpawn","",0.00,null);
		 EntFire("RoomFinal_Linear","Open","",30.00,null);
		 EntFire("RoomFinal_ParticleTp1","Start","",30.00,null);
		 EntFire("Server","Command","say *** GET ON THE MIDDLE ***",43.00,null);
		 EntFire("RoomFinal_Tp1","Enable","",43.00,null);
		 EntFire("RoomFinal_Tp0","Enable","",50.00,null);
		 EntFire("Map_Main_Dest","AddOutput","origin 2946 -12286 -10059",50.00,null);
		 EntFire("Map_Main_Dest","AddOutput","angles 0 90 0",50.00,null);
		 EntFire("RoomFinal_Tp0","Disable","",55.00,null);
		 EntFire("RoomFinal_Tp1","Kill","",55.00,null);
		 EntFire("RoomFinal_ParticleTp1","Kill","",55.00,null);
		 EntFire("RoomFinal_Linear","Kill","",55.00,null);
		 EntFire("Main_Room_FallTp_Branch","SetValue","1",50.00,null);
		 EntFire("game_playerdie","Kill","",10.00,null);
		 EntFire("player","ClearParent","",11.00,null);
		 EntFire("mboss_counter_statue","Kill","",2.00,null);
		 EntFire("once_medusa_phys","FireUser1","",0.90,null);
		 EntFire("clip_phys1","Enable","",1.10,null);
		 EntFire("mboss_look_move*","Kill","",0.00,null);
		 EntFire("mboss_timer","Kill","",0.00,null);
		 EntFire("boss_health","Kill","",0.00,null);
	 }
}

function ScanHealth()
{
	EntFire("boss_health","SetText","Boss Health:"+BossHealth+"  Remain Hpbar:"+BossHpBar,0.00,null);
	EntFireByHandle(self,"RunScriptCode","ScanHealth()",0.01,null,null);
}

