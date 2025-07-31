// Inherit the parent event
event_inherited();

//Criando uma função para atirar
atirando = function(){
    //Depois de acabar o delay, ele pode atirar
    delay_shoot--;
    
    if(atirar){
        if(delay_shoot<=0){
            //Resetando o delay
            delay_shoot = espera_tiro * room_speed;
            
            //Ele pode atirar
            for(var i=0; i<qtdd_tiros; i++){
                //Achando a posição de onde ele vai atirar
                
                //Achando o ponto do angulo para ele cirar o tiro
                var _val_angle = 90 / (qtdd_tiros - 1);
                
                //Fazendo ele atirar em várias direções
                var _dir = -45 + (i*_val_angle);
                
                var _x = lengthdir_x(sprite_width, image_angle + _dir);
                var _y = lengthdir_y(sprite_height, image_angle + _dir);
                
                var _tiro = instance_create_layer(x+_x, y+_y, layer, tiro);
                
                //Dando velocidade ao tiro
                _tiro.speed = velocidade;
                //Dando a direção do tiro
                _tiro.direction = image_angle + random_range(-imprecisao, imprecisao) + _dir;
            }
            
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

