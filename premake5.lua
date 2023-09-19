project "zlibstatic"
    kind "StaticLib"
    language "C++"
    cppdialect "C++17"
    staticruntime "on"

    targetdir("%{wks.location}/bin/" .. outputdir .. "/%{prj.name}")
    debugdir("%{wks.location}/bin/" .. outputdir .. "/%{prj.name}")
    objdir("%{wks.location}/bin-int/" .. outputdir .. "/%{prj.name}")

    includedirs {
        'include/',
        'contrib/',
        'contrib/zlib/',
        'code',
    }

    files {
        -- Dependencies
        'contrib/zlib/*',
        -- Common
        -- 'code/Common/**',
        -- 'code/PostProcessing/**',
        -- 'code/Material/**',
        -- 'code/CApi/**',
        -- -- Importers
        -- 'code/Collada/**',
        -- 'code/Obj/**',
        -- -- 'assimp/code/Blender/**', 'assimp/contrib/poly2tri/poly2tri/**',
        -- 'code/FBX/**',
        -- -- 'assimp/code/glTF2/**',
        -- -- 'assimp/code/glTF/**',
        -- 'code/Assbin/**', -- For caching,
        -- 'include/assimp/**'
    }

    defines {
        '_CRT_SECURE_NO_DEPRECATE',
        '_CRT_NONSTDC_NO_DEPRECATE'
    }

    filter "system:windows"
    systemversion "latest"

    filter "configurations:Debug"
        defines "_DEBUG"
        symbols "on"
    filter "configurations:Release"
        defines "NDEBUG"
        symbols "on"
        optimize "on"
    filter "configurations:Dist"
        defines "NDEBUG"
        optimize "on"   


