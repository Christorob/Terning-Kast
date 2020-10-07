//NY NØDVENDIG VIDEN:
//1.) random
//2.) array's
//3.) funktioner med og uden returtype
//4.) funktioner med og uden input

//OPGAVE: lav arrays, variabler til at gemme terningkast og fordeling af terningekast

//Setup

int antalKast = 64;
int[] alleKast = new int[antalKast];
int kastBrugt = 0;
int kast;
int kastValue = kast;

// Histogram int

int kastUno = 0;
int kastDos = 0;
int kastTres = 0;
int kastCuatro = 0;
int kastCinco = 0;
int kastSeis = 0;

void setup() {
  size(1200, 800);
  clear();
  textSize(15);
  frameRate(69);
  fill(0, 255, 50, 255);
  text("TRYK PÅ 'k' FOR AT KASTE TERNINGEN & 's' FOR AT SLETTE DET SIDSTE KAST", 50, 100);
  

    //Histogram Text osv.
  noStroke();
  text("Fordelingen af dine kast, baseret på deres værdi:", 50, 730);  
  
  
}

//Draw
void draw() {

}

void udskrivKast(){
   for(int i=0; i < alleKast.length; i++){
     if(alleKast[i] !=0){
       if(i < 32){
       text("Kast " + (i + 1) + " blev:", 700, (150 + (i * 20)));
       text(" " + alleKast[i], 849, (150 + (i*20)));
       } else { 
       text("Kast " + (i + 1) + " blev:", 1000, (150 + (i * 20)-640));
       text(" " + alleKast[i], 1149, (150 + (i*20)-640));
       }
     }
  }
}

void keyPressed() {
   clear();
    text("TRYK PÅ 'k' FOR AT KASTE TERNINGEN & 's' FOR AT SLETTE DET SIDSTE KAST", 50, 100);
   
//Kast
  if (key=='k') {
    if(kastBrugt != antalKast && kastBrugt <= antalKast){
    int kast = lavTerningeKast(1,6);
    alleKast[kastBrugt] = kast;
    kastBrugt ++;    
    text("DIT KAST BLEV:         " + kast, 700, 100);
    println("Dit kast var: " +(kast)); 
}
  else {
    fill(255, 50, 50, 255);
    text("Du har brugt alle dine kast!", 200, 200);
      println("Du har brugt alle dine kast!");
    
    }
  udskrivKast();
}

  /*
  if (key=='s'){
    kastBrugt += -1;
    
  }
  */

}  
int lavTerningeKast(int min, int max) {
  int nyesteKast = (int(random(min, max + 1)));
  return nyesteKast;
   
    
}
//OPGAVE: lav manglende funktion til at fordelingen af terningekast. 
 // tegnFordeling();
  //OPGAVE: lav manglende funktion der kan udskrive alle terningekast som tekst ...
