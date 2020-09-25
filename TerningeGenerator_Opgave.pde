//NY NØDVENDIG VIDEN:
//1.) random
//2.) array's
//3.) funktioner med og uden returtype
//4.) funktioner med og uden input

//OPGAVE: lav arrays, variabler til at gemme terningkast og fordeling af terningekast

void setup() {
  size(600, 800);
  clear();
  text("TRYK på 'k' FOR AT KASTE", 50, 50);
}

void draw() {
}

void keyPressed() {
  clear();
  text("TRYK på 'k' FOR AT KASTE / OG 's' FOR AT SLETTE", 50, 50);

  if (key=='k') {
    //OPGAVE:  lav manglende funktion der laver 'terningekast'. 
    int kast = lavTerningeKast(1, 6);
    text("DIT KAST BLEV:" + kast, 50, 75);
  }

  if (key == 's') {
    //OPGAVE:  lav manglende funktion til at et terningekast
    fjernSidsteKast();
  }
  
  //OPGAVE: lav manglende funktion til at fordelingen af terningekast. 
  tegnFordeling();
  //OPGAVE: lav manglende funktion der kan udskrive alle terningekast som tekst ...
  udskrivKast();
}
