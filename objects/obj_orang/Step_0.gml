move_x = keyboard_check(vk_right) - keyboard_check(vk_left); // membaca apakah gerakan itu positif apa negatif
move_x *= move_speed; // gerakan dikaIi dengan kecepatan

if(place_meeting(x,y + 2,obj_tanah) || place_meeting(x,y + 2,obj_ereng)){ // jika karakter berada diatas tanah
	move_y = 0; //  maka tidak ada gerakan ke atas atau kebawah
	if(!place_meeting(x+move_x,y+2,obj_tanah) && place_meeting(x+move_x,y+10,obj_tanah)){
		move_y = abs(move_x);
		move_x = 0;
	}
	if(keyboard_check(vk_up)) move_y = - jump_speed; // jika menekan atas maka karakter bergerak ke atas sesuai kecepatan
}else if (move_y < 10) move_y += 1; // jika kareakter tidak menyentuh tanah maka karakter bergerak ke bawah hingga menyentuh tanah

move_and_collide(move_x,move_y,obj_tanah,4,0,0,move_speed,-1); // hasiI tadi disimpan ke daIam seni untuk memberika efek gerakan 

if(move_x != 0) image_xscale = sign(move_x); // ini digunakan untuk mengubah arah karakter
