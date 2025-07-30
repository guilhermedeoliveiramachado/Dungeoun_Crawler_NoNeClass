//Deixando a arma menor
image_xscale = 0.5;
image_yscale = 0.5;

//Velocidade do tiro

//Delay do tiro

//tiro
//Variável que verifica se ele pode atirar ou não
atirar = false;

//Delay para poder atirar
delay_shoot = 0;

pai = noone;

//Criando uma função para atirar
atirando = function(){
    //Depois de acabar o delay, ele pode atirar
    delay_shoot--;
    
    if(atirar){
        if(delay_shoot<=0){
            //Resetando o delay
            delay_shoot = espera_tiro * room_speed;
            
            //Ele pode atirar
            
            //Achando a posição de onde ele vai atirar
            var _x = lengthdir_x(sprite_width, image_angle);
            var _y = lengthdir_y(sprite_height, image_angle);
            
            var _tiro = instance_create_layer(x+_x, y+_y, layer, tiro);
            
            //Dando velocidade ao tiro
            _tiro.speed = velocidade;
            //Dando a direção do tiro
            _tiro.direction = image_angle;
            
            //Empurando o Player
            //Ele faz o recuo só quando a arma tem dono
            if(pai){
                
                //Achando o valor de velh e velv com base na direção do tiro
                var _velh = lengthdir_x(knockback, image_angle);
                var _velv = lengthdir_y(knockback, image_angle);
                
                pai.velh -= _velh;
                pai.velv -= _velv;
            }
        }
    }
}

//Função que faz a arma quicar na parede para impedir que ele entre nela
quicar_parede = function(){
    
    //Batendo na parede e voltando para trás horizontalmente e verticalmente
    if(place_meeting(x+hspeed, y, obj_block)){
        hspeed*=-1;
    }
    
    if(place_meeting(x, y+vspeed, obj_block)){
        vspeed*=-1;
    }
}