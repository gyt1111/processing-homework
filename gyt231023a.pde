图片;
我、你、我;
j;

进口加工。*;

布尔记录;

空设置(){
  img = loadImage("zjl.jpg");
  size(1279,1068);
  background(255);
  noStroke();
  img = loadImage("zjl.jpg");
}

空画(){
  如果(记录){
    //注意###将替换为框架号。太棒了!
    beginRecord(PDF, "frame-####.pdf");
  }
  frameRate(5);
  for(i=0;i<1000;i++){
  X=圆(随机(宽度));
  y = round(random(height));
  颜色C=IMG.获得(X,Y);
  j=noise(10,50)*50;
  中风(c);
  strokeWeight(2);
  noFill();
  line(x+j,y-j,x-j,y+j);
    }
 
  如果(记录){
    endRecord();
  记录=错误;
  }
}

//使用键盘,使成千上万的文件不会被创建
 空鼠压() {
  记录=真实;
}
