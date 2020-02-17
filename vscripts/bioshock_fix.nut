INSECT_LEVEL <- 1;
ELECTRO_LEVEL <- 1;
INCINERATE_LEVEL <- 1;
CYCLONE_LEVEL <- 1;
GRAVITY_LEVEL <- 1;
FROST_LEVEL <- 1;

INSECT <- 0;
ELECTRO <- 0;
INCINERATE <- 0;
CYCLONE <- 0;
GRAVITY <- 0;
FROST <- 0;
MAXINSECT <- 3;     //5
MAXELECTRO <- 4;    //6
MAXINCINERATE <- 5; //8
MAXCYCLONE <- 5;    //8
MAXGRAVITY <- 3;    //5
MAXFROST <- 3;      //5

TICKINSECT <- true;
TICKINCINERATE <- true;
TICKELECTRO <- true;
TICKCYCLONE <- true;
TICKGRAVITY <- true;
TICKFROST <- true;

INSECTACT <- null;
INSECTCALL <- null;
ELECTROACT <- null;
ELECTROCALL <- null;
INCINERATEACT <- null;
INCINERATECALL <- null;
CYCLONEACT <- null;
CYCLONECALL <- null;
GRAVITYACT <- null;
GRAVITYCALL <- null;
FROSTACT <- null;
FROSTCALL <- null;

CONST_BTN_TARGETNAME_PREFIX <- "upgrade_plasmid_button_";

TICK <- false;

DIS <- 120;

//////////////////////////////////////insect///////////////////////////////////////////////////

function PickupINSECT()
{
	INSECTACT=activator;
	INSECTCALL=caller;
	if(INSECT != MAXINSECT)
	{
		if(INSECT_LEVEL == 1)
		{
			EntFire("plasmid_insect_text","Settext","Plasmid: Insect Swarm\nEffect: Harm splicers with a swarm of bees\nUses: 5(Easy) / 3(Hard) \nCooldown: 10 Secs",0.00,null);
			EntFire("plasmid_insect_text","Display","",0.01,activator);
			EntFire("console","Command","say ***Plasmid obtained: Insect Swarm***",0.01,null);
			EntFire("sound_plasmid_pickup","PlaySound","",0.00,null);
			EntFireByHandle(self, "RunScriptCode", " ShowINSECT(); ", 10.00, null, null);
		}
		else if(INSECT_LEVEL == 2)
		{
			EntFire("plasmid_insect_text","Settext","Plasmid: Insect Swarm 2\nEffect: Harm splicers with a hive of bees\nUses: 5(Easy) / 3(Hard) \nCooldown: 10 Secs",0.00,null);
			EntFire("plasmid_insect_text","Display","",0.01,activator);
			EntFire("console","Command","say ***Plasmid obtained: Insect Swarm 2***",0.01,null);
			EntFire("sound_plasmid_pickup","PlaySound","",0.00,null);
			EntFireByHandle(self, "RunScriptCode", " ShowINSECT(); ", 10.00, activator, activator);
		}
		else if(INSECT_LEVEL == 3)
		{
			EntFire("plasmid_insect_text","Settext","Plasmid: Insect Swarm 3\nEffect: Swarm your enemies with a hive of bees\nUses: 5(Easy) / 3(Hard) \nCooldown: 10 Secs",0.00,null);
			EntFire("plasmid_insect_text","Display","",0.01,activator);
			EntFire("console","Command","say ***Plasmid obtained: Insect Swarm 3***",0.01,null);
			EntFire("sound_plasmid_pickup","PlaySound","",0.00,null);
			EntFireByHandle(self, "RunScriptCode", " ShowINSECT(); ", 10.00, activator, activator);
		}
	}
	else if(INSECT == MAXINSECT)
	{
		EntFire("plasmid_insect_text1","Settext","All INSECT Used",1.00,null);
		EntFire("plasmid_insect_text1","Display","",1.05,INSECTACT);
	}
}

function UseINSECT()
{
	if(INSECT_LEVEL == 1 && INSECT < MAXINSECT)
	{
		EntFire("plasmid_insect_level1_relay","Trigger","",0.00,null);
		EntFire("plasmid_indicator_insect","DestroyImmediately","",0.00,null);
		EntFire("plasmid_indicator_insect","Start","",10.00,null);
		INSECT++;
		Check();
	}
	if(INSECT_LEVEL == 2 && INSECT < MAXINSECT)
	{
		EntFire("plasmid_insect_level2_relay","Trigger","",0.00,null);
		EntFire("plasmid_indicator_insect","DestroyImmediately","",0.00,null);
		EntFire("plasmid_indicator_insect","Start","",10.00,null);
		INSECT++;
		Check();
	}
	if(INSECT_LEVEL == 3 && INSECT < MAXINSECT)
	{
		EntFire("plasmid_insect_level3_relay","Trigger","",0.00,null);
		EntFire("plasmid_indicator_insect","DestroyImmediately","",0.00,null);
		EntFire("plasmid_indicator_insect","Start","",10.00,null);
		INSECT++;
		Check();
	}
}

