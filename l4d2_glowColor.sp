#pragma semicolon 1
#include <sourcemod>
#pragma newdecls required

public void OnPluginStart()
{
	RegAdminCmd("sm_test3", CMD_test3, ADMFLAG_CHEATS, "");
}

public Action CMD_test3(int client, int args)
{
	char sBuf[8];
	int iBuf1 = 0;
	int iBuf2 = 0;

	if (client)
	{
		if (args < 1)
		{
			PrintToChat(client, "sm_test3 <цифра нужного цвета ауры>");
		}
		else
		{
			GetCmdArgString(sBuf, sizeof(sBuf)-1);
			iBuf1 = StringToInt(sBuf);

			if (iBuf1)
			{
				SetEntProp(client, Prop_Send, "m_iGlowType", 3);
				SetEntProp(client, Prop_Send, "m_glowColorOverride", iBuf1);

				iBuf2 = GetEntProp(client, Prop_Send, "m_glowColorOverride", 4);
				PrintToChat(client,"Номер цвета ауры == \x04 %d", iBuf2);
			}
		}
	}

	return Plugin_Handled;
}

