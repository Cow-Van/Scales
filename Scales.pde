//import java.util.Map;

//Map<Integer, Map<Integer, float[]>> colors = new HashMap();

void setup() {
  size(500, 500);
  //noLoop();
}
void draw() {
  for (int i = width; i >= -20; i -= 10) {
    //if (colors.get(i) == null) {
    //  colors.put(i, new HashMap());
    //}
    
    for (int j = height; j >= -20; j -= 10) {
      //if (colors.get(i).get(j) == null) {
        //colors.get(i).put(j, scale(i, j));
      //} else {
      //  scale(i, j, colors.get(i).get(j));
      //}
      scale(i, j, new float[]{(float) Math.random() * 256, (float) Math.random() * 256, (float) Math.random() * 256});
    }
  }
}

float[] scale(int x, int y, float[] rgb) {
  fill(rgb[0], rgb[1], rgb[2]);
  bezier(x, y, x + 20, y + 10, x + 15, y + 20, x - 5, y + 10);
  return rgb;
}

//float[] scale(int x, int y) {
//  float[] rgb = new float[]{(float) Math.random() * 256, (float) Math.random() * 256, (float) Math.random() * 256};
//  return scale(x, y, rgb);
//}
