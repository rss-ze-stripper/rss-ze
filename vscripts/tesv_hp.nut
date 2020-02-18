function NightHP()
{
	EntFire("night_t", "SetText", "Class HP: "+self.GetHealth().tostring(), 0.00, null);
	EntFire("night_t", "Display", "", 0.02, null);
	EntFireByHandle(self, "RunScriptCode", " NightHP(); ", 0.10, null, null);
}

function HealHP()
{
	EntFire("mg_t", "SetText", "Class HP: "+self.GetHealth().tostring(), 0.00, null);
	EntFire("mg_t", "Display", "", 0.02, null);
	EntFireByHandle(self, "RunScriptCode", " HealHP(); ", 0.10, null, null);
}

function ArchHP()
{
	EntFire("arch_t", "SetText", "Class HP: "+self.GetHealth().tostring(), 0.00, null);
	EntFire("arch_t", "Display", "", 0.02, null);
	EntFireByHandle(self, "RunScriptCode", " ArchHP(); ", 0.10, null, null);
}

function DovahHP()
{
	EntFire("doh_t", "SetText", "Class HP: "+self.GetHealth().tostring(), 0.00, null);
	EntFire("doh_t", "Display", "", 0.02, null);
	EntFireByHandle(self, "RunScriptCode", " DovahHP(); ", 0.10, null, null);
}

function DeadricHP()
{
	EntFire("dr_t", "SetText", "Class HP: "+self.GetHealth().tostring(), 0.00, null);
	EntFire("dr_t", "Display", "", 0.02, null);
	EntFireByHandle(self, "RunScriptCode", " DeadricHP(); ", 0.10, null, null);
}
