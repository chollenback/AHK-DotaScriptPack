I_Icon = %A_ScriptDir%/icons/arcwarden.png

#Include %A_ScriptDir%/utility.ahk
#SingleInstance force
#IfWinActive Dota 2

; Assign your ability and item variables
ability1 := "Q"  ; Spark Wraith
ability2 := "W"  ; Flux
ability3 := "E"  ; Magnetic Field
ability4 := "R"  ; Tempest Double
item1 := "1"     ; Example item 1 (Midas)
item2 := "2"     ; Example item 2 (Maelstrom)
item3 := "3"     ; Example item 3 (BKB)
item4 := "4"     ; Example item 4 (Aghanim's Scepter)

space & a::  ; Combo 1
SendInput {alt down}
sleep, 50
SendInput, {%ability4%}  ; Tempest Double
sleep, 50
SendInput {alt up}
SendInput, {%ability2%}  ; Flux
sleep, 600
SendInput, {%ability1%}  ; Spark Wraith
sleep, 50
SendInput, {%item1%}      ; Item 1 (e.g., Midas)
return

space & s::  ; Combo 2
SendInput {alt down}
sleep, 50
SendInput, {%ability4%}  ; Tempest Double
SendInput {alt up}
sleep, 50
SendInput, {%ability2%}  ; Flux
SendInput, {down}  ; Select hero
sleep, 2000
SendInput {alt down}
sleep, 50
SendInput, {%item3%}  ; Item 3 (e.g., BKB)
sleep, 50
SendInput, {%item2%}  ; Item 2 (e.g., Maelstrom)
sleep, 50
SendInput {alt up}
sleep, 50
SendInput {f}  ; Use TP (if applicable)
return

space & d::  ; Combo 3
SendInput, {%ability2%}  ; Flux
sleep, 100
SendInput, {%ability4%}  ; Tempest Double
sleep, 100
SendInput, {%item1%}      ; Item 1 (e.g., Midas)
sleep, 50
SendInput, {%ability3%}  ; Magnetic Field
return

space & f::  ; Combo 4
SendInput {alt down}
sleep, 50
SendInput, {%ability4%}  ; Tempest Double
sleep, 50
SendInput {alt up}
SendInput, {%ability2%}  ; Flux
sleep, 600
SendInput, {%ability1%}  ; Spark Wraith
sleep, 50
SendInput, {%item1%}      ; Item 1 (e.g., Midas)
sleep, 450
SendInput, {%ability4%}  ; Tempest Double
sleep, 50
SendInput, {%ability3%}  ; Magnetic Field
sleep, 50
SendInput {alt up}
SendInput, {%ability4%}  ; Another Tempest Double cast (if applicable)
return

space & q::  ; Basic Ability Combo
SendInput {alt down}
sleep, 50
SendInput, {%ability4%}  ; Tempest Double
sleep, 50
SendInput {alt up}
SendInput, {%ability1%}  ; Spark Wraith
return

space & w::  ; Basic Ability Combo
SendInput {alt down}
sleep, 50
SendInput, {%ability4%}  ; Tempest Double
sleep, 50
SendInput {alt up}
SendInput, {%ability2%}  ; Flux
return

space & e::  ; Basic Ability Combo
SendInput, {%ability4%}  ; Tempest Double
sleep, 50
SendInput, {%ability3%}  ; Magnetic Field
return

space & r::  ; Final Ability Combo
SendInput {alt down}
sleep, 50
SendInput, {%ability4%}  ; Tempest Double
sleep, 50
SendInput {alt up}
SendInput, {%item4%}  ; Item 4 (e.g., Aghanim's Scepter)
return
