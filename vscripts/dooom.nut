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
