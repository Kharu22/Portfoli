//Programació de la variant multiplayer del joc

void MULTIPLAYER(){
  //escriu el contador de punts
text(player1,450,25);
text(player2,550,25);

//dibuixa les dues pales
rect(pospalax,(pospala-(tampala/2)),10,tampala);
uppala = (pospala + (tampala/2));
downpala = (pospala - (tampala/2));

rect(pospalax2,(pospala2-(tampala2/2)),10,tampala2);
uppala2 = (pospala2 + (tampala2/2));
downpala2 = (pospala2 - (tampala2/2));

//canvia les variables que mouen la pilota i suma punts al contador. també dibuixa la pilota

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
 pos = 500;
 posy =250;
 dir = 1;
 player2++;
}
}
if(pos>pospalax-(tam/2)){
if(posy > (downpala+(tam/2)) && posy < uppala){
dir = 0;

}else{
 pos = 500;
 posy =250;
 dir = 0;
 player1++;
 
}
}

if(posy<0+(tam/2)){
diry = 1;
}
if(posy>height-(tam/2)){
diry = 0;
}

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