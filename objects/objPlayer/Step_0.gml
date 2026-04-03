var hMove;
hMove = keyboard_check(ord("D")) - keyboard_check(ord("A"));
var vMove;
vMove = keyboard_check(ord("S")) - keyboard_check(ord("W"));

eDist = sqrt(sqr(hMove) + sqr(vMove));

if (hMove != 0 or vMove !=-0) {
	if (!place_meeting(x, y + vMove / eDist, objBarrier)) {
		y += vMove / eDist;
	}
	if (!place_meeting(x + hMove / eDist, y, objBarrier)) {
		x += hMove / eDist;
	}
}