///////////////////////////////////electro//////////////////////////////////////////

function PickupELECTRO()
{
	ELECTROACT = activator;
	ELECTROCALL = caller;
	if(ELECTRO == MAXELECTRO)
	{
		EntFire("plasmid_electro_text1","Settext","All Electro Used",1.00,null);
		EntFire("plasmid_electro_text1","Display","",1.01,ELECTROACT);
	}
	else if(ELECTRO != MAXELECTRO)
	{
		if(ELECTRO_LEVEL == 1)
		{
			EntFire("plasmid_electro_text","Settext","Plasmid: Electro Bolt\nEffect: Stun splicers with a bolt of electricity!\nDuration: 4 Secs Uses: 8(Easy) / 4(Hard)\nCooldown: 11 Secs",0.00,null);
			EntFire("plasmid_electro_text","Display","",0.01,activator);
			EntFire("console","Command","say ***Plasmid obtained: Electro Bolt***",0.01,null);
			EntFire("sound_plasmid_pickup","PlaySound","",0.00,null);
			EntFireByHandle(self, "RunScriptCode", " ShowELECTRO(); ", 10.00, null, null);
		}
		else if(ELECTRO_LEVEL == 2)
		{
			EntFire("plasmid_electro_text","Settext","Plasmid: Electro Bolt 2\nEffect: Stun splicers with bolts of electricity!\nDuration: 4 Secs Uses: 8(Easy) / 4(Hard)\nCooldown: 11 Secs",0.00,null);
			EntFire("plasmid_electro_text","Display","",0.01,activator);
			EntFire("console","Command","say ***Plasmid obtained: Electro Bolt 2***",0.01,null);
			EntFire("sound_plasmid_pickup","PlaySound","",0.00,null);
			EntFireByHandle(self, "RunScriptCode", " ShowELECTRO(); ", 10.00, null, null);
		}
		else if(ELECTRO_LEVEL == 3)
		{
			EntFire("plasmid_electro_text","Settext","Plasmid: Electro Bolt 3\nEffect: Summon storm clouds to fry your enemies!\nDuration: 7 Secs Uses: 8(Easy) / 4(Hard)\nCooldown: 11 Secs",0.00,null);
			EntFire("plasmid_electro_text","Display","",0.01,activator);
			EntFire("console","Command","say ***Plasmid obtained: Electro Bolt 3***",0.01,null);
			EntFire("sound_plasmid_pickup","PlaySound","",0.00,null);
			EntFireByHandle(self, "RunScriptCode", " ShowELECTRO(); ", 10.00, null, null);
		}
	}
}

function UseELECTRO()
{
	if(ELECTRO_LEVEL == 1 && ELECTRO < MAXELECTRO)
	{
		EntFire("plasmid_electro_level1_relay","Trigger","",0.00,null);
		EntFire("plasmid_indicator_electro","DestroyImmediately","",0.00,null);
		EntFire("plasmid_indicator_electro","Start","",11.00,null);
		ELECTRO++;
		Check();
	}
	if(ELECTRO_LEVEL == 2 && ELECTRO < MAXELECTRO)
	{
		EntFire("plasmid_electro_level2_relay","Trigger","",0.00,null);
		EntFire("plasmid_indicator_electro","DestroyImmediately","",0.00,null);
		EntFire("plasmid_indicator_electro","Start","",11.00,null);
		ELECTRO++;
		Check();
	}
	if(ELECTRO_LEVEL == 3 && ELECTRO < MAXELECTRO)
	{
		EntFire("plasmid_electro_level3_relay","Trigger","",0.00,null);
		EntFire("plasmid_indicator_electro","DestroyImmediately","",0.00,null);
		EntFire("plasmid_indicator_electro","Start","",11.00,null);
		ELECTRO++;
		Check();
	}
}

/////////////////////////////////////INCINERATE///////////////////////////////////////////

