# Ensure the .Debug isn't set for any longer than 60s
scoreboard players set @a[scores={.Debug=60..}] .Debug 60

execute store result score MSPT-50.00 Debug run worldborder get
worldborder set 59900000
worldborder add 100000 20

scoreboard players remove MSPT-50.00 Debug 59900000
scoreboard players set TPS-20.00 Debug 10000000
scoreboard players operation TPS-20.00 Debug /= MSPT-50.00 Debug

scoreboard players set entities Debug 0
execute as @e run scoreboard players add entities Debug 1

scoreboard objectives setdisplay sidebar Debug