_menuPool = NativeUI.CreatePool()


--ASCENSEUR PM n°1----------------------------------------------------------------------------------------------

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


--ASCENSEUR PM n°2----------------------------------------------------------------------------------------------

mainMenu2 = NativeUI.CreateMenu("Ascenseur", "~b~Ascenseur de la police municipale")
_menuPool:Add(mainMenu2)
_menuPool:MouseControlsEnabled (false);
_menuPool:MouseEdgeEnabled (false);
_menuPool:ControlDisablingEnabled(false);

function etage2(menu)
	local click = NativeUI.CreateItem("Etage 3", "~g~Aller à l'étage 3")
	menu:AddItem(click)
		local click = NativeUI.CreateItem("Etage RDC", "~g~Aller à l'étage RDC")
		menu:AddItem(click)
		local click = NativeUI.CreateItem("Etage -1", "~g~Aller à l'étage 3")
		menu:AddItem(click)
		local click = NativeUI.CreateItem("Etage -2", "~g~Aller à l'étage 4")
		menu:AddItem(click)
		local click = NativeUI.CreateItem("Etage -3", "~g~Aller à l'étage 5")
		menu:AddItem(click)
		
		menu.OnItemSelect = function(sender, item, index)
		
		if index == 1 then
			SetEntityCoords(GetPlayerPed(-1), -1067.8, -831.69, 26.04, false, false, false, true)
			mainMenu2:Visible(not mainMenu2:Visible())
		end
		if index == 2 then
			SetEntityCoords(GetPlayerPed(-1), -1067.8, -831.69, 18.04, false, false, false, true)
			mainMenu2:Visible(not mainMenu2:Visible())
		end
		if index == 3 then
			SetEntityCoords(GetPlayerPed(-1), -1067.8, -831.69, 13.88, false, false, false, true)
			mainMenu2:Visible(not mainMenu2:Visible())
		end
		if index == 4 then
			SetEntityCoords(GetPlayerPed(-1), -1067.8, -831.69, 10.04, false, false, false, true)
			mainMenu2:Visible(not mainMenu2:Visible())
		end
		if index == 5 then
			SetEntityCoords(GetPlayerPed(-1), -1067.8, -831.69, 4.48, false, false, false, true)
			mainMenu2:Visible(not mainMenu2:Visible())
		end
	end
end

etage2(mainMenu2)
_menuPool:RefreshIndex()

--etage 3
Citizen.CreateThread(function ()
	while true do
		Citizen.Wait(0)
		DrawMarker(1, -1067.8, -831.69, 26.04, 0, 0, 0, 0, 0, 0, 1.0, 1.0, 0.5, 0, 0, 150, 155, 0, 0, 2, 0, 0, 0, 0)
		if GetDistanceBetweenCoords(GetEntityCoords(GetPlayerPed(-1)),-1067.8, -831.69, 26.04, true ) < 1.5 then
			DrawSubtitle("Appuis sur [~g~E~s~] pour utliser l'ascenseur")
			_menuPool:ProcessMenus()
			if IsControlJustPressed(1, 51) then
				mainMenu2:Visible(not mainMenu2:Visible())
			end
		end
	end
end)

--etage RDC
Citizen.CreateThread(function ()
	while true do
		Citizen.Wait(0)
		DrawMarker(1, -1067.8, -831.69, 18.04, 0, 0, 0, 0, 0, 0, 1.0, 1.0, 0.5, 0, 0, 150, 155, 0, 0, 2, 0, 0, 0, 0)
		if GetDistanceBetweenCoords(GetEntityCoords(GetPlayerPed(-1)), -1067.8, -831.69, 18.04, true ) < 1.5 then
			DrawSubtitle("Appuis sur [~g~E~s~] pour utliser l'ascenseur")
			_menuPool:ProcessMenus()
			if IsControlJustPressed(1, 51) then
				mainMenu2:Visible(not mainMenu2:Visible())
			end
		end
	end
end)

--etage -1
Citizen.CreateThread(function ()
	while true do
		Citizen.Wait(0)
		DrawMarker(1, -1067.8, -831.69, 13.88, 0, 0, 0, 0, 0, 0, 1.0, 1.0, 0.5, 0, 0, 150, 155, 0, 0, 2, 0, 0, 0, 0)
		if GetDistanceBetweenCoords(GetEntityCoords(GetPlayerPed(-1)), -1067.8, -831.69, 13.88, true ) < 1.5 then
			DrawSubtitle("Appuis sur [~g~E~s~] pour utliser l'ascenseur")
			_menuPool:ProcessMenus()
			if IsControlJustPressed(1, 51) then
				mainMenu2:Visible(not mainMenu2:Visible())
			end
		end
	end
end)