function PickupINCINERATE()
{
	INCINERATEACT = activator;
	INCINERATECALL = caller;
	if(INCINERATE == MAXINCINERATE)
	{
		EntFire("plasmid_incinerate_text1","Settext","All Fire Used",1.00,null);
		EntFire("plasmid_incinerate_text1","Display","",1.01,INCINERATEACT);
	}
	if(INCINERATE != MAXINCINERATE)
	{
		if(INCINERATE_LEVEL == 1)
		{
			EntFire("plasmid_incinerate_text","Settext","Plasmid: Incinerate\nEffect: Ignite splicers with a fireball! \nDuration: 7 SecsUses: 8(Easy) / 5(Hard)\nCooldown: 5 Secs",0.00,null);
			EntFire("plasmid_incinerate_text","Display","",0.01,activator);
			EntFire("console","Command","say ***Plasmid obtained: Incinerate***",0.01,null);
			EntFire("sound_plasmid_pickup","PlaySound","",0.00,null);
			EntFireByHandle(self, "RunScriptCode", " ShowINCINERATE(); ", 10.00, null, null);
		}
		else if(INCINERATE_LEVEL == 2)
		{
			EntFire("plasmid_incinerate_text","Settext","Plasmid: Incinerate 2\nEffect: Ignite splicers with a fireball! \nDuration: 7 SecsUses: 8(Easy) / 5(Hard)\nCooldown: 5 Secs",0.00,null);
			EntFire("plasmid_incinerate_text","Display","",0.01,activator);
			EntFire("console","Command","say ***Plasmid obtained: Incinerate 2***",0.01,null);
			EntFire("sound_plasmid_pickup","PlaySound","",0.00,null);
			EntFireByHandle(self, "RunScriptCode", " ShowINCINERATE(); ", 10.00, null, null);
		}
		else if(INCINERATE_LEVEL == 3)
		{
			EntFire("plasmid_incinerate_text","Settext","Plasmid: Incinerate 3\nEffect: Create a wall of flames! \nDuration: 7 SecsUses: 8(Easy) / 5(Hard)\nCooldown: 5 Secs",0.00,null);
			EntFire("plasmid_incinerate_text","Display","",0.01,activator);
			EntFire("console","Command","say ***Plasmid obtained: Incinerate 3***",0.01,null);
			EntFire("sound_plasmid_pickup","PlaySound","",0.00,null);
			EntFireByHandle(self, "RunScriptCode", " ShowINCINERATE(); ", 10.00, null, null);
		}
	}
}

function UseINCINERATE()
{
	if(INCINERATE_LEVEL == 1 && INCINERATE < MAXINCINERATE)
	{
		EntFire("plasmid_incinerate_level1_relay","Trigger","",0.00,null);
		EntFire("plasmid_sound_incinerate","PlaySound","",0.00,null);
		EntFire("plasmid_indicator_incinerate","DestroyImmediately","",0.00,null);
		EntFire("plasmid_indicator_incinerate","Start","",5.00,null);
		INCINERATE++;
		Check();
	}
	if(INCINERATE_LEVEL == 2 && INCINERATE < MAXINCINERATE)
	{
		EntFire("plasmid_incinerate_level2_relay","Trigger","",0.00,null);
		EntFire("plasmid_sound_incinerate","PlaySound","",0.00,null);
		EntFire("plasmid_indicator_incinerate","DestroyImmediately","",0.00,null);
		EntFire("plasmid_indicator_incinerate","Start","",5.00,null);
		INCINERATE++;
		Check();
	}
	if(INCINERATE_LEVEL == 3 && INCINERATE < MAXINCINERATE)
	{
		EntFire("plasmid_incinerate_level3_relay","Trigger","",0.00,null);
		EntFire("plasmid_sound_incinerate","PlaySound","",0.00,null);
		EntFire("plasmid_indicator_incinerate","DestroyImmediately","",0.00,null);
		EntFire("plasmid_indicator_incinerate","Start","",5.00,null);
		INCINERATE++;
		Check();
	}
}


////////////////////////////////////////////cyclone///////////////////////////////////////////

