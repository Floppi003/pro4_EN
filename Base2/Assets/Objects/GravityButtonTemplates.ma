//Maya ASCII 2015 scene
//Name: GravityButtons.ma
//Last modified: Mon, May 11, 2015 06:06:04 PM
//Codeset: 1252
requires maya "2015";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2015";
fileInfo "version" "2015";
fileInfo "cutIdentifier" "201410051530-933320";
fileInfo "osv" "Microsoft Windows 7 Home Premium Edition, 64-bit Windows 7 Service Pack 1 (Build 7601)\n";
fileInfo "license" "student";
createNode transform -s -n "persp";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 9.2277758813965605 1.7971023339748662 8.0914614507564533 ;
	setAttr ".r" -type "double3" -17.738352750251604 -3948.999999980831 4.050105191794436e-016 ;
createNode camera -s -n "perspShape" -p "persp";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 5.7343958856975501;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 8.1856210665393974 0.049999999999999892 2.7300397222970592 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 100.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 10.316745299257809 0.55732145013272716 100.1 ;
createNode camera -s -n "frontShape" -p "front";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 9.9986394883970693;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 100.1 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "pCube1";
	setAttr ".t" -type "double3" -4.2275653510631619 0 0 ;
	setAttr ".s" -type "double3" 1 0.081714068489157174 1 ;
createNode mesh -n "pCubeShape1" -p "pCube1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pCube2";
	setAttr ".t" -type "double3" -4.2275653510631619 0.079284506331414289 0 ;
	setAttr ".s" -type "double3" 0.30471705448084502 0.07964061505985405 0.30471705448084502 ;
createNode mesh -n "pCubeShape2" -p "pCube2";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 6 ".pt[18:23]" -type "float3"  0.63962317 2.220446e-015 
		-0.63962317 5.8260964e-017 2.220446e-015 -0.63962317 5.8260964e-017 2.220446e-015 
		0.63962317 0.63962317 2.220446e-015 0.63962317 -0.63962317 2.220446e-015 -0.63962317 
		-0.63962317 2.220446e-015 0.63962317;
createNode transform -n "pCube3";
	setAttr ".t" -type "double3" -7.8359821140342802 2.7755575615628914e-017 0 ;
	setAttr ".s" -type "double3" 1 0.1 1 ;
createNode mesh -n "pCubeShape3" -p "pCube3";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pCube4";
	setAttr ".t" -type "double3" -7.8359821140342802 0.075000000000000025 0 ;
	setAttr ".r" -type "double3" 0 45 0 ;
	setAttr ".s" -type "double3" 0.5 0.05 0.5 ;
createNode mesh -n "pCubeShape4" -p "pCube4";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.4375 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape1" -p "pCube4";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube5";
	setAttr ".t" -type "double3" -7.6672456483426359 0 2.4978664562811583 ;
	setAttr ".s" -type "double3" 1 0.1 1 ;
createNode mesh -n "pCubeShape5" -p "pCube5";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.875 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt";
	setAttr ".pt[0]" -type "float3" -0.09062437 0 0.09062437 ;
	setAttr ".pt[1]" -type "float3" 0.09062437 0 0.09062437 ;
	setAttr ".pt[6]" -type "float3" -0.09062437 0 -0.09062437 ;
	setAttr ".pt[7]" -type "float3" 0.09062437 0 -0.09062437 ;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube6";
	setAttr ".t" -type "double3" -7.841676171980307 0.081242937083472452 -0.0054378071522949711 ;
	setAttr ".r" -type "double3" 0 45 0 ;
	setAttr ".s" -type "double3" 0.32431580828524414 0.1 0.32431580828524414 ;
createNode transform -n "transform3" -p "pCube6";
	setAttr ".v" no;
createNode mesh -n "pCubeShape6" -p "transform3";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[1].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube7";
	setAttr ".t" -type "double3" -9.3454942370090262 -1.2490009027033011e-016 -3.4160160912174861e-016 ;
	setAttr ".s" -type "double3" 1 0.1 1 ;
createNode mesh -n "pCubeShape7" -p "pCube7";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube8";
	setAttr ".t" -type "double3" -9.3454942370090262 0.22499999999999989 -3.4160160912174861e-016 ;
	setAttr ".r" -type "double3" 90 0 -45 ;
	setAttr ".s" -type "double3" 0.5 0.05 0.5 ;
createNode mesh -n "pCubeShape8" -p "pCube8";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.4375 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 34 ".uvst[0].uvsp[0:33]" -type "float2" 0.375 0 0.375 0.25
		 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.875 0 0.875 0.25 0.125 0 0.125
		 0.25 0.5 0.5 0.5 0.75 0.5 0 0.5 1 0.5 0.25 0.625 0.375 0.75 0.25 0.5 0.375 0.25 0.25
		 0.375 0.375 0.25 0 0.375 0.875 0.5 0.875 0.625 0.875 0.75 0 0 1 0.5 1 0.5 0 0 0 0
		 1 0.5 1 0.5 0 0 0;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 16 ".vt[0:15]"  -0.5 -0.5 0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5
		 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5 0 0.5 -0.5 0 -0.5 -0.5 0 -0.5 0.5 0 0.5 0.5
		 0.5 0.5 0 0 0.5 0 -0.5 0.5 0 -0.5 -0.5 0 0 -0.5 0 0.5 -0.5 0;
	setAttr -s 28 ".ed[0:27]"  0 8 0 1 9 0 2 6 0 4 7 0 0 1 0 1 12 0 2 4 0
		 3 5 0 4 13 0 5 15 0 6 3 0 7 5 0 6 7 0 7 14 0 8 9 0 9 11 0 10 3 0 11 6 0 10 11 0 12 2 0
		 11 12 0 13 0 0 12 13 0 14 8 0 13 14 0 14 15 0 15 10 0 14 11 0;
	setAttr -s 14 -ch 56 ".fc[0:13]" -type "polyFaces" 
		f 4 0 14 -2 -5
		mu 0 4 0 13 15 1
		f 4 1 15 20 -6
		mu 0 4 1 15 18 20
		f 4 2 12 -4 -7
		mu 0 4 2 11 12 4
		f 4 24 23 -1 -22
		mu 0 4 22 23 14 6
		f 4 21 4 5 22
		mu 0 4 21 0 1 19
		f 4 10 7 -12 -13
		mu 0 4 11 3 5 12
		f 4 -18 -19 16 -11
		mu 0 4 11 18 16 3
		f 4 -21 17 -3 -20
		mu 0 4 20 18 11 2
		f 4 8 -23 19 6
		mu 0 4 9 21 19 10
		f 4 3 13 -25 -9
		mu 0 4 4 12 23 22
		f 4 -26 -14 11 9
		mu 0 4 24 23 12 5
		f 4 -27 -10 -8 -17
		mu 0 4 17 25 7 8
		f 4 -16 -15 -24 27
		mu 0 4 26 27 28 29
		f 4 18 -28 25 26
		mu 0 4 30 31 32 33;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "polySurfaceShape1" -p "pCube8";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube9";
	setAttr ".t" -type "double3" -9.3454942370090262 0.22499999999999989 -3.4160160912174861e-016 ;
	setAttr ".r" -type "double3" 0 45 -90 ;
	setAttr ".s" -type "double3" 0.5 0.05 0.5 ;
createNode mesh -n "pCubeShape9" -p "pCube9";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.4375 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 34 ".uvst[0].uvsp[0:33]" -type "float2" 0.375 0 0.375 0.25
		 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.875 0 0.875 0.25 0.125 0 0.125
		 0.25 0.5 0.5 0.5 0.75 0.5 0 0.5 1 0.5 0.25 0.625 0.375 0.75 0.25 0.5 0.375 0.25 0.25
		 0.375 0.375 0.25 0 0.375 0.875 0.5 0.875 0.625 0.875 0.75 0 0 1 0.5 1 0.5 0 0 0 0
		 1 0.5 1 0.5 0 0 0;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 16 ".vt[0:15]"  -0.5 -0.5 0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5
		 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5 0 0.5 -0.5 0 -0.5 -0.5 0 -0.5 0.5 0 0.5 0.5
		 0.5 0.5 0 0 0.5 0 -0.5 0.5 0 -0.5 -0.5 0 0 -0.5 0 0.5 -0.5 0;
	setAttr -s 28 ".ed[0:27]"  0 8 0 1 9 0 2 6 0 4 7 0 0 1 0 1 12 0 2 4 0
		 3 5 0 4 13 0 5 15 0 6 3 0 7 5 0 6 7 0 7 14 0 8 9 0 9 11 0 10 3 0 11 6 0 10 11 0 12 2 0
		 11 12 0 13 0 0 12 13 0 14 8 0 13 14 0 14 15 0 15 10 0 14 11 0;
	setAttr -s 14 -ch 56 ".fc[0:13]" -type "polyFaces" 
		f 4 0 14 -2 -5
		mu 0 4 0 13 15 1
		f 4 1 15 20 -6
		mu 0 4 1 15 18 20
		f 4 2 12 -4 -7
		mu 0 4 2 11 12 4
		f 4 24 23 -1 -22
		mu 0 4 22 23 14 6
		f 4 21 4 5 22
		mu 0 4 21 0 1 19
		f 4 10 7 -12 -13
		mu 0 4 11 3 5 12
		f 4 -18 -19 16 -11
		mu 0 4 11 18 16 3
		f 4 -21 17 -3 -20
		mu 0 4 20 18 11 2
		f 4 8 -23 19 6
		mu 0 4 9 21 19 10
		f 4 3 13 -25 -9
		mu 0 4 4 12 23 22
		f 4 -26 -14 11 9
		mu 0 4 24 23 12 5
		f 4 -27 -10 -8 -17
		mu 0 4 17 25 7 8
		f 4 -16 -15 -24 27
		mu 0 4 26 27 28 29
		f 4 18 -28 25 26
		mu 0 4 30 31 32 33;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "polySurfaceShape1" -p "pCube9";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube10";
	setAttr ".t" -type "double3" 10.154242919434608 0.049999999999999892 0 ;
	setAttr ".s" -type "double3" 1 0.1 1 ;
createNode mesh -n "pCubeShape10" -p "pCube10";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -1.1641532e-009 0 1.1641532e-009 
		1.1641532e-009 0 1.1641532e-009 0.073273733 0 -0.073273733 -0.073273733 0 -0.073273733 
		0.073273733 0 0.073273733 -0.073273733 0 0.073273733 -1.1641532e-009 0 -1.1641532e-009 
		1.1641532e-009 0 -1.1641532e-009;
createNode mesh -n "polySurfaceShape3" -p "pCube10";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube11";
	setAttr ".t" -type "double3" 10.154242919434608 0.85127225406841267 -1.2325951644078309e-032 ;
	setAttr ".r" -type "double3" 89.999999999999986 3.1805546814635168e-015 -135 ;
	setAttr ".s" -type "double3" 0.5 0.05 0.5 ;
createNode mesh -n "polySurfaceShape2" -p "pCube11";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface1" -p "pCube11";
	setAttr ".t" -type "double3" -0.15089452765090763 4.1881644721993749e-016 -0.15089452765090772 ;
createNode mesh -n "polySurfaceShape7" -p "polySurface1";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface2" -p "pCube11";
createNode transform -n "transform19" -p "polySurface2";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape8" -p "transform19";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface3" -p "pCube11";
createNode transform -n "transform18" -p "polySurface3";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape9" -p "transform18";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface4" -p "pCube11";
createNode transform -n "transform17" -p "polySurface4";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape10" -p "transform17";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface5" -p "pCube11";
createNode transform -n "transform16" -p "polySurface5";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape11" -p "transform16";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface6" -p "pCube11";
createNode transform -n "transform15" -p "polySurface6";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape12" -p "transform15";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface7" -p "pCube11";
createNode transform -n "transform14" -p "polySurface7";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape13" -p "transform14";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "transform13" -p "pCube11";
	setAttr ".v" no;
createNode mesh -n "pCubeShape11" -p "transform13";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 2 ".ciog[0].cog";
	setAttr ".pv" -type "double2" 0.3680555522441864 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pCube12";
	setAttr ".t" -type "double3" -7.6672456483426359 0.070393015732647279 -1.1102230246251565e-016 ;
	setAttr ".r" -type "double3" 0 45 0 ;
	setAttr ".s" -type "double3" 0.6581308866782396 0.1 0.6581308866782396 ;
createNode transform -n "transform4" -p "pCube12";
	setAttr ".v" no;
createNode mesh -n "pCubeShape12" -p "transform4";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[1].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.875 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt";
	setAttr ".pt[0]" -type "float3" -0.038356096 0 0.038356096 ;
	setAttr ".pt[1]" -type "float3" 0.038356096 0 0.038356096 ;
	setAttr ".pt[6]" -type "float3" -0.038356096 0 -0.038356096 ;
	setAttr ".pt[7]" -type "float3" 0.038356096 0 -0.038356096 ;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube13";
	setAttr ".t" -type "double3" -9.4690175933770853 0 2.4978664562811583 ;
	setAttr ".s" -type "double3" 1 0.1 1 ;
createNode mesh -n "pCubeShape13" -p "pCube13";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.875 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt";
	setAttr ".pt[0]" -type "float3" -0.09062437 0 0.09062437 ;
	setAttr ".pt[1]" -type "float3" 0.09062437 0 0.09062437 ;
	setAttr ".pt[6]" -type "float3" -0.09062437 0 -0.09062437 ;
	setAttr ".pt[7]" -type "float3" 0.09062437 0 -0.09062437 ;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube14";
	setAttr ".t" -type "double3" -9.4690216410081316 0.081242937083472452 -0.0054378071522949711 ;
	setAttr ".r" -type "double3" 0 45 0 ;
	setAttr ".s" -type "double3" 0.43404040145940476 0.1 0.43404040145940476 ;
createNode transform -n "transform1" -p "pCube14";
	setAttr ".v" no;
createNode mesh -n "pCubeShape14" -p "transform1";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[1].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube15";
	setAttr ".t" -type "double3" -9.4690175933770853 0.070393015732647279 -1.1102230246251565e-016 ;
	setAttr ".r" -type "double3" 0 45 0 ;
	setAttr ".s" -type "double3" 0.6581308866782396 0.1 0.6581308866782396 ;
createNode transform -n "transform2" -p "pCube15";
	setAttr ".v" no;
createNode mesh -n "pCubeShape15" -p "transform2";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[1].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.875 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt";
	setAttr ".pt[0]" -type "float3" -0.038356096 0 0.038356096 ;
	setAttr ".pt[1]" -type "float3" 0.038356096 0 0.038356096 ;
	setAttr ".pt[6]" -type "float3" -0.038356096 0 -0.038356096 ;
	setAttr ".pt[7]" -type "float3" 0.038356096 0 -0.038356096 ;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube16";
	setAttr ".t" -type "double3" 0 0 2.4978664562811583 ;
	setAttr ".rp" -type "double3" -9.4690179824829102 0.070393020287156105 0 ;
	setAttr ".sp" -type "double3" -9.4690179824829102 0.070393020287156105 0 ;
createNode mesh -n "pCube16Shape" -p "pCube16";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pCube17";
	setAttr ".t" -type "double3" -9.5746232813996315 0 -1.6226893309294284 ;
	setAttr ".s" -type "double3" 1 0.1 1 ;
createNode mesh -n "pCubeShape17" -p "pCube17";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.875 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt";
	setAttr ".pt[0]" -type "float3" -0.09062437 0 0.09062437 ;
	setAttr ".pt[1]" -type "float3" 0.09062437 0 0.09062437 ;
	setAttr ".pt[6]" -type "float3" -0.09062437 0 -0.09062437 ;
	setAttr ".pt[7]" -type "float3" 0.09062437 0 -0.09062437 ;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube19";
	setAttr ".t" -type "double3" -9.5746232813996315 0.070393015732647279 -1.6226893309294284 ;
	setAttr ".r" -type "double3" 0 45 0 ;
	setAttr ".s" -type "double3" 0.45743919922941978 0.1 0.45743919922941978 ;
createNode mesh -n "pCubeShape19" -p "pCube19";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.875 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt";
	setAttr ".pt[0]" -type "float3" -0.038356096 0 0.038356096 ;
	setAttr ".pt[1]" -type "float3" 0.038356096 0 0.038356096 ;
	setAttr ".pt[6]" -type "float3" -0.038356096 0 -0.038356096 ;
	setAttr ".pt[7]" -type "float3" 0.038356096 0 -0.038356096 ;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube20";
	setAttr ".t" -type "double3" 0 0 2.4978664562811583 ;
	setAttr ".rp" -type "double3" -7.6672458648681641 0.070393020287156105 0 ;
	setAttr ".sp" -type "double3" -7.6672458648681641 0.070393020287156105 0 ;
createNode mesh -n "pCube20Shape" -p "pCube20";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pCube21";
	setAttr ".t" -type "double3" -7.4948655478460315 0 -1.6169309907909963 ;
	setAttr ".s" -type "double3" 1 0.1 1 ;
createNode mesh -n "pCubeShape21" -p "pCube21";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -0.079618588 0 0.079618692 
		0.079618588 0 0.079618692 0 0 0 0 0 0 0 0 0 0 0 0 -0.079618588 0 -0.079618573 0.079618588 
		0 -0.079618573;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube22";
	setAttr ".t" -type "double3" -7.4948655478460315 0.075 -1.6169309907909963 ;
	setAttr ".r" -type "double3" 0 45 0 ;
	setAttr ".s" -type "double3" 0.5 0.05 0.5 ;
createNode mesh -n "pCubeShape22" -p "pCube22";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.4375 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 34 ".uvst[0].uvsp[0:33]" -type "float2" 0.375 0 0.375 0.25
		 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.875 0 0.875 0.25 0.125 0 0.125
		 0.25 0.5 0.5 0.5 0.75 0.5 0 0.5 1 0.5 0.25 0.625 0.375 0.75 0.25 0.5 0.375 0.25 0.25
		 0.375 0.375 0.25 0 0.375 0.875 0.5 0.875 0.625 0.875 0.75 0 0 1 0.5 1 0.5 0 0 0 0
		 1 0.5 1 0.5 0 0 0;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 16 ".vt[0:15]"  -0.5 -0.5 0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5
		 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5 0 0.5 -0.5 0 -0.5 -0.5 0 -0.5 0.5 0 0.5 0.5
		 0.5 0.5 0 0 0.5 0 -0.5 0.5 0 -0.5 -0.5 0 0 -0.5 0 0.5 -0.5 0;
	setAttr -s 28 ".ed[0:27]"  0 8 0 1 9 0 2 6 0 4 7 0 0 1 0 1 12 0 2 4 0
		 3 5 0 4 13 0 5 15 0 6 3 0 7 5 0 6 7 0 7 14 0 8 9 0 9 11 0 10 3 0 11 6 0 10 11 0 12 2 0
		 11 12 0 13 0 0 12 13 0 14 8 0 13 14 0 14 15 0 15 10 0 14 11 0;
	setAttr -s 14 -ch 56 ".fc[0:13]" -type "polyFaces" 
		f 4 0 14 -2 -5
		mu 0 4 0 13 15 1
		f 4 1 15 20 -6
		mu 0 4 1 15 18 20
		f 4 2 12 -4 -7
		mu 0 4 2 11 12 4
		f 4 24 23 -1 -22
		mu 0 4 22 23 14 6
		f 4 21 4 5 22
		mu 0 4 21 0 1 19
		f 4 10 7 -12 -13
		mu 0 4 11 3 5 12
		f 4 -18 -19 16 -11
		mu 0 4 11 18 16 3
		f 4 -21 17 -3 -20
		mu 0 4 20 18 11 2
		f 4 8 -23 19 6
		mu 0 4 9 21 19 10
		f 4 3 13 -25 -9
		mu 0 4 4 12 23 22
		f 4 -26 -14 11 9
		mu 0 4 24 23 12 5
		f 4 -27 -10 -8 -17
		mu 0 4 17 25 7 8
		f 4 -16 -15 -24 27
		mu 0 4 26 27 28 29
		f 4 18 -28 25 26
		mu 0 4 30 31 32 33;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "polySurfaceShape1" -p "pCube22";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube23";
	setAttr ".t" -type "double3" 1.2153789685732839 0.049999999999999892 2.4651903288156619e-032 ;
	setAttr ".s" -type "double3" 1 0.1 1 ;
createNode mesh -n "pCubeShape23" -p "pCube23";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -1.1641532e-009 0 1.1641532e-009 
		1.1641532e-009 0 1.1641532e-009 0.073273733 0 -0.073273733 -0.073273733 0 -0.073273733 
		0.073273733 0 0.073273733 -0.073273733 0 0.073273733 -1.1641532e-009 0 -1.1641532e-009 
		1.1641532e-009 0 -1.1641532e-009;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "polySurfaceShape3" -p "pCube23";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube24";
	setAttr ".t" -type "double3" 1.3819207716621424 0.85127225406841267 -1.2325951644078309e-032 ;
	setAttr ".r" -type "double3" 90 0 44.999960540641517 ;
	setAttr ".s" -type "double3" 0.5 0.05 0.5 ;
createNode mesh -n "pCubeShape24" -p "pCube24";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.4375 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 72 ".uvst[0].uvsp[0:71]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.45833331 0.25 0.45833331 0.5 0.45833331 0.75 0.45833331
		 0 0.45833331 1 0.20833333 0.25 0.375 0.41666669 0.20833333 0 0.375 0.83333331 0.45833331
		 0.83333331 0.625 0.83333331 0.79166669 0 0.625 0.41666669 0.79166669 0.25 0.45833331
		 0.41666669 0.51388884 0.25 0.5138889 0.41666669 0.51388884 0.5 0.51388884 0.75 0.51388884
		 0.83333331 0.51388884 0 0.51388884 1 0.625 0.3611111 0.7361111 0.25 0.51388884 0.3611111
		 0.45833331 0.3611111 0.2638889 0.25 0.375 0.3611111 0.2638889 0 0.375 0.8888889 0.45833331
		 0.8888889 0.51388884 0.8888889 0.625 0.8888889 0.7361111 0 0 1 0.44444442 1 0.44444442
		 0 0 0 0 1 0.22222224 1 0.22222224 0 1.4901161e-008 0 0 1 0.22222221 1 0.22222221
		 0 0 0 0 1 0.44444448 1 0.44444448 0 0 0 1.1175871e-008 0 0.44444442 0 0.44444442
		 1 0 1 5.5879354e-009 1 0.44444448 1 0.44444448 0 0 2.4835272e-009;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 18 ".pt";
	setAttr ".pt[1]" -type "float3" -0.57374233 0.25122672 -0.57374179 ;
	setAttr ".pt[3]" -type "float3" -0.57374233 -0.25122672 -0.57374179 ;
	setAttr ".pt[8]" -type "float3" -0.26813319 1.110223e-016 -0.18080787 ;
	setAttr ".pt[11]" -type "float3" -0.26813319 1.6653345e-016 -0.18080787 ;
	setAttr ".pt[14]" -type "float3" -0.088771999 0 -0.08877188 ;
	setAttr ".pt[15]" -type "float3" -0.18080825 1.6653345e-016 -0.26813295 ;
	setAttr ".pt[16]" -type "float3" -0.18080825 1.110223e-016 -0.26813295 ;
	setAttr ".pt[17]" -type "float3" -0.088771999 0 -0.08877188 ;
	setAttr ".pt[18]" -type "float3" -0.31908077 -0.25122672 -0.30628803 ;
	setAttr ".pt[19]" -type "float3" -0.10250127 1.110223e-016 -0.15988511 ;
	setAttr ".pt[22]" -type "float3" -0.10250127 1.110223e-016 -0.15988511 ;
	setAttr ".pt[23]" -type "float3" -0.31908077 0.25122672 -0.30628803 ;
	setAttr ".pt[24]" -type "float3" -0.3062886 -0.25122672 -0.31908053 ;
	setAttr ".pt[25]" -type "float3" -0.20102823 -0.25122672 -0.20102783 ;
	setAttr ".pt[26]" -type "float3" -0.15988527 1.110223e-016 -0.10250106 ;
	setAttr ".pt[29]" -type "float3" -0.15988527 1.110223e-016 -0.10250106 ;
	setAttr ".pt[30]" -type "float3" -0.20102823 0.25122672 -0.20102783 ;
	setAttr ".pt[31]" -type "float3" -0.3062886 0.25122672 -0.31908053 ;
	setAttr -s 32 ".vt[0:31]"  -0.5 -0.5 0.5 0.49999997 -0.5 0.5 -0.5 0.5 0.5
		 0.49999997 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5 -0.16666664 0.5 0.5
		 -0.16666664 0.5 -0.5 -0.16666664 -0.5 -0.5 -0.16666664 -0.5 0.5 -0.5 0.5 -0.16666669
		 -0.5 -0.5 -0.16666669 -0.16666664 -0.5 -0.16666669 0.5 -0.5 -0.16666669 0.5 0.5 -0.16666669
		 -0.16666664 0.5 -0.16666669 0.055555567 0.5 0.5 0.055555597 0.5 -0.16666669 0.055555582 0.5 -0.5
		 0.055555582 -0.5 -0.5 0.055555582 -0.5 -0.16666669 0.055555567 -0.5 0.5 0.5 0.5 0.055555545
		 0.055555578 0.5 0.055555545 -0.16666664 0.5 0.05555553 -0.5 0.5 0.05555553 -0.5 -0.5 0.05555553
		 -0.16666664 -0.5 0.05555553 0.055555567 -0.5 0.055555545 0.5 -0.5 0.055555545;
	setAttr -s 56 ".ed[0:55]"  0 11 0 2 8 0 4 9 0 6 10 0 0 2 0 1 3 0 2 27 0
		 3 24 0 4 6 0 5 7 0 6 13 0 7 15 0 9 20 0 8 26 0 10 21 0 9 10 0 10 14 0 11 8 0 12 4 0
		 13 28 0 12 13 0 14 29 0 13 14 0 14 22 0 16 5 0 15 16 0 17 9 0 16 19 0 17 12 0 18 3 0
		 19 17 0 18 25 0 20 5 0 19 20 0 21 7 0 20 21 0 22 15 0 21 22 0 23 1 0 23 18 0 24 25 0
		 26 17 0 27 12 0 26 27 0 28 0 0 27 28 0 29 11 0 28 29 0 30 23 0 31 1 0 30 31 0 31 24 0
		 19 22 0 17 14 0 26 29 0 30 25 0;
	setAttr -s 28 -ch 112 ".fc[0:27]" -type "polyFaces" 
		f 4 0 17 -2 -5
		mu 0 4 0 17 14 2
		f 4 1 13 43 -7
		mu 0 4 2 14 39 41
		f 4 2 15 -4 -9
		mu 0 4 4 15 16 6
		f 4 47 46 -1 -45
		mu 0 4 43 44 18 8
		f 4 -50 51 -8 -6
		mu 0 4 1 47 37 3
		f 4 44 4 6 45
		mu 0 4 42 0 2 40
		f 4 -16 12 35 -15
		mu 0 4 16 15 31 32
		f 4 10 -21 18 8
		mu 0 4 12 21 19 13
		f 4 3 16 -23 -11
		mu 0 4 6 16 23 22
		f 4 -24 -17 14 37
		mu 0 4 33 23 16 32
		f 4 -26 -12 -10 -25
		mu 0 4 27 25 10 11
		f 4 -31 33 -13 -27
		mu 0 4 28 30 31 15
		f 4 -29 26 -3 -19
		mu 0 4 20 28 15 4
		f 4 29 7 40 -32
		mu 0 4 29 3 36 38
		f 4 -34 -28 24 -33
		mu 0 4 31 30 26 5
		f 4 -36 32 9 -35
		mu 0 4 32 31 5 7
		f 4 -37 -38 34 11
		mu 0 4 24 33 32 7
		f 4 -49 50 49 -39
		mu 0 4 35 45 46 9
		f 4 -40 38 5 -30
		mu 0 4 29 34 1 3
		f 4 -44 41 28 -43
		mu 0 4 41 39 28 20
		f 4 19 -46 42 20
		mu 0 4 21 42 40 19
		f 4 22 21 -48 -20
		mu 0 4 22 23 44 43
		f 4 27 52 36 25
		mu 0 4 48 49 50 51
		f 4 30 53 23 -53
		mu 0 4 52 53 54 55
		f 4 -42 54 -22 -54
		mu 0 4 56 57 58 59
		f 4 -14 -18 -47 -55
		mu 0 4 60 61 62 63
		f 4 -41 -52 -51 55
		mu 0 4 64 65 66 67
		f 4 31 -56 48 39
		mu 0 4 68 69 70 71;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "polySurfaceShape2" -p "pCube24";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube25";
	setAttr ".t" -type "double3" 8.6888179155261582 0.050000000000000114 0 ;
	setAttr ".s" -type "double3" 1 0.1 1 ;
