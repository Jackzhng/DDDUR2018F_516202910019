int [] food = {1000001, 1000002, 1000003, 1000005, 1000006, 1000007, 
  1000010, 1000011, 1000014, 1000015, 1000016, 1000019, 
  1000027, 1000029, 1000030, 1000031, 1000038, 1000039, 
  1000040, 1000041, 1000055, 1000056, 1000057, 1000060, 
  1000061, 1000062, 1000037, 1000103, 1000105, 1000108, 
  1000125, 1000132, 1000136, 1000157, 1000159, 1000175, 
  1000176, 1000178, 1000179, 1000180, 1000181, 1000182, 
  1000183, 1000185, 1000186, 1000187, 1000202, 1000204, 
  1000210, 1000211, 1000212, 1000213, 1000215, 1000216, 
  1000219, 1000220, 1000221, 1000222, 1000231, 1000232, 
  1000233, 1000241, 1000244, 1000246};
int [] water = {1000091, 1000095};
int [] sport ={1000190, 1000191, 1000193, 1000194, 1000195, 1000236, };
int [] transportation= {1000101};
int [] books={1000098, 1000137, 1000237};
int [] market = {1000037, 1000047, 1000143};

float food_money;
float water_money;
float sport_money;
float transportation_money;
float books_money;
float market_money;
float all_money;

int r=230;
int d=30;

void thirdScreen() {
  background(255);
  draw_diagram_Three();
  image(forward, width-120, height/2+50);
  image(backward, 120, height/2+50);
  Continue_Three ();
}

void getData_Three() {

  for (TableRow row : trade.findRows(fromaccount, "fromaccount")) {
    for (int i=0; i<food.length; i++) {
      if (row.getInt(1)==food[i]) {
        food_money=food_money+row.getInt(4);
      }
    }
    if (row.getInt(1)==water[1]||row.getInt(1)==water[0]) {
      water_money=water_money+row.getInt(4);
    }
    for (int i=0; i<sport.length; i++) {
      if (row.getInt(1)==sport[i]) {
        sport_money=sport_money+row.getInt(4);
      }
    }
    if (row.getInt(1)==transportation[0]) {
      transportation_money=transportation_money+row.getInt(4);
    }
    if (row.getInt(1)==books[1]||row.getInt(1)==books[0]||row.getInt(1)==books[2]) {
      books_money=books_money+row.getInt(4);
    }
    if (row.getInt(1)==market[1]||row.getInt(1)==market[0]||row.getInt(1)==market[2]) {
      market_money=market_money+row.getInt(4);
    }
  }
  all_money=food_money+water_money+sport_money+transportation_money+books_money+market_money;


  all_money=food_money+water_money+sport_money+transportation_money+books_money+market_money;
}

