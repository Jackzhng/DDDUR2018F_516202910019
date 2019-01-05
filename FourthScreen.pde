void fourthScreen() {
  getData();
  imageMode(CORNER);
  image (Map, 0, 0);
  ;

  if (mouseX>350&&mouseX<350+80&&mouseY>630&&mouseY<630+80) {
    fill(0, 50);
    noStroke();
    rect(mouseX, mouseY, 800, mouseY+120+20*Yican.length);

    fill(0);
    textSize(20);
    textAlign(LEFT);
    textFont(font2);
    text("您在2014/9/1——2015/1/30", mouseX+20, mouseY+20);
    text("期间来一餐消费了"+Yican_times+"次", mouseX+20, mouseY+50);
    text("总共消费"+Yican_money/100+"元", mouseX+20, mouseY+80);
    draw_diagram(Yican, Yican_toaccount_times, Yican_name, Yican_toaccount_money);
  } else if (mouseX>740&&mouseX<740+93&&mouseY>690&&mouseY<710+43) {
    fill(0, 50);
    noStroke();
    rect(mouseX, mouseY, 800, mouseY+20*Ercan.length);

    fill(0);
    textSize(20);
    textAlign(LEFT);
    textFont(font2);
    text("您在2014/9/1——2015/1/30", mouseX+20, mouseY+20);
    text("期间来二餐消费了"+Ercan_times+"次", mouseX+20, mouseY+50);
    text("总共消费"+Ercan_money/100+"元", mouseX+20, mouseY+80);
    draw_diagram(Ercan, Ercan_toaccount_times, Ercan_name, Ercan_toaccount_money);
  } else if (mouseX>650&&mouseX<650+44&&mouseY>220&&mouseY<220+74) {
    fill(0, 50);
    noStroke();
    rect(mouseX, mouseY, 800, mouseY+20*Sancan.length);

    fill(0);
    textSize(20);
    textAlign(LEFT);
    textFont(font2);
    text("您在2014/9/1——2015/1/30", mouseX+20, mouseY+20);
    text("期间来三餐消费了"+Sancan_times+"次", mouseX+20, mouseY+50);
    text("总共消费"+Sancan_money/100+"元", mouseX+20, mouseY+80);
    draw_diagram(Sancan, Sancan_toaccount_times, Sancan_name, Sancan_toaccount_money);
  } else if (mouseX>100&&mouseX<100+45&&mouseY>200&&mouseY<200+80) {
    fill(0, 50);
    noStroke();
    rect(mouseX, mouseY, 800, mouseY+20*Sican.length);

    fill(0);
    textSize(20);
    textFont(font2);
    textAlign(LEFT);
    text("您在2014/9/1——2015/1/30", mouseX+20, mouseY+20);
    text("期间来四餐消费了"+Sican_times+"次", mouseX+20, mouseY+50);
    text("总共消费"+Sican_money/100+"元", mouseX+20, mouseY+80);
    draw_diagram(Sican, Sican_toaccount_times, Sican_name, Sican_toaccount_money);
  } else if (mouseX>1224&&mouseX<1224+63&&mouseY>828&&mouseY<828+37) {
    fill(0, 50);
    noStroke();
    rect(mouseX, mouseY, 800, mouseY+120+20*Wucan.length);

    fill(0);
    textSize(20);
    textAlign(LEFT);
    textFont(font2);
    text("您在2014/9/1——2015/1/30", mouseX+20, mouseY+20);
    text("期间来五餐消费了"+Wucan_times+"次", mouseX+20, mouseY+50);
    text("总共消费"+Wucan_money/100+"元", mouseX+20, mouseY+80);
    draw_diagram(Wucan, Wucan_toaccount_times, Wucan_name, Wucan_toaccount_money);
  } else if (mouseX>1430&&mouseX<1430+115&&mouseY>270&&mouseY<270+69) {
    fill(0, 50);
    noStroke();
    rect(mouseX, mouseY, 800, mouseY+20*Liucan.length);

    fill(0);
    textSize(20);
    textAlign(LEFT);
    textFont(font2);
    text("您在2014/9/1——2015/1/30", mouseX+20, mouseY+20);
    text("期间来六餐消费了"+Liucan_times+"次", mouseX+20, mouseY+50);
    text("总共消费"+Liucan_money/100+"元", mouseX+20, mouseY+80);
    draw_diagram(Liucan, Liucan_toaccount_times, Liucan_name, Liucan_toaccount_money);
  }
}