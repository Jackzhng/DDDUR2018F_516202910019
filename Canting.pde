int []Yican_toaccount_money = new int[18];
int [] Yican_toaccount_times = new int[18];
;
int [] Yican={1000001, 1000002, 1000003, 1000005, 1000006, 1000007, 1000010, 
  1000011, 1000014, 1000015, 1000125, 1000176, 1000202, 1000204, 
  1000219, 1000241, 1000242};
String [] Yican_name = {"淮扬快餐", "海派食府", "中式点心", "一餐教工餐厅", "面包房", "梦圆面包房", "吉祥小厨", 
  "顺日小厨", "高知餐厅", "川菜", "供应点1", "甜魔咖啡", "一餐临时", "松叶蔬菜", "清真餐厅", 
  "达通一餐蔬菜店", "达通一餐水果店"};

void draw_Y_diagram() {
  line(mouseX+60, mouseY+100, mouseX+60, mouseY+100+(Yican.length*2+1)*10);
  for (int i=0; i<Yican.length; i++) {
    rect( mouseX+60, mouseY+110+20*i, Yican[i]*10, 10);
  }
}

int [] Ercan = {1000027, 1000029, 1000030, 1000031, 1000037, 1000038, 1000039, 1000040, 1000041, 1000215, 1000222};
int [] Ercan_toaccount_times = new int[Ercan.length];
int [] Ercan_toaccount_money = new int[Ercan.length];
String [] Ercan_name= {"上海快餐", "西北面点", "江南小吃", "川味点心", "教育超市", "大众餐厅", "新疆餐厅", 
  "二楼教工餐厅", "绿园餐厅", "西式快餐", "上海快餐定额卡"};

int [] Sancan = {1000047, 1000231, 1000232, 1000233, 1000244};
int [] Sancan_toaccount_times = new int[Sancan.length];
int [] Sancan_toaccount_money = new int[Sancan.length];
String [] Sancan_name= {"教育超市", "外婆桥", "清真餐厅", "学生餐厅", "时光咖啡"};

int [] Sican = {1000055, 1000056, 1000057, 1000060, 1000108, 1000136, 
  1000157, 1000159, 1000181, 1000182, 1000183, 1000184, 1000185, 1000186, 1000187, 1000210, 
  1000211, 1000212, 1000213, 1000216, 1000239, 1000246};
int [] Sican_toaccount_times = new int[Sican.length];
int [] Sican_toaccount_money = new int[Sican.length];
String [] Sican_name= {"东餐厅", "西餐厅", "面点", "炖品", "苏记麻辣烫", "百味林", "吉姆丽德", "教工餐厅", "串串烧", 
  "麻辣烫", "笼仔饭", "粉面饭", "烧腊饭", "甜心", "点心", "炒面", "土豆粉", "烤肉", "粥档", 
  "风味煲仔饭", "水果吧", "面包房"};

int [] Wucan = {1000061, 1000062, 1000103, 1000105, 1000132};
int [] Wucan_toaccount_times = new int[Wucan.length];
int [] Wucan_toaccount_money = new int[Wucan.length];
String [] Wucan_name= {"一楼快餐厅", "二楼快餐厅", "二楼面馆", "教育超市", "中西餐厅"};

int [] Liucan = {1000178, 1000179, 1000180};
int [] Liucan_toaccount_times = new int[Liucan.length];
int [] Liucan_toaccount_money = new int[Liucan.length];
String [] Liucan_name= {"一楼餐厅", "面馆", "伊诺咖啡"};