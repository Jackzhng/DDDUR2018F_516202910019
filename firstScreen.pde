void firstScreen() {

  image(welcome,0,0,width,height);
  
  fill(20,50);
  rect(0,0,width,height);
  stroke(0, 0, 0);
  strokeWeight(1);
  rect(width/2+cp5W/2-1, height/4, 80, 80);
  image(Search, width/2+cp5W/2, height/4+1, 80, 80);
  inputStudentcode();

  println(studentcode);

}