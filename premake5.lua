workspace "RayTracingWorkspace"
    configurations { "Debug", "Release" }

project "RayTracing"
    kind "ConsoleApp"
    language "C++"
    targetdir "bin/%{cfg.buildcfg}"
    
    files { "src/**.cpp", "include/**.h" }
    includedirs { "include" }
    
    filter "configurations:Debug"
        defines { "DEBUG" }
        symbols "On"

    filter "configurations:Release"
        defines { "NDEBUG" }
        optimize "On"
