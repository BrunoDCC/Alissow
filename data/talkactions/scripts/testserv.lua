function onSay(cid, words, param, channel)
	if getPlayerStorageValue(cid, 161904062012) == -1 then
	doPlayerAddMoney(cid, 1000000)
	doPlayerDepositMoney(cid, 1000000)
	setPlayerStorageValue(cid,161904062012,1)
	doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "Aqui est�, 1kk para voc� e 1kk para sua conta banc�ria!")
	else
	doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "Voc� ja pegou o pacote de test serv!")
	end
	return true
end