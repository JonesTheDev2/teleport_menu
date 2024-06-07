local circleCoords = vector3(-896.51, -2408.96, 14.01) -- Coordinates for the center of the circle
local circleRadius = 0.5 -- Radius of the circle

-- Function to draw the circle
function DrawCircle()
    DrawMarker(1, circleCoords.x, circleCoords.y, circleCoords.z - 1, 0, 0, 0, 0, 0, 0, circleRadius*2.0, circleRadius*2.0, 0.1, 102,51,153, 200, false, true, 2, nil, nil, false)
end

-- Function to handle player interaction with the circle
function HandleCircleInteraction()
    local playerPed = PlayerPedId()
    local playerCoords = GetEntityCoords(playerPed)
    local distance = #(playerCoords - circleCoords)

    if distance < circleRadius then

        -- Check for player input
        if IsControlJustReleased(0, 47) then -- "G" key
            -- Display menu
            OpenMenu()
        end
    end
end

-- Function to open the menu
function OpenMenu()
    -- Display menu options
    WarMenu.CreateMenu('circle_menu', 'Choose Option')
    
    -- Set menu position to the top right corner
    WarMenu.SetMenuX('circle_menu', 0.65) -- Adjust X position to align with the right edge
    WarMenu.SetMenuY('circle_menu', 0.05) -- Adjust Y position to align with the top edge
    
    WarMenu.SetMenuWidth('circle_menu', 0.3)

    WarMenu.CreateSubMenu('option1', 'circle_menu', 'option1') -- set option1 to whatever you want
    WarMenu.CreateSubMenu('option2', 'circle_menu', 'option2') -- set option2 to whatever you want
    WarMenu.CreateSubMenu('option3', 'circle_menu', 'option3') -- set option3 to whatever you want

    WarMenu.OpenMenu('circle_menu')

    while WarMenu.IsMenuOpened('circle_menu') do
        Citizen.Wait(0)
        if WarMenu.MenuButton('option1', 'circle_menu') then -- set option1 to what you put above
            TriggerServerEvent('routingbucket:SetRoutingBucket1')
        elseif WarMenu.MenuButton('option2', 'circle_menu') then -- set option2 to what you put above
            TriggerServerEvent('routingbucket:SetRoutingBucket2')
	        elseif WarMenu.MenuButton('option3', 'circle_menu') then -- set option3 to what you put above
            TriggerServerEvent('routingbucket:SetRoutingBucket3')
        end
        WarMenu.Display()
    end
end

-- Main loop
Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        DrawCircle()
        HandleCircleInteraction()
    end
end)