createNode mesh -n "pCubeShape25" -p "pCube25";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -1.1641532e-009 0 1.1641532e-009 
		1.1641532e-009 0 1.1641532e-009 0.073273733 0 -0.073273733 -0.073273733 0 -0.073273733 
		0.073273733 0 0.073273733 -0.073273733 0 0.073273733 -1.1641532e-009 0 -1.1641532e-009 
		1.1641532e-009 0 -1.1641532e-009;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "polySurfaceShape3" -p "pCube25";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube26";
	setAttr ".t" -type "double3" 8.6888179155261582 0.85127225406841289 -1.2325951644078309e-032 ;
	setAttr ".r" -type "double3" 89.999999999999957 -3.1805546814635168e-015 -135 ;
	setAttr ".s" -type "double3" 0.5 0.05 0.5 ;
createNode mesh -n "pCubeShape26" -p "pCube26";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.4375 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 52 ".uvst[0].uvsp[0:51]" -type "float2" 0.375 0 0.375 0.25
		 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.875 0 0.875 0.25 0.125 0 0.125
		 0.25 0.45833331 0.25 0.45833331 0.5 0.45833331 0.75 0.45833331 0 0.45833331 1 0.20833333
		 0.25 0.375 0.41666669 0.20833333 0 0.375 0.83333331 0.45833331 0.83333331 0.625 0.83333331
		 0.79166669 0 0.625 0.41666669 0.79166669 0.25 0.45833331 0.41666669 0.5138889 0.41666669
		 0.51388884 0.5 0.51388884 0.75 0.51388884 0.83333331 0.45833331 0.3611111 0.2638889
		 0.25 0.375 0.3611111 0.2638889 0 0.375 0.8888889 0.45833331 0.8888889 0 1 0.44444442
		 1 0.44444442 0 0 0 0 1 0.22222224 1 0.22222224 0 1.4901161e-008 0 0 1 0.22222221
		 1 0.22222221 0 0 0 0 1 0.44444448 1 0.44444448 0 0 0;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 24 ".pt[0:23]" -type "float3"  0.14277409 2.220446e-016 
		0.14277388 0.14277409 -1.6653345e-016 0.14277388 0.14277409 -1.6653345e-016 0.14277388 
		0.14277409 -1.6653345e-016 0.14277388 0.14277409 2.220446e-016 0.14277388 0.14277409 
		2.220446e-016 0.14277388 0.14277409 -1.6653345e-016 0.14277388 0.14277409 -1.6653345e-016 
		0.14277388 0.14277409 2.220446e-016 0.14277388 0.14277409 2.220446e-016 0.14277388 
		0.14277409 -1.6653345e-016 0.14277388 0.14277409 2.220446e-016 0.14277388 0.14277409 
		2.220446e-016 0.14277388 0.14277409 2.220446e-016 0.14277388 0.14277409 -1.6653345e-016 
		0.14277388 0.14277409 -1.6653345e-016 0.14277388 0.14277409 -1.6653345e-016 0.14277388 
		0.14277409 -1.6653345e-016 0.14277388 0.14277409 2.220446e-016 0.14277388 0.14277409 
		2.220446e-016 0.14277388 0.14277409 -1.6653345e-016 0.14277388 0.14277409 -1.6653345e-016 
		0.14277388 0.14277409 2.220446e-016 0.14277388 0.14277409 2.220446e-016 0.14277388;
	setAttr -s 24 ".vt[0:23]"  -0.5 -0.5 0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5
		 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5 -0.16666664 0.5 0.5 -0.16666664 0.5 -0.5
		 -0.16666664 -0.5 -0.5 -0.16666664 -0.5 0.5 -0.5 0.5 -0.16666669 -0.5 -0.5 -0.16666669
		 -0.16666664 -0.5 -0.16666669 0.5 -0.5 -0.16666669 0.5 0.5 -0.16666669 -0.16666664 0.5 -0.16666669
		 0.055555597 0.5 -0.16666669 0.055555582 0.5 -0.5 0.055555582 -0.5 -0.5 0.055555582 -0.5 -0.16666669
		 -0.16666664 0.5 0.05555553 -0.5 0.5 0.05555553 -0.5 -0.5 0.05555553 -0.16666664 -0.5 0.05555553;
	setAttr -s 44 ".ed[0:43]"  0 9 0 1 6 0 2 7 0 4 8 0 0 1 0 1 21 0 2 4 0
		 3 5 0 4 11 0 5 13 0 7 17 0 6 20 0 8 18 0 7 8 0 8 12 0 9 6 0 10 2 0 11 22 0 10 11 0
		 12 23 0 11 12 0 12 19 0 14 3 0 13 14 0 15 7 0 14 16 0 15 10 0 16 15 0 17 3 0 16 17 0
		 18 5 0 17 18 0 19 13 0 18 19 0 20 15 0 21 10 0 20 21 0 22 0 0 21 22 0 23 9 0 22 23 0
		 16 19 0 15 12 0 20 23 0;
	setAttr -s 22 -ch 88 ".fc[0:21]" -type "polyFaces" 
		f 4 0 15 -2 -5
		mu 0 4 0 14 11 1
		f 4 1 11 36 -6
		mu 0 4 1 11 30 32
		f 4 2 13 -4 -7
		mu 0 4 2 12 13 4
		f 4 40 39 -1 -38
		mu 0 4 34 35 15 6
		f 4 37 4 5 38
		mu 0 4 33 0 1 31
		f 4 -14 10 31 -13
		mu 0 4 13 12 27 28
		f 4 8 -19 16 6
		mu 0 4 9 18 16 10
		f 4 3 14 -21 -9
		mu 0 4 4 13 20 19
		f 4 -22 -15 12 33
		mu 0 4 29 20 13 28
		f 4 -24 -10 -8 -23
		mu 0 4 24 22 7 8
		f 4 -28 29 -11 -25
		mu 0 4 25 26 27 12
		f 4 -27 24 -3 -17
		mu 0 4 17 25 12 2
		f 4 -30 -26 22 -29
		mu 0 4 27 26 23 3
		f 4 -32 28 7 -31
		mu 0 4 28 27 3 5
		f 4 -33 -34 30 9
		mu 0 4 21 29 28 5
		f 4 -37 34 26 -36
		mu 0 4 32 30 25 17
		f 4 17 -39 35 18
		mu 0 4 18 33 31 16
		f 4 20 19 -41 -18
		mu 0 4 19 20 35 34
		f 4 25 41 32 23
		mu 0 4 36 37 38 39
		f 4 27 42 21 -42
		mu 0 4 40 41 42 43
		f 4 -35 43 -20 -43
		mu 0 4 44 45 46 47
		f 4 -12 -16 -40 -44
		mu 0 4 48 49 50 51;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "polySurfaceShape2" -p "pCube26";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube27";
	setAttr ".t" -type "double3" 0.0051767313741790666 0.05 1.5017591141558935 ;
	setAttr ".s" -type "double3" 1 0.1 1 ;
createNode mesh -n "pCubeShape27" -p "pCube27";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape3" -p "pCube27";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "polySurfaceShape4" -p "pCube27";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -1.1641532e-009 0 1.1641532e-009 
		1.1641532e-009 0 1.1641532e-009 0.073273733 0 -0.073273733 -0.073273733 0 -0.073273733 
		0.073273733 0 0.073273733 -0.073273733 0 0.073273733 -1.1641532e-009 0 -1.1641532e-009 
		1.1641532e-009 0 -1.1641532e-009;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube28";
	setAttr ".t" -type "double3" 1.2070910017573833 0.05 1.5017591141558935 ;
	setAttr ".s" -type "double3" 1 0.1 1 ;
createNode mesh -n "pCubeShape28" -p "pCube28";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 18 ".uvst[0].uvsp[0:17]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.375 0.25 0.625 0.25 0.625 0.5 0.375 0.5;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt";
	setAttr ".pt[2]" -type "float3" -0.13032416 0 0.13032416 ;
	setAttr ".pt[3]" -type "float3" 0.13032416 0 0.13032416 ;
	setAttr ".pt[4]" -type "float3" -0.13032416 0 -0.13032416 ;
	setAttr ".pt[5]" -type "float3" 0.13032416 0 -0.13032416 ;
	setAttr ".pt[8]" -type "float3" -0.0018888474 -0.89408392 0.0018888756 ;
	setAttr ".pt[9]" -type "float3" 0.0018888474 -0.89408392 0.0018888756 ;
	setAttr ".pt[10]" -type "float3" 0.0018888474 -0.89408392 -0.0018888756 ;
	setAttr ".pt[11]" -type "float3" -0.0018888474 -0.89408392 -0.0018888756 ;
	setAttr -s 12 ".vt[0:11]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.42672634 0.5 0.42672628
		 0.42672634 0.5 0.42672628 -0.42672634 0.5 -0.42672628 0.42672634 0.5 -0.42672628
		 -0.5 -0.5 -0.5 0.5 -0.5 -0.5 -0.42672634 0.5 0.42672628 0.42672634 0.5 0.42672628
		 0.42672634 0.5 -0.42672628 -0.42672634 0.5 -0.42672628;
	setAttr -s 20 ".ed[0:19]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0 2 8 0 3 9 0 8 9 0 5 10 0 9 10 0 4 11 0 11 10 0 8 11 0;
	setAttr -s 10 -ch 40 ".fc[0:9]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 14 16 -19 -20
		mu 0 4 14 15 16 17
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13
		f 4 1 13 -15 -13
		mu 0 4 2 3 15 14
		f 4 7 15 -17 -14
		mu 0 4 3 5 16 15
		f 4 -3 17 18 -16
		mu 0 4 5 4 17 16
		f 4 -7 12 19 -18
		mu 0 4 4 2 14 17;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "polySurfaceShape3" -p "pCube28";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "polySurfaceShape4" -p "pCube28";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -1.1641532e-009 0 1.1641532e-009 
		1.1641532e-009 0 1.1641532e-009 0.073273733 0 -0.073273733 -0.073273733 0 -0.073273733 
		0.073273733 0 0.073273733 -0.073273733 0 0.073273733 -1.1641532e-009 0 -1.1641532e-009 
		1.1641532e-009 0 -1.1641532e-009;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube29";
	setAttr ".t" -type "double3" 2.4465305280709462 0.05 1.4430601021540084 ;
	setAttr ".s" -type "double3" 1 0.1 1 ;
createNode mesh -n "pCubeShape29" -p "pCube29";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[16:19]" -type "float3"  0.14115269 -0.32192791 0.0026774113 
		0.0026774113 -0.32192791 -0.14115281 -0.14115269 -0.32192791 -0.0026774113 -0.0026774113 
		-0.32192791 0.14115281;
createNode mesh -n "polySurfaceShape3" -p "pCube29";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "polySurfaceShape5" -p "pCube29";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -1.1641532e-009 0 1.1641532e-009 
		1.1641532e-009 0 1.1641532e-009 0.073273733 0 -0.073273733 -0.073273733 0 -0.073273733 
		0.073273733 0 0.073273733 -0.073273733 0 0.073273733 -1.1641532e-009 0 -1.1641532e-009 
		1.1641532e-009 0 -1.1641532e-009;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube30";
	setAttr ".t" -type "double3" -2.5265963114398202 0.049999999999999892 -2.4651903288156619e-032 ;
	setAttr ".s" -type "double3" 1 0.1 1 ;
createNode mesh -n "pCubeShape30" -p "pCube30";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -1.1641532e-009 0 1.1641532e-009 
		1.1641532e-009 0 1.1641532e-009 0.073273733 0 -0.073273733 -0.073273733 0 -0.073273733 
		0.073273733 0 0.073273733 -0.073273733 0 0.073273733 -1.1641532e-009 0 -1.1641532e-009 
		1.1641532e-009 0 -1.1641532e-009;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "polySurfaceShape3" -p "pCube30";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube31";
	setAttr ".t" -type "double3" 3.7502911389120595 0.85127225406841267 -3.6977854932234928e-032 ;
	setAttr ".r" -type "double3" 90 0 44.999960540641517 ;
	setAttr ".s" -type "double3" 0.5 0.05 0.5 ;
createNode mesh -n "polySurfaceShape2" -p "pCube31";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "polySurfaceShape6" -p "pCube31";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.75 0.125 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 22 ".uvst[0].uvsp[0:21]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.125 0 0.125 0.25 0.45833331
		 0.25 0.45833331 0.5 0.45833331 0.75 0.45833331 0 0.20833333 0.25 0.20833333 0 0.51388884
		 0.25 0.51388884 0.5 0.51388884 0.75 0.51388884 0 0.2638889 0.25 0.2638889 0;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt";
	setAttr ".pt[1]" -type "float3" -1.4901183e-008 0 1.4901151e-008 ;
	setAttr ".pt[3]" -type "float3" -1.4901183e-008 0 1.4901151e-008 ;
	setAttr ".pt[18]" -type "float3" -1.490117e-008 0 1.4901151e-008 ;
	setAttr ".pt[23]" -type "float3" -1.490117e-008 0 1.4901151e-008 ;
	setAttr ".pt[24]" -type "float3" -1.4901161e-008 0 1.4901161e-008 ;
	setAttr ".pt[25]" -type "float3" -1.4901161e-008 0 1.4901161e-008 ;
	setAttr ".pt[30]" -type "float3" -1.4901161e-008 0 1.4901161e-008 ;
	setAttr ".pt[31]" -type "float3" -1.4901161e-008 0 1.4901161e-008 ;
	setAttr -s 20 ".vt[0:19]"  -0.5 -0.5 0.5 0.49999985 -0.5 0.5 -0.5 0.5 0.5
		 0.49999985 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5 -0.16666664 0.5 0.5
		 -0.16666664 0.5 -0.5 -0.16666664 -0.5 -0.5 -0.16666664 -0.5 0.5 -0.5 0.5 -0.16666669
		 -0.5 -0.5 -0.16666669 0.055555537 0.5 0.5 0.055555582 0.5 -0.5 0.055555567 -0.5 -0.5
		 0.055555537 -0.5 0.5 -0.5 0.5 0.055555545 -0.5 -0.5 0.05555553;
	setAttr -s 26 ".ed[0:25]"  0 11 0 2 8 0 4 9 0 6 10 0 0 2 0 1 3 0 2 18 0
		 4 6 0 5 7 0 6 13 0 9 15 0 10 16 0 9 10 0 11 8 0 12 4 0 13 19 0 12 13 0 14 3 0 15 5 0
		 16 7 0 15 16 0 17 1 0 17 14 0 18 12 0 19 0 0 18 19 0;
	setAttr -s 8 -ch 32 ".fc[0:7]" -type "polyFaces" 
		f 4 0 13 -2 -5
		mu 0 4 0 13 10 2
		f 4 2 12 -4 -8
		mu 0 4 4 11 12 6
		f 4 24 4 6 25
		mu 0 4 21 0 2 20
		f 4 -13 10 20 -12
		mu 0 4 12 11 17 18
		f 4 9 -17 14 7
		mu 0 4 8 15 14 9
		f 4 -21 18 8 -20
		mu 0 4 18 17 5 7
		f 4 -23 21 5 -18
		mu 0 4 16 19 1 3
		f 4 15 -26 23 16
		mu 0 4 15 21 20 14;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "transform8" -p "pCube31";
	setAttr ".v" no;
createNode mesh -n "pCubeShape31" -p "transform8";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.625 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pCube32";
	setAttr ".t" -type "double3" -1.3072017369376066 0.050000000000000447 -5.0686518789651309 ;
	setAttr ".s" -type "double3" 1 0.1 1 ;
createNode mesh -n "pCubeShape32" -p "pCube32";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.875 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  0.0704614 0 -0.0704614 -0.0704614 
		0 -0.0704614 0.073273733 0 -0.073273733 -0.073273733 0 -0.073273733 0.073273733 0 
		0.073273733 -0.073273733 0 0.073273733 0.0704614 0 0.0704614 -0.0704614 0 0.0704614;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "polySurfaceShape3" -p "pCube32";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube33";
	setAttr ".t" -type "double3" -4.8912773836876546 4.4353528374970237 -1.1254668039673307e-015 ;
	setAttr ".r" -type "double3" 90 0 44.999960540641517 ;
	setAttr ".s" -type "double3" 0.5 0.05 0.5 ;
createNode mesh -n "pCubeShape33" -p "pCube33";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.625 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" 2.220446e-016 0 1
		 2.220446e-016 1 1 0 1 0 2.220446e-016 1 0 1 0.99999988 2.220446e-016 0.99999988 2.220446e-016
		 0 1 2.220446e-016 1 1 0 1 0 2.7755576e-016 1 0 1 1 2.220446e-016 1 0 1 1 1 1 0 1.4901161e-007
		 0 0 0 0.99999988 1.1102229e-016 1 0.99999976 1.490116e-007 0.99999988;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.49999985 -0.5 0.5 -0.5 0.5 0.5
		 0.49999985 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 2 0 1 3 0 4 6 0 5 7 0 5 3 0 1 7 0 0 1 0
		 3 2 0 2 4 0 6 0 0 4 5 0 7 6 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 -4 4 -2 5
		mu 0 4 0 1 2 3
		f 4 -1 6 1 7
		mu 0 4 4 5 6 7
		f 4 0 8 2 9
		mu 0 4 8 9 10 11
		f 4 -3 10 3 11
		mu 0 4 12 13 14 15
		f 4 -11 -9 -8 -5
		mu 0 4 16 17 18 19
		f 4 -6 -7 -10 -12
		mu 0 4 20 21 22 23;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "polySurfaceShape2" -p "pCube33";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "polySurfaceShape6" -p "pCube33";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.75 0.125 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 22 ".uvst[0].uvsp[0:21]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.125 0 0.125 0.25 0.45833331
		 0.25 0.45833331 0.5 0.45833331 0.75 0.45833331 0 0.20833333 0.25 0.20833333 0 0.51388884
		 0.25 0.51388884 0.5 0.51388884 0.75 0.51388884 0 0.2638889 0.25 0.2638889 0;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt";
	setAttr ".pt[1]" -type "float3" -1.4901183e-008 0 1.4901151e-008 ;
	setAttr ".pt[3]" -type "float3" -1.4901183e-008 0 1.4901151e-008 ;
	setAttr ".pt[18]" -type "float3" -1.490117e-008 0 1.4901151e-008 ;
	setAttr ".pt[23]" -type "float3" -1.490117e-008 0 1.4901151e-008 ;
	setAttr ".pt[24]" -type "float3" -1.4901161e-008 0 1.4901161e-008 ;
	setAttr ".pt[25]" -type "float3" -1.4901161e-008 0 1.4901161e-008 ;
	setAttr ".pt[30]" -type "float3" -1.4901161e-008 0 1.4901161e-008 ;
	setAttr ".pt[31]" -type "float3" -1.4901161e-008 0 1.4901161e-008 ;
	setAttr -s 20 ".vt[0:19]"  -0.5 -0.5 0.5 0.49999985 -0.5 0.5 -0.5 0.5 0.5
		 0.49999985 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5 -0.16666664 0.5 0.5
		 -0.16666664 0.5 -0.5 -0.16666664 -0.5 -0.5 -0.16666664 -0.5 0.5 -0.5 0.5 -0.16666669
		 -0.5 -0.5 -0.16666669 0.055555537 0.5 0.5 0.055555582 0.5 -0.5 0.055555567 -0.5 -0.5
		 0.055555537 -0.5 0.5 -0.5 0.5 0.055555545 -0.5 -0.5 0.05555553;
	setAttr -s 26 ".ed[0:25]"  0 11 0 2 8 0 4 9 0 6 10 0 0 2 0 1 3 0 2 18 0
		 4 6 0 5 7 0 6 13 0 9 15 0 10 16 0 9 10 0 11 8 0 12 4 0 13 19 0 12 13 0 14 3 0 15 5 0
		 16 7 0 15 16 0 17 1 0 17 14 0 18 12 0 19 0 0 18 19 0;
	setAttr -s 8 -ch 32 ".fc[0:7]" -type "polyFaces" 
		f 4 0 13 -2 -5
		mu 0 4 0 13 10 2
		f 4 2 12 -4 -8
		mu 0 4 4 11 12 6
		f 4 24 4 6 25
		mu 0 4 21 0 2 20
		f 4 -13 10 20 -12
		mu 0 4 12 11 17 18
		f 4 9 -17 14 7
		mu 0 4 8 15 14 9
		f 4 -21 18 8 -20
		mu 0 4 18 17 5 7
		f 4 -23 21 5 -18
		mu 0 4 16 19 1 3
		f 4 15 -26 23 16
		mu 0 4 15 21 20 14;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube34";
	setAttr ".t" -type "double3" 3.7502911389120595 0.85127225406841267 -3.6977854932234928e-032 ;
	setAttr ".r" -type "double3" 90 0 44.999960540641517 ;
	setAttr ".s" -type "double3" 0.38721180650836895 0.038721180650836906 0.38721180650836895 ;
createNode mesh -n "polySurfaceShape2" -p "pCube34";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  3.9412917e-015 -1.1125728 
		-6.3060668e-014 -3.9412917e-015 -1.1125728 -6.700196e-014 3.9412917e-015 1.1125728 
		-5.5178084e-014 -3.9412917e-015 1.1125728 -6.700196e-014 3.9412917e-015 1.1125728 
		-6.3060668e-014 -3.9412917e-015 1.1125728 -6.3060668e-014 3.9412917e-015 -1.1125728 
		-6.3060668e-014 -3.9412917e-015 -1.1125728 -7.0943251e-014;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "polySurfaceShape6" -p "pCube34";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.75 0.125 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 22 ".uvst[0].uvsp[0:21]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.125 0 0.125 0.25 0.45833331
		 0.25 0.45833331 0.5 0.45833331 0.75 0.45833331 0 0.20833333 0.25 0.20833333 0 0.51388884
		 0.25 0.51388884 0.5 0.51388884 0.75 0.51388884 0 0.2638889 0.25 0.2638889 0;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 25 ".pt";
	setAttr ".pt[0]" -type "float3" 3.9412917e-015 -1.1125728 -6.3060668e-014 ;
	setAttr ".pt[1]" -type "float3" -1.4901183e-008 -1.1125728 1.4901087e-008 ;
	setAttr ".pt[2]" -type "float3" 3.9412917e-015 1.1125728 -5.5178084e-014 ;
	setAttr ".pt[3]" -type "float3" -1.4901183e-008 1.1125728 1.4901087e-008 ;
	setAttr ".pt[4]" -type "float3" 3.9412917e-015 1.1125728 -6.3060668e-014 ;
	setAttr ".pt[5]" -type "float3" -3.9412917e-015 1.1125728 -6.3060668e-014 ;
	setAttr ".pt[6]" -type "float3" 3.9412917e-015 -1.1125728 -6.3060668e-014 ;
	setAttr ".pt[7]" -type "float3" -3.9412917e-015 -1.1125728 -7.0943251e-014 ;
	setAttr ".pt[8]" -type "float3" 1.9706459e-015 1.1125728 -6.3060668e-014 ;
	setAttr ".pt[9]" -type "float3" 1.9706459e-015 1.1125728 -6.3060668e-014 ;
	setAttr ".pt[10]" -type "float3" 1.9706459e-015 -1.1125728 -6.3060668e-014 ;
	setAttr ".pt[11]" -type "float3" 1.9706459e-015 -1.1125728 -6.3060668e-014 ;
	setAttr ".pt[12]" -type "float3" 3.9412917e-015 1.1125728 -5.9119376e-014 ;
	setAttr ".pt[13]" -type "float3" 3.9412917e-015 -1.1125728 -5.9119376e-014 ;
	setAttr ".pt[14]" -type "float3" -4.9266147e-016 1.1125728 -6.3060668e-014 ;
	setAttr ".pt[15]" -type "float3" -4.9266147e-016 1.1125728 -6.3060668e-014 ;
	setAttr ".pt[16]" -type "float3" -4.9266147e-016 -1.1125728 -6.3060668e-014 ;
	setAttr ".pt[17]" -type "float3" -4.9266147e-016 -1.1125728 -6.3060668e-014 ;
	setAttr ".pt[18]" -type "float3" -1.490117e-008 1.1125728 1.4901087e-008 ;
	setAttr ".pt[19]" -type "float3" 3.9412917e-015 -1.1125728 -5.9119376e-014 ;
	setAttr ".pt[23]" -type "float3" -1.490117e-008 0 1.4901151e-008 ;
	setAttr ".pt[24]" -type "float3" -1.4901161e-008 0 1.4901161e-008 ;
	setAttr ".pt[25]" -type "float3" -1.4901161e-008 0 1.4901161e-008 ;
	setAttr ".pt[30]" -type "float3" -1.4901161e-008 0 1.4901161e-008 ;
	setAttr ".pt[31]" -type "float3" -1.4901161e-008 0 1.4901161e-008 ;
	setAttr -s 20 ".vt[0:19]"  -0.5 -0.5 0.5 0.49999985 -0.5 0.5 -0.5 0.5 0.5
		 0.49999985 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5 -0.16666664 0.5 0.5
		 -0.16666664 0.5 -0.5 -0.16666664 -0.5 -0.5 -0.16666664 -0.5 0.5 -0.5 0.5 -0.16666669
		 -0.5 -0.5 -0.16666669 0.055555537 0.5 0.5 0.055555582 0.5 -0.5 0.055555567 -0.5 -0.5
		 0.055555537 -0.5 0.5 -0.5 0.5 0.055555545 -0.5 -0.5 0.05555553;
	setAttr -s 26 ".ed[0:25]"  0 11 0 2 8 0 4 9 0 6 10 0 0 2 0 1 3 0 2 18 0
		 4 6 0 5 7 0 6 13 0 9 15 0 10 16 0 9 10 0 11 8 0 12 4 0 13 19 0 12 13 0 14 3 0 15 5 0
		 16 7 0 15 16 0 17 1 0 17 14 0 18 12 0 19 0 0 18 19 0;
	setAttr -s 8 -ch 32 ".fc[0:7]" -type "polyFaces" 
		f 4 0 13 -2 -5
		mu 0 4 0 13 10 2
		f 4 2 12 -4 -8
		mu 0 4 4 11 12 6
		f 4 24 4 6 25
		mu 0 4 21 0 2 20
		f 4 -13 10 20 -12
		mu 0 4 12 11 17 18
		f 4 9 -17 14 7
		mu 0 4 8 15 14 9
		f 4 -21 18 8 -20
		mu 0 4 18 17 5 7
		f 4 -23 21 5 -18
		mu 0 4 16 19 1 3
		f 4 15 -26 23 16
		mu 0 4 15 21 20 14;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "transform6" -p "pCube34";
	setAttr ".v" no;
