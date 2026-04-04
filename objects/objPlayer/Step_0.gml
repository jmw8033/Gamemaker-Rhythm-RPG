depth = -y;

var hMove;
hMove = keyboard_check(ord("D")) - keyboard_check(ord("A"));
var vMove;
vMove = keyboard_check(ord("S")) - keyboard_check(ord("W"));

eDist = sqrt(sqr(hMove) + sqr(vMove));

if (hMove != 0 or vMove !=-0) {
	if (!position_meeting(x, y + vMove / eDist, objBarrier)) {
		y += vMove / eDist;
	}
	if (!position_meeting(x + hMove / eDist, y, objBarrier)) {
		x += hMove / eDist;
	}
}