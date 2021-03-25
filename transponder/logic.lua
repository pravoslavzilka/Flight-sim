---------------------------------------------Transponder-------------------------------------------

local gbl_elapsed_time = 0
local currentInput = 0
local currentCodeString = ""
local tempString = ""

function handleDigitInput(digit)

    tempString = ""

    if currentInput > 0 then
        tempString = string.sub(currentCodeString, 1, currentInput)
    end

    tempString = tempString .. digit

    if currentInput < 3 then
        tempString = tempString .. string.sub(currentCodeString, currentInput + 2, 4)
        currentInput = currentInput + 1
    else
        currentInput = 0
    end
    
    xpl_dataref_write("sim/cockpit/radios/transponder_code", "INT", tonumber(tempString))
    currentCodeString = tempString

end


display = hw_chr_display_add("display", "HD44780", 8, 2)

function chard_mode_set(mode)
	if mode == 0 then
		hw_chr_display_set_text(display, 1, "OFF")
	end	
	if mode == 1 then
		hw_chr_display_set_text(display, 1, "STBY")
	end	
	if mode == 2 then
		hw_chr_display_set_text(display, 1, "ON")
	end	
	if mode == 3 then
		hw_chr_display_set_text(display, 1, "TEST")
	end	
	
end	

function chardid_set(id)
	if mode == 0 then
		hw_chr_display_set_text(display, 0, "fhf")
	end	
	if mode == 1 then
		hw_chr_display_set_text(display, 0, "IDENT")
	end
end	

--xpl_dataref_subscribe("sim/cockpit/radios/transponder_mode", "INT",chard_set)
--xpl_dataref_subscribe("sim/cockpit/radios/transponder_id","INT",chardid_set)


btn0 = hw_button_add('ARDUINO_MEGA2560_A_D34',function()
    handleDigitInput(0)
end)

btn1 = hw_button_add('ARDUINO_MEGA2560_A_D34',function()
    handleDigitInput(1)
end)

btn2 = hw_button_add('ARDUINO_MEGA2560_A_D34',function()
    handleDigitInput(2)
end)

btn3 = hw_button_add('ARDUINO_MEGA2560_A_D34',function()
    handleDigitInput(3)
end)

btn4 = hw_button_add('ARDUINO_MEGA2560_A_D34',function()
    handleDigitInput(4)
end)

btn5 = hw_button_add('ARDUINO_MEGA2560_A_D34',function()
    handleDigitInput(5)
end)

btn6 = hw_button_add('ARDUINO_MEGA2560_A_D34',function()
    handleDigitInput(6)
end)

btn7 = hw_button_add('ARDUINO_MEGA2560_A_D34',function()
    handleDigitInput(7)
end)

btn8 = hw_button_add('ARDUINO_MEGA2560_A_D34',function()
    handleDigitInput(8)
end)

btn9 = hw_button_add('ARDUINO_MEGA2560_A_D34',function()
    handleDigitInput(9)
end)


btn_ident = hw_button_add('ARDUINO_MEGA2560_A_D34',function()
    xpl_command("sim/transponder/transponder_ident")
    hw_chr_display_set_text(display, 0, "IDENT")
end,function()
    xpl_command("sim/transponder/transponder_ident")
    hw_chr_display_set_text(display, 0, "")
end
)

btn_on = hw_button_add('ARDUINO_MEGA2560_A_D34',function()
    xpl_command("sim/transponder/transponder_on")
    hw_chr_display_set_text(display, 1, "ON")
end)

btn_alt = hw_button_add('ARDUINO_MEGA2560_A_D34',function()
    xpl_command("sim/transponder/transponder_alt")
    hw_chr_display_set_text(display, 1, "ALT")
end)

btn_stanby = hw_button_add('ARDUINO_MEGA2560_A_D34',function()
    xpl_command("sim/transponder/transponder_stanby")
    hw_chr_display_set_text(display, 1, "STANBY")
end)

btn_off = hw_button_add('ARDUINO_MEGA2560_A_D34',function()
    xpl_command("sim/transponder/transponder_off")
    hw_chr_display_set_text(display, 1, "OFF")
    hw_chr_display_set_text(display, 0, "")
end)

btn_vfr = hw_button_add('ARDUINO_MEGA2560_A_D34',function()
    xpl_dataref_write("sim/cockpit/radios/transponder_code", "INT", 1200)
end)

btn_clr = hw_button_add('ARDUINO_MEGA2560_A_D34',function()
    xpl_command("sim/transponder/transponder_CLR")
end)
	
btn_test = hw_button_add('ARDUINO_MEGA2560_A_D34',function()
    xpl_command("sim/transponder/transponder_test")
    hw_chr_display_set_text(display, 1, "TEST")
end)

btn_ground = hw_button_add('ARDUINO_MEGA2560_A_D34',function()
    xpl_command("sim/transponder/transponder_ground")
    hw_chr_display_set_text(display, 1, " --- ")
end)

