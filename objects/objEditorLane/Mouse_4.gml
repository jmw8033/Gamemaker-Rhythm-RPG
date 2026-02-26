/// @description Place note in lane
var selectedNote = objChartEditor.selectedNote;
if (selectedNote == 0) {
	exit;
}

var chart = objChartEditor.chart;
var dy = objTimeline.y - device_mouse_y_to_gui(0);
var timing = objTimeline.currentTime + dy / objChartEditor.pixelsPerSecond; 
var snapInterval = 60 / chart.bpm / chart.noteDivision;
var snappedTiming = round(timing / snapInterval) * snapInterval;

array_push(chart.notes, {noteType: selectedNote, timing: snappedTiming, lane: laneIndex, chord: []});

updateEditorDisplay();