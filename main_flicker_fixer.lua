--[[
This 'main' LUA file written by DarkSigma in 2025.
Uses jbusfield's 'uevr_utils' and 'flicker_fixer' LUA files from their UEVR profile for Hogwarts Legacy v1.08b.
]]--

local uevrUtils = require("libs/uevr_utils")
local flickerFixer = require("libs/flicker_fixer")

function UEVRReady(instance)
    print("UEVR is now ready\n")
    flickerFixer.create()
end

function on_level_change(level)
    print("Level has changed\n")
    flickerFixer.create()
end

uevrUtils.initUEVR(uevr)
print("initUEVR was called\n")