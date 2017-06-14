//////////////////////////////////////////
//////FET//PER//L'ANDREU//BERMUDEZ////////
//////////////////////////////////////////

//Nota: la part d'opcions no està acabada.





//VARIABLES

//variables de menu

//0=menu principal
//1=multijugador
//2=un jugador
//3=opcions
//4=multijugador de veritat
//5=singleplayer de veritat
//6= score del singleplayer
int menu=0;

//menup és el menu principal
int menup=0;




int i = 0;



int velpala = 40;
int parar = 0;

//CONTADORS
//multiplayer
int player1 = 0;
int player2 = 0;

//singleplayer
int contador = 0;



//VARIABLES DE LA PALA DRETA
//
int ymouse = 0;
//tamany de la pala
int tampala = 150;
//punt superior de la pala
int uppala = 0;
// punt inferior de la pala
int downpala = 0; 
//centre de la pala
int pospala =250;
//posició X de la pala
int pospalax =990;

//VARIABLES DE LA PALA ESQUERRA
int ymouse2 = 0;
//tamany de la pala
int tampala2 = 150;
//punt superior de la pala
int uppala2 = 0;
// punt inferior de la pala
int downpala2 = 0; 
//centre de la pala
int pospala2 =250;
//posició X de la pala
int pospalax2 =0;


//VARIABLES DE LA PILOTA, APROFITADES DUNA PRACTICA ANTERIOR
// tamany de la pilota
int tam = 40;
// posició en les X de la pilota
int pos;
// velocitat
int vel = 7;
//direcció a les X. 1 dreta, 0 esquerra
int dir =1;
// direcció a les Y- 1 amunt, 0 avall (crec)
int diry =1;
// posició en les Y de la pilota
int posy;


//variables de les opcions

int menop = 0;
int R = 255;
int G = 255;
int B = 255;



//ESTABLIMENT DE LES CONDICIONS DE L'ENTORN
void setup(){
//tamany de la pantalla
size(1000,500);
stroke(255);
smooth();
textSize(30);
//establiment de la pilota al 
pos = width/2;
posy = height/2;
//----2
}



void draw(){
background(0);

if(menu==0){
  
//MENUPRINCIPAL----------
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
//MENUPRINCIPAL---------- 
//MULTIPLAYERPARAT-------
if(menu==1){
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
//MULTIPLAYERPARAT-------
//MULTIPLAYER------------
if(menu==4){
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
//MULTIPLAYER------------
//SINGLEPLAYERPARAT------
if(menu==2){
 pos = 500;
 posy =250;
contador = 0;
  
  text(player1,450,25);
text(player2,550,25);
 
text("Prem 'g' per començar",350,350);
rect(pospalax,(pospala-(tampala/2)),10,tampala);

rect(pospalax2,(pospala2-(tampala2/2)),10,tampala2);
ellipse(pos,posy,tam,tam);
}
//SINGLEPLAYERPARAT------
//SINGLEPLAYER-----------
if(menu==5){
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
//SINGLEPLAYER-----------
//SCORESINGLEP-----------
if(menu==6){
text("Enhorabona, has aconseguit tots aquests punts:",125,250);
text(contador,475,300);
text("prem M per tornar al menu principal",170,400);
}
//SCORESINGLEP-----------
//OPCIONS----------------
if(menu==3){
stroke(255);
fill(255);
background(0);
text("tria el color del joc",400,100);
text("Red",400,200);
text("Green",400,250);
text("blue",400,300);
rect(10,185,380,5);
rect(10,235,380,5);
rect(10,285,380,5);

if(menop == 0){
ellipse(450,200,5,5);

}
if(menop == 1){
ellipse(450,250,5,5);

}
if(menop == 2){
ellipse(450,300,5,5);

}


stroke(R,G,B);
fill(R,G,B);
rect(600,180,200,200);
}
//OPCIONS----------------





}









 
//tecles

void keyPressed()  
    {
      switch (key){
          case'm':
          case'M':
        
           menu = 0;
           break;
           
           case'w':
          case'W':
          if(menu==4){
           pospala2 = pospala2 - velpala;
          }
           break;
           
           case's':
          case'S':
           if(menu==4){
           pospala2 = pospala2 + velpala;
           }
           break;
           
           case'g':
          case'G':
          if(menu==1){
          menu = 4;
        }
         if(menu==2){
          menu = 5;
        }
           break;
           
      }
                   
      
     
      if (key == CODED)
      {
        
        if (keyCode == BACKSPACE)
        {
         if(menu==1){
          menu = 4;
        }
        }  
        
        if (keyCode == UP)
        {
         if(menu==0){
           if(menup!=0){
           menup--;
           }
         
         }          
           if(menu==3){
           if(menop!=0){
           menop--;
           }
         
         } 
          if(menu==4){
          pospala = pospala - velpala;
        }
        if(menu==5){
          pospala = pospala - velpala;
        }
      }
        
        else if (keyCode == DOWN)
        {
          if(menu==0){
           if(menup!=3){
           menup++;
           }
         
         }
         if(menu==4){
          pospala = pospala + velpala;
         }
          if(menu==5){
          pospala = pospala + velpala;
         }
          if(menu==3){
            if(menop != 3){
          menop = menop++;
            }
         }
        }
        
        }
       if (keyCode == ENTER)
        {
         if(menu==0){
           menu = (menup+1);
         
         }          
         
        
        }
    



}