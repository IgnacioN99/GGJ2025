spacing = 250;
time_before_rain = 300;
interval_rain = 300;

interval_minion = 90;

vulnerable = false;
vulnerable_damage = 5;
vulnerable_duration = 60;

alarm_set(0,time_before_rain)
alarm_set(1,200)

vida = 200;
vida_max = vida;

healthbar_w = 200;
healthbar_h = 24;
healthbar_x = x - healthbar_w/2;
offset_y = 100
healthbar_y = y - healthbar_h - offset_y;

path_start(dishes_path,4,path_action_restart,true);