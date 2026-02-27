PROJECT_NAME = "sandbox"
PROJECT_DEPENDENCIES = { "fatcore" }

include "../fatcore/premake5-common.lua"

group "01-libs"
    include "../fatcore/premake5-fatcore.lua"
 
group "03-programs"
    project "hello"
        location(PROJECT_PATH .. "/build/hello")
        targetname "hello"
        kind "ConsoleApp"
        defines { "FAT_LINKS_CORE" }
        files { "src/hello/hello.c" }
        links { "fatcore" }
