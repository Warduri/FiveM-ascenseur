_menuPool = NativeUI.CreatePool()

--===================================================================================================================
--======================================		Ascenseur n°1		=================================================

local position_ascenseur = {
	{-1074.99, -800, 19.29}, --RDC
	{-1074.99, -800, 19.29}, --1
	{-1086.28, -803.2, 19.25} --2
}

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
	end
end

--RDC
Citizen.CreateThread(function ()
	local pos = position_ascenseur[1]
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
--======================================		FONCTIONS		=================================================
--===============================================================================================================

function DrawSubtitle(m_text, showtime)
	SetTextEntry_2('STRING')
	AddTextComponentString(m_text)
	DrawSubtitleTimed(showtime, 1)
end