function PickupCYCLONE()
{
	CYCLONEACT = activator;
	CYCLONECALL = caller;
	if(CYCLONE == MAXCYCLONE)
	{
		EntFire("plasmid_cyclone_text1","Settext","All Push Used",1.00,null);
		EntFire("plasmid_cyclone_text1","Display","",1.01,CYCLONEACT);
	}
	if(CYCLONE != MAXCYCLONE)
	{	
		if(CYCLONE_LEVEL == 1)
		{
			EntFire("plasmid_cyclone_text","Settext","Plasmid: Sonic Boom\nEffect: Blast splicers away with an airwave!\nDuration: 2 SecsUses: 8(Easy) / 5(Hard)\nCooldown: 10 Secs",0.00,null);
			EntFire("plasmid_cyclone_text","Display","",0.01,activator);
			EntFire("console","Command","say ***Plasmid obtained: Sonic Boom***",0.01,null);
			EntFire("sound_plasmid_pickup","PlaySound","",0.00,null);
			EntFireByHandle(self, "RunScriptCode", " ShowCYCLONE(); ", 10.00, null, null);
		}
		else if(CYCLONE_LEVEL == 2)
		{
			EntFire("plasmid_cyclone_text","Settext","Plasmid: Sonic Boom 2\nEffect: Blast splicers away with a surge of air!\nDuration: 2 SecsUses: 8(Easy) / 5(Hard)\nCooldown: 10 Secs",0.00,null);
			EntFire("plasmid_cyclone_text","Display","",0.01,activator);
			EntFire("console","Command","say ***Plasmid obtained: Sonic Boom 2***",0.01,null);
			EntFire("sound_plasmid_pickup","PlaySound","",0.00,null);
			EntFireByHandle(self, "RunScriptCode", " ShowCYCLONE(); ", 10.00, null, null);
		}
		else if(CYCLONE_LEVEL == 3)
		{
			EntFire("plasmid_cyclone_text","Settext","Plasmid: Sonic Boom 3\nEffect: Blast splicers away with a tornado!\nDuration: 2 SecsUses: 8(Easy) / 5(Hard)\nCooldown: 10 Secs",0.00,null);
			EntFire("plasmid_cyclone_text","Display","",0.01,activator);
			EntFire("console","Command","say ***Plasmid obtained: Sonic Boom 3***",0.01,null);
			EntFire("sound_plasmid_pickup","PlaySound","",0.00,null);
			EntFireByHandle(self, "RunScriptCode", " ShowCYCLONE(); ", 10.00, null, null);
		}
	}	
}

function UseCYCLONE()
{
	if(CYCLONE_LEVEL == 1 && CYCLONE < MAXCYCLONE)
	{
		EntFire("plasmid_cyclone_level1_relay","Trigger","",0.00,null);
		EntFire("plasmid_sound_cyclone","PlaySound","",0.00,null);
		EntFire("plasmid_indicator_cyclone","DestroyImmediately","",0.00,null);
		EntFire("plasmid_indicator_cyclone","Start","",10.00,null);
		CYCLONE++;
		Check();
	}
	else if(CYCLONE_LEVEL == 2 && CYCLONE < MAXCYCLONE)
	{
		EntFire("plasmid_cyclone_level2_relay","Trigger","",0.00,null);
		EntFire("plasmid_sound_cyclone","PlaySound","",0.00,null);
		EntFire("plasmid_indicator_cyclone","DestroyImmediately","",0.00,null);
		EntFire("plasmid_indicator_cyclone","Start","",10.00,null);
		CYCLONE++;
		Check();
	}
	else if(CYCLONE_LEVEL == 3 && CYCLONE < MAXCYCLONE)
	{
		EntFire("plasmid_cyclone_level3_relay","Trigger","",0.00,null);
		EntFire("plasmid_sound_cyclone","PlaySound","",0.00,null);
		EntFire("plasmid_indicator_cyclone","DestroyImmediately","",0.00,null);
		EntFire("plasmid_indicator_cyclone","Start","",10.00,null);
		CYCLONE++;
		Check();
	}
}

///////////////////////////////////////////////////gravity/////////////////////////////////////////////////////////////////
function PickupGRAVITY()
{
	GRAVITYACT = activator;
	GRAVITYCALL = caller;
	if(GRAVITY == MAXGRAVITY)
	{
		EntFire("plasmid_gravity_text1","Settext","All Gravity Used",1.00,null);
		EntFire("plasmid_gravity_text1","Display","",1.01,GRAVITYACT);
	}
	if(GRAVITY != MAXGRAVITY)
	{	
		if(GRAVITY_LEVEL == 1)
		{
			EntFire("plasmid_gravity_text","Settext","Plasmid: Gravity Well\nEffect: Drag your enemies into a pit! \nDuration: 5 Secs Uses: 5(Easy) / 3(Hard)\nCooldown: 18 Secs",0.00,null);
			EntFire("plasmid_gravity_text","Display","",0.01,activator);
			EntFire("console","Command","say ***Plasmid obtained: Gravity Well***",0.01,null);
			EntFire("sound_plasmid_pickup","PlaySound","",0.00,null);
			EntFireByHandle(self, "RunScriptCode", " ShowGRAVITY(); ", 10.00, null, null);
		}
		else if(GRAVITY_LEVEL == 2)
		{
			EntFire("plasmid_gravity_text","Settext","Plasmid: Gravity Well 2\nEffect: Drag your enemies into oblivion! \nDuration: 6 Secs Uses: 5(Easy) / 3(Hard)\nCooldown: 18 Secs",0.00,null);
			EntFire("plasmid_gravity_text","Display","",0.01,activator);
			EntFire("console","Command","say ***Plasmid obtained: Gravity Well 2***",0.01,null);
			EntFire("sound_plasmid_pickup","PlaySound","",0.00,null);
			EntFireByHandle(self, "RunScriptCode", " ShowGRAVITY(); ", 10.00, null, null);
		}
		else if(GRAVITY_LEVEL == 3)
		{
			EntFire("plasmid_gravity_text","Settext","Plasmid: Gravity Well 3\nEffect: Drag your enemies into black holes!\nDuration: 7 Secs Uses: 5(Easy) / 3(Hard)\nCooldown: 18 Secs",0.00,null);
			EntFire("plasmid_gravity_text","Display","",0.01,activator);
			EntFire("console","Command","say ***Plasmid obtained: Gravity Well 3***",0.01,null);
			EntFire("sound_plasmid_pickup","PlaySound","",0.00,null);
			EntFireByHandle(self, "RunScriptCode", " ShowGRAVITY(); ", 10.00, null, null);
		}
	}
}

