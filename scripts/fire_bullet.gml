/// fire_bullet()

// Bullet típus
var btype;

if (current_ammo == 0) btype = obj_bullet_pistol;
if (current_ammo == 1) btype = obj_bullet_shotgun;
if (current_ammo == 2) btype = obj_bullet_rocket;
if (current_ammo == 3) btype = obj_bullet_machinegun;

// Létrehozás
var b = instance_create(x, y, btype);

// Irány
if (image_xscale == 1)
    b.direction = 0;
else
    b.direction = 180;

// Sebesség
b.speed = 25;

// ---------------------------------------------------------------
//                     Ammo fogyasztása  (GLOBAL)
// ---------------------------------------------------------------
global.ammo[current_ammo] -= 1;

// Cooldown
if (current_ammo == 3)
    alarm[0] = 2;   // gépfegyver → nagyon gyors ütem
else
    alarm[0] = shoot_cooldown;

can_shoot = false;

// ---------------------------------------------------------------
//                VISSZARÚGÁS CSAK GÉPFEGYVERNÉL
// ---------------------------------------------------------------
if (current_ammo == 3) {
    recoil_timer = recoil_time_max;
}
