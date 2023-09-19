project "ImGui"
  kind "StaticLib"
  language "C++"

  targetdir ("bin/" .. outputdir .. "/%{prj.name}")
  objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

      files
      {
       "imconfig.h",
       "imgui.h",
       "imgui.cpp",
       "imgui_draw.cpp",
       "imgui_internal.g",
       "imgui_widgets.cpp",
       "imstb_rectpack.h",
       "imstb_textedit.h",
       "imstb_truetype.h",
       "imgui_demo.cpp"
      }

   filter "system:Windows"
      systemversion "latest"
      cppdialect "C++14"
      staticruntime "On"

   filter {"system:Windows", "configurations:Release"}
      buildoptions "/MT"