--etage -2
Citizen.CreateThread(function ()
	while true do
		Citizen.Wait(0)
		DrawMarker(1, -1067.8, -831.69, 10.04, 0, 0, 0, 0, 0, 0, 1.0, 1.0, 0.5, 0, 0, 150, 155, 0, 0, 2, 0, 0, 0, 0)
		if GetDistanceBetweenCoords(GetEntityCoords(GetPlayerPed(-1)), -1067.8, -831.69, 10.04, true ) < 1.5 then
			DrawSubtitle("Appuis sur [~g~E~s~] pour utliser l'ascenseur")
			_menuPool:ProcessMenus()
			if IsControlJustPressed(1, 51) then
				mainMenu2:Visible(not mainMenu2:Visible())
			end
		end
	end
end)

--etage -3
Citizen.CreateThread(function ()
	while true do
		Citizen.Wait(0)
		DrawMarker(1, -1067.8, -831.69, 4.48, 0, 0, 0, 0, 0, 0, 1.0, 1.0, 0.5, 0, 0, 150, 155, 0, 0, 2, 0, 0, 0, 0)
		if GetDistanceBetweenCoords(GetEntityCoords(GetPlayerPed(-1)), -1067.8, -831.69, 4.48, true ) < 1.5 then
			DrawSubtitle("Appuis sur [~g~E~s~] pour utliser l'ascenseur")
			_menuPool:ProcessMenus()
			if IsControlJustPressed(1, 51) then
				mainMenu2:Visible(not mainMenu2:Visible())
			end
		end
	end
end)



--ASCENSEUR GN Bâtiment administratif----------------------------------------------------------------------------------------------


asc_menu_bat_admin = NativeUI.CreateMenu("Ascenseur", "~b~Ascenseur de la gendarmerie nationale")
_menuPool:Add(asc_menu_bat_admin)
_menuPool:MouseControlsEnabled (false);
_menuPool:MouseEdgeEnabled (false);
_menuPool:ControlDisablingEnabled(false);

function etage3(menu)
	local click = NativeUI.CreateItem("Etage 2", "~g~Aller à l'étage 3")
	menu:AddItem(click)
		local click = NativeUI.CreateItem("Etage 1", "~g~Aller à l'étage 2")
		menu:AddItem(click)
		
		menu.OnItemSelect = function(sender, item, index)
		
		if index == 1 then
			SetEntityCoords(GetPlayerPed(-1), 2504.4, -433.12, 105.91, false, false, false, true)
			asc_menu_bat_admin:Visible(not asc_menu_bat_admin:Visible())
		end
		if index == 2 then
			SetEntityCoords(GetPlayerPed(-1), 2504.4, -433.12, 98.11, false, false, false, true)
			asc_menu_bat_admin:Visible(not asc_menu_bat_admin:Visible())
		end
	end
end

etage3(asc_menu_bat_admin)
_menuPool:RefreshIndex()

--etage 1
Citizen.CreateThread(function ()
	while true do
		Citizen.Wait(0)
		DrawMarker(1, 2504.4, -433.12, 98.11, 0, 0, 0, 0, 0, 0, 1.0, 1.0, 0.5, 0, 0, 150, 155, 0, 0, 2, 0, 0, 0, 0)
		if GetDistanceBetweenCoords(GetEntityCoords(GetPlayerPed(-1)),2504.4, -433.12, 98.11, true ) < 1.5 then
			DrawSubtitle("Appuis sur [~g~E~s~] pour utliser l'ascenseur")
			_menuPool:ProcessMenus()
			if IsControlJustPressed(1, 51) then
				asc_menu_bat_admin:Visible(not asc_menu_bat_admin:Visible())
			end
		end
	end
end)

