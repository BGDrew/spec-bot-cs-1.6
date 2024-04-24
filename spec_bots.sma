#include <amxmodx>
#include <fakemeta>
#include <cstrike>

public plugin_init()
{
    register_plugin("SpecBots", "1.0", "Dr.Eagle")
    
    set_task(5.0, "create_bot")
    set_task(5.0, "create_bot2")
}

public client_disconnected(id) {
}

public client_putinserver(id) {
}

public create_bot()
{
    
    new buffer[75]
    formatex(buffer, sizeof(buffer) - 1, "https://sales.thebasementgaming.com")

    new bot
    bot = engfunc(EngFunc_CreateFakeClient, buffer)
    
    new ptr[128]
    dllfunc(DLLFunc_ClientConnect, bot, "127.0.0.1", ptr)
    dllfunc(DLLFunc_ClientPutInServer, bot)
    
    set_user_info(bot, "rate", "3500")
    set_user_info(bot, "cl_updaterate", "25")
    set_user_info(bot, "cl_lw", "1")
    set_user_info(bot, "cl_lc", "1")
    set_user_info(bot, "cl_dlmax", "128")
    set_user_info(bot, "cl_righthand", "1")
    set_user_info(bot, "_vgui_menus", "0")
    set_user_info(bot, "_ah", "0")
    set_user_info(bot, "dm", "0")
    set_user_info(bot, "tracker", "0")
    set_user_info(bot, "friends", "0")
    set_user_info(bot, "*bot", "1")
    
    cs_set_user_team(bot, CS_TEAM_SPECTATOR, CS_DONTCHANGE)
}

public create_bot2()
{
    
    new buffer[75]
    formatex(buffer, sizeof(buffer) - 1, "https://discord.gg/PDAmb6JrmU")

    new bot
    bot = engfunc(EngFunc_CreateFakeClient, buffer)
    
    new ptr[128]
    dllfunc(DLLFunc_ClientConnect, bot, "127.0.0.1", ptr)
    dllfunc(DLLFunc_ClientPutInServer, bot)
    
    set_user_info(bot, "rate", "3500")
    set_user_info(bot, "cl_updaterate", "25")
    set_user_info(bot, "cl_lw", "1")
    set_user_info(bot, "cl_lc", "1")
    set_user_info(bot, "cl_dlmax", "128")
    set_user_info(bot, "cl_righthand", "1")
    set_user_info(bot, "_vgui_menus", "0")
    set_user_info(bot, "_ah", "0")
    set_user_info(bot, "dm", "0")
    set_user_info(bot, "tracker", "0")
    set_user_info(bot, "friends", "0")
    set_user_info(bot, "*bot", "1")
    
    cs_set_user_team(bot, CS_TEAM_SPECTATOR, CS_DONTCHANGE)
}