function UseGRAVITY()
{
	if(GRAVITY_LEVEL == 1 && GRAVITY < MAXGRAVITY)
	{
		EntFire("plasmid_gravity_level1_relay","Trigger","",0.00,null);
		EntFire("plasmid_sound_gravity","PlaySound","",0.00,null);
		EntFire("plasmid_indicator_gravity","DestroyImmediately","",0.00,null);
		EntFire("plasmid_indicator_gravity","Start","",18.00,null);
		GRAVITY++;
		Check();
	}
	else if(GRAVITY_LEVEL == 2 && GRAVITY < MAXGRAVITY)
	{
		EntFire("plasmid_gravity_level2_relay","Trigger","",0.00,null);
		EntFire("plasmid_sound_gravity","PlaySound","",0.00,null);
		EntFire("plasmid_indicator_gravity","DestroyImmediately","",0.00,null);
		EntFire("plasmid_indicator_gravity","Start","",18.00,null);
		GRAVITY++;
		Check();
	}
	else if(GRAVITY_LEVEL == 3 && GRAVITY < MAXGRAVITY)
	{
		EntFire("plasmid_gravity_level3_relay","Trigger","",0.00,null);
		EntFire("plasmid_sound_gravity","PlaySound","",0.00,null);
		EntFire("plasmid_indicator_gravity","DestroyImmediately","",0.00,null);
		EntFire("plasmid_indicator_gravity","Start","",18.00,null);
		GRAVITY++;
		Check();
	}
}

//////////////////////////////////////////////frost/////////////////////////////////////////////////

function PickupFROST()
{
	FROSTACT = activator;
	FROSTCALL = caller;
	if(FROST == MAXFROST)
	{
		EntFire("plasmid_frost_text1","Settext","All Frost Used",1.00,null);
		EntFire("plasmid_frost_text1","Display","",1.01,FROSTACT);
	}
	if(FROST != MAXFROST)
	{	
		if(FROST_LEVEL == 1)
		{
			EntFire("plasmid_frost_text","Settext","Plasmid: Winter Blast\nEffect: Freeze your enemies! \nDuration: 3 Secs Uses: 5(Hard) / 3(Easy)\nCooldown: 13 Secs",0.00,null);
			EntFire("plasmid_frost_text","Display","",0.01,activator);
			EntFire("console","Command","say ***Plasmid obtained: Winter Blast***",0.01,null);
			EntFire("sound_plasmid_pickup","PlaySound","",0.00,null);
			EntFireByHandle(self, "RunScriptCode", " ShowFROST(); ", 10.00, null, null);
		}
		else if(FROST_LEVEL == 2)
		{
			EntFire("plasmid_frost_text","Settext","Plasmid: Winter Blast 2\nEffect: Freeze your enemies solid! \nDuration: 3 Secs Uses: 5(Hard) / 3(Easy)\nCooldown: 13 Secs",0.00,null);
			EntFire("plasmid_frost_text","Display","",0.01,activator);
			EntFire("console","Command","say ***Plasmid obtained: Winter Blast 2***",0.01,null);
			EntFire("sound_plasmid_pickup","PlaySound","",0.00,null);
			EntFireByHandle(self, "RunScriptCode", " ShowFROST(); ", 10.00, null, null);
		}
		else if(FROST_LEVEL == 3)
		{
			EntFire("plasmid_frost_text","Settext","Plasmid: Winter Blast 3\nEffect: Freeze your enemies! \nShatter them! Duration: 3 Secs Uses: 5(Hard) / 3(Easy)\nCooldown: 13 Secs",0.00,null);
			EntFire("plasmid_frost_text","Display","",0.01,activator);
			EntFire("console","Command","say ***Plasmid obtained: Winter Blast 3***",0.01,null);
			EntFire("sound_plasmid_pickup","PlaySound","",0.00,null);
			EntFireByHandle(self, "RunScriptCode", " ShowFROST(); ", 10.00, null, null);
		}
	}
}

