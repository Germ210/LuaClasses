local LuaClasses = require('Classes')
function PrintATable(Table)
    for i, Value in pairs(Table) do
        print(Value)
    end
end

local Birds = {
    beak = "long",
    wings = "short",
    tail = "short",
    I_Belive_I_Can_Fly = function ()
        print("I am flying!")
    end
}

local Non_flying_birds = {
    Is_A_Penguin = true
}
LuaClasses.Inherit(Non_flying_birds, Birds)
LuaClasses.ExceptMethods(Non_flying_birds, {"I_Belive_I_Can_Fly"})

local Penguin = LuaClasses.NewObject(Non_flying_birds, 
{
    beak = "Medium", 
    wings = "Medium",
    tail = "Short",
    Good_At_Sliding = true;
})
PrintATable(Penguin)

Components = {
    
 Fly = function()
   local feet = math.random(0, 1000)
    print("I am flying ".. feet .." feet in the air!")
end,
Era = "Jurrasic",
Mammal = false,
Species = "T-Rex";
xPos = 100,
yPos = 0,
zPos = 30,
BeatenBoss = false;
}
local Dinosour = {
    Nails = "Long",
    Arms = "Short",
    Is_Predator = true
}
LuaClasses.Compile(Dinosour, Components)
local T_Rex = LuaClasses.NewObject(Dinosour, {})
LuaClasses.ExceptMethods(T_Rex, 
{
    "BeatenBoss",
    "xPos",
    "yPos",
    "zPos",
    "Fly"
})
PrintATable(T_Rex)
Components.Fly()
