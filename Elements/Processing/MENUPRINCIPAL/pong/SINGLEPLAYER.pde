
void SINGLEPLAYER(){
  //posa el contador
text(contador,450,25);
//dibuixa la pala del jugador
rect(pospalax,(pospala-(tampala/2)),10,tampala);
uppala = (pospala + (tampala/2));
downpala = (pospala - (tampala/2));

//dibuixa la pala de la maquina que segueix sempre la pilota
pospala2 = posy;
rect(pospalax2,(pospala2-(tampala2/2)),10,tampala2);
uppala2 = (pospala2 + (tampala2/2));
downpala2 = (pospala2 - (tampala2/2));


//aqui mou la pilota
if (dir==1 && diry==1){
 
ellipse(pos,posy,tam,tam);
pos = pos+vel;
posy = posy+vel;
}


if (dir==0 && diry==1){
  
ellipse(pos,posy,tam,tam);
pos = pos-vel;
posy = posy+vel;
}
///---

if (dir==0 && diry==0){
  
ellipse(pos,posy,tam,tam);
pos = pos-vel;
posy = posy-vel;
}


if (dir==1 && diry==0){
  
ellipse(pos,posy,tam,tam);
pos = pos+vel;
posy = posy-vel;
}



if(pos<pospalax2+(tam/2)){
dir = 1;
if(posy > (downpala2+(tam/2)) && posy < uppala2){
}else{

}
}
if(pos>pospalax-(tam/2)){
if(posy > (downpala+(tam/2)) && posy < uppala){
dir = 0;
contador++;
}else{
menu = 6;
 
}
}

if(posy<0+(tam/2)){
diry = 1;
}
if(posy>height-(tam/2)){
diry = 0;
}
//a partir d'aqui no serveix de res perque son les restes del multiplayer que mantinc per si de cas.
if(player1>=10){

stroke(255);  
  fill(255);
text("guanya el jugador 1",300,300);
text("Prem M per tornar al menu principal",250,400);
stroke(0);
fill(0);
i =1;

}

if(player2>=10){

stroke(255);  
  fill(255);
text("guanya el jugador 2",300,300);
text("Prem M per tornar al menu principal",250,400);
stroke(0);
fill(0);

}
}