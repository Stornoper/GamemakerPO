draw_set_font(Cool);
draw_set_color(c_white);
draw_sprite_ext(spr_heart, 0, 80, 56, 3, 3, 0, c_white, 1);
draw_text(128, 64,string(global.playerHP));
draw_text(128, 128, (global.roboparts));
draw_sprite_ext(sp_roboParts, 0, 64, 112, 1.5, 1.5, 0, c_white, 1);
draw_text(128,196,"Movespeed = " + string(global.moveSP));
draw_text(128,260,("H: + 20       |  cost = 1 Roboparts"));
draw_sprite_ext(spr_heart, 0, 260, 264, 2, 2, 0, c_white, 1);
draw_text(128,324,("F: Movespeed + 0.5  |  cost = 3 Roboparts"));
draw_text(128,388,("R: Reload time / 2    |  cost = 5 Roboparts"));
draw_text(128,452,("B: Go to Bossroom   |  cost = 20 Roboparts"));