createNode mesh -n "pCubeShape34" -p "transform6";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[1].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.625 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" 2.220446e-016 0 1
		 2.220446e-016 1 1 0 1 0 2.220446e-016 1 0 1 0.99999988 2.220446e-016 0.99999988 2.220446e-016
		 0 1 2.220446e-016 1 1 0 1 0 2.7755576e-016 1 0 1 1 2.220446e-016 1 0 1 1 1 1 0 1.4901161e-007
		 0 0 0 0.99999988 1.1102229e-016 1 0.99999976 1.490116e-007 0.99999988;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  3.9412917e-015 -1.1125728 
		-6.3060668e-014 -3.9412917e-015 -1.1125728 -6.700196e-014 3.9412917e-015 1.1125728 
		-5.5178084e-014 -3.9412917e-015 1.1125728 -6.700196e-014 3.9412917e-015 1.1125728 
		-6.3060668e-014 -3.9412917e-015 1.1125728 -6.3060668e-014 3.9412917e-015 -1.1125728 
		-6.3060668e-014 -3.9412917e-015 -1.1125728 -7.0943251e-014;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.49999985 -0.5 0.5 -0.5 0.5 0.5
		 0.49999985 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 2 0 1 3 0 4 6 0 5 7 0 5 3 0 1 7 0 0 1 0
		 3 2 0 2 4 0 6 0 0 4 5 0 7 6 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 -4 4 -2 5
		mu 0 4 0 1 2 3
		f 4 -1 6 1 7
		mu 0 4 4 5 6 7
		f 4 0 8 2 9
		mu 0 4 8 9 10 11
		f 4 -3 10 3 11
		mu 0 4 12 13 14 15
		f 4 -11 -9 -8 -5
		mu 0 4 16 17 18 19
		f 4 -6 -7 -10 -12
		mu 0 4 20 21 22 23;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube35";
	setAttr ".t" -type "double3" 3.7562148356958209 0.85127225406841267 -0.065074447418728962 ;
	setAttr ".r" -type "double3" 90 0 44.999960540641517 ;
	setAttr ".s" -type "double3" 0.14052887770401601 0.014052887770401619 0.14052887770401601 ;
	setAttr ".rp" -type "double3" 0.19360584555513022 0.12890348108661018 0.19360590325418622 ;
	setAttr ".rpt" -type "double3" 0.080194207782946308 -0.12890371045093058 -0.064702422167577073 ;
	setAttr ".sp" -type "double3" 0.49999985098838984 3.3290173212687839 0.50000000000000178 ;
	setAttr ".spt" -type "double3" -0.30639400543325962 -3.2001138401821736 -0.30639409674581558 ;
createNode mesh -n "polySurfaceShape2" -p "pCube35";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  9.3813846e-014 -8.5561266 
		-9.2148511e-014 8.3488771e-014 -8.5561266 -2.8388403e-013 9.3813846e-014 5.3060479 
		-8.970602e-014 8.3488771e-014 5.3060479 -2.8388403e-013 9.2370556e-014 5.3060479 
		2.980223e-008 9.2370556e-014 5.3060479 -1.4901254e-008 9.2370556e-014 -8.5561266 
		2.980223e-008 9.2370556e-014 -8.5561266 -1.4901254e-008;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "polySurfaceShape6" -p "pCube35";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.75 0.125 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 22 ".uvst[0].uvsp[0:21]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.125 0 0.125 0.25 0.45833331
		 0.25 0.45833331 0.5 0.45833331 0.75 0.45833331 0 0.20833333 0.25 0.20833333 0 0.51388884
		 0.25 0.51388884 0.5 0.51388884 0.75 0.51388884 0 0.2638889 0.25 0.2638889 0;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 25 ".pt";
	setAttr ".pt[0]" -type "float3" 9.3813846e-014 -8.5561266 -9.2148511e-014 ;
	setAttr ".pt[1]" -type "float3" -1.4901088e-008 -8.5561266 1.4900879e-008 ;
	setAttr ".pt[2]" -type "float3" 9.3813846e-014 5.3060479 -8.970602e-014 ;
	setAttr ".pt[3]" -type "float3" -1.4901088e-008 5.3060479 1.4900879e-008 ;
	setAttr ".pt[4]" -type "float3" 9.2370556e-014 5.3060479 2.980223e-008 ;
	setAttr ".pt[5]" -type "float3" 9.2370556e-014 5.3060479 -1.4901254e-008 ;
	setAttr ".pt[6]" -type "float3" 9.2370556e-014 -8.5561266 2.980223e-008 ;
	setAttr ".pt[7]" -type "float3" 9.2370556e-014 -8.5561266 -1.4901254e-008 ;
	setAttr ".pt[8]" -type "float3" 9.3813846e-014 5.3060479 -7.450673e-009 ;
	setAttr ".pt[9]" -type "float3" -2.980223e-008 5.3060479 -9.2370556e-014 ;
	setAttr ".pt[10]" -type "float3" -2.980223e-008 -8.5561266 -9.2370556e-014 ;
	setAttr ".pt[11]" -type "float3" 9.3813846e-014 -8.5561266 -7.450673e-009 ;
	setAttr ".pt[12]" -type "float3" -2.980223e-008 5.3060479 -9.0927266e-014 ;
	setAttr ".pt[13]" -type "float3" -2.980223e-008 -8.5561266 -9.0927266e-014 ;
	setAttr ".pt[14]" -type "float3" 9.3813846e-014 5.3060479 -1.4901254e-008 ;
	setAttr ".pt[15]" -type "float3" 9.0927266e-014 5.3060479 2.980223e-008 ;
	setAttr ".pt[16]" -type "float3" 9.0927266e-014 -8.5561266 2.980223e-008 ;
	setAttr ".pt[17]" -type "float3" 9.3813846e-014 -8.5561266 -1.4901254e-008 ;
	setAttr ".pt[18]" -type "float3" 9.2370556e-014 5.3060479 -9.0892571e-014 ;
	setAttr ".pt[19]" -type "float3" 9.2370556e-014 -8.5561266 -2.9802415e-008 ;
	setAttr ".pt[23]" -type "float3" -1.490117e-008 0 1.4901151e-008 ;
	setAttr ".pt[24]" -type "float3" -1.4901161e-008 0 1.4901161e-008 ;
	setAttr ".pt[25]" -type "float3" -1.4901161e-008 0 1.4901161e-008 ;
	setAttr ".pt[30]" -type "float3" -1.4901161e-008 0 1.4901161e-008 ;
	setAttr ".pt[31]" -type "float3" -1.4901161e-008 0 1.4901161e-008 ;
	setAttr -s 20 ".vt[0:19]"  -0.5 -0.5 0.5 0.49999985 -0.5 0.5 -0.5 0.5 0.5
		 0.49999985 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5 -0.16666664 0.5 0.5
		 -0.16666664 0.5 -0.5 -0.16666664 -0.5 -0.5 -0.16666664 -0.5 0.5 -0.5 0.5 -0.16666669
		 -0.5 -0.5 -0.16666669 0.055555537 0.5 0.5 0.055555582 0.5 -0.5 0.055555567 -0.5 -0.5
		 0.055555537 -0.5 0.5 -0.5 0.5 0.055555545 -0.5 -0.5 0.05555553;
	setAttr -s 26 ".ed[0:25]"  0 11 0 2 8 0 4 9 0 6 10 0 0 2 0 1 3 0 2 18 0
		 4 6 0 5 7 0 6 13 0 9 15 0 10 16 0 9 10 0 11 8 0 12 4 0 13 19 0 12 13 0 14 3 0 15 5 0
		 16 7 0 15 16 0 17 1 0 17 14 0 18 12 0 19 0 0 18 19 0;
	setAttr -s 8 -ch 32 ".fc[0:7]" -type "polyFaces" 
		f 4 0 13 -2 -5
		mu 0 4 0 13 10 2
		f 4 2 12 -4 -8
		mu 0 4 4 11 12 6
		f 4 24 4 6 25
		mu 0 4 21 0 2 20
		f 4 -13 10 20 -12
		mu 0 4 12 11 17 18
		f 4 9 -17 14 7
		mu 0 4 8 15 14 9
		f 4 -21 18 8 -20
		mu 0 4 18 17 5 7
		f 4 -23 21 5 -18
		mu 0 4 16 19 1 3
		f 4 15 -26 23 16
		mu 0 4 15 21 20 14;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "transform5" -p "pCube35";
	setAttr ".v" no;
createNode mesh -n "pCubeShape35" -p "transform5";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[1].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.625 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" 2.220446e-016 0 1
		 2.220446e-016 1 1 0 1 0 2.220446e-016 1 0 1 0.99999988 2.220446e-016 0.99999988 2.220446e-016
		 0 1 2.220446e-016 1 1 0 1 0 2.7755576e-016 1 0 1 1 2.220446e-016 1 0 1 1 1 1 0 1.4901161e-007
		 0 0 0 0.99999988 1.1102229e-016 1 0.99999976 1.490116e-007 0.99999988;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  9.3813846e-014 -8.5561266 
		-9.2148511e-014 8.2489571e-014 -8.5561266 -2.7894353e-013 9.3813846e-014 5.3060479 
		-8.970602e-014 8.2489571e-014 5.3060479 -2.7894353e-013 9.2370556e-014 5.3060479 
		2.980223e-008 9.2370556e-014 5.3060479 -1.4901254e-008 9.2370556e-014 -8.5561266 
		2.980223e-008 9.2370556e-014 -8.5561266 -1.4901254e-008;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.49999985 -0.5 0.5 -0.5 0.5 0.5
		 0.49999985 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 2 0 1 3 0 4 6 0 5 7 0 5 3 0 1 7 0 0 1 0
		 3 2 0 2 4 0 6 0 0 4 5 0 7 6 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 -4 4 -2 5
		mu 0 4 0 1 2 3
		f 4 -1 6 1 7
		mu 0 4 4 5 6 7
		f 4 0 8 2 9
		mu 0 4 8 9 10 11
		f 4 -3 10 3 11
		mu 0 4 12 13 14 15
		f 4 -11 -9 -8 -5
		mu 0 4 16 17 18 19
		f 4 -6 -7 -10 -12
		mu 0 4 20 21 22 23;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube36";
	setAttr ".rp" -type "double3" 3.7020875215530396 0.85127219557762146 0 ;
	setAttr ".sp" -type "double3" 3.7020875215530396 0.85127219557762146 0 ;
createNode transform -n "transform7" -p "pCube36";
	setAttr ".v" no;
createNode mesh -n "pCube36Shape" -p "transform7";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 2 ".ciog[0].cog";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pCube37";
	setAttr ".t" -type "double3" -6.2768874503518797 0 0 ;
	setAttr ".rp" -type "double3" 3.7502912282943726 0.85127224028110504 0 ;
	setAttr ".sp" -type "double3" 3.7502912282943726 0.85127224028110504 0 ;
createNode mesh -n "pCube37Shape" -p "pCube37";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.51644468307495117 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 7 ".pt";
	setAttr ".pt[3]" -type "float3" 0 0 -3.7252903e-009 ;
	setAttr ".pt[4]" -type "float3" -0.059130907 0.059130728 -1.8626451e-009 ;
	setAttr ".pt[10]" -type "float3" -0.059135914 -0.059131861 7.4505806e-009 ;
	setAttr ".pt[11]" -type "float3" -0.10911667 2.1316282e-014 -3.7252903e-009 ;
	setAttr ".pt[14]" -type "float3" -0.059130907 0.059130728 0 ;
	setAttr ".pt[15]" -type "float3" -0.10911667 2.1316282e-014 0 ;
	setAttr ".pt[16]" -type "float3" -0.059135914 -0.059131861 -7.4505806e-008 ;
createNode transform -n "pCube38";
	setAttr ".t" -type "double3" -1.2330161065777387 0.05 -9.8607613152626476e-032 ;
	setAttr ".s" -type "double3" 1 0.1 1 ;
createNode mesh -n "pCubeShape38" -p "pCube38";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.875 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  0.0704614 0 -0.0704614 -0.0704614 
		0 -0.0704614 0.073273733 0 -0.073273733 -0.073273733 0 -0.073273733 0.073273733 0 
		0.073273733 -0.073273733 0 0.073273733 0.0704614 0 0.0704614 -0.0704614 0 0.0704614;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "polySurfaceShape3" -p "pCube38";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube39";
	setAttr ".t" -type "double3" -1.1933698025234705 0.85127225406841278 -1.1093356479670479e-031 ;
	setAttr ".r" -type "double3" 90 0 44.999960540641517 ;
	setAttr ".s" -type "double3" 0.5 0.05 0.5 ;
createNode mesh -n "pCubeShape39" -p "pCube39";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.625 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" 2.220446e-016 0 1
		 2.220446e-016 1 1 0 1 0 2.220446e-016 1 0 1 0.99999988 2.220446e-016 0.99999988 2.220446e-016
		 0 1 2.220446e-016 1 1 0 1 0 2.7755576e-016 1 0 1 1 2.220446e-016 1 0 1 1 1 1 0 1.4901161e-007
		 0 0 0 0.99999988 1.1102229e-016 1 0.99999976 1.490116e-007 0.99999988;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.49999985 -0.5 0.5 -0.5 0.5 0.5
		 0.49999985 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 2 0 1 3 0 4 6 0 5 7 0 5 3 0 1 7 0 0 1 0
		 3 2 0 2 4 0 6 0 0 4 5 0 7 6 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 -4 4 -2 5
		mu 0 4 0 1 2 3
		f 4 -1 6 1 7
		mu 0 4 4 5 6 7
		f 4 0 8 2 9
		mu 0 4 8 9 10 11
		f 4 -3 10 3 11
		mu 0 4 12 13 14 15
		f 4 -11 -9 -8 -5
		mu 0 4 16 17 18 19
		f 4 -6 -7 -10 -12
		mu 0 4 20 21 22 23;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "polySurfaceShape2" -p "pCube39";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "polySurfaceShape6" -p "pCube39";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.75 0.125 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 22 ".uvst[0].uvsp[0:21]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.125 0 0.125 0.25 0.45833331
		 0.25 0.45833331 0.5 0.45833331 0.75 0.45833331 0 0.20833333 0.25 0.20833333 0 0.51388884
		 0.25 0.51388884 0.5 0.51388884 0.75 0.51388884 0 0.2638889 0.25 0.2638889 0;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt";
	setAttr ".pt[1]" -type "float3" -1.4901183e-008 0 1.4901151e-008 ;
	setAttr ".pt[3]" -type "float3" -1.4901183e-008 0 1.4901151e-008 ;
	setAttr ".pt[18]" -type "float3" -1.490117e-008 0 1.4901151e-008 ;
	setAttr ".pt[23]" -type "float3" -1.490117e-008 0 1.4901151e-008 ;
	setAttr ".pt[24]" -type "float3" -1.4901161e-008 0 1.4901161e-008 ;
	setAttr ".pt[25]" -type "float3" -1.4901161e-008 0 1.4901161e-008 ;
	setAttr ".pt[30]" -type "float3" -1.4901161e-008 0 1.4901161e-008 ;
	setAttr ".pt[31]" -type "float3" -1.4901161e-008 0 1.4901161e-008 ;
	setAttr -s 20 ".vt[0:19]"  -0.5 -0.5 0.5 0.49999985 -0.5 0.5 -0.5 0.5 0.5
		 0.49999985 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5 -0.16666664 0.5 0.5
		 -0.16666664 0.5 -0.5 -0.16666664 -0.5 -0.5 -0.16666664 -0.5 0.5 -0.5 0.5 -0.16666669
		 -0.5 -0.5 -0.16666669 0.055555537 0.5 0.5 0.055555582 0.5 -0.5 0.055555567 -0.5 -0.5
		 0.055555537 -0.5 0.5 -0.5 0.5 0.055555545 -0.5 -0.5 0.05555553;
	setAttr -s 26 ".ed[0:25]"  0 11 0 2 8 0 4 9 0 6 10 0 0 2 0 1 3 0 2 18 0
		 4 6 0 5 7 0 6 13 0 9 15 0 10 16 0 9 10 0 11 8 0 12 4 0 13 19 0 12 13 0 14 3 0 15 5 0
		 16 7 0 15 16 0 17 1 0 17 14 0 18 12 0 19 0 0 18 19 0;
	setAttr -s 8 -ch 32 ".fc[0:7]" -type "polyFaces" 
		f 4 0 13 -2 -5
		mu 0 4 0 13 10 2
		f 4 2 12 -4 -8
		mu 0 4 4 11 12 6
		f 4 24 4 6 25
		mu 0 4 21 0 2 20
		f 4 -13 10 20 -12
		mu 0 4 12 11 17 18
		f 4 9 -17 14 7
		mu 0 4 8 15 14 9
		f 4 -21 18 8 -20
		mu 0 4 18 17 5 7
		f 4 -23 21 5 -18
		mu 0 4 16 19 1 3
		f 4 15 -26 23 16
		mu 0 4 15 21 20 14;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube40";
	setAttr ".t" -type "double3" -1.3782319851568801 0.86415272793753495 -1.355854680848614e-031 ;
	setAttr ".r" -type "double3" 90 0 44.999960540641517 ;
	setAttr ".s" -type "double3" 0.67028064050745273 0.067028064050745337 0.67028064050745273 ;
createNode mesh -n "pCubeShape40" -p "pCube40";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.625 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" 2.220446e-016 0 1
		 2.220446e-016 1 1 0 1 0 2.220446e-016 1 0 1 0.99999988 2.220446e-016 0.99999988 2.220446e-016
		 0 1 2.220446e-016 1 1 0 1 0 2.7755576e-016 1 0 1 1 2.220446e-016 1 0 1 1 1 1 0 1.4901161e-007
		 0 0 0 0.99999988 1.1102229e-016 1 0.99999976 1.490116e-007 0.99999988;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  0.29394501 -0.16137248 -0.29394501 
		-0.29394487 -0.16137248 -0.29394501 0.29394501 0.16137248 -0.29394501 -0.29394487 
		0.16137248 -0.29394501 0.29394501 0.16137248 0.29394501 -0.29394501 0.16137248 0.29394501 
		0.29394501 -0.16137248 0.29394501 -0.29394501 -0.16137248 0.29394501;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.49999985 -0.5 0.5 -0.5 0.5 0.5
		 0.49999985 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 2 0 1 3 0 4 6 0 5 7 0 5 3 0 1 7 0 0 1 0
		 3 2 0 2 4 0 6 0 0 4 5 0 7 6 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 -4 4 -2 5
		mu 0 4 0 1 2 3
		f 4 -1 6 1 7
		mu 0 4 4 5 6 7
		f 4 0 8 2 9
		mu 0 4 8 9 10 11
		f 4 -3 10 3 11
		mu 0 4 12 13 14 15
		f 4 -11 -9 -8 -5
		mu 0 4 16 17 18 19
		f 4 -6 -7 -10 -12
		mu 0 4 20 21 22 23;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "polySurfaceShape2" -p "pCube40";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  0.29394501 -0.16137248 -0.29394501 
		-0.29394501 -0.16137248 -0.29394501 0.29394501 0.16137248 -0.29394501 -0.29394501 
		0.16137248 -0.29394501 0.29394501 0.16137248 0.29394501 -0.29394501 0.16137248 0.29394501 
		0.29394501 -0.16137248 0.29394501 -0.29394501 -0.16137248 0.29394501;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "polySurfaceShape6" -p "pCube40";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.75 0.125 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 22 ".uvst[0].uvsp[0:21]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.125 0 0.125 0.25 0.45833331
		 0.25 0.45833331 0.5 0.45833331 0.75 0.45833331 0 0.20833333 0.25 0.20833333 0 0.51388884
		 0.25 0.51388884 0.5 0.51388884 0.75 0.51388884 0 0.2638889 0.25 0.2638889 0;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 25 ".pt";
	setAttr ".pt[0]" -type "float3" 0.29394501 -0.16137248 -0.29394501 ;
	setAttr ".pt[1]" -type "float3" -0.29394487 -0.16137248 -0.29394501 ;
	setAttr ".pt[2]" -type "float3" 0.29394501 0.16137248 -0.29394501 ;
	setAttr ".pt[3]" -type "float3" -0.29394487 0.16137248 -0.29394501 ;
	setAttr ".pt[4]" -type "float3" 0.29394501 0.16137248 0.29394501 ;
	setAttr ".pt[5]" -type "float3" -0.29394501 0.16137248 0.29394501 ;
	setAttr ".pt[6]" -type "float3" 0.29394501 -0.16137248 0.29394501 ;
	setAttr ".pt[7]" -type "float3" -0.29394501 -0.16137248 0.29394501 ;
	setAttr ".pt[8]" -type "float3" 0.097981468 0.16137248 -0.29394501 ;
	setAttr ".pt[9]" -type "float3" 0.097981468 0.16137248 0.29394501 ;
	setAttr ".pt[10]" -type "float3" 0.097981468 -0.16137248 0.29394501 ;
	setAttr ".pt[11]" -type "float3" 0.097981468 -0.16137248 -0.29394501 ;
	setAttr ".pt[12]" -type "float3" 0.29394501 0.16137248 0.097981513 ;
	setAttr ".pt[13]" -type "float3" 0.29394501 -0.16137248 0.097981513 ;
	setAttr ".pt[14]" -type "float3" -0.032660488 0.16137248 -0.29394501 ;
	setAttr ".pt[15]" -type "float3" -0.032660514 0.16137248 0.29394501 ;
	setAttr ".pt[16]" -type "float3" -0.032660503 -0.16137248 0.29394501 ;
	setAttr ".pt[17]" -type "float3" -0.032660488 -0.16137248 -0.29394501 ;
	setAttr ".pt[18]" -type "float3" 0.29394501 0.16137248 -0.032660481 ;
	setAttr ".pt[19]" -type "float3" 0.29394501 -0.16137248 -0.032660481 ;
	setAttr ".pt[23]" -type "float3" -1.490117e-008 0 1.4901151e-008 ;
	setAttr ".pt[24]" -type "float3" -1.4901161e-008 0 1.4901161e-008 ;
	setAttr ".pt[25]" -type "float3" -1.4901161e-008 0 1.4901161e-008 ;
	setAttr ".pt[30]" -type "float3" -1.4901161e-008 0 1.4901161e-008 ;
	setAttr ".pt[31]" -type "float3" -1.4901161e-008 0 1.4901161e-008 ;
	setAttr -s 20 ".vt[0:19]"  -0.5 -0.5 0.5 0.49999985 -0.5 0.5 -0.5 0.5 0.5
		 0.49999985 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5 -0.16666664 0.5 0.5
		 -0.16666664 0.5 -0.5 -0.16666664 -0.5 -0.5 -0.16666664 -0.5 0.5 -0.5 0.5 -0.16666669
		 -0.5 -0.5 -0.16666669 0.055555537 0.5 0.5 0.055555582 0.5 -0.5 0.055555567 -0.5 -0.5
		 0.055555537 -0.5 0.5 -0.5 0.5 0.055555545 -0.5 -0.5 0.05555553;
	setAttr -s 26 ".ed[0:25]"  0 11 0 2 8 0 4 9 0 6 10 0 0 2 0 1 3 0 2 18 0
		 4 6 0 5 7 0 6 13 0 9 15 0 10 16 0 9 10 0 11 8 0 12 4 0 13 19 0 12 13 0 14 3 0 15 5 0
		 16 7 0 15 16 0 17 1 0 17 14 0 18 12 0 19 0 0 18 19 0;
	setAttr -s 8 -ch 32 ".fc[0:7]" -type "polyFaces" 
		f 4 0 13 -2 -5
		mu 0 4 0 13 10 2
		f 4 2 12 -4 -8
		mu 0 4 4 11 12 6
		f 4 24 4 6 25
		mu 0 4 21 0 2 20
		f 4 -13 10 20 -12
		mu 0 4 12 11 17 18
		f 4 9 -17 14 7
		mu 0 4 8 15 14 9
		f 4 -21 18 8 -20
		mu 0 4 18 17 5 7
		f 4 -23 21 5 -18
		mu 0 4 16 19 1 3
		f 4 15 -26 23 16
		mu 0 4 15 21 20 14;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube41";
	setAttr ".t" -type "double3" -1.4691472523225988 0.86415272793753495 -1.355854680848614e-031 ;
	setAttr ".r" -type "double3" 90 0 44.999960540641517 ;
	setAttr ".s" -type "double3" 0.67028064050745273 0.067028064050745337 0.67028064050745273 ;
