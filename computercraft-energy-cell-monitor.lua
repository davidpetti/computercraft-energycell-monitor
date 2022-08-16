-- local function monitorSetup()
--     local m = peripheral.find("monitor")
--     m.clear()
--     m.setCursorPos(1,1)
--     return m
-- end

-- local function cellSetup()
--     local c = peripheral.wrap("back")
--     return c
-- end

-- local function printCellPercent(m, c)
--     Menergy = c.getMaxEnergyStored("unknown")
--     Senergy = c.getEnergyStored("unknown")
--     per = (Senergy / Menergy) * 100

--     m.write(per)
-- end

-- local monitor = monitorSetup()
-- local cell = cellSetup()

-- printCellPercent(monitor, cell)


monitor = peripheral.find("monitor")
cell = peripheral.wrap("back")

function getCellPercent(cell)
    maxEnergy = cell.getMaxEnergyStored("unknown")
    storedEnergy = cell.getEnergyStored("unknown")

    percent = (storedEnergy / maxEnergy) * 100
    return percent
end

function clearMonitor(monitor)
    monitor.clear()
    monitor.setCursorPos(1,1)
end

