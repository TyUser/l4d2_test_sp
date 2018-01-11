#pragma semicolon 1
#include <sourcemod>
#include <sdktools>
#pragma newdecls required

char sg_file[160];
char sg_file1[160];
char sg_file2[160];
char sg_l4d2Map[160];
int ig_ggg1;

public void OnPluginStart()
{
	ig_ggg1 = 0;
	RegConsoleCmd("sm_ent", CMD_fi, "");
	RegConsoleCmd("sm_bw", CMD_bw, "");
	RegConsoleCmd("sm_b1", CMD_b1, "");
	RegConsoleCmd("sm_b2", CMD_b2, "");
	RegConsoleCmd("sm_b3", CMD_b3, "");
	RegConsoleCmd("sm_b4", CMD_b4, "");
	RegConsoleCmd("sm_b5", CMD_b5, "");
	RegConsoleCmd("sm_b6", CMD_b6, "");
	RegConsoleCmd("sm_b7", CMD_b7, "");
	RegConsoleCmd("sm_test123", CMD_test123, "");
	RegConsoleCmd("sm_handles", CMD_handles, "");
}

public Action CMD_bw(int client, int args)
{
	if (client)
	{
		SetEntProp(client, Prop_Send, "m_bIsOnThirdStrike", 1);
		PrintToChat(client, "ok");
	}
	return Plugin_Handled;
}

public void TyFakeCHEAT(int &client, char[] sCmd, char[] sArg)
{
	int iFlags = GetCommandFlags(sCmd);
	SetCommandFlags(sCmd, iFlags & ~FCVAR_CHEAT);
	FakeClientCommand(client, "%s %s", sCmd, sArg);
	SetCommandFlags(sCmd, iFlags);
}

public Action CMD_b1(int client, int args)
{
	if (client)
	{
		TyFakeCHEAT(client, "give", "health");
		PrintToChat(client, "ok");
	}
	return Plugin_Handled;
}

public Action CMD_b2(int client, int args)
{
	if (client)
	{
		SetEntProp(client, Prop_Send, "m_currentReviveCount", 0);
		PrintToChat(client, "ok");
	}
	return Plugin_Handled;
}

public Action CMD_b3(int client, int args)
{
	if (client)
	{
		SetEntProp(client, Prop_Send, "m_isGoingToDie", 0);
		PrintToChat(client, "ok");
	}
	return Plugin_Handled;
}

public Action CMD_b4(int client, int args)
{
	if (client)
	{
		SetEntProp(client, Prop_Send, "m_iHealth", 71);
		PrintToChat(client, "ok");
	}
	return Plugin_Handled;
}

public void TyTempHealth(int client, int iHp)
{
	SetEntPropFloat(client, Prop_Send, "m_healthBufferTime", GetGameTime());
	float fTempHP = iHp * 1.0;
	SetEntPropFloat(client, Prop_Send, "m_healthBuffer", fTempHP);
}

public Action CMD_b5(int client, int args)
{
	if (client)
	{
		SetEntProp(client, Prop_Send, "m_currentReviveCount", 2);
		SetEntProp(client, Prop_Send, "m_bIsOnThirdStrike", 1);
		SetEntProp(client, Prop_Send, "m_isGoingToDie", 1);
		SetEntProp(client, Prop_Send, "m_iHealth", 1);
		TyTempHealth(client, 99);

		PrintToChat(client, "ok");
	}
	return Plugin_Handled;
}

public Action CMD_b6(int client, int args)
{
	if (client)
	{
		int i1 = GetEntProp(client, Prop_Send, "m_currentReviveCount");
		int i2 = GetEntProp(client, Prop_Send, "m_bIsOnThirdStrike");
		int i3 = GetEntProp(client, Prop_Send, "m_isGoingToDie");
		int i4 = GetEntProp(client, Prop_Send, "m_iHealth");

		
		PrintToChat(client, "m_currentReviveCount = %d", i1);
		PrintToChat(client, "m_bIsOnThirdStrike = %d", i2);
		PrintToChat(client, "m_isGoingToDie = %d", i3);
		PrintToChat(client, "m_iHealth = %d", i4);
		PrintToChat(client, "m_healthBuffer = %f", GetEntPropFloat(client, Prop_Send, "m_healthBuffer"));
		PrintToChat(client, "m_healthBufferTime = %f", GetEntPropFloat(client, Prop_Send, "m_healthBufferTime"));

		PrintToChat(client, "ok");
	}
	return Plugin_Handled;
}

