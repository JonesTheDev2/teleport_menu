RegisterNetEvent('routingbucket:SetRoutingBucket1')
AddEventHandler('routingbucket:SetRoutingBucket1', function()
    local playerId = source
    SetPlayerRoutingBucket(playerId, 1)
end)

RegisterNetEvent('routingbucket:SetRoutingBucket2')
AddEventHandler('routingbucket:SetRoutingBucket2', function()
    local playerId = source
    SetPlayerRoutingBucket(playerId, 2)
end)

RegisterNetEvent('routingbucket:SetRoutingBucket3')
AddEventHandler('routingbucket:SetRoutingBucket3', function()
    local playerId = source
    SetPlayerRoutingBucket(playerId, 3)
end)
