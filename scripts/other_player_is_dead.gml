/// other_player_is_dead()

if (instance_exists(obj_player) && !obj_player.is_dead) return false;
if (instance_exists(obj_player2) && !obj_player2.is_dead) return false;

return true;
