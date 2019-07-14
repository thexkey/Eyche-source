--rbxsig%QXpfVNpdYf7CMrVkJENKD+Me1fUqUSqFpgET8WRv/IISnwxF0WTkY14uIiZUb5WMW1HrHWn2l0wKEkSomlEgAY4jCKsT9HrmICUq+W662A/gyIYGKPQ61JpbrEmADy7D66emy2HLXM09OX8TU5ZQPCd8XZzZ37n5zqOwwzgjLig=%--coke's epical joinscript (thank)
--Security Check
local forceUpdate = false
local devMode = false
if settings():GetFFlag("ServerScriptProtection") == false and forceUpdate == true then
game:SetMessage("Outdated client detected. Please update.")
else
nc = game:GetService("NetworkClient")
nc:PlayerConnect(math.random(-100000, -20), "localhost", 53640)
game:SetMessage("Connecting to Server")

plr = game.Players.LocalPlayer
plr.Name = "Gamer"
plr.CharacterAppearance = "http://lion13.cf/Asset/CharacterFetch.ashx?userId=guest"
if plr.Name == "Gamer" then
plr.Name = "Guest " .. (-(plr.userId))
end
--extra player stuff
	plr:SetSuperSafeChat(false)
	pcall(function() plr:SetUnder13(false) end)
	pcall(function() plr:SetMembershipType(Enum.MembershipType.None) end)
	pcall(function() plr:SetAccountAge(200) end)

game.Players:SetChatStyle("ClassicAndBubble")
--game.Players.LocalPlayer:ChatMode("TextAndMenu")

nc.ConnectionAccepted:connect(function(peer, repl)
	game:SetMessageBrickCount()
	local mkr = repl:SendMarker()
	mkr.Received:connect(function()
		game:SetMessage("requesting char")
		repl:RequestCharacter()
		
		game:SetMessage("waiting 4 char")
		--because a while loop didnt work
		chngd = plr.Changed:connect(function(prop)
			if prop == "Character" then chngd:disconnect() end
		end)
		game:ClearMessage()
	end)
	if devMode == true then
	repl.Disconnection:connect(function(peer, lostConnection)
		if lostConnection == true then
		game:SetMessage("Status: Lost" .. " Peer: " .. peer)
		else
		game:SetMessage("Status: Not lost?" .. " Peer: " .. peer)
		end
	end)
	else
	repl.Disconnection:connect(function()
		game:SetMessage("You have lost the connection to the game **sad gamer moments**")
	end)
	end
end)
if devMode == true then
nc.ConnectionFailed:connect(function(peer, code, reason) game:SetMessage("Status: Failed" .. " Reason: " .. reason .. " Code: " .. code .. " Peer: " .. peer) end)
else
nc.ConnectionFailed:connect(function() game:SetMessage("Failed to connect to the game. **sad gamer moments**") end)
end
nc.ConnectionRejected:connect(function() game:SetMessage("This game is not available. Please try another", "WrongVersion", "WrongVersion") end)
--PS Scripts
if workspace:FindFirstChild("IsPersonalServer") ~= nil then
game:GetService("ScriptContext"):AddCoreScript(27, scriptContext,"CoreScripts/BuildToolsScripts/BuildToolManager")
end

--GUI fix
local GUIFix = false
if GUIFix == ture then
GUI = game:GetService("CoreGui")
GUI:WaitForChild("RobloxGui")
GUI = game:GetService("CoreGui").RobloxGui
function isInTable(tableValue, toFind)
	local found = false
	for _,v in pairs(tableValue) do
		if v==toFind then
			found = true
            break;
		end
	end
	return found
end
CoreGUI = {}
GUI.ChildAdded:connect(function(child)
	if isInTable(CoreGUI, child.Name) == true or string.find(child.Name, "CoreScripts/") ~= nil then
	print(child.Name .. " is not unique.")
	wait(0.5)
	if child.Name ~= "ChatFrame" and child.Name ~= "CoreScripts/PopupScript" then
	child:Remove()
	end
	else
	print(child.Name .. " is unique.")
	table.insert(CoreGUI, child.Name)
	end
end)

wait(10)
print("Recorded Children:")
	for _,v in pairs(CoreGUI) do
		print(v)
	end
	print("end")
wait(10)
print("Children:")
for _, object in pairs(GUI:GetChildren()) do
	print(object.Name)
end
print("end")
end
end
printidentity()
