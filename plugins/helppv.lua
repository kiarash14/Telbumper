do 
 
 
 function run(msg, matches) 
   return "!kick [username|id]/nYou can also do it by reply/n〰〰〰〰〰〰/n!ban [ username|id]/nYou can also do it by reply/n〰〰〰〰〰〰/n!unban [id]/nYou can also do it by reply/n〰〰〰〰〰〰/n!who/nMembers list/n〰〰〰〰〰〰/n!modlist/nModerators list/n〰〰〰〰〰〰/n!promote [username]/nPromote someone/n〰〰〰〰〰〰/n!demote [username]/nDemote someone/n〰〰〰〰〰〰/n!kickme/nWill kick user/n〰〰〰〰〰〰/n!about/nGroup description/n〰〰〰〰〰〰/n!setphoto/nSet and locks group photo/n〰〰〰〰〰〰/n!setname [name]/nSet group name/n〰〰〰〰〰〰/n!rules/nGroup rules/n〰〰〰〰〰〰/n!id/nreturn group id or user id/n〰〰〰〰〰〰/n!help !helpfa !helpar/nThis help text/n〰〰〰〰〰〰/n!lock [member|name|bots|leave|arabic|tag|adds]/nLocks [member|name|bots|leaveing|arabic|tag|adds]/n〰〰〰〰〰〰/n!unlock [member|name|bots|leave|arabic|tag|adds]/nUnlocks [member|name|bots|leaving|arabic|tag|adds]/n〰〰〰〰〰〰/n!set rules <text>/nSet <text> as rules/n〰〰〰〰〰〰/n!set about <text>/nSet <text> as about/n〰〰〰〰〰〰/n!settings/nReturns group settings/n〰〰〰〰〰〰/n!newlink/ncreate/revoke your group link/n〰〰〰〰〰〰/n!link/nreturns group link/n〰〰〰〰〰〰/n!owner/nreturns group owner id/n〰〰〰〰〰〰/n!setowner [id]/nWill set id as owner/n〰〰〰〰〰〰/n!setflood [value]/nSet [value] as flood sensitivity/n〰〰〰〰〰〰/n!stats/nSimple message statistics/n〰〰〰〰〰〰/n!save [value] <text>/nSave <text> as [value]/n〰〰〰〰〰〰/n!get [value]/nReturns text of [value]/n〰〰〰〰〰〰/n!clean [modlist|rules|about]/nWill clear [modlist|rules|about] and set it to nil/n〰〰〰〰〰〰/n!info [username]/nsend you a user stats/n〰〰〰〰〰〰/n!public [yes|no]/nallow to user see|join your group with/n!chats/nin bot pv/n〰〰〰〰〰〰/n!log/nwill return group logs/n〰〰〰〰〰〰/n!sticker [warn|kick|ok]/nwarn : send warning if send sticker/nkick : kick user if send sticker/nok : do nothing if send sticker/n〰〰〰〰〰〰/n!Bumper/nsend you perisangulf logo as sticker/n〰〰〰〰〰〰/n!all/nsee all about group/n〰〰〰〰〰〰/n!block (user-id)/n!unblock (user-id)/nblock or unblock users (sudo only)/n〰〰〰〰〰〰/n!kickinactive/nkick inactive users from Group/n〰〰〰〰〰〰/n!pv [user-id] [text]/nsend text to user-id (sudo only)/n〰〰〰〰〰〰/n!linkpv/nsend link to your pv (for first try you send 10 msg to bot)/n〰〰〰〰〰〰/n!banlist/nwill return group ban list/n〰〰〰〰〰〰/n!pv pg/nsend pv you commands/n〰〰〰〰〰〰/n!welcome [group|pm|disable]/nset welcome to group/nset welcome to pm (pv)/nset welcome disable/n〰〰〰〰〰〰/n**U can use "/" and "!"  and "."/n〰〰〰〰〰〰/n*Only owner and mods can add bots in group/n〰〰〰〰〰〰/n*Only moderators and owner can use kick,ban,unban,newlink,link,setphoto,setname,lock,unlock,set rules,set about and settings commands/n〰〰〰〰〰〰/n*Only owner can use res,setowner,promote,demote and log commands""
   end 
 
 
 return { 
   description = "سازنده",  
   usage = "/helppv", 
   patterns = { 
     "^[!/]([Hh]elppv)$", 
 
 
   }, 
   run = run 
 } 

 end 
