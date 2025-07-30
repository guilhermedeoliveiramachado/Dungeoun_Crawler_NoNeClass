//Guarda a arma que o player está usando se ele já não estiver com uma
if(other.arma == noone && delay_pegar_arma <=0){
   other.arma = id;
   pai = other.id; 
}
