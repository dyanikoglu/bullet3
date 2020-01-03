	project "vhacd"

	kind "StaticLib"
    if os.istarget("Linux") then
        buildoptions{"-fPIC"}
    end
	includedirs {
		"../inc","../public",
	}
	files {
		"*.cpp",
		"*.h"
	}
