//NY NØDVENDIG VIDEN:
//1.) random
//2.) array's
//3.) funktioner med og uden returtype
//4.) funktioner med og uden input

//OPGAVE: lav arrays, variabler til at gemme terningkast og fordeling af terningekast

//Setup

int antalKast = 100000;
int[] alleKast = new int[antalKast];
int kastBrugt = 0;


void setup() {
  size(1200, 800);
  clear();
  textSize(20);
  frameRate(69);
}


//Draw

void draw() {
 text("TRYK PÅ 'k' FOR AT KASTE / OG 's' FOR AT SLETTE", 200, 100);
  
}



void keyPressed() {
   
//Kast
  if (key=='k') {

    int kast = lavTerningeKast(1,6);
    alleKast[kastBrugt] = kast;
    kastBrugt ++;
    
   text("DIT KAST BLEV: " + kast, 800, 100);
   println("Dit kast var: " +(kast));


     
   
   
  }
}

void unskrivKast(){
   for(int i=0; i < alleKast.length; i++){
     if(alleKast[i] !=0){
       text("Kast " + (i + 1) + "blev: " + alleKast[i], 400, (50 + (i * 30)));
     }
   }
}
int lavTerningeKast(int min, int max) {
  int nyesteKast = (int(random(min, max + 1)));
  return nyesteKast;
}
   
   
  //OPGAVE: lav manglende funktion til at fordelingen af terningekast. 
 // tegnFordeling();
  //OPGAVE: lav manglende funktion der kan udskrive alle terningekast som tekst ...
  //udskrivKast();