public Action CMD_b7(int client, int args)
{
	if (client)
	{
		TyFakeCHEAT(client, "give", "health");
//		TyTempHealth(client, 0);
		
		SetEntPropFloat(client, Prop_Send, "m_healthBuffer", 0.0);
		PrintToChat(client, "ok");
	}
	return Plugin_Handled;
}

public void OnMapStart()
{
	GetCurrentMap(sg_l4d2Map, sizeof(sg_l4d2Map) - 1);
	BuildPath(Path_SM, sg_file, sizeof(sg_file) - 1, "data/%s.txt", sg_l4d2Map);
	BuildPath(Path_SM, sg_file1, sizeof(sg_file1) - 1, "data/%s_weapon.txt", sg_l4d2Map);
	BuildPath(Path_SM, sg_file2, sizeof(sg_file2) - 1, "logs/%s.txt", sg_l4d2Map);
}

public void HxWeapon()
{
	File hFile = OpenFile(sg_file2, "w");
	char sBuf1[128];
	char sBuf2[128];
	char sBuf3[128];
	int i = 32;

	if (hFile)
	{
		while (i < 2048)
		{
			if (IsValidEntity(i) && IsValidEdict(i))
			{
				sBuf1[0] = '\0';
				sBuf2[0] = '\0';
				sBuf3[0] = '\0';
				GetEdictClassname(i, sBuf1, sizeof(sBuf1)-1);
				if (StrContains(sBuf1, "weapon_", true) != -1)
				{
					GetEntPropString(i, Prop_Data, "m_ModelName", sBuf2, sizeof(sBuf2)-1);

					if (StrContains(sBuf2, "models/w_models/weapons/w_eq_adrenaline.mdl", true) != -1)
					{
						sBuf3 = "weapon_adrenaline		";
					}

					if (StrContains(sBuf2, "models/w_models/weapons/w_eq_bile_flask.mdl", true) != -1)
					{
						sBuf3 = "weapon_vomitjar			";
					}

					if (StrContains(sBuf2, "models/w_models/weapons/w_eq_painpills.mdl", true) != -1)
					{
						sBuf3 = "weapon_pain_pills		";
					}

					if (StrContains(sBuf2, "models/w_models/weapons/w_eq_pipebomb.mdl", true) != -1)
					{
						sBuf3 = "weapon_pipe_bomb		";
					}

					if (StrContains(sBuf2, "models/w_models/weapons/w_eq_Medkit.mdl", true) != -1)
					{
						sBuf3 = "weapon_first_aid_kit	";
					}

					if (StrContains(sBuf2, "models/w_models/weapons/w_sniper_mini14.mdl", true) != -1)
					{
						sBuf3 = "weapon_hunting_rifle	";
					}

					if (StrContains(sBuf2, "models/w_models/weapons/w_autoshot_m4super.mdl", true) != -1)
					{
						sBuf3 = "weapon_autoshotgun		";
					}

					if (StrContains(sBuf2, "models/w_models/weapons/w_rifle_ak47.mdl", true) != -1)
					{
						sBuf3 = "weapon_rifle_ak47		";
					}

					if (StrContains(sBuf2, "models/w_models/weapons/w_pistol_A.mdl", true) != -1)
					{
						sBuf3 = "weapon_pistol			";
					}

					if (StrContains(sBuf2, "models/w_models/weapons/w_pistol_B.mdl", true) != -1)
					{
						sBuf3 = "weapon_pistol			";
					}

					if (StrContains(sBuf2, "models/w_models/weapons/w_smg_a.mdl", true) != -1)
					{
						sBuf3 = "weapon_smg_silenced		";
					}

					if (StrContains(sBuf2, "models/w_models/weapons/w_pumpshotgun_A.mdl", true) != -1)
					{
						sBuf3 = "weapon_shotgun_chrome	";
					}

					if (StrContains(sBuf2, "models/v_models/v_dual_pistolA.mdl", true) != -1)
					{
						sBuf3 = "weapon_pistol			";
					}

					if (StrContains(sBuf2, "models/w_models/weapons/w_shotgun_spas.mdl", true) != -1)
					{
						sBuf3 = "weapon_shotgun_spas		";
					}

					if (StrContains(sBuf2, "models/w_models/weapons/w_desert_eagle.mdl", true) != -1)
					{
						sBuf3 = "weapon_pistol_magnum	";
					}

					if (StrContains(sBuf2, "models/w_models/weapons/w_desert_rifle.mdl", true) != -1)
					{
						sBuf3 = "weapon_rifle_desert		";
					}

					if (StrContains(sBuf2, "models/v_models/v_pipebomb.mdl", true) != -1)
					{
						sBuf3 = "weapon_pipe_bomb		";
					}

					if (StrContains(sBuf2, "models/w_models/weapons/w_m60.mdl", true) != -1)
					{
						sBuf3 = "weapon_rifle_m60		";
					}

					if (StrContains(sBuf2, "models/w_models/weapons/w_rifle_sg552.mdl", true) != -1)
					{
						sBuf3 = "weapon_rifle_sg552		";
					}

					if (StrContains(sBuf2, "models/v_models/v_autoshotgun.mdl", true) != -1)
					{
						sBuf3 = "weapon_autoshotgun		";
					}

					if (StrContains(sBuf2, "models/w_models/weapons/w_grenade_launcher.mdl", true) != -1)
					{
						sBuf3 = "weapon_grenade_launcher	";
					}

					if (StrContains(sBuf2, "models/v_models/v_huntingrifle.mdl", true) != -1)
					{
						sBuf3 = "weapon_hunting_rifle	";
					}

					if (StrContains(sBuf2, "models/w_models/weapons/w_smg_uzi.mdl", true) != -1)
					{
						sBuf3 = "weapon_smg				";
					}

					if (StrContains(sBuf2, "models/w_models/weapons/w_shotgun.mdl", true) != -1)
					{
						sBuf3 = "weapon_pumpshotgun		";
					}

					if (StrContains(sBuf2, "models/w_models/weapons/w_rifle_m16a2.mdl", true) != -1)
					{
						sBuf3 = "weapon_rifle			";
					}

					if (StrContains(sBuf2, "models/w_models/weapons/w_smg_mp5.mdl", true) != -1)
					{
						sBuf3 = "weapon_smg_mp5			";
					}

					if (StrContains(sBuf2, "models/w_models/weapons/w_sniper_awp.mdl", true) != -1)
					{
						sBuf3 = "weapon_sniper_awp		";
					}

					if (StrContains(sBuf2, "models/w_models/weapons/w_sniper_military.mdl", true) != -1)
					{
						sBuf3 = "weapon_sniper_military	";
					}
					if (StrContains(sBuf2, "models/v_models/v_snip_scout.mdl", true) != -1)
					{
						sBuf3 = "weapon_sniper_scout	";
					}

					if (StrContains(sBuf2, "models/weapons/melee/w_crowbar.mdl", true) != -1)
					{
						sBuf3 = "crowbar					";
					}

					if (StrContains(sBuf2, "models/weapons/melee/w_chainsaw.mdl", true) != -1)
					{
						sBuf3 = "weapon_chainsaw			";
					}

					if (StrContains(sBuf2, "models/w_models/weapons/w_eq_defibrillator.mdl", true) != -1)
					{
						sBuf3 = "weapon_defibrillator	";
					}

					if (StrContains(sBuf2, "models/props/terror/ammo_stack.mdl", true) != -1)
					{
						sBuf3 = "weapon_ammo				";
					}
					
					if (StrContains(sBuf2, "models/v_models/v_pistolA.mdl", true) != -1)
					{
						sBuf3 = "weapon_pistol			";
					}

					if (StrContains(sBuf2, "models/weapons/melee/w_bat.mdl", true) != -1)
					{
						sBuf3 = "baseball_bat			";
					}
					
					if (StrContains(sBuf2, "models/weapons/melee/w_cricket_bat.mdl", true) != -1)
					{
						sBuf3 = "cricket_bat				";
					}
					
					if (StrContains(sBuf2, "models/weapons/melee/w_katana.mdl", true) != -1)
					{
						sBuf3 = "katana					";
					}
					
					if (StrContains(sBuf2, "models/weapons/melee/w_fireaxe.mdl", true) != -1)
					{
						sBuf3 = "fireaxe					";
					}
					
					if (StrContains(sBuf2, "models/v_models/v_silenced_smg.mdl", true) != -1)
					{
						sBuf3 = "weapon_smg_silenced		";
					}
					
					if (StrContains(sBuf2, "models/v_models/v_medkit.mdl", true) != -1)
					{
						sBuf3 = "weapon_first_aid_kit	";
					}
					if (StrContains(sBuf2, "models/w_models/weapons/w_eq_molotov.mdl", true) != -1)
					{
						sBuf3 = "weapon_molotov			";
					}
					if (StrContains(sBuf2, "models/weapons/melee/w_machete.mdl", true) != -1)
					{
						sBuf3 = "machete					";
					}
					if (StrContains(sBuf2, "models/v_models/v_smg.mdl", true) != -1)
					{
						sBuf3 = "weapon_smg				";
					}
					if (StrContains(sBuf2, "models/w_models/weapons/w_eq_explosive_ammopack.mdl", true) != -1)
					{
						sBuf3 = "weapon_upgradepack_explosive";
					}
					if (StrContains(sBuf2, "models/w_models/weapons/w_eq_incendiary_ammopack.mdl", true) != -1)
					{
						sBuf3 = "weapon_upgradepack_incendiary";
					}
					if (StrContains(sBuf2, "models/weapons/melee/w_frying_pan.mdl", true) != -1)
					{
						sBuf3 = "frying_pan				";
					}
					if (StrContains(sBuf2, "models/weapons/melee/v_bat.mdl", true) != -1)
					{
						sBuf3 = "baseball_bat			";
					}
					if (StrContains(sBuf2, "models/v_models/v_sniper_military.mdl", true) != -1)
					{
						sBuf3 = "weapon_sniper_military	";
					}
					if (StrContains(sBuf2, "models/v_models/v_rifle.mdl", true) != -1)
					{
						sBuf3 = "weapon_rifle			";
					}
					if (StrContains(sBuf2, "models/v_models/v_rifle_AK47.mdl", true) != -1)
					{
						sBuf3 = "weapon_rifle_ak47		";
					}
					if (StrContains(sBuf2, "models/v_models/v_shotgun_chrome.mdl", true) != -1)
					{
						sBuf3 = "weapon_shotgun_chrome";
					}
					if (StrContains(sBuf2, "models/weapons/melee/w_electric_guitar.mdl", true) != -1)
					{
						sBuf3 = "electric_guitar			";
					}
					if (StrContains(sBuf2, "models/weapons/melee/w_tonfa.mdl", true) != -1)
					{
						sBuf3 = "tonfa					";
					}
					if (StrContains(sBuf2, "models/v_models/v_adrenaline.mdl", true) != -1)
					{
						sBuf3 = "weapon_adrenaline		";
					}
					if (StrContains(sBuf2, "models/v_models/v_shotgun_spas.mdl", true) != -1)
					{
						sBuf3 = "weapon_shotgun_spas		";
					}
					if (StrContains(sBuf2, "models/v_models/v_desert_rifle.mdl", true) != -1)
					{
						sBuf3 = "weapon_rifle_desert		";
					}
					if (StrContains(sBuf2, "models/v_models/v_desert_eagle.mdl", true) != -1)
					{
						sBuf3 = "weapon_pistol_magnum	";
					}
					if (StrContains(sBuf2, "models/w_models/weapons/w_cola.mdl", true) != -1)
					{
						sBuf3 = "weapon_cola_bottles		";
					}
					if (StrContains(sBuf2, "models/props_junk/gascan001a.mdl", true) != -1)
					{
						sBuf3 = "weapon_gascan			";
					}
					if (StrContains(sBuf2, "models/props_junk/explosive_box001.mdl", true) != -1)
					{
						sBuf3 = "weapon_fireworkcrate";
					}
					if (StrContains(sBuf2, "models/weapons/melee/v_tonfa.mdl", true) != -1)
					{
						sBuf3 = "tonfa					";
					}
					if (StrContains(sBuf2, "models/v_models/v_rif_sg552.mdl", true) != -1)
					{
						sBuf3 = "weapon_rifle_sg552		";
					}
					if (StrContains(sBuf2, "models/props_unique/spawn_apartment/coffeeammo.mdl", true) != -1)
					{
						sBuf3 = "						";
					}
					if (StrContains(sBuf2, "models/v_models/v_pumpshotgun.mdl", true) != -1)
					{
						sBuf3 = "weapon_pumpshotgun		";
					}
					if (StrContains(sBuf2, "				", true) != -1)
					{
						sBuf3 = "						";
					}

					if (sBuf3[0])
					{
						WriteFileLine(hFile, "%s		%s						[%s]", sBuf3, sBuf2, sBuf1);
					}
					else
					{
						WriteFileLine(hFile, "[%s]				%s", sBuf1, sBuf2);
					}
				}
			}
			i += 1;
		}
		WriteFileLine(hFile, "\n\n");
		CloseHandle(hFile);
	}
}

