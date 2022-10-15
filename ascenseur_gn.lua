_menuPool = NativeUI.CreatePool()

--===================================================================================================================
-- Config
local position_ascenseur_1 = {
	{2504.32, -342.08, 93.09}, --RDC
	{2504.32, -342.08, 100.89}, --1
	{2504.32, -342.08, 104.7} --2
}

local position_ascenseur_2 = {
	{2502.12, -339.77, 93.09}, --RDC
	{2502.12, -339.77, 100.89}, --1
	{2502.12, -339.77, 104.7} --2
}

local position_ascenseur_3 = {
	{2494.94, -347.05, 93.09}, --RDC
	{2494.94, -347.05, 100.89}, --1
	{2494.94, -347.05, 104.7} --2
}

local position_ascenseur_4 = {
	{2497.27, -349.38, 93.09}, --RDC
	{2497.27, -349.38, 100.89}, --1
	{2497.27, -349.38, 104.7} --2
}

--===================================================================================================================
-- Ascenseur n°1
function etage(menu)
		--1
		local click = NativeUI.CreateItem("Etage 2", "~g~Aller à l'étage 2")
		menu:AddItem(click)
		--2
		local click = NativeUI.CreateItem("Etage 1", "~g~Aller à l'étage 1")
		menu:AddItem(click)
		--3
		local click = NativeUI.CreateItem("Etage RDC", "~g~Aller à l'étage RDC")
		menu:AddItem(click)
		
		menu.OnItemSelect = function(sender, item, index)
		
		if index == 1 then
			SetEntityCoords(GetPlayerPed(-1), position_ascenseur_1[1], false, false, false, true)
			mainMenu1:Visible(not mainMenu1:Visible())
		end
		if index == 2 then
			SetEntityCoords(GetPlayerPed(-1), position_ascenseur_1[2], false, false, false, true)
			mainMenu1:Visible(not mainMenu1:Visible())
		end
		if index == 3 then
			SetEntityCoords(GetPlayerPed(-1), position_ascenseur_1[3], false, false, false, true)
			mainMenu1:Visible(not mainMenu1:Visible())
		end
	end
end

--RDC
Citizen.CreateThread(function ()
	local pos = position_ascenseur_1[1]
	local posx = pos[1]
	local posy = pos[2]
	local posz = pos[3]
	while true do
		Citizen.Wait(0)
		DrawMarker(1, posx, posy, posz, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 1.0, 1.0, 1.0, 0, 0, 200, 50, false, false, 2, nil, nil, false)
		if GetDistanceBetweenCoords(GetEntityCoords(GetPlayerPed(-1)), posx, posy, posz, true ) < 1.5 then
			DrawSubtitle("Appuis sur [~g~E~s~] pour utliser l'ascenseur")
			_menuPool:ProcessMenus()
			if IsControlJustPressed(1, 51) then
				mainMenu1:Visible(not mainMenu1:Visible())
			end
		end
	end
end)

--1er
Citizen.CreateThread(function ()
	local pos = position_ascenseur_1[2]
	local posx = pos[1]
	local posy = pos[2]
	local posz = pos[3]
	while true do
		Citizen.Wait(0)
		DrawMarker(1, posx, posy, posz, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 1.0, 1.0, 1.0, 0, 0, 200, 50, false, false, 2, nil, nil, false)
		if GetDistanceBetweenCoords(GetEntityCoords(GetPlayerPed(-1)), posx, posy, posz, true ) < 1.5 then
			DrawSubtitle("Appuis sur [~g~E~s~] pour utliser l'ascenseur")
			_menuPool:ProcessMenus()
			if IsControlJustPressed(1, 51) then
				mainMenu1:Visible(not mainMenu1:Visible())
			end
		end
	end
end)

