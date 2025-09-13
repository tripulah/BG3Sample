SampleSituationalScenario = {}
-- this scenario is not added to the random pool, since it's situational. in order to have it run on the next defeat, you have to set a combat's activedefeat to this id (see SubscribedEvents)

function SampleSituationalScenario.DefeatScenarioStarted(e)
    _P("Hello, you lost the combat encounter (and have 10+ gold) so you're seeing this message.")
    _D(e)
end

function SampleSituationalScenario.DefeatScenarioActionStarted(e)
    local status = e.status
    local victim = e.victim
    local captor = e.captor
    local defeatContext = e.defeatContext
end

function SampleSituationalScenario.DefeatScenarioActionCompleted(e)
    local status = e.status
    local victim = e.victim
    local captor = e.captor
    local defeatContext = e.defeatContext
    _P("DEFEATCONTEXT:")
    _D(defeatContext)
end

function SampleSituationalScenario.CleanUpDefeat(defeatContext)
    _P("CLEANING UP DEFEAT SCENARIO [" .. defeatContext.scenarioId .. "] FOR COMBAT: " .. defeatContext.combatGuid)
    local victims = defeatContext.victims
    local captors = defeatContext.captors

    Mods.AbsoluteDefeat.AD.CleanUpDefeat(defeatContext.combatGuid)
end

return SampleSituationalScenario