	project "enet"
		
	kind "StaticLib"
	
	if os.istarget("Windows") then 
		defines { "WIN32" }
			files{"win32.c"}
		end
		if os.istarget("Linux") then
		 defines {"HAS_SOCKLEN_T"}
			files {"unix.c",}
		end
		if os.istarget("MacOSX") then
			files{"unix.c"}
		end		
		
	
	includedirs {
		".","include"
	}
    if os.istarget("Linux") then
        buildoptions{"-fPIC"}
    end
	files {
		"callbacks.c",
		"compress.c",
		"host.c",
		"list.c",
		"packet.c",
		"peer.c",
		"protocol.c",
		"**.h"
	}