--2e
Citizen.CreateThread(function ()
	local pos = position_ascenseur_1[3]
	local posx = pos[1]
	local posy = pos[2]
	local posz = pos[3]
	while true do
		Citizen.Wait(0)
		DrawMarker(1, posx, posy, posz, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 1.0, 1.0, 1.0, 0, 0, 200, 50, false, false, 2, nil, nil, false)
		if GetDistanceBetweenCoords(GetEntityCoords(GetPlayerPed(-1)), posx, posy, posz, true ) < 1.5 then
			DrawSubtitle("Appuis sur [~g~E~s~] pour utliser l'ascenseur")
			_menuPool:ProcessMenus()
			if IsControlJustPressed(1, 51) then
				mainMenu1:Visible(not mainMenu1:Visible())
			end
		end
	end
end)

--===================================================================================================================
-- Ascenseur n°2
function etage(menu)
		--1
		local click = NativeUI.CreateItem("Etage 2", "~g~Aller à l'étage 2")
		menu:AddItem(click)
		--2
		local click = NativeUI.CreateItem("Etage 1", "~g~Aller à l'étage 1")
		menu:AddItem(click)
		--3
		local click = NativeUI.CreateItem("Etage RDC", "~g~Aller à l'étage RDC")
		menu:AddItem(click)
		
		menu.OnItemSelect = function(sender, item, index)
		
		if index == 1 then
			SetEntityCoords(GetPlayerPed(-1), position_ascenseur_2[1], false, false, false, true)
			mainMenu1:Visible(not mainMenu1:Visible())
		end
		if index == 2 then
			SetEntityCoords(GetPlayerPed(-1), position_ascenseur_2[2], false, false, false, true)
			mainMenu1:Visible(not mainMenu1:Visible())
		end
		if index == 3 then
			SetEntityCoords(GetPlayerPed(-1), position_ascenseur_2[3], false, false, false, true)
			mainMenu1:Visible(not mainMenu1:Visible())
		end
	end
end

--RDC
Citizen.CreateThread(function ()
	local pos = position_ascenseur_2[1]
	local posx = pos[1]
	local posy = pos[2]
	local posz = pos[3]
	while true do
		Citizen.Wait(0)
		DrawMarker(1, posx, posy, posz, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 1.0, 1.0, 1.0, 0, 0, 200, 50, false, false, 2, nil, nil, false)
		if GetDistanceBetweenCoords(GetEntityCoords(GetPlayerPed(-1)), posx, posy, posz, true ) < 1.5 then
			DrawSubtitle("Appuis sur [~g~E~s~] pour utliser l'ascenseur")
			_menuPool:ProcessMenus()
			if IsControlJustPressed(1, 51) then
				mainMenu1:Visible(not mainMenu1:Visible())
			end
		end
	end
end)

--1er
Citizen.CreateThread(function ()
	local pos = position_ascenseur_2[2]
	local posx = pos[1]
	local posy = pos[2]
	local posz = pos[3]
	while true do
		Citizen.Wait(0)
		DrawMarker(1, posx, posy, posz, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 1.0, 1.0, 1.0, 0, 0, 200, 50, false, false, 2, nil, nil, false)
		if GetDistanceBetweenCoords(GetEntityCoords(GetPlayerPed(-1)), posx, posy, posz, true ) < 1.5 then
			DrawSubtitle("Appuis sur [~g~E~s~] pour utliser l'ascenseur")
			_menuPool:ProcessMenus()
			if IsControlJustPressed(1, 51) then
				mainMenu1:Visible(not mainMenu1:Visible())
			end
		end
	end
end)

--2e
Citizen.CreateThread(function ()
	local pos = position_ascenseur_2[3]
	local posx = pos[1]
	local posy = pos[2]
	local posz = pos[3]
	while true do
		Citizen.Wait(0)
		DrawMarker(1, posx, posy, posz, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 1.0, 1.0, 1.0, 0, 0, 200, 50, false, false, 2, nil, nil, false)
		if GetDistanceBetweenCoords(GetEntityCoords(GetPlayerPed(-1)), posx, posy, posz, true ) < 1.5 then
			DrawSubtitle("Appuis sur [~g~E~s~] pour utliser l'ascenseur")
			_menuPool:ProcessMenus()
			if IsControlJustPressed(1, 51) then
				mainMenu1:Visible(not mainMenu1:Visible())
			end
		end
	end
end)

