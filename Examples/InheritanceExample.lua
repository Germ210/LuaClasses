-- Import the LuaClasses module
local LuaClasses = require("Classes")

-- Function to print the values of a table
function PrintATable(Table)
    for i, Value in pairs(Table) do
        print(Value)
    end
end

-- Define a base class for entities
local EntityClass = {
    xpos = 10,
    ypos = 6,
    zpos = 27
}

-- Define a class for players inheriting from EntityClass
local PlayerClass = {
    health = 100, 
    name = "Player"
}
LuaClasses.Inherit(PlayerClass, EntityClass)

-- Create a new player object
local Player = LuaClasses.NewObject(PlayerClass, {
    xpos = 10,
    ypos = 6,
    zpos = 27,
    health = 100,
    name = "Jeff";
})

-- Print the attributes of the player object
PrintATable(Player)

-- Define a class for enemies
local Enemy = {
    health = 200, 
    name = "Enemy"
}





