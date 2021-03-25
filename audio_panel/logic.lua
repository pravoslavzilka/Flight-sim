
---------------------------------------------AUDIO-PANEL--------------------------------------------------

--buttons

--mkr button
function mkr_press()
    xpl_command("sim/audio_panel/monitor_audio_mkr")
end
mkrb = hw_button_add('ARDUINO_MEGA2560_A_D34',mkr_press,mkr_press)
--end mkr button

--com1 button
function com1_press()
    xpl_command("sim/audio_panel/monitor_audio_com1")
end
com1b = hw_button_add('ARDUINO_MEGA2560_A_D34',com1_press,com1_press)
--end com1 button

--com2 button
function com2_press()
    xpl_command("sim/audio_panel/monitor_audio_com2")
end
com2b = hw_button_add('ARDUINO_MEGA2560_A_D34',com2_press,com2_press)
---end com2 button

--dme button
function dme_press()
    xpl_command("sim/audio_panel/monitor_audio_dme")
end
dmeb = hw_button_add('ARDUINO_MEGA2560_A_D34',dme_press,dme_press)
--end dme button

--nav1 button
function nav1_press()
    xpl_command("sim/audio_panel/monitor_audio_nav1")
end
nav1b = hw_button_add('ARDUINO_MEGA2560_A_D34',nav1_press,nav1_press)
--end nav1 button

--nav2 button
function nav2_press()
    xpl_command("sim/audio_panel/monitor_audio_nav2")
end
nav2b = hw_button_add('ARDUINO_MEGA2560_A_D34',nav2_press,nav2_press)
--end nav2 button

--adf1 button
function adf1_press()
    xpl_command("sim/audio_panel/monitor_audio_adf1")
end
adf1b = hw_button_add('ARDUINO_MEGA2560_A_D34',adf1_press,adf1_press)
--end adf1 button

--adf2 button
function adf2_press()
    xpl_command("sim/audio_panel/monitor_audio_adf2")
end
adf2b = hw_button_add('ARDUINO_MEGA2560_A_D34',adf2_press,adf2_press)
--end adf2 button

--end buttons

--encoders
--radio volume
function knob_turn_pilot(direction)
    xpl_dataref_write("sim/operation/sound/radio_volume_ratio", "FLOAT", direction) 
end
mixt = hw_adc_input_add('ARDUINO_UNO_A_A2', knob_turn_pilot)
--end radio volume 
--end encoders



-----------------------------------------END-AUDIO-PANEL--------------------------------------------------