--===================================================================================================================
-- Ascenseur n°3
function etage(menu)
		--1
		local click = NativeUI.CreateItem("Etage 2", "~g~Aller à l'étage 2")
		menu:AddItem(click)
		--2
		local click = NativeUI.CreateItem("Etage 1", "~g~Aller à l'étage 1")
		menu:AddItem(click)
		--3
		local click = NativeUI.CreateItem("Etage RDC", "~g~Aller à l'étage RDC")
		menu:AddItem(click)
		
		menu.OnItemSelect = function(sender, item, index)
		
		if index == 1 then
			SetEntityCoords(GetPlayerPed(-1), position_ascenseur_3[1], false, false, false, true)
			mainMenu1:Visible(not mainMenu1:Visible())
		end
		if index == 2 then
			SetEntityCoords(GetPlayerPed(-1), position_ascenseur_3[2], false, false, false, true)
			mainMenu1:Visible(not mainMenu1:Visible())
		end
		if index == 3 then
			SetEntityCoords(GetPlayerPed(-1), position_ascenseur_3[3], false, false, false, true)
			mainMenu1:Visible(not mainMenu1:Visible())
		end
	end
end

--RDC
Citizen.CreateThread(function ()
	local pos = position_ascenseur_3[1]
	local posx = pos[1]
	local posy = pos[2]
	local posz = pos[3]
	while true do
		Citizen.Wait(0)
		DrawMarker(1, posx, posy, posz, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 1.0, 1.0, 1.0, 0, 0, 200, 50, false, false, 2, nil, nil, false)
		if GetDistanceBetweenCoords(GetEntityCoords(GetPlayerPed(-1)), posx, posy, posz, true ) < 1.5 then
			DrawSubtitle("Appuis sur [~g~E~s~] pour utliser l'ascenseur")
			_menuPool:ProcessMenus()
			if IsControlJustPressed(1, 51) then
				mainMenu1:Visible(not mainMenu1:Visible())
			end
		end
	end
end)

--1er
Citizen.CreateThread(function ()
	local pos = position_ascenseur_3[2]
	local posx = pos[1]
	local posy = pos[2]
	local posz = pos[3]
	while true do
		Citizen.Wait(0)
		DrawMarker(1, posx, posy, posz, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 1.0, 1.0, 1.0, 0, 0, 200, 50, false, false, 2, nil, nil, false)
		if GetDistanceBetweenCoords(GetEntityCoords(GetPlayerPed(-1)), posx, posy, posz, true ) < 1.5 then
			DrawSubtitle("Appuis sur [~g~E~s~] pour utliser l'ascenseur")
			_menuPool:ProcessMenus()
			if IsControlJustPressed(1, 51) then
				mainMenu1:Visible(not mainMenu1:Visible())
			end
		end
	end
end)

--2e
Citizen.CreateThread(function ()
	local pos = position_ascenseur_3[3]
	local posx = pos[1]
	local posy = pos[2]
	local posz = pos[3]
	while true do
		Citizen.Wait(0)
		DrawMarker(1, posx, posy, posz, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 1.0, 1.0, 1.0, 0, 0, 200, 50, false, false, 2, nil, nil, false)
		if GetDistanceBetweenCoords(GetEntityCoords(GetPlayerPed(-1)), posx, posy, posz, true ) < 1.5 then
			DrawSubtitle("Appuis sur [~g~E~s~] pour utliser l'ascenseur")
			_menuPool:ProcessMenus()
			if IsControlJustPressed(1, 51) then
				mainMenu1:Visible(not mainMenu1:Visible())
			end
		end
	end
end)

