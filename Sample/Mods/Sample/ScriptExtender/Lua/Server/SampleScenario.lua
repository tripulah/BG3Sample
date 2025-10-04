SampleScenario = {}
-- this scenario is added to the random scenario pool when Situational is set to false.

function SampleScenario.DefeatScenarioStarted(e)
    SampleScenario.StartSampleScript(e.captors, e.victims)
end

function SampleScenario.DefeatScenarioActionStarted(e)
    local status = e.status
    local victim = e.victim
    local captor = e.captor
    local defeatContext = e.defeatContext
end

function SampleScenario.DefeatScenarioActionCompleted(e)
    local status = e.status
    local victim = e.victim
    local captor = e.captor
    local defeatContext = e.defeatContext
    _P("DEFEATCONTEXT:")
    _D(defeatContext)
    -- end defeat
    if status == "AD_ACTION_CAPTOR_SAMPLE" then
        SampleScenario.CleanUpDefeat(defeatContext)
    end
end

-- sample defeated party logic
function SampleScenario.StartSampleScript(captors, victims)
    local mainVictim = victims[math.random(#victims)]
    for i, captor in ipairs(captors) do
        Osi.ApplyStatus(captor, "AD_ACTION_CAPTOR_SAMPLE", 30, 1, victims[math.random(#victims)])
    end
end

function SampleScenario.CleanUpDefeat(defeatContext)
    _P("CLEANING UP DEFEAT SCENARIO [" .. defeatContext.scenarioId .. "] FOR COMBAT: " .. defeatContext.combatGuid)
    local victims = defeatContext.victims
    local captors = defeatContext.captors

    for _,captor in pairs(captors) do
        Osi.RemoveStatus(captor, "AD_ACTION_CAPTOR_SAMPLE") -- note that all "AD_ACTION" statuses are automatically removed when the framework cleans up a defeat scenario.
    end

    Mods.AbsoluteDefeat.AD.CleanUpDefeat(defeatContext.combatGuid)
end

function SampleScenario.DefeatScenarioRequestEnd(defeatContext)
    SampleScenario.CleanUpDefeat(defeatContext)
end

return SampleScenario