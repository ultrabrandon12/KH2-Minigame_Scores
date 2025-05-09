LUAGUI_NAME = "KH2-Minigame_Scores"
LUAGUI_AUTH = "ultrabrandon12"
LUAGUI_DESC = "KH2-Minigame_Scores"

epiccheck = 0x585B61
stmcheck = 0x585E59
stmjpcheck = 0x585E09

function _OnInit() -- Runs during game initialization, only once
    kh2libstatus, kh2lib = pcall(require, "kh2lib") -- Imports the KH2 Lua Library, detects game version, and populates the `kh2lib` table
    if not kh2libstatus then -- Checks if there was an error loading the library
        print("ERROR (Example Script): KH2-Lua-Library mod is not installed") -- Try to report as meaningful of an error as possible
        CanExecute = false -- Definitely can't execute if the library is missing
        return
    end

    Log("Example script 1.0.0") -- Using Log() will use an appropriate console print call per platform
    RequireKH2LibraryVersion(1) -- Declares the minimum version of the library required by this script
    RequirePCGameVersion() -- Declares that this script was only written for the PC ports of KH2 (optional)

    CanExecute = kh2lib.CanExecute -- The library sets this to false if any conditions declared above were not met
    if not CanExecute then
        return
    end

    -- Can do this if desired to reduce noise in code later, or can reference these as `kh2lib.whatever` as needed
    -- (either way should work)
    GScre = kh2lib.GScre
	GMdal = kh2lib.GMdal
	GKill = kh2lib.GKill
	Songs = kh2lib.Songs
	SongExcellentChainScore = kh2lib.SongExcellentChainScore
	SwimThisWayScore = kh2lib.SwimThisWayScore
	Pooh = kh2lib.Point1
	Cntrl = kh2lib.Cntrl
	
end

function _OnFrame()	
	if not CanExecute then
        return
    end
	
	WriteLong(GScre, 0x0098967F)
	WriteByte(GMdal, 30)
	WriteShort(GKill, 0x03E7)
	
worldid = 0x717008 
 roomid = 0x717009
 spawnid = 0x71700A 
 event1id = 0x71700C 
 event2id = 0x71700E
 event3id = 0x717010 

	if ReadByte(Cntrl) == 0 and ReadByte(worldid) == 0x09 then
		WriteLong(Pooh, 0x0001869F)
	end
	
if ReadByte(worldid) == 0x0B and ReadByte(roomid) == 0x04 and ReadByte(spawnid) == 00 and ReadByte(event1id) == 0x40 and ReadByte(event2id) == 0x40 and ReadByte(event3id) == 0x40
or ReadByte(worldid) == 0x0B and ReadByte(roomid) == 0x04 and ReadByte(spawnid) == 00 and ReadByte(event1id) == 0x42 and ReadByte(event2id) == 0x42 and ReadByte(event3id) == 0x42 then
	WriteByte(SongExcellentChainScore, 99)
	WriteLong(Songs, 0x000F423F)
	WriteByte(SwimThisWayScore, 0)
end
if ReadByte(worldid) == 0x0B and ReadByte(roomid) == 0x01 and ReadByte(spawnid) == 00 and ReadByte(event1id) == 0x33 and ReadByte(event2id) == 0x33 and ReadByte(event3id) == 0x33
or ReadByte(worldid) == 0x0B and ReadByte(roomid) == 0x01 and ReadByte(spawnid) == 00 and ReadByte(event1id) == 0x43 and ReadByte(event2id) == 0x43 and ReadByte(event3id) == 0x43 then
	WriteByte(SongExcellentChainScore, 99)
	--WriteLong(Songs, 0x0001869F)
	WriteByte(SwimThisWayScore, 5)
end

if ReadByte(worldid) == 0x0B and ReadByte(roomid) == 0x03 and ReadByte(spawnid) == 00 and ReadByte(event1id) == 0x35 and ReadByte(event2id) == 0x35 and ReadByte(event3id) == 0x35
or ReadByte(worldid) == 0x0B and ReadByte(roomid) == 0x03 and ReadByte(spawnid) == 00 and ReadByte(event1id) == 0x44 and ReadByte(event2id) == 0x44 and ReadByte(event3id) == 0x44 then
	WriteByte(SongExcellentChainScore, 99)
	WriteLong(Songs, 0x000F423F)
	WriteByte(SwimThisWayScore, 0)
end

if ReadByte(worldid) == 0x0B and ReadByte(roomid) == 0x09 and ReadByte(spawnid) == 00 and ReadByte(event1id) == 0x41 and ReadByte(event2id) == 0x41 and ReadByte(event3id) == 0x41
or ReadByte(worldid) == 0x0B and ReadByte(roomid) == 0x09 and ReadByte(spawnid) == 00 and ReadByte(event1id) == 0x45 and ReadByte(event2id) == 0x45 and ReadByte(event3id) == 0x45 then
	WriteByte(SongExcellentChainScore, 99)
	WriteLong(Songs, 0x000F423F)
	WriteByte(SwimThisWayScore, 0)
end

if ReadByte(worldid) == 0x0B and ReadByte(roomid) == 0x04 and ReadByte(spawnid) == 00 and ReadByte(event1id) == 0x37 and ReadByte(event2id) == 0x37 and ReadByte(event3id) == 0x37
or ReadByte(worldid) == 0x0B and ReadByte(roomid) == 0x04 and ReadByte(spawnid) == 00 and ReadByte(event1id) == 0x46 and ReadByte(event2id) == 0x46 and ReadByte(event3id) == 0x46 then
	WriteByte(SongExcellentChainScore, 99)
	WriteLong(Songs, 0x000F423F)
	WriteByte(SwimThisWayScore, 0)
end
end
