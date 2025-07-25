//Declarando as variáveis que serão os inputs para o movimento do player
var _up, _down, _left, _right, _fire;

//Definido quais teclas para cada input
_right = keyboard_check(ord("D"));
_left = keyboard_check(ord("A"));
_up = keyboard_check(ord("W"));
_down = keyboard_check(ord("S"));
_fire = mouse_check_button_pressed(mb_left);

//Ajustando o movimento

//Descobrindo em que lado o player está se movendo
//Verificando se o player está tocando em alguma tecla
if(_up || _down || _left || _right){
    move_dir = point_direction(0, 0, (_right - _left), (_down - _up));
    //Fazendo ele ganhar velocidade ao andar com o lerp
    vel = lerp(vel, max_speed, 0.1);
}else{
    //Se ele não está tocando nenhuma tecla, ele para de se mover
    vel = lerp(vel, 0, 0.1);
}

//Criando o tiro
if(_fire){
    var _tiro = instance_create_layer(x, y, "Tiros", obj_shoot);
    //Definindo a velocidade do tiro
    _tiro.speed = 10;
    //Definindo a direção do tiro a partir do mouse
    _tiro.direction = point_direction(x, y, mouse_x, mouse_y);
}

//Vou dar a minha velocidade com base na direção que estou indo
velh = lengthdir_x(vel, move_dir);
velv = lengthdir_y(vel, move_dir);