function UseFROST()
{
	if(FROST_LEVEL == 1 && FROST < MAXFROST)
	{
		EntFire("plasmid_frost_level1_relay","Trigger","",0.00,null);
		EntFire("plasmid_sound_frost","PlaySound","",0.00,null);
		EntFire("plasmid_indicator_frost","DestroyImmediately","",0.00,null);
		EntFire("plasmid_indicator_frost","Start","",13.00,null);
		FROST++;
		Check();
	}
	else if(FROST_LEVEL == 2 && FROST < MAXFROST)
	{
		EntFire("plasmid_frost_level2_relay","Trigger","",0.00,null);
		EntFire("plasmid_sound_frost","PlaySound","",0.00,null);
		EntFire("plasmid_indicator_frost","DestroyImmediately","",0.00,null);
		EntFire("plasmid_indicator_frost","Start","",13.00,null);
		FROST++;
		Check();
	}
	else if(FROST_LEVEL == 3 && FROST < MAXFROST)
	{
		EntFire("plasmid_frost_level3_relay","Trigger","",0.00,null);
		EntFire("plasmid_sound_frost","PlaySound","",0.00,null);
		EntFire("plasmid_indicator_frost","DestroyImmediately","",0.00,null);
		EntFire("plasmid_indicator_frost","Start","",13.00,null);
		FROST++;
		Check();
	}
}


function Check()
{
	if(FROST == MAXFROST)
	{
		EntFire("plasmid_indicator_frost","Kill","",0.00,null);
		EntFire("plasmid_button_frost","Kill","",0.00,null);
		EntFire("plasmid_frost_text1","Settext","All Winter Used",2.00,null);
		//EntFire("plasmid_frost_text1","AddOutput","holdtime 3",2.00,null);
		EntFire("plasmid_frost_text1","Display","",2.01,FROSTACT);
		EntFire("plasmid_frost_text1","Kill","",5.05,null);
		TICKFROST = false;	
	}
	if(GRAVITY == MAXGRAVITY)
	{
		EntFire("plasmid_indicator_gravity","Kill","",0.00,null);
		EntFire("plasmid_button_gravity","Kill","",0.00,null);
		EntFire("plasmid_gravity_text1","Settext","All Gravity Used",2.00,null);
		//EntFire("plasmid_gravity_text1","AddOutput","holdtime 3",2.00,null);
		EntFire("plasmid_gravity_text1","Display","",2.01,GRAVITYACT);
		EntFire("plasmid_gravity_text1","Kill","",5.05,null);
		TICKGRAVITY = false;		
	}
	if(INSECT == MAXINSECT)
	{
		EntFire("plasmid_indicator_insect","Kill","",0.00,null);
		EntFire("plasmid_button_insect","Kill","",0.00,null);
		EntFire("plasmid_insect_text1","Settext","All Insect Used",2.00,null);
		//EntFire("plasmid_insect_text1","AddOutput","holdtime 3",2.00,null);
		EntFire("plasmid_insect_text1","Display","",2.01,INSECTACT);
		EntFire("plasmid_insect_text1","Kill","",5.05,null);
		TICKINSECT = false;
	}
	if(INCINERATE == MAXINCINERATE)
	{
		EntFire("plasmid_indicator_incinerate","Kill","",0.00,null);
		EntFire("plasmid_button_incinerate","Kill","",0.00,null);
		EntFire("plasmid_incinerate_text1","Settext","All Fire Used",2.00,null);
		//EntFire("plasmid_incinerate_text1","AddOutput","holdtime 3",2.00,null);
		EntFire("plasmid_incinerate_text1","Display","",2.01,INCINERATEACT);
		EntFire("plasmid_incinerate_text1","Kill","",5.05,null);
		TICKINCINERATE = false;		
	}	
	if(CYCLONE == MAXCYCLONE)
	{
		EntFire("plasmid_indicator_cyclone","Kill","",0.00,null);
		EntFire("plasmid_button_cyclone","Kill","",0.00,null);
		EntFire("plasmid_cyclone_text1","Settext","All Push Used",2.00,null);
		//EntFire("plasmid_cyclone_text1","AddOutput","holdtime 3",2.00,null);
		EntFire("plasmid_cyclone_text1","Display","",2.01,CYCLONEACT);
		EntFire("plasmid_cyclone_text1","Kill","",5.05,null);
		TICKCYCLONE = false;	
	}
	if(ELECTRO== MAXELECTRO)
	{
		EntFire("plasmid_indicator_electro","Kill","",0.00,null);
		EntFire("plasmid_button_electro","Kill","",0.00,null);
		EntFire("plasmid_electro_text1","Settext","All Electro Used",2.00,null);
		//EntFire("plasmid_electro_text1","AddOutput","holdtime 3",2.00,null);
		EntFire("plasmid_electro_text1","Display","",2.01,ELECTROACT);
		EntFire("plasmid_electro_text1","Kill","",5.05,null);
		TICKELECTRO = false;		
	}
}



