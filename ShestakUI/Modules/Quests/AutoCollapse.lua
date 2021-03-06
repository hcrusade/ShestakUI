﻿local T, C, L, _ = unpack(select(2, ...))
if C.automation.auto_collapse ~= true then return end

----------------------------------------------------------------------------------------
--	Auto collapse WatchFrame in instance
----------------------------------------------------------------------------------------
local frame = CreateFrame("Frame")
frame:RegisterEvent("PLAYER_ENTERING_WORLD")
frame:SetScript("OnEvent", function(self, event)
	if IsInInstance() then
		WatchFrame_CollapseExpandButton_OnClick(WatchFrame_CollapseExpandButton)
	elseif WatchFrame.collapsed and not InCombatLockdown() then
		WatchFrame_CollapseExpandButton_OnClick(WatchFrame_CollapseExpandButton)
	end
end)