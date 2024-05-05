-- Import the LuaClasses module
local LuaClasses = require('Classes')

-- Function to print the values of a table
function PrintATable(Table)
    for i, Value in pairs(Table) do
        print(Value)
    end
end

-- Define a class
local Class = {
    Name = "Class",
    Description = "A class that is meant to teach how to use this library"
}

-- Create a new object based on the Class
local Object = LuaClasses.NewObject(Class, {
    Name = "Object",
    Description = "An object that is meant to teach how to use this library"
})

-- Print the attributes of the object
PrintATable(Object)
