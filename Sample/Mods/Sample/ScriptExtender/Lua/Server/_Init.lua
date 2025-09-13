local deps = {
    AbsoluteDefeatUUID = "755a8a72-407f-4f0d-9a33-274ac0f0b53d"
}

if not Ext.Mod.IsModLoaded(deps.AbsoluteDefeatUUID) then
    Ext.Utils.Error("AbsoluteDefeat is missing.")
end

---Ext.Require files at the path
---@param path string
---@param files string[]
function RequireFiles(path, files)
    for _, file in pairs(files) do
        Ext.Require(string.format("%s%s.lua", path, file))
    end
end

RequireFiles("Server/", {
    "SampleScenario",
    "SampleSituationalScenario",
    "LoadConfig",
    "ModEvents",
    "Events",
})