local T, C, L = unpack(select(2, ...))
if C.skins.blizzard_frames ~= true then return end

----------------------------------------------------------------------------------------
--	Tutorial skin
----------------------------------------------------------------------------------------
local function LoadSkin()
	TutorialFrame:StripTextures()
	TutorialFrame:CreateBackdrop("Transparent")
	TutorialFrame.backdrop:Point("TOPLEFT", 6, 0)
	TutorialFrame.backdrop:Point("BOTTOMRIGHT", 0, -6)
	T.SkinNextPrevButton(TutorialFrameNextButton)
	T.SkinNextPrevButton(TutorialFramePrevButton)
	TutorialFrameOkayButton:SkinButton()
	TutorialFrameOkayButton:ClearAllPoints()
	TutorialFrameOkayButton:Point("LEFT", TutorialFrameNextButton, "RIGHT", 10, 0)
	T.SkinCloseButton(TutorialFrameCloseButton, TutorialFrame.backdrop)
end

tinsert(T.SkinFuncs["ShestakUI"], LoadSkin)