void secondScreen() {
  background(255);
  draw_card();
  Continue ();
}

void draw_card() {
  fill(card);
  imageMode(CENTER);
  image(Card, width/2, height/2);
  fill(255, 50);
  noStroke();
  rect(300, 390, 1200, 100);
  fill(0);
  textFont(font2);
  textSize(30);

  textAlign(LEFT);
  text("学号:  "+studentcode, 550, 450);
  text("卡号:  "+fromaccount, 550, 500);
  text("类别:  "+grade, 550, 550);
  text("性别:  "+gender, 550, 600);
  text("出生年: "+birth, 550, 650);

  textAlign(CENTER);
  text("（请核对是否是您的信息）", width/2, 880);


  image(forward, width-120, height/2-50);
  image(backward, 120, height/2-50);

  text("无误", width-120, height/2+100);
  text("有误", 120, height/2+100);
}

void Continue () {
  if (mouseX>10&&mouseX<200&&mouseY>height/2-100&&mouseY<height/2&&mousePressed) {
    screeeNum=1;
  } else if (mouseX>width-200&&mouseX<width-10&&mouseY>height/2-100&&mouseY<height/2&&mousePressed) {
    screeeNum=3;
  }
}