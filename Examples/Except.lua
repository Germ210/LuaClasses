local LuaClasses = require('Classes')

function PrintATable(Table)
    for key, value in pairs(Table) do
        print(key, value)
    end
end

local Vehicle = {
    Year = 1985,
    Wings = true,
    Wheels = true,
    Doors = true,
    Engine = true,
    Color = "Red"
}

local Car = {}
LuaClasses.Inherit(Car, Vehicle)

-- Remove Wings attribute from Car
Car.Wings = nil

print("Car attributes after removing Wings:")
PrintATable(Car) -- Print Car attributes, Wings will not be printed

-- Create a Boat object
local Boat = {}
LuaClasses.Inherit(Boat, Vehicle)

-- Use ExceptMethods to remove specific attributes from Boat
LuaClasses.ExceptMethods(Boat, {"Wings", "Engine"})

print("\nBoat attributes after removing Wings and Engine:")
PrintATable(Boat) -- Print Boat attributes after removing Wings and Engine