--etage 2
Citizen.CreateThread(function ()
	while true do
		Citizen.Wait(0)
		DrawMarker(1, 2504.4, -433.12, 105.91, 0, 0, 0, 0, 0, 0, 1.0, 1.0, 0.5, 0, 0, 150, 155, 0, 0, 2, 0, 0, 0, 0)
		if GetDistanceBetweenCoords(GetEntityCoords(GetPlayerPed(-1)), 2504.4, -433.12, 105.91, true ) < 1.5 then
			DrawSubtitle("Appuis sur [~g~E~s~] pour utliser l'ascenseur")
			_menuPool:ProcessMenus()
			if IsControlJustPressed(1, 51) then
				asc_menu_bat_admin:Visible(not asc_menu_bat_admin:Visible())
			end
		end
	end
end)


--ASCENSEUR GN Bâtiment opérationnel ascenseur n°1----------------------------------------------------------------------------------------------

asc_menu_bat_op_1 = NativeUI.CreateMenu("Ascenseur", "~b~Ascenseur de la gendarmerie nationale")
_menuPool:Add(asc_menu_bat_op_1)
_menuPool:MouseControlsEnabled (false);
_menuPool:MouseEdgeEnabled (false);
_menuPool:ControlDisablingEnabled(false);

function etage4(menu)
	local click = NativeUI.CreateItem("Etage 2", "~g~Aller à l'étage 2")
	menu:AddItem(click)
		local click = NativeUI.CreateItem("Etage 1", "~g~Aller à l'étage 1")
		menu:AddItem(click)
		local click = NativeUI.CreateItem("Etage RDC", "~g~Aller à l'étage RDC")
		menu:AddItem(click)
		
		menu.OnItemSelect = function(sender, item, index)
		
		if index == 1 then
			SetEntityCoords(GetPlayerPed(-1), 2497.22, -349.41, 104.69, false, false, false, true)
			asc_menu_bat_op_1:Visible(not asc_menu_bat_op_1:Visible())
		end
		if index == 2 then
			SetEntityCoords(GetPlayerPed(-1), 2497.22, -349.41, 100.9, false, false, false, true)
			asc_menu_bat_op_1:Visible(not asc_menu_bat_op_1:Visible())
		end
		if index == 3 then
			SetEntityCoords(GetPlayerPed(-1), 2497.22, -349.41, 93.09, false, false, false, true)
			asc_menu_bat_op_1:Visible(not asc_menu_bat_op_1:Visible())
		end
	end
end

etage4(asc_menu_bat_op_1)
_menuPool:RefreshIndex()

--etage RDC
Citizen.CreateThread(function ()
	while true do
		Citizen.Wait(0)
		DrawMarker(1, 2497.22, -349.41, 93.09, 0, 0, 0, 0, 0, 0, 1.0, 1.0, 0.5, 0, 0, 150, 155, 0, 0, 2, 0, 0, 0, 0)
		if GetDistanceBetweenCoords(GetEntityCoords(GetPlayerPed(-1)),2497.22, -349.41, 93.09, true ) < 1.5 then
			DrawSubtitle("Appuis sur [~g~E~s~] pour utliser l'ascenseur")
			_menuPool:ProcessMenus()
			if IsControlJustPressed(1, 51) then
				asc_menu_bat_op_1:Visible(not asc_menu_bat_op_1:Visible())
			end
		end
	end
end)

--etage 1
Citizen.CreateThread(function ()
	while true do
		Citizen.Wait(0)
		DrawMarker(1, 2497.22, -349.41, 100.9, 0, 0, 0, 0, 0, 0, 1.0, 1.0, 0.5, 0, 0, 150, 155, 0, 0, 2, 0, 0, 0, 0)
		if GetDistanceBetweenCoords(GetEntityCoords(GetPlayerPed(-1)),2497.22, -349.41, 100.9, true ) < 1.5 then
			DrawSubtitle("Appuis sur [~g~E~s~] pour utliser l'ascenseur")
			_menuPool:ProcessMenus()
			if IsControlJustPressed(1, 51) then
				asc_menu_bat_op_1:Visible(not asc_menu_bat_op_1:Visible())
			end
		end
	end
end)

--etage 2
Citizen.CreateThread(function ()
	while true do
		Citizen.Wait(0)
		DrawMarker(1, 2497.22, -349.41, 104.69, 0, 0, 0, 0, 0, 0, 1.0, 1.0, 0.5, 0, 0, 150, 155, 0, 0, 2, 0, 0, 0, 0)
		if GetDistanceBetweenCoords(GetEntityCoords(GetPlayerPed(-1)),2497.22, -349.41, 104.69, true ) < 1.5 then
			DrawSubtitle("Appuis sur [~g~E~s~] pour utliser l'ascenseur")
			_menuPool:ProcessMenus()
			if IsControlJustPressed(1, 51) then
				asc_menu_bat_op_1:Visible(not asc_menu_bat_op_1:Visible())
			end
		end
	end
end)


