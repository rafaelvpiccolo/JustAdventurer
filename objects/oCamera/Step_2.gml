/// @desc ??

// Get the current camera position
var camX = camera_get_view_x(camera);
var camY = camera_get_view_y(camera);

// Set target camera position
var targetX = oPlayer.x - RES_W/2;
var targetY = oPlayer.y - RES_H/1.7;

// Clamp the target to room bounds
targetX = clamp(targetX, 0, room_width - RES_W);
targetY = clamp(targetY, 0, room_height - RES_H);

// Smoothly move the camera to the target position
camX = lerp(camX, targetX, CAM_SMOOTH);
camY = lerp(camY, targetY, CAM_SMOOTH);

// Apply camera position
camera_set_view_pos(camera, camX, camY);