project "assimp"
	location ""
	kind "StaticLib"
	language "C++"
	cppdialect "C++17"
	staticruntime "on"

	targetdir ("bin" .. outputName)
	objdir ("obj" .. outputName)
  
  files
  {
      "../code/Common/Assimp.cpp",
      "../code/Common/BaseImporter.cpp",
      "../code/Common/CreateAnimMesh.cpp",
      "../code/Common/BaseProcess.cpp",
      "../code/Common/DefaultIOStream.cpp",
      "../code/Common/DefaultIOSystem.cpp",
      "../code/Common/DefaultLogger.cpp",
      "../code/Common/Importer.cpp",
      "../code/Common/ImporterRegistry.cpp",
      "../code/Common/PostStepRegistry.cpp",
      "../code/Common/scene.cpp",
      "../code/Common/ScenePreprocessor.cpp",
      "../code/Common/SGSpatialSort.cpp",
      "../code/Common/SkeletonMeshBuilder.cpp",
      "../code/Common/SpatialSort.cpp",
      "../code/Common/Version.cpp",
      "../code/Common/VertexTriangleAdjacency.cpp",
      "../code/Common/ZipArchiveIOSystem.cpp",
	  
      "../code/Collada/ColladaLoader.cpp",
      "../code/Collada/ColladaParser.cpp",
      "../code/Ply/PlyParser.cpp",
      "../code/Ply/PlyLoader.cpp",
      "../code/PostProcessing/EmbedTexturesProcess.cpp",
      "../code/PostProcessing/ConvertToLHProcess.cpp",
      "../code/PostProcessing/GenVertexNormalsProcess.cpp",
      "../code/PostProcessing/MakeVerboseFormat.cpp",
      "../code/PostProcessing/CalcTangentsProcess.cpp",
      "../code/PostProcessing/ScaleProcess.cpp",
      "../code/PostProcessing/EmbedTexturesProcess.cpp",
      "../code/PostProcessing/ProcessHelper.cpp",
      "../code/PostProcessing/ScaleProcess.cpp",
      "../code/PostProcessing/TriangulateProcess.cpp",
      "../code/PostProcessing/ValidateDataStructure.cpp",
      "../code/Material/MaterialSystem.cpp",
      "../code/Obj/ObjFileImporter.cpp",
      "../code/Obj/ObjFileMtlImporter.cpp",
      "../code/Obj/ObjFileParser.cpp",
      "../code/glTF/glTFImporter.cpp",
      "../code/glTF2/glTF2Importer.cpp",
      
	  "../code/X/XFileImporter.cpp",
      "../code/AMF/AMFImporter.cpp",
      "../code/FBX/FBXImporter.cpp",
      "../code/3DS/3DSLoader.cpp",
      "../code/MD3/MD3Loader.cpp",
      "../code/MD2/MD2Loader.cpp",
      "../code/MDL/MDLLoader.cpp",
      "../code/ASE/ASELoader.cpp",
      "../code/HMP/HMPLoader.cpp",
      "../code/SMD/SMDLoader.cpp",
      "../code/MDC/MDCLoader.cpp",
      "../code/MD5/MD5Loader.cpp",
      "../code/STL/STLLoader.cpp",
      "../code/LWO/LWOLoader.cpp",
      "../code/DXF/DXFLoader.cpp",
      "../code/NFF/NFFLoader.cpp",
      "../code/RAW/RAWLoader.cpp",
      "../code/SIB/SIBImporter.cpp",
      "../code/OFF/OFFLoader.cpp",
      "../code/AC/ACLoader.cpp",
      "../code/BVH/BVHLoader.cpp",
      "../code/irr/IRRMeshLoader.cpp",
      "../code/irr/IRRLoader.cpp",
      "../code/Q3D/Q3DLoader.cpp",
      "../code/B3D/B3DImporter.cpp",
      "../code/Q3D/Q3DLoader.cpp",
      "../code/Terragen/*cpp",
      "../code/Terragen/*h",
      "../code/CSM/CSMLoader.cpp",
      "../code/Unreal/UnrealLoader.cpp",
      "../code/LWS/LWSLoader.cpp",
      "../code/LWS/LWSLoader.h",
      "../code/Ogre/OgreImporter.cpp",
      "../code/Ogre/OgreImporter.h",
      "../code/OpenGEX/OpenGEXImporter.cpp",
      "../code/LWS/LWSLoader.cpp",
      "../code/MS3D/MS3DLoader.cpp",
      "../code/COB/COBLoader.cpp",
      "../code/Blender/BlenderLoader.cpp",
      "../code/Q3BSP/Q3BSPFileImporter.cpp",
      "../code/NDO/NDOLoader.cpp",
      "../code/Importer/IFC/IFCLoader.cpp",
      "../code/XGL/XGLLoader.cpp",
      "../code/Assbin/AssbinLoader.cpp",
      "../code/C4D/C4DImporter.cpp",
      "../code/3MF/D3MFImporter.cpp",
      "../code/X3D/X3DImporter.cpp",
      "../code/MMD/MMDImporter.cpp",
      "../code/Importer/StepFile/StepFileImporter.cpp",

	  "../contrib/irrXML/*",  
	  }
  
  includedirs {
	  "..",
      "../include",
	  "../code",
      "../contrib/irrXML",
      "../contrib/zlib",
      "../contrib/rapidjson/include",
  }
	  
	  -- filter configuration of VS
	filter "configurations:Debug"
		runtime "Debug"
		symbols "on"
	
	filter "configurations:Release"
		runtime "Release"
		optimize "on"