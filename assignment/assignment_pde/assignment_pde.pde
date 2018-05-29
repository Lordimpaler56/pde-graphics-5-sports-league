/**

 *Format
 
 * By Logan Cuthbertson 
 
 *
 
 * Assignment for Intro Comp Sci Class. Code creates ascii art.
 
 *
 
 */
 
PImage img;
float offset = 0;
float easing = 0.05;
 
 void setup() {
 background(267, 36, 310); // Background color as rgb values
   size(1280,720); // Canvas sized to image size
img = loadImage("NHLlogo.jpg");  // Load an image into the program
   
 }
 
 void draw() {
   
   String team1name = "Edmonton Oilers";
   String team2name = "Calgary Flames";
   String team3name = "Chicago Blackhawks";
   int team1wins =9;
   int team1losses =3;
   int team1points =team1wins*2+3;
   int team2wins =4;
   int team2losses =6;
   int team2points =team2wins*2+1;
   int team3wins =7;
   int team3losses =4;
   int team3points =team3wins*2+4;
   
   
   fill(255,255,1);
   textSize(20);
   text("The first team is called the "+ team1name ,30,30);
   text("The second team is called the "+ team2name ,30,50);
   text("The third team is called the "+ team3name ,30,70);
   text(" " ,30,90);
   text(" " ,30,110);
  
   text("Team                          \tWins   \tLosses   \tPoints ",30,130);
   text (team1name +"\t            "+ team1wins +"\t          "+ team1losses +"\t          "+ team1points ,30,150);
   text (team2name +"\t              "+ team2wins +"\t          "+ team2losses +"\t          "+ team2points ,30,170);
   text (team3name +"\t      "+ team3wins +"\t          "+ team3losses +"\t          "+ team3points ,30,190);
   
   image(img, 0, 0);  // Display at full opacity
  float dx = (mouseX-img.width/2) - offset;
  offset += dx * easing; 
  tint(255, 127);  // Display at half opacity
  image(img, offset, 0);
   
 }
