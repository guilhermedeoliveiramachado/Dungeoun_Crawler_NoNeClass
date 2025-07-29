//Declarando as variáveis que serão os inputs para o movimento do player
var _up, _down, _left, _right;

//Definido quais teclas para cada input
_right = keyboard_check(ord("D"));
_left = keyboard_check(ord("A"));
_up = keyboard_check(ord("W"));
_down = keyboard_check(ord("S"));

//Ajustando o movimento

//Descobrindo em que lado o player está se movendo
//Verificando se o player está tocando em alguma tecla com o XOR para prevenir que ele não ande na horizontal quando clicar no right e left e na vertical com o up e down ao mesmo tempo
if(_up xor _down or _left xor _right){
    move_dir = point_direction(0, 0, (_right - _left), (_down - _up));
    //Fazendo ele ganhar velocidade ao andar com o lerp
    vel = max_speed;
}else{
    //Se ele não está tocando nenhuma tecla, ele para de se mover
    vel = lerp(vel, 0, 0.1);
}

//Vou dar a minha velocidade com base na direção que estou indo
velh = lengthdir_x(vel, move_dir);
velv = lengthdir_y(vel, move_dir);

//Função que faz ele jogar a arma
joga_arma();