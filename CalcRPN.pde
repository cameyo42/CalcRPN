// CalcRPN.pde
// A RPN calculator Forth oriented
// processing 3.x for Android
// Copyright cameyo 2017
// MIT License

import java.text.*; // using DecimalFormat
import java.math.*;
import java.util.*; // sort array
//import processing.sound.*; // keyboard click
//SoundFile click;
DecimalFormat df;
// font
PFont font;
PFont digitFont;
PFont outputFont;
// font color
color digitCol = color(10,10,10);
color digitOutputCol = color(60,60,60);
color outputCol = color(40,10,10);

// global constant variables
double _PI    = Math.PI;
//double _PI  = 3.141592653589793;
double _E     = Math.E;
//double _E   = 2.718281828459045;
double _PHI   =   (1 + Math.sqrt(5))/2;
//double _PHI = 1.618033988749895;
// Number limits for formatting purpose
double maxNum = 1e12;
double minNum = -1e12;
double maxEps = 1e-12;
double minEps = -1e-12;
// Fraction objects
frazione f1, f2;
// background color
color backCol = color(54,54,54);
// global variables
boolean start;
boolean sound;
// stack of double (RPN)
StackDouble pila = new StackDouble();
int maxSlot = 4096;
// vector clipboard for stack
double[] clipboard = new double[maxSlot];
int clipboardItems;
// Input/Output Number (Top of stack)
int maxCharLCD = 18;
String digitSTR;
int maxDigits;
String digitRESET;
double digitNUM;
double lastX;
boolean isResult;
boolean isBlocked;
// Error Message
String outputSTR;
// floating point digits
int numFloating;
// trig in degrees
boolean inDegrees;
// Memory 1..5
int Nmem = 100;
Double[] mem = new Double[Nmem];

// button function flag
int functionType;

// GUI
int baseX, baseY;
int stepH, stepV;
int baseDigitX, baseDigitY, stepDigitY;

PImage guiIMG, lcd_IMG, back_IMG;
PImage func_IMG;

Button btnFTYPE;
PImage btnFTYPE_IMG;

Button btn0, btn1, btn2, btn3, btn4, btn5, btn6, btn7, btn8, btn9;
PImage btn0_IMG, btn1_IMG, btn2_IMG, btn3_IMG, btn4_IMG, btn5_IMG, btn6_IMG, btn7_IMG, btn8_IMG, btn9_IMG;

Button btnPLUS; PImage btnPLUS_IMG;
Button btnMINUS; PImage btnMINUS_IMG;
Button btnMULT; PImage btnMULT_IMG;
Button btnDIV; PImage btnDIV_IMG;

Button btnENTER, btnDEL, btnBACK, btnLASTX;
PImage btnENTER_IMG, btnDEL_IMG, btnBACK_IMG, btnLASTX_IMG;

Button btnEEX, btnDMS, btnDD;
PImage btnEEX_IMG, btnDMS_IMG, btnDD_IMG;

Button btnDOT, btnCHS, btnFIX, btnINT, btnPERC;
PImage btnDOT_IMG, btnCHS_IMG, btnFIX_IMG, btnINT_IMG, btnPERC_IMG;

Button btnSQRT, btnEULER, btnPOWTEN, btnPOW, btnINVERSE;
PImage btnSQRT_IMG, btnEULER_IMG, btnPOWTEN_IMG, btnPOW_IMG, btnINVERSE_IMG;

Button btnSIN, btnCOS, btnTAN, btnASIN, btnACOS, btnATAN;
PImage btnSIN_IMG, btnCOS_IMG, btnTAN_IMG, btnASIN_IMG, btnACOS_IMG, btnATAN_IMG;

Button btnSINH, btnCOSH, btnTANH, btnASINH, btnACOSH, btnATANH;
PImage btnSINH_IMG, btnCOSH_IMG, btnTANH_IMG, btnASINH_IMG, btnACOSH_IMG, btnATANH_IMG;

Button btnSTO, btnRCL;
PImage btnSTO_IMG, btnRCL_IMG;

Button btnFRACTADD, btnFRACTSUB, btnFRACTMUL, btnFRACTDIV, btnFRACTGEN;
PImage btnFRACTADD_IMG, btnFRACTSUB_IMG, btnFRACTMUL_IMG, btnFRACTDIV_IMG, btnFRACTGEN_IMG;

