// *************************************************
// Button (click and go)
// *************************************************
//Button btn = new Button(x, y, btn_IMG, "text", textCol, "method0", "method1");
class Button
{
  // parameters
  int x, y;
  PImage icon;
  String t;
  color ct;
  String m0, m1;

  // variables
  int ww; // icon width
  int hh; // icon height

  // constructor
  Button(int ix, int iy, PImage _icon, String it, color ict, String im0, String im1)
  {
    x = ix; // start x (upper left)
    y = iy; // start y (upper left)
    icon = _icon; // icon tool
    t = it; // text string
    ct = ict; // text color
    m0 = im0; // method0 (function0)
    m1 = im1; // method1 (function1)

    // variables
    ww = icon.width;
    hh = icon.height;
  }

  boolean isOver()
  {
    return(mouseX>=x&&mouseX<=x+ww&&mouseY>=y&&mouseY<=y+hh);
  }

  void onClick()
  {
    if (isOver() && !m0.equals("") && !m1.equals(""))
    {
      if (functionType == 0) { method(m0); }
      else { method(m1); }
    }
  }

  void show()
  {
    image(icon, x, y);
    //pushStyle();
    //if (t != "")
    //{
    //  fill(ct);
    //  textAlign(CENTER);
    //  text(t,x+ww/2,y+hh+12);
    //}
    //popStyle();
  }
}