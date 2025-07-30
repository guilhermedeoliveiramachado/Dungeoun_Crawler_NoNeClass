//Aplicando a função no step
atirando();

//Fazendo ele perder velocidade
if(speed>0){
    
    quicar_parede();
    
    speed *=0.9;
    
    if(speed<=0.1){
        speed = 0;
    }
}