void draw_diagram_Three() {

  pushMatrix();
  translate(width/2, height/2-200);

  stroke(255);
  strokeWeight(1);
  fill(#C4FFFC);
  arc(0, 0, 400, 400, 0, (food_money/all_money)*2*PI);
  println(food_money);
  println(food_money/all_money);

  textFont(font2);
  textSize(20);
  text(food_money/all_money*100+"%", r*cos((food_money/all_money)*PI), r*sin((food_money/all_money)*PI));

  fill(#C4FFFC);
  rect(-150, 250, food_money/100, 40);
  fill(0);
  textSize(30);
  textFont(font2);
  text("饮食", -200, 280);
  text(int(food_money/100)+"元", food_money/100-100, 280);



  stroke(255);
  strokeWeight(1);
  fill(#C4FFE2);
  arc(0, 0, 400, 400, (food_money/all_money)*2*PI, ((food_money+water_money)/all_money)*2*PI);
  textSize(20);
  text(water_money/all_money*100+"%", (r+d)*cos(water_money/all_money*PI+(food_money/all_money)*2*PI), (r+d)*sin(water_money/all_money*PI+(food_money/all_money)*2*PI));

  fill(#C4FFE2);
  rect(-150, 300, water_money/100, 40);
  fill(0);
  textSize(30);
  textFont(font2);
  text("生活用水", -200, 330);
  text(int(water_money/100)+"元", water_money/100-100, 330);



  stroke(255);
  strokeWeight(1);
  fill(#F3FFC4);
  arc(0, 0, 400, 400, (food_money+water_money)/all_money*2*PI, (food_money+water_money+sport_money)/all_money*2*PI);
  textSize(20);
  text(sport_money/all_money*100+"%", (r+0)*cos(sport_money/all_money*PI+(food_money+water_money)/all_money*2*PI), (r+0)*sin(sport_money/all_money*PI+(food_money+water_money)/all_money*2*PI));

  fill(#F3FFC4);
  rect(-150, 350, sport_money/100, 40);
  fill(0);
  textSize(30);
  textFont(font2);
  text("运动健身", -200, 380);
  text(int(sport_money/100)+"元", sport_money/100-100, 380);




  stroke(255);
  strokeWeight(1);
  fill(#FFDEC4);
  arc(0, 0, 400, 400, (food_money+water_money+sport_money)/all_money*2*PI, (food_money+water_money+sport_money+transportation_money)/all_money*2*PI);
  textSize(20);
  text(transportation_money/all_money*100+"%", (r+d)*cos(transportation_money/all_money*PI+(food_money+water_money+sport_money)/all_money*2*PI), (r+d)*sin(transportation_money/all_money*PI+(food_money+water_money+sport_money)/all_money*2*PI));

  fill(#FFDEC4);
  rect(-150, 400, transportation_money/100, 40);
  fill(0);
  textSize(30);
  textFont(font2);
  text("交通出行", -200, 430);
  text(int(transportation_money/100)+"元", transportation_money/100-100, 430);



  fill(#C4EFFF);
  stroke(255);
  strokeWeight(1);
  arc(0, 0, 400, 400, (food_money+water_money+sport_money+transportation_money)/all_money*2*PI, (food_money+water_money+sport_money+transportation_money+books_money)/all_money*2*PI);
  textSize(20);
  text(books_money/all_money*100+"%", (r+0)*cos(books_money/all_money*PI+(food_money+water_money+sport_money+transportation_money)/all_money*2*PI), (r+0)*sin(books_money/all_money*PI+(food_money+water_money+sport_money+transportation_money)/all_money*2*PI));

  fill(#C4EFFF);
  rect(-150, 450, books_money/100, 40);
  fill(0);
  textSize(30);
  textFont(font2);
  text("书籍学习", -200, 480);
  text(int(books_money/100)+"元", books_money/100-100, 480);



  fill(#DAC4FF);
  stroke(255);
  strokeWeight(1);
  arc(0, 0, 400, 400, (food_money+water_money+sport_money+transportation_money+books_money)/all_money*2*PI, (food_money+water_money+sport_money+transportation_money+books_money+market_money)/all_money*2*PI);
  textSize(20);
  text(market_money/all_money*100+"%", (r+d)*cos(market_money/all_money*PI+(food_money+water_money+sport_money+transportation_money+books_money)/all_money*2*PI), (r+d)*sin(market_money/all_money*PI+(food_money+water_money+sport_money+transportation_money+books_money)/all_money*2*PI));

  fill(#DAC4FF);
  rect(-150, 500, market_money/100, 40);
  fill(0);
  textSize(30);
  textFont(font2);
  text("超市购物", -200, 530);
  text(int(market_money/100)+"元", market_money/100-100, 530);

  popMatrix();
}

void Continue_Three () {
  if (mouseX>10&&mouseX<200&&mouseY>height/2&&mouseY<height/2+100&&mousePressed) {
    screeeNum=2;
  } else if (mouseX>width-200&&mouseX<width-10&&mouseY>height/2&&mouseY<height/2+100&&mousePressed) {
    screeeNum=4;
  }
}