createNode mesh -n "pCubeShape41" -p "pCube41";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.625 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" 2.220446e-016 0 1
		 2.220446e-016 1 1 0 1 0 2.220446e-016 1 0 1 0.99999988 2.220446e-016 0.99999988 2.220446e-016
		 0 1 2.220446e-016 1 1 0 1 0 2.7755576e-016 1 0 1 1 2.220446e-016 1 0 1 1 1 1 0 1.4901161e-007
		 0 0 0 0.99999988 1.1102229e-016 1 0.99999976 1.490116e-007 0.99999988;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  0.34593245 -0.40640205 -0.34593245 
		-0.34593233 -0.40640205 -0.34593242 0.34593245 0.40640205 -0.34593245 -0.34593233 
		0.40640205 -0.34593242 0.34593248 0.40640205 0.34593242 -0.34593245 0.40640205 0.34593245 
		0.34593248 -0.40640205 0.34593242 -0.34593245 -0.40640205 0.34593245;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.49999985 -0.5 0.5 -0.5 0.5 0.5
		 0.49999985 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 2 0 1 3 0 4 6 0 5 7 0 5 3 0 1 7 0 0 1 0
		 3 2 0 2 4 0 6 0 0 4 5 0 7 6 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 -4 4 -2 5
		mu 0 4 0 1 2 3
		f 4 -1 6 1 7
		mu 0 4 4 5 6 7
		f 4 0 8 2 9
		mu 0 4 8 9 10 11
		f 4 -3 10 3 11
		mu 0 4 12 13 14 15
		f 4 -11 -9 -8 -5
		mu 0 4 16 17 18 19
		f 4 -6 -7 -10 -12
		mu 0 4 20 21 22 23;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "polySurfaceShape2" -p "pCube41";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  0.34593245 -0.40640205 -0.34593245 
		-0.34593248 -0.40640205 -0.34593242 0.34593245 0.40640205 -0.34593245 -0.34593248 
		0.40640205 -0.34593242 0.34593248 0.40640205 0.34593242 -0.34593245 0.40640205 0.34593245 
		0.34593248 -0.40640205 0.34593242 -0.34593245 -0.40640205 0.34593245;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "polySurfaceShape6" -p "pCube41";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.75 0.125 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 22 ".uvst[0].uvsp[0:21]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.125 0 0.125 0.25 0.45833331
		 0.25 0.45833331 0.5 0.45833331 0.75 0.45833331 0 0.20833333 0.25 0.20833333 0 0.51388884
		 0.25 0.51388884 0.5 0.51388884 0.75 0.51388884 0 0.2638889 0.25 0.2638889 0;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 25 ".pt";
	setAttr ".pt[0]" -type "float3" 0.34593245 -0.40640205 -0.34593245 ;
	setAttr ".pt[1]" -type "float3" -0.34593233 -0.40640205 -0.34593242 ;
	setAttr ".pt[2]" -type "float3" 0.34593245 0.40640205 -0.34593245 ;
	setAttr ".pt[3]" -type "float3" -0.34593233 0.40640205 -0.34593242 ;
	setAttr ".pt[4]" -type "float3" 0.34593248 0.40640205 0.34593242 ;
	setAttr ".pt[5]" -type "float3" -0.34593245 0.40640205 0.34593245 ;
	setAttr ".pt[6]" -type "float3" 0.34593248 -0.40640205 0.34593242 ;
	setAttr ".pt[7]" -type "float3" -0.34593245 -0.40640205 0.34593245 ;
	setAttr ".pt[8]" -type "float3" 0.11531064 0.40640205 -0.34593251 ;
	setAttr ".pt[9]" -type "float3" 0.11531064 0.40640205 0.34593233 ;
	setAttr ".pt[10]" -type "float3" 0.11531064 -0.40640205 0.34593233 ;
	setAttr ".pt[11]" -type "float3" 0.11531064 -0.40640205 -0.34593251 ;
	setAttr ".pt[12]" -type "float3" 0.34593236 0.40640205 0.11531069 ;
	setAttr ".pt[13]" -type "float3" 0.34593236 -0.40640205 0.11531069 ;
	setAttr ".pt[14]" -type "float3" -0.038436882 0.40640205 -0.34593242 ;
	setAttr ".pt[15]" -type "float3" -0.038436923 0.40640205 0.34593248 ;
	setAttr ".pt[16]" -type "float3" -0.038436912 -0.40640205 0.34593251 ;
	setAttr ".pt[17]" -type "float3" -0.038436882 -0.40640205 -0.34593242 ;
	setAttr ".pt[18]" -type "float3" 0.3459326 0.40640205 -0.03843689 ;
	setAttr ".pt[19]" -type "float3" 0.3459326 -0.40640205 -0.038436886 ;
	setAttr ".pt[23]" -type "float3" -1.490117e-008 0 1.4901151e-008 ;
	setAttr ".pt[24]" -type "float3" -1.4901161e-008 0 1.4901161e-008 ;
	setAttr ".pt[25]" -type "float3" -1.4901161e-008 0 1.4901161e-008 ;
	setAttr ".pt[30]" -type "float3" -1.4901161e-008 0 1.4901161e-008 ;
	setAttr ".pt[31]" -type "float3" -1.4901161e-008 0 1.4901161e-008 ;
	setAttr -s 20 ".vt[0:19]"  -0.5 -0.5 0.5 0.49999985 -0.5 0.5 -0.5 0.5 0.5
		 0.49999985 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5 -0.16666664 0.5 0.5
		 -0.16666664 0.5 -0.5 -0.16666664 -0.5 -0.5 -0.16666664 -0.5 0.5 -0.5 0.5 -0.16666669
		 -0.5 -0.5 -0.16666669 0.055555537 0.5 0.5 0.055555582 0.5 -0.5 0.055555567 -0.5 -0.5
		 0.055555537 -0.5 0.5 -0.5 0.5 0.055555545 -0.5 -0.5 0.05555553;
	setAttr -s 26 ".ed[0:25]"  0 11 0 2 8 0 4 9 0 6 10 0 0 2 0 1 3 0 2 18 0
		 4 6 0 5 7 0 6 13 0 9 15 0 10 16 0 9 10 0 11 8 0 12 4 0 13 19 0 12 13 0 14 3 0 15 5 0
		 16 7 0 15 16 0 17 1 0 17 14 0 18 12 0 19 0 0 18 19 0;
	setAttr -s 8 -ch 32 ".fc[0:7]" -type "polyFaces" 
		f 4 0 13 -2 -5
		mu 0 4 0 13 10 2
		f 4 2 12 -4 -8
		mu 0 4 4 11 12 6
		f 4 24 4 6 25
		mu 0 4 21 0 2 20
		f 4 -13 10 20 -12
		mu 0 4 12 11 17 18
		f 4 9 -17 14 7
		mu 0 4 8 15 14 9
		f 4 -21 18 8 -20
		mu 0 4 18 17 5 7
		f 4 -23 21 5 -18
		mu 0 4 16 19 1 3
		f 4 15 -26 23 16
		mu 0 4 15 21 20 14;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube42";
	setAttr ".t" -type "double3" -0.073583280722782973 0.05 -9.8607613152626476e-032 ;
	setAttr ".s" -type "double3" 1 0.1 1 ;
createNode mesh -n "pCubeShape42" -p "pCube42";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.875 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  0.0704614 0 -0.0704614 -0.0704614 
		0 -0.0704614 0.073273733 0 -0.073273733 -0.073273733 0 -0.073273733 0.073273733 0 
		0.073273733 -0.073273733 0 0.073273733 0.0704614 0 0.0704614 -0.0704614 0 0.0704614;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "polySurfaceShape3" -p "pCube42";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube43";
	setAttr ".t" -type "double3" 6.2852346669517836 0.85127225406841278 -1.1093356479670479e-031 ;
	setAttr ".r" -type "double3" 90 0 44.999960540641517 ;
	setAttr ".s" -type "double3" 0.5 0.05 0.5 ;
createNode mesh -n "polySurfaceShape2" -p "pCube43";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "polySurfaceShape6" -p "pCube43";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.75 0.125 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 22 ".uvst[0].uvsp[0:21]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.125 0 0.125 0.25 0.45833331
		 0.25 0.45833331 0.5 0.45833331 0.75 0.45833331 0 0.20833333 0.25 0.20833333 0 0.51388884
		 0.25 0.51388884 0.5 0.51388884 0.75 0.51388884 0 0.2638889 0.25 0.2638889 0;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt";
	setAttr ".pt[1]" -type "float3" -1.4901183e-008 0 1.4901151e-008 ;
	setAttr ".pt[3]" -type "float3" -1.4901183e-008 0 1.4901151e-008 ;
	setAttr ".pt[18]" -type "float3" -1.490117e-008 0 1.4901151e-008 ;
	setAttr ".pt[23]" -type "float3" -1.490117e-008 0 1.4901151e-008 ;
	setAttr ".pt[24]" -type "float3" -1.4901161e-008 0 1.4901161e-008 ;
	setAttr ".pt[25]" -type "float3" -1.4901161e-008 0 1.4901161e-008 ;
	setAttr ".pt[30]" -type "float3" -1.4901161e-008 0 1.4901161e-008 ;
	setAttr ".pt[31]" -type "float3" -1.4901161e-008 0 1.4901161e-008 ;
	setAttr -s 20 ".vt[0:19]"  -0.5 -0.5 0.5 0.49999985 -0.5 0.5 -0.5 0.5 0.5
		 0.49999985 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5 -0.16666664 0.5 0.5
		 -0.16666664 0.5 -0.5 -0.16666664 -0.5 -0.5 -0.16666664 -0.5 0.5 -0.5 0.5 -0.16666669
		 -0.5 -0.5 -0.16666669 0.055555537 0.5 0.5 0.055555582 0.5 -0.5 0.055555567 -0.5 -0.5
		 0.055555537 -0.5 0.5 -0.5 0.5 0.055555545 -0.5 -0.5 0.05555553;
	setAttr -s 26 ".ed[0:25]"  0 11 0 2 8 0 4 9 0 6 10 0 0 2 0 1 3 0 2 18 0
		 4 6 0 5 7 0 6 13 0 9 15 0 10 16 0 9 10 0 11 8 0 12 4 0 13 19 0 12 13 0 14 3 0 15 5 0
		 16 7 0 15 16 0 17 1 0 17 14 0 18 12 0 19 0 0 18 19 0;
	setAttr -s 8 -ch 32 ".fc[0:7]" -type "polyFaces" 
		f 4 0 13 -2 -5
		mu 0 4 0 13 10 2
		f 4 2 12 -4 -8
		mu 0 4 4 11 12 6
		f 4 24 4 6 25
		mu 0 4 21 0 2 20
		f 4 -13 10 20 -12
		mu 0 4 12 11 17 18
		f 4 9 -17 14 7
		mu 0 4 8 15 14 9
		f 4 -21 18 8 -20
		mu 0 4 18 17 5 7
		f 4 -23 21 5 -18
		mu 0 4 16 19 1 3
		f 4 15 -26 23 16
		mu 0 4 15 21 20 14;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "transform10" -p "pCube43";
	setAttr ".v" no;
createNode mesh -n "pCubeShape43" -p "transform10";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[1].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.625 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" 2.220446e-016 0 1
		 2.220446e-016 1 1 0 1 0 2.220446e-016 1 0 1 0.99999988 2.220446e-016 0.99999988 2.220446e-016
		 0 1 2.220446e-016 1 1 0 1 0 2.7755576e-016 1 0 1 1 2.220446e-016 1 0 1 1 1 1 0 1.4901161e-007
		 0 0 0 0.99999988 1.1102229e-016 1 0.99999976 1.490116e-007 0.99999988;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.49999985 -0.5 0.5 -0.5 0.5 0.5
		 0.49999985 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 2 0 1 3 0 4 6 0 5 7 0 5 3 0 1 7 0 0 1 0
		 3 2 0 2 4 0 6 0 0 4 5 0 7 6 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 -4 4 -2 5
		mu 0 4 0 1 2 3
		f 4 -1 6 1 7
		mu 0 4 4 5 6 7
		f 4 0 8 2 9
		mu 0 4 8 9 10 11
		f 4 -3 10 3 11
		mu 0 4 12 13 14 15
		f 4 -11 -9 -8 -5
		mu 0 4 16 17 18 19
		f 4 -6 -7 -10 -12
		mu 0 4 20 21 22 23;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube44";
	setAttr ".t" -type "double3" 6.100372484318374 0.86415272793753495 -1.355854680848614e-031 ;
	setAttr ".r" -type "double3" 90 0 44.999960540641517 ;
	setAttr ".s" -type "double3" 0.67028064050745273 0.067028064050745337 0.67028064050745273 ;
createNode mesh -n "polySurfaceShape2" -p "pCube44";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  0.29394501 -0.16137248 -0.29394501 
		-0.29394501 -0.16137248 -0.29394501 0.29394501 0.16137248 -0.29394501 -0.29394501 
		0.16137248 -0.29394501 0.29394501 0.16137248 0.29394501 -0.29394501 0.16137248 0.29394501 
		0.29394501 -0.16137248 0.29394501 -0.29394501 -0.16137248 0.29394501;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "polySurfaceShape6" -p "pCube44";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.75 0.125 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 22 ".uvst[0].uvsp[0:21]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.125 0 0.125 0.25 0.45833331
		 0.25 0.45833331 0.5 0.45833331 0.75 0.45833331 0 0.20833333 0.25 0.20833333 0 0.51388884
		 0.25 0.51388884 0.5 0.51388884 0.75 0.51388884 0 0.2638889 0.25 0.2638889 0;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 25 ".pt";
	setAttr ".pt[0]" -type "float3" 0.29394501 -0.16137248 -0.29394501 ;
	setAttr ".pt[1]" -type "float3" -0.29394487 -0.16137248 -0.29394501 ;
	setAttr ".pt[2]" -type "float3" 0.29394501 0.16137248 -0.29394501 ;
	setAttr ".pt[3]" -type "float3" -0.29394487 0.16137248 -0.29394501 ;
	setAttr ".pt[4]" -type "float3" 0.29394501 0.16137248 0.29394501 ;
	setAttr ".pt[5]" -type "float3" -0.29394501 0.16137248 0.29394501 ;
	setAttr ".pt[6]" -type "float3" 0.29394501 -0.16137248 0.29394501 ;
	setAttr ".pt[7]" -type "float3" -0.29394501 -0.16137248 0.29394501 ;
	setAttr ".pt[8]" -type "float3" 0.097981468 0.16137248 -0.29394501 ;
	setAttr ".pt[9]" -type "float3" 0.097981468 0.16137248 0.29394501 ;
	setAttr ".pt[10]" -type "float3" 0.097981468 -0.16137248 0.29394501 ;
	setAttr ".pt[11]" -type "float3" 0.097981468 -0.16137248 -0.29394501 ;
	setAttr ".pt[12]" -type "float3" 0.29394501 0.16137248 0.097981513 ;
	setAttr ".pt[13]" -type "float3" 0.29394501 -0.16137248 0.097981513 ;
	setAttr ".pt[14]" -type "float3" -0.032660488 0.16137248 -0.29394501 ;
	setAttr ".pt[15]" -type "float3" -0.032660514 0.16137248 0.29394501 ;
	setAttr ".pt[16]" -type "float3" -0.032660503 -0.16137248 0.29394501 ;
	setAttr ".pt[17]" -type "float3" -0.032660488 -0.16137248 -0.29394501 ;
	setAttr ".pt[18]" -type "float3" 0.29394501 0.16137248 -0.032660481 ;
	setAttr ".pt[19]" -type "float3" 0.29394501 -0.16137248 -0.032660481 ;
	setAttr ".pt[23]" -type "float3" -1.490117e-008 0 1.4901151e-008 ;
	setAttr ".pt[24]" -type "float3" -1.4901161e-008 0 1.4901161e-008 ;
	setAttr ".pt[25]" -type "float3" -1.4901161e-008 0 1.4901161e-008 ;
	setAttr ".pt[30]" -type "float3" -1.4901161e-008 0 1.4901161e-008 ;
	setAttr ".pt[31]" -type "float3" -1.4901161e-008 0 1.4901161e-008 ;
	setAttr -s 20 ".vt[0:19]"  -0.5 -0.5 0.5 0.49999985 -0.5 0.5 -0.5 0.5 0.5
		 0.49999985 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5 -0.16666664 0.5 0.5
		 -0.16666664 0.5 -0.5 -0.16666664 -0.5 -0.5 -0.16666664 -0.5 0.5 -0.5 0.5 -0.16666669
		 -0.5 -0.5 -0.16666669 0.055555537 0.5 0.5 0.055555582 0.5 -0.5 0.055555567 -0.5 -0.5
		 0.055555537 -0.5 0.5 -0.5 0.5 0.055555545 -0.5 -0.5 0.05555553;
	setAttr -s 26 ".ed[0:25]"  0 11 0 2 8 0 4 9 0 6 10 0 0 2 0 1 3 0 2 18 0
		 4 6 0 5 7 0 6 13 0 9 15 0 10 16 0 9 10 0 11 8 0 12 4 0 13 19 0 12 13 0 14 3 0 15 5 0
		 16 7 0 15 16 0 17 1 0 17 14 0 18 12 0 19 0 0 18 19 0;
	setAttr -s 8 -ch 32 ".fc[0:7]" -type "polyFaces" 
		f 4 0 13 -2 -5
		mu 0 4 0 13 10 2
		f 4 2 12 -4 -8
		mu 0 4 4 11 12 6
		f 4 24 4 6 25
		mu 0 4 21 0 2 20
		f 4 -13 10 20 -12
		mu 0 4 12 11 17 18
		f 4 9 -17 14 7
		mu 0 4 8 15 14 9
		f 4 -21 18 8 -20
		mu 0 4 18 17 5 7
		f 4 -23 21 5 -18
		mu 0 4 16 19 1 3
		f 4 15 -26 23 16
		mu 0 4 15 21 20 14;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "transform9" -p "pCube44";
	setAttr ".v" no;
createNode mesh -n "pCubeShape44" -p "transform9";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[1].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.625 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" 2.220446e-016 0 1
		 2.220446e-016 1 1 0 1 0 2.220446e-016 1 0 1 0.99999988 2.220446e-016 0.99999988 2.220446e-016
		 0 1 2.220446e-016 1 1 0 1 0 2.7755576e-016 1 0 1 1 2.220446e-016 1 0 1 1 1 1 0 1.4901161e-007
		 0 0 0 0.99999988 1.1102229e-016 1 0.99999976 1.490116e-007 0.99999988;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  0.29394501 -0.16137248 -0.29394501 
		-0.29394487 -0.16137248 -0.29394501 0.29394501 0.16137248 -0.29394501 -0.29394487 
		0.16137248 -0.29394501 0.29394501 0.16137248 0.29394501 -0.29394501 0.16137248 0.29394501 
		0.29394501 -0.16137248 0.29394501 -0.29394501 -0.16137248 0.29394501;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.49999985 -0.5 0.5 -0.5 0.5 0.5
		 0.49999985 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 2 0 1 3 0 4 6 0 5 7 0 5 3 0 1 7 0 0 1 0
		 3 2 0 2 4 0 6 0 0 4 5 0 7 6 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 -4 4 -2 5
		mu 0 4 0 1 2 3
		f 4 -1 6 1 7
		mu 0 4 4 5 6 7
		f 4 0 8 2 9
		mu 0 4 8 9 10 11
		f 4 -3 10 3 11
		mu 0 4 12 13 14 15
		f 4 -11 -9 -8 -5
		mu 0 4 16 17 18 19
		f 4 -6 -7 -10 -12
		mu 0 4 20 21 22 23;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube45";
	setAttr ".t" -type "double3" 6.0094572171526552 0.86415272793753495 -1.355854680848614e-031 ;
	setAttr ".r" -type "double3" 90 0 44.999960540641517 ;
	setAttr ".s" -type "double3" 0.67028064050745273 0.067028064050745337 0.67028064050745273 ;
createNode mesh -n "polySurfaceShape2" -p "pCube45";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  0.34593245 -0.40640205 -0.34593245 
		-0.34593248 -0.40640205 -0.34593242 0.34593245 0.40640205 -0.34593245 -0.34593248 
		0.40640205 -0.34593242 0.34593248 0.40640205 0.34593242 -0.34593245 0.40640205 0.34593245 
		0.34593248 -0.40640205 0.34593242 -0.34593245 -0.40640205 0.34593245;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "polySurfaceShape6" -p "pCube45";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.75 0.125 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 22 ".uvst[0].uvsp[0:21]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.125 0 0.125 0.25 0.45833331
		 0.25 0.45833331 0.5 0.45833331 0.75 0.45833331 0 0.20833333 0.25 0.20833333 0 0.51388884
		 0.25 0.51388884 0.5 0.51388884 0.75 0.51388884 0 0.2638889 0.25 0.2638889 0;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 25 ".pt";
	setAttr ".pt[0]" -type "float3" 0.34593245 -0.40640205 -0.34593245 ;
	setAttr ".pt[1]" -type "float3" -0.34593233 -0.40640205 -0.34593242 ;
	setAttr ".pt[2]" -type "float3" 0.34593245 0.40640205 -0.34593245 ;
	setAttr ".pt[3]" -type "float3" -0.34593233 0.40640205 -0.34593242 ;
	setAttr ".pt[4]" -type "float3" 0.34593248 0.40640205 0.34593242 ;
	setAttr ".pt[5]" -type "float3" -0.34593245 0.40640205 0.34593245 ;
	setAttr ".pt[6]" -type "float3" 0.34593248 -0.40640205 0.34593242 ;
	setAttr ".pt[7]" -type "float3" -0.34593245 -0.40640205 0.34593245 ;
	setAttr ".pt[8]" -type "float3" 0.11531064 0.40640205 -0.34593251 ;
	setAttr ".pt[9]" -type "float3" 0.11531064 0.40640205 0.34593233 ;
	setAttr ".pt[10]" -type "float3" 0.11531064 -0.40640205 0.34593233 ;
	setAttr ".pt[11]" -type "float3" 0.11531064 -0.40640205 -0.34593251 ;
	setAttr ".pt[12]" -type "float3" 0.34593236 0.40640205 0.11531069 ;
	setAttr ".pt[13]" -type "float3" 0.34593236 -0.40640205 0.11531069 ;
	setAttr ".pt[14]" -type "float3" -0.038436882 0.40640205 -0.34593242 ;
	setAttr ".pt[15]" -type "float3" -0.038436923 0.40640205 0.34593248 ;
	setAttr ".pt[16]" -type "float3" -0.038436912 -0.40640205 0.34593251 ;
	setAttr ".pt[17]" -type "float3" -0.038436882 -0.40640205 -0.34593242 ;
	setAttr ".pt[18]" -type "float3" 0.3459326 0.40640205 -0.03843689 ;
	setAttr ".pt[19]" -type "float3" 0.3459326 -0.40640205 -0.038436886 ;
	setAttr ".pt[23]" -type "float3" -1.490117e-008 0 1.4901151e-008 ;
	setAttr ".pt[24]" -type "float3" -1.4901161e-008 0 1.4901161e-008 ;
	setAttr ".pt[25]" -type "float3" -1.4901161e-008 0 1.4901161e-008 ;
	setAttr ".pt[30]" -type "float3" -1.4901161e-008 0 1.4901161e-008 ;
	setAttr ".pt[31]" -type "float3" -1.4901161e-008 0 1.4901161e-008 ;
	setAttr -s 20 ".vt[0:19]"  -0.5 -0.5 0.5 0.49999985 -0.5 0.5 -0.5 0.5 0.5
		 0.49999985 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5 -0.16666664 0.5 0.5
		 -0.16666664 0.5 -0.5 -0.16666664 -0.5 -0.5 -0.16666664 -0.5 0.5 -0.5 0.5 -0.16666669
		 -0.5 -0.5 -0.16666669 0.055555537 0.5 0.5 0.055555582 0.5 -0.5 0.055555567 -0.5 -0.5
		 0.055555537 -0.5 0.5 -0.5 0.5 0.055555545 -0.5 -0.5 0.05555553;
	setAttr -s 26 ".ed[0:25]"  0 11 0 2 8 0 4 9 0 6 10 0 0 2 0 1 3 0 2 18 0
		 4 6 0 5 7 0 6 13 0 9 15 0 10 16 0 9 10 0 11 8 0 12 4 0 13 19 0 12 13 0 14 3 0 15 5 0
		 16 7 0 15 16 0 17 1 0 17 14 0 18 12 0 19 0 0 18 19 0;
	setAttr -s 8 -ch 32 ".fc[0:7]" -type "polyFaces" 
		f 4 0 13 -2 -5
		mu 0 4 0 13 10 2
		f 4 2 12 -4 -8
		mu 0 4 4 11 12 6
		f 4 24 4 6 25
		mu 0 4 21 0 2 20
		f 4 -13 10 20 -12
		mu 0 4 12 11 17 18
		f 4 9 -17 14 7
		mu 0 4 8 15 14 9
		f 4 -21 18 8 -20
		mu 0 4 18 17 5 7
		f 4 -23 21 5 -18
		mu 0 4 16 19 1 3
		f 4 15 -26 23 16
		mu 0 4 15 21 20 14;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "transform11" -p "pCube45";
	setAttr ".v" no;
createNode mesh -n "pCubeShape45" -p "transform11";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[1].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.625 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" 2.220446e-016 0 1
		 2.220446e-016 1 1 0 1 0 2.220446e-016 1 0 1 0.99999988 2.220446e-016 0.99999988 2.220446e-016
		 0 1 2.220446e-016 1 1 0 1 0 2.7755576e-016 1 0 1 1 2.220446e-016 1 0 1 1 1 1 0 1.4901161e-007
		 0 0 0 0.99999988 1.1102229e-016 1 0.99999976 1.490116e-007 0.99999988;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  0.34593245 -0.40640205 -0.34593245 
		-0.34593233 -0.40640205 -0.34593242 0.34593245 0.40640205 -0.34593245 -0.34593233 
		0.40640205 -0.34593242 0.34593248 0.40640205 0.34593242 -0.34593245 0.40640205 0.34593245 
		0.34593248 -0.40640205 0.34593242 -0.34593245 -0.40640205 0.34593245;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.49999985 -0.5 0.5 -0.5 0.5 0.5
		 0.49999985 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 2 0 1 3 0 4 6 0 5 7 0 5 3 0 1 7 0 0 1 0
		 3 2 0 2 4 0 6 0 0 4 5 0 7 6 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 -4 4 -2 5
		mu 0 4 0 1 2 3
		f 4 -1 6 1 7
		mu 0 4 4 5 6 7
		f 4 0 8 2 9
		mu 0 4 8 9 10 11
		f 4 -3 10 3 11
		mu 0 4 12 13 14 15
		f 4 -11 -9 -8 -5
		mu 0 4 16 17 18 19
		f 4 -6 -7 -10 -12
		mu 0 4 20 21 22 23;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube46";
	setAttr ".t" -type "double3" 6.100372484318374 0.86415272793753495 -1.355854680848614e-031 ;
	setAttr ".r" -type "double3" 90 0 44.999960540641517 ;
	setAttr ".s" -type "double3" 0.67028064050745273 0.067028064050745337 0.67028064050745273 ;