--ASCENSEUR GN Bâtiment opérationnel ascenseur n°2----------------------------------------------------------------------------------------------

asc_menu_bat_op_2 = NativeUI.CreateMenu("Ascenseur", "~b~Ascenseur de la gendarmerie nationale")
_menuPool:Add(asc_menu_bat_op_2)
_menuPool:MouseControlsEnabled (false);
_menuPool:MouseEdgeEnabled (false);
_menuPool:ControlDisablingEnabled(false);

function etage5(menu)
	local click = NativeUI.CreateItem("Etage 2", "~g~Aller à l'étage 2")
	menu:AddItem(click)
		local click = NativeUI.CreateItem("Etage 1", "~g~Aller à l'étage 1")
		menu:AddItem(click)
		local click = NativeUI.CreateItem("Etage RDC", "~g~Aller à l'étage RDC")
		menu:AddItem(click)
		
		menu.OnItemSelect = function(sender, item, index)
		
		if index == 1 then
			SetEntityCoords(GetPlayerPed(-1), 2494.78, -347.09, 104.69, false, false, false, true)
			asc_menu_bat_op_2:Visible(not asc_menu_bat_op_2:Visible())
		end
		if index == 2 then
			SetEntityCoords(GetPlayerPed(-1), 2494.78, -347.09, 100.9, false, false, false, true)
			asc_menu_bat_op_2:Visible(not asc_menu_bat_op_2:Visible())
		end
		if index == 3 then
			SetEntityCoords(GetPlayerPed(-1), 2494.78, -347.09, 93.09, false, false, false, true)
			asc_menu_bat_op_2:Visible(not asc_menu_bat_op_2:Visible())
		end
	end
end

etage5(asc_menu_bat_op_2)
_menuPool:RefreshIndex()

--etage RDC
Citizen.CreateThread(function ()
	while true do
		Citizen.Wait(0)
		DrawMarker(1, 2494.78, -347.09, 93.09, 0, 0, 0, 0, 0, 0, 1.0, 1.0, 0.5, 0, 0, 150, 155, 0, 0, 2, 0, 0, 0, 0)
		if GetDistanceBetweenCoords(GetEntityCoords(GetPlayerPed(-1)),2494.78, -347.09, 93.09, true ) < 1.5 then
			DrawSubtitle("Appuis sur [~g~E~s~] pour utliser l'ascenseur")
			_menuPool:ProcessMenus()
			if IsControlJustPressed(1, 51) then
				asc_menu_bat_op_2:Visible(not asc_menu_bat_op_2:Visible())
			end
		end
	end
end)

--etage 1
Citizen.CreateThread(function ()
	while true do
		Citizen.Wait(0)
		DrawMarker(1, 2494.78, -347.09, 100.9, 0, 0, 0, 0, 0, 0, 1.0, 1.0, 0.5, 0, 0, 150, 155, 0, 0, 2, 0, 0, 0, 0)
		if GetDistanceBetweenCoords(GetEntityCoords(GetPlayerPed(-1)),2494.78, -347.09, 100.9, true ) < 1.5 then
			DrawSubtitle("Appuis sur [~g~E~s~] pour utliser l'ascenseur")
			_menuPool:ProcessMenus()
			if IsControlJustPressed(1, 51) then
				asc_menu_bat_op_2:Visible(not asc_menu_bat_op_2:Visible())
			end
		end
	end
end)

--etage 2
Citizen.CreateThread(function ()
	while true do
		Citizen.Wait(0)
		DrawMarker(1, 2494.78, -347.09, 104.69, 0, 0, 0, 0, 0, 0, 1.0, 1.0, 0.5, 0, 0, 150, 155, 0, 0, 2, 0, 0, 0, 0)
		if GetDistanceBetweenCoords(GetEntityCoords(GetPlayerPed(-1)),2494.78, -347.09, 104.69, true ) < 1.5 then
			DrawSubtitle("Appuis sur [~g~E~s~] pour utliser l'ascenseur")
			_menuPool:ProcessMenus()
			if IsControlJustPressed(1, 51) then
				asc_menu_bat_op_2:Visible(not asc_menu_bat_op_2:Visible())
			end
		end
	end
end)


