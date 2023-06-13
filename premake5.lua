project "imgui"
    kind "StaticLib"
    language "C"
    staticruntime "off"

	targetdir ("%{wks.location}/binaries/" .. output_dir .. "/%{prj.name}")
	objdir ("%{wks.location}/intermediates/" .. output_dir .. "/%{prj.name}")

	files {
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
        "imgui_tables.cpp"
	}

    filter "system:windows"
        systemversion "latest"
        cppdialect "C++20"

    filter "configurations:debug"
        runtime "Debug"
        symbols "on"

    filter "configurations:release"
        runtime "Release"
        optimize "on"
