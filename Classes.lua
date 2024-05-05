local LuaClasses = {
    NewObject = function(ClassTable, ObjectTable)
        assert(type(ClassTable) == "table", "Expected a table for ClassTable")
        assert(type(ObjectTable) == "table", "Expected a table for ObjectTable")
        local instance = {}
        for k, v in pairs(ClassTable) do
            instance[k] = v
        end
        for k, v in pairs(ObjectTable or {}) do
            instance[k] = v
        end
        return instance
    end,

    Inherit = function(self, ClassTable)
        assert(type(ClassTable) == "table", "Expected a table for ClassTable")
        for k, v in pairs(ClassTable) do
            self[k] = v
        end
    end,

    Compile = function(ComponentTable, InsertedComponents)
        assert(type(ComponentTable) == "table", "Expected a table for ComponentTable")
        assert(type(InsertedComponents) == "table", "Expected a table for InsertedComponents")
        local Class = {}
        for key, value in pairs(ComponentTable) do
            Class[key] = value
        end
        for _, Component in ipairs(InsertedComponents) do
            for key, value in pairs(Component) do
                if Class[key] == nil then
                    Class[key] = value
                else
                    Class[key] = value
                end
            end
        end
        
        return Class
    end,
    
    

    ExceptMethods = function(ObjectTable, Methods)
        assert(type(ObjectTable) == "table", "Expected a table for ObjectTable")
        assert(type(Methods) == "table", "Expected a table for Methods")
        for _, Method in ipairs(Methods) do
            rawset(ObjectTable, Method, nil)
        end
    end,

        ExtendClass = function(ClassTable, NewAttributes)
            for key, value in pairs(NewAttributes) do
                ClassTable[key] = value
            end
        end;
    }
        

return LuaClasses

