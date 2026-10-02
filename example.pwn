stock admpoleton(playerid)
{
	new BitStream:bs = BS_New();

	BS_WriteValue(bs,
	PR_UINT8, 220,
	PR_UINT8, 137,
	PR_UINT8, 128);

	return PR_SendPacket(bs, playerid), BS_Delete(bs);
}
stock admpoletoff(playerid)
{
	new BitStream:bs = BS_New();

	BS_WriteValue(bs,
	PR_UINT8, 220,
	PR_UINT8, 137,
	PR_UINT8, 0);

	return PR_SendPacket(bs, playerid), BS_Delete(bs);
}
cmd:admpoleton(playerid)
{
    if(PI[playerid][pAdmin] < 1)
		return SCM(playerid, COLOR_RED, !"[Ошибка] {FFFFFF}Вы не можете использовать команду");
	adminflyon(playerid);
    SCM(playerid, COLOR_RED, !"[INFO] {FFFFFF}Вы включили админ полет");
    return false;
}
cmd:admpoletoff(playerid)
{
    if(PI[playerid][pAdmin] < 1)
		return SCM(playerid, COLOR_RED, !"[Ошибка] {FFFFFF}Вы не можете использовать команду");
	adminflyoff(playerid);
    SCM(playerid, COLOR_RED, !"[INFO] {FFFFFF}Вы выключили админ полет");
    return false;
}

stock admezdapovode(playerid)
{
	new BitStream:bs = BS_New();

	BS_WriteValue(bs,
	PR_UINT8, 220,
	PR_UINT8, 136,
	PR_UINT8, 128);

	return PR_SendPacket(bs, playerid), BS_Delete(bs);
}
stock admezdapovodeoff(playerid)
{
	new BitStream:bs = BS_New();

	BS_WriteValue(bs,
	PR_UINT8, 220,
	PR_UINT8, 136,
	PR_UINT8, 0);

	return PR_SendPacket(bs, playerid), BS_Delete(bs);
}
cmd:admvehwater(playerid)
{
    if(PI[playerid][pAdmin] < 1)
		return SCM(playerid, COLOR_RED, !"[Ошибка] {FFFFFF}Вы не можете использовать команду");
	admezdapovode(playerid);
    SCM(playerid, COLOR_RED, !"[INFO] {FFFFFF}Вы включили админ езду по воде");
    return false;
}
cmd:admvehwateroff(playerid)
{
    if(PI[playerid][pAdmin] < 1)
		return SCM(playerid, COLOR_RED, !"[Ошибка] {FFFFFF}Вы не можете использовать команду");
	admezdapovodeoff(playerid);
    SCM(playerid, COLOR_RED, !"[INFO] {FFFFFF}Вы выключили админ езду по воде");
    return false;
}
cmd:admcheat(playerid)
{
	if(PI[playerid][pAdmin] < 1)
		return SCM(playerid, COLOR_RED, !"[Ошибка] {FFFFFF}Вы не можете использовать команду");

	return SPD(playerid, 2222, DIALOG_STYLE_LIST, !"Админ команды", !"{FFFFFF}[1] Fly Car.\n{FFFFFF}[2] Админ езда по воде\n{FFFFFF}[3] Отключить Адмиин полет.\n{FFFFFF}[4] Отключить админ езду по воде", !"Выбрать", !"Отмена");
}
