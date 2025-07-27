//Deixando a arma menor
image_xscale = 0.5;
image_yscale = 0.5;

//Velocidade do tiro

//Delay do tiro

//tiro
//Variável que verifica se ele pode atirar ou não
atirar = true;

//Delay para poder atirar
delay_shoot = 0;

//Criando uma função para atirar
atirando = function(){
    //A arma atira para a direção do mouse
    image_angle = point_direction(x, y, mouse_x, mouse_y);
    
    if(atirar){
        //Depois de acabar o delay, ele pode atirar
        delay_shoot--;
        
        if(delay_shoot<=0){
            //Resetando o delay
            delay_shoot = espera_tiro * room_speed;
            
            //Ele pode atirar
            
            //Achando a posição de onde ele vai atirar
            var _x = lengthdir_x(sprite_width, image_angle);
            var _y = lengthdir_y(sprite_width, image_angle);
            
            var _tiro = instance_create_layer(x+_x, y+_y, layer, tiro);
            
            //Dando velocidade ao tiro
            tiro.speed = velocidade;
            //Dando a direção do tiro
            _tiro.direction = image_angle;
        }
    }
}