function Upgrade(index)
{
	TICK = true;
	button <- null;
	button <- Entities.FindByName(button, CONST_BTN_TARGETNAME_PREFIX + index.tostring());
	pistol <- null;
	while(null != (pistol = Entities.FindInSphere(pistol, button.GetOrigin(), DIS)) && TICK)
	{
		if(pistol.GetClassname() == "func_button" && pistol.GetName() == "plasmid_button_insect" && INSECT_LEVEL != 3)
		{
			if(INSECT_LEVEL == 1)
			{	
				EntFire("console","Command","say ***Plasmid upgraded: Insect Swarm 2***",0.01,null);
				INSECT_LEVEL++;
				EntFireByHandle(button, "fireuser1", "", 0.00, null, null);
				TICK=false;
			}
			else if(INSECT_LEVEL == 2)
			{
				EntFire("console","Command","say ***Plasmid upgraded: Insect Swarm 3***",0.01,null);
				EntFireByHandle(button, "fireuser1", "", 0.00, null, null);
				INSECT_LEVEL++;
				TICK=false;
			}
		}
		if(pistol.GetClassname() == "func_button" && pistol.GetName() == "plasmid_button_electro" && ELECTRO_LEVEL != 3)
		{
			if(ELECTRO_LEVEL == 1)
			{
				EntFire("console","Command","say ***Plasmid upgraded: Electro Bolt 2***",0.01,null);
				EntFireByHandle(button, "fireuser1", "", 0.00, null, null);
				ELECTRO_LEVEL++;
				TICK=false;
			}
			else if(ELECTRO_LEVEL == 2)
			{
				EntFire("console","Command","say ***Plasmid upgraded: Electro Bolt 3***",0.01,null);
				EntFireByHandle(button, "fireuser1", "", 0.00, null, null);
				ELECTRO_LEVEL++;
				TICK=false;
			}
		}
		if(pistol.GetClassname() == "func_button" && pistol.GetName() == "plasmid_button_incinerate" && INCINERATE_LEVEL != 3)
		{
			if(INCINERATE_LEVEL == 1)
			{
				EntFire("console","Command","say ***Plasmid upgraded: Incinerate 2***",0.01,null);
				EntFireByHandle(button, "fireuser1", "", 0.00, null, null);
				INCINERATE_LEVEL++;
				TICK=false;
			}
			else if(INCINERATE_LEVEL == 2)
			{
				EntFire("console","Command","say ***Plasmid upgraded: Incinerate 3***",0.01,null);
				EntFireByHandle(button, "fireuser1", "", 0.00, null, null);
				INCINERATE_LEVEL++;
				TICK=false;
			}
		}	
		if(pistol.GetClassname() == "func_button" && pistol.GetName() == "plasmid_button_cyclone" && CYCLONE_LEVEL != 3)
		{
			if(CYCLONE_LEVEL == 1)
			{
				EntFire("console","Command","say ***Plasmid upgraded: Sonic Boom 2***",0.01,null);
				EntFireByHandle(button, "fireuser1", "", 0.00, null, null);
				CYCLONE_LEVEL++;
				TICK=false;
			}
			else if(CYCLONE_LEVEL == 2)
			{
				EntFire("console","Command","say ***Plasmid upgraded: Sonic Boom 3***",0.01,null);
				EntFireByHandle(button, "fireuser1", "", 0.00, null, null);
				CYCLONE_LEVEL++;
				TICK=false;
			}
		}
		if(pistol.GetClassname() == "func_button" && pistol.GetName() == "plasmid_button_gravity" && GRAVITY_LEVEL != 3)
		{	
			if(GRAVITY_LEVEL == 1)
			{
				EntFire("console","Command","say ***Plasmid upgraded: Gravity Well 2***",0.01,null);
				EntFireByHandle(button, "fireuser1", "", 0.00, null, null);
				GRAVITY_LEVEL++;
				TICK=false;
			}
			else if(GRAVITY_LEVEL == 2)
			{
				EntFire("console","Command","say ***Plasmid upgraded: Gravity Well 3***",0.01,null);
				EntFireByHandle(button, "fireuser1", "", 0.00, null, null);
				GRAVITY_LEVEL++;
				TICK=false;
			}
		}
		if(pistol.GetClassname() == "func_button" && pistol.GetName() == "plasmid_button_frost" && FROST_LEVEL!= 3)
		{	
			if(FROST_LEVEL == 1)
			{
				EntFire("console","Command","say ***Plasmid upgraded: Winter Blast 2***",0.01,null);
				EntFireByHandle(button, "fireuser1", "", 0.00, null, null);
				FROST_LEVEL++;
				TICK=false;
			}
			else if(FROST_LEVEL == 2)
			{
				EntFire("console","Command","say ***Plasmid upgraded: Winter Blast 3***",0.01,null);
				EntFireByHandle(button, "fireuser1", "", 0.00, null, null);
				FROST_LEVEL++;
				TICK=false;
			}
		}	
	}
}

