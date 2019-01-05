import controlP5.*;

Table userInfo;
Table trade;
TableRow user;
Table merchant;


String studentcode;
String fromaccount ;


ControlP5 cp5;

PFont font1;
PFont font2;
PFont font3;


PImage Search;
PImage Map;
PImage welcome;
PImage Card;
PImage forward;
PImage backward;


int m =0;
int cp5W = 500;
int cp5H = 80;
int total_amount=574743358;
int student_number=30861;
int person_amount;
int screeeNum;
float average_amount;
int my_money=0;
int my_times;

int Yican_money;
int Ercan_money;
int Sancan_money;
int Sican_money;
int Wucan_money;
int Liucan_money;
int Hale_money;
int Hualian_money;

int Yican_times;
int Ercan_times;
int Sancan_times;
int Sican_times;
int Wucan_times;
int Liucan_times;
int Hale_times;
int Hualian_times;


boolean Over = false;
boolean belong;
boolean Click;

ControlEvent theEvent;

String Studentcode[];
String grade;
String gender;
String birth;


void setup() {

  frameRate(60);
  fullScreen();
  fill(200);

  font1 = createFont("arial", 15);
  font2 = createFont("微软雅黑", 20);
  font3 = createFont("微软雅黑", 10);

  textFont(font1, 10);

  Search = loadImage("搜索.png");
  Map = loadImage("画板 1-100.jpg");
  welcome = loadImage("交大.jpg");
  Card = loadImage("card.png");
  forward = loadImage("前进.png");
  backward = loadImage("后退.png");

  load_data();


  screeeNum=1;
  if (screeeNum==1) {
    firstScreen();
  }
}



void draw() {


  if (screeeNum==2  ) {
    secondScreen();
    cp5.hide();
  } else if (screeeNum==3  ) {
    thirdScreen();
    cp5.hide();
  } else if (screeeNum==4  ) {
    fourthScreen();
    cp5.hide();
  }
}

void controlEvent(ControlEvent theEvent) {


  if (theEvent.isAssignableFrom(Textfield.class)) {
    Textfield t = (Textfield)theEvent.getController();
    studentcode = t.getStringValue();
  }
  println(studentcode);
  search();
  getData();
  getData_Three();
}


void mouseOver(int x, int y, int area_width, int area_height) {
  if (mouseX>x  && mouseX<x + area_width && mouseY>y && mouseY<y+area_height) {
    Over = true;
  } else {
    Over = false;
  }
}

void load_data() {
  userInfo = loadTable("account.csv", "header");
  trade = loadTable("trade_part.csv", "header");
  merchant = loadTable("merchant.csv", "header");


  Studentcode = new String [30862];
  for (int i=0; i<userInfo.getRowCount(); i++) {
    Studentcode[i] = userInfo.getString(i, 1);
  }


  for (TableRow row : trade.findRows(fromaccount, "fromaccount")) {
    person_amount = person_amount + row.getInt(4);
  }
  print(person_amount);
}

void inputStudentcode() {
  cp5 = new ControlP5(this);

  cp5.addTextfield("put in your studentcode")
    .setPosition(width/2-cp5W/2, height/4)
    .setSize(cp5W, cp5H)
    .setFont(createFont("微软雅黑", 30))
    .setColorBackground(color(255, 255, 255, 100))
    .setColorCaptionLabel(color(255, 255, 255))
    .setFocus(false)
    .setColor(color(0, 0, 0))

    ;
}

