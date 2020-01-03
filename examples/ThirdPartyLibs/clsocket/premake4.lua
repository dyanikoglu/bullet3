	project "clsocket"
		
	kind "StaticLib"
	
	if os.istarget("Windows") then 
		defines { "WIN32","_WINSOCK_DEPRECATED_NO_WARNINGS" }
		end
		if os.istarget("Linux") then
		 defines {"HAS_SOCKLEN_T","_LINUX"}
		end
		if os.istarget("MacOSX") then
		 defines {"HAS_SOCKLEN_T","_DARWIN"}
		end		
		
	
	includedirs {
		".","include","src"
	}
    if os.istarget("Linux") then
        buildoptions{"-fPIC"}
    end
	files {
		"src/SimpleSocket.cpp",
		"src/ActiveSocket.cpp",
		"src/PassiveSocket.cpp",
		"**.h"
	}
