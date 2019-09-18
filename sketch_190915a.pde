import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
Minim minim;
AudioPlayer player; 

import controlP5.*;
ControlP5 cp5;

PFont f;
void setup(){
size(400, 800);
 f = createFont("Arial",16,true); 
 minim=new Minim(this); 
 cp5 = new ControlP5(this);
 cp5.addButton("1").setPosition(40, 40).setSize(80, 20);
 cp5.addButton("2").setPosition(40, 80).setSize(80, 20);
 cp5.addButton("3").setPosition(40, 120).setSize(80, 20);
 cp5.addButton("Alert").setPosition(40, 160).setSize(80, 20);
 cp5.addButton("<> Open door").setPosition(40, 200).setSize(80, 20);
 cp5.addButton(">< Close door").setPosition(40, 240).setSize(80, 20);
}
void draw(){
  background(255);
  textFont(f,16);                  
  fill(0);                         
  text("Current Operation",200,100);   
}
void controlEvent(CallbackEvent event) {
  if (event.getAction() == ControlP5.ACTION_CLICK) {
    switch(event.getController().getAddress()) {
    case "/1":
      println("1st Floor");
      textFont(f,16);                  
      fill(0);         
      frameRate(1);
      text("1st floor",250,150);   
       player=minim.loadFile("ff.mp3");
       player.play(); 
      break;
      
    case "/2":
      println("2nd Floor");
      textFont(f,16);                  
      fill(0);                          
      frameRate(1);
      text("2nd Floor",250,150);   
      player=minim.loadFile("sf.mp3");
       player.play();
      break;
      
    case "/3":
      println("3rd Floor");
      textFont(f,16);                  
      fill(0);                         
      frameRate(1);
      text("3rd Floor",250,150);   
      player=minim.loadFile("tf.mp3");
       player.play();
      break;
      
      case "/Alert":
      println("Calling for Help");
      textFont(f,16);                  
      fill(0);      
      frameRate(1);
      text("Calling for Help",220,200);   
      player=minim.loadFile("help.mp3");
       player.play();
      break;
      
    case "/<> Open door":
      println("Opening Door");
      textFont(f,16);                  
      fill(0);                        
      frameRate(1);
      text("Opening the Door",220,200);   
      player=minim.loadFile("opendoor.mp3");
       player.play();
      break;
      
    case "/>< Close door":
      println("Closing Door");
      textFont(f,16);                  
      fill(0);                         
      text("Closing the Door",220,200);   
      player=minim.loadFile("close.mp3");
       player.play();
      break;
    }
  }
}
