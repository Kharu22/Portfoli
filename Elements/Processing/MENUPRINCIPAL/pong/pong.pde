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
MENUPRINCIPAL();

}
//MENUPRINCIPAL---------- 
//MULTIPLAYERPARAT-------
if(menu==1){
MULTIPLAYERPARAT();
}  
//MULTIPLAYERPARAT-------
//MULTIPLAYER------------
if(menu==4){
MULTIPLAYER();
}
//MULTIPLAYER------------
//SINGLEPLAYERPARAT------
if(menu==2){
SINGLEPLAYERPARAT();
}
//SINGLEPLAYERPARAT------
//SINGLEPLAYER-----------
if(menu==5){
SINGLEPLAYER();
}
//SINGLEPLAYER-----------
//SCORESINGLEP-----------
if(menu==6){
SCORESINGLEP();
}
//SCORESINGLEP-----------
//OPCIONS----------------
if(menu==3){
OPCIONS();
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