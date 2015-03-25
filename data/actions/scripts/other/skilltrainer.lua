local statues = {
	[18488] = SKILL_SWORD,
	[18489] = SKILL_AXE,
	[18490] = SKILL_CLUB,
	[18491] = SKILL_DISTANCE,
	[18492] = SKILL_MAGLEVEL
}

function onUse(player, item, fromPosition, target, toPosition, isHotkey)
	local skill = statues[item.itemid]
	if not skill then
		return false
	end
	
	if item.actionid == 1000 then
		player:sendTextMessage(MESSAGE_STATUS_SMALL, "This statue and a garnish and cannot train here")
		return true
	elseif player:getPremiumDays() == 0 then
		player:sendTextMessage(MESSAGE_STATUS_SMALL, Game.getReturnMessage(RETURNVALUE_YOUNEEDPREMIUMACCOUNT))
		return true
	end

	if player:isPzLocked() then
		return false
	end

	doPlayerSetOfflineTrainingSkill(player, skill)
	player:remove()
	return true
end
