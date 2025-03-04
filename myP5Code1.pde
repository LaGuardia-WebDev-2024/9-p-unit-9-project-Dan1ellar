setup = function() {
    size(600, 400);
};

//Background Images
var oceanImage = loadImage("https://media.istockphoto.com/id/1438778545/vector/cartoon-underwater-landscape-with-sunken-sail-ship.jpg?s=612x612&w=0&k=20&c=kUs--C_pCHecAhqF-vl2kSpd0O542mtlFU3JwiqPqbo=");

var caveImage = loadImage("https://t3.ftcdn.net/jpg/06/24/70/62/360_F_624706283_gdOgdQowhkFrkWFvQYfXq0NzdxnoqhyK.jpg");

var shipImage = loadImage("https://cdn.glitch.global/a86d7338-ae38-4bfb-bcd7-80bc5aaa75ee/kentaro-yajima-inside3.jpg?v=1740755372364");

var cave2Image = loadImage("https://img.freepik.com/premium-photo/cartoon-underwater-scene-with-cave-door-generative-ai_958124-84681.jpg");

var lairImage = loadImage("https://clip.cafe/4x3/ursula-come-in-come-in-child.jpg");

var lair2Image = loadImage("https://lh3.googleusercontent.com/blogger_img_proxy/AEn0k_sz8XdIzsVX4T7nhSVwJInjjlWAAmb-0GhpOEFodwP_HJivKTdomPjw8CYuV_xovs3eBxrnyCPxNumv1QjJ403kTbUDbBS8cb3bqlwNuMdu8UglOKh7cxDP3QKKqVpcGn-24wIRfIeaKWP-7v-V8Tm_B-0RmdBRHW1xV2rwx1Ov8JhMUTQWEPG-CTu52acSg9OyBPzNLZ-4=s0-d");

var cave3Image = loadImage("https://t3.ftcdn.net/jpg/08/31/47/28/360_F_831472801_uSWuFj41Wxh96SexYhtbUWZ20vAtiUiY.jpg");

var mermaidImage = loadImage("https://img.freepik.com/premium-vector/cartoon-mermaid-other-sea-creatures-cave-beneath-waves-mermaids-cave-adventure-with-friends_642161-4274.jpg");


var pirateImage = loadImage("https://www.shutterstock.com/image-vector/wreck-pirate-ship-sunken-filibuster-600nw-1920099803.jpg");

var treasureImage = loadImage("https://media.istockphoto.com/id/995921392/vector/underwater-treasure-chest-at-the-bottom-of-the-ocean-gold-jewelry-on-the-seabed-underwater.jpg?s=612x612&w=0&k=20&c=Qs4gMGFG-9gMBYFhv7ADzgHZz0JxVjyTeEQ1akDXQy4=");



//Variable Declarations
var sceneImage = oceanImage;
var sceneText = "Where do you want to go? [Press s for ship and c for cave]";
var sharkShown = 0


draw = function(){
    
   drawScene();
   
   if(mousePressed){
   text("⟡", random(0,600), random(0,400))
   }

textSize(10);
textFont(createFont("Mogra"));
   if(keyPressed){
     if(key == 's'){
      sceneImage = shipImage; 
      sharkShown = 1
       sceneText = "Oh no sharks! [Press r to restart]";
     } 
     
     
     if(key == 'r'){
      sceneImage = oceanImage;
      sharkShown = 0
      sceneText = "Where do you want to go? [Press s for ship and c for cave]"
    } 
    
    if(key == 'c'){
      sceneImage = caveImage;
      sharkShown = 0
      sceneText = "Nothing here. Keep going? [Press f to continue]";
    } 
    
    if(key == 'f'){
      sceneImage = cave2Image;
      sharkShown = 0
      sceneText = "Left or right? [Press l or w]";
    } 
    
    if(key == 'l'){
      sceneImage = lairImage;
      sharkShown = 0
      sceneText = "You found the sea witch's lair. Continue [e] or go back[f]?";
    } 
    
    if(key == 'e'){
      sceneImage = lair2Image;
      sharkShown = 0
      sceneText = "She found you! [Press r to restart]";
    } 
    
      if(key == 'w'){
      sceneImage = cave3Image;
      sharkShown = 0
      sceneText = "Left or right? [Press t or z]";
    } 
    
    if(key == 't'){
      sceneImage = mermaidImage;
      sharkShown = 0
      sceneText = "You found the mermaids![Press r to restart]";
    } 
    
     if(key == 'z'){
      sceneImage = pirateImage;
      sharkShown = 0
      sceneText = "A pirate ship![Press g to continue]";
    } 
    
    if(key == 'g'){
      sceneImage = treasureImage;
      sharkShown = 0
      sceneText = "You found the treasure![Press r to restart]";
    } 
    
   }
  
};

var drawScene = function(){
    image(sceneImage, 0, 0, 600, 400);
     if(sharkShown) {drawShark(100,-50),
     drawShark(-200, 100)}
    
    fill(0,0,0);
    rect(0, 350, 600, 100);
      
    fill(255,255,255);
    textSize(20);
   text(sceneText, 10, 375);
};

var drawShark = function(sharkX, sharkY){
  fill(150, 176, 176);
  noStroke();
  ellipse(sharkX + 315, sharkY + 146, 200, 60);
  triangle(sharkX + 290, sharkY + 121, sharkX + 338, sharkY + 89, sharkX + 343, sharkY + 117);
  triangle(sharkX + 390, sharkY + 144, sharkX + 445, sharkY + 144, sharkX + 473, sharkY + 114);
  triangle(sharkX + 390, sharkY + 144, sharkX + 445, sharkY + 144, sharkX + 473, sharkY + 174);
  triangle(sharkX + 250, sharkY + 163, sharkX + 290, sharkY + 169, sharkX + 290, sharkY + 190);
  triangle(sharkX + 378, sharkY + 163, sharkX + 400, sharkY + 168, sharkX + 390, sharkY + 175);
  fill(200, 200, 200);
  ellipse(sharkX + 315, sharkY + 159, 175, 30);
  strokeWeight(10);
  stroke(0, 0, 0);
  point(sharkX + 234, sharkY + 142);
  stroke(120, 120, 120);
  strokeWeight(4);
  line(sharkX + 275, sharkY + 165, sharkX + 279, sharkY + 146);
  line(sharkX + 267, sharkY + 161, sharkX + 273, sharkY + 144);
  line(sharkX + 260, sharkY + 157, sharkX + 266, sharkY + 145)
  };