void search() {

  for (int i=0; i<userInfo.getRowCount(); i++) {

    if (studentcode.equals(Studentcode[i])) {
      belong = true;
      break;
    } else {
      belong = false;
    }
  }


  if (belong) {
    TableRow user = userInfo.findRow(studentcode, "studentcode");
    println(user.getString("account"));
    grade = user.getString("type");
    gender =  user.getString("gender");
    fromaccount = user.getString("account");
    birth = user.getString("yearofbirth");
    screeeNum=2;
  } else {
    textSize(50);
    text("reInput", 100, 100);
  }
  //mouseOver(width/2+cp5W/2, height/4+1, 80, 80);
}
int times=0;
void getData() {

  my_money=0;
  my_times=0;

  Yican_money=0;
  Ercan_money=0;
  Sancan_money=0;
  Sican_money=0;
  Wucan_money=0;
  Liucan_money=0;
  Hale_money=0;
  Hualian_money=0;

  Yican_times=0;
  Ercan_times=0;
  Sancan_times=0;
  Sican_times=0;
  Wucan_times=0;
  Liucan_times=0;
  Hale_times=0;
  Hualian_times=0;
  for (int i=0; i<Yican.length; i++) {
    Yican_toaccount_times[i]=0;
    Yican_toaccount_money[i]=0;
  }
  for (int i=0; i<Ercan.length; i++) {
    Ercan_toaccount_times[i]=0;
    Ercan_toaccount_money[i]=0;
  }
  for (int i=0; i<Sancan.length; i++) {
    Sancan_toaccount_times[i]=0;
    Sancan_toaccount_money[i]=0;
  }
  for (int i=0; i<Sican.length; i++) {
    Sican_toaccount_times[i]=0;
    Sican_toaccount_money[i]=0;
  }
  for (int i=0; i<Wucan.length; i++) {
    Wucan_toaccount_times[i]=0;
    Wucan_toaccount_money[i]=0;
  }


  for (int i=0; i<Liucan.length; i++) {
    Liucan_toaccount_times[i]=0;
    Liucan_toaccount_money[i]=0;
  }


  for (TableRow row : trade.findRows(fromaccount, "fromaccount")) {


    if (row.getString(0).equals(fromaccount)) {
      my_money=my_money+row.getInt(4);

      times++;
      if (row.getInt(2)==30||row.getInt(2)==99) {
        Yican_money=Yican_money+row.getInt(4);
        Yican_times++;
        for (int i=0; i<Yican.length; i++) {

          if (row.getInt(1)==Yican[i]) {
            Yican_toaccount_times[i]++;
            Yican_toaccount_money[i]=Yican_toaccount_money[i]+row.getInt(4);
          }
        }
      } else if (row.getInt(2)==34||row.getInt(2)==269) {
        Ercan_money=Ercan_money+row.getInt(4);
        Ercan_times++;

        for (int i=0; i<Ercan.length; i++) {

          if (row.getInt(1)==Ercan[i]) {
            Ercan_toaccount_times[i]++;
            Ercan_toaccount_money[i]=Ercan_toaccount_money[i]+row.getInt(4);
          }
        }
      } else if (row.getInt(2)==36||row.getInt(2)==268) {
        Sancan_money=Sancan_money+row.getInt(4);
        Sancan_times++;
        for (int i=0; i<Sancan.length; i++) {
          if (row.getInt(1)==Sancan[i]) {
            Sancan_toaccount_times[i]++;
            Sancan_toaccount_money[i]=Sancan_toaccount_money[i]+row.getInt(4);
          }
        }
      } else if (row.getInt(2)==38||row.getInt(2)==267) {
        Sican_money=Sican_money+row.getInt(4);
        Sican_times++;
        for (int i=0; i<Sican.length; i++) {
          if (row.getInt(1)==Sican[i]) {
            Sican_toaccount_times[i]++;
            Sican_toaccount_money[i]=Sican_toaccount_money[i]+row.getInt(4);
          }
          continue;
        }
      } else if (row.getInt(2)==33||row.getInt(2)==265) {
        Wucan_money=Wucan_money+row.getInt(4);
        Wucan_times++;
        for (int i=0; i<Wucan.length; i++) {
          if (row.getInt(1)==Wucan[i]) {
            Wucan_toaccount_times[i]++;
            Wucan_toaccount_money[i]=Wucan_toaccount_money[i]+row.getInt(4);
          }
        }
      } else if (row.getInt(2)==266) {
        Liucan_money=Liucan_money+row.getInt(4);
        Liucan_times++;
        for (int i=0; i<Liucan.length; i++) {
          if (row.getInt(1)==Liucan[i]) {
            Liucan_toaccount_times[i]++;
            Liucan_toaccount_money[i]=Liucan_toaccount_money[i]+row.getInt(4);
          }
        }
      }
    }
  }
}



void draw_diagram(int [] arr, int arr_toaccount_times[], String [] name, int []arr_toaccount_money) {
  for (int i=0; i<arr.length; i++) {
    fill(0);
    textFont(font3);
    textAlign(LEFT);
    text(name[i], mouseX+10, mouseY+110+20*i);

    fill(0);
    stroke(0);
    strokeWeight(1);
    line(mouseX+60, mouseY+100, mouseX+60, mouseY+100+(arr.length*2+1)*10);

    fill(0);
    noStroke();
    rect( mouseX+60, mouseY+100+20*i, arr_toaccount_times[i]*10, 10);
    fill(255);
    textAlign(LEFT);
    textFont(font3);
    text(arr_toaccount_times[i], mouseX+60+arr_toaccount_times[i]*5, mouseY+110+20*i);



    fill(255);
    rect( mouseX+60+arr_toaccount_times[i]*10, mouseY+100+20*i, arr_toaccount_money[i]/50, 10);

    fill(0);
    textAlign(LEFT);
    textFont(font3);
    text(arr_toaccount_money[i]/100, mouseX+60+arr_toaccount_times[i]*10+arr_toaccount_money[i]/100, mouseY+110+20*i);
  }

  fill(0);
  rect(mouseX+60, mouseY+20*arr.length+120, 40, 20);
  fill(255);
  textAlign(CENTER);
  text("消费次数", mouseX+80, mouseY+20*arr.length+15+120);

  fill(255);
  rect(mouseX+150, mouseY+120+20*arr.length, 40, 20);
  fill(0);
  textAlign(CENTER);
  text("消费金额", mouseX+170, mouseY+20*arr.length+15+120);
}

void mouse_click() {
  if ( mousePressed) {
    Click=true;
  } else {
    Click=false;
  }
}