project "assimp"
        kind "StaticLib"
        language "C++"
        cppdialect "C++17"
        staticruntime "on"

        targetdir("%{wks.location}/bin/" .. outputdir .. "/%{prj.name}")
        debugdir("%{wks.location}/bin/" .. outputdir .. "/%{prj.name}")
        objdir("%{wks.location}/bin-int/" .. outputdir .. "/%{prj.name}")

        includedirs {
            'include/',
            'contrib/',
            'contrib/irrXML/',
            'contrib/unzip/',
            'contrib/rapidjson/include/',
            'contrib/zlib/',
            'contrib/pugixml/src',
            'contrib/utf8cpp/source',
            'contrib/utf8cpp/source/utf8',
            'contrib/utf8cpp',
            '',
            'code',
        }


        files {
            -- Dependencies
            'contrib/unzip/**',
            'contrib/irrXML/**',
            -- 'contrib/zlib/**',
            'contrib/clipper/**',
            'contrib/Open3DGC/**',
            'contrib/opendllparser/**',
            'contrib/poly2tri/**',
            'contrib/pugixml/**',



            -- Common
            'code/**',
            -- 'code/Common/**',
            -- 'code/PostProcessing/**',
            -- 'code/Material/**',
            -- 'code/CApi/**',
            -- 'code/Geometry/**',
            -- -- Importers
            -- 'code/Collada/**',
            -- 'code/Obj/**',
            -- -- 'assimp/code/Blender/**', 'assimp/contrib/poly2tri/poly2tri/**',
            -- 'code/FBX/**',
            -- -- 'assimp/code/glTF2/**',
            -- -- 'assimp/code/glTF/**',
            -- 'code/Assbin/**', -- For caching,
            'include/assimp/**'
        }
        
        --ZLIB
        defines{
            -- "ASSIMP_BUILD_NO_OWN_ZLIB",
            '_CRT_SECURE_NO_WARNINGS',
            '_SCL_SECURE_NO_WARNINGS',
            'WIN32_LEAN_AND_MEAN',
            'OPENDDL_STATIC_LIBARY',
            'OPENDDLPARSER_BUILD'
        }
        -- Importers
        defines {
            'ASSIMP_BUILD_NO_C4D_IMPORTER',
            'ASSIMP_BUILD_NO_AMF_IMPORTER',
            'ASSIMP_BUILD_NO_3DS_IMPORTER',
            'ASSIMP_BUILD_NO_AC_IMPORTER',
            'ASSIMP_BUILD_NO_ASE_IMPORTER',
            'ASSIMP_BUILD_NO_ASSBIN_IMPORTER',
            'ASSIMP_BUILD_NO_B3D_IMPORTER',
            'ASSIMP_BUILD_NO_BVH_IMPORTER',
            'ASSIMP_BUILD_NO_COLLADA_IMPORTER',
            'ASSIMP_BUILD_NO_DXF_IMPORTER',
            'ASSIMP_BUILD_NO_CSM_IMPORTER',
            'ASSIMP_BUILD_NO_HMP_IMPORTER',
            'ASSIMP_BUILD_NO_IRRMESH_IMPORTER',
            'ASSIMP_BUILD_NO_IQM_IMPORTER',
            'ASSIMP_BUILD_NO_IRR_IMPORTER',
            'ASSIMP_BUILD_NO_LWO_IMPORTER',
            'ASSIMP_BUILD_NO_LWS_IMPORTER',
            'ASSIMP_BUILD_NO_MD2_IMPORTER',
            'ASSIMP_BUILD_NO_MD3_IMPORTER',
            'ASSIMP_BUILD_NO_MD5_IMPORTER',
            'ASSIMP_BUILD_NO_MDC_IMPORTER',
            'ASSIMP_BUILD_NO_MDL_IMPORTER',
            'ASSIMP_BUILD_NO_NFF_IMPORTER',
            'ASSIMP_BUILD_NO_NDO_IMPORTER',
            'ASSIMP_BUILD_NO_OFF_IMPORTER',
            -- 'ASSIMP_BUILD_NO_OBJ_IMPORTER',
            'ASSIMP_BUILD_NO_OGRE_IMPORTER',
            'ASSIMP_BUILD_NO_OPENGEX_IMPORTER',
            'ASSIMP_BUILD_NO_PLY_IMPORTER',
            'ASSIMP_BUILD_NO_MS3D_IMPORTER',
            'ASSIMP_BUILD_NO_COB_IMPORTER',
            'ASSIMP_BUILD_NO_BLEND_IMPORTER',
            'ASSIMP_BUILD_NO_IFC_IMPORTER',
            'ASSIMP_BUILD_NO_XGL_IMPORTER',
            -- 'ASSIMP_BUILD_NO_FBX_IMPORTER',
            'ASSIMP_BUILD_NO_Q3BSP_IMPORTER',
            'ASSIMP_BUILD_NO_RAW_IMPORTER',
            'ASSIMP_BUILD_NO_SIB_IMPORTER',
            'ASSIMP_BUILD_NO_SMD_IMPORTER',
            'ASSIMP_BUILD_NO_STL_IMPORTER',
            'ASSIMP_BUILD_NO_TERRAGEN_IMPORTER',
            'ASSIMP_BUILD_NO_3D_IMPORTER',
            'ASSIMP_BUILD_NO_X_IMPORTER',
            'ASSIMP_BUILD_NO_X3D_IMPORTER',
            'ASSIMP_BUILD_NO_GLTF_IMPORTER',
            'ASSIMP_BUILD_NO_3MF_IMPORTER',
            'ASSIMP_BUILD_NO_MMD_IMPORTER',
            'ASSIMP_BUILD_NO_M3D_IMPORTER',
            'ASSIMP_BUILD_NO_Q3D_IMPORTER'

         

        }
        -- Exporters
        defines {
            'ASSIMP_BUILD_NO_COLLADA_EXPORTER',
            'ASSIMP_BUILD_NO_X_EXPORTER',
            'ASSIMP_BUILD_NO_STEP_EXPORTER',
            -- 'ASSIMP_BUILD_NO_OBJ_EXPORTER',
            'ASSIMP_BUILD_NO_STL_EXPORTER',
            'ASSIMP_BUILD_NO_PLY_EXPORTER',
            'ASSIMP_BUILD_NO_3DS_EXPORTER',
            'ASSIMP_BUILD_NO_GLTF_EXPORTER',
            'ASSIMP_BUILD_NO_ASSBIN_EXPORTER',
            'ASSIMP_BUILD_NO_ASSXML_EXPORTER',
            'ASSIMP_BUILD_NO_X3D_EXPORTER',
            -- 'ASSIMP_BUILD_NO_FBX_EXPORTER',
            'ASSIMP_BUILD_NO_M3D_EXPORTER',
            'ASSIMP_BUILD_NO_3MF_EXPORTER',
            'ASSIMP_BUILD_NO_ASSJSON_EXPORTER',
            'ASSIMP_BUILD_NO_M3D_EXPORTER'
        }

        links
        {
            "zlibstatic"
        }
        
        filter "system:windows"
                systemversion "latest"

        filter "configurations:Debug"
                defines "_DEBUG"
                symbols "on"
        filter "configurations:Release"
                defines "NDEBUG"
                symbols "on"
                optimize "on"
        filter "configurations:Dist"
                defines "NDEBUG"
                optimize "on"