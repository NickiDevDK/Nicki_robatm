--          _____                    _____                    _____                    _____                    _____          
--         /\    \                  /\    \                  /\    \                  /\    \                  /\    \         
--        /::\____\                /::\    \                /::\    \                /::\____\                /::\    \        
--       /::::|   |                \:::\    \              /::::\    \              /:::/    /                \:::\    \       
--      /:::::|   |                 \:::\    \            /::::::\    \            /:::/    /                  \:::\    \      
--     /::::::|   |                  \:::\    \          /:::/\:::\    \          /:::/    /                    \:::\    \     
--    /:::/|::|   |                   \:::\    \        /:::/  \:::\    \        /:::/____/                      \:::\    \    
--   /:::/ |::|   |                   /::::\    \      /:::/    \:::\    \      /::::\    \                      /::::\    \   
--  /:::/  |::|   | _____    ____    /::::::\    \    /:::/    / \:::\    \    /::::::\____\________    ____    /::::::\    \  
-- /:::/   |::|   |/\    \  /\   \  /:::/\:::\    \  /:::/    /   \:::\    \  /:::/\:::::::::::\    \  /\   \  /:::/\:::\    \ 
--/:: /    |::|   /::\____\/::\   \/:::/  \:::\____\/:::/____/     \:::\____\/:::/  |:::::::::::\____\/::\   \/:::/  \:::\____\
--\::/    /|::|  /:::/    /\:::\  /:::/    \::/    /\:::\    \      \::/    /\::/   |::|~~~|~~~~~     \:::\  /:::/    \::/    /
-- \/____/ |::| /:::/    /  \:::\/:::/    / \/____/  \:::\    \      \/____/  \/____|::|   |           \:::\/:::/    / \/____/ 
--         |::|/:::/    /    \::::::/    /            \:::\    \                    |::|   |            \::::::/    /          
--         |::::::/    /      \::::/____/              \:::\    \                   |::|   |             \::::/____/           
--         |:::::/    /        \:::\    \               \:::\    \                  |::|   |              \:::\    \           
--         |::::/    /          \:::\    \               \:::\    \                 |::|   |               \:::\    \          
--         /:::/    /            \:::\    \               \:::\    \                |::|   |                \:::\    \         
--        /:::/    /              \:::\____\               \:::\____\               \::|   |                 \:::\____\        
--        \::/    /                \::/    /                \::/    /                \:|   |                  \::/    /        
--         \/____/                  \/____/                  \/____/                  \|___|                   \/____/        

local Tunnel = module("vrp", "lib/Tunnel")
local Proxy = module("vrp", "lib/Proxy")

vRP = Proxy.getInterface("vRP")
vRPclient = Tunnel.getInterface("vRP","Nicki_robatm")

RegisterNetEvent('Nicki_robatm:CheckItem')
AddEventHandler('Nicki_robatm:CheckItem', function()
    local user_id = vRP.getUserId({source})
    if vRP.tryGetInventoryItem({user_id,"nicki_virus", 1}) then
   TriggerClientEvent('Nicki_robatm:StartHack', source)
else
    TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'error', text = 'Du har ikke nogen Virus'}, 15000)
    end
end)

RegisterNetEvent('Nicki_robatm:Reward')
AddEventHandler('Nicki_robatm:Reward', function()
    local user_id = vRP.getUserId({source})
    reward = math.random(1200,3000)
    vRP.giveInventoryItem({user_id,"dirty_money",reward,true})
    TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'inform', text = 'Du modtog '..reward..' Sorte penge!'}, 15000)
        end)

vRP.defInventoryItem({"nicki_virus","Virus","Virus, bruges til at røve Hæveautomat.", function()

    local choices = {}
    local user_id = vRP.getUserId({player})
    
    end, 0.10})
        
