-- xmobar config used by Vic Fryzel
-- Author: Vic Fryzel
-- http://github.com/vicfryzel/xmonad-config

-- This is setup for dual 1920x1080 monitors, with the right monitor as primary
Config {
    font = "xft:DejaVu Sans Mono:bold:antialias=true:size=11:hintstyle=hintfull:rgba=rgb:dpi=96",
    bgColor = "#002b36",
    fgColor = "#657b83",
    position = Static { xpos = 0, ypos = 0, width = 1320, height = 18 },
    lowerOnStart = True,
    commands = [
--        Run Weather "EDDH" ["-t","<tempC>°C","-L","5","-H","23","-n","#859900","-h","#dc322f","-l","#268bd2"] 36000,
        Run Cpu ["-L","30","-H","60","-h","#dc322f","-l","#859900","-n","#eee8d5"] 10,
        Run Memory ["-t","Mem: <usedratio>%","-H","60","-L","30","-h","#dc322f","-l","#859900","-n","#eee8d5"] 10,
	Run BatteryP ["BAT0"] ["-t", "<acstatus><left>% (<timeleft>)", "-L", "10", "-H", "80", "-p", "2", 
                               "--", "-O", "<fc=#859900>AC</fc> ", "-o", "<fc=#dc322f>Batt</fc> ",
                               "-l", "#dc322f", "-m", "#268bd2", "-h", "#859900"] 20,
        Run Network "wlan0" ["-t","Net: <rx>, <tx>","-H","200","-L","10","-h","#dc322f","-l","#859900","-n","#286bd2"] 10,
        Run Date "%a %b %_d %H:%M" "date" 10,
        Run StdinReader
    ],
    sepChar = "%",
    alignSep = "}{",
    template = "%StdinReader% }{ %cpu%  %memory%  %battery%  %wlan0%  <fc=#eee8d5>%date%</fc>"
}
