workspace "Gameboy"
	location ".\\build\\"
	startproject "game"

	targetdir "%{wks.location}\\bin\\%{cfg.buildcfg}\\"
	objdir "%{wks.location}\\obj\\%{cfg.buildcfg}\\%{prj.name}\\"
	buildlog "%{wks.location}\\obj\\%{cfg.buildcfg}\\%{prj.name}.log"

	systemversion "latest"
	characterset "ascii"
	
	includedirs {
		"./src/",
		"C:/gbdk/include",
	}
	
	prebuildcommands {
		"call ../tools/build.bat",
	}
	
	postbuildcommands {
		"rmdir /s /q ..\\build\\bin\\ ",
		"rmdir /s /q ..\\build\\obj\\ ",
		"call C:/bgb/bgb.exe ../build/ROM/main.gb",
	}

	platforms {
		"GB",
	}

	configurations {
		"Release",
		"Debug",
	}
	
	configuration "Release"
		defines "NDEBUG"

	configuration "Debug"
		defines "DEBUG"

	project "game"
		targetname "game"

		language "c"
		kind "utility"
		warnings "off"
		
		forceincludes "global.h"
		
		files {
			"./src/**",
		}