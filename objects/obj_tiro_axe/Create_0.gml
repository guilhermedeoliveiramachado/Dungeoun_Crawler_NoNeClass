// Inherit the parent event
event_inherited();

//Espera para poder aparecer o tiro;
espera = room_speed * .5;

//Variável para poder parar o tiro quando for necessário
vel = 0;

//Variável para rotacionar o tiro
rot = -10;

//Função para organização do tiro
organizar_tiro = function(){
    
    //Fazendo o tiro rotacionar
    image_angle+=rot;
    
    //Checando se eu tenho que esperar
    if(espera>0){
        espera--;
        
        //Checando se eu tenho velocidade
        if(speed !=0){
            //Salva a velocidade para poder atirar depois
            vel = speed;
            speed = 0;
        }
    }else{
        //Se a espera for igual a zero, o tiro pode ter velocidade
        speed = vel;
    }
    
}