import java.util.Map;

Map<Integer, Map<Integer, float[]>> colors = new HashMap();
int rowToChange;
int columnToChange;

void setup() {
  size(500, 500);
  noStroke();
  
  if (mousePressed) {
    rowToChange = -20;
    columnToChange = height;
  } else {
    rowToChange = width;
    columnToChange = -20;
  }
}
void draw() {
  if (mousePressed) {
    if (rowToChange > height) {
      rowToChange = -20;
    }
    
    if (columnToChange < -20) {
      columnToChange = width;
    }
  } else {
    if (rowToChange < -20) {
      rowToChange = height;
    }
    
    if (columnToChange > width) {
      columnToChange = -20;
    }
  }
  
  for (int i = width; i >= -20; i -= 10) {
    if (colors.get(i) == null) {
      colors.put(i, new HashMap());
    }
    
    for (int j = height; j >= -20; j -= 10) {
      if (colors.get(i).get(j) == null || i == columnToChange || j == rowToChange) {
        colors.get(i).put(j, scale(i, j, scale(i, j, new float[]{(float) Math.random() * 200 + 57, (float) Math.random() * 200 + 57, (float) Math.random() * 200 + 57})));
      } else {
      scale(i, j, colors.get(i).get(j));}
    }
  }
  
  if (mousePressed) {
    rowToChange += 20;
    columnToChange -= 20;
  } else {
    rowToChange -= 20;
    columnToChange += 20;
  }
}

float[] scale(int x, int y, float[] rgb) {
  fill(rgb[0], rgb[1], rgb[2]);
  bezier(x, y, x + 20, y + 10, x + 15, y + 20, x - 5, y + 10);
  return rgb;
}
