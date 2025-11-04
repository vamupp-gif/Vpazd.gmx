/// player_hit_enemy(enemy, mode)
/// enemy: az ellenség instance
/// mode: "slide" vagy "downjump"

var _enemy = argument0;
var _mode  = argument1;

// Slide lökés
if (_mode == "slide") {
    _enemy.vsp = -6;
if (other.image_xscale == 1) {
    _enemy.hsp = 8;
} else {
    _enemy.hsp = -8;
}
}

// Downjump lökés és sebzés
if (_mode == "downjump") {
    _enemy.hp -= 10;
    _enemy.vsp = -6;
 if (other.image_xscale == 1) {
    _enemy.hsp = 8;
} else {
    _enemy.hsp = -8;
}
}
