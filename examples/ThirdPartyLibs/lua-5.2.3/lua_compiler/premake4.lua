

project ("App_LuaCompiler")

	language "C++"
			
	kind "ConsoleApp"
	targetdir "../../../../bin"
	includedirs {"../src"}
	
	if os.istarget("Windows") then 
	end
	if os.istarget("Linux") then
	end
	if os.istarget("MacOSX") then
	end		
		
	links {"lua-5.2.3"}		
	
	files {
		"luac.c",
	}

