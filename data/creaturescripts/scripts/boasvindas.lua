local message = [[Seja bem vindo ao Alissow OTs!

Utilize o canal help para maiores informa��es.

Para come�ar, pedimos ap�s a cria��o do char, v� ao bau do lado direito do templo para tentar pegar um bonus!

Enjoy xD]]
function onLogin(cid)
	local accountManager = getPlayerAccountManager(cid)
	if(accountManager == MANAGER_NEW) then
		doPlayerPopupFYI(cid, message)
	end
	return true
end