function __global_object_depths() {
	// Initialise the global array that allows the lookup of the depth of a given object
	// GM2.0 does not have a depth on objects so on import from 1.x a global array is created
	// NOTE: MacroExpansion is used to insert the array initialisation at import time
	gml_pragma( "global", "__global_object_depths()");

	// insert the generated arrays here
	global.__objectDepths[0] = 0; // NOTESPAWNER
	global.__objectDepths[1] = 1; // objTrack
	global.__objectDepths[2] = 0; // parBridge
	global.__objectDepths[3] = 0; // objGreenBridge
	global.__objectDepths[4] = 0; // objRedBridge
	global.__objectDepths[5] = 0; // objYellowBridge
	global.__objectDepths[6] = 0; // objBlueBridge
	global.__objectDepths[7] = 0; // objOrangeBridge
	global.__objectDepths[8] = 0; // parNote
	global.__objectDepths[9] = 0; // objGreenNote
	global.__objectDepths[10] = 0; // objRedNote
	global.__objectDepths[11] = 0; // objYellowNote
	global.__objectDepths[12] = 0; // objBlueNote
	global.__objectDepths[13] = 0; // objOrangeNote
	global.__objectDepths[14] = 0; // CONTROL


	global.__objectNames[0] = "NOTESPAWNER";
	global.__objectNames[1] = "objTrack";
	global.__objectNames[2] = "parBridge";
	global.__objectNames[3] = "objGreenBridge";
	global.__objectNames[4] = "objRedBridge";
	global.__objectNames[5] = "objYellowBridge";
	global.__objectNames[6] = "objBlueBridge";
	global.__objectNames[7] = "objOrangeBridge";
	global.__objectNames[8] = "parNote";
	global.__objectNames[9] = "objGreenNote";
	global.__objectNames[10] = "objRedNote";
	global.__objectNames[11] = "objYellowNote";
	global.__objectNames[12] = "objBlueNote";
	global.__objectNames[13] = "objOrangeNote";
	global.__objectNames[14] = "CONTROL";


	// create another array that has the correct entries
	var len = array_length_1d(global.__objectDepths);
	global.__objectID2Depth = [];
	for( var i=0; i<len; ++i ) {
		var objID = asset_get_index( global.__objectNames[i] );
		if (objID >= 0) {
			global.__objectID2Depth[ objID ] = global.__objectDepths[i];
		} // end if
	} // end for


}
