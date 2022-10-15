_menuPool = NativeUI.CreatePool()


--ASCENSEUR GN n°1----------------------------------------------------------------------------------------------

mainMenu1 = NativeUI.CreateMenu("Ascenseur", "~b~Ascenseur de la police municipale")
_menuPool:Add(mainMenu1)
_menuPool:MouseControlsEnabled (false);
_menuPool:MouseEdgeEnabled (false);
_menuPool:ControlDisablingEnabled(false);

function etage(menu)
	local click = NativeUI.CreateItem("Etage 5", "~g~Aller à l'étage 5")
	menu:AddItem(click)
		local click = NativeUI.CreateItem("Etage 4", "~g~Aller à l'étage 4")
		menu:AddItem(click)
		local click = NativeUI.CreateItem("Etage 3", "~g~Aller à l'étage 3")
		menu:AddItem(click)
		local click = NativeUI.CreateItem("Etage 2", "~g~Aller à l'étage 2")
		menu:AddItem(click)
		local click = NativeUI.CreateItem("Etage 1", "~g~Aller à l'étage 1")
		menu:AddItem(click)
		local click = NativeUI.CreateItem("Etage RDC", "~g~Aller à l'étage RDC")
		menu:AddItem(click)
		local click = NativeUI.CreateItem("Etage -1", "~g~Aller à l'étage -1")
		menu:AddItem(click)
		local click = NativeUI.CreateItem("Etage -2", "~g~Aller à l'étage -2")
		menu:AddItem(click)
		local click = NativeUI.CreateItem("Etage -3", "~g~Aller à l'étage -3")
		menu:AddItem(click)
		
		menu.OnItemSelect = function(sender, item, index)
		
		if index == 1 then
			SetEntityCoords(GetPlayerPed(-1), -1098.18, -847.99, 36.7, false, false, false, true)
			mainMenu1:Visible(not mainMenu1:Visible())
		end
		if index == 2 then
			SetEntityCoords(GetPlayerPed(-1), -1098.18, -847.99, 33.36, false, false, false, true)
			mainMenu1:Visible(not mainMenu1:Visible())
		end
		if index == 3 then
			SetEntityCoords(GetPlayerPed(-1), -1098.18, -847.99, 29.76, false, false, false, true)
			mainMenu1:Visible(not mainMenu1:Visible())
		end
		if index == 4 then
			SetEntityCoords(GetPlayerPed(-1), -1098.18, -847.99, 25.83, false, false, false, true)
			mainMenu1:Visible(not mainMenu1:Visible())
		end
		if index == 5 then
			SetEntityCoords(GetPlayerPed(-1), -1098.18, -847.99, 22.03, false, false, false, true)
			mainMenu1:Visible(not mainMenu1:Visible())
		end
		if index == 6 then
			SetEntityCoords(GetPlayerPed(-1), -1098.18, -847.99, 18.0, false, false, false, true)
			mainMenu1:Visible(not mainMenu1:Visible())
		end
		if index == 7 then
			SetEntityCoords(GetPlayerPed(-1), -1098.18, -847.99, 12.69, false, false, false, true)
			mainMenu1:Visible(not mainMenu1:Visible())
		end
		if index == 8 then
			SetEntityCoords(GetPlayerPed(-1), -1098.18, -847.99, 9.27, false, false, false, true)
			mainMenu1:Visible(not mainMenu1:Visible())
		end
		if index == 9 then
			SetEntityCoords(GetPlayerPed(-1), -1098.18, -847.99, 3.88, false, false, false, true)
			mainMenu1:Visible(not mainMenu1:Visible())
		end
	end
end


etage(mainMenu1)
_menuPool:RefreshIndex()

--etage 5
Citizen.CreateThread(function ()
	while true do
		Citizen.Wait(0)
		DrawMarker(1, -1098.18, -847.99, 36.7, 0, 0, 0, 0, 0, 0, 1.0, 1.0, 0.5, 0, 0, 150, 155, 0, 0, 2, 0, 0, 0, 0)
		if GetDistanceBetweenCoords(GetEntityCoords(GetPlayerPed(-1)), -1098.18, -847.99, 36.7, true ) < 1.5 then
			DrawSubtitle("Appuis sur [~g~E~s~] pour utliser l'ascenseur")
			_menuPool:ProcessMenus()
			if IsControlJustPressed(1, 51) then
				mainMenu1:Visible(not mainMenu1:Visible())
			end
		end
	end
end)

--etage 4
Citizen.CreateThread(function ()
	while true do
		Citizen.Wait(0)
		DrawMarker(1, -1098.18, -847.99, 33.36, 0, 0, 0, 0, 0, 0, 1.0, 1.0, 0.5, 0, 0, 150, 155, 0, 0, 2, 0, 0, 0, 0)
		if GetDistanceBetweenCoords(GetEntityCoords(GetPlayerPed(-1)), -1098.18, -847.99, 33.36, true ) < 1.5 then
			DrawSubtitle("Appuis sur [~g~E~s~] pour utliser l'ascenseur")
			_menuPool:ProcessMenus()
			if IsControlJustPressed(1, 51) then
				mainMenu1:Visible(not mainMenu1:Visible())
			end
		end
	end
end)

