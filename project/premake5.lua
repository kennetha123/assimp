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
      "../include/*",
      "../code/Common/Assimp.cpp",
      "../code/Common/BaseImporter.cpp",
      "../code/Collada/ColladaLoader.cpp",
      "../code/Collada/ColladaParser.cpp",
      "../code/Common/CreateAnimMesh.cpp",
      "../code/Ply/PlyParser.cpp",
      "../code/Ply/PlyLoader.cpp",
      "../code/Common/BaseProcess.cpp",
      "../code/PostProcessing/EmbedTexturesProcess.cpp",
      "../code/PostProcessing/ConvertToLHProcess.cpp",
      "../code/Common/DefaultIOStream.cpp",
      "../code/Common/DefaultIOSystem.cpp",
      "../code/Common/DefaultLogger.cpp",
      "../code/PostProcessing/GenVertexNormalsProcess.cpp",
      "../code/Common/Importer.cpp",
      "../code/Common/ImporterRegistry.cpp",
      "../code/Material/MaterialSystem.cpp",
      "../code/Common/PostStepRegistry.cpp",
      "../code/PostProcessing/ProcessHelper.cpp",
      "../code/Common/scene.cpp",
      "../code/Common/ScenePreprocessor.cpp",
      "../code/PostProcessing/ScaleProcess.cpp",
      "../code/Common/SGSpatialSort.cpp",
      "../code/Common/SkeletonMeshBuilder.cpp",
      "../code/Common/SpatialSort.cpp",
      "../code/PostProcessing/TriangulateProcess.cpp",
      "../code/PostProcessing/ValidateDataStructure.cpp",
      "../code/Common/Version.cpp",
      "../code/Common/VertexTriangleAdjacency.cpp",
      "../code/Obj/ObjFileImporter.cpp",
      "../code/Obj/ObjFileMtlImporter.cpp",
      "../code/Obj/ObjFileParser.cpp",
      "../code/glTF/glTFImporter.cpp",
      "../code/glTF2/glTF2Importer.cpp",
      "../code/PostProcessing/MakeVerboseFormat.cpp",
      "../code/PostProcessing/CalcTangentsProcess.cpp",
      "../code/PostProcessing/ScaleProcess.cpp",
      "../code/PostProcessing/EmbedTexturesProcess.cpp",
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