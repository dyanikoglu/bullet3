	
		project "OpenGL_Window"
	
		language "C++"
				
		kind "StaticLib"

		initOpenGL()
		initGlew()

		includedirs {
		 	"../ThirdPartyLibs",
		 	"../../src",
		}

        if os.istarget("Linux") then
            buildoptions{"-fPIC"}
        end
        		
		--links {
		--}
		
		files {
			"*.cpp",
			"*.h",
			"OpenGLWindow/*.c",
			"OpenGLWindow/*.h",
			"OpenGLWindow/GL/*.h",
			"../ThirdPartyLibs/stb_image/stb_image_write.cpp",
		}

		
		
		if not os.istarget("Windows") then 
			excludes {  
				"Win32OpenGLWindow.cpp",
      	"Win32OpenGLWindow.h",
      	"Win32Window.cpp",
      	"Win32Window.h",
			}
		end
		if os.istarget("Linux") then
			initX11()
		end
		if not os.istarget("Linux") then
			excludes {
				"X11OpenGLWindow.cpp",
				"X11OpenGLWindows.h"
			}
		end
		if not os.istarget("MacoSX") then
			excludes {
				"MacOpenGLWindow.cpp"
			}
		end
		if os.istarget("MacOSX") then
			files
			{
					"MacOpenGLWindow.h",
					"MacOpenGLWindow.cpp",
					"MacOpenGLWindowObjC.m",
					"MacOpenGLWindowObjC.h",
			} 
		end