createNode mesh -n "polySurfaceShape2" -p "pCube46";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  0.29394501 -0.16137248 -0.29394501 
		-0.29394501 -0.16137248 -0.29394501 0.29394501 0.16137248 -0.29394501 -0.29394501 
		0.16137248 -0.29394501 0.29394501 0.16137248 0.29394501 -0.29394501 0.16137248 0.29394501 
		0.29394501 -0.16137248 0.29394501 -0.29394501 -0.16137248 0.29394501;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "polySurfaceShape6" -p "pCube46";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.75 0.125 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 22 ".uvst[0].uvsp[0:21]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.125 0 0.125 0.25 0.45833331
		 0.25 0.45833331 0.5 0.45833331 0.75 0.45833331 0 0.20833333 0.25 0.20833333 0 0.51388884
		 0.25 0.51388884 0.5 0.51388884 0.75 0.51388884 0 0.2638889 0.25 0.2638889 0;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 25 ".pt";
	setAttr ".pt[0]" -type "float3" 0.29394501 -0.16137248 -0.29394501 ;
	setAttr ".pt[1]" -type "float3" -0.29394487 -0.16137248 -0.29394501 ;
	setAttr ".pt[2]" -type "float3" 0.29394501 0.16137248 -0.29394501 ;
	setAttr ".pt[3]" -type "float3" -0.29394487 0.16137248 -0.29394501 ;
	setAttr ".pt[4]" -type "float3" 0.29394501 0.16137248 0.29394501 ;
	setAttr ".pt[5]" -type "float3" -0.29394501 0.16137248 0.29394501 ;
	setAttr ".pt[6]" -type "float3" 0.29394501 -0.16137248 0.29394501 ;
	setAttr ".pt[7]" -type "float3" -0.29394501 -0.16137248 0.29394501 ;
	setAttr ".pt[8]" -type "float3" 0.097981468 0.16137248 -0.29394501 ;
	setAttr ".pt[9]" -type "float3" 0.097981468 0.16137248 0.29394501 ;
	setAttr ".pt[10]" -type "float3" 0.097981468 -0.16137248 0.29394501 ;
	setAttr ".pt[11]" -type "float3" 0.097981468 -0.16137248 -0.29394501 ;
	setAttr ".pt[12]" -type "float3" 0.29394501 0.16137248 0.097981513 ;
	setAttr ".pt[13]" -type "float3" 0.29394501 -0.16137248 0.097981513 ;
	setAttr ".pt[14]" -type "float3" -0.032660488 0.16137248 -0.29394501 ;
	setAttr ".pt[15]" -type "float3" -0.032660514 0.16137248 0.29394501 ;
	setAttr ".pt[16]" -type "float3" -0.032660503 -0.16137248 0.29394501 ;
	setAttr ".pt[17]" -type "float3" -0.032660488 -0.16137248 -0.29394501 ;
	setAttr ".pt[18]" -type "float3" 0.29394501 0.16137248 -0.032660481 ;
	setAttr ".pt[19]" -type "float3" 0.29394501 -0.16137248 -0.032660481 ;
	setAttr ".pt[23]" -type "float3" -1.490117e-008 0 1.4901151e-008 ;
	setAttr ".pt[24]" -type "float3" -1.4901161e-008 0 1.4901161e-008 ;
	setAttr ".pt[25]" -type "float3" -1.4901161e-008 0 1.4901161e-008 ;
	setAttr ".pt[30]" -type "float3" -1.4901161e-008 0 1.4901161e-008 ;
	setAttr ".pt[31]" -type "float3" -1.4901161e-008 0 1.4901161e-008 ;
	setAttr -s 20 ".vt[0:19]"  -0.5 -0.5 0.5 0.49999985 -0.5 0.5 -0.5 0.5 0.5
		 0.49999985 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5 -0.16666664 0.5 0.5
		 -0.16666664 0.5 -0.5 -0.16666664 -0.5 -0.5 -0.16666664 -0.5 0.5 -0.5 0.5 -0.16666669
		 -0.5 -0.5 -0.16666669 0.055555537 0.5 0.5 0.055555582 0.5 -0.5 0.055555567 -0.5 -0.5
		 0.055555537 -0.5 0.5 -0.5 0.5 0.055555545 -0.5 -0.5 0.05555553;
	setAttr -s 26 ".ed[0:25]"  0 11 0 2 8 0 4 9 0 6 10 0 0 2 0 1 3 0 2 18 0
		 4 6 0 5 7 0 6 13 0 9 15 0 10 16 0 9 10 0 11 8 0 12 4 0 13 19 0 12 13 0 14 3 0 15 5 0
		 16 7 0 15 16 0 17 1 0 17 14 0 18 12 0 19 0 0 18 19 0;
	setAttr -s 8 -ch 32 ".fc[0:7]" -type "polyFaces" 
		f 4 0 13 -2 -5
		mu 0 4 0 13 10 2
		f 4 2 12 -4 -8
		mu 0 4 4 11 12 6
		f 4 24 4 6 25
		mu 0 4 21 0 2 20
		f 4 -13 10 20 -12
		mu 0 4 12 11 17 18
		f 4 9 -17 14 7
		mu 0 4 8 15 14 9
		f 4 -21 18 8 -20
		mu 0 4 18 17 5 7
		f 4 -23 21 5 -18
		mu 0 4 16 19 1 3
		f 4 15 -26 23 16
		mu 0 4 15 21 20 14;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "transform12" -p "pCube46";
	setAttr ".v" no;
createNode mesh -n "pCubeShape46" -p "transform12";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[1].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.625 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" 2.220446e-016 0 1
		 2.220446e-016 1 1 0 1 0 2.220446e-016 1 0 1 0.99999988 2.220446e-016 0.99999988 2.220446e-016
		 0 1 2.220446e-016 1 1 0 1 0 2.7755576e-016 1 0 1 1 2.220446e-016 1 0 1 1 1 1 0 1.4901161e-007
		 0 0 0 0.99999988 1.1102229e-016 1 0.99999976 1.490116e-007 0.99999988;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  0.29394501 -0.16137248 -0.29394501 
		-0.29394487 -0.16137248 -0.29394501 0.29394501 0.16137248 -0.29394501 -0.29394487 
		0.16137248 -0.29394501 0.29394501 0.16137248 0.29394501 -0.29394501 0.16137248 0.29394501 
		0.29394501 -0.16137248 0.29394501 -0.29394501 -0.16137248 0.29394501;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.49999985 -0.5 0.5 -0.5 0.5 0.5
		 0.49999985 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 2 0 1 3 0 4 6 0 5 7 0 5 3 0 1 7 0 0 1 0
		 3 2 0 2 4 0 6 0 0 4 5 0 7 6 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 -4 4 -2 5
		mu 0 4 0 1 2 3
		f 4 -1 6 1 7
		mu 0 4 4 5 6 7
		f 4 0 8 2 9
		mu 0 4 8 9 10 11
		f 4 -3 10 3 11
		mu 0 4 12 13 14 15
		f 4 -11 -9 -8 -5
		mu 0 4 16 17 18 19
		f 4 -6 -7 -10 -12
		mu 0 4 20 21 22 23;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube47";
	setAttr ".t" -type "double3" -6.2768874503518797 0 0 ;
	setAttr ".rp" -type "double3" 6.3730180263519287 0.85127224028110504 0 ;
	setAttr ".sp" -type "double3" 6.3730180263519287 0.85127224028110504 0 ;
createNode mesh -n "pCube47Shape" -p "pCube47";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 12 ".pt[0:11]" -type "float3"  0 0 -0.030597785 0 0 0.030597785 
		0 0 0.030597785 0 0 -0.030597785 0 0 -0.030597785 0 0 -0.030597785 0 0 -0.030597785 
		0 0 -0.030597785 0 0 0.030597785 0 0 0.030597785 0 0 0.030597785 0 0 0.030597785;
createNode transform -n "pCube48";
	setAttr ".t" -type "double3" -0.136469180236511 0.86415272793753495 -1.2942249226282225e-031 ;
	setAttr ".r" -type "double3" 90 0 44.999960540641517 ;
	setAttr ".s" -type "double3" 0.2719128344151619 0.02719128344151623 0.2719128344151619 ;
createNode mesh -n "pCubeShape48" -p "pCube48";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.625 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" 2.220446e-016 0 1
		 2.220446e-016 1 1 0 1 0 2.220446e-016 1 0 1 0.99999988 2.220446e-016 0.99999988 2.220446e-016
		 0 1 2.220446e-016 1 1 0 1 0 2.7755576e-016 1 0 1 1 2.220446e-016 1 0 1 1 1 1 0 1.4901161e-007
		 0 0 0 0.99999988 1.1102229e-016 1 0.99999976 1.490116e-007 0.99999988;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  0.34593245 0.15899266 -0.34593245 
		-0.34593233 0.15899266 -0.34593242 0.34593245 -0.15899266 -0.34593245 -0.34593233 
		-0.15899266 -0.34593242 0.34593248 -0.15899266 0.34593242 -0.34593245 -0.15899266 
		0.34593245 0.34593248 0.15899266 0.34593242 -0.34593245 0.15899266 0.34593245;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.49999985 -0.5 0.5 -0.5 0.5 0.5
		 0.49999985 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 2 0 1 3 0 4 6 0 5 7 0 5 3 0 1 7 0 0 1 0
		 3 2 0 2 4 0 6 0 0 4 5 0 7 6 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 -4 4 -2 5
		mu 0 4 0 1 2 3
		f 4 -1 6 1 7
		mu 0 4 4 5 6 7
		f 4 0 8 2 9
		mu 0 4 8 9 10 11
		f 4 -3 10 3 11
		mu 0 4 12 13 14 15
		f 4 -11 -9 -8 -5
		mu 0 4 16 17 18 19
		f 4 -6 -7 -10 -12
		mu 0 4 20 21 22 23;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "polySurfaceShape2" -p "pCube48";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  0.34593245 0.15899266 -0.34593245 
		-0.34593248 0.15899266 -0.34593242 0.34593245 -0.15899266 -0.34593245 -0.34593248 
		-0.15899266 -0.34593242 0.34593248 -0.15899266 0.34593242 -0.34593245 -0.15899266 
		0.34593245 0.34593248 0.15899266 0.34593242 -0.34593245 0.15899266 0.34593245;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "polySurfaceShape6" -p "pCube48";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.75 0.125 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 22 ".uvst[0].uvsp[0:21]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.125 0 0.125 0.25 0.45833331
		 0.25 0.45833331 0.5 0.45833331 0.75 0.45833331 0 0.20833333 0.25 0.20833333 0 0.51388884
		 0.25 0.51388884 0.5 0.51388884 0.75 0.51388884 0 0.2638889 0.25 0.2638889 0;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 25 ".pt";
	setAttr ".pt[0]" -type "float3" 0.34593245 0.15899266 -0.34593245 ;
	setAttr ".pt[1]" -type "float3" -0.34593233 0.15899266 -0.34593242 ;
	setAttr ".pt[2]" -type "float3" 0.34593245 -0.15899266 -0.34593245 ;
	setAttr ".pt[3]" -type "float3" -0.34593233 -0.15899266 -0.34593242 ;
	setAttr ".pt[4]" -type "float3" 0.34593248 -0.15899266 0.34593242 ;
	setAttr ".pt[5]" -type "float3" -0.34593245 -0.15899266 0.34593245 ;
	setAttr ".pt[6]" -type "float3" 0.34593248 0.15899266 0.34593242 ;
	setAttr ".pt[7]" -type "float3" -0.34593245 0.15899266 0.34593245 ;
	setAttr ".pt[8]" -type "float3" 0.11531064 -0.15899266 -0.34593251 ;
	setAttr ".pt[9]" -type "float3" 0.11531064 -0.15899266 0.34593233 ;
	setAttr ".pt[10]" -type "float3" 0.11531064 0.15899266 0.34593233 ;
	setAttr ".pt[11]" -type "float3" 0.11531064 0.15899266 -0.34593251 ;
	setAttr ".pt[12]" -type "float3" 0.34593236 -0.15899266 0.11531069 ;
	setAttr ".pt[13]" -type "float3" 0.34593236 0.15899266 0.11531069 ;
	setAttr ".pt[14]" -type "float3" -0.038436882 -0.15899266 -0.34593242 ;
	setAttr ".pt[15]" -type "float3" -0.038436923 -0.15899266 0.34593248 ;
	setAttr ".pt[16]" -type "float3" -0.038436912 0.15899266 0.34593251 ;
	setAttr ".pt[17]" -type "float3" -0.038436882 0.15899266 -0.34593242 ;
	setAttr ".pt[18]" -type "float3" 0.3459326 -0.15899266 -0.03843689 ;
	setAttr ".pt[19]" -type "float3" 0.3459326 0.15899266 -0.038436886 ;
	setAttr ".pt[23]" -type "float3" -1.490117e-008 0 1.4901151e-008 ;
	setAttr ".pt[24]" -type "float3" -1.4901161e-008 0 1.4901161e-008 ;
	setAttr ".pt[25]" -type "float3" -1.4901161e-008 0 1.4901161e-008 ;
	setAttr ".pt[30]" -type "float3" -1.4901161e-008 0 1.4901161e-008 ;
	setAttr ".pt[31]" -type "float3" -1.4901161e-008 0 1.4901161e-008 ;
	setAttr -s 20 ".vt[0:19]"  -0.5 -0.5 0.5 0.49999985 -0.5 0.5 -0.5 0.5 0.5
		 0.49999985 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5 -0.16666664 0.5 0.5
		 -0.16666664 0.5 -0.5 -0.16666664 -0.5 -0.5 -0.16666664 -0.5 0.5 -0.5 0.5 -0.16666669
		 -0.5 -0.5 -0.16666669 0.055555537 0.5 0.5 0.055555582 0.5 -0.5 0.055555567 -0.5 -0.5
		 0.055555537 -0.5 0.5 -0.5 0.5 0.055555545 -0.5 -0.5 0.05555553;
	setAttr -s 26 ".ed[0:25]"  0 11 0 2 8 0 4 9 0 6 10 0 0 2 0 1 3 0 2 18 0
		 4 6 0 5 7 0 6 13 0 9 15 0 10 16 0 9 10 0 11 8 0 12 4 0 13 19 0 12 13 0 14 3 0 15 5 0
		 16 7 0 15 16 0 17 1 0 17 14 0 18 12 0 19 0 0 18 19 0;
	setAttr -s 8 -ch 32 ".fc[0:7]" -type "polyFaces" 
		f 4 0 13 -2 -5
		mu 0 4 0 13 10 2
		f 4 2 12 -4 -8
		mu 0 4 4 11 12 6
		f 4 24 4 6 25
		mu 0 4 21 0 2 20
		f 4 -13 10 20 -12
		mu 0 4 12 11 17 18
		f 4 9 -17 14 7
		mu 0 4 8 15 14 9
		f 4 -21 18 8 -20
		mu 0 4 18 17 5 7
		f 4 -23 21 5 -18
		mu 0 4 16 19 1 3
		f 4 15 -26 23 16
		mu 0 4 15 21 20 14;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube49";
	setAttr ".t" -type "double3" -6.2408492547162675 0 0 ;
	setAttr ".s" -type "double3" 0.77490214971434779 0.77490214971434779 0.77490214971434779 ;
	setAttr ".rp" -type "double3" 6.1629853248596191 0.86415272951126099 0 ;
	setAttr ".sp" -type "double3" 6.1629853248596191 0.86415272951126099 0 ;
createNode mesh -n "pCube49Shape" -p "pCube49";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 12 ".pt[0:11]" -type "float3"  0 0 0.003631507 0 0 -0.003631507 
		0 0 -0.003631507 0 0 0.003631507 0 0 0.003631507 0 0 0.003631507 0 0 0.003631507 
		0 0 0.003631507 0 0 -0.003631507 0 0 -0.003631507 0 0 -0.003631507 0 0 -0.003631507;
createNode transform -n "directionalLight1";
	setAttr ".t" -type "double3" 0 3.9738529792307027 0 ;
	setAttr ".r" -type "double3" -46.942581453362152 -42.1794720022449 -29.229627247857977 ;
createNode directionalLight -n "directionalLightShape1" -p "directionalLight1";
	setAttr -k off ".v";
createNode transform -n "pCube50";
	setAttr ".t" -type "double3" 7.4067832862643641 0.05 -9.8607613152626476e-032 ;
	setAttr ".s" -type "double3" 1 0.1 1 ;
createNode mesh -n "pCubeShape50" -p "pCube50";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.875 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  0.0704614 0 -0.0704614 -0.0704614 
		0 -0.0704614 0.073273733 0 -0.073273733 -0.073273733 0 -0.073273733 0.073273733 0 
		0.073273733 -0.073273733 0 0.073273733 0.0704614 0 0.0704614 -0.0704614 0 0.0704614;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "polySurfaceShape3" -p "pCube50";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "group1";
	setAttr ".r" -type "double3" 0 0 1.5957168474168655 ;
	setAttr ".rp" -type "double3" 7.4952170701472953 0.85127224028110504 0 ;
	setAttr ".sp" -type "double3" 7.4952170701472953 0.85127224028110504 0 ;
createNode transform -n "pCube51" -p "group1";
	setAttr ".t" -type "double3" 1.2034791166352674 0 0 ;
	setAttr ".rp" -type "double3" 6.3730180263519287 0.85127224028110504 0 ;
	setAttr ".sp" -type "double3" 6.3730180263519287 0.85127224028110504 0 ;
createNode mesh -n "pCube51Shape" -p "pCube51";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5000000074505806 0.73349484801292419 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 33 ".uvst[0].uvsp[0:32]" -type "float2" 1.110223e-016 0 1
		 2.220446e-016 1 1 0 1 0.99999988 1.1102229e-016 1 0.99999976 0.49657923 0.99999988
		 0.49657893 0.4669897 6.9586882e-008 0.46698964 1 0.5330103 1 1 2.220446e-016 1 1.1835206e-016
		 0.5330103 0 1 0.4669897 1 0.46698985 0.50342107 1 0.50342089 1 1.110223e-016 1.4901161e-007
		 0 0 2.220446e-016 1 0 1 0.99999988 2.220446e-016 0.99999988 1.1026272e-016 0.50342089
		 2.220446e-016 0 0.78197283 1 0.78197283 0.10114706 0.21802719 0.10114706 0.21802719
		 1 0.78197283 0.99999988 0.78197283 0.035203286 0.21802719 0.035203286 0.21802719
		 0.99999988;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 12 ".pt[0:11]" -type "float3"  0 0 -0.030597785 0 0 0.030597785 
		-3.7252903e-009 0 0.030597785 -3.7252903e-009 0 -0.030597785 0 0 -0.030597785 0.059328556 
		-0.059328735 -0.030597785 0.11518559 8.8817842e-016 -0.030597785 0.055035114 0.055035233 
		-0.030597785 0.055035114 0.055035233 0.030597785 0.11518559 8.8817842e-016 0.030597785 
		0.059328556 -0.059328735 0.030597785 0 0 0.030597785;
	setAttr -s 12 ".vt[0:11]"  6.28523445 1.20482564 -0.025 6.28523445 1.20482564 0.025
		 6.63878775 0.85127193 0.025 6.63878775 0.85127193 -0.025 6.28523445 0.49771884 -0.025
		 6.10724831 0.67570513 -0.025 6.29569578 0.86415261 -0.025 6.12012863 1.039719939 -0.025
		 6.12012863 1.039719939 0.025 6.29569578 0.86415261 0.025 6.10724831 0.67570513 0.025
		 6.28523445 0.49771884 0.025;
	setAttr -s 18 ".ed[0:17]"  0 1 0 1 2 0 2 3 0 3 0 0 3 4 0 4 5 0 5 6 0
		 6 7 0 7 0 0 8 1 0 7 8 0 8 9 0 9 10 0 10 11 0 11 2 0 11 4 0 10 5 0 6 9 0;
	setAttr -s 8 -ch 36 ".fc[0:7]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 0 1 2 3
		f 6 -4 4 5 6 7 8
		mu 0 6 0 4 5 6 7 8
		f 4 9 -1 -9 10
		mu 0 4 9 10 11 12
		f 6 -10 11 12 13 14 -2
		mu 0 6 13 14 15 16 17 18
		f 4 15 -5 -3 -15
		mu 0 4 19 20 21 22
		f 4 -6 -16 -14 16
		mu 0 4 23 24 17 16
		f 4 -12 -11 -8 17
		mu 0 4 25 26 27 28
		f 4 -7 -17 -13 -18
		mu 0 4 29 30 31 32;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube52" -p "group1";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 7.166502577699962 0.8636153429897454 -1.6640034719505718e-031 ;
	setAttr ".r" -type "double3" 90 0 44.999960540641517 ;
	setAttr ".s" -type "double3" 0.2719128344151619 0.02719128344151623 0.2719128344151619 ;
createNode mesh -n "pCubeShape52" -p "pCube52";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.625 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" 2.220446e-016 0 1
		 2.220446e-016 1 1 0 1 0 2.220446e-016 1 0 1 0.99999988 2.220446e-016 0.99999988 2.220446e-016
		 0 1 2.220446e-016 1 1 0 1 0 2.7755576e-016 1 0 1 1 2.220446e-016 1 0 1 1 1 1 0 1.4901161e-007
		 0 0 0 0.99999988 1.1102229e-016 1 0.99999976 1.490116e-007 0.99999988;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  0.34593257 0.15899266 -0.34593233 
		-0.3459323 0.15899266 -0.34593239 0.34593257 -0.15899266 -0.34593233 -0.3459323 -0.15899266 
		-0.34593239 0.34593245 -0.15899266 0.34593239 -0.34593257 -0.15899266 0.34593233 
		0.34593245 0.15899266 0.34593239 -0.34593257 0.15899266 0.34593233;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.49999985 -0.5 0.5 -0.5 0.5 0.5
		 0.49999985 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 2 0 1 3 0 4 6 0 5 7 0 5 3 0 1 7 0 0 1 0
		 3 2 0 2 4 0 6 0 0 4 5 0 7 6 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 -4 4 -2 5
		mu 0 4 0 1 2 3
		f 4 -1 6 1 7
		mu 0 4 4 5 6 7
		f 4 0 8 2 9
		mu 0 4 8 9 10 11
		f 4 -3 10 3 11
		mu 0 4 12 13 14 15
		f 4 -11 -9 -8 -5
		mu 0 4 16 17 18 19
		f 4 -6 -7 -10 -12
		mu 0 4 20 21 22 23;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "polySurfaceShape2" -p "pCube52";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  0.34593257 0.15899266 -0.34593233 
		-0.34593245 0.15899266 -0.34593239 0.34593257 -0.15899266 -0.34593233 -0.34593245 
		-0.15899266 -0.34593239 0.34593245 -0.15899266 0.34593239 -0.34593257 -0.15899266 
		0.34593233 0.34593245 0.15899266 0.34593239 -0.34593257 0.15899266 0.34593233;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "polySurfaceShape6" -p "pCube52";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.75 0.125 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 22 ".uvst[0].uvsp[0:21]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.125 0 0.125 0.25 0.45833331
		 0.25 0.45833331 0.5 0.45833331 0.75 0.45833331 0 0.20833333 0.25 0.20833333 0 0.51388884
		 0.25 0.51388884 0.5 0.51388884 0.75 0.51388884 0 0.2638889 0.25 0.2638889 0;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 25 ".pt";
	setAttr ".pt[0]" -type "float3" 0.34593257 0.15899266 -0.34593233 ;
	setAttr ".pt[1]" -type "float3" -0.3459323 0.15899266 -0.34593239 ;
	setAttr ".pt[2]" -type "float3" 0.34593257 -0.15899266 -0.34593233 ;
	setAttr ".pt[3]" -type "float3" -0.3459323 -0.15899266 -0.34593239 ;
	setAttr ".pt[4]" -type "float3" 0.34593245 -0.15899266 0.34593239 ;
	setAttr ".pt[5]" -type "float3" -0.34593257 -0.15899266 0.34593233 ;
	setAttr ".pt[6]" -type "float3" 0.34593245 0.15899266 0.34593239 ;
	setAttr ".pt[7]" -type "float3" -0.34593257 0.15899266 0.34593233 ;
	setAttr ".pt[8]" -type "float3" 0.11531062 -0.15899266 -0.34593248 ;
	setAttr ".pt[9]" -type "float3" 0.11531062 -0.15899266 0.34593236 ;
	setAttr ".pt[10]" -type "float3" 0.11531062 0.15899266 0.34593236 ;
	setAttr ".pt[11]" -type "float3" 0.11531062 0.15899266 -0.34593248 ;
	setAttr ".pt[12]" -type "float3" 0.3459323 -0.15899266 0.11531068 ;
	setAttr ".pt[13]" -type "float3" 0.3459323 0.15899266 0.11531068 ;
	setAttr ".pt[14]" -type "float3" -0.038436905 -0.15899266 -0.34593242 ;
	setAttr ".pt[15]" -type "float3" -0.038436994 -0.15899266 0.34593242 ;
	setAttr ".pt[16]" -type "float3" -0.038436934 0.15899266 0.34593242 ;
	setAttr ".pt[17]" -type "float3" -0.038436905 0.15899266 -0.34593242 ;
	setAttr ".pt[18]" -type "float3" 0.34593254 -0.15899266 -0.038436919 ;
	setAttr ".pt[19]" -type "float3" 0.34593254 0.15899266 -0.038436934 ;
	setAttr ".pt[23]" -type "float3" -1.490117e-008 0 1.4901151e-008 ;
	setAttr ".pt[24]" -type "float3" -1.4901161e-008 0 1.4901161e-008 ;
	setAttr ".pt[25]" -type "float3" -1.4901161e-008 0 1.4901161e-008 ;
	setAttr ".pt[30]" -type "float3" -1.4901161e-008 0 1.4901161e-008 ;
	setAttr ".pt[31]" -type "float3" -1.4901161e-008 0 1.4901161e-008 ;
	setAttr -s 20 ".vt[0:19]"  -0.5 -0.5 0.5 0.49999985 -0.5 0.5 -0.5 0.5 0.5
		 0.49999985 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5 -0.16666664 0.5 0.5
		 -0.16666664 0.5 -0.5 -0.16666664 -0.5 -0.5 -0.16666664 -0.5 0.5 -0.5 0.5 -0.16666669
		 -0.5 -0.5 -0.16666669 0.055555537 0.5 0.5 0.055555582 0.5 -0.5 0.055555567 -0.5 -0.5
		 0.055555537 -0.5 0.5 -0.5 0.5 0.055555545 -0.5 -0.5 0.05555553;
	setAttr -s 26 ".ed[0:25]"  0 11 0 2 8 0 4 9 0 6 10 0 0 2 0 1 3 0 2 18 0
		 4 6 0 5 7 0 6 13 0 9 15 0 10 16 0 9 10 0 11 8 0 12 4 0 13 19 0 12 13 0 14 3 0 15 5 0
		 16 7 0 15 16 0 17 1 0 17 14 0 18 12 0 19 0 0 18 19 0;
	setAttr -s 8 -ch 32 ".fc[0:7]" -type "polyFaces" 
		f 4 0 13 -2 -5
		mu 0 4 0 13 10 2
		f 4 2 12 -4 -8
		mu 0 4 4 11 12 6
		f 4 24 4 6 25
		mu 0 4 21 0 2 20
		f 4 -13 10 20 -12
		mu 0 4 12 11 17 18
		f 4 9 -17 14 7
		mu 0 4 8 15 14 9
		f 4 -21 18 8 -20
		mu 0 4 18 17 5 7
		f 4 -23 21 5 -18
		mu 0 4 16 19 1 3
		f 4 15 -26 23 16
		mu 0 4 15 21 20 14;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube53" -p "group1";
	setAttr ".t" -type "double3" 1.1930043956030145 -0.0019944185577529293 0 ;
	setAttr ".s" -type "double3" 0.77490214971434779 0.77490214971434779 0.77490214971434779 ;
	setAttr ".rp" -type "double3" 6.1629853248596191 0.86415272951126099 0 ;
	setAttr ".sp" -type "double3" 6.1629853248596191 0.86415272951126099 0 ;
