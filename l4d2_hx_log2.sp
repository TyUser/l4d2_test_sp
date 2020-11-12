/**
 * =============================================================================
 * Copyright 2011 - 2020 steamcommunity.com/profiles/76561198025355822/
 * 
 *
 * =============================================================================
 *
 * This program is free software; you can redistribute it and/or modify it under
 * the terms of the GNU General Public License, version 3.0, as published by the
 * Free Software Foundation.
 *
 * This program is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
 * FOR A PARTICULAR PURPOSE.  See the GNU General Public License for more
 * details.
 *
 * You should have received a copy of the GNU General Public License along with
 * this program.  If not, see <www.gnu.org/licenses/>.
 *
 * As a special exception, AlliedModders LLC gives you permission to link the
 * code of this program (as well as its derivative works) to "Half-Life 2," the
 * "Source Engine," the "SourcePawn JIT," and any Game MODs that run on software
 * by the Valve Corporation.  You must obey the GNU General Public License in
 * all respects for all other code used.  Additionally, AlliedModders LLC grants
 * this exception to all derivative works.  AlliedModders LLC defines further
 * exceptions, found in LICENSE.txt (as of this writing, version JULY-31-2007),
 * or <www.sourcemod.net/license.php>.
 *
*/
#pragma semicolon 1
#include <sourcemod>
#include <sdktools>
#pragma newdecls required

char sg_file[160];
/* Данные текстуры обязательны для кэширования но для теста новых текстур можно отключить их проверку на кэширование. */
#define HX_TEST_W 1

public Plugin myinfo =
{
	name = "[L4D2] plugin log 2",
	author = "MAKS",
	description = " ",
	version = "1.0",
	url = "www.russerver.com"
};

void hx_precached_f(File h, char [] s)
{
	if (!IsModelPrecached(s))
	{
		PrecacheModel(s, false);
		if (h)
		{
			WriteFileLine(h, "Precached [%s]", s);
		}
	}
}