--ASCENSEUR GN Bâtiment opérationnel ascenseur n°3----------------------------------------------------------------------------------------------

asc_menu_bat_op_3 = NativeUI.CreateMenu("Ascenseur", "~b~Ascenseur de la gendarmerie nationale")
_menuPool:Add(asc_menu_bat_op_3)
_menuPool:MouseControlsEnabled (false);
_menuPool:MouseEdgeEnabled (false);
_menuPool:ControlDisablingEnabled(false);

function etage6(menu)
	local click = NativeUI.CreateItem("Etage 2", "~g~Aller à l'étage 2")
	menu:AddItem(click)
		local click = NativeUI.CreateItem("Etage 1", "~g~Aller à l'étage 1")
		menu:AddItem(click)
		local click = NativeUI.CreateItem("Etage RDC", "~g~Aller à l'étage RDC")
		menu:AddItem(click)
		
		menu.OnItemSelect = function(sender, item, index)
		
		if index == 1 then
			SetEntityCoords(GetPlayerPed(-1), 2502.05, -339.8, 104.69, false, false, false, true)
			asc_menu_bat_op_3:Visible(not asc_menu_bat_op_3:Visible())
		end
		if index == 2 then
			SetEntityCoords(GetPlayerPed(-1), 2502.05, -339.8, 100.9, false, false, false, true)
			asc_menu_bat_op_3:Visible(not asc_menu_bat_op_3:Visible())
		end
		if index == 3 then
			SetEntityCoords(GetPlayerPed(-1), 2502.05, -339.8, 93.09, false, false, false, true)
			asc_menu_bat_op_3:Visible(not asc_menu_bat_op_3:Visible())
		end
	end
end

etage6(asc_menu_bat_op_3)
_menuPool:RefreshIndex()

--etage RDC
Citizen.CreateThread(function ()
	while true do
		Citizen.Wait(0)
		DrawMarker(1, 2502.05, -339.8, 93.09, 0, 0, 0, 0, 0, 0, 1.0, 1.0, 0.5, 0, 0, 150, 155, 0, 0, 2, 0, 0, 0, 0)
		if GetDistanceBetweenCoords(GetEntityCoords(GetPlayerPed(-1)),2502.05, -339.8, 93.09, true ) < 1.5 then
			DrawSubtitle("Appuis sur [~g~E~s~] pour utliser l'ascenseur")
			_menuPool:ProcessMenus()
			if IsControlJustPressed(1, 51) then
				asc_menu_bat_op_3:Visible(not asc_menu_bat_op_3:Visible())
			end
		end
	end
end)

--etage 1
Citizen.CreateThread(function ()
	while true do
		Citizen.Wait(0)
		DrawMarker(1, 2502.05, -339.8, 100.9, 0, 0, 0, 0, 0, 0, 1.0, 1.0, 0.5, 0, 0, 150, 155, 0, 0, 2, 0, 0, 0, 0)
		if GetDistanceBetweenCoords(GetEntityCoords(GetPlayerPed(-1)),2502.05, -339.8, 100.9, true ) < 1.5 then
			DrawSubtitle("Appuis sur [~g~E~s~] pour utliser l'ascenseur")
			_menuPool:ProcessMenus()
			if IsControlJustPressed(1, 51) then
				asc_menu_bat_op_3:Visible(not asc_menu_bat_op_3:Visible())
			end
		end
	end
end)

--etage 2
Citizen.CreateThread(function ()
	while true do
		Citizen.Wait(0)
		DrawMarker(1, 2502.05, -339.8, 104.69, 0, 0, 0, 0, 0, 0, 1.0, 1.0, 0.5, 0, 0, 150, 155, 0, 0, 2, 0, 0, 0, 0)
		if GetDistanceBetweenCoords(GetEntityCoords(GetPlayerPed(-1)),2502.05, -339.8, 104.69, true ) < 1.5 then
			DrawSubtitle("Appuis sur [~g~E~s~] pour utliser l'ascenseur")
			_menuPool:ProcessMenus()
			if IsControlJustPressed(1, 51) then
				asc_menu_bat_op_3:Visible(not asc_menu_bat_op_3:Visible())
			end
		end
	end
end)


