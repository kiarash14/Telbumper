do
 
function pairsByKeys(t, f)
      local a = {}
      for n in pairs(t) do table.insert(a, n) end
      table.sort(a, f)
      local i = 0      -- iterator variable
      local iter = function ()   -- iterator function
        i = i + 1
        if a[i] == nil then return nil
        else return a[i], t[a[i]]
        end
      end
      return iter
    end
 
-- Returns true if is not empty
local function has_usage_data(dict)
  if (dict.usage == nil or dict.usage == '') then
    return false
  end
  return true
end
 
-- Get commands for that plugin
local function plugin_help(name,number,requester)
  local plugin = ""
  if number then
    local i = 0
    for name in pairsByKeys(plugins) do
      if plugins[name].hidden then
        name = nil
      else
        i = i + 1
        if i == tonumber(number) then
          plugin = plugins[name]
        end
      end
    end
  else
    plugin = plugins[name]
    if not plugin then return nil end
  end
 
    local text = ""
    if (type(plugin.usage) == "table") then
      for ku,usage in pairs(plugin.usage) do
          if ku == 'user' then -- usage for user
              if (type(plugin.usage.user) == "table") then
                  for k,v in pairs(plugin.usage.user) do
                      text = text..v..'\n'
                  end
              elseif has_usage_data(plugin) then -- Is not empty
                  text = text..plugin.usage.user..'\n'
              end
          elseif ku == 'moderator' then -- usage for moderator
              if requester == 'moderator' or requester == 'admin' or requester == 'sudo' then
                  if (type(plugin.usage.moderator) == "table") then
                      for k,v in pairs(plugin.usage.moderator) do
                          text = text..v..'\n'
                      end
                  elseif has_usage_data(plugin) then -- Is not empty
                      text = text..plugin.usage.moderator..'\n'
                  end
              end
          elseif ku == 'admin' then -- usage for admin
              if requester == 'admin' or requester == 'sudo' then
                  if (type(plugin.usage.admin) == "table") then
                      for k,v in pairs(plugin.usage.admin) do
                          text = text..v..'\n'
                      end
                  elseif has_usage_data(plugin) then -- Is not empty
                      text = text..plugin.usage.admin..'\n'
                  end
              end
          elseif ku == 'sudo' then -- usage for sudo
              if requester == 'sudo' then
                  if (type(plugin.usage.sudo) == "table") then
                      for k,v in pairs(plugin.usage.sudo) do
                          text = text..v..'\n'
                      end
                  elseif has_usage_data(plugin) then -- Is not empty
                      text = text..plugin.usage.sudo..'\n'
                  end
              end
          else
              text = text..usage..'\n'
          end
      end
      text = text..'______________________________\n'
    elseif has_usage_data(plugin) then -- Is not empty
      text = text..plugin.usage..'\n______________________________\n'
    end
    return text
end
 
 
-- !help command
local function telegram_help()
  local text = "Umbrella Tools List:\n______________________________\n"
 !kick [username|id]
