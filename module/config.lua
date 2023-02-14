-- Specify Spoons which will be loaded
hspoon_list = {
    -- "AClock",
    -- "BingDaily",
    -- "Calendar",
    -- "CircleClock",
    -- "ClipShow",
    -- "CountDown",
    -- "FnMate",
    -- "HCalendar",
    "HSaria2",
    -- "HSearch",
    -- "KSheet",
    -- "SpeedMenu",
    -- "TimeFlow",
    -- "UnsplashZ",
    "WinWin",
}

-- appM environment keybindings. Bundle `id` is prefered, but application `name` will be ok.
hsapp_list = {
    {key = 'g', id = 'com.google.Chrome'},
    {key = 'i', name = 'IntelliJ IDEA CE'},
    {key = 'p', name = 'Pycharm CE'},
    {key = 'o', name = 'OmniFocus'},
    {key = 'l', name = 'Logseq'},
    {key = 'w', name = 'Maipo'},
    {key = 'd', name = 'DingTalk'},
    {key = 's', name = 'Safari'},
    {key = 'f', name = 'Finder'},
    {key = 'm', name = 'MarginNote'},
    -- {key = 'e', name = 'Emacs'},
    -- {key = 'p', name = 'mpv'},
}

-- Modal supervisor keybinding, which can be used to temporarily disable ALL modal environments.
hsupervisor_keys = {{"alt", "shift", "ctrl"}, "Q"}

-- Reload Hammerspoon configuration
hsreload_keys = {{"alt", "shift", "ctrl"}, "R"}

-- Toggle help panel of this configuration.
hshelp_keys = {{"alt", "shift"}, "/"}

-- aria2 RPC host address
hsaria2_host = "http://localhost:6800/jsonrpc"
-- aria2 RPC host secret
hsaria2_secret = "token"

----------------------------------------------------------------------------------------------------
-- Those keybindings below could be disabled by setting to {"", ""} or {{}, ""}

-- Window hints keybinding: Focuse to any window you want
hswhints_keys = {"cmd", "F12"}

-- appM environment keybinding: Application Launcher
hsappM_keys = {"alt", "Q"}

-- clipshowM environment keybinding: System clipboard reader
-- hsclipsM_keys = {"alt", "C"}

-- Toggle the display of aria2 frontend
hsaria2_keys = {{"ctrl", "alt", "shift"}, "A"}

-- Launch Hammerspoon Search
-- hsearch_keys = {"alt", "G"}

-- Read Hammerspoon and Spoons API manual in default browser
-- hsman_keys = {"alt", "H"}

-- countdownM environment keybinding: Visual countdown
-- hscountdM_keys = {"alt", "I"}

-- Lock computer's screen
-- hslock_keys = {"alt", "L"}

-- resizeM environment keybinding: Windows manipulation
hsresizeM_keys = {"alt", "R"}

-- cheatsheetM environment keybinding: Cheatsheet copycat
hscheats_keys = {{"ctrl", "alt", "shift"}, "S"}

-- Show digital clock above all windows
-- hsaclock_keys = {"alt", "T"}

-- Type the URL and title of the frontmost web page open in Google Chrome or Safari.
hstype_keys = {{"ctrl", "alt", "shift"}, "V"}

-- Toggle Hammerspoon console
-- hsconsole_keys = {"alt", "Z"}
