
moveRight = keyboard_check(vk_right) || keyboard_check(ord("D"));
moveLeft = keyboard_check(vk_left) || keyboard_check(ord("A"));
moveDown = keyboard_check(vk_down) || keyboard_check(ord("S"));
moveUp = keyboard_check(vk_up) || keyboard_check(ord("W"));

vx = ((moveRight - moveLeft) * walkSpeed);
vy = ((moveDown - moveUp) * walkSpeed);

// If idle 
/*
if (vx == 0 && vy == 0) {
	
	switch dir {
		case 0: sprite_index = spr_player_idle_right; break;
		case 1: sprite_index = spr_player_idle_up; break;
		case 2: sprite_index = spr_player_idle_left; break;
		case 3: sprite_index = spr_player_idle_down; break;
	}

}
*/
// If moving
if (vx != 0 || vy !=0)
	x += vx
	y += vy


	if (vx > 0) {
		sprite_index = spr_player_walk_right;
		dir = 0;
	}
	if (vx < 0) {
		sprite_index = spr_player_walk_left;
		dir = 2
	}
	if (vy > 0) {
		sprite_index = spr_player_walk_down;
		dir = 3;
	}
	if (vy < 0) {
		sprite_index = spr_player_walk_up;
		dir = 1;
	}