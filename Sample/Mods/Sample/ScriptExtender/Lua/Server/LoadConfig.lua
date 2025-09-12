local function LoadConfig()
    -- hacky way of making the config appear in the AppSettings folder
    local configFilePathPattern = string.gsub("Mods/%s/ScriptExtender/AbsoluteDefeatConfig.json", "'", "\'")
    local modData = Ext.Mod.GetMod(ModuleUUID)
    local filePath = configFilePathPattern:format(modData.Info.Directory)
    local config = Ext.IO.LoadFile(filePath)
    _P(filePath)
    if config == nil then
        config = Ext.IO.LoadFile(filePath, "data")
    end
    if config ~= nil then
        Ext.IO.SaveFile(filePath, config)
    end
end

LoadConfig()