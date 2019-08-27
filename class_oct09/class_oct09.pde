// class_oct09
// demonstrates use of loops and arrays
// by MJ
// 10/09/18
// released under MIT open source license

float dropRadius;

static final int DROPCOUNT = 5;

/* Add these lines as parameters for the "bucket" */
//static final float bucketHeight = 50;
//static final float bucketWidth = 50;

float[] dropY = new float[DROPCOUNT];
boolean dropActive[] = new boolean[DROPCOUNT]; // note: in java boolean array defaults to FALSE
float dropDelay[] = { 0, 3, 5, 7, 9 };
float dropX[] = { 30, 90, 123, 234, 500 };
float speed;

void setup() {
  
  size( 800, 600 );
  background( 128 );
  noStroke();
//  rectMode(CENTER); /* this makes collision and control much easier */
  dropRadius = 30;
  speed = 3;
  
}

void draw() {
  
  background( 128 );
  fill( 0, 0, 255 );
  
  // draw drops
  for( int i=0; i<DROPCOUNT; i++ ) {
    if( dropActive[i] == true ) {
      if( dropY[i] > height ) {
         // reset
          dropY[i] = -random( 0, 600 );
          dropX[i] = random( 0, width );
       }
       dropY[i] += speed;
       ellipse( dropX[i], dropY[i], dropRadius*2, dropRadius*2 );
    }
    else {
      dropActive[i] = true;
      dropY[i] = -random(0,600);
      dropX[i] = random(0, width);
    }
  }
  
    /* bucket draw */ 
//  rect( mouseX, height-(bucketHeight/2), bucketWidth, bucketHeight );
    
    /* bucket collision test */
  //if( dropY > height - bucketHeight ) {
  //  if( dropX > mouseX - (bucketWidth/2) &&
  //      dropX < mouseX + (bucketWidth/2) ) {
  //        println("score");
  //     }
  // }
   
 
}