createNode mesh -n "pCube53Shape" -p "pCube53";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 33 ".uvst[0].uvsp[0:32]" -type "float2" 1.110223e-016 0 1
		 2.220446e-016 1 1 0 1 0.99999988 1.1102229e-016 1 0.99999976 0.64112103 0.99999982
		 0.64112145 0.35887891 5.3477187e-008 0.35887933 1 0.64112067 1 1 2.220446e-016 1
		 1.4235739e-016 0.64112067 0 1 0.35887936 1 0.35887906 0.35887855 1 0.35887906 1 1.110223e-016
		 1.4901161e-007 0 0 2.220446e-016 1 0 1 0.99999988 2.220446e-016 0.99999988 1.4235745e-016
		 0.35887906 2.220446e-016 0 0.86483395 1 0.86483395 0.14254385 0.13516605 0.14254385
		 0.13516603 1 0.86483395 0.99999988 0.86483395 0.14254425 0.13516603 0.14254425 0.13516603
		 0.99999988;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 12 ".pt[0:11]" -type "float3"  0 0 0.003631507 0 0 -0.003631507 
		0 0 -0.003631507 0 0 0.003631507 0 0 0.003631507 0 0 0.003631507 0 0 0.003631507 
		0 0 0.003631507 0 0 -0.003631507 0 0 -0.003631507 0 0 -0.003631507 0 0 -0.003631507;
	setAttr -s 12 ".vt[0:11]"  6.10037231 1.059476376 -0.044330515 6.10037231 1.059476376 0.044330515
		 6.29569578 0.86415261 0.044330515 6.29569578 0.86415261 -0.044330515 6.10037231 0.66882908 -0.044330515
		 6.030274868 0.73892671 -0.044330515 6.15550089 0.86415261 -0.044330515 6.030274868 0.98937881 -0.044330515
		 6.030274868 0.98937881 0.044330515 6.15550089 0.86415261 0.044330515 6.030274868 0.73892671 0.044330515
		 6.10037231 0.66882908 0.044330515;
	setAttr -s 18 ".ed[0:17]"  0 1 0 1 2 0 2 3 0 3 0 0 3 4 0 4 5 0 5 6 0
		 6 7 0 7 0 0 8 1 0 7 8 0 8 9 0 9 10 0 10 11 0 11 2 0 11 4 0 10 5 0 6 9 0;
	setAttr -s 8 -ch 36 ".fc[0:7]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 0 1 2 3
		f 6 -4 4 5 6 7 8
		mu 0 6 0 4 5 6 7 8
		f 4 9 -1 -9 10
		mu 0 4 9 10 11 12
		f 6 -10 11 12 13 14 -2
		mu 0 6 13 14 15 16 17 18
		f 4 15 -5 -3 -15
		mu 0 4 19 20 21 22
		f 4 -6 -16 -14 16
		mu 0 4 23 24 17 16
		f 4 -12 -11 -8 17
		mu 0 4 25 26 27 28
		f 4 -7 -17 -13 -18
		mu 0 4 29 30 31 32;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube54" -p "group1";
	setAttr ".t" -type "double3" 7.4032601937771538 8.0081118058974887 -2.372745691485079e-031 ;
	setAttr ".r" -type "double3" 90 0 44.999960540641517 ;
	setAttr ".s" -type "double3" 0.20189858630733581 0.02719128344151623 0.20189858630733581 ;
createNode mesh -n "pCubeShape54" -p "pCube54";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.625 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" 2.220446e-016 0 1
		 2.220446e-016 1 1 0 1 0 2.220446e-016 1 0 1 0.99999988 2.220446e-016 0.99999988 2.220446e-016
		 0 1 2.220446e-016 1 1 0 1 0 2.7755576e-016 1 0 1 1 2.220446e-016 1 0 1 1 1 1 0 1.4901161e-007
		 0 0 0 0.99999988 1.1102229e-016 1 0.99999976 1.490116e-007 0.99999988;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  0.34593257 0.15899266 -0.34593233 
		-0.3459323 0.15899266 -0.34593239 0.34593257 -0.15899266 -0.34593233 -0.3459323 -0.15899266 
		-0.34593239 0.34593245 -0.15899266 0.34593239 -0.34593257 -0.15899266 0.34593233 
		0.34593245 0.15899266 0.34593239 -0.34593257 0.15899266 0.34593233;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.49999985 -0.5 0.5 -0.5 0.5 0.5
		 0.49999985 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 2 0 1 3 0 4 6 0 5 7 0 5 3 0 1 7 0 0 1 0
		 3 2 0 2 4 0 6 0 0 4 5 0 7 6 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 -4 4 -2 5
		mu 0 4 0 1 2 3
		f 4 -1 6 1 7
		mu 0 4 4 5 6 7
		f 4 0 8 2 9
		mu 0 4 8 9 10 11
		f 4 -3 10 3 11
		mu 0 4 12 13 14 15
		f 4 -11 -9 -8 -5
		mu 0 4 16 17 18 19
		f 4 -6 -7 -10 -12
		mu 0 4 20 21 22 23;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "polySurfaceShape2" -p "pCube54";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  0.34593257 0.15899266 -0.34593233 
		-0.34593245 0.15899266 -0.34593239 0.34593257 -0.15899266 -0.34593233 -0.34593245 
		-0.15899266 -0.34593239 0.34593245 -0.15899266 0.34593239 -0.34593257 -0.15899266 
		0.34593233 0.34593245 0.15899266 0.34593239 -0.34593257 0.15899266 0.34593233;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "polySurfaceShape6" -p "pCube54";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.75 0.125 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 22 ".uvst[0].uvsp[0:21]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.125 0 0.125 0.25 0.45833331
		 0.25 0.45833331 0.5 0.45833331 0.75 0.45833331 0 0.20833333 0.25 0.20833333 0 0.51388884
		 0.25 0.51388884 0.5 0.51388884 0.75 0.51388884 0 0.2638889 0.25 0.2638889 0;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 25 ".pt";
	setAttr ".pt[0]" -type "float3" 0.34593257 0.15899266 -0.34593233 ;
	setAttr ".pt[1]" -type "float3" -0.3459323 0.15899266 -0.34593239 ;
	setAttr ".pt[2]" -type "float3" 0.34593257 -0.15899266 -0.34593233 ;
	setAttr ".pt[3]" -type "float3" -0.3459323 -0.15899266 -0.34593239 ;
	setAttr ".pt[4]" -type "float3" 0.34593245 -0.15899266 0.34593239 ;
	setAttr ".pt[5]" -type "float3" -0.34593257 -0.15899266 0.34593233 ;
	setAttr ".pt[6]" -type "float3" 0.34593245 0.15899266 0.34593239 ;
	setAttr ".pt[7]" -type "float3" -0.34593257 0.15899266 0.34593233 ;
	setAttr ".pt[8]" -type "float3" 0.11531062 -0.15899266 -0.34593248 ;
	setAttr ".pt[9]" -type "float3" 0.11531062 -0.15899266 0.34593236 ;
	setAttr ".pt[10]" -type "float3" 0.11531062 0.15899266 0.34593236 ;
	setAttr ".pt[11]" -type "float3" 0.11531062 0.15899266 -0.34593248 ;
	setAttr ".pt[12]" -type "float3" 0.3459323 -0.15899266 0.11531068 ;
	setAttr ".pt[13]" -type "float3" 0.3459323 0.15899266 0.11531068 ;
	setAttr ".pt[14]" -type "float3" -0.038436905 -0.15899266 -0.34593242 ;
	setAttr ".pt[15]" -type "float3" -0.038436994 -0.15899266 0.34593242 ;
	setAttr ".pt[16]" -type "float3" -0.038436934 0.15899266 0.34593242 ;
	setAttr ".pt[17]" -type "float3" -0.038436905 0.15899266 -0.34593242 ;
	setAttr ".pt[18]" -type "float3" 0.34593254 -0.15899266 -0.038436919 ;
	setAttr ".pt[19]" -type "float3" 0.34593254 0.15899266 -0.038436934 ;
	setAttr ".pt[23]" -type "float3" -1.490117e-008 0 1.4901151e-008 ;
	setAttr ".pt[24]" -type "float3" -1.4901161e-008 0 1.4901161e-008 ;
	setAttr ".pt[25]" -type "float3" -1.4901161e-008 0 1.4901161e-008 ;
	setAttr ".pt[30]" -type "float3" -1.4901161e-008 0 1.4901161e-008 ;
	setAttr ".pt[31]" -type "float3" -1.4901161e-008 0 1.4901161e-008 ;
	setAttr -s 20 ".vt[0:19]"  -0.5 -0.5 0.5 0.49999985 -0.5 0.5 -0.5 0.5 0.5
		 0.49999985 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5 -0.16666664 0.5 0.5
		 -0.16666664 0.5 -0.5 -0.16666664 -0.5 -0.5 -0.16666664 -0.5 0.5 -0.5 0.5 -0.16666669
		 -0.5 -0.5 -0.16666669 0.055555537 0.5 0.5 0.055555582 0.5 -0.5 0.055555567 -0.5 -0.5
		 0.055555537 -0.5 0.5 -0.5 0.5 0.055555545 -0.5 -0.5 0.05555553;
	setAttr -s 26 ".ed[0:25]"  0 11 0 2 8 0 4 9 0 6 10 0 0 2 0 1 3 0 2 18 0
		 4 6 0 5 7 0 6 13 0 9 15 0 10 16 0 9 10 0 11 8 0 12 4 0 13 19 0 12 13 0 14 3 0 15 5 0
		 16 7 0 15 16 0 17 1 0 17 14 0 18 12 0 19 0 0 18 19 0;
	setAttr -s 8 -ch 32 ".fc[0:7]" -type "polyFaces" 
		f 4 0 13 -2 -5
		mu 0 4 0 13 10 2
		f 4 2 12 -4 -8
		mu 0 4 4 11 12 6
		f 4 24 4 6 25
		mu 0 4 21 0 2 20
		f 4 -13 10 20 -12
		mu 0 4 12 11 17 18
		f 4 9 -17 14 7
		mu 0 4 8 15 14 9
		f 4 -21 18 8 -20
		mu 0 4 18 17 5 7
		f 4 -23 21 5 -18
		mu 0 4 16 19 1 3
		f 4 15 -26 23 16
		mu 0 4 15 21 20 14;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface8";
	setAttr ".t" -type "double3" 0.088814830963546143 0 0 ;
	setAttr ".rp" -type "double3" 10.033152103424072 0.85127222537994385 0 ;
	setAttr ".sp" -type "double3" 10.033152103424072 0.85127222537994385 0 ;
createNode mesh -n "polySurface8Shape" -p "polySurface8";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" 0.625 0 0.7361111
		 0 0.7361111 0.25 0.625 0.25 0.51388884 0.25 0.625 0.25 0.625 0.3611111 0.51388884
		 0.3611111 0.51388884 1 0.51388884 0.8888889 0.625 0.8888889 0.625 1 0.51388884 0.25
		 0.51388884 0 0.625 0 0.625 0.25 1.1175871e-008 0 0.44444442 0 0.44444442 1 0 1 5.5879354e-009
		 1 0.44444448 1 0.44444448 0 0 2.4835272e-009;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 24 ".vt[0:23]"  10.033151627 0.75054902 0.024999999 10.033151627 0.75054902 -0.024999999
		 9.93242836 0.85127258 -0.024999999 9.93242836 0.85127258 0.024999999 9.93242836 0.85127258 0.024999999
		 10.033151627 0.95199543 0.024999999 10.033151627 0.75054902 0.024999999 10.13387585 0.85127187 0.024999999
		 9.93242836 0.85127258 -0.024999999 10.033151627 0.95199543 -0.024999999 10.13387585 0.85127187 -0.024999999
		 10.033151627 0.75054902 -0.024999999 9.93242836 0.85127258 -0.024999999 9.93242836 0.85127258 0.024999999
		 10.033151627 0.95199543 0.024999999 10.033151627 0.95199543 -0.024999999 10.13387585 0.85127187 0.024999999
		 10.13387585 0.85127187 -0.024999999 10.033151627 0.75054902 0.024999999 10.033151627 0.75054902 -0.024999999
		 10.033151627 0.95199543 0.024999999 10.033151627 0.95199543 -0.024999999 10.13387585 0.85127187 0.024999999
		 10.13387585 0.85127187 -0.024999999;
	setAttr -s 24 ".ed[0:23]"  2 3 0 1 0 0 1 2 0 3 0 0 4 6 0 5 4 0 5 7 0
		 6 7 0 9 8 0 11 8 0 10 9 0 10 11 0 12 13 0 15 12 0 14 13 0 15 14 0 18 16 0 17 19 0
		 17 16 0 19 18 0 20 22 0 21 20 0 23 21 0 23 22 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 -3 1 -4 -1
		mu 0 4 0 1 2 3
		f 4 5 4 7 -7
		mu 0 4 4 5 6 7
		f 4 -11 11 9 -9
		mu 0 4 8 9 10 11
		f 4 -16 13 12 -15
		mu 0 4 12 13 14 15
		f 4 -17 -20 -18 18
		mu 0 4 16 17 18 19
		f 4 20 -24 22 21
		mu 0 4 20 21 22 23;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface9";
	setAttr ".t" -type "double3" -0.18504111309351323 0 0 ;
	setAttr ".rp" -type "double3" 10.033152103424072 0.85127222537994385 0 ;
	setAttr ".sp" -type "double3" 10.033152103424072 0.85127222537994385 0 ;
createNode mesh -n "polySurface9Shape" -p "polySurface9";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" 0.625 0 0.7361111
		 0 0.7361111 0.25 0.625 0.25 0.51388884 0.25 0.625 0.25 0.625 0.3611111 0.51388884
		 0.3611111 0.51388884 1 0.51388884 0.8888889 0.625 0.8888889 0.625 1 0.51388884 0.25
		 0.51388884 0 0.625 0 0.625 0.25 1.1175871e-008 0 0.44444442 0 0.44444442 1 0 1 5.5879354e-009
		 1 0.44444448 1 0.44444448 0 0 2.4835272e-009;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 24 ".vt[0:23]"  10.033151627 0.75054902 0.024999999 10.033151627 0.75054902 -0.024999999
		 9.93242836 0.85127258 -0.024999999 9.93242836 0.85127258 0.024999999 9.93242836 0.85127258 0.024999999
		 10.033151627 0.95199543 0.024999999 10.033151627 0.75054902 0.024999999 10.13387585 0.85127187 0.024999999
		 9.93242836 0.85127258 -0.024999999 10.033151627 0.95199543 -0.024999999 10.13387585 0.85127187 -0.024999999
		 10.033151627 0.75054902 -0.024999999 9.93242836 0.85127258 -0.024999999 9.93242836 0.85127258 0.024999999
		 10.033151627 0.95199543 0.024999999 10.033151627 0.95199543 -0.024999999 10.13387585 0.85127187 0.024999999
		 10.13387585 0.85127187 -0.024999999 10.033151627 0.75054902 0.024999999 10.033151627 0.75054902 -0.024999999
		 10.033151627 0.95199543 0.024999999 10.033151627 0.95199543 -0.024999999 10.13387585 0.85127187 0.024999999
		 10.13387585 0.85127187 -0.024999999;
	setAttr -s 24 ".ed[0:23]"  2 3 0 1 0 0 1 2 0 3 0 0 4 6 0 5 4 0 5 7 0
		 6 7 0 9 8 0 11 8 0 10 9 0 10 11 0 12 13 0 15 12 0 14 13 0 15 14 0 18 16 0 17 19 0
		 17 16 0 19 18 0 20 22 0 21 20 0 23 21 0 23 22 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 -3 1 -4 -1
		mu 0 4 0 1 2 3
		f 4 5 4 7 -7
		mu 0 4 4 5 6 7
		f 4 -11 11 9 -9
		mu 0 4 8 9 10 11
		f 4 -16 13 12 -15
		mu 0 4 12 13 14 15
		f 4 -17 -20 -18 18
		mu 0 4 16 17 18 19
		f 4 20 -24 22 21
		mu 0 4 20 21 22 23;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube55";
	setAttr ".t" -type "double3" 8.7485840528186696 0.049999999999999892 2.7300397222970592 ;
	setAttr ".s" -type "double3" 1 0.1 1 ;
createNode mesh -n "pCubeShape55" -p "pCube55";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[20:23]" -type "float3"  0 0.061776463 0 0 0.061776463 
		0 0 0.061776463 0 0 0.061776463 0;
createNode mesh -n "polySurfaceShape3" -p "pCube55";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "polySurfaceShape14" -p "pCube55";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -1.1641532e-009 0 1.1641532e-009 
		1.1641532e-009 0 1.1641532e-009 0.073273733 0 -0.073273733 -0.073273733 0 -0.073273733 
		0.073273733 0 0.073273733 -0.073273733 0 0.073273733 -1.1641532e-009 0 -1.1641532e-009 
		1.1641532e-009 0 -1.1641532e-009;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube56";
	setAttr ".t" -type "double3" 8.7962593020933255 0.851272254068413 2.761281981343489 ;
	setAttr ".r" -type "double3" 89.999999999999957 -3.1805546814635168e-015 -135 ;
	setAttr ".s" -type "double3" 0.5 0.05 0.5 ;
createNode mesh -n "pCubeShape56" -p "pCube56";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.4375 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 52 ".uvst[0].uvsp[0:51]" -type "float2" 0.375 0 0.375 0.25
		 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.875 0 0.875 0.25 0.125 0 0.125
		 0.25 0.45833331 0.25 0.45833331 0.5 0.45833331 0.75 0.45833331 0 0.45833331 1 0.20833333
		 0.25 0.375 0.41666669 0.20833333 0 0.375 0.83333331 0.45833331 0.83333331 0.625 0.83333331
		 0.79166669 0 0.625 0.41666669 0.79166669 0.25 0.45833331 0.41666669 0.5138889 0.41666669
		 0.51388884 0.5 0.51388884 0.75 0.51388884 0.83333331 0.45833331 0.3611111 0.2638889
		 0.25 0.375 0.3611111 0.2638889 0 0.375 0.8888889 0.45833331 0.8888889 0 1 0.44444442
		 1 0.44444442 0 0 0 0 1 0.22222224 1 0.22222224 0 1.4901161e-008 0 0 1 0.22222221
		 1 0.22222221 0 0 0 0 1 0.44444448 1 0.44444448 0 0 0;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 24 ".pt[0:23]" -type "float3"  0.14277409 2.220446e-016 
		0.14277388 0.14277409 -1.6653345e-016 0.14277388 0.14277409 -1.6653345e-016 0.14277388 
		0.14277409 -1.6653345e-016 0.14277388 0.14277409 2.220446e-016 0.14277388 0.14277409 
		2.220446e-016 0.14277388 0.14277409 -1.6653345e-016 0.14277388 0.14277409 -1.6653345e-016 
		0.14277388 0.14277409 2.220446e-016 0.14277388 0.14277409 2.220446e-016 0.14277388 
		0.14277409 -1.6653345e-016 0.14277388 0.14277409 2.220446e-016 0.14277388 0.14277409 
		2.220446e-016 0.14277388 0.14277409 2.220446e-016 0.14277388 0.14277409 -1.6653345e-016 
		0.14277388 0.14277409 -1.6653345e-016 0.14277388 0.14277409 -1.6653345e-016 0.14277388 
		0.14277409 -1.6653345e-016 0.14277388 0.14277409 2.220446e-016 0.14277388 0.14277409 
		2.220446e-016 0.14277388 0.14277409 -1.6653345e-016 0.14277388 0.14277409 -1.6653345e-016 
		0.14277388 0.14277409 2.220446e-016 0.14277388 0.14277409 2.220446e-016 0.14277388;
	setAttr -s 24 ".vt[0:23]"  -0.5 -0.5 0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5
		 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5 -0.16666664 0.5 0.5 -0.16666664 0.5 -0.5
		 -0.16666664 -0.5 -0.5 -0.16666664 -0.5 0.5 -0.5 0.5 -0.16666669 -0.5 -0.5 -0.16666669
		 -0.16666664 -0.5 -0.16666669 0.5 -0.5 -0.16666669 0.5 0.5 -0.16666669 -0.16666664 0.5 -0.16666669
		 0.055555597 0.5 -0.16666669 0.055555582 0.5 -0.5 0.055555582 -0.5 -0.5 0.055555582 -0.5 -0.16666669
		 -0.16666664 0.5 0.05555553 -0.5 0.5 0.05555553 -0.5 -0.5 0.05555553 -0.16666664 -0.5 0.05555553;
	setAttr -s 44 ".ed[0:43]"  0 9 0 1 6 0 2 7 0 4 8 0 0 1 0 1 21 0 2 4 0
		 3 5 0 4 11 0 5 13 0 7 17 0 6 20 0 8 18 0 7 8 0 8 12 0 9 6 0 10 2 0 11 22 0 10 11 0
		 12 23 0 11 12 0 12 19 0 14 3 0 13 14 0 15 7 0 14 16 0 15 10 0 16 15 0 17 3 0 16 17 0
		 18 5 0 17 18 0 19 13 0 18 19 0 20 15 0 21 10 0 20 21 0 22 0 0 21 22 0 23 9 0 22 23 0
		 16 19 0 15 12 0 20 23 0;
	setAttr -s 22 -ch 88 ".fc[0:21]" -type "polyFaces" 
		f 4 0 15 -2 -5
		mu 0 4 0 14 11 1
		f 4 1 11 36 -6
		mu 0 4 1 11 30 32
		f 4 2 13 -4 -7
		mu 0 4 2 12 13 4
		f 4 40 39 -1 -38
		mu 0 4 34 35 15 6
		f 4 37 4 5 38
		mu 0 4 33 0 1 31
		f 4 -14 10 31 -13
		mu 0 4 13 12 27 28
		f 4 8 -19 16 6
		mu 0 4 9 18 16 10
		f 4 3 14 -21 -9
		mu 0 4 4 13 20 19
		f 4 -22 -15 12 33
		mu 0 4 29 20 13 28
		f 4 -24 -10 -8 -23
		mu 0 4 24 22 7 8
		f 4 -28 29 -11 -25
		mu 0 4 25 26 27 12
		f 4 -27 24 -3 -17
		mu 0 4 17 25 12 2
		f 4 -30 -26 22 -29
		mu 0 4 27 26 23 3
		f 4 -32 28 7 -31
		mu 0 4 28 27 3 5
		f 4 -33 -34 30 9
		mu 0 4 21 29 28 5
		f 4 -37 34 26 -36
		mu 0 4 32 30 25 17
		f 4 17 -39 35 18
		mu 0 4 18 33 31 16
		f 4 20 19 -41 -18
		mu 0 4 19 20 35 34
		f 4 25 41 32 23
		mu 0 4 36 37 38 39
		f 4 27 42 21 -42
		mu 0 4 40 41 42 43
		f 4 -35 43 -20 -43
		mu 0 4 44 45 46 47
		f 4 -12 -16 -40 -44
		mu 0 4 48 49 50 51;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "polySurfaceShape2" -p "pCube56";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode lightLinker -s -n "lightLinker1";
	setAttr -s 3 ".lnk";
	setAttr -s 3 ".slnk";
createNode displayLayerManager -n "layerManager";
createNode displayLayer -n "defaultLayer";
createNode renderLayerManager -n "renderLayerManager";
createNode renderLayer -n "defaultRenderLayer";
	setAttr ".g" yes;
createNode polyCube -n "polyCube1";
	setAttr ".sw" 2;
	setAttr ".cuv" 4;
createNode polyCube -n "polyCube2";
	setAttr ".sw" 2;
	setAttr ".cuv" 4;
createNode polyExtrudeFace -n "polyExtrudeFace1";
	setAttr ".ics" -type "componentList" 1 "f[2:3]";
	setAttr ".ix" -type "matrix" 0.30471705448084502 0 0 0 0 0.07964061505985405 0 0
		 0 0 0.30471705448084502 0 0 0.079284506331414289 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 0.11910482 0 ;
	setAttr ".rs" 57833;
	setAttr ".lt" -type "double3" -1.3877787807814457e-017 -5.3926038442842604e-033 
		0.018364990849280283 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.15235852724042251 0.11910481386134131 -0.15235852724042251 ;
	setAttr ".cbx" -type "double3" 0.15235852724042251 0.11910481386134131 0.15235852724042251 ;
createNode polyExtrudeFace -n "polyExtrudeFace2";
	setAttr ".ics" -type "componentList" 1 "f[2:3]";
	setAttr ".ix" -type "matrix" 0.30471705448084502 0 0 0 0 0.07964061505985405 0 0
		 0 0 0.30471705448084502 0 0 0.079284506331414289 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 0.12298595 0 ;
	setAttr ".rs" 52843;
	setAttr ".lt" -type "double3" 0 1.8488927466117464e-032 0.22429981130893673 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.20495073870368996 0.12298594912935164 -0.20495073870368996 ;
	setAttr ".cbx" -type "double3" 0.20495073870368996 0.12298594912935164 0.20495073870368996 ;
createNode polyTweak -n "polyTweak1";
	setAttr ".uopa" yes;
	setAttr -s 6 ".tk[12:17]" -type "float3"  -0.17259356 -0.18186508 0.17259356
		 -1.572094e-017 -0.18186508 0.17259356 -1.572094e-017 -0.18186508 -0.17259356 -0.17259356
		 -0.18186508 -0.17259356 0.17259356 -0.18186508 0.17259356 0.17259356 -0.18186508
		 -0.17259356;
createNode polyCube -n "polyCube3";
	setAttr ".cuv" 4;
createNode polySplitRing -n "polySplitRing1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[0:3]";
	setAttr ".ix" -type "matrix" 0.35355339059327373 0 -0.35355339059327379 0 0 0.10000000000000001 0 0
		 0.35355339059327379 0 0.35355339059327373 0 0 0.10000000000000001 0 1;
	setAttr ".dr" no;
	setAttr ".re" 2;
	setAttr ".sma" 5.732484;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing2";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 4 "e[6:7]" "e[10:11]" "e[16]" "e[19]";
	setAttr ".ix" -type "matrix" 0.35355339059327373 0 -0.35355339059327379 0 0 0.10000000000000001 0 0
		 0.35355339059327379 0 0.35355339059327373 0 0 0.10000000000000001 0 1;
	setAttr ".re" 7;
	setAttr ".sma" 5.732484;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode deleteComponent -n "deleteComponent1";
	setAttr ".dc" -type "componentList" 2 "f[4]" "f[8:9]";
createNode deleteComponent -n "deleteComponent2";
	setAttr ".dc" -type "componentList" 1 "f[6]";
createNode polyAppend -n "polyAppend1";
	setAttr -s 3 ".d[0:2]"  -2147483633 -2147483634 -2147483625;
	setAttr ".tx" 1;
