	project "gwen"
		
	kind "StaticLib"
		
	--flags {"Unicode"}
initOpenGL()
initGlew()
if os.istarget("Linux") then	
	initX11()
end 
	
	defines { "GWEN_COMPILE_STATIC"  }
	 defines { "DONT_USE_GLUT"}	
    if os.istarget("Linux") then
        buildoptions{"-fPIC"}
    end
	includedirs {
		".",".."
	}
	files {
		"*.cpp",
		"*.h",
		"Controls/*.cpp",
		"Controls/*.h",
		"Controls/Dialog/*.cpp",
		"Controls/Dialogs/*.h",
		"Controls/Layout/*.h",
		"Controls/Property/*.h",
		"Input/*.h",
		"Platforms/*.cpp",
		"Renderers/*.cpp",
		"Skins/*.cpp",
		"Skins/*.h"
	}
