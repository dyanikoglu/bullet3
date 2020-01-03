

project ("Test_clew")

	language "C++"
			
	kind "ConsoleApp"
	
	includedirs {"../../src/clew"}
	
	if os.istarget("Windows") then 
		defines { "WIN32" }
		links {"Ws2_32","Winmm"}
	end
	if os.istarget("Linux") then
		links {"dl"}
	end
	if os.istarget("MacOSX") then
	end		
		
	
	files {
		"clewTest.cpp",
		"../../src/clew/clew.c",
		"../../src/clew/clew.h"
	}

