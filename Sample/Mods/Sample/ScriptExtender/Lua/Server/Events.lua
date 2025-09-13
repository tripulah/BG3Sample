Ext.Osiris.RegisterListener("CombatEnded", 1, "before", function(combatGuid) -- good to override right before the combat ends
    if Osi.PartyGetGold(Osi.GetHostCharacter()) > 10 then
        -- you can override any combat with a specific scenario
        Mods.AbsoluteDefeat.AD.OverrideDefeatScenarioForCombat(combatGuid, "SampleForcedScenario_82e4f1ff-62b2-43f4-964b-8a7b56a43425") 
    end
end)