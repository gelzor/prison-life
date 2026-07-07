local DiscordLib = loadstring(game:HttpGet"https://raw.githubusercontent.com/dawid-scripts/UI-Libs/main/discord%20lib.txt")()

local win = DiscordLib:Window("Arrayfield")
local tab = win:Server("Main", "")
local channel = tab:Channel("Examples")

channel:Label("Arrayfield Interface Suite")
channel:Label("by Arrays (ported to DiscordLib)")

channel:Button("Button Example", function()
    print("Pressed")
end)

local toggleFlag = false
channel:Toggle("Toggle Example", false, function(val)
    toggleFlag = val
    print(val)
end)

channel:Slider("Slider", 0, 100, 50, function(val)
    print(val)
end)

channel:Dropdown("Dropdown", {"Option 1", "Option 2", "Option 3"}, function(val)
    print(val)
end)

channel:Seperator()

local inputText = ""
channel:Input("Input", "Type here...", function(val)
    inputText = val
    print(val)
end)

win:Server("Tab 2", "")
win:Server("Tab 3", "http://www.roblox.com/asset/?id=6031075938")