public Action CMD_fi(int client, int args)
{
	if (client)
	{
		HxWeapon();

		File hFile = OpenFile(sg_file, "w");
		File hFile1 = OpenFile(sg_file1, "w");
		if (hFile && hFile1)
		{
			char sBuf[64];
			char sBuf1[64];
			char sBuf2[64];
			char sBuf3[64];
			char sBuf4[64];
			int i =1;
			int iEnt =1;
			while (i < 2048)
			{
				if (IsValidEntity(i) && IsValidEdict(i))
				{
					GetEntityNetClass(i, sBuf, sizeof(sBuf)-1);
					GetEntPropString(i, Prop_Data, "m_ModelName", sBuf1, sizeof(sBuf1)-1);
					GetEdictClassname(i, sBuf2, sizeof(sBuf2)-1);

					if (sBuf1[0] == '*')
					{
						sBuf1[0] = '\0';
					}

					int iff = strlen(sBuf);
					switch(iff)
					{
						case 4:
						{
							sBuf3 = "                       ";
						}
						case 5:
						{
							sBuf3 = "                      ";
						}
						case 7:
						{
							sBuf3 = "                    ";
						}
						case 8:
						{
							sBuf3 = "                   ";
						}
						case 9:
						{
							sBuf3 = "                  ";
						}
						case 10:
						{
							sBuf3 = "                 ";
						}
						case 11:
						{
							sBuf3 = "                ";
						}
						case 12:
						{
							sBuf3 = "               ";
						}
						case 13:
						{
							sBuf3 = "              ";
						}
						case 14:
						{
							sBuf3 = "             ";
						}
						case 15:
						{
							sBuf3 = "            ";
						}
						case 16:
						{
							sBuf3 = "           ";
						}
						case 17:
						{
							sBuf3 = "          ";
						}
						case 18:
						{
							sBuf3 = "         ";
						}
						case 21:
						{
							sBuf3 = "      ";
						}
						case 22:
						{
							sBuf3 = "     ";
						}
						case 23:
						{
							sBuf3 = "    ";
						}
						case 24:
						{
							sBuf3 = "   ";
						}
						case 27:
						{
							sBuf3 = "";
						}
						default:
						{
							sBuf3 = "   ";
						}
					}

					iff = strlen(sBuf2);
					switch(iff)
					{
						case 4:
						{
							sBuf4 = "                              ";
						}
						case 6:
						{
							sBuf4 = "                            ";
						}
						case 7:
						{
							sBuf4 = "                           ";
						}
						case 8:
						{
							sBuf4 = "                          ";
						}
						case 10:
						{
							sBuf4 = "                        ";
						}
						case 11:
						{
							sBuf4 = "                       ";
						}
						case 12:
						{
							sBuf4 = "                      ";
						}
						case 13:
						{
							sBuf4 = "                     ";
						}
						case 14:
						{
							sBuf4 = "                    ";
						}
						case 15:
						{
							sBuf4 = "                   ";
						}
						case 16:
						{
							sBuf4 = "                  ";
						}
						case 17:
						{
							sBuf4 = "                 ";
						}
						case 18:
						{
							sBuf4 = "                ";
						}
						case 19:
						{
							sBuf4 = "               ";
						}
						case 20:
						{
							sBuf4 = "              ";
						}
						case 21:
						{
							sBuf4 = "             ";
						}
						case 22:
						{
							sBuf4 = "            ";
						}
						case 23:
						{
							sBuf4 = "           ";
						}
						case 24:
						{
							sBuf4 = "          ";
						}
						case 25:
						{
							sBuf4 = "         ";
						}
						case 26:
						{
							sBuf4 = "        ";
						}
						case 27:
						{
							sBuf4 = "       ";
						}
						case 28:
						{
							sBuf4 = "      ";
						}
						case 29:
						{
							sBuf4 = "     ";
						}
						case 34:
						{
							sBuf4 = "";
						}
						case 35:
						{
							sBuf4 = "";
						}
						default:
						{
							sBuf4 = "  ";
						}
					}

					if (sBuf1[0] == '\0')
					{
						sBuf4 = "";
					}

					iEnt += 1;
					WriteFileLine(hFile, "%d		%s %s %s %s %s", i, sBuf, sBuf3, sBuf2, sBuf4, sBuf1);

					if (StrContains(sBuf2, "weapon_", true) != -1)
					{
						WriteFileLine(hFile1, "%s %s %s", sBuf2, sBuf4, sBuf1);
					}
				}
				i += 1;
			}

			WriteFileLine(hFile, "\nВсего энтити %d\n", iEnt);
			CloseHandle(hFile);
			CloseHandle(hFile1);
			PrintToChat(client, "ok");
		}
		else
		{
			PrintToChat(client, "error 1");
		}
	}
	return Plugin_Handled;
}

