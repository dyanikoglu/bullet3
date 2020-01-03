	project "BulletFileLoader"
		
	kind "StaticLib"
	
	if os.istarget("Linux") then
	    buildoptions{"-fPIC"}
	end
	 
	includedirs {
		"../../../src"
	}
	 
	files {
		"**.cpp",
		"**.h"
	}