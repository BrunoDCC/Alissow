function onUse(cid, item, frompos, item2, topos)
if getPlayerStorageValue(cid,11550) == -1 then
	if math.random(100) <= 10 then
		doPlayerAddItem(cid,16101,1)
		doPlayerSendTextMessage(cid,22,"Parab�ns, voc� ganhou um Premium Scroll.")
	else
		doPlayerSendTextMessage(cid,22,"Voc� n�o conseguiu ganhar seu pr�mio.")
	end
	setPlayerStorageValue(cid,11550,1)
	else
		doPlayerSendTextMessage(cid,22,"Voc� j� tentou pegar o seu pr�mio.")
	end
	return true
end