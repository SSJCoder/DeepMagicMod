#define G2_
return ((((argument0-argument1) mod 360)+540) mod 360)-180;


#define G5_


#define G8_
return 1+2*argument0*G277_()-argument0;


#define G11_
if (ds_list_find_value(argument0,4)!=-1)
ds_list_replace(argument0,4,0);


#define G12_
{
G18_(G115_,'step',G326_);
G18_(G115_,'draw',G144_);
}


#define G14_
G298_=1;
G9_=argument0;
draw_set_font(ft_stats);
G9_=G34_(G9_,180);
G166_=string_width(G9_);
G258_=string_height(G9_);


#define G16_
draw_rectangle(argument0,argument1,argument0+argument2,argument1+argument3,false);


#define G18_
if (G173_(G381_,argument1))
{
argument1=G239_(G381_,argument1);
object_event_add(argument0,ds_list_find_value(argument1,0),ds_list_find_value(argument1,1),script_get_name(argument2)+'();');
}
else
G125_(''+"'"+''+argument1+''+"'"+' event type does not exist .');


#define G19_
var T0_,T1_,T2_,T3_;
T3_=0;
T1_=ds_list_size(argument1);
while (T3_<T1_)
{
if (ds_list_find_value(ds_list_find_value(argument1,T3_),0)==argument0)
return ds_list_find_value(argument1,T3_);
T3_+=1;
}
T0_=ds_list_create();
ds_list_add(T0_,argument0);
ds_list_add(T0_,ds_list_find_value(G179_,argument0));
ds_list_add(T0_,ds_list_find_value(G275_,argument0));
ds_list_add(T0_,G169_(argument0));
ds_list_add(T0_,0);
T2_=T0_;
ds_list_add(argument1,T2_);
return T2_;


#define G20_
var T0_,T1_,T2_;
T0_=(ds_list_create());
T1_=0;
T2_=string_length(argument0);
while (T1_<T2_)
{
ds_list_add(T0_,ord(string_char_at(argument0,T1_+1)));
T1_+=1;
}
return T0_;


#define G23_
draw_set_blend_mode(bm_add);
G292_();
draw_set_blend_mode(bm_normal);


#define G24_
if (!show_question(argument0))
game_end();


#define G25_
ds_list_destroy(argument0);


#define G26_
{
G340_();
room_goto_next();
}


#define G29_
{
G15_=caster_load('data/sounds/ForestRealm.ogg');
G161_=-1;
G18_(G232_,'step-end',G37_);
with (G222_(G232_))
{
persistent=true;
Cdw=15;
}
}


#define G30_
draw_set_blend_mode_ext(bm_one,bm_inv_src_alpha);


#define G31_
return ds_list_find_index(argument0,argument1);


#define G32_
return G129_(G208_);


#define G33_
object_set_depth(G52_,-9500);


