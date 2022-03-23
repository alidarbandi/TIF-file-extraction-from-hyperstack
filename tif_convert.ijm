// 23-March-2022

setBatchMode(true);
//make function that processes and saves the image
function tif_conversion(img)	{
	
    s="open=["+inputDir+list[i]+"] color_mode=Default rois_import=[ROI manager] view=Hyperstack stack_order=XYCZT series_2" ;
    run("Bio-Formats Importer", s);
    run("Enhance Contrast", "saturated=0.35");
    name = getTitle(); // gets name of image 
	saveName = outputDir + name + "_corrected" ;// combine path with new name
	saveAs("TIF", saveName); // saves tif in same folder as original image
	close();
	 

}

// choose input folder
inputDir = getDirectory("Choose your input folder");
outputDir= getDirectory("Select your save folder");
// list subdirectories
list = getFileList(inputDir);

// loop through all items in input directory
for (i=0; i<63; i++)    
	if(endsWith(list[i], ".tif")) // processes items ending in .tif only
//		run("Bio-Formats Importer", "open= + inputDir + list[i]  view=Hyperstack ");
		tif_conversion(list[i]);
        

	
	