createNode polyAppend -n "polyAppend2";
	setAttr -s 4 ".d[0:3]"  -2147483630 -2147483621 -2147483623 -2147483622;
	setAttr ".tx" 1;
createNode polySoftEdge -n "polySoftEdge1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[*]";
	setAttr ".ix" -type "matrix" 0.35355339059327373 0 -0.35355339059327379 0 0 0.10000000000000001 0 0
		 0.35355339059327379 0 0.35355339059327373 0 0 0.10000000000000001 0 1;
	setAttr ".a" 0;
createNode lambert -n "lambert2";
	setAttr ".c" -type "float3" 0.3245818 0.62800002 0 ;
createNode shadingEngine -n "arrowShader";
	setAttr ".ihi" 0;
	setAttr -s 61 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 33 ".gn";
createNode materialInfo -n "materialInfo1";
createNode polySplitRing -n "polySplitRing3";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[0:3]";
	setAttr ".ix" -type "matrix" 0.35355339059327373 0 -0.35355339059327379 0 0 0.050000000000000003 0 0
		 0.35355339059327379 0 0.35355339059327373 0 0 0.074999999999999997 0 1;
	setAttr ".wt" 0.3333333432674408;
	setAttr ".dr" no;
	setAttr ".re" 1;
	setAttr ".sma" 5.732484;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing4";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 4 "e[6:7]" "e[10:11]" "e[14]" "e[18]";
	setAttr ".ix" -type "matrix" 0.35355339059327373 0 -0.35355339059327379 0 0 0.050000000000000003 0 0
		 0.35355339059327379 0 0.35355339059327373 0 0 0.074999999999999997 0 1;
	setAttr ".wt" 0.66666668653488159;
	setAttr ".dr" no;
	setAttr ".re" 6;
	setAttr ".sma" 5.732484;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing5";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 5 "e[12:13]" "e[15]" "e[17]" "e[26]" "e[30]";
	setAttr ".ix" -type "matrix" 0.35355339059327373 0 -0.35355339059327379 0 0 0.050000000000000003 0 0
		 0.35355339059327379 0 0.35355339059327373 0 0 0.074999999999999997 0 1;
	setAttr ".wt" 0.3333333432674408;
	setAttr ".re" 12;
	setAttr ".sma" 5.732484;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing6";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 7 "e[6:7]" "e[14]" "e[21]" "e[23]" "e[25]" "e[34]" "e[42]";
	setAttr ".ix" -type "matrix" 0.35355339059327373 0 -0.35355339059327379 0 0 0.050000000000000003 0 0
		 0.35355339059327379 0 0.35355339059327373 0 0 0.074999999999999997 0 1;
	setAttr ".wt" 0.66666668653488159;
	setAttr ".dr" no;
	setAttr ".re" 7;
	setAttr ".sma" 5.732484;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyCBoolOp -n "polyCBoolOp1";
	setAttr -s 2 ".ip";
	setAttr -s 2 ".im";
	setAttr ".op" 2;
	setAttr ".mg" -type "Int32Array" 2 -6 -8 ;
createNode groupId -n "groupId1";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2";
	setAttr ".ihi" 0;
createNode groupId -n "groupId3";
	setAttr ".ihi" 0;
createNode groupId -n "groupId4";
	setAttr ".ihi" 0;
createNode groupId -n "groupId5";
	setAttr ".ihi" 0;
createNode polyCBoolOp -n "polyCBoolOp2";
	setAttr -s 2 ".ip";
	setAttr -s 2 ".im";
	setAttr ".op" 2;
	setAttr ".mg" -type "Int32Array" 2 -11 -13 ;
createNode groupId -n "groupId6";
	setAttr ".ihi" 0;
createNode groupId -n "groupId7";
	setAttr ".ihi" 0;
createNode groupId -n "groupId8";
	setAttr ".ihi" 0;
createNode groupId -n "groupId9";
	setAttr ".ihi" 0;
createNode groupId -n "groupId10";
	setAttr ".ihi" 0;
createNode deleteComponent -n "deleteComponent3";
	setAttr ".dc" -type "componentList" 4 "f[6]" "f[8:9]" "f[22:23]" "f[27:29]";
createNode polyAppend -n "polyAppend3";
	setAttr -s 3 ".d[0:2]"  -2147483621 -2147483612 -2147483623;
	setAttr ".tx" 1;
createNode polyAppend -n "polyAppend4";
	setAttr -s 3 ".d[0:2]"  -2147483618 -2147483625 -2147483596;
	setAttr ".tx" 1;
createNode polyAppend -n "polyAppend5";
	setAttr -s 3 ".d[0:2]"  -2147483607 -2147483627 -2147483595;
	setAttr ".tx" 1;
createNode polyAppend -n "polyAppend6";
	setAttr -s 4 ".d[0:3]"  -2147483635 -2147483631 -2147483602 -2147483594;
	setAttr ".tx" 1;
createNode polyAppend -n "polyAppend7";
	setAttr -s 3 ".d[0:2]"  -2147483608 -2147483597 -2147483598;
	setAttr ".tx" 1;
createNode polyAppend -n "polyAppend8";
	setAttr -s 4 ".d[0:3]"  -2147483617 -2147483593 -2147483600 -2147483609;
	setAttr ".tx" 1;
createNode polySoftEdge -n "polySoftEdge2";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[*]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 0.10000000000000001 0 0 0 0 1 0 0 0.050000000000000003 0 1;
	setAttr ".a" 0;
createNode polySoftEdge -n "polySoftEdge3";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[*]";
	setAttr ".ix" -type "matrix" 0.35355339059327373 0 -0.35355339059327379 0 0 0.050000000000000003 0 0
		 0.35355339059327379 0 0.35355339059327373 0 0 0.25594261964468334 0 1;
	setAttr ".a" 0;
createNode script -n "uiConfigurationScriptNode";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"top\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n"
		+ "                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n"
		+ "                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n"
		+ "                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n"
		+ "            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n"
		+ "            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"side\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n"
		+ "                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n"
		+ "                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n"
		+ "            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n"
		+ "            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n"
		+ "            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"front\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n"
		+ "                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n"
		+ "                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n"
		+ "                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n"
		+ "            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n"
		+ "            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n"
		+ "            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n"
		+ "                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n"
		+ "                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n"
		+ "                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n"
		+ "            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n"
		+ "            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n"
		+ "            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 1\n                -showReferenceMembers 1\n"
		+ "                -showAttributes 0\n                -showConnected 0\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 1\n                -showAssets 1\n                -showContainedOnly 1\n                -showPublishedAsConnected 0\n                -showContainerContents 1\n                -ignoreDagHierarchy 0\n                -expandConnections 0\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"defaultSetFilter\" \n                -showSetMembers 1\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n"
		+ "                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 0\n                -ignoreHiddenAttribute 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n"
		+ "            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n"
		+ "            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"graphEditor\" -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n"
		+ "                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n"
		+ "                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n"
		+ "                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n"
		+ "                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n"
		+ "                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n"
		+ "                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dopeSheetPanel\" -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n"
		+ "                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n"
		+ "                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n"
		+ "                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n"
		+ "                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n"
		+ "                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"clipEditorPanel\" -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n"
		+ "                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"sequenceEditorPanel\" -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperGraphPanel\" -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n"
		+ "                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n"
		+ "                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n"
		+ "                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperShadePanel\" -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\tif ($useSceneConfig) {\n\t\tscriptedPanel -e -to $panelName;\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"visorPanel\" -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -ignoreAssets 1\n                -additiveGraphingMode 0\n"
		+ "                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -keyReleaseCommand \"nodeEdKeyReleaseCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                $editorName;;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n"
		+ "                -ignoreAssets 1\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -keyReleaseCommand \"nodeEdKeyReleaseCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                $editorName;;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"createNodePanel\" -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Texture Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"polyTexturePlacementPanel\" -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"renderWindowPanel\" -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"Blend Shape\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tblendShapePanel -unParent -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels ;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynRelEdPanel\" -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"relationshipPanel\" -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"referenceEditorPanel\" -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"componentEditorPanel\" -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynPaintScriptedPanelType\" -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"scriptEditorPanel\" -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"Stereo\" -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels `;\nstring $editorName = ($panelName+\"Editor\");\n"
		+ "            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n"
		+ "                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n"
		+ "                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n"
		+ "            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\nstring $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n"
		+ "                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n"
		+ "                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n"
		+ "                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-defaultImage \"\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"vertical2\\\" -ps 1 18 100 -ps 2 82 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Outliner\")) \n\t\t\t\t\t\"outlinerPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\\\"Outliner\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\noutlinerEditor -e \\n    -showShapes 1\\n    -showReferenceNodes 1\\n    -showReferenceMembers 1\\n    -showAttributes 0\\n    -showConnected 0\\n    -showAnimCurvesOnly 0\\n    -showMuteInfo 0\\n    -organizeByLayer 1\\n    -showAnimLayerWeight 1\\n    -autoExpandLayers 1\\n    -autoExpand 0\\n    -showDagOnly 1\\n    -showAssets 1\\n    -showContainedOnly 1\\n    -showPublishedAsConnected 0\\n    -showContainerContents 1\\n    -ignoreDagHierarchy 0\\n    -expandConnections 0\\n    -showUpstreamCurves 1\\n    -showUnitlessCurves 1\\n    -showCompounds 1\\n    -showLeafs 1\\n    -showNumericAttrsOnly 0\\n    -highlightActive 1\\n    -autoSelectNewObjects 0\\n    -doNotSelectNewObjects 0\\n    -dropIsParent 1\\n    -transmitFilters 0\\n    -setFilter \\\"defaultSetFilter\\\" \\n    -showSetMembers 1\\n    -allowMultiSelection 1\\n    -alwaysToggleSelect 0\\n    -directSelect 0\\n    -displayMode \\\"DAG\\\" \\n    -expandObjects 0\\n    -setsIgnoreFilters 1\\n    -containersIgnoreFilters 0\\n    -editAttrName 0\\n    -showAttrValues 0\\n    -highlightSecondary 0\\n    -showUVAttrsOnly 0\\n    -showTextureNodesOnly 0\\n    -attrAlphaOrder \\\"default\\\" \\n    -animLayerFilterOptions \\\"allAffecting\\\" \\n    -sortOrder \\\"none\\\" \\n    -longNames 0\\n    -niceNames 1\\n    -showNamespace 1\\n    -showPinIcons 0\\n    -mapMotionTrails 0\\n    -ignoreHiddenAttribute 0\\n    $editorName\"\n"
		+ "\t\t\t\t\t\"outlinerPanel -edit -l (localizedPanelLabel(\\\"Outliner\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\noutlinerEditor -e \\n    -showShapes 1\\n    -showReferenceNodes 1\\n    -showReferenceMembers 1\\n    -showAttributes 0\\n    -showConnected 0\\n    -showAnimCurvesOnly 0\\n    -showMuteInfo 0\\n    -organizeByLayer 1\\n    -showAnimLayerWeight 1\\n    -autoExpandLayers 1\\n    -autoExpand 0\\n    -showDagOnly 1\\n    -showAssets 1\\n    -showContainedOnly 1\\n    -showPublishedAsConnected 0\\n    -showContainerContents 1\\n    -ignoreDagHierarchy 0\\n    -expandConnections 0\\n    -showUpstreamCurves 1\\n    -showUnitlessCurves 1\\n    -showCompounds 1\\n    -showLeafs 1\\n    -showNumericAttrsOnly 0\\n    -highlightActive 1\\n    -autoSelectNewObjects 0\\n    -doNotSelectNewObjects 0\\n    -dropIsParent 1\\n    -transmitFilters 0\\n    -setFilter \\\"defaultSetFilter\\\" \\n    -showSetMembers 1\\n    -allowMultiSelection 1\\n    -alwaysToggleSelect 0\\n    -directSelect 0\\n    -displayMode \\\"DAG\\\" \\n    -expandObjects 0\\n    -setsIgnoreFilters 1\\n    -containersIgnoreFilters 0\\n    -editAttrName 0\\n    -showAttrValues 0\\n    -highlightSecondary 0\\n    -showUVAttrsOnly 0\\n    -showTextureNodesOnly 0\\n    -attrAlphaOrder \\\"default\\\" \\n    -animLayerFilterOptions \\\"allAffecting\\\" \\n    -sortOrder \\\"none\\\" \\n    -longNames 0\\n    -niceNames 1\\n    -showNamespace 1\\n    -showPinIcons 0\\n    -mapMotionTrails 0\\n    -ignoreHiddenAttribute 0\\n    $editorName\"\n"
		+ "\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode polyExtrudeFace -n "polyExtrudeFace3";
	setAttr ".ics" -type "componentList" 1 "f[1]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 0.10000000000000001 0 0 0 0 1 0 3.8142968403789075 0.050000000000000003 0 1;
	setAttr ".ws" yes;
	setAttr ".ro" -type "double3" 0 45 0 ;
	setAttr ".s" -type "double3" 0.75 1 0.75 ;
	setAttr ".pvt" -type "float3" 3.8142967 0.1 0 ;
	setAttr ".rs" 64877;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 3.3875705587359937 0.1 -0.42672628164291382 ;
	setAttr ".cbx" -type "double3" 4.2410231220218213 0.1 0.42672628164291382 ;
createNode polyExtrudeFace -n "polyExtrudeFace4";
	setAttr ".ics" -type "componentList" 1 "f[1]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 0.10000000000000001 0 0 0 0 1 0 2.4465305280709462 0.050000000000000003 1.4430601021540084 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 2.4465306 0.1 1.4430602 ;
	setAttr ".rs" 54084;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 2.0198042464280324 0.1 1.0163338205110946 ;
	setAttr ".cbx" -type "double3" 2.87325680971386 0.1 1.8697863837969222 ;
createNode polyExtrudeFace -n "polyExtrudeFace5";
	setAttr ".ics" -type "componentList" 1 "f[1]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 0.10000000000000001 0 0 0 0 1 0 2.4465305280709462 0.050000000000000003 1.4430601021540084 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 2.4465306 0.1 1.4430602 ;
	setAttr ".rs" 38869;
	setAttr ".lt" -type "double3" 0 5.0484306972471435e-017 0.22736110606928009 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 2.2846606445336537 0.1 1.2811902186167159 ;
	setAttr ".cbx" -type "double3" 2.6084004116082387 0.1 1.6049299856913009 ;
createNode polyTweak -n "polyTweak2";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[8:11]" -type "float3"  0.26485646 0 -0.4297967 -0.4297967
		 0 -0.26485646 -0.26485646 0 0.4297967 0.4297967 0 0.26485646;
createNode polyExtrudeFace -n "polyExtrudeFace6";
	setAttr ".ics" -type "componentList" 1 "f[1]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 0.10000000000000001 0 0 0 0 1 0 2.4465305280709462 0.050000000000000003 1.4430601021540084 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 2.4465306 0.14328362 1.4430602 ;
	setAttr ".rs" 41208;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 2.2003712427640156 0.14328361749649049 1.1969006529343047 ;
	setAttr ".cbx" -type "double3" 2.6926898133778767 0.14328361749649049 1.689219551373712 ;
createNode polyTweak -n "polyTweak3";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[12:15]" -type "float3"  -0.084289521 -1.84077489 -0.0015988068
		 -0.0015988068 -1.84077489 0.084289566 0.084289521 -1.84077489 0.0015988068 0.0015988068
		 -1.84077489 -0.084289566;
createNode polyAppend -n "polyAppend9";
	setAttr -s 2 ".d[0:1]"  -2147483640 -2147483643;
	setAttr ".tx" 1;
createNode deleteComponent -n "deleteComponent4";
	setAttr ".dc" -type "componentList" 2 "f[0]" "f[6]";
createNode polyAppend -n "polyAppend10";
	setAttr -s 2 ".d[0:1]"  -2147483646 -2147483645;
	setAttr ".tx" 1;
createNode deleteComponent -n "deleteComponent5";
	setAttr ".dc" -type "componentList" 3 "f[1]" "f[3]" "f[5]";
createNode polyAppend -n "polyAppend11";
	setAttr -s 2 ".d[0:1]"  -2147483646 -2147483644;
	setAttr ".tx" 1;
createNode deleteComponent -n "deleteComponent6";
	setAttr ".dc" -type "componentList" 1 "f[0:2]";
createNode polyAppend -n "polyAppend12";
	setAttr -s 2 ".d[0:1]"  -2147483646 -2147483645;
	setAttr ".tx" 1;
createNode polyAppend -n "polyAppend13";
	setAttr -s 4 ".d[0:3]"  -2147483638 -2147483640 -2147483641 -2147483644;
	setAttr ".tx" 1;
createNode polyAppend -n "polyAppend14";
	setAttr -s 4 ".d[0:3]"  -2147483643 -2147483642 -2147483639 -2147483637;
	setAttr ".tx" 1;
createNode polyCBoolOp -n "polyCBoolOp3";
	setAttr -s 2 ".ip";
	setAttr -s 2 ".im";
	setAttr ".op" 2;
	setAttr ".mg" -type "Int32Array" 2 26 -28 ;
createNode groupId -n "groupId11";
	setAttr ".ihi" 0;
createNode groupId -n "groupId12";
	setAttr ".ihi" 0;
createNode groupId -n "groupId13";
	setAttr ".ihi" 0;
createNode groupId -n "groupId14";
	setAttr ".ihi" 0;
createNode groupId -n "groupId15";
	setAttr ".ihi" 0;
createNode polyCBoolOp -n "polyCBoolOp4";
	setAttr -s 2 ".ip";
	setAttr -s 2 ".im";
	setAttr ".op" 2;
	setAttr ".mg" -type "Int32Array" 2 31 -33 ;
createNode groupId -n "groupId16";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts1";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId17";
	setAttr ".ihi" 0;
createNode groupId -n "groupId18";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts2";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:7]";
createNode groupId -n "groupId19";
	setAttr ".ihi" 0;
createNode groupId -n "groupId20";
	setAttr ".ihi" 0;
createNode polySplit -n "polySplit1";
	setAttr -s 2 ".e[0:1]"  1 0;
	setAttr -s 2 ".d[0:1]"  -2147483623 -2147483624;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit2";
	setAttr -s 2 ".e[0:1]"  1 0;
	setAttr -s 2 ".d[0:1]"  -2147483639 -2147483641;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit3";
	setAttr -s 2 ".e[0:1]"  0 1;
	setAttr -s 2 ".d[0:1]"  -2147483642 -2147483638;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit4";
	setAttr -s 2 ".e[0:1]"  1 1;
	setAttr -s 2 ".d[0:1]"  -2147483625 -2147483628;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit5";
	setAttr -s 2 ".e[0:1]"  0 0;
	setAttr -s 2 ".d[0:1]"  -2147483611 -2147483629;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit6";
	setAttr -s 2 ".e[0:1]"  0 1;
	setAttr -s 2 ".d[0:1]"  -2147483645 -2147483634;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit7";
	setAttr -s 2 ".e[0:1]"  0 0;
	setAttr -s 2 ".d[0:1]"  -2147483609 -2147483635;
	setAttr ".m2015" yes;
createNode polyDelEdge -n "polyDelEdge1";
	setAttr ".ics" -type "componentList" 1 "e[4]";
	setAttr ".cv" yes;
createNode polyCBoolOp -n "polyCBoolOp5";
	setAttr -s 2 ".ip";
	setAttr -s 2 ".im";
	setAttr ".op" 2;
	setAttr ".mg" -type "Int32Array" 2 41 -43 ;
createNode groupId -n "groupId21";
	setAttr ".ihi" 0;
createNode groupId -n "groupId22";
	setAttr ".ihi" 0;
createNode groupId -n "groupId23";
	setAttr ".ihi" 0;
createNode groupId -n "groupId24";
	setAttr ".ihi" 0;
createNode groupId -n "groupId25";
	setAttr ".ihi" 0;
createNode polyCBoolOp -n "polyCBoolOp6";
	setAttr -s 2 ".ip";
	setAttr -s 2 ".im";
	setAttr ".op" 2;
	setAttr ".mg" -type "Int32Array" 2 46 -48 ;
createNode groupId -n "groupId26";
	setAttr ".ihi" 0;
createNode groupId -n "groupId27";
	setAttr ".ihi" 0;
createNode groupId -n "groupId28";
	setAttr ".ihi" 0;
createNode groupId -n "groupId29";
	setAttr ".ihi" 0;
createNode groupId -n "groupId30";
	setAttr ".ihi" 0;
createNode groupId -n "groupId31";
	setAttr ".ihi" 0;
createNode groupId -n "groupId32";
	setAttr ".ihi" 0;
createNode polySplitVert -n "polySplitVert1";
	setAttr ".ics" -type "componentList" 5 "vtx[1]" "vtx[3]" "vtx[18]" "vtx[23:25]" "vtx[30:31]";
createNode polyTweak -n "polyTweak4";
	setAttr ".uopa" yes;
	setAttr -s 9 ".tk";
	setAttr ".tk[1]" -type "float3" -0.18630825 3.7252903e-008 -0.18630803 ;
	setAttr ".tk[3]" -type "float3" -0.18630825 -3.7252903e-008 -0.18630803 ;
	setAttr ".tk[18]" -type "float3" -0.026752263 -3.7252903e-008 -0.18630803 ;
	setAttr ".tk[23]" -type "float3" -0.026752263 3.7252903e-008 -0.18630803 ;
	setAttr ".tk[24]" -type "float3" -0.18630825 -3.7252903e-008 -0.026752129 ;
	setAttr ".tk[25]" -type "float3" -0.026752263 -3.7252903e-008 -0.026752129 ;
	setAttr ".tk[30]" -type "float3" -0.026752263 3.7252903e-008 -0.026752129 ;
	setAttr ".tk[31]" -type "float3" -0.18630825 3.7252903e-008 -0.026752129 ;
createNode polyChipOff -n "polyChipOff1";
	setAttr ".ics" -type "componentList" 4 "f[4]" "f[13]" "f[17:18]" "f[26:27]";
	setAttr ".ix" -type "matrix" -0.35355339059327373 -0.35355339059327384 2.7755575615628914e-017 0
		 1.3877787807814457e-017 -1.1102230246251566e-017 0.050000000000000017 0 -0.35355339059327384 0.35355339059327373 1.1102230246251565e-016 0
		 10.154242919434608 0.85127225406841267 -1.2325951644078309e-032 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 10.154243 0.85127223 -1.2325952e-032 ;
	setAttr ".rs" 42160;
	setAttr ".dup" no;
createNode polySeparate -n "polySeparate1";
	setAttr ".ic" 7;
	setAttr -s 7 ".out";
createNode groupId -n "groupId33";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts3";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:27]";
createNode groupId -n "groupId34";
	setAttr ".ihi" 0;
createNode groupId -n "groupId35";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts4";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 22 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]" "f[6]" "f[7]" "f[8]" "f[9]" "f[10]" "f[11]" "f[12]" "f[13]" "f[14]" "f[15]" "f[16]" "f[17]" "f[18]" "f[19]" "f[20]" "f[21]";
createNode groupId -n "groupId36";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts5";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0]";
createNode groupId -n "groupId37";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts6";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0]";
createNode groupId -n "groupId38";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts7";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0]";
createNode groupId -n "groupId39";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts8";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0]";
createNode groupId -n "groupId40";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts9";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0]";
createNode groupId -n "groupId41";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts10";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0]";
createNode groupId -n "groupId43";
	setAttr ".ihi" 0;
createNode groupId -n "groupId44";
	setAttr ".ihi" 0;
createNode polyExtrudeFace -n "polyExtrudeFace7";
	setAttr ".ics" -type "componentList" 1 "f[1]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 0.10000000000000001 0 0 0 0 1 0 0.0051767313741790666 0.050000000000000003 1.5017591141558935 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.0051766122 0.050455384 1.5017593 ;
	setAttr ".rs" 56180;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.32024546620615846 0.050455382466316229 1.1763371251918127 ;
	setAttr ".cbx" -type "double3" 0.33059869053593749 0.050455382466316229 1.8271813415385534 ;
createNode polyTweak -n "polyTweak5";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[8:11]" -type "float3"  0.12718949 -0.49544618 -0.12718946
		 -0.12718949 -0.49544618 -0.12718946 -0.12718949 -0.49544618 0.12718946 0.12718949
		 -0.49544618 0.12718946;
createNode polyExtrudeFace -n "polyExtrudeFace8";
	setAttr ".ics" -type "componentList" 1 "f[1]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 0.10000000000000001 0 0 0 0 1 0 2.4359721695110244 0.049999999999999892 2.7300397222970592 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 2.4359722 0.1 2.7300398 ;
	setAttr ".rs" 38799;
	setAttr ".lr" -type "double3" 0 0 45 ;
	setAttr ".ls" -type "double3" 0.5 0.5 1 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 2.0092458878681105 0.099999999999999895 2.3033134406541453 ;
	setAttr ".cbx" -type "double3" 2.8626984511539382 0.099999999999999895 3.156766003939973 ;
createNode polyExtrudeFace -n "polyExtrudeFace9";
	setAttr ".ics" -type "componentList" 1 "f[1]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 0.10000000000000001 0 0 0 0 1 0 2.4359721695110244 0.049999999999999892 2.7300397222970592 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 2.4359722 0.1 2.7300401 ;
	setAttr ".rs" 33891;
	setAttr ".lt" -type "double3" 0 -1.073741742393268e-017 -0.05 ;
	setAttr ".ls" -type "double3" 0.5 0.5 1 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 2.1342310165092391 0.099999999999999895 2.428298807713853 ;
	setAttr ".cbx" -type "double3" 2.7377133225128096 0.099999999999999895 3.0317811137174235 ;
createNode polySoftEdge -n "polySoftEdge4";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[*]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 0.10000000000000001 0 0 0 0 1 0 2.4359721695110244 0.049999999999999892 2.7300397222970592 1;
	setAttr ".a" 0;
createNode polySplitRing -n "polySplitRing7";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[4:5]" "e[8:9]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 0.10000000000000001 0 0 0 0 1 0 2.4359721695110244 0.049999999999999892 2.7300397222970592 1;
	setAttr ".wt" 0.83333331346511841;
	setAttr ".dr" no;
	setAttr ".re" 5;
	setAttr ".sma" 5.732484;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing8";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[20:21]" "e[23]" "e[25]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 0.10000000000000001 0 0 0 0 1 0 2.4359721695110244 0.049999999999999892 2.7300397222970592 1;
	setAttr ".wt" 0.1666666716337204;
	setAttr ".dr" no;
	setAttr ".re" 25;
	setAttr ".sma" 5.732484;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak6";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk";
	setAttr ".tk[8]" -type "float3" 1.4901161e-008 0 2.2351742e-008 ;
	setAttr ".tk[9]" -type "float3" 2.2351742e-008 0 -1.4901161e-008 ;
	setAttr ".tk[10]" -type "float3" -1.4901161e-008 0 -2.2351742e-008 ;
	setAttr ".tk[11]" -type "float3" -2.2351742e-008 0 1.4901161e-008 ;
	setAttr ".tk[16]" -type "float3" 0 0.13084958 0 ;
	setAttr ".tk[17]" -type "float3" 0 0.13084958 0 ;
	setAttr ".tk[18]" -type "float3" 0 0.13084958 0 ;
	setAttr ".tk[19]" -type "float3" 0 0.13084958 0 ;
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :renderPartition;
	setAttr -s 3 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 3 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
