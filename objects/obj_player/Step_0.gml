//Declarando as variáveis que serão os inputs para o movimento do player
var _up, _down, _left, _right;

//Definido quais teclas para cada input
_right = keyboard_check(ord("D"));
_left = keyboard_check(ord("A"));
_up = keyboard_check(ord("W"));
_down = keyboard_check(ord("S"));

//Definindo sua velocidade horizontal
velh = (_right - _left) * max_speed;

//Definindo sua velocidade vertical
velv = (_down - _up) * max_speed;