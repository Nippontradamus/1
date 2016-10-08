#include <cstrike> 

public OnPluginStart()
{
    RegConsoleCmd("rs", resetscore);
    RegConsoleCmd("resetscore", resetscore);
}

public Action:resetscore(client, args) 
{ 
    if (client) 
    { 
        if (GetClientDeaths(client) || CS_GetClientContributionScore(client)) 
        { 
            SetEntProp(client, Prop_Data, "m_iDeaths", 0); 
            SetEntProp(client, Prop_Data, "m_iFrags", 0); 
            CS_SetClientAssists(client, 0); 
            CS_SetClientContributionScore(client, 0); 
        } 
    } 
    return Plugin_Handled; 
}
