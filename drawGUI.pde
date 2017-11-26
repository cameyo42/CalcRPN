void drawLCD()
{
  image(lcd_IMG, 2, 2);
  drawDigits();
  pila.drawStack(numFloating);
  drawOutput();
  textFont(font);
  fill(outputCol);
  textAlign(LEFT);
  text((pila.stackSize() + 1), 40, 532);
  // deg/rad indicator
  if (inDegrees) { text("DEG", 718, 532); }
  else { text("RAD", 718, 532); }
}

void drawDigits()
{
  fill(digitCol);
  textFont(digitFont);
  textAlign(RIGHT);
  if (!isResult)
  {
    String pSTR;
    if (digitSTR.length() > maxDigits) { pSTR = digitSTR.substring(0, maxDigits); }
    else { pSTR = digitSTR; }
    text(pSTR,baseDigitX, baseDigitY);
  }
  else
  {
    String numStr = formatNumber(digitNUM);
    text(numStr, baseDigitX, baseDigitY);
  }
}

void drawOutput()
{
  textFont(outputFont);
  textAlign(CENTER);
  fill(outputCol);
  text(outputSTR, 404, 532);
}

String formatNumber(double n)
{
  String numStr;
  if ((n > maxNum) || (n < minNum) || ((n > minEps) && (n < maxEps) && n != 0.0))
  {
    DecimalFormatSymbols sym = DecimalFormatSymbols.getInstance();
    //if (n > minEps && n < 0.0) { sym.setExponentSeparator("e-"); }
    //else { sym.setExponentSeparator("e+"); }
    //if ((n > minEps && n < 0 ) || (n > 0.0 && n < maxEps)) { sym.setExponentSeparator("x10^"); }
    //else { sym.setExponentSeparator("x10^+"); }
    if ((n > minEps && n < 0 ) || (n > 0.0 && n < maxEps)) { sym.setExponentSeparator(" E"); }
    else { sym.setExponentSeparator(" E+"); }
    //df = new DecimalFormat("#.################E0", sym);
    df = new DecimalFormat("#.#############E0", sym);
  }
  else
  {
    if (numFloating == -1) // real format
    {
      df = new DecimalFormat("#,##0.0################");
    }
    else if (numFloating == -2) // hour minute seconds format
    {
      //df = new DecimalFormat("00,00");
      df = new DecimalFormat("##,##");
      //DecimalFormat df = new DecimalFormat("00"); // "0" means don't omit leading zero

    }
    else
    switch(numFloating)
    {
      case  0: df = new DecimalFormat("#,##0"); break;
      case  1: df = new DecimalFormat("#,##0.0"); break;
      case  2: df = new DecimalFormat("#,##0.00"); break;
      case  3: df = new DecimalFormat("#,##0.000"); break;
      case  4: df = new DecimalFormat("#,##0.0000"); break;
      case  5: df = new DecimalFormat("#,##0.00000"); break;
      case  6: df = new DecimalFormat("#,##0.000000"); break;
      case  7: df = new DecimalFormat("#,##0.0000000"); break;
      case  8: df = new DecimalFormat("#,##0.00000000"); break;
      case  9: df = new DecimalFormat("#,##0.000000000"); break;
      case 10: df = new DecimalFormat("#,##0.0000000000"); break;
      case 11: df = new DecimalFormat("#,##0.00000000000"); break;
      case 12: df = new DecimalFormat("#,##0.000000000000"); break;
    }
  }
  numStr = df.format(n);
  //println(numStr);
  return numStr;
}


void showBUTTONS()
{
  // buttons
  btn7.show();
  btn8.show();
  btn9.show();
  btnDIV.show();
  btnEEX.show();

  btn4.show();
  btn5.show();
  btn6.show();
  btnMULT.show();
  btnENTER.show();

  btn1.show();
  btn2.show();
  btn3.show();
  btnMINUS.show();

  btn0.show();
  btnDOT.show();
  btnCHS.show();
  btnPLUS.show();
  btnFTYPE.show();

  btnBACK.show();
  btnDEL.show();
  btnFIX.show();
  btnINT.show();
  btnPERC.show();

  btnSQRT.show();
  btnEULER.show();
  btnPOWTEN.show();
  btnPOW.show();
  btnINVERSE.show();
  
  btnSIN.show();
  btnCOS.show();
  btnTAN.show();
  btnDMS.show();
  btnDD.show();
  
  btnSINH.show();
  btnCOSH.show();
  btnTANH.show();  
  btnSTO.show();  
  btnRCL.show();  
  
  btnFRACTADD.show();
  btnFRACTSUB.show();
  btnFRACTMUL.show();
  btnFRACTDIV.show();
  btnFRACTGEN.show();  

  // Forth
  btnDUP.show();
  btnDROP.show();
  btnSWAP.show();
  btnOVER.show();
  btnROT.show();
  btnNIP.show();
  btnTUCK.show();
  btnRUPS.show();

  btnCOPYS.show();
  btnPASTES.show();
  btnPICKS.show();
  btnROLLS.show();
  btnFLIPS.show();
  btnLOAD.show();
  btnSAVE.show();
  btnRDOWNS.show();

  // Forth
  btnDUP.show();
  btnDROP.show();
  btnSWAP.show();
  btnOVER.show();
  btnROT.show();
  btnNIP.show();
  btnTUCK.show();
  btnRUPS.show();

  btnCOPYS.show();
  btnPASTES.show();
  btnPICKS.show();
  btnROLLS.show();
  btnFLIPS.show();
  btnLOAD.show();
  btnSAVE.show();
  btnRDOWNS.show();
}