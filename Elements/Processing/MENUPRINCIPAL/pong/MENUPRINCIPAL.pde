
//Això és el menu principal, es mou dintre del manu amb una variable 

void MENUPRINCIPAL(){
  
  stroke(255);
fill(255);

textSize(70);
text("Pong",430,100);
textSize(40);
text("Fet per l'Andreu Bermúdez",250,150);
textSize(30);
text("Multiplayer",400,250);
text("Singleplayer",400,300);
text("Opcions",400,350);
  
  
if(menup==0){
ellipse(370,240,15,15);

}
if(menup==1){
ellipse(370,290,15,15);

}
if(menup==2){
ellipse(370,340,15,15);


}
}