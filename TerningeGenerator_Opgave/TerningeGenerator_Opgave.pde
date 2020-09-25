//NY NØDVENDIG VIDEN:
//1.) random
//2.) array's
//3.) funktioner med og uden returtype
//4.) funktioner med og uden input

//OPGAVE: lav arrays, variabler til at gemme terningkast og fordeling af terningekast

void setup() {
  size(1200, 800);
  clear();
  textSize(30);
    

}

void draw() {
 
  text("TRYK PÅ 'k' FOR AT KASTE / OG 's' FOR AT SLETTE", 200, 100);
  
  

}

void keyPressed() {
   clear();


  if (key=='k') {
    
    //OPGAVE:  lav manglende funktion der laver 'terningekast'. 
    
    int kast =  int(random(1, 7));
    text("DIT KAST BLEV:" + kast, 500, 700);
   
   
  }
  int[] kast = new int[10];
  
  for(int x = 0 ; x <= 9 ; x++){
     kast[x] = x + 1;
  }
  println("Dit kast blev:" + kast);
    
  }

/*

  if (key == 's') {
    //OPGAVE:  lav manglende funktion til at et terningekast
    fjernSidsteKast();
  }
  
  //OPGAVE: lav manglende funktion til at fordelingen af terningekast. 
  tegnFordeling();
  //OPGAVE: lav manglende funktion der kan udskrive alle terningekast som tekst ...
  udskrivKast();
}
*/