select -ne :lightList1;
select -ne :lambert1;
	setAttr ".c" -type "float3" 0.76099998 0.76099998 0.76099998 ;
select -ne :initialShadingGroup;
	setAttr -s 26 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 4 ".gn";
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :defaultLightSet;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
select -ne :defaultHardwareRenderGlobals;
	setAttr ".res" -type "string" "ntsc_4d 646 485 1.333";
select -ne :ikSystem;
	setAttr -s 4 ".sol";
connectAttr "polyCube1.out" "pCubeShape1.i";
connectAttr "polyExtrudeFace2.out" "pCubeShape2.i";
connectAttr "polyCube3.out" "pCubeShape3.i";
connectAttr "polySoftEdge1.out" "pCubeShape4.i";
connectAttr "groupId8.id" "pCubeShape6.iog.og[1].gid";
connectAttr ":initialShadingGroup.mwc" "pCubeShape6.iog.og[1].gco";
connectAttr "groupId9.id" "pCubeShape6.ciog.cog[1].cgid";
connectAttr "polySoftEdge2.out" "pCubeShape10.i";
connectAttr "groupParts4.og" "polySurfaceShape7.i";
connectAttr "groupId35.id" "polySurfaceShape7.iog.og[0].gid";
connectAttr "arrowShader.mwc" "polySurfaceShape7.iog.og[0].gco";
connectAttr "groupParts5.og" "polySurfaceShape8.i";
connectAttr "groupId36.id" "polySurfaceShape8.iog.og[0].gid";
connectAttr "arrowShader.mwc" "polySurfaceShape8.iog.og[0].gco";
connectAttr "groupParts6.og" "polySurfaceShape9.i";
connectAttr "groupId37.id" "polySurfaceShape9.iog.og[0].gid";
connectAttr "arrowShader.mwc" "polySurfaceShape9.iog.og[0].gco";
connectAttr "groupParts7.og" "polySurfaceShape10.i";
connectAttr "groupId38.id" "polySurfaceShape10.iog.og[0].gid";
connectAttr "arrowShader.mwc" "polySurfaceShape10.iog.og[0].gco";
connectAttr "groupParts8.og" "polySurfaceShape11.i";
connectAttr "groupId39.id" "polySurfaceShape11.iog.og[0].gid";
connectAttr "arrowShader.mwc" "polySurfaceShape11.iog.og[0].gco";
connectAttr "groupParts9.og" "polySurfaceShape12.i";
connectAttr "groupId40.id" "polySurfaceShape12.iog.og[0].gid";
connectAttr "arrowShader.mwc" "polySurfaceShape12.iog.og[0].gco";
connectAttr "groupParts10.og" "polySurfaceShape13.i";
connectAttr "groupId41.id" "polySurfaceShape13.iog.og[0].gid";
connectAttr "arrowShader.mwc" "polySurfaceShape13.iog.og[0].gco";
connectAttr "groupParts3.og" "pCubeShape11.i";
connectAttr "groupId33.id" "pCubeShape11.iog.og[1].gid";
connectAttr "arrowShader.mwc" "pCubeShape11.iog.og[1].gco";
connectAttr "groupId34.id" "pCubeShape11.ciog.cog[1].cgid";
connectAttr "groupId6.id" "pCubeShape12.iog.og[1].gid";
connectAttr "arrowShader.mwc" "pCubeShape12.iog.og[1].gco";
connectAttr "groupId7.id" "pCubeShape12.ciog.cog[1].cgid";
connectAttr "groupId3.id" "pCubeShape14.iog.og[1].gid";
connectAttr ":initialShadingGroup.mwc" "pCubeShape14.iog.og[1].gco";
connectAttr "groupId4.id" "pCubeShape14.ciog.cog[1].cgid";
connectAttr "groupId1.id" "pCubeShape15.iog.og[1].gid";
connectAttr "arrowShader.mwc" "pCubeShape15.iog.og[1].gco";
connectAttr "groupId2.id" "pCubeShape15.ciog.cog[1].cgid";
connectAttr "polyCBoolOp1.out" "pCube16Shape.i";
connectAttr "groupId1.id" "pCube16Shape.iog.og[0].gid";
connectAttr "groupId3.id" "pCube16Shape.iog.og[1].gid";
connectAttr "groupId5.id" "pCube16Shape.ciog.cog[0].cgid";
connectAttr "polyCBoolOp2.out" "pCube20Shape.i";
connectAttr "groupId6.id" "pCube20Shape.iog.og[0].gid";
connectAttr "groupId8.id" "pCube20Shape.iog.og[1].gid";
connectAttr "groupId10.id" "pCube20Shape.ciog.cog[0].cgid";
connectAttr "polyExtrudeFace7.out" "pCubeShape27.i";
connectAttr "polyExtrudeFace6.out" "pCubeShape29.i";
connectAttr "groupId16.id" "pCubeShape31.iog.og[1].gid";
connectAttr "arrowShader.mwc" "pCubeShape31.iog.og[1].gco";
connectAttr "groupParts1.og" "pCubeShape31.i";
connectAttr "groupId17.id" "pCubeShape31.ciog.cog[1].cgid";
connectAttr "groupId11.id" "pCubeShape34.iog.og[1].gid";
connectAttr "arrowShader.mwc" "pCubeShape34.iog.og[1].gco";
connectAttr "groupId12.id" "pCubeShape34.ciog.cog[1].cgid";
connectAttr "groupId13.id" "pCubeShape35.iog.og[1].gid";
connectAttr "arrowShader.mwc" "pCubeShape35.iog.og[1].gco";
connectAttr "groupId14.id" "pCubeShape35.ciog.cog[1].cgid";
connectAttr "groupParts2.og" "pCube36Shape.i";
connectAttr "groupId18.id" "pCube36Shape.iog.og[0].gid";
connectAttr "arrowShader.mwc" "pCube36Shape.iog.og[0].gco";
connectAttr "groupId15.id" "pCube36Shape.ciog.cog[0].cgid";
connectAttr "groupId19.id" "pCube36Shape.ciog.cog[1].cgid";
connectAttr "polyDelEdge1.out" "pCube37Shape.i";
connectAttr "groupId20.id" "pCube37Shape.ciog.cog[0].cgid";
connectAttr "groupId21.id" "pCubeShape43.iog.og[1].gid";
connectAttr "arrowShader.mwc" "pCubeShape43.iog.og[1].gco";
connectAttr "groupId22.id" "pCubeShape43.ciog.cog[1].cgid";
connectAttr "groupId23.id" "pCubeShape44.iog.og[1].gid";
connectAttr "arrowShader.mwc" "pCubeShape44.iog.og[1].gco";
connectAttr "groupId24.id" "pCubeShape44.ciog.cog[1].cgid";
connectAttr "groupId28.id" "pCubeShape45.iog.og[1].gid";
connectAttr "arrowShader.mwc" "pCubeShape45.iog.og[1].gco";
connectAttr "groupId29.id" "pCubeShape45.ciog.cog[1].cgid";
connectAttr "groupId26.id" "pCubeShape46.iog.og[1].gid";
connectAttr "arrowShader.mwc" "pCubeShape46.iog.og[1].gco";
connectAttr "groupId27.id" "pCubeShape46.ciog.cog[1].cgid";
connectAttr "polyCBoolOp5.out" "pCube47Shape.i";
connectAttr "groupId25.id" "pCube47Shape.ciog.cog[0].cgid";
connectAttr "polyCBoolOp6.out" "pCube49Shape.i";
connectAttr "groupId30.id" "pCube49Shape.ciog.cog[0].cgid";
connectAttr "groupId31.id" "pCube51Shape.ciog.cog[1].cgid";
connectAttr "groupId32.id" "pCube53Shape.ciog.cog[1].cgid";
connectAttr "groupId43.id" "polySurface8Shape.iog.og[0].gid";
connectAttr "arrowShader.mwc" "polySurface8Shape.iog.og[0].gco";
connectAttr "groupId44.id" "polySurface9Shape.iog.og[0].gid";
connectAttr "arrowShader.mwc" "polySurface9Shape.iog.og[0].gco";
connectAttr "polySplitRing8.out" "pCubeShape55.i";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "arrowShader.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "arrowShader.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "polyCube2.out" "polyExtrudeFace1.ip";
connectAttr "pCubeShape2.wm" "polyExtrudeFace1.mp";
connectAttr "polyTweak1.out" "polyExtrudeFace2.ip";
connectAttr "pCubeShape2.wm" "polyExtrudeFace2.mp";
connectAttr "polyExtrudeFace1.out" "polyTweak1.ip";
connectAttr "|pCube4|polySurfaceShape1.o" "polySplitRing1.ip";
connectAttr "pCubeShape4.wm" "polySplitRing1.mp";
connectAttr "polySplitRing1.out" "polySplitRing2.ip";
connectAttr "pCubeShape4.wm" "polySplitRing2.mp";
connectAttr "polySplitRing2.out" "deleteComponent1.ig";
connectAttr "deleteComponent1.og" "deleteComponent2.ig";
connectAttr "deleteComponent2.og" "polyAppend1.ip";
connectAttr "polyAppend1.out" "polyAppend2.ip";
connectAttr "polyAppend2.out" "polySoftEdge1.ip";
connectAttr "pCubeShape4.wm" "polySoftEdge1.mp";
connectAttr "lambert2.oc" "arrowShader.ss";
connectAttr "pCubeShape4.iog" "arrowShader.dsm" -na;
connectAttr "pCubeShape8.iog" "arrowShader.dsm" -na;
connectAttr "pCubeShape9.iog" "arrowShader.dsm" -na;
connectAttr "pCubeShape15.iog.og[1]" "arrowShader.dsm" -na;
connectAttr "pCubeShape15.ciog.cog[1]" "arrowShader.dsm" -na;
connectAttr "pCube16Shape.iog.og[0]" "arrowShader.dsm" -na;
connectAttr "pCube16Shape.ciog.cog[0]" "arrowShader.dsm" -na;
connectAttr "pCubeShape19.iog" "arrowShader.dsm" -na;
connectAttr "pCubeShape12.iog.og[1]" "arrowShader.dsm" -na;
connectAttr "pCubeShape12.ciog.cog[1]" "arrowShader.dsm" -na;
connectAttr "pCube20Shape.iog.og[0]" "arrowShader.dsm" -na;
connectAttr "pCube20Shape.ciog.cog[0]" "arrowShader.dsm" -na;
connectAttr "pCubeShape22.iog" "arrowShader.dsm" -na;
connectAttr "pCubeShape24.iog" "arrowShader.dsm" -na;
connectAttr "pCubeShape26.iog" "arrowShader.dsm" -na;
connectAttr "pCubeShape33.iog" "arrowShader.dsm" -na;
connectAttr "pCubeShape34.iog.og[1]" "arrowShader.dsm" -na;
connectAttr "pCubeShape34.ciog.cog[1]" "arrowShader.dsm" -na;
connectAttr "pCubeShape35.iog.og[1]" "arrowShader.dsm" -na;
connectAttr "pCubeShape35.ciog.cog[1]" "arrowShader.dsm" -na;
connectAttr "pCube36Shape.ciog.cog[0]" "arrowShader.dsm" -na;
connectAttr "pCubeShape31.iog.og[1]" "arrowShader.dsm" -na;
connectAttr "pCubeShape31.ciog.cog[1]" "arrowShader.dsm" -na;
connectAttr "pCube36Shape.iog.og[0]" "arrowShader.dsm" -na;
connectAttr "pCube36Shape.ciog.cog[1]" "arrowShader.dsm" -na;
connectAttr "pCube37Shape.iog" "arrowShader.dsm" -na;
connectAttr "pCube37Shape.ciog.cog[0]" "arrowShader.dsm" -na;
connectAttr "pCubeShape39.iog" "arrowShader.dsm" -na;
connectAttr "pCubeShape40.iog" "arrowShader.dsm" -na;
connectAttr "pCubeShape41.iog" "arrowShader.dsm" -na;
connectAttr "pCubeShape43.iog.og[1]" "arrowShader.dsm" -na;
connectAttr "pCubeShape43.ciog.cog[1]" "arrowShader.dsm" -na;
connectAttr "pCubeShape44.iog.og[1]" "arrowShader.dsm" -na;
connectAttr "pCubeShape44.ciog.cog[1]" "arrowShader.dsm" -na;
connectAttr "pCube47Shape.iog" "arrowShader.dsm" -na;
connectAttr "pCube47Shape.ciog.cog[0]" "arrowShader.dsm" -na;
connectAttr "pCubeShape48.iog" "arrowShader.dsm" -na;
connectAttr "pCubeShape46.iog.og[1]" "arrowShader.dsm" -na;
connectAttr "pCubeShape46.ciog.cog[1]" "arrowShader.dsm" -na;
connectAttr "pCubeShape45.iog.og[1]" "arrowShader.dsm" -na;
connectAttr "pCubeShape45.ciog.cog[1]" "arrowShader.dsm" -na;
connectAttr "pCube49Shape.iog" "arrowShader.dsm" -na;
connectAttr "pCube49Shape.ciog.cog[0]" "arrowShader.dsm" -na;
connectAttr "pCube51Shape.iog" "arrowShader.dsm" -na;
connectAttr "pCube51Shape.ciog.cog[1]" "arrowShader.dsm" -na;
connectAttr "pCubeShape52.iog" "arrowShader.dsm" -na;
connectAttr "pCube53Shape.iog" "arrowShader.dsm" -na;
connectAttr "pCube53Shape.ciog.cog[1]" "arrowShader.dsm" -na;
connectAttr "pCubeShape54.iog" "arrowShader.dsm" -na;
connectAttr "pCubeShape11.iog.og[1]" "arrowShader.dsm" -na;
connectAttr "pCubeShape11.ciog.cog[1]" "arrowShader.dsm" -na;
connectAttr "polySurfaceShape7.iog.og[0]" "arrowShader.dsm" -na;
connectAttr "polySurfaceShape8.iog.og[0]" "arrowShader.dsm" -na;
connectAttr "polySurfaceShape9.iog.og[0]" "arrowShader.dsm" -na;
connectAttr "polySurfaceShape10.iog.og[0]" "arrowShader.dsm" -na;
connectAttr "polySurfaceShape11.iog.og[0]" "arrowShader.dsm" -na;
connectAttr "polySurfaceShape12.iog.og[0]" "arrowShader.dsm" -na;
connectAttr "polySurfaceShape13.iog.og[0]" "arrowShader.dsm" -na;
connectAttr "polySurface8Shape.iog.og[0]" "arrowShader.dsm" -na;
connectAttr "polySurface9Shape.iog.og[0]" "arrowShader.dsm" -na;
connectAttr "pCubeShape56.iog" "arrowShader.dsm" -na;
connectAttr "groupId1.msg" "arrowShader.gn" -na;
connectAttr "groupId2.msg" "arrowShader.gn" -na;
connectAttr "groupId6.msg" "arrowShader.gn" -na;
connectAttr "groupId7.msg" "arrowShader.gn" -na;
connectAttr "groupId11.msg" "arrowShader.gn" -na;
connectAttr "groupId12.msg" "arrowShader.gn" -na;
connectAttr "groupId13.msg" "arrowShader.gn" -na;
connectAttr "groupId14.msg" "arrowShader.gn" -na;
connectAttr "groupId16.msg" "arrowShader.gn" -na;
connectAttr "groupId17.msg" "arrowShader.gn" -na;
connectAttr "groupId18.msg" "arrowShader.gn" -na;
connectAttr "groupId19.msg" "arrowShader.gn" -na;
connectAttr "groupId21.msg" "arrowShader.gn" -na;
connectAttr "groupId22.msg" "arrowShader.gn" -na;
connectAttr "groupId23.msg" "arrowShader.gn" -na;
connectAttr "groupId24.msg" "arrowShader.gn" -na;
connectAttr "groupId26.msg" "arrowShader.gn" -na;
connectAttr "groupId27.msg" "arrowShader.gn" -na;
connectAttr "groupId28.msg" "arrowShader.gn" -na;
connectAttr "groupId29.msg" "arrowShader.gn" -na;
connectAttr "groupId31.msg" "arrowShader.gn" -na;
connectAttr "groupId32.msg" "arrowShader.gn" -na;
connectAttr "groupId33.msg" "arrowShader.gn" -na;
connectAttr "groupId34.msg" "arrowShader.gn" -na;
connectAttr "groupId35.msg" "arrowShader.gn" -na;
connectAttr "groupId36.msg" "arrowShader.gn" -na;
connectAttr "groupId37.msg" "arrowShader.gn" -na;
connectAttr "groupId38.msg" "arrowShader.gn" -na;
connectAttr "groupId39.msg" "arrowShader.gn" -na;
connectAttr "groupId40.msg" "arrowShader.gn" -na;
connectAttr "groupId41.msg" "arrowShader.gn" -na;
connectAttr "groupId43.msg" "arrowShader.gn" -na;
connectAttr "groupId44.msg" "arrowShader.gn" -na;
connectAttr "arrowShader.msg" "materialInfo1.sg";
connectAttr "lambert2.msg" "materialInfo1.m";
connectAttr "|pCube11|polySurfaceShape2.o" "polySplitRing3.ip";
connectAttr "pCubeShape11.wm" "polySplitRing3.mp";
connectAttr "polySplitRing3.out" "polySplitRing4.ip";
connectAttr "pCubeShape11.wm" "polySplitRing4.mp";
connectAttr "polySplitRing4.out" "polySplitRing5.ip";
connectAttr "pCubeShape11.wm" "polySplitRing5.mp";
connectAttr "polySplitRing5.out" "polySplitRing6.ip";
connectAttr "pCubeShape11.wm" "polySplitRing6.mp";
connectAttr "pCubeShape15.o" "polyCBoolOp1.ip[0]";
connectAttr "pCubeShape14.o" "polyCBoolOp1.ip[1]";
connectAttr "pCubeShape15.wm" "polyCBoolOp1.im[0]";
connectAttr "pCubeShape14.wm" "polyCBoolOp1.im[1]";
connectAttr "pCubeShape12.o" "polyCBoolOp2.ip[0]";
connectAttr "pCubeShape6.o" "polyCBoolOp2.ip[1]";
connectAttr "pCubeShape12.wm" "polyCBoolOp2.im[0]";
connectAttr "pCubeShape6.wm" "polyCBoolOp2.im[1]";
connectAttr "polySplitRing6.out" "deleteComponent3.ig";
connectAttr "deleteComponent3.og" "polyAppend3.ip";
connectAttr "polyAppend3.out" "polyAppend4.ip";
connectAttr "polyAppend4.out" "polyAppend5.ip";
connectAttr "polyAppend5.out" "polyAppend6.ip";
connectAttr "polyAppend6.out" "polyAppend7.ip";
connectAttr "polyAppend7.out" "polyAppend8.ip";
connectAttr "|pCube10|polySurfaceShape3.o" "polySoftEdge2.ip";
connectAttr "pCubeShape10.wm" "polySoftEdge2.mp";
connectAttr "polyAppend8.out" "polySoftEdge3.ip";
connectAttr "pCubeShape11.wm" "polySoftEdge3.mp";
connectAttr "|pCube27|polySurfaceShape4.o" "polyExtrudeFace3.ip";
connectAttr "pCubeShape27.wm" "polyExtrudeFace3.mp";
connectAttr "polySurfaceShape5.o" "polyExtrudeFace4.ip";
connectAttr "pCubeShape29.wm" "polyExtrudeFace4.mp";
connectAttr "polyTweak2.out" "polyExtrudeFace5.ip";
connectAttr "pCubeShape29.wm" "polyExtrudeFace5.mp";
connectAttr "polyExtrudeFace4.out" "polyTweak2.ip";
connectAttr "polyTweak3.out" "polyExtrudeFace6.ip";
connectAttr "pCubeShape29.wm" "polyExtrudeFace6.mp";
connectAttr "polyExtrudeFace5.out" "polyTweak3.ip";
connectAttr "|pCube31|polySurfaceShape6.o" "polyAppend9.ip";
connectAttr "polyAppend9.out" "deleteComponent4.ig";
connectAttr "deleteComponent4.og" "polyAppend10.ip";
connectAttr "polyAppend10.out" "deleteComponent5.ig";
connectAttr "deleteComponent5.og" "polyAppend11.ip";
connectAttr "polyAppend11.out" "deleteComponent6.ig";
connectAttr "deleteComponent6.og" "polyAppend12.ip";
connectAttr "polyAppend12.out" "polyAppend13.ip";
connectAttr "polyAppend13.out" "polyAppend14.ip";
connectAttr "pCubeShape34.o" "polyCBoolOp3.ip[0]";
connectAttr "pCubeShape35.o" "polyCBoolOp3.ip[1]";
connectAttr "pCubeShape34.wm" "polyCBoolOp3.im[0]";
connectAttr "pCubeShape35.wm" "polyCBoolOp3.im[1]";
connectAttr "pCubeShape31.o" "polyCBoolOp4.ip[0]";
connectAttr "pCube36Shape.o" "polyCBoolOp4.ip[1]";
connectAttr "pCubeShape31.wm" "polyCBoolOp4.im[0]";
connectAttr "pCube36Shape.wm" "polyCBoolOp4.im[1]";
connectAttr "polyAppend14.out" "groupParts1.ig";
connectAttr "groupId16.id" "groupParts1.gi";
connectAttr "polyCBoolOp3.out" "groupParts2.ig";
connectAttr "groupId18.id" "groupParts2.gi";
connectAttr "polyCBoolOp4.out" "polySplit1.ip";
connectAttr "polySplit1.out" "polySplit2.ip";
connectAttr "polySplit2.out" "polySplit3.ip";
connectAttr "polySplit3.out" "polySplit4.ip";
connectAttr "polySplit4.out" "polySplit5.ip";
connectAttr "polySplit5.out" "polySplit6.ip";
connectAttr "polySplit6.out" "polySplit7.ip";
connectAttr "polySplit7.out" "polyDelEdge1.ip";
connectAttr "pCubeShape43.o" "polyCBoolOp5.ip[0]";
connectAttr "pCubeShape44.o" "polyCBoolOp5.ip[1]";
connectAttr "pCubeShape43.wm" "polyCBoolOp5.im[0]";
connectAttr "pCubeShape44.wm" "polyCBoolOp5.im[1]";
connectAttr "pCubeShape46.o" "polyCBoolOp6.ip[0]";
connectAttr "pCubeShape45.o" "polyCBoolOp6.ip[1]";
connectAttr "pCubeShape46.wm" "polyCBoolOp6.im[0]";
connectAttr "pCubeShape45.wm" "polyCBoolOp6.im[1]";
connectAttr "polyTweak4.out" "polySplitVert1.ip";
connectAttr "polySoftEdge3.out" "polyTweak4.ip";
connectAttr "polySplitVert1.out" "polyChipOff1.ip";
connectAttr "pCubeShape11.wm" "polyChipOff1.mp";
connectAttr "pCubeShape11.o" "polySeparate1.ip";
connectAttr "polyChipOff1.out" "groupParts3.ig";
connectAttr "groupId33.id" "groupParts3.gi";
connectAttr "polySeparate1.out[0]" "groupParts4.ig";
connectAttr "groupId35.id" "groupParts4.gi";
connectAttr "polySeparate1.out[1]" "groupParts5.ig";
connectAttr "groupId36.id" "groupParts5.gi";
connectAttr "polySeparate1.out[2]" "groupParts6.ig";
connectAttr "groupId37.id" "groupParts6.gi";
connectAttr "polySeparate1.out[3]" "groupParts7.ig";
connectAttr "groupId38.id" "groupParts7.gi";
connectAttr "polySeparate1.out[4]" "groupParts8.ig";
connectAttr "groupId39.id" "groupParts8.gi";
connectAttr "polySeparate1.out[5]" "groupParts9.ig";
connectAttr "groupId40.id" "groupParts9.gi";
connectAttr "polySeparate1.out[6]" "groupParts10.ig";
connectAttr "groupId41.id" "groupParts10.gi";
connectAttr "polyTweak5.out" "polyExtrudeFace7.ip";
connectAttr "pCubeShape27.wm" "polyExtrudeFace7.mp";
connectAttr "polyExtrudeFace3.out" "polyTweak5.ip";
connectAttr "polySurfaceShape14.o" "polyExtrudeFace8.ip";
connectAttr "pCubeShape55.wm" "polyExtrudeFace8.mp";
connectAttr "polyExtrudeFace8.out" "polyExtrudeFace9.ip";
connectAttr "pCubeShape55.wm" "polyExtrudeFace9.mp";
connectAttr "polyExtrudeFace9.out" "polySoftEdge4.ip";
connectAttr "pCubeShape55.wm" "polySoftEdge4.mp";
connectAttr "polySoftEdge4.out" "polySplitRing7.ip";
connectAttr "pCubeShape55.wm" "polySplitRing7.mp";
connectAttr "polyTweak6.out" "polySplitRing8.ip";
connectAttr "pCubeShape55.wm" "polySplitRing8.mp";
connectAttr "polySplitRing7.out" "polyTweak6.ip";
connectAttr "arrowShader.pa" ":renderPartition.st" -na;
connectAttr "lambert2.msg" ":defaultShaderList1.s" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "directionalLightShape1.ltd" ":lightList1.l" -na;
connectAttr "pCubeShape1.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape2.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape3.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape5.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape7.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape10.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape13.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape14.iog.og[1]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape14.ciog.cog[1]" ":initialShadingGroup.dsm" -na;
connectAttr "pCube16Shape.iog.og[1]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape17.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape6.iog.og[1]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape6.ciog.cog[1]" ":initialShadingGroup.dsm" -na;
connectAttr "pCube20Shape.iog.og[1]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape21.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape23.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape25.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape27.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape28.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape29.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape30.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape32.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape38.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape42.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape50.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape55.iog" ":initialShadingGroup.dsm" -na;
connectAttr "groupId3.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId4.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId8.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId9.msg" ":initialShadingGroup.gn" -na;
connectAttr "directionalLight1.iog" ":defaultLightSet.dsm" -na;
dataStructure -fmt "raw" -as "name=externalContentTable:string=node:string=key:string=upath:uint32=upathcrc:string=rpath:string=roles";
applyMetadata -fmt "raw" -v "channel\nname externalContentTable\nstream\nname v1.0\nindexType numeric\nstructure externalContentTable\n0\n\"|directionalLight1|directionalLightShape1\" \"dmapName\" \"depthmap\" 2097411553 \"\" \"sourceImages\"\nendStream\nendChannel\nendAssociations\n" 
		-scn;
// End of GravityButtons.ma
