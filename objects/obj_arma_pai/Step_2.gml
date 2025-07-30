//Aplicando a função no step
atirando();

//Diminuindo o delay da arma
if(delay_pegar_arma>0){
    delay_pegar_arma--;
}

//Fazendo ele perder velocidade
if(speed>0){
    
    quicar_parede();
    
    speed *=0.9;
    
    if(speed<=0.1){
        speed = 0;
    }
}