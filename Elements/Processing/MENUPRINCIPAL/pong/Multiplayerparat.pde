//versio estatica del multiplayer, posa a 0 totes les variables necesaries, centra la pilota...

void MULTIPLAYERPARAT(){
 pos = 500;
 posy =250;
 player1=0;
 player2=0;
  
  text(player1,450,25);
text(player2,550,25);
 
text("Prem 'g' per començar",350,350);
rect(pospalax,(pospala-(tampala/2)),10,tampala);

rect(pospalax2,(pospala2-(tampala2/2)),10,tampala2);
ellipse(pos,posy,tam,tam);
}