You can also do it by reply
〰〰〰〰〰〰
!ban [ username|id]
You can also do it by reply
〰〰〰〰〰〰
!unban [id]
You can also do it by reply
〰〰〰〰〰〰
!who
Members list
〰〰〰〰〰〰
!modlist
Moderators list
〰〰〰〰〰〰
!promote [username]
Promote someone
〰〰〰〰〰〰
!demote [username]
Demote someone
〰〰〰〰〰〰
!kickme
Will kick user
〰〰〰〰〰〰
!about
Group description
〰〰〰〰〰〰
!setphoto
Set and locks group photo
〰〰〰〰〰〰
!setname [name]
Set group name
〰〰〰〰〰〰
!rules
Group rules
〰〰〰〰〰〰
!id
return group id or user id
〰〰〰〰〰〰
!help !helpfa !helpar
This help text
〰〰〰〰〰〰
!lock [member|name|bots|leave|arabic|tag|adds]	
Locks [member|name|bots|leaveing|arabic|tag|adds] 
〰〰〰〰〰〰
!unlock [member|name|bots|leave|arabic|tag|adds]
Unlocks [member|name|bots|leaving|arabic|tag|adds]
〰〰〰〰〰〰
!set rules <text>
Set <text> as rules
〰〰〰〰〰〰
!set about <text>
Set <text> as about
〰〰〰〰〰〰
!settings
Returns group settings
〰〰〰〰〰〰
!newlink
create/revoke your group link
〰〰〰〰〰〰
!link
returns group link
〰〰〰〰〰〰
!owner
returns group owner id
〰〰〰〰〰〰
!setowner [id]
Will set id as owner
〰〰〰〰〰〰
!setflood [value]
Set [value] as flood sensitivity
〰〰〰〰〰〰
!stats
Simple message statistics
〰〰〰〰〰〰
!save [value] <text>
Save <text> as [value]
〰〰〰〰〰〰
!get [value]
Returns text of [value]
〰〰〰〰〰〰
!clean [modlist|rules|about]
Will clear [modlist|rules|about] and set it to nil
〰〰〰〰〰〰
!info [username]
send you a user stats
〰〰〰〰〰〰
!public [yes|no]
allow to user see|join your group with
!chats
in bot pv
〰〰〰〰〰〰
!log
will return group logs
〰〰〰〰〰〰
!sticker [warn|kick|ok]
warn : send warning if send sticker
kick : kick user if send sticker
ok : do nothing if send sticker
〰〰〰〰〰〰
!Bumper
send you perisangulf logo as sticker
〰〰〰〰〰〰
!all
see all about group
〰〰〰〰〰〰
!block (user-id)
!unblock (user-id)
block or unblock users (sudo only)
〰〰〰〰〰〰
!kickinactive
kick inactive users from Group
〰〰〰〰〰〰
!pv [user-id] [text]
send text to user-id (sudo only)
〰〰〰〰〰〰
!linkpv
send link to your pv (for first try you send 10 msg to bot)
〰〰〰〰〰〰
!banlist
will return group ban list
〰〰〰〰〰〰
!pv pg
send pv you commands
〰〰〰〰〰〰
!welcome [group|pm|disable]
set welcome to group
set welcome to pm (pv)
set welcome disable
〰〰〰〰〰〰
**U can use "/" and "!"  and "."
〰〰〰〰〰〰
*Only owner and mods can add bots in group
〰〰〰〰〰〰
*Only moderators and owner can use kick,ban,unban,newlink,link,setphoto,setname,lock,unlock,set rules,set about and settings commands
〰〰〰〰〰〰
*Only owner can use res,setowner,promote,demote and log commands'
  text = text..'______________________________'
  text = text..'\n'..'You can use < /helps > for view all items info or can use < /help (name) > for view a item info'
  text = text..'\n'..'For see about Umbrella Bot Team, send < /ver >'
  text = text..'\n'..' Channel: @TeleBumper'
  return text
end
 
 
-- !help all command
local function help_all(requester)
  local ret = ""
  for name in pairsByKeys(plugins) do
    if plugins[name].hidden then
      name = nil
    else
      ret = ret .. plugin_help(name, nil, requester)
    end
  end
  return ret
end
 
local function run(msg, matches)
  if is_sudo(msg) then
      requester = "sudo"
  elseif is_admin(msg) then
      requester = "admin"
  elseif is_momod(msg) then
      requester = "moderator"
  else
      requester = "user"
  end
  if matches[1] == "[!/]help" then
    return telegram_help()
  elseif matches[1] == "[!/]helps" then
    return help_all(requester)
  else
    local text = ""
    if tonumber(matches[1])  then
      text = plugin_help(nil, matches[1], requester)
    else
      text = plugin_help(matches[1], nil, requester)
    end
    if not text then
      text = telegram_help()
    end
    return text
  end
end
 
return {
  description = "Help For Command and Tools",
  usage = {
    "/help : view items list",
    "/helps : view all commands and info",
    "/help (name) : view a item commands and info",
  },
  patterns = {
    "^[!/]help$",
    "^[!/]helps",
    "^[!/]help (.+)"
  },
  run = run
}
 
end
