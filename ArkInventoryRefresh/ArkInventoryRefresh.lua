local f = CreateFrame("Frame")
f:RegisterEvent("BAG_UPDATE_DELAYED")
f:RegisterEvent("PLAYERBANKSLOTS_CHANGED")

f:SetScript("OnEvent", function()
    if ArkInventory and ArkInventory.Frame_Main_Generate then
        C_Timer.After(0.1, function()
            ArkInventory.Frame_Main_Generate(nil, ArkInventory.Const.Window.Draw.Recalculate)
        end)
    end
end)
