local function monitorSetup()
    local monitor = peripheral.find("monitor")
    monitor.clear()
    monitor.setCursorPos(1,1)
end

local function cellSetup()
    local cell = peripheral.wrap("back")
end

local function printCellPercent(m, c)
    Menergy = c.getMaxEnergyStored()
    Senergy = c.getEnergyStored()
    per = (Senergy / Menergy) * 100

    m.write(per)
end

monitorSetup()
cellSetup()

printCellPercent(monitor, cell)
