#pragma semicolon 1
#include <sourcemod>
#include <sdktools>
#pragma newdecls required

char sg_file[160];
char sg_map[32];

public void OnPluginStart()
{
	BuildPath(Path_SM, sg_file, sizeof(sg_file) - 1, "logs/TestSkin.txt");
}

public void OnMapStart()
{
	GetCurrentMap(sg_map, sizeof(sg_map)-1);
}

public Action HxTimer2(Handle timer)
{
	if (!strcmp(sg_map, "c1m1_hotel", true))
	{
		ServerCommand("changelevel c1m2_streets");
	}
	if (!strcmp(sg_map, "c1m2_streets", true))
	{
		ServerCommand("changelevel c1m3_mall");
	}
	if (!strcmp(sg_map, "c1m3_mall", true))
	{
		ServerCommand("changelevel c1m4_atrium");
	}
	if (!strcmp(sg_map, "c1m4_atrium", true))
	{
		ServerCommand("changelevel c2m1_highway");
	}
	if (!strcmp(sg_map, "c2m1_highway", true))
	{
		ServerCommand("changelevel c2m2_fairgrounds");
	}
	if (!strcmp(sg_map, "c2m2_fairgrounds", true))
	{
		ServerCommand("changelevel c2m3_coaster");
	}
	if (!strcmp(sg_map, "c2m3_coaster", true))
	{
		ServerCommand("changelevel c2m4_barns");
	}
	if (!strcmp(sg_map, "c2m4_barns", true))
	{
		ServerCommand("changelevel c2m5_concert");
	}
	if (!strcmp(sg_map, "c2m5_concert", true))
	{
		ServerCommand("changelevel c3m1_plankcountry");
	}
	if (!strcmp(sg_map, "c3m1_plankcountry", true))
	{
		ServerCommand("changelevel c3m2_swamp");
	}
	if (!strcmp(sg_map, "c3m2_swamp", true))
	{
		ServerCommand("changelevel c3m3_shantytown");
	}
	if (!strcmp(sg_map, "c3m3_shantytown", true))
	{
		ServerCommand("changelevel c3m4_plantation");
	}
	if (!strcmp(sg_map, "c3m4_plantation", true))
	{
		ServerCommand("changelevel c4m1_milltown_a");
	}
	if (!strcmp(sg_map, "c4m1_milltown_a", true))
	{
		ServerCommand("changelevel c4m2_sugarmill_a");
	}
	if (!strcmp(sg_map, "c4m2_sugarmill_a", true))
	{
		ServerCommand("changelevel c4m3_sugarmill_b");
	}
	if (!strcmp(sg_map, "c4m3_sugarmill_b", true))
	{
		ServerCommand("changelevel c4m4_milltown_b");
	}
	if (!strcmp(sg_map, "c4m4_milltown_b", true))
	{
		ServerCommand("changelevel c4m5_milltown_escape");
	}
	if (!strcmp(sg_map, "c4m5_milltown_escape", true))
	{
		ServerCommand("changelevel c5m1_waterfront");
	}
	if (!strcmp(sg_map, "c5m1_waterfront", true))
	{
		ServerCommand("changelevel c5m2_park");
	}
	if (!strcmp(sg_map, "c5m2_park", true))
	{
		ServerCommand("changelevel c5m3_cemetery");
	}
	if (!strcmp(sg_map, "c5m3_cemetery", true))
	{
		ServerCommand("changelevel c5m4_quarter");
	}
	if (!strcmp(sg_map, "c5m4_quarter", true))
	{
		ServerCommand("changelevel c5m5_bridge");
	}
	if (!strcmp(sg_map, "c5m5_bridge", true))
	{
		ServerCommand("changelevel c6m1_riverbank");
	}
	if (!strcmp(sg_map, "c6m1_riverbank", true))
	{
		ServerCommand("changelevel c6m2_bedlam");
	}
	if (!strcmp(sg_map, "c6m2_bedlam", true))
	{
		ServerCommand("changelevel c6m3_port");
	}
	if (!strcmp(sg_map, "c6m3_port", true))
	{
		ServerCommand("changelevel c7m1_docks");
	}
	if (!strcmp(sg_map, "c7m1_docks", true))
	{
		ServerCommand("changelevel c7m2_barge");
	}
	if (!strcmp(sg_map, "c7m2_barge", true))
	{
		ServerCommand("changelevel c7m3_port");
	}
	if (!strcmp(sg_map, "c7m3_port", true))
	{
		ServerCommand("changelevel c8m1_apartment");
	}
	if (!strcmp(sg_map, "c8m1_apartment", true))
	{
		ServerCommand("changelevel c8m2_subway");
	}
	if (!strcmp(sg_map, "c8m2_subway", true))
	{
		ServerCommand("changelevel c8m3_sewers");
	}
	if (!strcmp(sg_map, "c8m3_sewers", true))
	{
		ServerCommand("changelevel c8m4_interior");
	}
	if (!strcmp(sg_map, "c8m4_interior", true))
	{
		ServerCommand("changelevel c8m5_rooftop");
	}
	if (!strcmp(sg_map, "c8m5_rooftop", true))
	{
		ServerCommand("changelevel c9m1_alleys");
	}
	if (!strcmp(sg_map, "c9m1_alleys", true))
	{
		ServerCommand("changelevel c9m2_lots");
	}
	if (!strcmp(sg_map, "c9m2_lots", true))
	{
		ServerCommand("changelevel c10m1_caves");
	}
	if (!strcmp(sg_map, "c10m1_caves", true))
	{
		ServerCommand("changelevel c10m2_drainage");
	}
	if (!strcmp(sg_map, "c10m2_drainage", true))
	{
		ServerCommand("changelevel c10m3_ranchhouse");
	}
	if (!strcmp(sg_map, "c10m3_ranchhouse", true))
	{
		ServerCommand("changelevel c10m4_mainstreet");
	}
	if (!strcmp(sg_map, "c10m4_mainstreet", true))
	{
		ServerCommand("changelevel c10m5_houseboat");
	}
	if (!strcmp(sg_map, "c10m5_houseboat", true))
	{
		ServerCommand("changelevel c11m1_greenhouse");
	}
	if (!strcmp(sg_map, "c11m1_greenhouse", true))
	{
		ServerCommand("changelevel c11m2_offices");
	}
	if (!strcmp(sg_map, "c11m2_offices", true))
	{
		ServerCommand("changelevel c11m3_garage");
	}
	if (!strcmp(sg_map, "c11m3_garage", true))
	{
		ServerCommand("changelevel c11m4_terminal");
	}
	if (!strcmp(sg_map, "c11m4_terminal", true))
	{
		ServerCommand("changelevel c11m5_runway");
	}
	if (!strcmp(sg_map, "c11m5_runway", true))
	{
		ServerCommand("changelevel c12m1_hilltop");
	}
	if (!strcmp(sg_map, "c12m1_hilltop", true))
	{
		ServerCommand("changelevel c12m2_traintunnel");
	}
	if (!strcmp(sg_map, "c12m2_traintunnel", true))
	{
		ServerCommand("changelevel c12m3_bridge");
	}
	if (!strcmp(sg_map, "c12m3_bridge", true))
	{
		ServerCommand("changelevel c12m4_barn");
	}
	if (!strcmp(sg_map, "c12m4_barn", true))
	{
		ServerCommand("changelevel c12m5_cornfield");
	}
	if (!strcmp(sg_map, "c12m5_cornfield", true))
	{
		ServerCommand("changelevel c13m1_alpinecreek");
	}
	if (!strcmp(sg_map, "c13m1_alpinecreek", true))
	{
		ServerCommand("changelevel c13m2_southpinestream");
	}
	if (!strcmp(sg_map, "c13m2_southpinestream", true))
	{
		ServerCommand("changelevel c13m3_memorialbridge");
	}
	if (!strcmp(sg_map, "c13m3_memorialbridge", true))
	{
		ServerCommand("changelevel c13m4_cutthroatcreek");
	}
	if (!strcmp(sg_map, "c13m4_cutthroatcreek", true))
	{
		
	}

	return Plugin_Stop;
}

public Action HxTimer1(Handle timer)
{
	File hFile = OpenFile(sg_file, "a");
	if (hFile)
	{
		WriteFileLine(hFile, "\n--------\n%s", sg_map);
		char sBuf[128];
		int client;
		int i = 1;
		while (i <= MaxClients)
		{
			if (IsClientInGame(i))
			{
				if (GetClientTeam(i) == 2)
				{
					GetClientModel(i, sBuf, sizeof(sBuf)-1);
					client = GetEntProp(i, Prop_Send, "m_survivorCharacter", 4);

					WriteFileLine(hFile, "%N (%s) m_survivorCharacter %d", i, sBuf, client);
				}
			}
			i += 1;
		}

		CloseHandle(hFile);
	}
	CreateTimer(1.0, HxTimer2, _, TIMER_FLAG_NO_MAPCHANGE);
	return Plugin_Stop;
}

public void OnClientPostAdminCheck(int client)
{
	if (!IsFakeClient(client))
	{
		CreateTimer(7.0, HxTimer1, _, TIMER_FLAG_NO_MAPCHANGE);
	}
}
