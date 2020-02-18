STAGE <- 1;

function MapStart()
{
	if(STAGE == 1)
	{
	    EntFire("comandos","Command","say >>> Escape Way : Boat <<<",3.00,null);
		EntFire("way1","Break","",1.00,null);
		EntFire("ways","Kill","",0.01,null);
		EntFire("Level_Text","SetText","Stripper by Sj58320",0.01,null);
		EntFire("Level_Text","Display","",5.00,null);
	}
	else if(STAGE == 2)
	{
	    EntFire("comandos","Command","say >>> Escape Way : Elevator <<<",3.00,null);
		EntFire("way2","Break","",1.00,null);
		EntFire("ways","Kill","",0.01,null);
		EntFire("Level_Text","SetText","Stripper by Sj58320",0.01,null);
		EntFire("Level_Text","Display","",5.00,null);
	}
}
