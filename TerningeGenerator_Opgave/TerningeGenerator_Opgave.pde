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
int totalKast = 0;

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
  textSize(20);
  frameRate(69);
  fill(0, 255, 50, 255);
  text("TRYK PÅ 'k' FOR AT KASTE TERNINGEN & 's' FOR AT SLETTE DET SIDSTE KAST", 50, 50);
  

    //Histogram Text osv.     
noStroke();
  text("Fordelingen af dine kast, baseret på deres værdi:", 50, 120);  
  text("1'ere",  60, 700);
  text("2'ere", 165, 700);
  text("3'ere", 270, 700);
  text("4'ere", 375, 700);
  text("5'ere", 480, 700);
  text("6'ere", 585, 700);
}

//Draw
void draw() {
}

//Random Generator
int lavTerningeKast(int min, int max) {
  int nyesteKast = (int(random(min, max + 1)));
  
//Histogram værdi tracker
if(nyesteKast == 1){
  kastUno++;
}if(nyesteKast == 2){
  kastDos++;
}if(nyesteKast == 3){
  kastTres++;
}if(nyesteKast == 4){
  kastCuatro++;
}if(nyesteKast == 5){
  kastCinco++;
}if(nyesteKast == 6){
  kastSeis++;}
return nyesteKast;}

//Slet sidste kast
void sletSidsteKast(){
 if(alleKast[0] != 0 && alleKast[0] > 0){
       //1
   if(alleKast[kastBrugt-1] == 1){
     kastUno--;}
       //2
   if(alleKast[kastBrugt-1] == 2){
     kastDos--;}
       //3
   if(alleKast[kastBrugt-1] == 3){
     kastTres--;}
       //4
   if(alleKast[kastBrugt-1] == 4){
     kastCuatro--;}
       //5
   if(alleKast[kastBrugt-1] == 5){
     kastCinco--;}
       //6
   if(alleKast[kastBrugt-1] == 6){
     kastSeis--;}
       //0
     alleKast[kastBrugt-1] = 0;
    kastBrugt--;}
  }
//OPGAVE: lav manglende funktion til at fordelingen af terningekast. 
//Histogram tegning
void kastHistogram() {
  if(alleKast[0] != 0 && alleKast[0] > 0) {
    if(kastUno != 0) {
      text(kastUno + " Stk", 60, (660 - (20 * kastUno)));
      rect(55, (670 - (kastUno * 20)), 50, (20 * kastUno));}
    if(kastDos != 0) {
      text(kastDos + " Stk", 165, (660 - (20 * kastDos)));
      rect(160, (670 - (kastDos * 20)), 50, (20 * kastDos));}
    if(kastTres != 0) {
      text(kastTres + " Stk", 270, (660 - (20 * kastTres)));
      rect(265, (670 - (kastTres * 20)), 50, (20 * kastTres));}
    if(kastCuatro != 0) {
      text(kastCuatro + " Stk", 375, (660 - (20 * kastCuatro)));
      rect(370, (670 - (kastCuatro * 20)), 50, (20 * kastCuatro));}
    if(kastCinco != 0) {
      text(kastCinco + " Stk", 480, (660 - (20 * kastCinco)));
      rect(475, (670 - (kastCinco * 20)), 50, (20 * kastCinco));}
    if(kastSeis != 0) {
      text(kastSeis + " Stk", 585, (660 - (20 * kastSeis)));
      rect(580, (670 - (kastSeis * 20)), 50, (20 * kastSeis));}
  }
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
//OPGAVE: lav manglende funktion der kan udskrive alle terningekast som tekst ...
    text("TRYK PÅ 'k' FOR AT KASTE TERNINGEN & 's' FOR AT SLETTE DET SIDSTE KAST", 50, 50);
     noStroke();
      text("Fordelingen af dine kast, baseret på deres værdi:", 50, 120);  
      text("1'ere",  60, 700);
      text("2'ere", 165, 700);
      text("3'ere", 270, 700);
      text("4'ere", 375, 700);
      text("5'ere", 480, 700);
      text("6'ere", 585, 700);
      
//Kast
  if (key=='k') {
    if(kastBrugt != antalKast && kastBrugt <= antalKast){
    int kast = lavTerningeKast(1,6);
    alleKast[kastBrugt] = kast;
    kastBrugt ++;    
    text("DIT SENESTE KAST BLEV: " + kast, 700, 120);
    println("Dit kast var: " +(kast)); 
}
  else {
    fill(255, 50, 50, 255);
    text("DU HAR BRUGT ALLE DINE KAST!", 125, 200);
      println("Du har brugt alle dine kast!");
  }
}
//Slet kast
    if (key=='s'){
      sletSidsteKast();
      text("DIT SIDSTE KAST BLEV SLETTET!", 700, 120);
      if(kastBrugt != antalKast && kastBrugt <= antalKast){
        fill(0, 255, 50, 255);
    }
  } 
  if(((kastUno*1)+(kastDos*2)+(kastTres*3)+(kastCuatro*4)+(kastCinco*5)+(kastSeis*6)) == 69){
    text("Nice.", 150, 150);
    println("Nice.");
  }else{
      text("Not nice.", 50, 150);
  }
kastHistogram();
udskrivKast();
}
