local lib = loadstring(game:HttpGet('https://b27xip.github.io/WallyUIv3/luascript/lib.lua', true))(); -- the ui lib

local w = lib:CreateWindow("Example Window") -- Creates the window

local b = w:CreateFolder("Example Folder") -- Creates the folder(U will put here your buttons,etc)

b:Label("Example Label",
    Color3.fromRGB(38,38,38), -- bgcolor
    Color3.fromRGB(255,255,255) -- txtcolor
)

b:Button("Button",function()
    print("Button Works!")
end)

b:Toggle("Toggle",function(bool)
    shared.toggle = bool
    print(shared.toggle)
end)

b:Dropdown("Dropdown",{"1","2","3"},true,function(mob) --true/false, replaces the current title "Dropdown" with the option that t
    print(mob)
end)

b:Bind("Bind",Enum.KeyCode.C,function() --Default bind
    print("Pressed Key!")
end)

b:ColorPicker("ColorPicker",Color3.fromRGB(255,0,0),function(color) --Default color
    print(color)
end)

b:Box("Box","number",function(value) -- "number" or "string"
    print(value)
end)

b:DestroyGUI() --Add Destroy GUI Button

b:GuiSettings() --Add Gui Settings Panel
