local mt = {}
mt.__index = mt;
--Connect
function mt:Connect(func: () -> ())
    table.insert(self,func)
end
--Destroy
function mt:Destroy()
    for i = #self,1,-1 do
        self[i] = nil;
    end
    table.clear(self)
    setmetatable(self,nil);
end
--Firing signal
function mt:Fire(...)
    for i = #self,1,-1 do
        local v = self[i]
        v(...);
    end
end
return {
    new = function()
        return setmetatable({},mt)
    end
}