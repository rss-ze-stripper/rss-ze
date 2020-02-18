STAGE <- 1;

function Checklevel()
{
	if(STAGE == 1)
	{
	    EntFire("door13","AddOutput","OnFullyOpen doorend1:Open::3:-1",0.00,null);
		EntFire("lvl1end","AddOutput","solid 2",0.50,null);
		EntFire("lvl1end","AddOutput","mins -280 -221 -89",1.00,null);
		EntFire("lvl1end","AddOutput","maxs 280 221 89",1.00,null);
		EntFire("alternativesend","kill","",0.01,null);
		EntFire("route","SetText","Escape Route : Bunker",0.01,null);
		EntFire("route","Display","",5.00,null);
		EntFire("Level_Text","SetText","Stripper by Sj58320",0.01,null);
		EntFire("Level_Text","Display","",5.00,null);
	}
	else if(STAGE == 2)
	{
	    EntFire("door13","AddOutput","OnFullyOpen doorend2:Open::3:-1",0.00,null);
		EntFire("lvl2end","AddOutput","solid 2",0.50,null);
		EntFire("lvl2end","AddOutput","mins -500 -500 -500",1.00,null);
		EntFire("lvl1end","AddOutput","maxs 280 221 89",1.00,null);
		EntFire("alternativesend","kill","",0.01,null);
		EntFire("route","SetText","Escape Route : Ship",0.01,null);
		EntFire("route","Display","",5.00,null);
		EntFire("Level_Text","SetText","Stripper by Sj58320",0.01,null);
		EntFire("Level_Text","Display","",5.00,null);
	}
}
