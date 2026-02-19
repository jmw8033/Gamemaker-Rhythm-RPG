/// @description Variables
nextRoom = "";

if (room_get_name(room) == "roomChartEditor") {
	nextRoom = "roomChartTester";
} else if (room_get_name(room) == "roomChartTester") {
	nextRoom = "roomChartEditor";
}