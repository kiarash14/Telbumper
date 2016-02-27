do

function run(msg, matches)
  return 'command'.. [[ 
Commands list :
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
*Only owner can use res,setowner,promote,demote and log commands
end
return {
  description = "Shows bot version", 
  usage = "!version: Shows infernal robot version",
  patterns = {
    "^!helpen$"
  }, 
  run = run 
}
end
