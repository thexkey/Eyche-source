
<!-- saved from url=(0046)http://66.78.126.165/game/Host2.php?port=53640 -->
<html><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8"></head><body>%L+x10XD/+KHPOhxZC9XvhPl+uDgDl+rgtuefi0IISBIXMo8Jl7YLQti29BJkPnjOCwkSiNMshZMR6WoRFGiEdLh0SD1JFl9pGTqFqfdfS7Be+hmQvlyqe2XC89w/U+gAYwLjBv1TRkzxrDLUhjTKGygrA8uNDEXZJEIoZf/FEk0=%game:Load('rbxasset://temp.rbxl')
local scriptContext = game:GetService('ScriptContext')
pcall(function() scriptContext:AddStarterScript(libraryRegistrationScriptAssetID) end)
scriptContext.ScriptsDisabled = false
game:SetPlaceID(1, false)
game:GetService("ChangeHistoryService"):SetEnabled(false)
pcall(function() settings().Network.UseInstancePacketCache = true end)
pcall(function() settings().Network.UsePhysicsPacketCache = true end)
--pcall(function() settings()["Task Scheduler"].PriorityMethod = Enum.PriorityMethod.FIFO end)
pcall(function() settings()["Task Scheduler"].PriorityMethod = Enum.PriorityMethod.AccumulatedError end)
--settings().Network.PhysicsSend = 1 -- 1==RoundRobin
settings().Network.PhysicsSend = Enum.PhysicsSendMethod.ErrorComputation2
settings().Network.ExperimentalPhysicsEnabled = true
settings().Network.WaitingForCharacterLogRate = 100
pcall(function() settings().Diagnostics:LegacyScriptMode() end)
game.Lighting.GlobalShadows = true
game:GetService("RunService"):Run()
game:GetService("NetworkServer"):Start(53640)
pcall(function() game:GetService("Players"):SetChatStyle(Enum.ChatStyle.Both) end)
<script type="text/javascript" async="" src="./Host2_files/2025b8e6a7c18f2f81.js.download"></script></body></html>