#define G34_
var T0_,T1_,T2_,T3_,T4_,T5_,T6_;
T5_='';
T6_=0;
T3_=0;
T1_=0;
T4_=string_length(argument0);
while (T1_<T4_)
{
T2_=string_char_at(argument0,T1_+1);
T5_+=T2_;
if (T2_==' '||T2_=='	')
T6_=true;
else if (T2_=='
')
{
T6_=true;
T3_=string_length(T5_);
}
else
{
if (T6_)
T3_=string_length(T5_)-1;
T6_=false;
}
if (string_width(T5_)>=argument1)
{
T0_=string_copy(T5_,T3_+1,string_length(T5_)-T3_);
if (string_width(T0_)<argument1)
{
T5_=string_insert('
',T5_,T3_+1);
T3_+=1;
}
else
{
T5_=string_insert('
',T5_,(string_length(T5_)-1)+1);
T3_=string_length(T5_)-1;
}
}
T1_+=1;
}
return T5_;


#define G37_
if (caster_error_occurred())
G168_('caster err: '+caster_error_message());
if (keyboard_check(vk_alt)&&keyboard_check_pressed(vk_enter))
{
if (window_get_fullscreen())
{
display_reset();
window_set_fullscreen(false);
}
else
{
window_set_fullscreen(true);
display_set_size(640,480);
}
}
if (Cdw>0)
Cdw-=G67_;
if (G161_!=-1)
{
if (!caster_is_playing(G161_))
{
Cdw=15+G277_()*45;
G161_=-1;
}
}
else
{
if (Cdw<=0)
G161_=caster_play(G15_,1.0,1.0);
}


#define G38_
{
G360_=G289_;
G179_=(ds_list_create());
ds_list_add(G179_,keycode_getkeycode('a'));
ds_list_add(G179_,keycode_getkeycode('b'));
ds_list_add(G179_,keycode_getkeycode('c'));
ds_list_add(G179_,keycode_getkeycode('d'));
ds_list_add(G179_,keycode_getkeycode('e'));
ds_list_add(G179_,keycode_getkeycode('f'));
ds_list_add(G179_,keycode_getkeycode('g'));
ds_list_add(G179_,keycode_getkeycode('h'));
ds_list_add(G179_,keycode_getkeycode('i'));
ds_list_add(G179_,keycode_getkeycode('j'));
ds_list_add(G179_,keycode_getkeycode('k'));
ds_list_add(G179_,keycode_getkeycode('l'));
ds_list_add(G179_,keycode_getkeycode('m'));
ds_list_add(G179_,keycode_getkeycode('n'));
ds_list_add(G179_,keycode_getkeycode('o'));
ds_list_add(G179_,keycode_getkeycode('p'));
ds_list_add(G179_,keycode_getkeycode('q'));
ds_list_add(G179_,keycode_getkeycode('r'));
ds_list_add(G179_,keycode_getkeycode('s'));
ds_list_add(G179_,keycode_getkeycode('t'));
ds_list_add(G179_,keycode_getkeycode('u'));
ds_list_add(G179_,keycode_getkeycode('v'));
ds_list_add(G179_,keycode_getkeycode('w'));
ds_list_add(G179_,keycode_getkeycode('x'));
ds_list_add(G179_,keycode_getkeycode('y'));
ds_list_add(G179_,keycode_getkeycode('z'));
ds_list_add(G179_,keycode_getkeycode('0'));
ds_list_add(G179_,keycode_getkeycode('1'));
ds_list_add(G179_,keycode_getkeycode('2'));
ds_list_add(G179_,keycode_getkeycode('3'));
ds_list_add(G179_,keycode_getkeycode('4'));
ds_list_add(G179_,keycode_getkeycode('5'));
ds_list_add(G179_,keycode_getkeycode('6'));
ds_list_add(G179_,keycode_getkeycode('7'));
ds_list_add(G179_,keycode_getkeycode('8'));
ds_list_add(G179_,keycode_getkeycode('9'));
ds_list_add(G179_,vk_shift);
ds_list_add(G179_,vk_control);
ds_list_add(G179_,vk_alt);
ds_list_add(G179_,vk_lshift);
ds_list_add(G179_,vk_lcontrol);
ds_list_add(G179_,vk_lalt);
ds_list_add(G179_,vk_rshift);
ds_list_add(G179_,vk_rcontrol);
ds_list_add(G179_,vk_ralt);
ds_list_add(G179_,vk_escape);
ds_list_add(G179_,vk_tab);
ds_list_add(G179_,vk_space);
ds_list_add(G179_,vk_backspace);
ds_list_add(G179_,vk_enter);
ds_list_add(G179_,keycode_getkeycode('`'));
ds_list_add(G179_,keycode_getkeycode('-'));
ds_list_add(G179_,keycode_getkeycode('='));
ds_list_add(G179_,keycode_getkeycode('['));
ds_list_add(G179_,keycode_getkeycode(']'));
ds_list_add(G179_,keycode_getkeycode('\'));
ds_list_add(G179_,keycode_getkeycode(';'));
ds_list_add(G179_,keycode_getkeycode(''+"'"+''));
ds_list_add(G179_,keycode_getkeycode(','));
ds_list_add(G179_,keycode_getkeycode('.'));
ds_list_add(G179_,keycode_getkeycode('/'));
ds_list_add(G179_,vk_numpad0);
ds_list_add(G179_,vk_numpad1);
ds_list_add(G179_,vk_numpad2);
ds_list_add(G179_,vk_numpad3);
ds_list_add(G179_,vk_numpad4);
ds_list_add(G179_,vk_numpad5);
ds_list_add(G179_,vk_numpad6);
ds_list_add(G179_,vk_numpad7);
ds_list_add(G179_,vk_numpad8);
ds_list_add(G179_,vk_numpad9);
ds_list_add(G179_,vk_add);
ds_list_add(G179_,vk_multiply);
ds_list_add(G179_,vk_subtract);
ds_list_add(G179_,vk_divide);
ds_list_add(G179_,vk_decimal);
ds_list_add(G179_,vk_home);
ds_list_add(G179_,vk_end);
ds_list_add(G179_,vk_pageup);
ds_list_add(G179_,vk_pagedown);
ds_list_add(G179_,vk_delete);
ds_list_add(G179_,vk_insert);
ds_list_add(G179_,vk_up);
ds_list_add(G179_,vk_down);
ds_list_add(G179_,vk_left);
ds_list_add(G179_,vk_right);
ds_list_add(G179_,vk_f1);
ds_list_add(G179_,vk_f2);
ds_list_add(G179_,vk_f3);
ds_list_add(G179_,vk_f4);
ds_list_add(G179_,vk_f5);
ds_list_add(G179_,vk_f6);
ds_list_add(G179_,vk_f7);
ds_list_add(G179_,vk_f8);
ds_list_add(G179_,vk_f9);
ds_list_add(G179_,vk_f10);
ds_list_add(G179_,vk_f11);
ds_list_add(G179_,vk_f12);
ds_list_add(G179_,vk_printscreen);
ds_list_add(G179_,vk_pause);
ds_list_add(G179_,mb_left);
ds_list_add(G179_,mb_right);
ds_list_add(G179_,mb_middle);
ds_list_add(G275_,G48_);
ds_list_add(G275_,G48_);
ds_list_add(G275_,G48_);
ds_list_add(G275_,G48_);
ds_list_add(G275_,G48_);
ds_list_add(G275_,G48_);
ds_list_add(G275_,G48_);
ds_list_add(G275_,G48_);
ds_list_add(G275_,G48_);
ds_list_add(G275_,G48_);
ds_list_add(G275_,G48_);
ds_list_add(G275_,G48_);
ds_list_add(G275_,G48_);
ds_list_add(G275_,G48_);
ds_list_add(G275_,G48_);
ds_list_add(G275_,G48_);
ds_list_add(G275_,G48_);
ds_list_add(G275_,G48_);
ds_list_add(G275_,G48_);
ds_list_add(G275_,G48_);
ds_list_add(G275_,G48_);
ds_list_add(G275_,G48_);
ds_list_add(G275_,G48_);
ds_list_add(G275_,G48_);
ds_list_add(G275_,G48_);
ds_list_add(G275_,G48_);
ds_list_add(G275_,G48_);
ds_list_add(G275_,G48_);
ds_list_add(G275_,G48_);
ds_list_add(G275_,G48_);
ds_list_add(G275_,G48_);
ds_list_add(G275_,G48_);
ds_list_add(G275_,G48_);
ds_list_add(G275_,G48_);
ds_list_add(G275_,G48_);
ds_list_add(G275_,G48_);
ds_list_add(G275_,G162_);
ds_list_add(G275_,G162_);
ds_list_add(G275_,G162_);
ds_list_add(G275_,G162_);
ds_list_add(G275_,G162_);
ds_list_add(G275_,G162_);
ds_list_add(G275_,G162_);
ds_list_add(G275_,G162_);
ds_list_add(G275_,G162_);
ds_list_add(G275_,G162_);
ds_list_add(G275_,G162_);
ds_list_add(G275_,G162_);
ds_list_add(G275_,G162_);
ds_list_add(G275_,G162_);
ds_list_add(G275_,G48_);
ds_list_add(G275_,G48_);
ds_list_add(G275_,G48_);
ds_list_add(G275_,G48_);
ds_list_add(G275_,G48_);
ds_list_add(G275_,G48_);
ds_list_add(G275_,G48_);
ds_list_add(G275_,G48_);
ds_list_add(G275_,G48_);
ds_list_add(G275_,G48_);
ds_list_add(G275_,G48_);
ds_list_add(G275_,G162_);
ds_list_add(G275_,G162_);
ds_list_add(G275_,G162_);
ds_list_add(G275_,G162_);
ds_list_add(G275_,G162_);
ds_list_add(G275_,G162_);
ds_list_add(G275_,G162_);
ds_list_add(G275_,G162_);
ds_list_add(G275_,G162_);
ds_list_add(G275_,G162_);
ds_list_add(G275_,G162_);
ds_list_add(G275_,G162_);
ds_list_add(G275_,G162_);
ds_list_add(G275_,G162_);
ds_list_add(G275_,G162_);
ds_list_add(G275_,G162_);
ds_list_add(G275_,G162_);
ds_list_add(G275_,G162_);
ds_list_add(G275_,G162_);
ds_list_add(G275_,G162_);
ds_list_add(G275_,G162_);
ds_list_add(G275_,G162_);
ds_list_add(G275_,G162_);
ds_list_add(G275_,G162_);
ds_list_add(G275_,G162_);
ds_list_add(G275_,G162_);
ds_list_add(G275_,G162_);
ds_list_add(G275_,G162_);
ds_list_add(G275_,G162_);
ds_list_add(G275_,G162_);
ds_list_add(G275_,G162_);
ds_list_add(G275_,G162_);
ds_list_add(G275_,G162_);
ds_list_add(G275_,G162_);
ds_list_add(G275_,G162_);
ds_list_add(G275_,G162_);
ds_list_add(G275_,G162_);
ds_list_add(G275_,G162_);
ds_list_add(G275_,G162_);
ds_list_add(G275_,G108_);
ds_list_add(G275_,G108_);
ds_list_add(G275_,G108_);
}


#define G39_
var T0_,T1_,T2_,T3_,T4_;
T0_=file_bin_open(argument0,1);
file_bin_rewrite(T0_);
if (is_string(argument1))
{
T1_=0;
T2_=string_length(argument1);
while (T1_<T2_)
{
file_bin_write_byte(T0_,ord(string_char_at(argument1,T1_+1)));
T1_+=1;
}
}
else
{
T4_=0;
T3_=ds_list_size(argument1);
while (T4_<T3_)
{
file_bin_write_byte(T0_,ds_list_find_value(argument1,T4_));
T4_+=1;
}
}
file_bin_close(T0_);
return argument1;


#define G41_
return mouse_check_button_pressed(argument0);


#define G42_
{
G18_(G296_,'step',G131_);
G18_(G296_,'draw',G276_);
}


#define G43_
if (G45_()-time>life)
G257_();


#define G44_
var T0_;
if (argument0=='')
return -1;
else
{
T0_=(ds_list_create());
ds_list_read(T0_,argument0);
return T0_;
}


#define G45_
return date_second_span(G6_,date_current_time());


#define G46_
return keycode_down(argument0);


#define G47_
var T0_,T1_,T2_;
if (G290_(oSpawnPortal)||G290_(oWhiteDoor)||G290_(oBlackDoor))
{
T0_=G239_(G244_,'x');
T2_=G239_(G244_,'y');
if (T0_==-1&&T2_==-1)
{
with (oSpawnPortal)
{
T1_=ds_list_create();
ds_list_add(T1_,'x');
ds_list_add(T1_,self.x);
ds_list_add(T1_,'y');
ds_list_add(T1_,self.y);
G114_(G244_,T1_);
}
}
G408_();
}


#define G48_
var T0_,T1_;
T1_=keycode_down(ds_list_find_value(argument0,1))*G403_;
if (ds_list_find_value(argument0,3)!=T1_)
{
ds_list_replace(argument0,3,T1_);
ds_list_replace(argument0,4,-1);
}
else
{
T0_=ds_list_find_value(argument0,4);
if (T0_==-1)
ds_list_replace(argument0,4,G67_);
else
ds_list_replace(argument0,4,T0_+G67_);
}


#define G51_
return G319_;


#define G55_
time-=G67_;
if (time<=0)
{
script_execute(cb);
G257_();
}


#define G56_
var T0_,T1_,T2_,T3_,T4_,T5_,T6_,T7_;
T1_=argument3/2;
if (argument2)
{
T4_=hw;
T3_=room_width-hw;
T5_=T3_-T4_;
if (T5_<=argument3)
view_xview[0]=round((T4_+G277_()*T5_)-hw);
else
{
T6_=G387_(T4_,T3_-argument3,argument0-T1_);
view_xview[0]=round((T6_+G277_()*argument3)-hw);
}
T0_=hh;
T7_=room_height-hh;
T5_=T7_-T0_;
if (T5_<=argument3)
view_yview[0]=round((T0_+G277_()*T5_)-hh);
else
{
T2_=G387_(T0_,T7_-argument3,argument1-T1_);
view_yview[0]=round((T2_+G277_()*argument3)-hh);
}
}
else
{
view_xview[0]=round((argument0+G277_()*argument3-T1_)-hw);
view_yview[0]=round((argument1+G277_()*argument3-T1_)-hh);
}


#define G58_
return G349_(argument0,G208_);


#define G61_
file_delete('log.txt');


#define G62_
G119_();
G401_();


#define G63_
G18_(G321_,'step-end',G369_);


#define G65_
G330_(argument0,argument1,G387_(0.80,1.0,argument2),0.15);


#define G66_
ds_map_destroy(argument0);


#define G68_
var T0_;
T0_=ds_list_write(argument1);
sleep(1);
G111_(argument0,T0_);
return argument1;


#define G69_
var T0_;
T0_=ds_list_find_index(argument0,argument1);
if (T0_!=-1)
{
ds_list_delete(argument0,T0_);
return T0_;
}
return -1;


#define G71_
return G19_(argument0,G208_);


#define G72_
{
G18_(G54_,'step',G370_);
G18_(G54_,'draw',G23_);
}


#define G73_
return string_copy(argument0,argument1+1,argument2-argument1);


#define G75_
var T0_,T1_;
{
T0_=G394_();
T1_=ds_list_create();
ds_list_add(T1_,ev_create);
ds_list_add(T1_,0);
G338_(T0_,'create',T1_);
T1_=ds_list_create();
ds_list_add(T1_,ev_step);
ds_list_add(T1_,ev_step_begin);
G338_(T0_,'step-begin',T1_);
T1_=ds_list_create();
ds_list_add(T1_,ev_step);
ds_list_add(T1_,ev_step_normal);
G338_(T0_,'step',T1_);
T1_=ds_list_create();
ds_list_add(T1_,ev_step);
ds_list_add(T1_,ev_step_end);
G338_(T0_,'step-end',T1_);
T1_=ds_list_create();
ds_list_add(T1_,ev_draw);
ds_list_add(T1_,0);
G338_(T0_,'draw',T1_);
T1_=ds_list_create();
ds_list_add(T1_,ev_destroy);
ds_list_add(T1_,0);
G338_(T0_,'destroy',T1_);
T1_=ds_list_create();
ds_list_add(T1_,ev_other);
ds_list_add(T1_,ev_game_start);
G338_(T0_,'game-start',T1_);
T1_=ds_list_create();
ds_list_add(T1_,ev_other);
ds_list_add(T1_,ev_game_end);
G338_(T0_,'game-end',T1_);
T1_=ds_list_create();
ds_list_add(T1_,ev_other);
ds_list_add(T1_,ev_room_start);
G338_(T0_,'room-start',T1_);
T1_=ds_list_create();
ds_list_add(T1_,ev_other);
ds_list_add(T1_,ev_room_end);
G338_(T0_,'room-end',T1_);
T1_=ds_list_create();
ds_list_add(T1_,ev_other);
ds_list_add(T1_,ev_close_button);
G338_(T0_,'close',T1_);
G381_=T0_;
}


#define G76_
return mouse_check_button(argument0);


#define G77_
return ds_list_write(argument0);


#define G78_
var T0_;
T0_=G81_(argument0)-1;
while (T0_>=0)
{
if (G228_(argument0,T0_)=='/')
return G73_(argument0,0,T0_);
T0_-=1;
}
return '';


#define G81_
return string_length(argument0);


#define G83_
if (argument1!=-1)
object_event_add(argument0,ev_create,0,script_get_name(argument1)+'();');
if (argument2!=-1)
object_event_add(argument0,ev_step,ev_step_normal,script_get_name(argument2)+'();');
return argument0;


#define G84_
var T0_;
T0_=ds_list_find_value(argument0,4);
if (T0_==-1)
return 0;
else
return T0_*ds_list_find_value(argument0,3);


#define G85_
return ds_list_write(argument0);


#define G86_
var T0_;
T0_=G2_(argument0,argument1);
if (abs(T0_)<=argument2)
return argument1;
else
return argument0-sign(T0_)*argument2;


#define G87_
with (G382_(argument0,argument1,G321_))
{
bound=argument2;
shake=0;
wd=view_wview[0];
ht=view_hview[0];
hw=wd*0.5;
hh=ht*0.5;
G256_(argument0,argument1,bound);
}


#define G88_
var T0_;
T0_=ds_list_find_value(argument0,argument1);
ds_list_delete(argument0,argument1);
return T0_;


#define G89_
var T0_,T1_,T2_,T3_;
T1_=file_bin_open(argument0,0);
T3_='';
T2_=0;
T0_=file_bin_size(T1_);
while (T2_<T0_)
{
T3_+=chr(file_bin_read_byte(T1_));
T2_+=1;
}
file_bin_close(T1_);
return T3_;


#define G90_
G295_();
G209_();
G279_();
if (keyboard_check(vk_escape))
{
G82_+=G67_;
if (G82_>=0.5)
game_end();
}
else
G82_=0;


#define G91_
with (G222_(G182_))
{
time=argument0;
cb=argument1;
}


#define G92_
if (argument0!=-1)
draw_set_color(argument0);
if (argument1!=-1)
draw_set_alpha(argument1);


#define G94_
var T0_;
T0_=sprite_get_number(sprite_index);
image_index=(image_index+T0_*G67_*1.5) mod T0_;


#define G96_
draw_set_blend_mode(bm_add);
G292_();
draw_set_blend_mode(bm_normal);


#define G100_
var T0_;
T0_=date_current_time();
G67_=min(0.10,date_second_span(G345_,T0_));
G345_=T0_;


#define G102_
script_execute(dwfn);


#define G103_
with (G222_(G52_))
{
color=argument0;
alpha=argument2;
eTime=argument1;
a1=argument2;
a2=argument3;
}


#define G104_
G298_=0;
G147_=ds_list_find_value(argument0,1);
G332_=ds_list_find_value(argument0,2);
G93_=ds_list_find_value(argument0,3);
G9_=ds_list_find_value(argument0,4);
draw_set_font(ft_stats);
G9_=G34_(G9_,180);
G166_=max(string_width(G147_),string_width(G93_),string_width(G9_));
G258_=string_height(G147_)+string_height(G93_)+8+string_height(G9_);


#define G105_
var T0_;
T0_=object_add();
if (argument0!=-1)
object_event_add(T0_,ev_create,0,script_get_name(argument0)+'();');
if (argument1!=-1)
object_event_add(T0_,ev_step,ev_step_normal,script_get_name(argument1)+'();');
if (argument2!=-1)
object_event_add(T0_,ev_draw,0,script_get_name(argument2)+'();');
return T0_;


#define G106_
image_speed=0;
image_index=G277_()*sprite_get_number(sprite_index);
rx=8;
ry=5;
scl1=G64_;
scl2=G194_;
col1=G109_;
col2=G138_;


#define G107_
return mouse_check_button(argument0);


#define G108_
var T0_,T1_;
T1_=mouse_check_button(ds_list_find_value(argument0,1));
if (ds_list_find_value(argument0,3)!=T1_)
{
ds_list_replace(argument0,3,T1_);
ds_list_replace(argument0,4,-1);
}
else
{
T0_=ds_list_find_value(argument0,4);
if (T0_==-1)
ds_list_replace(argument0,4,G67_);
else
ds_list_replace(argument0,4,T0_+G67_);
}


#define G111_
var T0_;
T0_=file_text_open_write(argument0);
file_text_write_string(T0_,argument1);
file_text_close(T0_);
return argument1;


#define G112_
time+=G67_;
if (time>=eTime)
G257_();
else
alpha=a1+(time/eTime)*(a2-a1);


#define G113_
lifeCur-=G67_;
if (lifeCur<=0)
G257_();
else
image_blend=merge_color(c_black,col,lifeCur/lifeMax*brt);


#define G114_
var T0_,T1_;
T0_=0;
T1_=ds_list_size(argument1);
while (T0_<T1_)
{
G338_(argument0,ds_list_find_value(argument1,T0_),ds_list_find_value(argument1,T0_+1));
T0_+=2;
}
ds_list_destroy(argument1);
return -1;


#define G116_
var T0_;
T0_=G287_(argument0);
sprite_assign(argument0,T0_);
sprite_delete(T0_);
return argument0;


#define G118_
return lengthdir_x(argument0,argument1);


#define G119_
if (surface_exists(G159_))
{
draw_set_blend_mode(bm_subtract);
draw_surface(G159_,view_xview[0],view_yview[0]);
draw_set_blend_mode(bm_normal);
}


#define G121_
draw_rectangle(argument0,argument1,argument0+argument2,argument1+argument3,true);


#define G122_
var T0_;
T0_=ds_list_create();
ds_list_add(T0_,argument0);
ds_list_add(T0_,argument1);
ds_list_add(T0_,G254_(size*argument1,argument2));
return T0_;


#define G125_
return show_error(argument0,true);


#define G126_
rnfn=G172_;
dwfn=G172_;


#define G128_
var T0_;
T0_=G2_(argument0,argument1);
if (abs(T0_)<=argument2)
return argument1;
else
return argument0-sign(T0_)*argument2;


#define G129_
var T0_,T1_;
T1_=0;
T0_=ds_list_size(argument0);
while (T1_<T0_)
ds_list_destroy(ds_list_find_value(argument0,T1_));
ds_list_clear(argument0);
return -1;


#define G131_
if (G45_()-time>life)
G257_();
script_execute(StayOnArm);


#define G132_
draw_set_blend_mode(argument0);


#define G134_
with (G382_(argument0,argument1,G115_))
{
depth=-1000;
time=G45_();
size=argument2;
rot=argument3;
life=argument4;
dmg=argument5;
sprite_index=sFXWideBeam;
image_angle=rot;
with (oEnemy)
{
if (place_meeting(self.x,self.y,other.id))
G178_(id,other.dmg,0.0);
}
return id;
}


#define G135_
if (argument0!=-1)
draw_set_color(argument0);
if (argument1!=-1)
draw_set_alpha(argument1);
if (argument2!=-1)
draw_set_font(argument2);
if (argument3!=-1)
draw_set_halign(argument3);


#define G137_
var T0_;
T0_=1-(G45_()-time)/life;
image_index=min(image_number-1,floor(image_number*(1-T0_)));
image_xscale=size;
image_yscale=size;
image_alpha=0.7;
G292_();


#define G141_
return object_add();


#define G142_
var T0_;
T0_=G81_(argument0)-1;
while (T0_>=0)
{
if (G228_(argument0,T0_)=='/')
return G73_(argument0,T0_+1,G81_(argument0));
T0_-=1;
}
return argument0;


#define G144_
var T0_;
T0_=1-(G45_()-time)/life;
image_xscale=size;
image_yscale=size;
image_angle=rot;
image_alpha=T0_;
draw_set_blend_mode(bm_add);
G292_();
draw_set_blend_mode(bm_normal);


#define G145_
var T0_,T1_;
T1_=ds_list_size(argument0)-1;
T0_=ds_list_find_value(argument0,T1_);
ds_list_delete(argument0,T1_);
return T0_;


#define G146_
return point_direction(argument0,argument1,argument2,argument3);


#define G148_
{
G64_=48/sprite_get_width(sLight);
G194_=192/sprite_get_width(sLightHD);
G109_=merge_color(c_black,c_orange,0.35);
G138_=merge_color(c_orange,c_white,0.50);
G18_(oTorchLeft,'step-end',G94_);
G18_(oTorchLeft,'draw',G301_);
G18_(oTorchLeft,'create',G196_);
G18_(oTorchRight,'step-end',G94_);
G18_(oTorchRight,'draw',G301_);
G18_(oTorchRight,'create',G106_);
}


#define G151_
var T0_,T1_,T2_;
T0_=0;
T1_=ds_list_size(argument0);
while (T0_<T1_)
{
T2_=ds_list_find_value(argument0,T0_);
script_execute(ds_list_find_value(T2_,2),T2_);
T0_+=1;
}


#define G153_
if (argument1!=-1)
object_event_add(argument0,ev_create,0,script_get_name(argument1)+'();');
if (argument2!=-1)
object_event_add(argument0,ev_step,ev_step_normal,script_get_name(argument2)+'();');
if (argument3!=-1)
object_event_add(argument0,ev_draw,0,script_get_name(argument3)+'();');
return argument0;


#define G154_
var T0_,T1_,T2_;
T1_=0;
T2_=ds_list_size(argument0);
while (T1_<T2_)
{
T0_=ds_list_find_value(argument0,T1_);
ds_list_replace(T0_,3,G169_(ds_list_find_value(T0_,0)));
ds_list_replace(T0_,4,0);
T1_+=1;
}


#define G156_
if (argument0!=-1)
draw_set_color(argument0);
if (argument1!=-1)
draw_set_alpha(argument1);
if (argument2!=-1)
draw_set_font(argument2);


#define G158_
return make_color_hsv(argument0*255,argument1*255,argument2*255);


#define G160_
var T0_,T1_;
T1_=file_bin_open(argument0,1);
T0_=file_bin_size(T1_);
file_bin_close(T1_);
return T0_;


#define G162_
var T0_,T1_;
T0_=keyboard_check_direct(ds_list_find_value(argument0,1))*G403_;
if (ds_list_find_value(argument0,3)!=T0_)
{
ds_list_replace(argument0,3,T0_);
ds_list_replace(argument0,4,-1);
}
else
{
T1_=ds_list_find_value(argument0,4);
if (T1_==-1)
ds_list_replace(argument0,4,G67_);
else
ds_list_replace(argument0,4,T1_+G67_);
}


#define G163_
var T0_,T1_;
if (!file_exists(argument0))
return '';
T0_=file_text_open_read(argument0);
T1_=file_text_read_string(T0_);
file_text_close(T0_);
return T1_;


#define G164_
return point_distance(argument0,argument1,argument2,argument3);


#define G165_
with (G382_(argument0,argument1,G70_))
{
visible=false;
sprite_index=sLightHD;
image_xscale=argument4/sprite_get_width(sLightHD);
image_yscale=image_xscale;
image_alpha=1.0;
image_blend=merge_color(c_black,argument2,argument3);
lifeMax=argument5;
lifeCur=argument5;
col=argument2;
brt=argument3;
}


#define G168_
show_message(argument0);


#define G169_
var T0_,T1_;
T0_=ds_list_find_value(G275_,argument0);
T1_=ds_list_find_value(G179_,argument0);
if (T0_==G162_)
return keyboard_check_direct(T1_)*G403_;
else if (T0_==G48_)
return keycode_down(T1_)*G403_;
else
return mouse_check_button(T1_);


#define G170_
var T0_;
T0_=object_add();
if (argument0!=-1)
object_event_add(T0_,ev_create,0,script_get_name(argument0)+'();');
return T0_;


#define G171_
var T0_,T1_,T2_;
Cdw+=0.35;
T1_=arm.image_angle;
T0_=6;
T2_=T1_;
G348_(arm.x+G118_(T0_,T2_),arm.y+G212_(T0_,T2_),T2_,3.5);
G216_(arm.x+G118_(T0_,T2_),arm.y+G212_(T0_,T2_),c_white,0.15,T2_,0.15);


#define G173_
return ds_map_exists(argument0,argument1);


#define G174_
time=0;
color=c_black;
alpha=0.0;


#define G175_
var T0_;
T0_=file_text_open_append(argument0);
file_text_write_string(T0_,argument1);
file_text_close(T0_);
return argument1;


#define G177_
if (argument0!=-1)
draw_set_color(argument0);
if (argument1!=-1)
draw_set_alpha(argument1);
if (argument2!=-1)
draw_set_font(argument2);
if (argument3!=-1)
draw_set_halign(argument3);
if (argument4!=-1)
draw_set_valign(argument4);


#define G178_
G398_(argument0,argument1,argument2,argument0.x,argument0.y);


#define G180_
var T0_,T1_,T2_,T3_,T4_,T5_,T6_,T7_;
if (!surface_exists(G159_))
G159_=surface_create(view_wview[0],view_hview[0]);
if (surface_exists(G159_))
{
surface_set_target(G159_);
draw_clear_alpha(G236_(0.90,0.95,0.85),1.0);
draw_set_blend_mode(bm_subtract);
with (oChar)
{
T6_=round(x)-view_xview[0];
T5_=round(y)-view_yview[0];
draw_sprite_ext(sLight,0,T6_,T5_,2.0,2.0,0,G236_(0.8,0.8,0.8),1.0);
T3_=point_distance(T6_,T5_,G242_,G217_);
if (T3_>192)
{
T4_=point_direction(T6_,T5_,G242_,G217_);
T1_=192;
T2_=T4_;
T7_=T6_+round(G118_(T1_,T2_));
T0_=T5_+round(G212_(T1_,T2_));
}
else
{
T7_=G242_;
T0_=G217_;
}
draw_sprite_ext(sLight,0,T7_,T0_,1.5,1.5,0,G236_(0.5,0.5,0.5),0.65);
}
with (G70_)
draw_sprite_ext(sprite_index,image_index,round(x)-view_xview[0],round(y)-view_yview[0],image_xscale,image_yscale,image_angle,image_blend,image_alpha);
with (oTorch)
draw_sprite_ext(sLightHD,0,round(x)+rx-view_xview[0],round(y)+ry-view_yview[0],scl2,scl2,0,merge_color(c_black,col2,0.8+G277_()*0.2),1.0);
draw_set_blend_mode(bm_normal);
surface_reset_target();
}


#define G181_
with (G222_(G110_))
{
sprite_index=argument0;
dwfn=G292_;
return id;
}


#define G183_
var T0_,T1_,T2_;
T0_='[';
if (string_length(argument0)>0)
{
T0_+=G392_(ord(string_char_at(argument0,1)));
T1_=1;
T2_=string_length(argument0);
while (T1_<T2_)
{
T0_+=','+G392_(ord(string_char_at(argument0,T1_+1)));
T1_+=1;
}
}
return T0_+']';


#define G185_
{
G18_(G17_,'step-begin',G90_);
G18_(G17_,'step-end',G291_);
G18_(G17_,'draw',G62_);
G18_(G17_,'close',G374_);
with (G222_(G17_))
{
persistent=true;
depth=-5000;
}
}


#define G186_
{
}


#define G187_
var T0_;
T0_=1-(G45_()-time)/life;
image_xscale=size*(1+0.3*(1-T0_));
image_yscale=size*(1+0.3*(1-T0_));
image_blend=color;
image_alpha=G277_()*T0_;
draw_set_blend_mode(bm_add);
G292_();
draw_set_blend_mode(bm_normal);


#define G189_
G298_=-1;


#define G191_
G180_();


#define G195_
return directory_create(working_directory+'\'+string_replace(argument0,'/','\'));


#define G196_
image_speed=0;
image_index=G277_()*sprite_get_number(sprite_index);
rx=7;
ry=5;
scl1=G64_;
scl2=G194_;
col1=G109_;
col2=G138_;


#define G197_
var T0_,T1_,T2_,T3_;
with (G215_())
{
T2_=G394_();
G309_('loading ..');
T3_=0;
T0_=ds_list_size(argument1);
while (T3_<T0_)
{
G309_('loading .. '+G237_(T3_/T0_*100,1)+' %');
T1_=argument0+'/'+ds_list_find_value(argument1,T3_);
G338_(T2_,ds_list_find_value(argument1,T3_),caster_load(T1_));
T3_+=1;
}
ds_list_destroy(argument1);
io_clear();
G257_();
return T2_;
}


#define G198_
Cdw=G239_(argument0,'Cdw');
CurHp=G239_(argument0,'CurHp');
MaxHp=G239_(argument0,'MaxHp');
RegHp=G239_(argument0,'RegHp');
CurMp=G239_(argument0,'CurMp');
MaxMp=G239_(argument0,'MaxMp');
RegMp=G239_(argument0,'RegMp');
x=G239_(argument0,'x');
y=G239_(argument0,'y');
ysp=G239_(argument0,'ysp');
sprite_index=G239_(argument0,'sprite_index');
image_index=G239_(argument0,'image_index');
image_speed=G239_(argument0,'image_speed');
image_xscale=G239_(argument0,'image_xscale');


#define G199_


#define G200_
if (G173_(G381_,argument0))
{
argument0=G239_(G381_,argument0);
event_perform(ds_list_find_value(argument0,0),ds_list_find_value(argument0,1));
}
else
G125_(''+"'"+''+argument0+''+"'"+' event type does not exist .');


#define G203_
ds_list_add(argument0,argument1);
return argument1;


#define G204_
{
G18_(G123_,'step',G379_);
G18_(G123_,'draw',G96_);
}


#define G207_
{
G221_=caster_load('data/sounds/sfxGoldPunch.ogg');
G229_=caster_load('data/sounds/sfxGoldPunchHit.ogg');
}


#define G209_
if (keyboard_check(vk_control))
{
if (keyboard_check_pressed(ord('N')))
room_goto_next();
if (keyboard_check_pressed(ord('R')))
game_restart();
if (keyboard_check_pressed(vk_enter))
{
G238_=get_string('execute code:',G238_);
execute_string(G238_);
}
}
if (keyboard_check(vk_shift))
{
if (keyboard_check_pressed(vk_escape))
game_end();
if (keyboard_check_pressed(vk_enter))
window_set_fullscreen(!window_get_fullscreen());
}


#define G210_
image_speed=0;
MovAcc=45*G8_(0.35);
rot=G277_()*360;
hspd=0;
vspd=0;
Cdw=0;
CurHp=15*G8_(0.20);
MaxHp=CurHp;
Armour=0;
onHurt=G65_;
onDeath=G407_;


#define G212_
return lengthdir_y(argument0,argument1);


#define G213_
G92_(argument5,argument6);
draw_text(argument0-argument7,argument1,argument2);
draw_text(argument0+argument7,argument1,argument2);
draw_text(argument0,argument1-argument7,argument2);
draw_text(argument0,argument1+argument7,argument2);
G92_(argument3,argument4);
draw_text(argument0,argument1,argument2);


#define G215_
return G222_(G110_);


#define G216_
with (G382_(argument0,argument1,G296_))
{
depth=-1000;
time=G45_();
color=argument2;
size=argument3;
rot=argument4;
life=argument5;
sprite_index=sFXSpellThrust;
with (oChar)
other.dst=point_distance(arm.x,arm.y,other.x,other.y);
StayOnArm=G380_;
script_execute(StayOnArm);
return id;
}


#define G220_
var T0_,T1_,T2_,T3_;
if (G242_>=33&&G217_>=80&&G242_<449&&G217_<256)
{
T1_=G242_-33;
T3_=G217_-80;
T0_=floor(T1_/48);
T2_=floor(T3_/48);
if (T1_-T0_*48<32&&T3_-T2_*48<32)
return T2_*9+T0_;
}
return -1;


#define G222_
return instance_create(0,0,argument0);


#define G224_
var T0_,T1_,T2_,T3_,T4_,T5_,T6_,T7_,T8_,T9_,T10_;
if (G324_(RMB))
{
T5_=G242_/view_wview[0];
T6_=G217_/view_hview[0];
G165_(view_xview[0]+G242_*G277_(),view_yview[0]+G217_*G277_(),G236_(G277_(),G277_(),G277_()),1.0,15+G277_()*85,1.0);
}
if (Cdw>0)
Cdw-=G67_;
CurHp=min(MaxHp,CurHp+(MaxHp*(RegHp*.01))*G67_);
CurMp=min(MaxMp,CurMp+(MaxMp*(RegMp*.01))*G67_);
if (G324_(LMB))
{
if (G225_!=-1)
{
T3_=ds_list_find_value(G358_,G225_);
T10_=ds_list_find_value(T3_,5);
if (Cdw<=0&&CurMp>=T10_)
{
CurMp-=T10_;
script_execute(ds_list_find_value(T3_,6));
}
}
}
if (G324_(RMB))
{
if (G375_!=-1)
{
T0_=ds_list_find_value(G358_,G375_);
T1_=ds_list_find_value(T0_,5);
if (Cdw<=0&&CurMp>=T1_)
{
CurMp-=T1_;
script_execute(ds_list_find_value(T0_,6));
}
}
}
T7_=place_meeting(x,y+1,oBlock);
if (!T7_)
ysp=min(500,ysp+grv*G67_);
if (G347_(key_jump)||G347_(key_jump2))
{
if (T7_)
ysp=-320;
}
else if (!G324_(key_jump)&&!G324_(key_jump2)&&ysp<-160)
ysp=-160;
if (T7_)
sprite_index=sChar;
else
sprite_index=sCharJump;
T4_=G324_(key_rg)-G324_(key_lf);
if (T4_!=0)
{
T2_=x+100*T4_*G67_;
if (!place_meeting(T2_,y,oBlock))
{
x=T2_;
image_xscale=sign(T4_);
image_speed=13*G67_;
}
}
else
{
image_speed=0;
image_index=0;
}
T8_=y+ysp*G67_;
T9_=instance_place(x,T8_,oBlock);
if (T9_!=-4)
{
if (ysp<0)
y=T9_.y-sprite_get_yoffset(T9_.sprite_index)+sprite_get_height(T9_.sprite_index)+sprite_get_yoffset(sCharMask)-1;
else
y=T9_.y-sprite_get_yoffset(T9_.sprite_index)-sprite_get_height(sCharMask)+sprite_get_yoffset(sCharMask)+1;
ysp=0;
}
else
y=T8_;
if (G347_(MMB))
{
x=view_xview[0]+G242_;
y=view_yview[0]+G217_;
}
G350_(x,y);
script_execute(ArmUpdate);
if (G347_(key_spells))
{
with (G321_)
G200_('step-end');
G253_();
}
if (G347_(key_use))
{
if (place_meeting(x,y,oWhiteDoor))
{
G231_(G244_);
room_goto_previous();
}
else if (place_meeting(x,y,oBlackDoor))
{
G231_(G244_);
room_goto_next();
}
}


#define G226_
if (argument0!=-1)
draw_set_color(argument0);
if (argument1!=-1)
draw_set_alpha(argument1);


#define G228_
return string_char_at(argument0,argument1+1);


#define G231_
var T0_;
T0_=ds_list_create();
ds_list_add(T0_,'Cdw');
ds_list_add(T0_,Cdw);
ds_list_add(T0_,'CurHp');
ds_list_add(T0_,CurHp);
ds_list_add(T0_,'MaxHp');
ds_list_add(T0_,MaxHp);
ds_list_add(T0_,'RegHp');
ds_list_add(T0_,RegHp);
ds_list_add(T0_,'CurMp');
ds_list_add(T0_,CurMp);
ds_list_add(T0_,'MaxMp');
ds_list_add(T0_,MaxMp);
ds_list_add(T0_,'RegMp');
ds_list_add(T0_,RegMp);
ds_list_add(T0_,'x');
ds_list_add(T0_,x);
ds_list_add(T0_,'y');
ds_list_add(T0_,y);
ds_list_add(T0_,'ysp');
ds_list_add(T0_,ysp);
ds_list_add(T0_,'sprite_index');
ds_list_add(T0_,sprite_index);
ds_list_add(T0_,'image_index');
ds_list_add(T0_,image_index);
ds_list_add(T0_,'image_speed');
ds_list_add(T0_,image_speed);
ds_list_add(T0_,'image_xscale');
ds_list_add(T0_,image_xscale);
G114_(argument0,T0_);


#define G233_
var T0_,T1_,T2_;
T1_=ds_map_create();
T0_=0;
T2_=ds_list_size(argument0);
while (T0_<T2_)
{
G338_(T1_,ds_list_find_value(argument0,T0_),ds_list_find_value(argument0,T0_+1));
T0_+=2;
}
ds_list_destroy(argument0);
return T1_;


#define G236_
return make_color_rgb(argument0*255,argument1*255,argument2*255);


#define G237_
return string_format(argument0,1,argument1);


#define G239_
return ds_map_find_value(argument0,argument1);


#define G241_
arm.x=round(x)-image_xscale*2;
arm.y=round(y)+5;
arm.image_angle=point_direction(arm.x-view_xview[0],arm.y-view_yview[0],G242_,G217_);


#define G243_
var T0_;
T0_=ds_list_write(argument0);
ds_list_destroy(argument0);
return T0_;


#define G248_
mask_index=ds_list_find_value(__TempMask,0);
image_angle=ds_list_find_value(__TempMask,1);
ds_list_destroy(__TempMask);


#define G249_
var T0_,T1_,T2_;
T0_=ds_list_find_value(argument0,0);
T2_=ds_list_find_value(argument0,1);
T1_=ds_list_find_value(argument0,2);
if (argument1>=0&&argument1<T0_&&argument2>=0&&argument2<T2_)
return ds_list_find_value(T1_,argument1*T2_+argument2);
else
return G125_('out of bounds array access ['+string(argument1)+','+string(argument2)+']');


#define G251_
var T0_,T1_,T2_;
T0_=ds_list_find_value(argument0,0);
T1_=ds_list_find_value(argument0,1);
T2_=ds_list_find_value(argument0,2);
if (argument1>=0&&argument1<T0_&&argument2>=0&&argument2<T1_)
{
ds_list_replace(T2_,argument1*T1_+argument2,argument3);
return argument3;
}
else
return G125_('out of bounds array access ['+string(argument1)+','+string(argument2)+']');


#define G252_
with (G382_(argument0,argument1,G389_))
{
depth=-1000;
time=G45_();
color=argument2;
size=argument3;
life=argument4;
sprite_index=sFXBeam;
return id;
}


#define G253_
var T0_,T1_,T2_,T3_,T4_,T5_,T6_;
G150_=false;
screen_redraw();
T1_=sprite_create_from_screen(0,0,view_wview[0],view_hview[0],0,0,0,0);
G150_=true;
G354_();
T4_=true;
while (T4_)
{
with (G17_)
G200_('step-begin');
with (G232_)
G200_('step-end');
with (oChar)
{
if (G347_(ESC)||G347_(key_spells))
T4_=!T4_;
}
if (!T4_)
break;
T3_=G220_();
if (T3_!=-1)
{
if (ds_list_find_value(G413_,T3_))
G14_('locked');
else
G104_(ds_list_find_value(G358_,T3_));
}
else
G189_();
if (G347_(LMB))
{
if (T3_!=-1)
{
if (!ds_list_find_value(G413_,T3_))
{
if (G225_==T3_)
G225_=-1;
else
G225_=T3_;
}
}
}
if (G347_(RMB))
{
if (T3_!=-1)
{
if (!ds_list_find_value(G413_,T3_))
{
if (G375_==T3_)
G375_=-1;
else
G375_=T3_;
}
}
}
draw_sprite(T1_,0,0,0);
draw_sprite(sBackSpells,0,0,0);
T5_=0;
while (T5_<4)
{
T6_=0;
while (T6_<9)
{
T2_=T5_*9+T6_;
T0_=0;
if (G225_==T2_)
{
if (G375_==T2_)
T0_=3;
else
T0_=1;
}
else if (G375_==T2_)
T0_=2;
G397_(33+T6_*48,80+T5_*48,ds_list_find_value(G358_,T2_),ds_list_find_value(G413_,T2_),T0_);
T6_+=1;
}
T5_+=1;
}
G362_();
draw_sprite(sPointer,0,G242_,G217_);
screen_refresh();
sleep(1000/60);
if (G299_)
break;
}
G354_();


#define G254_
var T0_,T1_;
T0_=(ds_list_create());
T1_=0;
while (T1_<argument0)
{
ds_list_add(T0_,argument1);
T1_+=1;
}
return T0_;


#define G255_
if (argument1!=-1)
object_event_add(argument0,ev_create,0,script_get_name(argument1)+'();');
return argument0;


#define G256_
if (argument2)
{
view_xview[0]=G387_(0,room_width-wd,round(argument0-hw));
view_yview[0]=G387_(0,room_height-ht,round(argument1-hh));
}
else
{
view_xview[0]=round(argument0-hw);
view_yview[0]=round(argument1-hh);
}


#define G257_
instance_destroy();
return G319_;


#define G259_
if (argument2==0)
argument2=0.5;
draw_sprite_ext(sprite_index,image_index,round(x+argument0),round(y+argument1),image_xscale,image_yscale,image_angle,c_black,argument2);


#define G261_
if (argument0<0)
return min(0,argument0+argument1);
else
return max(0,argument0-argument1);


#define G263_
G92_(color,alpha);
G16_(view_xview[0],view_yview[0],view_wview[0],view_hview[0]);


#define G264_
var T0_,T1_,T2_,T3_;
T2_=file_bin_open(argument0,0);
T3_=(ds_list_create());
T1_=0;
T0_=file_bin_size(T2_);
while (T1_<T0_)
{
ds_list_add(T3_,file_bin_read_byte(T2_));
T1_+=1;
}
file_bin_close(T2_);
return T3_;


#define G265_
var T0_,T1_;
T0_=0;
T1_=ds_list_size(argument0);
while (T0_<T1_)
{
ds_list_add(argument1,ds_list_find_value(argument0,T0_));
T0_+=1;
}
return argument1;


#define G266_
{
G356_=caster_load('data/sounds/sfxLightSpell.ogg');
caster_loop(caster_load('data/sounds/atmCave.ogg'),1.0,1.0);
}


#define G270_
if (G45_()-time>life)
G257_();


#define G271_
var T0_;
T0_=ds_list_create();
ds_list_add(T0_,'Cdw');
ds_list_add(T0_,0);
ds_list_add(T0_,'CurHp');
ds_list_add(T0_,35);
ds_list_add(T0_,'MaxHp');
ds_list_add(T0_,35);
ds_list_add(T0_,'RegHp');
ds_list_add(T0_,0.5);
ds_list_add(T0_,'CurMp');
ds_list_add(T0_,35);
ds_list_add(T0_,'MaxMp');
ds_list_add(T0_,35);
ds_list_add(T0_,'RegMp');
ds_list_add(T0_,2.0);
ds_list_add(T0_,'x');
ds_list_add(T0_,-1);
ds_list_add(T0_,'y');
ds_list_add(T0_,-1);
ds_list_add(T0_,'ysp');
ds_list_add(T0_,0);
ds_list_add(T0_,'sprite_index');
ds_list_add(T0_,sChar);
ds_list_add(T0_,'image_index');
ds_list_add(T0_,0);
ds_list_add(T0_,'image_speed');
ds_list_add(T0_,0);
ds_list_add(T0_,'image_xscale');
ds_list_add(T0_,1.0);
return G233_(T0_);


#define G272_
var T0_,T1_;
T1_=G163_(argument0);
sleep(1);
if (T1_!='')
{
T0_=(ds_list_create());
ds_list_read(T0_,T1_);
return T0_;
}
return -1;


#define G274_
{
G18_(G389_,'step',G270_);
G18_(G389_,'draw',G187_);
}


#define G276_
var T0_;
T0_=1-(G45_()-time)/life;
image_xscale=size*(1+0.3*(1-T0_));
image_yscale=size*(1+0.3*(1-T0_));
image_blend=color;
image_alpha=T0_*0.65;
image_angle=rot;
draw_set_blend_mode(bm_add);
G292_();
draw_set_blend_mode(bm_normal);


#define G277_
return random(1);


#define G279_
return G151_(G208_);


#define G280_
var T0_,T1_,T2_,T3_,T4_,T5_,T6_;
T0_=4;
T4_=G166_+T0_*2;
T2_=G258_+T0_*2;
T5_=G242_+(sprite_get_width(sPointer)-sprite_get_xoffset(sPointer))+4;
T6_=G217_-round(T2_/2);
if (T5_+T4_+T0_<view_wview[0])
T6_=G387_(T0_,view_hview[0]-T0_-T2_,T6_);
else
{
if (G217_<view_hview[0]/2)
{
T6_=G217_+(sprite_get_height(sPointer)-sprite_get_yoffset(sPointer))+4;
T5_=min(T5_,view_wview[0]-T0_-T4_);
}
else
{
T6_=G217_-sprite_get_yoffset(sPointer)-T0_-T2_;
T5_=min(T5_,view_wview[0]-T0_-T4_);
}
}
G226_(c_black,0.65);
draw_roundrect(T5_,T6_,T5_+T4_,T6_+T2_,false);
T5_+=T0_;
T6_+=T0_;
G177_(G332_,1.0,ft_stats,fa_left,fa_top);
draw_text(T5_,T6_,G147_);
T6_+=string_height(G147_);
T3_=G239_(G140_,G93_);
G226_(T3_,1.0);
if (G93_=='Common'||G93_=='Uncommon')
T1_=make_color_hsv(color_get_hue(T3_),color_get_saturation(T3_)*0.50,color_get_value(T3_)*0.15);
else
T1_=make_color_hsv(color_get_hue(T3_),color_get_saturation(T3_)*0.80,color_get_value(T3_)*0.80);
draw_text_color(T5_,T6_,G93_,T3_,T3_,T1_,T1_,1.0);
T6_+=string_height(G93_)+8;
G226_(c_ltgray,1.0);
if (G93_=='Legendary'||G93_=='Renown')
G391_(c_white);
draw_text(T5_,T6_,G9_);


#define G281_
var T0_,T1_,T2_,T3_,T4_,T5_;
T0_=sprite_create_from_screen(0,0,1,1,0,0,0,0);
sprite_delete(T0_);
T1_='data\sprites';
G195_(T1_);
T4_=0;
while (T4_<T0_)
{
if (sprite_exists(T4_))
{
T3_=sprite_get_name(T4_);
T2_=T1_+'\'+T3_;
if (filename_ext(T2_)!='.png')
T2_+='.png';
if (!file_exists(T2_))
{
T5_=G287_(T4_);
sprite_save_strip(T5_,T2_);
sprite_delete(T5_);
}
}
T4_+=1;
}


#define G282_
draw_sprite_ext(sprite_index,image_index,round(x),round(y),image_xscale,image_yscale,rot,image_blend,image_alpha);


#define G286_
return 1+2*argument0*G277_()-argument0;


#define G287_
var T0_,T1_,T2_,T3_,T4_,T5_,T6_,T7_,T8_;
T1_=sprite_get_width(argument0);
T6_=sprite_get_height(argument0);
T4_=surface_create(T1_,T6_);
surface_set_target(T4_);
draw_set_color(c_black);
draw_set_alpha(1.0);
T3_=sprite_get_xoffset(argument0);
T2_=sprite_get_yoffset(argument0);
T0_=0;
T8_=sprite_get_number(argument0);
while (T0_<T8_)
{
draw_clear(c_black);
draw_set_blend_mode_ext(bm_src_alpha,bm_zero);
draw_sprite(argument0,T0_,T3_,T2_);
draw_set_blend_mode_ext(bm_one,bm_one);
draw_rectangle(0,0,T1_,T6_,false);
if (T0_==0)
T7_=sprite_create_from_surface(T4_,0,0,T1_,T6_,0,0,T3_,T2_);
else
sprite_add_from_surface(T7_,T4_,0,0,T1_,T6_,0,0);
draw_clear(c_white);
draw_set_blend_mode_ext(bm_zero,bm_src_alpha);
draw_sprite(argument0,T0_,T3_,T2_);
if (T0_==0)
T5_=sprite_create_from_surface(T4_,0,0,T1_,T6_,0,0,T3_,T2_);
else
sprite_add_from_surface(T5_,T4_,0,0,T1_,T6_,0,0);
T0_+=1;
}
surface_reset_target();
surface_free(T4_);
draw_set_blend_mode(bm_normal);
sprite_set_alpha_from_sprite(T7_,T5_);
sprite_delete(T5_);
return T7_;


#define G288_
G18_(G70_,'step-begin',G113_);


#define G290_
return instance_exists(argument0);


#define G291_
if (G299_)
{
G299_=!G299_;
game_end();
}


#define G292_
draw_sprite_ext(sprite_index,image_index,round(x),round(y),image_xscale,image_yscale,image_angle,image_blend,image_alpha);


#define G293_
if (argument0!=-1)
draw_set_color(argument0);


#define G294_
with (G321_)
shake+=argument0;


#define G295_
var T0_,T1_;
G403_=(GetActiveWindow()==window_handle());
G100_();
if (view_enabled)
{
T1_=view_wview[0];
T0_=view_hview[0];
}
else
{
T1_=room_width;
T0_=room_height;
}
G242_=window_mouse_get_x()/window_get_width()*T1_;
G217_=window_mouse_get_y()/window_get_height()*T0_;


#define G297_
var T0_;
if (argument0=='')
return -1;
else
{
T0_=(ds_list_create());
ds_list_read(T0_,argument0);
return T0_;
}


#define G300_
get_string(argument0,argument1);


#define G301_
G292_();
draw_set_blend_mode(bm_add);
draw_sprite_ext(sLight,0,round(x)+rx,round(y)+ry,scl1,scl1,0,col1,1.0);
draw_set_blend_mode(bm_normal);


#define G303_
G345_=date_current_time();
G67_=0;


#define G304_
ds_map_clear(argument0);


#define G305_


#define G306_
draw_set_blend_mode(bm_normal);


#define G308_
draw_sprite(argument2,argument3,argument0,argument1);


#define G309_
var T0_,T1_;
if (view_enabled)
{
T1_=view_wview[0]*0.5;
T0_=view_hview[0]*0.5;
}
else
{
T1_=room_width*0.5;
T0_=room_height*0.5;
}
draw_clear(c_black);
G415_(c_white,1.0,G10_,fa_center,fa_center);
draw_text(T1_,T0_,argument0);
screen_refresh();
sleep(1);


#define G310_
if (argument0!=-1)
draw_set_color(argument0);
if (argument1!=-1)
draw_set_alpha(argument1);
if (argument2!=-1)
draw_set_font(argument2);


#define G313_
return ds_list_write(argument0);


#define G314_
var T0_,T1_,T2_;
Cdw+=1.0;
T2_=arm.image_angle;
T0_=6;
T1_=T2_;
G400_(arm.x+G118_(T0_,T1_),arm.y+G212_(T0_,T1_),T1_,35);
G216_(arm.x+G118_(T0_,T1_),arm.y+G212_(T0_,T1_),c_yellow,0.35,T1_,0.35);
G294_(8);


#define G316_
var T0_,T1_,T2_,T3_,T4_;
T2_=4;
T3_=G166_+T2_*2;
T0_=G258_+T2_*2;
T4_=G242_+(sprite_get_width(sPointer)-sprite_get_xoffset(sPointer))+4;
T1_=G217_-round(T0_/2);
if (T4_+T3_+T2_<view_wview[0])
T1_=G387_(T2_,view_hview[0]-T2_-T0_,T1_);
else
{
if (G217_<view_hview[0]/2)
{
T1_=G217_+(sprite_get_height(sPointer)-sprite_get_yoffset(sPointer))+4;
T4_=min(T4_,view_wview[0]-T2_-T3_);
}
else
{
T1_=G217_-sprite_get_yoffset(sPointer)-T2_-T0_;
T4_=min(T4_,view_wview[0]-T2_-T3_);
}
}
G226_(c_black,0.65);
draw_roundrect(T4_,T1_,T4_+T3_,T1_+T0_,false);
T4_+=T2_;
T1_+=T2_;
G177_(c_ltgray,1.0,ft_stats,fa_left,fa_top);
draw_text(T4_,T1_,G9_);


#define G320_
{
LMB=G71_(G388_);
RMB=G71_(G240_);
MMB=G71_(G262_);
ESC=G71_(G130_);
G18_(oChar,'step',G224_);
G18_(oChar,'draw',G292_);
}


#define G322_
var T0_,T1_,T2_,T3_,T4_,T5_,T6_,T7_,T8_;
draw_sprite(sOrb,0,argument0,argument1);
T6_=sprite_get_width(sOrbPower);
T8_=sprite_get_height(sOrbPower);
T0_=floor(T8_*argument2);
T3_=argument0+5;
T1_=argument1+6+T8_-1-T0_;
T4_=T6_;
T2_=0;
T7_=T8_-T0_;
draw_sprite_part(sOrbPower,0,T2_,T7_,T4_,T0_,T3_,T1_);
T5_=(G45_()*3) mod sprite_get_number(sOrbPowerShine);
draw_sprite_part(sOrbPowerShine,T5_,T2_,T7_,T4_,T0_,T3_,T1_);


#define G323_
var T0_;
{
G358_=(ds_list_create());
T0_=ds_list_create();
ds_list_add(T0_,sLightSpellIcon);
ds_list_add(T0_,'Weak Light Spell');
ds_list_add(T0_,G236_(0,0.60,0.60));
ds_list_add(T0_,'Common');
ds_list_add(T0_,'A simple light spell');
ds_list_add(T0_,1.0);
ds_list_add(T0_,G171_);
ds_list_add(G358_,T0_);
while (ds_list_size(G358_)<9)
{
T0_=ds_list_create();
ds_list_add(T0_,sGoldPunchSpellIcon);
ds_list_add(T0_,'Gold Punch');
ds_list_add(T0_,G236_(1.0,1.0,0.0));
ds_list_add(T0_,'Common');
ds_list_add(T0_,'Knock '+"'"+'em back into oblivion !');
ds_list_add(T0_,85.0/100);
ds_list_add(T0_,G314_);
ds_list_add(G358_,T0_);
}
while (ds_list_size(G358_)<18)
{
T0_=ds_list_create();
ds_list_add(T0_,sGoldPunchSpellIcon);
ds_list_add(T0_,'Gold Punch');
ds_list_add(T0_,G236_(1.0,1.0,0.0));
ds_list_add(T0_,'Uncommon');
ds_list_add(T0_,'Knock '+"'"+'em back into oblivion !');
ds_list_add(T0_,85.0/100);
ds_list_add(T0_,G314_);
ds_list_add(G358_,T0_);
}
while (ds_list_size(G358_)<27)
{
T0_=ds_list_create();
ds_list_add(T0_,sGoldPunchSpellIcon);
ds_list_add(T0_,'Gold Punch');
ds_list_add(T0_,G236_(1.0,1.0,0.0));
ds_list_add(T0_,'Renown');
ds_list_add(T0_,'Knock '+"'"+'em back into oblivion !');
ds_list_add(T0_,85.0/100);
ds_list_add(T0_,G314_);
ds_list_add(G358_,T0_);
}
while (ds_list_size(G358_)<36)
{
T0_=ds_list_create();
ds_list_add(T0_,sGoldPunchSpellIcon);
ds_list_add(T0_,'Gold Punch');
ds_list_add(T0_,G236_(1.0,1.0,0.0));
ds_list_add(T0_,'Legendary');
ds_list_add(T0_,'Knock '+"'"+'em back into oblivion !');
ds_list_add(T0_,85.0/100);
ds_list_add(T0_,G314_);
ds_list_add(G358_,T0_);
}
}


#define G324_
return ds_list_find_value(argument0,3);


#define G326_
if (G45_()-time>life)
G257_();


#define G327_
caster_play(argument0,1.0*G286_(0.15),1.0*G286_(0.15));


#define G328_
G111_(argument0,ds_list_write(argument1));
return argument1;


#define G329_
var T0_,T1_,T2_,T3_,T4_,T5_,T6_,T7_,T8_,T9_,T10_;
if (Cdw>0)
Cdw-=G67_;
T0_=true;
if (G290_(oChar))
{
T5_=oChar.x;
T8_=oChar.y;
if (point_distance(x,y,T5_,T8_)<150)
{
if (!collision_line(x,y,T5_,T8_,oBlock,false,true))
{
T3_=MovAcc*G67_;
T1_=point_direction(x,y,T5_,T8_);
T2_=T3_;
T4_=T1_;
hspd+=G118_(T2_,T4_);
vspd+=G212_(T2_,T4_);
T1_=point_distance(0,0,hspd,vspd);
T3_=point_direction(0,0,hspd,vspd);
T2_=T1_;
T9_=T3_;
T4_=G86_(T9_,T4_,45*G67_);
hspd=G118_(T2_,T9_);
vspd=G212_(T2_,T9_);
T0_=false;
}
}
}
if (T0_)
{
hspd=G261_(hspd,MovAcc*G67_);
vspd=G261_(vspd,MovAcc*G67_);
}
if (hspd!=0)
{
T7_=x+hspd*G67_;
if (place_meeting(T7_,y,oBlock))
{
hspd=-hspd*0.5;
rot=point_direction(0,0,hspd,vspd);
}
else
x=T7_;
}
if (vspd!=0)
{
T6_=y+vspd*G67_;
if (place_meeting(x,T6_,oBlock))
{
vspd=-vspd*0.5;
rot=point_direction(0,0,hspd,vspd);
}
else
y=T6_;
}
if (Cdw<=0)
{
image_angle=rot;
mask_index=sEyeBall;
with (instance_place(x,y,oChar))
{
other.Cdw+=0.35;
CurHp-=1;
effect_create_above(ef_flare,other.x,other.y,0,c_red);
}
image_angle=0;
mask_index=sEyeBallMoveMask;
}
if (hspd!=0||vspd!=0)
{
T10_=point_direction(0,0,hspd,vspd);
rot=G86_(rot,T10_,(45+abs(G2_(rot,T10_)))*G67_);
}


#define G330_
with (G382_(argument0,argument1,G341_))
{
depth=-1000;
time=G45_();
size=argument2;
life=argument3;
sprite_index=sFXFlesh;
return id;
}


#define G333_
var T0_;
T0_=G45_()*2*pi*3.5;
image_xscale=size*(1+cos(T0_)*0.20);
image_yscale=size*(1+sin(T0_)*0.20);


#define G336_
var T0_;
T0_=G2_(argument0,argument1);
if (abs(T0_)<=argument2)
return argument1;
else
return argument0-sign(T0_)*argument2;


#define G338_
if (ds_map_exists(argument0,argument1))
ds_map_replace(argument0,argument1,argument2);
else
ds_map_add(argument0,argument1,argument2);


#define G339_
G294_(8);
G134_(x+G118_(45,rot),y+G212_(45,rot),1.0,rot,1.0,dmg);
G327_(G229_);


#define G340_
file_delete('log.txt');


#define G342_
var T0_,T1_;
{
G18_(G13_,'room-start',G47_);
with (G222_(G13_))
{
persistent=true;
G225_=0;
G375_=-1;
G413_=(ds_list_create());
T1_=0;
T0_=ds_list_size(G358_);
while (T1_<T0_)
{
ds_list_add(G413_,true);
T1_+=1;
}
ds_list_replace(G413_,0,false);
ds_list_replace(G413_,27,false);
G244_=G271_();
}
}


#define G343_
return ds_list_write(argument0);


#define G346_
return (bbox_right<0||bbox_bottom<0||bbox_top>=room_height||bbox_left>=room_width);


#define G347_
return (ds_list_find_value(argument0,3)&&ds_list_find_value(argument0,4)==-1);


#define G348_
with (G382_(argument0,argument1,G54_))
{
depth=-125;
rot=argument2;
dmg=argument3;
spd=500*G286_(0.2);
sprite_index=sLightSpell;
image_angle=argument2;
image_speed=0;
size=G8_(0.2);
UpdateScaling=G333_;
script_execute(UpdateScaling);
caster_play(G356_,0.20*G286_(0.20),G286_(0.20));
NoFXFlag=0;
return id;
}


#define G349_
var T0_,T1_;
T1_=0;
T0_=ds_list_size(argument1);
while (T1_<T0_)
{
if (ds_list_find_value(ds_list_find_value(argument1,T1_),0)==key_id)
{
ds_list_destroy(ds_list_find_value(argument1,T1_));
ds_list_delete(argument1,T1_);
return true;
}
}
return false;


#define G350_
with (G321_)
{
x=argument0;
y=argument1;
}


#define G351_
script_execute(rnfn);


#define G353_
{
G159_=-1;
G116_(sLight);
G116_(sLightHD);
G18_(G321_,'step-end',G191_);
with (G222_(G399_))
persistent=true;
}


#define G354_
return G154_(G208_);


#define G355_
var T0_,T1_;
T0_=G163_(argument0);
if (T0_!='')
{
T1_=(ds_list_create());
ds_list_read(T1_,T0_);
return T1_;
}
return -1;


#define G357_
get_string(argument0,'');


#define G359_
var T0_;
T0_=ds_map_write(argument0);
ds_list_destroy(argument0);
return T0_;


#define G362_
if (G298_!=-1)
{
if (G298_==0)
G280_();
else
G316_();
}


#define G363_
var T0_,T1_;
T0_=0;
T1_=ds_list_size(argument0);
while (T0_<T1_)
ds_list_replace(argument0,T0_,argument1);


#define G364_
{
G18_(oEyeBall,'create',G210_);
G18_(oEyeBall,'step',G329_);
G18_(oEyeBall,'draw',G282_);
}


#define G365_
return keyboard_check_direct(argument0);


#define G366_
return (!ds_list_find_value(argument0,3)&&ds_list_find_value(argument0,4)==-1);


#define G367_
var T0_;
T0_=ds_list_create();
ds_list_add(T0_,mask_index);
ds_list_add(T0_,image_angle);
__TempMask=T0_;
mask_index=argument0;
image_angle=argument1;


#define G368_
var T0_,T1_,T2_;
if (ds_list_size(argument0)!=0)
{
T1_=string(ds_list_find_value(argument0,0));
T0_=1;
T2_=ds_list_size(argument0);
while (T0_<T2_)
{
T1_+=','+string(ds_list_find_value(argument0,T0_));
T0_+=1;
}
return T1_;
}
return '';


#define G369_
shake=max(0,shake-(shake*.35*G67_)-15*G67_);
if (shake>0)
G56_(x,y,bound,shake);
else
G256_(x,y,bound);


#define G370_
var T0_,T1_;
x+=G118_(spd*G67_,rot);
y+=G212_(spd*G67_,rot);
script_execute(UpdateScaling);
if (place_meeting(x,y,oBlock))
{
if (!NoFXFlag)
G252_(x,y,c_aqua,0.3,0.2);
G257_();
}
if (G346_())
G257_();
T1_=instance_place(x,y,oEnemy);
if (T1_!=noone)
{
G178_(T1_,dmg,0.0);
G252_(x,y,c_aqua,0.3,0.2);
G257_();
}
if (place_meeting(x,y,oLavaTop))
{
NoFXFlag=1;
depth=1500;
}
T0_=instance_place(x,y,oWasp);
if (T0_!=noone)
G386_(T0_);


#define G371_
G175_('log.txt',G392_(argument0)+chr(13)+'
');


#define G373_
return merge_color(c_black,argument0,argument1);


#define G374_
G299_=true;


#define G376_
return date_second_span(G6_,date_current_time())*1000;


#define G379_
var T0_,T1_;
x+=G118_(spd*G67_,rot);
y+=G212_(spd*G67_,rot);
if (place_meeting(x,y,oBlock))
{
if (!NoFXFlag)
script_execute(hit);
G257_();
}
if (G346_())
G257_();
T0_=instance_place(x,y,oEnemy);
if (T0_!=noone)
{
script_execute(hit);
G257_();
}
if (place_meeting(x,y,oLavaTop))
{
NoFXFlag=1;
depth=1500;
}
T1_=instance_place(x,y,oWasp);
if (T1_!=noone)
G386_(T1_);


#define G380_
with (oChar)
{
other.x=arm.x+G118_(other.dst,arm.image_angle);
other.y=arm.y+G212_(other.dst,arm.image_angle);
other.rot=arm.image_angle;
}


#define G382_
return instance_create(argument0,argument1,argument2);


#define G383_
var T0_;
T0_=object_add();
if (argument0!=-1)
object_event_add(T0_,ev_create,0,script_get_name(argument0)+'();');
if (argument1!=-1)
object_event_add(T0_,ev_step,ev_step_normal,script_get_name(argument1)+'();');
return T0_;


#define G385_
var T0_,T1_,T2_,T3_,T4_,T5_,T6_,T7_;
draw_sprite(sOrb,0,argument0,argument1);
T1_=sprite_get_width(sOrbHealth);
T6_=sprite_get_height(sOrbHealth);
T2_=ceil(T6_*argument2);
T4_=argument0+6;
T5_=argument1+7+T6_-1-T2_;
T3_=T1_;
T7_=0;
T0_=T6_-T2_;
draw_sprite_part(sOrbHealth,0,T7_,T0_,T3_,T2_,T4_,T5_);


#define G386_
with (argument0)
instance_destroy();


#define G387_
return min(max(argument2,argument0),argument1);


#define G391_
if (argument0!=-1)
draw_set_color(argument0);


#define G392_
return string_format(argument0,1,0);


#define G393_
var T0_,T1_;
T1_=0;
T0_=ds_list_size(argument0);
while (T1_<T0_)
{
str+=chr(ds_list_find_value(argument0,T1_));
T1_+=1;
}
return str;


#define G394_
return ds_map_create();


#define G396_
return script_execute(argument0);


#define G397_
var T0_,T1_,T2_,T3_;
T1_=ds_list_find_value(argument2,3);
T0_=G239_(G331_,T1_);
draw_sprite(T0_,argument3,argument0,argument1);
if (!argument3)
{
draw_sprite(ds_list_find_value(argument2,0),0,argument0+4,argument1+4);
if (argument4!=0)
{
if (argument4==1)
draw_sprite(sPointerIcon,0,argument0+32+8,argument1+16);
else if (argument4==2)
draw_sprite(sPointerIcon,1,argument0+32+8,argument1+16);
else
{
T2_=argument0+32+8;
T3_=argument1+16;
draw_sprite(sPointerIcon,0,T2_,T3_-8);
draw_sprite(sPointerIcon,1,T2_,T3_+8);
}
}
}


#define G398_
var T0_,T1_;
with (argument0)
{
T0_=Armour*(1-argument2);
T1_=1/power(2,T0_/35);
CurHp-=argument1*T1_;
if (CurHp<=0)
script_execute(onDeath);
else
script_execute(onHurt,argument3,argument4,argument1*T1_/MaxHp);
}


#define G400_
with (G382_(argument0,argument1,G123_))
{
depth=-125;
rot=argument2;
dmg=argument3;
spd=1350*G286_(0.2);
sprite_index=sGoldPunchSpell;
image_angle=argument2;
image_speed=0;
size=1.0;
G327_(G221_);
hit=G339_;
NoFXFlag=0;
return id;
}


#define G401_
var T0_,T1_,T2_,T3_,T4_,T5_;
with (oChar)
{
T3_=view_xview[0]+10;
T1_=view_yview[0]+view_hview[0]-10-sprite_get_height(sOrb);
G322_(T3_,T1_,max(0,CurMp/MaxMp));
T2_=T3_;
T4_=T1_-4-sprite_get_height(sOrb);
G385_(T2_,T4_,max(0,CurHp/MaxHp));
T0_=sprite_get_width(sOrb)+4;
T5_=round(sprite_get_height(sOrb)*0.5);
G177_(c_aqua,1.0,ft_stats,fa_left,fa_center);
draw_text(T3_+T0_,T1_+T5_,floor(max(0,CurMp)));
G391_(c_red);
draw_text(T2_+T0_,T4_+T5_,ceil(max(0,CurHp)));
}
if (G150_)
draw_sprite_ext(sPointer,0,view_xview[0]+G242_,view_yview[0]+G217_,1.0,1.0,0,c_white,0.35);


#define G402_
{
G18_(G341_,'step',G43_);
G18_(G341_,'draw',G137_);
}


#define G406_
var T0_;
T0_=ds_list_find_value(argument0,4);
if (T0_==-1)
return 0;
else
return T0_;


#define G407_
G330_(x,y,1.0,0.35);
G257_();


#define G408_
with (G222_(oChar))
{
ysp=0;
grv=700;
key_jump=G71_(G57_);
key_jump2=G71_(G246_);
key_lf=G71_(G315_);
key_rg=G71_(G260_);
key_spells=G71_(G79_);
key_use=G71_(G378_);
image_speed=0;
G198_(G244_);
G87_(x,y,true);
arm=G181_(sCharArm);
arm.depth=depth-1;
ArmUpdate=G241_;
script_execute(ArmUpdate);
G180_();
}


#define G409_
ds_list_clear(argument0);
return argument0;


#define G411_
if (argument0!=-1)
draw_set_color(argument0);
if (argument1!=-1)
draw_set_alpha(argument1);
if (argument2!=-1)
draw_set_font(argument2);
if (argument3!=-1)
draw_set_halign(argument3);


#define G415_
if (argument0!=-1)
draw_set_color(argument0);
if (argument1!=-1)
draw_set_alpha(argument1);
if (argument2!=-1)
draw_set_font(argument2);
if (argument3!=-1)
draw_set_halign(argument3);
if (argument4!=-1)
draw_set_valign(argument4);


#define G419_
var T0_;
T0_=ds_list_find_value(argument0,4);
if (T0_==-1)
return 0;
else
return T0_*(!ds_list_find_value(argument0,3));


#define main
globalvar G0_,G1_,G3_,G4_,G6_,G7_,G9_,G10_,G13_,G15_,G17_,G21_,G22_,G27_,G28_,G35_,G36_,G40_,G49_,G50_,G52_,G53_,G54_,G57_,G59_,G60_,G64_,G67_,G70_,G74_,G79_,G80_,G82_,G93_,G95_,G97_,G98_,G99_,G101_,G109_,G110_,G115_,G117_,G120_,G123_,G124_,G127_,G130_,G133_,G136_,G138_,G139_,G140_,G143_,G147_,G149_,G150_,G152_,G155_,G157_,G159_,G161_,G166_,G167_,G172_,G176_,G179_,G182_,G184_,G188_,G190_,G192_,G193_,G194_,G201_,G202_,G205_,G206_,G208_,G211_,G214_,G217_,G218_,G219_,G221_,G223_,G225_,G227_,G229_,G230_,G232_,G234_,G235_,G238_,G240_,G242_,G244_,G245_,G246_,G247_,G250_,G258_,G260_,G262_,G267_,G268_,G269_,G273_,G275_,G278_,G283_,G284_,G285_,G289_,G296_,G298_,G299_,G302_,G307_,G311_,G312_,G315_,G317_,G318_,G319_,G321_,G325_,G331_,G332_,G334_,G335_,G337_,G341_,G344_,G345_,G352_,G356_,G358_,G360_,G361_,G372_,G375_,G377_,G378_,G381_,G384_,G388_,G389_,G390_,G395_,G399_,G403_,G404_,G405_,G410_,G412_,G413_,G414_,G416_,G417_,G418_,LMB,RMB,MMB,ESC;
var T0_;
G6_=date_current_time();
G345_=date_current_time();
G67_=0;
G10_=font_add('Courier New',16,false,false,0,255);
G182_=G105_(-1,G55_,-1);
G404_=G105_(G199_,G305_,G5_);
G52_=G105_(G174_,G112_,G263_);
G319_=-1;
G172_=G51_;
G110_=G105_(G126_,G351_,G102_);
G321_=object_add();
G315_=0;
G205_=1;
G74_=2;
G260_=3;
G378_=4;
G95_=5;
G21_=6;
G4_=7;
G218_=8;
G192_=9;
G307_=10;
G223_=11;
G53_=12;
G206_=13;
G390_=14;
G117_=15;
G79_=16;
G35_=17;
G372_=18;
G99_=19;
G0_=20;
G127_=21;
G246_=22;
G167_=23;
G414_=24;
G412_=25;
G22_=26;
G120_=27;
G344_=28;
G59_=29;
G235_=30;
G157_=31;
G36_=32;
G302_=33;
G285_=34;
G245_=35;
G211_=36;
G384_=37;
G418_=38;
G40_=39;
G227_=40;
G311_=41;
G136_=42;
G234_=43;
G219_=44;
G130_=45;
G283_=46;
G57_=47;
G149_=48;
G268_=49;
G7_=50;
G377_=51;
G250_=52;
G202_=53;
G410_=54;
G152_=55;
G60_=56;
G318_=57;
G395_=58;
G325_=59;
G1_=60;
G101_=61;
G317_=62;
G273_=63;
G124_=64;
G230_=65;
G334_=66;
G417_=67;
G190_=68;
G133_=69;
G28_=70;
G27_=71;
G80_=72;
G214_=73;
G188_=74;
G352_=75;
G337_=76;
G416_=77;
G3_=78;
G155_=79;
G143_=80;
G184_=81;
G97_=82;
G269_=83;
G284_=84;
G193_=85;
G278_=86;
G139_=87;
G201_=88;
G267_=89;
G98_=90;
G49_=91;
G312_=92;
G176_=93;
G50_=94;
G335_=95;
G405_=96;
G361_=97;
G247_=98;
G289_=99;
G388_=100;
G240_=101;
G262_=102;
G179_=(ds_list_create());
G275_=(ds_list_create());
G208_=(ds_list_create());
G13_=object_add();
T0_=ds_list_create();
ds_list_add(T0_,'Common');
ds_list_add(T0_,sSpellBorderWood);
ds_list_add(T0_,'Uncommon');
ds_list_add(T0_,sSpellBorderBronze);
ds_list_add(T0_,'Renown');
ds_list_add(T0_,sSpellBorderSilver);
ds_list_add(T0_,'Legendary');
ds_list_add(T0_,sSpellBorderGold);
G331_=G233_(T0_);
T0_=ds_list_create();
ds_list_add(T0_,'Common');
ds_list_add(T0_,G236_(0.60,0.40,0));
ds_list_add(T0_,'Uncommon');
ds_list_add(T0_,G236_(1.0,0.60,0.10));
ds_list_add(T0_,'Renown');
ds_list_add(T0_,G236_(1.0,1.0,1.0));
ds_list_add(T0_,'Legendary');
ds_list_add(T0_,G236_(1.0,1.0,0));
G140_=G233_(T0_);
G54_=object_add();
G123_=object_add();
G70_=object_add();
G150_=true;
G115_=object_add();
G296_=object_add();
G341_=object_add();
G389_=object_add();
G399_=object_add();
G232_=object_add();
G299_=false;
G17_=object_add();
G82_=0;
G242_=0;
G217_=0;
G75_();
G185_();
G63_();
G38_();
G323_();
G186_();
G320_();
G402_();
G33_();
G274_();
G207_();
G353_();
G148_();
G72_();
G342_();
G266_();
G29_();
G364_();
G288_();
G204_();
G42_();
G12_();
G26_();


