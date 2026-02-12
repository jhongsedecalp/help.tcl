#Help.tcl by jh0ng
#Author: jh0ng
#support channel pinoyIRC @ #pinoyIRC
#Description: Help Command 

#version

set jhong(ver) "1.0"

#notice on join

bind join  - *  join_all
proc join_all {nick host hand chan} {
 if {$chan == "#pinoyIRC"} {
  puthelp "NOTICE $nick :Welcome to #pinoyIRC Channel for Help type +help for commands"
  puthelp "PRIVMSG $chan :Welcome $nick to the channel. Type +help for commands"
  }
 }

#bind pub

bind pub - +help jng_Menu
bind pub - +info jng_Info
bind pub - +bots jng_Bots
bind pub - +admin jng_Admin
bind pub - +requirements jng_req

#+help 

proc jng_Menu {nick uhost hand chan args} {
global botnick
putserv "PRIVMSG $chan :\00300,01 ☆☆☆ PinoyBots Service v1.0 ☆☆☆"
putserv "PRIVMSG $chan :☞ \00300,01Available Menu"
putserv "PRIVMSG $chan :\00300,01☞ +bots ☞ +request ☞ +info ☞ +admin ☞ +requirements"
return 0
}

proc jng_Info {nick uhost hand chan args} {
global botnick
putserv "PRIVMSG $nick :\00300,01 ☆☆☆ PinoyBots Service v1.0 ☆☆☆ "
putserv "PRIVMSG $nick :Description: Request a free ServiceBot or Triviabot"
putserv "PRIVMSG $nick :Command: +help"
putserv "PRIVMSG $nick :Website: https://pinoyirc.com"
return 0
}

proc jng_Bots {nick uhost hand chan args} {
global botnick
putserv "PRIVMSG $nick :\00300,01 ☆☆☆ PinoyBots Service v1.0 ☆☆☆ "
putserv "PRIVMSG $nick :Currently Available pinoyBots - pinoyGuard pinoyHelp pinoyServ pinoySeen pinoyStats pinoyTrivia pinoyUNO"
putserv "PRIVMSG $nick :Currently Available pinoyGames - pinoyTrivia pinoyUNO"
putserv "PRIVMSG $nick :Website: https://pinoyirc.com"
return 0
}

proc jng_Admin {nick uhost hand chan args} {
global botnick
putserv "PRIVMSG $nick :\00300,01 ☆☆☆ PinoyBots Service v1.0 ☆☆☆ "
putserv "PRIVMSG $nick :Available Admin - jh0ng kelotz"
return 0
}

proc jng_req {nick uhost hand chan args} {
global botnick
putserv "PRIVMSG $nick :\00300,01 ☆☆☆ PinoyBots Service v1.0 ☆☆☆"
putserv "PRIVMSG $nick :Requirements for Requesting a Bot"
putserv "PRIVMSG $nick :1. You need to be an Operator in the Request Channel"
putserv "PRIVMSG $nick :2. 5 Minimum Users in the Channel"
putserv "PRIVMSG $nick :3. The Bot should be OP"
putserv "PRIVMSG $nick :Note The BOT should be SOP/AOP in the Channel"
return 0
}


putlog "Help Commands v1.0 by jh0ng"
