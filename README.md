You can use this script to teleport to diffrent worlds by pressing "G" inside a circle.


You can change the menu option names by setting "option1", "option2", and "option3" to whatever you want.


You can add more options by adding "WarMenu.CreateSubMenu('option4', 'circle_menu', 'option4')" under option 3 and "elseif WarMenu.MenuButton('option4', 'circle_menu') then -- set option3 to what you put above
            TriggerServerEvent('routingbucket:SetRoutingBucket4')" under option 3 in client.lua


then add "RegisterNetEvent('routingbucket:SetRoutingBucket4')
AddEventHandler('routingbucket:SetRoutingBucket4', function()
    local playerId = source
    SetPlayerRoutingBucket(playerId, 4)
end)" under option 3 in server.lua






DM me on discord if you have any questions or need help: notbob_49208