function ShowINSECT()
{
	if(TICKINSECT && INSECTCALL.GetMoveParent() == INSECTACT)
	{
		EntFire("plasmid_insect_text1","Settext","INSECT("+INSECT+"/"+MAXINSECT+")\nLEVEL : " +INSECT_LEVEL+" ",0.00,null);
		EntFire("plasmid_insect_text1","Display","",0.01,INSECTACT);
		EntFireByHandle(self, "RunScriptCode", " ShowINSECT(); ", 0.10, null, null);
	}
}

function ShowELECTRO()
{
	if(TICKELECTRO && ELECTROCALL.GetMoveParent() == ELECTROACT)
	{
		EntFire("plasmid_electro_text1","Settext","Electro("+ELECTRO+"/"+MAXELECTRO+")\nLEVEL : " +ELECTRO_LEVEL+" ",0.00,null);
		EntFire("plasmid_electro_text1","Display","",0.01,ELECTROACT);
		EntFireByHandle(self, "RunScriptCode", " ShowELECTRO(); ", 0.10, null, null);
	}
}

function ShowINCINERATE()
{
	if(TICKINCINERATE && INCINERATECALL.GetMoveParent() == INCINERATEACT)
	{
		EntFire("plasmid_incinerate_text1","Settext","Fire("+INCINERATE+"/"+MAXINCINERATE+")\nLEVEL : " +INCINERATE_LEVEL+" ",0.00,null);
		EntFire("plasmid_incinerate_text1","Display","",0.01,INCINERATEACT);
		EntFireByHandle(self, "RunScriptCode", " ShowINCINERATE(); ", 0.10, null, null);
	}
}

function ShowCYCLONE()
{
	if(TICKCYCLONE && CYCLONECALL.GetMoveParent() == CYCLONEACT)
	{
		EntFire("plasmid_cyclone_text1","Settext","Push("+CYCLONE+"/"+MAXCYCLONE+")\nLEVEL : " +CYCLONE_LEVEL+" ",0.00,null);
		EntFire("plasmid_cyclone_text1","Display","",0.01,CYCLONEACT);
		EntFireByHandle(self, "RunScriptCode", " ShowCYCLONE(); ", 0.10, null, null);
	}
}

function ShowGRAVITY()
{
	if(TICKGRAVITY && GRAVITYCALL.GetMoveParent() == GRAVITYACT)
	{
		EntFire("plasmid_gravity_text1","Settext","Gravity("+GRAVITY+"/"+MAXGRAVITY+")\nLEVEL : "+GRAVITY_LEVEL+" ",0.00,null);
		EntFire("plasmid_gravity_text1","Display","",0.01,GRAVITYACT);
		EntFireByHandle(self, "RunScriptCode", " ShowGRAVITY(); ", 0.10, null, null);
	}
}

function ShowFROST()
{
	if(TICKFROST && FROSTCALL.GetMoveParent() == FROSTACT)
	{
		EntFire("plasmid_frost_text1","Settext","Frost("+FROST+"/"+MAXFROST+")\nLEVEL : "+FROST_LEVEL+" ",0.00,null);
		EntFire("plasmid_frost_text1","Display","",0.01,FROSTACT);
		EntFireByHandle(self, "RunScriptCode", " ShowFROST(); ", 0.10, null, null);
	}
}
