local mt = {}
mt.__index = mt;
--Connect
function mt:Connect(func: () -> ())
    self.Amount += 1;
    self[self.Amount] = func;
end
--Destroy
function mt:Destroy()
    for i = self.Amount,1,-1 do
        self[i] = nil;
    end
    self.Amount = nil;
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
        return setmetatable({Amount = 0},mt)
    end
}