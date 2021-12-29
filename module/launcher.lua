local hotkey = require "hs.hotkey"
local grid = require "hs.grid"
local window = require "hs.window"
local application = require "hs.application"
local appfinder = require "hs.appfinder"
local fnutils = require "hs.fnutils"

grid.setMargins({0, 0})

applist = {
    {shortcut = '1',appname = 'OmniFocus'},
    {shortcut = '2',appname = 'Google Chrome'},
    {shortcut = '3',appname = 'DingTalk'},
    {shortcut = '4',appname = 'Maipo'},
    {shortcut = '5',appname = 'Pycharm CE'},
    {shortcut = '6',appname = 'IntelliJ IDEA CE'},
    {shortcut = '7',appname = 'Logseq'},
    {shortcut = 'T',appname = 'iTerm'},
}

fnutils.each(applist, function(entry)
    hotkey.bind({'ctrl', 'cmd'}, entry.shortcut, entry.appname, function()
        application.launchOrFocus(entry.appname)
        -- toggle_application(applist[i].appname)
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