public Action TyTimer2(Handle timer)
{
	if (!strcmp(sg_l4d2Map, "c1m1_hotel", true))
	{
		ServerCommand("changelevel c1m2_streets");
	}
	if (!strcmp(sg_l4d2Map, "c1m2_streets", true))
	{
		ServerCommand("changelevel c1m3_mall");
	}
	if (!strcmp(sg_l4d2Map, "c1m3_mall", true))
	{
		ServerCommand("changelevel c1m4_atrium");
	}
	if (!strcmp(sg_l4d2Map, "c1m4_atrium", true))
	{
		ServerCommand("changelevel c2m1_highway");
	}
	if (!strcmp(sg_l4d2Map, "c2m1_highway", true))
	{
		ServerCommand("changelevel c2m2_fairgrounds");
	}
	if (!strcmp(sg_l4d2Map, "c2m2_fairgrounds", true))
	{
		ServerCommand("changelevel c2m3_coaster");
	}
	if (!strcmp(sg_l4d2Map, "c2m3_coaster", true))
	{
		ServerCommand("changelevel c2m4_barns");
	}
	if (!strcmp(sg_l4d2Map, "c2m4_barns", true))
	{
		ServerCommand("changelevel c2m5_concert");
	}
	if (!strcmp(sg_l4d2Map, "c2m5_concert", true))
	{
		ServerCommand("changelevel c3m1_plankcountry");
	}
	if (!strcmp(sg_l4d2Map, "c3m1_plankcountry", true))
	{
		ServerCommand("changelevel c3m2_swamp");
	}
	if (!strcmp(sg_l4d2Map, "c3m2_swamp", true))
	{
		ServerCommand("changelevel c3m3_shantytown");
	}
	if (!strcmp(sg_l4d2Map, "c3m3_shantytown", true))
	{
		ServerCommand("changelevel c3m4_plantation");
	}
	if (!strcmp(sg_l4d2Map, "c3m4_plantation", true))
	{
		ServerCommand("changelevel c4m1_milltown_a");
	}
	if (!strcmp(sg_l4d2Map, "c4m1_milltown_a", true))
	{
		ServerCommand("changelevel c4m2_sugarmill_a");
	}
	if (!strcmp(sg_l4d2Map, "c4m2_sugarmill_a", true))
	{
		ServerCommand("changelevel c4m3_sugarmill_b");
	}
	if (!strcmp(sg_l4d2Map, "c4m3_sugarmill_b", true))
	{
		ServerCommand("changelevel c4m4_milltown_b");
	}
	if (!strcmp(sg_l4d2Map, "c4m4_milltown_b", true))
	{
		ServerCommand("changelevel c4m5_milltown_escape");
	}
	if (!strcmp(sg_l4d2Map, "c4m5_milltown_escape", true))
	{
		ServerCommand("changelevel c5m1_waterfront");
	}
	if (!strcmp(sg_l4d2Map, "c5m1_waterfront", true))
	{
		ServerCommand("changelevel c5m2_park");
	}
	if (!strcmp(sg_l4d2Map, "c5m2_park", true))
	{
		ServerCommand("changelevel c5m3_cemetery");
	}
	if (!strcmp(sg_l4d2Map, "c5m3_cemetery", true))
	{
		ServerCommand("changelevel c5m4_quarter");
	}
	if (!strcmp(sg_l4d2Map, "c5m4_quarter", true))
	{
		ServerCommand("changelevel c5m5_bridge");
	}
	if (!strcmp(sg_l4d2Map, "c5m5_bridge", true))
	{
		ServerCommand("changelevel c6m1_riverbank");
	}
	if (!strcmp(sg_l4d2Map, "c6m1_riverbank", true))
	{
		ServerCommand("changelevel c6m2_bedlam");
	}
	if (!strcmp(sg_l4d2Map, "c6m2_bedlam", true))
	{
		ServerCommand("changelevel c6m3_port");
	}
	if (!strcmp(sg_l4d2Map, "c6m3_port", true))
	{
		ServerCommand("changelevel c7m1_docks");
	}
	if (!strcmp(sg_l4d2Map, "c7m1_docks", true))
	{
		ServerCommand("changelevel c7m2_barge");
	}
	if (!strcmp(sg_l4d2Map, "c7m2_barge", true))
	{
		ServerCommand("changelevel c7m3_port");
	}
	if (!strcmp(sg_l4d2Map, "c7m3_port", true))
	{
		ServerCommand("changelevel c8m1_apartment");
	}
	if (!strcmp(sg_l4d2Map, "c8m1_apartment", true))
	{
		ServerCommand("changelevel c8m2_subway");
	}
	if (!strcmp(sg_l4d2Map, "c8m2_subway", true))
	{
		ServerCommand("changelevel c8m3_sewers");
	}
	if (!strcmp(sg_l4d2Map, "c8m3_sewers", true))
	{
		ServerCommand("changelevel c8m4_interior");
	}
	if (!strcmp(sg_l4d2Map, "c8m4_interior", true))
	{
		ServerCommand("changelevel c8m5_rooftop");
	}
	if (!strcmp(sg_l4d2Map, "c8m5_rooftop", true))
	{
		ServerCommand("changelevel c9m1_alleys");
	}
	if (!strcmp(sg_l4d2Map, "c9m1_alleys", true))
	{
		ServerCommand("changelevel c9m2_lots");
	}
	if (!strcmp(sg_l4d2Map, "c9m2_lots", true))
	{
		ServerCommand("changelevel c10m1_caves");
	}
	if (!strcmp(sg_l4d2Map, "c10m1_caves", true))
	{
		ServerCommand("changelevel c10m2_drainage");
	}
	if (!strcmp(sg_l4d2Map, "c10m2_drainage", true))
	{
		ServerCommand("changelevel c10m3_ranchhouse");
	}
	if (!strcmp(sg_l4d2Map, "c10m3_ranchhouse", true))
	{
		ServerCommand("changelevel c10m4_mainstreet");
	}
	if (!strcmp(sg_l4d2Map, "c10m4_mainstreet", true))
	{
		ServerCommand("changelevel c10m5_houseboat");
	}
	if (!strcmp(sg_l4d2Map, "c10m5_houseboat", true))
	{
		ServerCommand("changelevel c11m1_greenhouse");
	}
	if (!strcmp(sg_l4d2Map, "c11m1_greenhouse", true))
	{
		ServerCommand("changelevel c11m2_offices");
	}
	if (!strcmp(sg_l4d2Map, "c11m2_offices", true))
	{
		ServerCommand("changelevel c11m3_garage");
	}
	if (!strcmp(sg_l4d2Map, "c11m3_garage", true))
	{
		ServerCommand("changelevel c11m4_terminal");
	}
	if (!strcmp(sg_l4d2Map, "c11m4_terminal", true))
	{
		ServerCommand("changelevel c11m5_runway");
	}
	if (!strcmp(sg_l4d2Map, "c11m5_runway", true))
	{
		ServerCommand("changelevel c12m1_hilltop");
	}
	if (!strcmp(sg_l4d2Map, "c12m1_hilltop", true))
	{
		ServerCommand("changelevel c12m2_traintunnel");
	}
	if (!strcmp(sg_l4d2Map, "c12m2_traintunnel", true))
	{
		ServerCommand("changelevel c12m3_bridge");
	}
	if (!strcmp(sg_l4d2Map, "c12m3_bridge", true))
	{
		ServerCommand("changelevel c12m4_barn");
	}
	if (!strcmp(sg_l4d2Map, "c12m4_barn", true))
	{
		ServerCommand("changelevel c12m5_cornfield");
	}
	if (!strcmp(sg_l4d2Map, "c12m5_cornfield", true))
	{
		ServerCommand("changelevel c13m1_alpinecreek");
	}
	if (!strcmp(sg_l4d2Map, "c13m1_alpinecreek", true))
	{
		ServerCommand("changelevel c13m2_southpinestream");
	}
	if (!strcmp(sg_l4d2Map, "c13m2_southpinestream", true))
	{
		ServerCommand("changelevel c13m3_memorialbridge");
	}
	if (!strcmp(sg_l4d2Map, "c13m3_memorialbridge", true))
	{
		ServerCommand("changelevel c13m4_cutthroatcreek");
	}
	if (!strcmp(sg_l4d2Map, "c13m4_cutthroatcreek", true))
	{
		ig_ggg1 = 0;
	}

	return Plugin_Stop;
}

public Action CMD_test123(int client, int args)
{
	if (client)
	{
		ig_ggg1 = 1;
		CreateTimer(1.0, TyTimer1, client, TIMER_FLAG_NO_MAPCHANGE);
	}
	return Plugin_Handled;
}

public Action TyTimer1(Handle timer, int client)
{
	if (ig_ggg1)
	{
		CMD_fi(client, 0);
		CreateTimer(1.0, TyTimer2, _, TIMER_FLAG_NO_MAPCHANGE);
	}
	return Plugin_Stop;
}

public void OnClientPostAdminCheck(int client)
{
	if (!IsFakeClient(client))
	{
		if (ig_ggg1)
		{
			CreateTimer(15.0, TyTimer1, client, TIMER_FLAG_NO_MAPCHANGE);
		}
	}
}

public Action CMD_handles(int client, int args)
{
	if (client)
	{
		ServerCommand("sm_dump_handles handles_l4d2.txt");
		PrintToChat(client, "ok");
	}
	return Plugin_Handled;
}