--===================================================================================================================
-- Ascenseur n°4
function etage(menu)
		--1
		local click = NativeUI.CreateItem("Etage 2", "~g~Aller à l'étage 2")
		menu:AddItem(click)
		--2
		local click = NativeUI.CreateItem("Etage 1", "~g~Aller à l'étage 1")
		menu:AddItem(click)
		--3
		local click = NativeUI.CreateItem("Etage RDC", "~g~Aller à l'étage RDC")
		menu:AddItem(click)
		
		menu.OnItemSelect = function(sender, item, index)
		
		if index == 1 then
			SetEntityCoords(GetPlayerPed(-1), position_ascenseur_4[1], false, false, false, true)
			mainMenu1:Visible(not mainMenu1:Visible())
		end
		if index == 2 then
			SetEntityCoords(GetPlayerPed(-1), position_ascenseur_4[2], false, false, false, true)
			mainMenu1:Visible(not mainMenu1:Visible())
		end
		if index == 3 then
			SetEntityCoords(GetPlayerPed(-1), position_ascenseur_4[3], false, false, false, true)
			mainMenu1:Visible(not mainMenu1:Visible())
		end
	end
end

--RDC
Citizen.CreateThread(function ()
	local pos = position_ascenseur_4[1]
	local posx = pos[1]
	local posy = pos[2]
	local posz = pos[3]
	while true do
		Citizen.Wait(0)
		DrawMarker(1, posx, posy, posz, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 1.0, 1.0, 1.0, 0, 0, 200, 50, false, false, 2, nil, nil, false)
		if GetDistanceBetweenCoords(GetEntityCoords(GetPlayerPed(-1)), posx, posy, posz, true ) < 1.5 then
			DrawSubtitle("Appuis sur [~g~E~s~] pour utliser l'ascenseur")
			_menuPool:ProcessMenus()
			if IsControlJustPressed(1, 51) then
				mainMenu1:Visible(not mainMenu1:Visible())
			end
		end
	end
end)

--1er
Citizen.CreateThread(function ()
	local pos = position_ascenseur_4[2]
	local posx = pos[1]
	local posy = pos[2]
	local posz = pos[3]
	while true do
		Citizen.Wait(0)
		DrawMarker(1, posx, posy, posz, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 1.0, 1.0, 1.0, 0, 0, 200, 50, false, false, 2, nil, nil, false)
		if GetDistanceBetweenCoords(GetEntityCoords(GetPlayerPed(-1)), posx, posy, posz, true ) < 1.5 then
			DrawSubtitle("Appuis sur [~g~E~s~] pour utliser l'ascenseur")
			_menuPool:ProcessMenus()
			if IsControlJustPressed(1, 51) then
				mainMenu1:Visible(not mainMenu1:Visible())
			end
		end
	end
end)

--2e
Citizen.CreateThread(function ()
	local pos = position_ascenseur_4[3]
	local posx = pos[1]
	local posy = pos[2]
	local posz = pos[3]
	while true do
		Citizen.Wait(0)
		DrawMarker(1, posx, posy, posz, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 1.0, 1.0, 1.0, 0, 0, 200, 50, false, false, 2, nil, nil, false)
		if GetDistanceBetweenCoords(GetEntityCoords(GetPlayerPed(-1)), posx, posy, posz, true ) < 1.5 then
			DrawSubtitle("Appuis sur [~g~E~s~] pour utliser l'ascenseur")
			_menuPool:ProcessMenus()
			if IsControlJustPressed(1, 51) then
				mainMenu1:Visible(not mainMenu1:Visible())
			end
		end
	end
end)



--===============================================================================================================
-- FONCTIONS

function DrawSubtitle(m_text, showtime)
	SetTextEntry_2('STRING')
	AddTextComponentString(m_text)
	DrawSubtitleTimed(showtime, 1)
end