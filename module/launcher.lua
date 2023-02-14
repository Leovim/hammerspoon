local hotkey = require "hs.hotkey"
local grid = require "hs.grid"
local window = require "hs.window"
local application = require "hs.application"
local appfinder = require "hs.appfinder"
local fnutils = require "hs.fnutils"

grid.setMargins({0, 0})

applist = {
    {mods={'ctrl', 'cmd'}, shortcut = '1',appname = 'OmniFocus'},
    {mods={'ctrl', 'cmd'}, shortcut = '2',appname = 'Google Chrome'},
    {mods={'ctrl', 'cmd'}, shortcut = '3',appname = 'iDingTalk'},
    {mods={'ctrl', 'cmd'}, shortcut = '4',appname = 'Maipo'},
    {mods={'ctrl', 'cmd'}, shortcut = '5',appname = 'Pycharm CE'},
    {mods={'ctrl', 'cmd'}, shortcut = '6',appname = 'IntelliJ IDEA CE'},
    {mods={'ctrl', 'cmd'}, shortcut = '7',appname = 'Logseq'},
    {mods={'ctrl', 'cmd'}, shortcut = 'T',appname = 'iTerm'},
    {mods={'ctrl', 'cmd'}, shortcut = 'V',appname = 'Visual Studio Code'},
    {mods={'ctrl', 'cmd'}, shortcut = 'G',appname = 'goneovim'},
    {mods={'ctrl'}, shortcut = '\\',appname = 'Bitwarden'},
}

fnutils.each(applist, function(entry)
    hotkey.bind(entry.mods, entry.shortcut, entry.appname, function()
        -- application.launchOrFocus(entry.appname)
        toggle_application(entry.appname)
    end)
end)

-- Toggle an application between being the frontmost app, and being hidden
function toggle_application(_app)
    local app = appfinder.appFromName(_app)
    if not app then
        application.launchOrFocus(_app)
        return
    end
    local mainwin = app:mainWindow()
    if mainwin then
        if mainwin == window.focusedWindow() then
            mainwin:application():hide()
        else
            mainwin:application():activate(true)
            mainwin:application():unhide()
            mainwin:focus()
        end
    end
end