// Forth Buttons
Button btnDUP, btnDROP, btnSWAP, btnOVER, btnROT, btnNIP, btnTUCK;
PImage btnDUP_IMG, btnDROP_IMG, btnSWAP_IMG, btnOVER_IMG, btnROT_IMG, btnNIP_IMG, btnTUCK_IMG;
Button btn2DUP, btn2DROP, btn2SWAP, btn2OVER, btn2ROT, btn2NIP, btn2TUCK;
PImage btn2DUP_IMG, btn2DROP_IMG, btn2SWAP_IMG, btn2OVER_IMG, btn2ROT_IMG, btn2NIP_IMG, btn2TUCK_IMG;
// Stack buttons
Button btnCOPYS, btnPASTES, btnTWINS, btnPICKS, btnROLLS, btnRUPS, btnRDOWNS, btnFLIPS;
PImage btnCOPYS_IMG, btnPASTES_IMG, btnTWINS_IMG, btnPICKS_IMG, btnROLLS_IMG, btnRUPS_IMG, btnRDOWNS_IMG, btnFLIPS_IMG ;
Button btnCLEAR, btnSAVE, btnLOAD, btnHELP;
PImage btnCLEAR_IMG, btnSAVE_IMG, btnLOAD_IMG, btnHELP_IMG;

//---------------------------------------------------------
// ANDROID FUNCTIONS (do not run on processing)
import android.view.WindowManager;
import android.view.View;
import android.os.Bundle;

//This method runs once when the application loads up
void onCreate(Bundle bundle) 
{
  super.onCreate(bundle);
  // The screen doesn't go to sleep when app is active
  getActivity().getWindow().addFlags(WindowManager.LayoutParams.FLAG_KEEP_SCREEN_ON);
  // restore flag
  //getActivity().getWindow().clearFlags(WindowManager.LayoutParams.FLAG_KEEP_SCREEN_ON);
}

void fnEXIT() // exit
{
  getActivity().finish();
  System.exit(0);
}
//---------------------------------------------------------

//*********************************
void setup()
{
  //size(1000, 500); // PC
  size(1280, 720); // Android
  orientation(LANDSCAPE);
  smooth();
  frameRate(25);
  // set locale to English-United States
  Locale.setDefault(new Locale("en", "US"));
  background(backCol);
  sound = false;
  // load click sound from the /data folder
  //click = new SoundFile(this, "click.wav");
  // load fonts
  font = createFont("Consolas Bold", 30);
  digitFont = createFont("wwwDigital.ttf", 60); // with Infinity and NaN
  // Michelle Laura - developer@webworks-usa.com - http://www.webworks-usa.com
  outputFont = createFont("Calibri", 28);
  textFont(digitFont);
  // set global variables
  for(int i=0; i<Nmem; i++) { mem[i] = 0.0d; }
  numFloating = -1;
  digitRESET = "0." + nf(0, numFloating);
  digitSTR = digitRESET;
  maxDigits = maxCharLCD - 2;
  inDegrees = true;
  digitNUM = 0.0;
  lastX = digitNUM;
  isResult = true;
  isBlocked = true;
  baseDigitX = 760;
  baseDigitY = 91;
  stepDigitY = 53;
  outputSTR = String.valueOf(digitNUM);
  functionType = 0;
  // set GUI interface
  setGUI();
  init();
}
//*********************************
void init()
{
  start = true;
}
//*********************************
void draw()
{
  println("Redraw: ",frameCount);
  if (start)
  {
    //background(backCol);
    image(back_IMG, 0, 0);
    //image(backGUI, 0, 0);    
    drawLCD();
    showBUTTONS();
    if (functionType == 1) { image(func_IMG,0 ,0); }
    //start=false;
  }
  noLoop();
}

//*********************************
void mousePressed()
{
  loop();
  start = true;
  int mx = mouseX;
  int my = mouseY;
  //println(mx,my);

  //if (sound) { click.play(); }
  
  // check click on Degrees <--> Radians text
  if (mouseX > 700 && mouseX < (785) && mouseY > 495 && mouseY < (545))
  {
    fnChangeTrigUnit();
  }

  // check buttons click
  btn7.onClick();
  btn8.onClick();
  btn9.onClick();
  btnDIV.onClick();
  btnEEX.onClick();

  btn4.onClick();
  btn5.onClick();
  btn6.onClick();
  btnMULT.onClick();
  btnENTER.onClick();

  btn1.onClick();
  btn2.onClick();
  btn3.onClick();
  btnMINUS.onClick();

  btn0.onClick();
  btnDOT.onClick();
  btnCHS.onClick();
  btnPLUS.onClick();
  btnFTYPE.onClick();

  btnBACK.onClick();
  btnDEL.onClick();
  btnFIX.onClick();
  btnINT.onClick();
  btnPERC.onClick();
  
  btnSQRT.onClick();
  btnEULER.onClick();
  btnPOWTEN.onClick();
  btnPOW.onClick();
  btnINVERSE.onClick();  
  
  btnSIN.onClick();
  btnCOS.onClick();
  btnTAN.onClick();
  btnDMS.onClick();
  btnDD.onClick();
  
  btnSINH.onClick();
  btnCOSH.onClick();
  btnTANH.onClick();
  btnSTO.onClick();
  btnRCL.onClick();

  
  btnFRACTADD.onClick();
  btnFRACTSUB.onClick();
  btnFRACTMUL.onClick();
  btnFRACTDIV.onClick();
  btnFRACTGEN.onClick();
  
  // Forth
  btnDUP.onClick();
  btnDROP.onClick();
  btnSWAP.onClick();
  btnOVER.onClick();
  btnROT.onClick();
  btnNIP.onClick();
  btnTUCK.onClick();  
  btnRUPS.onClick();
  
  btnCOPYS.onClick();
  btnPASTES.onClick();
  btnPICKS.onClick();
  btnROLLS.onClick();
  btnFLIPS.onClick();
  btnLOAD.onClick();
  btnSAVE.onClick();  
  btnRDOWNS.onClick();
}

