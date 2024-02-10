void setup() {
  size(600, 600);
}

void draw() {
  background(255);
  sierpinski(150, 400, 300);
}

void sierpinski(int x, int y, int len) {
  if (len <= 20) {
    triangle(x, y, x+len/2, y-len, x+len, y);     
  }else{
      sierpinski(x,y,len/2);
      sierpinski(x+len/2,y,len/2);
      sierpinski(x+len/4,y-len/2,len/2);
  }
}
