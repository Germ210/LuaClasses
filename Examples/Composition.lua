-- Import the LuaClasses module
local LuaClasses = require('Classes')

-- Define ComponentTable containing common attributes
local ComponentTable = {
    health = 100,
    name = "Entity"
}

-- Define PositionComponent with positional attributes
local PositionComponent = {
    xpos = 0,
    ypos = 0,
    zpos = 0
}

-- Define AttackComponent with attributes related to attacking
local AttackComponent = {
    damage = 10,
    attackSpeed = 1.5
}

-- Define DefendComponent with attributes related to defending
local DefendComponent = {
    armor = 20
}

-- Compile all components into a single class
local EntityClass = LuaClasses.Compile(ComponentTable, { PositionComponent, AttackComponent, DefendComponent })

-- Function to print the values of a table
function PrintATable(Table)
    for i, Value in pairs(Table) do
        print(Value)
    end
end

-- Create a new object based on the EntityClass
local Entity = LuaClasses.NewObject(EntityClass, {})

-- Print the attributes of the Entity object
PrintATable(Entity)