--ASCENSEUR GN Bâtiment opérationnel ascenseur n°4----------------------------------------------------------------------------------------------

asc_menu_bat_op_4 = NativeUI.CreateMenu("Ascenseur", "~b~Ascenseur de la gendarmerie nationale")
_menuPool:Add(asc_menu_bat_op_4)
_menuPool:MouseControlsEnabled (false);
_menuPool:MouseEdgeEnabled (false);
_menuPool:ControlDisablingEnabled(false);

function etage7(menu)
	local click = NativeUI.CreateItem("Etage 2", "~g~Aller à l'étage 2")
	menu:AddItem(click)
		local click = NativeUI.CreateItem("Etage 1", "~g~Aller à l'étage 1")
		menu:AddItem(click)
		local click = NativeUI.CreateItem("Etage RDC", "~g~Aller à l'étage RDC")
		menu:AddItem(click)
		
		menu.OnItemSelect = function(sender, item, index)
		
		if index == 1 then
			SetEntityCoords(GetPlayerPed(-1), 2504.38, -342.21, 104.69, false, false, false, true)
			asc_menu_bat_op_4:Visible(not asc_menu_bat_op_4:Visible())
		end
		if index == 2 then
			SetEntityCoords(GetPlayerPed(-1), 2504.38, -342.21, 100.9, false, false, false, true)
			asc_menu_bat_op_4:Visible(not asc_menu_bat_op_4:Visible())
		end
		if index == 3 then
			SetEntityCoords(GetPlayerPed(-1), 2504.38, -342.21, 93.09, false, false, false, true)
			asc_menu_bat_op_4:Visible(not asc_menu_bat_op_4:Visible())
		end
	end
end

etage7(asc_menu_bat_op_4)
_menuPool:RefreshIndex()

--etage RDC
Citizen.CreateThread(function ()
	while true do
		Citizen.Wait(0)
		DrawMarker(1, 2504.38, -342.21, 93.09, 0, 0, 0, 0, 0, 0, 1.0, 1.0, 0.5, 0, 0, 150, 155, 0, 0, 2, 0, 0, 0, 0)
		if GetDistanceBetweenCoords(GetEntityCoords(GetPlayerPed(-1)),2504.38, -342.21, 93.09, true ) < 1.5 then
			DrawSubtitle("Appuis sur [~g~E~s~] pour utliser l'ascenseur")
			_menuPool:ProcessMenus()
			if IsControlJustPressed(1, 51) then
				asc_menu_bat_op_4:Visible(not asc_menu_bat_op_4:Visible())
			end
		end
	end
end)

--etage 1
Citizen.CreateThread(function ()
	while true do
		Citizen.Wait(0)
		DrawMarker(1, 2504.38, -342.21, 100.9, 0, 0, 0, 0, 0, 0, 1.0, 1.0, 0.5, 0, 0, 150, 155, 0, 0, 2, 0, 0, 0, 0)
		if GetDistanceBetweenCoords(GetEntityCoords(GetPlayerPed(-1)),2504.38, -342.21, 100.9, true ) < 1.5 then
			DrawSubtitle("Appuis sur [~g~E~s~] pour utliser l'ascenseur")
			_menuPool:ProcessMenus()
			if IsControlJustPressed(1, 51) then
				asc_menu_bat_op_4:Visible(not asc_menu_bat_op_4:Visible())
			end
		end
	end
end)

--etage 2
Citizen.CreateThread(function ()
	while true do
		Citizen.Wait(0)
		DrawMarker(1, 2504.38, -342.21, 104.69, 0, 0, 0, 0, 0, 0, 1.0, 1.0, 0.5, 0, 0, 150, 155, 0, 0, 2, 0, 0, 0, 0)
		if GetDistanceBetweenCoords(GetEntityCoords(GetPlayerPed(-1)),2504.38, -342.21, 104.69, true ) < 1.5 then
			DrawSubtitle("Appuis sur [~g~E~s~] pour utliser l'ascenseur")
			_menuPool:ProcessMenus()
			if IsControlJustPressed(1, 51) then
				asc_menu_bat_op_4:Visible(not asc_menu_bat_op_4:Visible())
			end
		end
	end
end)






-----------------------------------------------------------------------------------------------------------

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