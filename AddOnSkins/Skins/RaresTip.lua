local AS = unpack(AddOnSkins)

if not AS:CheckAddOn('RaresTip') then return end

function AS:RaresTip()
	AS:SkinTooltip(RaresTip)
	RaresTip:HookScript('OnUpdate', function(self)
		_G['RaresTipTextLeft1']:SetText(gsub(_G['RaresTipTextLeft1']:GetText(),'(:22)',':24:24:0:0:64:64:5:59:5:59'))
	end)
end

AS:RegisterSkin('RaresTip', AS.RaresTip)