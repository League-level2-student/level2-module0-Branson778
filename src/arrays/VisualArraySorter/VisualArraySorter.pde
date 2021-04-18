/* Paste the code into a new Processing sketch and complete the steps. */

//1. create an array of ints. don't initialize it yet.
int[] intArray;
void setup() {
  //2. set the size of your window
  //  if you are using Processing 3, you cannot use variables
  //  because the developers don't know how programming is supposed to work.
size(550,550);
  //3. initialize your array with the built in width variable
  intArray = new int[width];
  //4. initialize the ints in the array with random numbers
  //   from 0 to the built in height variable
//for(int i = 0; i<intArray.length; i++){
//  intArray[i]= (int)random(height);
//}
  //5. call the noStroke() method
noStroke();
}

void draw() {
  //6. set the background color with background(r, g, b);
background(255,0,0);
  //7. set the color for your graph
fill(0,0,255);
  //8. draw a rectangle for each int in your array.
  //   the x value will be the current index in the array
  //   the y value will the height variable
  //   the width is 1 (one)
  //   the height is negative the value of the element at the current index of the array
for(int q = 0; q<intArray.length; q++){
  rect(q,height,1,-intArray[q]);
}

  //9. call the stepSort method
stepSort(intArray);
  //10. extract the code that randomizes the array into a method.
//done
  //11. call the method you made in step 10 when the mouse is pressed
if(mousePressed){
  println("testing");
randomizeArray();
}
}
void randomizeArray(){
  for(int i = 0; i<intArray.length; i++){
  intArray[i]= (int)random(height);
}
}
void stepSort(int[] arr) {
  for (int i = 1; i < arr.length; i++) {
    if (arr[i - 1] > arr[i]) {
      int t = arr[i];
      arr[i] = arr[i - 1];
      arr[i - 1] = t;
    }
  }
}
