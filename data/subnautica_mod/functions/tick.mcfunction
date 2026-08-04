# repeating tick function: run portal check inside the custom dimension
schedule function subnautica_mod:tick 20t
# run the portal check inside the custom dimension
execute in subnautica_mod:subnautica_ocean run function subnautica_mod:check_portal