void HxPrecache()
{
	File h = OpenFile(sg_file, "a");

#if HX_TEST_W
/* Данные текстуры обезательны для кэширования */
/* survivors */
	hx_precached_f(h, "models/survivors/survivor_teenangst.mdl");
	hx_precached_f(h, "models/survivors/survivor_manager.mdl");
	hx_precached_f(h, "models/survivors/survivor_namvet.mdl");
	hx_precached_f(h, "models/survivors/survivor_biker.mdl");

	hx_precached_f(h, "models/survivors/survivor_mechanic.mdl");
	hx_precached_f(h, "models/survivors/survivor_producer.mdl");
	hx_precached_f(h, "models/survivors/survivor_gambler.mdl");
	hx_precached_f(h, "models/survivors/survivor_coach.mdl");

/* witch */
	hx_precached_f(h, "models/infected/witch_bride.mdl");
	hx_precached_f(h, "models/infected/witch.mdl");

/* melee w*/
	hx_precached_f(h, "models/weapons/melee/w_electric_guitar.mdl");
	hx_precached_f(h, "models/weapons/melee/w_cricket_bat.mdl");
	hx_precached_f(h, "models/weapons/melee/w_frying_pan.mdl");
	hx_precached_f(h, "models/weapons/melee/w_riotshield.mdl");
	hx_precached_f(h, "models/weapons/melee/w_pitchfork.mdl");
	hx_precached_f(h, "models/weapons/melee/w_golfclub.mdl");
	hx_precached_f(h, "models/weapons/melee/w_crowbar.mdl");
	hx_precached_f(h, "models/weapons/melee/w_machete.mdl");
	hx_precached_f(h, "models/weapons/melee/w_katana.mdl");
	hx_precached_f(h, "models/weapons/melee/w_shovel.mdl");
	hx_precached_f(h, "models/weapons/melee/w_tonfa.mdl");

/* melee v*/
	hx_precached_f(h, "models/weapons/melee/v_electric_guitar.mdl");
	hx_precached_f(h, "models/weapons/melee/v_cricket_bat.mdl");
	hx_precached_f(h, "models/weapons/melee/v_frying_pan.mdl");
	hx_precached_f(h, "models/weapons/melee/v_golfclub.mdl");
	hx_precached_f(h, "models/weapons/melee/v_fireaxe.mdl");
	hx_precached_f(h, "models/weapons/melee/v_crowbar.mdl");
	hx_precached_f(h, "models/weapons/melee/v_machete.mdl");
	hx_precached_f(h, "models/weapons/melee/v_katana.mdl");
	hx_precached_f(h, "models/weapons/melee/v_shovel.mdl");
	hx_precached_f(h, "models/weapons/melee/v_tonfa.mdl");

/* w models */
	hx_precached_f(h, "models/w_models/weapons/w_knife_t.mdl");
	hx_precached_f(h, "models/w_models/weapons/50cal.mdl");

/* v models */
	hx_precached_f(h, "models/v_models/v_knife_t.mdl");

#endif

/* melee w*/
	hx_precached_f(h, "models/weapons/melee/w_fireaxe.mdl");
	hx_precached_f(h, "models/weapons/melee/w_bat.mdl");

/* melee v*/
	hx_precached_f(h, "models/weapons/melee/v_bat.mdl");

/* w models */
	hx_precached_f(h, "models/w_models/weapons/w_autoshot_m4super.mdl");
	hx_precached_f(h, "models/w_models/weapons/w_grenade_launcher.mdl");
	hx_precached_f(h, "models/w_models/weapons/w_sniper_military.mdl");
	hx_precached_f(h, "models/w_models/weapons/w_sniper_mini14.mdl");
	hx_precached_f(h, "models/w_models/weapons/w_pumpshotgun_a.mdl");
	hx_precached_f(h, "models/w_models/weapons/w_sniper_scout.mdl");
	hx_precached_f(h, "models/w_models/weapons/w_shotgun_spas.mdl");
	hx_precached_f(h, "models/w_models/weapons/w_desert_rifle.mdl");
	hx_precached_f(h, "models/w_models/weapons/w_desert_eagle.mdl");
	hx_precached_f(h, "models/w_models/weapons/w_rifle_sg552.mdl");
	hx_precached_f(h, "models/w_models/weapons/w_rifle_m16a2.mdl");
	hx_precached_f(h, "models/w_models/weapons/w_rifle_ak47.mdl");
	hx_precached_f(h, "models/w_models/weapons/w_sniper_awp.mdl");
	hx_precached_f(h, "models/w_models/weapons/w_smg_mp5.mdl");
	hx_precached_f(h, "models/w_models/weapons/w_shotgun.mdl");
	hx_precached_f(h, "models/w_models/weapons/w_m60.mdl");

/* v models  */
	hx_precached_f(h, "models/v_models/v_incendiary_ammopack.mdl");
	hx_precached_f(h, "models/v_models/v_explosive_ammopack.mdl");
	hx_precached_f(h, "models/v_models/v_grenade_launcher.mdl");
	hx_precached_f(h, "models/v_models/v_sniper_military.mdl");
	hx_precached_f(h, "models/v_models/v_shotgun_chrome.mdl");
	hx_precached_f(h, "models/v_models/v_defibrillator.mdl");
	hx_precached_f(h, "models/v_models/v_shotgun_spas.mdl");
	hx_precached_f(h, "models/v_models/v_huntingrifle.mdl");
	hx_precached_f(h, "models/v_models/v_silenced_smg.mdl");
	hx_precached_f(h, "models/v_models/v_desert_eagle.mdl");
	hx_precached_f(h, "models/v_models/v_desert_rifle.mdl");
	hx_precached_f(h, "models/v_models/v_dual_pistolA.mdl");
	hx_precached_f(h, "models/v_models/v_autoshotgun.mdl");
	hx_precached_f(h, "models/v_models/v_pumpshotgun.mdl");
	hx_precached_f(h, "models/v_models/v_adrenaline.mdl");
	hx_precached_f(h, "models/v_models/v_rifle_AK47.mdl");
	hx_precached_f(h, "models/v_models/v_snip_scout.mdl");
	hx_precached_f(h, "models/v_models/v_bile_flask.mdl");
	hx_precached_f(h, "models/v_models/v_rif_sg552.mdl");
	hx_precached_f(h, "models/v_models/v_painpills.mdl");
	hx_precached_f(h, "models/v_models/v_snip_awp.mdl");
	hx_precached_f(h, "models/v_models/v_pipebomb.mdl");
	hx_precached_f(h, "models/v_models/v_smg_mp5.mdl");
	hx_precached_f(h, "models/v_models/v_pistolA.mdl");
	hx_precached_f(h, "models/v_models/v_molotov.mdl");
	hx_precached_f(h, "models/v_models/v_medkit.mdl");
	hx_precached_f(h, "models/v_models/v_rifle.mdl");
	hx_precached_f(h, "models/v_models/v_smg.mdl");
	hx_precached_f(h, "models/v_models/v_m60.mdl");

	CloseHandle(h);
}

public void OnMapStart()
{
	char sMap[40];
	GetCurrentMap(sMap, sizeof(sMap)-1);
	BuildPath(Path_SM, sg_file, sizeof(sg_file) - 1, "logs/model_%s.txt", sMap);

	HxPrecache();
}
