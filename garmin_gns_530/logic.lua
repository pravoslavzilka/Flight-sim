--------------------------------------GNS-530---------------------------------------------

function cdi_press()
    xpl_command("sim/GPS/g430n1_cdi")
end
cdib = hw_button_add('ARDUINO_MEGA2560_A_D34',cdi_press,cdi_press)



function obs_press()
    xpl_command("sim/GPS/g430n1_obs")
end
obsb = hw_button_add('ARDUINO_MEGA2560_A_D34',obs_press,obs_press)



function msg_press()
    xpl_command("sim/GPS/g430n1_msg")
end
msgb = hw_button_add('ARDUINO_MEGA2560_A_D34',msg_press,msg_press)



function fpl_press()
    xpl_command("sim/GPS/g430n1_fpl")
end
fplb = hw_button_add('ARDUINO_MEGA2560_A_D34',fpl_press,fpl_press)



function vnav_press()
    xpl_command("sim/GPS/g430n1_vnav")
end
vnavb = hw_button_add('ARDUINO_MEGA2560_A_D34',vnav_press,vnav_press)



function proc_press()
    xpl_command("sim/GPS/g430n1_proc")
end
procb = hw_button_add('ARDUINO_MEGA2560_A_D34',proc_press,proc_press)



function ent_press()
    xpl_command("sim/GPS/g430n1_ent")
end
entb = hw_button_add('ARDUINO_MEGA2560_A_D34',ent_press,ent_press)



function clr_press()
    xpl_command("sim/GPS/g430n1_clr", 1)
end

function clr_off()
    xpl_command("sim/GPS/g430n1_clr", 0)
end

clrb = hw_button_add('ARDUINO_MEGA2560_A_D34',clr_press,clr_off)



function menu_press()
    xpl_command("sim/GPS/g430n1_menu")
end
menub = hw_button_add('ARDUINO_MEGA2560_A_D34',menu_press,menu_press)



function direct_press()
    xpl_command("sim/GPS/g430n1_direct")
end
directb = hw_button_add('ARDUINO_MEGA2560_A_D34',direct_press,direct_press)



function zoom_in_press()
    xpl_command("sim/GPS/g430n1_zoom_in")
end
zoom_inb = hw_button_add('ARDUINO_MEGA2560_A_D34',zoom_in_press,zoom_in_press)



function zoom_out_press()
    xpl_command("sim/GPS/g430n1_zoom_out")
end
zoom_outb = hw_button_add('ARDUINO_MEGA2560_A_D34',zoom_out_press,zoom_out_press)



function com_ff_press()
    xpl_command("sim/GPS/g430n1_com_ff")
end
com_ffb = hw_button_add('ARDUINO_MEGA2560_A_D34',com_ff_press,com_ff_press)



function nav_ff_press()
    xpl_command("sim/GPS/g430n1_nav_ff")
end
nav_ffb = hw_button_add('ARDUINO_MEGA2560_A_D34',nav_ff_press,nav_ff_press)



function coarse_callback(direction)
     if direction == 1 then
        xpl_command( "sim/GPS/g430n1_coarse_up")
    else if direction == -1 then 
        xpl_command( "sim/GPS/g430n1_coarse_down")
    end    
    end
end
coarse_dial = hw_dial_add('ARDUINO_UNO_A_D3', 'ARDUINO_UNO_A_D4', coarse_callback)



function fine_callback(direction)
     if direction == 1 then
        xpl_command( "sim/GPS/g430n1_fine_up")
    else if direction == -1 then 
        xpl_command( "sim/GPS/g430n1_fine_down")
    end    
    end
end
fine_dial = hw_dial_add('ARDUINO_UNO_A_D3', 'ARDUINO_UNO_A_D4', fine_callback)



function cv_press()
    xpl_command( "sim/GPS/g430n1_nav_com_tog" )
end
cvb = hw_button_add('ARDUINO_MEGA2560_A_D34',cv_press,cv_press)



function chapter_callback(direction)
     if direction == 1 then
        xpl_command( "sim/GPS/g430n1_chapter_up")
    else if direction == -1 then 
        xpl_command( "sim/GPS/g430n1_chapter_dn")
    end    
    end
end
chapter_dial = hw_dial_add('ARDUINO_UNO_A_D3', 'ARDUINO_UNO_A_D4', chapter_callback)



function page_callback(direction)
     if direction == 1 then
        xpl_command( "sim/GPS/g430n1_page_up")
    else if direction == -1 then 
        xpl_command( "sim/GPS/g430n1_page_dn")
    end    
    end
end
page_dial = hw_dial_add('ARDUINO_UNO_A_D3', 'ARDUINO_UNO_A_D4', page_callback)



function cursor_press()
	xpl_command( "sim/GPS/g430n1_cursor")
end
cursorb = hw_button_add('ARDUINO_MEGA2560_A_D34',cursor_press,cursor_press)



function g530_pwr_on()
	xpl_dataref_write("sim/cockpit2/radios/actuators/gps_power", "INT", 1) 
end
function g530_pwr_off()
	xpl_dataref_write("sim/cockpit2/radios/actuators/gps_power", "INT", 0) 
end
g530_pwrb = hw_button_add('ARDUINO_MEGA2560_A_D34',g530_pwr_on,g530_pwr_off)



--------idk---------


function cvol_callback(direction)
     if direction == 1 then
        xpl_command( "sim/GPS/g430n1_cvol_up")
    else if direction == -1 then 
        xpl_command( "sim/GPS/g430n1_cvol_dn")
    end    
    end
end
cvol_dial = hw_dial_add('ARDUINO_UNO_A_D3', 'ARDUINO_UNO_A_D4', cvol_callback)


function cvol_press()
	xpl_command( "sim/GPS/g430n1_cvol")
end
cvolb = hw_button_add('ARDUINO_MEGA2560_A_D34',cvol_press,cvol_press)



function vvol_callback(direction)
     if direction == 1 then
        xpl_command( "sim/GPS/g430n1_vvol_up")
    else if direction == -1 then 
        xpl_command( "sim/GPS/g430n1_vvol_dn")
    end    
    end
end
vvol_dial = hw_dial_add('ARDUINO_UNO_A_D3', 'ARDUINO_UNO_A_D4', vvol_callback)


function vvol_press()
	xpl_command( "sim/GPS/g430n1_vvol")
end
vvolb = hw_button_add('ARDUINO_MEGA2560_A_D34',vvol_press,vvol_press)