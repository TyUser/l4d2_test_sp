#pragma semicolon 1
#include <sourcemod>
#include <profiler>
#pragma newdecls required

Handle hg_prof = null;

public void HxTest2()
{
	StartProfiling(hg_prof);
/*	Начало того что проверяем	*/

	int i = 1;
	while (i <= 10000000)
	{
		
		
		
		i += 1;
	}

/*	Окончание того что проверяем	*/
	StopProfiling(hg_prof);
	LogError("2 Тест %f Секунд", GetProfilerTime(hg_prof));
}



public void HxTest1()
{
	StartProfiling(hg_prof);
/*	Начало того что проверяем	*/

	int i = 1;
	while (i <= 10000000)
	{
		
		
		
		i += 1;
	}

/*	Окончание того что проверяем		*/
	StopProfiling(hg_prof);
	LogError("1 Тест %f Секунд", GetProfilerTime(hg_prof));
}

public void OnPluginStart()
{
	hg_prof = CreateProfiler();

/* Для надежности проверять несколько раза */
	LogError("----- START -----");
	HxTest1();
	HxTest2();
	LogError("  ");

	HxTest1();
	HxTest2();
	LogError("  ");

	HxTest1();
	HxTest2();
	LogError("  ");

	HxTest1();
	HxTest2();
	LogError("----- END -----");
}

