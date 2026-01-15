/// @description Place note in lane
var selectedNote = objChartEditor.selectedNote;
var chart = objChartEditor.chart;
var dy = objTimeline.y - device_mouse_y_to_gui(0);
var timing = objTimeline.currentTime + dy / objChartEditor.pixelsPerSecond; 

array_push(chart.notes, {noteType: selectedNote, timing: timing, lane: laneIndex});

updateEditorDisplay();