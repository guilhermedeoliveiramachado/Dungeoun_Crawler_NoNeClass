//Sistema de colisão horizontal e movimentação

//Sign retorna o sinal de meu velh e do meu velv (1, -1 ou 0)
var _velh = sign(velh);

//Repito isso pela velocidade horizontal, sempre com o valor positivo
repeat (abs(velh)) {
    
	//Checar se o player está indo perto de alguém horizontalmente
    if(place_meeting(x+_velh, y, obj_block)){
        //Se eu colidir com a parede, minha velocidade horizontal para
        velh=0;
    }else{
        //Eu me move normalmente
        x+=_velh;
    }
}

//Movimentação e colisão vertical
var _velv = sign(velv);

repeat (abs(velv)) {
    if(place_meeting(x, y+_velv, obj_block)){
        velv=0;
    }else{
        y+=_velv;
    }
	
}