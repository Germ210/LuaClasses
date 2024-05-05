local LuaClasses = require('Classes')
local MyClass = {
    name = "MyClass",
    description = "This is a class"
}

-- Print MyClass attributes before extensiona
print("MyClass attributes before extension:")
for key, value in pairs(MyClass) do
    print(key, value)
end

-- Define new attributes to add to MyClass
local newAttributes = {
    attribute1 = "value1",
    attribute2 = "value2"
}

-- Extend MyClass with the new attributes
LuaClasses.ExtendClass(MyClass, newAttributes)

-- Print MyClass attributes after extension
print("\nMyClass attributes after extension:")
for key, value in pairs(MyClass) do
    print(key, value)
end