// void mouseMoved() { int mx = mouseX; int my = mouseY; println(mx,my); }

// void mouseReleased() {}

//*********************************
void saveImage()
{
  String filename = newFilename(1);
  save(filename+".png");
}

//*********************************
String newFilename(int c)
{
  int y, m, d;
  int hh, mm, ss;
  String name="", out;
  y = year();
  m = month();
  d = day();
  hh = hour();
  mm = minute();
  ss = second();
  if (c == 1) { name = getClass().getSimpleName(); }
  if (c == 2) { name = "stack"; }
  out = name+"_"+y+"-"+nf(m, 2)+"-"+nf(d, 2)+"_"+nf(hh, 2)+"."+nf(mm, 2)+"."+nf(ss, 2);
  return out;
}

void fnloadFILE()
{
  String file = dataPath("stack.txt");
  if (fileExists(file))
  {
    pila.clearStack();
    String lista[] = loadStrings(file);
    //int items = lista.length - 1;
    int items = lista.length;
    for (int i=items-1; i >= 0; i--)
    {
      if (!lista[i].equals("") && !lista[i].equals(null))
      {
        double val = Double.valueOf(lista[i]);
        pila.push(val);
      }
    }
    digitNUM = pila.pop();
    outputSTR = String.valueOf(digitNUM);
    isResult = true;
    isBlocked = false;

    // Update window (read is another thread)
    //background(backCol);
    //drawLCD();
    //showGUI();
    //if (viewShortcuts) { image(short_IMG, 0, 0); }
    loop();
  }
  else
  {
    outputSTR = "File 'stack.txt' is missing.";
  }
}

boolean fileExists(String path)
{
  File file=new File(path);
  boolean exists = file.exists();
  if (exists) { return true; }
  else { return false; }
}

void fnsaveFILE()
{
  String lista="", numero="";
  numero = String.valueOf(digitNUM);
  lista = numero + "|";
  int items = pila.stackSize();
  if (items > maxSlot) { items = maxSlot; }
  for (int i=0; i < items-1; i++)
  {
    numero = String.valueOf(pila.getItem(i)) + "|";
    lista = lista + numero;
  }
  numero = String.valueOf(pila.getItem(items-1));
  lista = lista + numero;
  String[] outLST = split(lista, "|");
  String filename = newFilename(2) + ".txt";
  //saveStrings(dataPath(filename), outLST);
  filename = "stack.txt";
  saveStrings(dataPath(filename), outLST);
  isResult = true;
  isBlocked = false;
  loop();
}

void fnHELP() // open manual
{
//  cursor(WAIT);
//  if (fileExists(dataPath("ForthCalculator.pdf")))
//  {
//    launch(dataPath("ForthCalculator.pdf"));
//  }
//  else { outputSTR = "File 'ForthCalculator.pdf' is missing."; }
//  cursor(ARROW);
}

void fnEDIT() // edit stack.txt
{
//  cursor(WAIT);
//  if (fileExists(dataPath("stack.txt")))
//  {
//    launch(dataPath("stack.txt"));
//  }
//  else { outputSTR = "File 'stack.txt' is missing."; }
//  cursor(ARROW);
}

void fnMATH() // open formulae.pdf
{
//  cursor(WAIT);
//  if (fileExists(dataPath("Formulae.pdf")))
//  {
//    launch(dataPath("Formulae.pdf"));
//  }
//  else { outputSTR = "File 'Formulae.pdf' is missing."; }
//  cursor(ARROW);
}