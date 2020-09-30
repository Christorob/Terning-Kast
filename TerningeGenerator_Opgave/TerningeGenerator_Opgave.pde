//NY NØDVENDIG VIDEN:
//1.) random
//2.) array's
//3.) funktioner med og uden returtype
//4.) funktioner med og uden input

//OPGAVE: lav arrays, variabler til at gemme terningkast og fordeling af terningekast

//Setup

int antalKast = 20;
int[] alleKast = new int[antalKast];
int kastBrugt = 0;
int kast;
int kastValue = kast;
int[] histogram = new int[kastValue];

void setup() {
  size(1200, 800);
  clear();
  textSize(20);
  frameRate(69);
  fill(0, 255, 50, 255);
}

//Draw
void draw() {
 text("TRYK PÅ 'k' FOR AT KASTE / OG 's' FOR AT SLETTE", 200, 100);
}

void udskrivKast(){
   for(int i=0; i < alleKast.length; i++){
     if(alleKast[i] !=0){
       text("Kast " + (i + 1) + " blev:", 800, (150 + (i * 30)));
       text(" " + alleKast[i], 950, (150 + (i*30)));
    }
  }
}

void keyPressed() {
   clear();
   
//Kast
  if (key=='k') {
    if(kastBrugt != antalKast && kastBrugt <= antalKast){
    int kast = lavTerningeKast(1,6);
    alleKast[kastBrugt] = kast;
    kastBrugt ++;    
    text("DIT KAST BLEV: " + kast, 800, 100);
    println("Dit kast var: " +(kast)); 
}
  else {
    text("Du har brugt alle dine kast!", 200, 200);
    fill(255, 50, 50, 255);
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
  //udskrivKast();
