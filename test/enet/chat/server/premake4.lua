

project ("Test_enet_chat_server")

	language "C++"
			
	kind "ConsoleApp"
	
	includedirs {"../../../../examples/ThirdPartyLibs/enet/include"}
	
	if os.istarget("Windows") then 
			defines { "WIN32" }

		links {"Ws2_32","Winmm"}
	end
	if os.istarget("Linux") then
	end
	if os.istarget("MacOSX") then
	end		
		
	links {"enet"}		
	
	files {
		"main.cpp",
	}

