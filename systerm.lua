local monitor = peripheral.find("monitor")
local nTime=nil
local nDay=nil
local length=nil
local monitorWidth,monitorHeight=monitor.getSize()

print("monitor size:"..monitorHeight..monitorWidth)
print("systerm Loading")

while (true)
do
    nTime=os.time()
    nDay="Day:"..os.day("ingame")
    length=string.len(nTime)
    monitor.setCursorPos(monitorWidth-length,monitorHeight-1);
    monitor.write(textutils.formatTime(nTime, true))
    length=string.len(nDay)
    monitor.setCursorPos(monitorWidth-length,monitorHeight);
    monitor.write(nDay)
    sleep(1)
    monitor.clear()
end
