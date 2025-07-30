//Inciando as variáveis

//velocidade horizontal
velh = 0;

//Velocidade vertical
velv = 0;

//Velocidade máxima do player
max_speed = 3;

//Velocidade geral do player
vel = 0;

//Variável para saber em qual direção o player está
move_dir = 0;

//Variável que guarda que arma eu estou utilizando
arma = noone;

//Função que ele pega a arma
usar_arma = function(){
    if(arma){
        var _tiro = mouse_check_button(mb_left);
        arma.atirar = _tiro;
        
        //variável que guarda a direção do ponteiro do mouse
        var _dir = point_direction(x, y, mouse_x, mouse_y);
        
        //Achando a posição da arma
        var _x = x + lengthdir_x(sprite_width / 2, _dir);
        var _y = y + lengthdir_y(sprite_width / 2, _dir);
        
        //pegar a arma
        arma.x = _x;
        arma.y = _y;
        
        //mudando o angulo da arma
        arma.image_angle = _dir;
    }
}

//Criando uma função que deixa o player se livrar da arma atual
joga_arma = function(){
    
    if(arma){
        
        //Input para ele poder jogar a arma fora
        var _jogar_arma = keyboard_check_released(ord("G"));
        
        //Checando se a arma está perto da parede para não poder jogá-la
        var _col;
        
        //Rodando o código de dentro da arma
        with(arma){
            _col = place_meeting(x, y, obj_block);
        }
        
        //Se ele não estiver colidindo, ele pode jogar a arma
        if(_jogar_arma && !_col){
            //Fazer a arma ser jogada
            arma.speed = 3;
            arma.direction = arma.image_angle;
            
            //Impedindo que a arma atire mesmo se for jogada
            arma.atirar = false;
            
            //A arma não vai ter mais dono
            arma.pai = noone;
            
            //Dando delay para a arma
            arma.delay_pegar_arma = room_speed * 2;
            
            //Desasociando o id da arma para poder pegar outra
            arma = noone;
        }
    }
}