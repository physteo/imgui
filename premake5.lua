project "imgui"
	kind "StaticLib"
	language "C++"

	includedirs {
		"./",
		"../GLFW/include",
		"../glad/include"
	}

	files
	{
		"imconfig.h",
		"imgui.h",
		"imgui.cpp",
		"imgui_draw.cpp",
		"imgui_internal.h",
		"imgui_widgets.cpp",
		"imstb_rectpack.h",
		"imstb_textedit.h",
		"imstb_truetype.h",
		"imgui_demo.cpp",
		"examples/imgui_impl_glfw.cpp",
		"examples/imgui_impl_glfw.h",
		"examples/imgui_impl_opengl3.cpp",
		"examples/imgui_impl_opengl3.h",
		"misc/cpp/imgui_stdlib.cpp",
		"misc/cpp/imgui_stdlib.h"
	}

	filter "system:windows"
		systemversion "latest"
		staticruntime "On"

		files {
		    "examples/imgui_impl_win32.cpp",
		    "examples/imgui_impl_win32.h"
		}

		defines 
		{ 
			"_CRT_SECURE_NO_WARNINGS"
		}


	filter "configurations:Debug"
		runtime "Debug"
		symbols "on"

	filter "configurations:Release"
		runtime "Release"
		optimize "on"

	filter "configurations:Dist"
		runtime "Release"
		optimize "on"