--etage 3
Citizen.CreateThread(function ()
	while true do
		Citizen.Wait(0)
		DrawMarker(1, -1098.18, -847.99, 29.76, 0, 0, 0, 0, 0, 0, 1.0, 1.0, 0.5, 0, 0, 150, 155, 0, 0, 2, 0, 0, 0, 0)
		if GetDistanceBetweenCoords(GetEntityCoords(GetPlayerPed(-1)), -1098.18, -847.99, 29.76, true ) < 1.5 then
			DrawSubtitle("Appuis sur [~g~E~s~] pour utliser l'ascenseur")
			_menuPool:ProcessMenus()
			if IsControlJustPressed(1, 51) then
				mainMenu1:Visible(not mainMenu1:Visible())
			end
		end
	end
end)

--etage 2
Citizen.CreateThread(function ()
	while true do
		Citizen.Wait(0)
		DrawMarker(1, -1098.18, -847.99, 25.83, 0, 0, 0, 0, 0, 0, 1.0, 1.0, 0.5, 0, 0, 150, 155, 0, 0, 2, 0, 0, 0, 0)
		if GetDistanceBetweenCoords(GetEntityCoords(GetPlayerPed(-1)), -1098.18, -847.99, 25.83, true ) < 1.5 then
			DrawSubtitle("Appuis sur [~g~E~s~] pour utliser l'ascenseur")
			_menuPool:ProcessMenus()
			if IsControlJustPressed(1, 51) then
				mainMenu1:Visible(not mainMenu1:Visible())
			end
		end
	end
end)

--etage 1
Citizen.CreateThread(function ()
	while true do
		Citizen.Wait(0)
		DrawMarker(1, -1098.18, -847.99, 22.03, 0, 0, 0, 0, 0, 0, 1.0, 1.0, 0.5, 0, 0, 150, 155, 0, 0, 2, 0, 0, 0, 0)
		if GetDistanceBetweenCoords(GetEntityCoords(GetPlayerPed(-1)), -1098.18, -847.99, 22.03, true ) < 1.5 then
			DrawSubtitle("Appuis sur [~g~E~s~] pour utliser l'ascenseur")
			_menuPool:ProcessMenus()
			if IsControlJustPressed(1, 51) then
				mainMenu1:Visible(not mainMenu1:Visible())
			end
		end
	end
end)

--etage RDC
Citizen.CreateThread(function ()
	while true do
		Citizen.Wait(0)
		DrawMarker(1, -1098.18, -847.99, 18.0, 0, 0, 0, 0, 0, 0, 1.0, 1.0, 0.5, 0, 0, 150, 155, 0, 0, 2, 0, 0, 0, 0)
		if GetDistanceBetweenCoords(GetEntityCoords(GetPlayerPed(-1)), -1098.18, -847.99, 18.0, true ) < 1.5 then
			DrawSubtitle("Appuis sur [~g~E~s~] pour utliser l'ascenseur")
			_menuPool:ProcessMenus()
			if IsControlJustPressed(1, 51) then
				mainMenu1:Visible(not mainMenu1:Visible())
			end
		end
	end
end)

--etage -1
Citizen.CreateThread(function ()
	while true do
		Citizen.Wait(0)
		DrawMarker(1, -1098.18, -847.99, 12.69, 0, 0, 0, 0, 0, 0, 1.0, 1.0, 0.5, 0, 0, 150, 155, 0, 0, 2, 0, 0, 0, 0)
		if GetDistanceBetweenCoords(GetEntityCoords(GetPlayerPed(-1)), -1098.18, -847.99, 12.69, true ) < 1.5 then
			DrawSubtitle("Appuis sur [~g~E~s~] pour utliser l'ascenseur")
			_menuPool:ProcessMenus()
			if IsControlJustPressed(1, 51) then
				mainMenu1:Visible(not mainMenu1:Visible())
			end
		end
	end
end)

--etage -2
Citizen.CreateThread(function ()
	while true do
		Citizen.Wait(0)
		DrawMarker(1, -1098.18, -847.99, 9.27, 0, 0, 0, 0, 0, 0, 1.0, 1.0, 0.5, 0, 0, 150, 155, 0, 0, 2, 0, 0, 0, 0)
		if GetDistanceBetweenCoords(GetEntityCoords(GetPlayerPed(-1)), -1098.18, -847.99, 9.27, true ) < 1.5 then
			DrawSubtitle("Appuis sur [~g~E~s~] pour utliser l'ascenseur")
			_menuPool:ProcessMenus()
			if IsControlJustPressed(1, 51) then
				mainMenu1:Visible(not mainMenu1:Visible())
			end
		end
	end
end)

--etage -3
Citizen.CreateThread(function ()
	while true do
		Citizen.Wait(0)
		DrawMarker(1, -1098.18, -847.99, 3.88, 0, 0, 0, 0, 0, 0, 1.0, 1.0, 0.5, 0, 0, 150, 155, 0, 0, 2, 0, 0, 0, 0)
		if GetDistanceBetweenCoords(GetEntityCoords(GetPlayerPed(-1)), -1098.18, -847.99, 3.88, true ) < 1.5 then
			DrawSubtitle("Appuis sur [~g~E~s~] pour utliser l'ascenseur")
			_menuPool:ProcessMenus()
			if IsControlJustPressed(1, 51) then
				mainMenu1:Visible(not mainMenu1:Visible())
			end
		end
	end
end)

--===============================================================================================================
--======================================		FONCTIONS		=================================================
--===============================================================================================================

function notify(text)
    SetNotificationTextEntry("STRING")
    AddTextComponentString(text)
    DrawNotification(true, true)
end

function DrawSubtitle(m_text, showtime)
	SetTextEntry_2('STRING')
	AddTextComponentString(m_text)
	DrawSubtitleTimed(showtime, 1)
end