local handlers = {
    ["SampleScenario_5f97de42-a995-478d-abbf-8bec78bcb754"] = SampleScenario,
    ["SampleForcedScenario_82e4f1ff-62b2-43f4-964b-8a7b56a43425"] = SampleSituationalScenario,
}

Ext.ModEvents.AbsoluteDefeat.DefeatScenarioStarted:Subscribe(function (e)
    _P("[Sample][Events] DefeatScenarioStarted")
    if handlers[e.scenarioId] ~= nil then
        handlers[e.scenarioId].DefeatScenarioStarted(e)
    end
end)

Ext.ModEvents.AbsoluteDefeat.DefeatScenarioActionStarted:Subscribe(function (e)
    _P("[Sample][Events] DefeatScenarioActionStarted")
    if handlers[e.scenarioId] ~= nil then
        handlers[e.scenarioId].DefeatScenarioActionStarted(e)
    end
end)

Ext.ModEvents.AbsoluteDefeat.DefeatScenarioActionCompleted:Subscribe(function (e)
    _P("[Sample][Events] DefeatScenarioActionCompleted")
    if handlers[e.scenarioId] ~= nil then
        handlers[e.scenarioId].DefeatScenarioActionCompleted(e)
    end
end)

Ext.ModEvents.AbsoluteDefeat.DefeatScenarioActionCompleted:Subscribe(function (e)
    _P("[Sample][Events] DefeatScenarioActionCompleted")
    if handlers[e.scenarioId] ~= nil then
        handlers[e.scenarioId].DefeatScenarioActionCompleted(e)
    end
end)

Ext.ModEvents.AbsoluteDefeat.DefeatScenarioRequestEnd:Subscribe(function (e)
    _P("[Sample][Events] DefeatScenarioRequestEnd")
    if handlers[e.scenarioId] ~= nil then
        handlers[e.scenarioId].DefeatScenarioRequestEnd(e)
    end
end)

Ext.ModEvents.AbsoluteDefeat.DefeatScenarioCompleted:Subscribe(function (e)

end)