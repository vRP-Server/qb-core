QBConfig = {}

QBConfig.MaxPlayers = GetConvarInt('sv_maxclients', 48) -- Gets max players from config file, default 32
QBConfig.DefaultSpawn = vector4(-1035.71, -2731.87, 12.86, 0.0)
QBConfig.UpdateInterval = 5 -- how often to update player data in minutes
QBConfig.StatusInterval = 5000 -- how often to check hunger/thirst status in ms

QBConfig.Money = {}
QBConfig.Money.MoneyTypes = { ['cash'] = 500, ['bank'] = 5000, ['crypto'] = 0 } -- ['type']=startamount - Add or remove money types for your server (for ex. ['blackmoney']=0), remember once added it will not be removed from the database!
QBConfig.Money.DontAllowMinus = { 'cash', 'crypto' } -- Money that is not allowed going in minus
QBConfig.Money.PayCheckTimeOut = 20 -- The time in minutes that it will give the paycheck

QBConfig.Player = {}
QBConfig.Player.MaxWeight = 150000 -- Max weight a player can carry (currently 120kg, written in grams)
QBConfig.Player.MaxInvSlots = 41 -- Max inventory slots for a player
QBConfig.Player.HungerRate = 4.2 -- Rate at which hunger goes down.
QBConfig.Player.ThirstRate = 3.8 -- Rate at which thirst goes down.
QBConfig.Player.Bloodtypes = {
    "A+",
    "A-",
    "B+",
    "B-",
    "AB+",
    "AB-",
    "O+",
    "O-",
}

QBConfig.Server = {} -- General server config
QBConfig.Server.closed = false -- Set server closed (no one can join except people with ace permission 'qbadmin.join')
QBConfig.Server.closedReason = "Server Closed" -- Reason message to display when people can't join the server
QBConfig.Server.uptime = 0 -- Time the server has been up.
QBConfig.Server.whitelist = false -- Enable or disable whitelist on the server
QBConfig.Server.discord = "" -- Discord invite link
QBConfig.Server.PermissionList = {} -- permission list

QBConfig.Notify = {}

QBConfig.Notify.NotificationStyling = {
    group = false, -- Allow notifications to stack with a badge instead of repeating
    position = "left", -- top-left | top-right | bottom-left | bottom-right | top | bottom | left | right | center
    progress = true -- Display Progress Bar
}

-- These are how you define different notification variants
-- The "color" key is background of the notification
-- The "icon" key is the css-icon code, this project uses `Material Icons` & `Font Awesome`
QBConfig.Notify.VariantDefinitions = {
    success = {
        color = 'green',
        icon = 'done'
    },
    primary = {
        color = 'blue',
        icon = 'info'
    },
    error = {
        color = 'red',
        icon = 'dangerous'
    },
    police = {
        color = 'blue',
        icon = 'local_police'
    },
    ambulance = {
        color = 'red',
        icon = 'fas fa-ambulance'
    }
}
