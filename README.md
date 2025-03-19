# SimpleSignal
This module only has 3 methods: Connect,Fire,and Destroy.
```lua
local SignalLoader = requrie(ReplicatedStorage.Packages.SimpleSignal)
local Signal = SignalLoader.new()
```
## Connect
```lua
local Connection = Signal:Connect(function(...)

end)
task.wait(2)
Connection:Disconnect();
```
## Fire
```lua
Signal:Fire("Message")
```
## Destroy
```lua
Signal:Destroy()
```
## DisconnectAll
```lua
Signal:DisconnectAll()
```
Removes all current connections
## Installation
### Roblox

### Wally
```
simplesignal = "prophetouw/simplesignal@1.0.6"
```
### Github