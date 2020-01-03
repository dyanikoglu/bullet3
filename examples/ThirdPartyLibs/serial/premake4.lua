	project "serial"

	kind "StaticLib"
	
	includedirs {"include"}
	
    if os.istarget("Linux") then
        buildoptions{"-fPIC"}
    end
	if os.istarget("Windows") then 
		files{
			 "src/impl/win.cc",
			 "src/impl/list_ports/list_ports_win.cc"
		 }
	end

	if os.istarget("Linux") then
	files{
			 "src/impl/unix.cc",
			 "src/impl/list_ports/list_ports_linux.cc"
		 }
	end

	if os.istarget("MacOSX") then
		files{
				 "src/impl/unix.cc",
				 "src/impl/list_ports/list_ports_osx.cc"
			 }
	end
	
	files {
		"src/serial.cc",
		"**.h"
	}