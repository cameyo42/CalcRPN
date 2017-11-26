void setGUI()
{
  // set GUI
  guiIMG = loadImage("guiRPN.png");
  func_IMG = loadImage("function.png");
  back_IMG = loadImage("backGUI.png");
  // get buttons image
  lcd_IMG = guiIMG.get(0, 150, 810, 560);
  btn0_IMG = guiIMG.get(0,   0, 80, 69);
  btn1_IMG = guiIMG.get(80,  0, 80, 69);
  btn2_IMG = guiIMG.get(160, 0, 80, 69);
  btn3_IMG = guiIMG.get(240, 0, 80, 69);
  btn4_IMG = guiIMG.get(320, 0, 80, 69);
  btn5_IMG = guiIMG.get(400, 0, 80, 69);
  btn6_IMG = guiIMG.get(480, 0, 80, 69);
  btn7_IMG = guiIMG.get(560, 0, 80, 69);
  btn8_IMG = guiIMG.get(640, 0, 80, 69);
  btn9_IMG = guiIMG.get(720, 0, 80, 69);

  btnSQRT_IMG    = guiIMG.get(800,  0, 80, 69);
  btnEULER_IMG   = guiIMG.get(880,  0, 80, 69);
  btnPOWTEN_IMG  = guiIMG.get(960,  0, 80, 69);
  btnPOW_IMG     = guiIMG.get(1040, 0, 80, 69);
  btnINVERSE_IMG = guiIMG.get(1120, 0, 80, 69);

  btnPLUS_IMG  = guiIMG.get(0,   69, 80, 69);
  btnMINUS_IMG = guiIMG.get(80,  69, 80, 69);
  btnMULT_IMG  = guiIMG.get(160, 69, 80, 69);
  btnDIV_IMG   = guiIMG.get(240, 69, 80, 69);
  btnDOT_IMG   = guiIMG.get(320, 69, 80, 69);
  btnCHS_IMG   = guiIMG.get(400, 69, 80, 69);
  btnEEX_IMG   = guiIMG.get(480, 69, 80, 69);
  btnBACK_IMG  = guiIMG.get(560, 69, 80, 69);
  btnDEL_IMG   = guiIMG.get(640, 69, 80, 69);
  btnPERC_IMG  = guiIMG.get(720, 69, 80, 69);

  btnSIN_IMG   = guiIMG.get(800,  69, 80, 69);
  btnCOS_IMG   = guiIMG.get(880,  69, 80, 69);
  btnTAN_IMG   = guiIMG.get(960,  69, 80, 69);
  btnDMS_IMG   = guiIMG.get(1040, 69, 80, 69);
  btnDD_IMG    = guiIMG.get(1120, 69, 80, 69);

  btnENTER_IMG = guiIMG.get(1200, 0, 80, 149);

  btnFTYPE_IMG = guiIMG.get(0,   888, 80, 69);
  btnSINH_IMG  = guiIMG.get(80,  888, 80, 69);
  btnCOSH_IMG  = guiIMG.get(160, 888, 80, 69);
  btnTANH_IMG  = guiIMG.get(240, 888, 80, 69);
  btnSTO_IMG   = guiIMG.get(320, 888, 80, 69);
  btnRCL_IMG   = guiIMG.get(400, 888, 80, 69);

  btnFIX_IMG      = guiIMG.get(0,   957, 80, 69);
  btnINT_IMG      = guiIMG.get(80,  957, 80, 69);
  btnFRACTADD_IMG = guiIMG.get(160, 957, 80, 69);
  btnFRACTSUB_IMG = guiIMG.get(240, 957, 80, 69);
  btnFRACTMUL_IMG = guiIMG.get(320, 957, 80, 69);
  btnFRACTDIV_IMG = guiIMG.get(400, 957, 80, 69);
  btnFRACTGEN_IMG = guiIMG.get(480, 957, 80, 69);

  // Forth Image Buttons
  btnDUP_IMG    = guiIMG.get(0,   750, 95, 69);
  btnDROP_IMG   = guiIMG.get(95,  750, 95, 69);
  btnSWAP_IMG   = guiIMG.get(190, 750, 95, 69);
  btnOVER_IMG   = guiIMG.get(285, 750, 95, 69);
  btnROT_IMG    = guiIMG.get(380, 750, 95, 69);
  btnNIP_IMG    = guiIMG.get(475, 750, 95, 69);
  btnTUCK_IMG   = guiIMG.get(570, 750, 95, 69);
  btnRUPS_IMG   = guiIMG.get(665, 750, 95, 69);

  btnCOPYS_IMG  = guiIMG.get(0,   819, 95, 69);
  btnPASTES_IMG = guiIMG.get(95,  819, 95, 69);
  btnPICKS_IMG  = guiIMG.get(190, 819, 95, 69);
  btnROLLS_IMG  = guiIMG.get(285, 819, 95, 69);
  btnFLIPS_IMG  = guiIMG.get(380, 819, 95, 69);
  btnLOAD_IMG   = guiIMG.get(475, 819, 95, 69);
  btnSAVE_IMG   = guiIMG.get(570, 819, 95, 69);
  btnRDOWNS_IMG = guiIMG.get(665, 819, 95, 69);

  // Define buttons
  int baseX = 818;
  int baseY = 7;
  int stepX = 94;
  int stepY = 80;
  btn7     = new Button(baseX,         baseY, btn7_IMG, "", color(240), "fn7", "fnX_Y");
  btn8     = new Button(baseX+stepX,   baseY, btn8_IMG, "", color(240), "fn8", "fnASEQ");
  btn9     = new Button(baseX+stepX*2, baseY, btn9_IMG, "", color(240), "fn9", "fnGSEQ");
  btnDIV   = new Button(baseX+stepX*3, baseY, btnDIV_IMG, "", color(240), "fnDIV", "fnPOLAR");
  btnEEX   = new Button(baseX+stepX*4, baseY, btnEEX_IMG, "", color(240), "fnEEX", "fnFACT");

  btn4     = new Button(baseX,         baseY+stepY, btn4_IMG, "", color(240), "fn4", "fnTRIANGLE");
  btn5     = new Button(baseX+stepX,   baseY+stepY, btn5_IMG, "", color(240), "fn5", "fnTORGB");
  btn6     = new Button(baseX+stepX*2, baseY+stepY, btn6_IMG, "", color(240), "fn6", "fnTOHSB");
  btnMULT  = new Button(baseX+stepX*3, baseY+stepY, btnMULT_IMG, "", color(240), "fnMULT", "fnRECT");
  btnENTER = new Button(baseX+stepX*4, baseY+stepY, btnENTER_IMG, "", color(240), "enterPressed", "fnLASTX");

  btn1     = new Button(baseX,         baseY+stepY*2, btn1_IMG, "", color(240), "fn1", "fnSLOPE");
  btn2     = new Button(baseX+stepX,   baseY+stepY*2, btn2_IMG, "", color(240), "fn2", "fnFIBO");
  btn3     = new Button(baseX+stepX*2, baseY+stepY*2, btn3_IMG, "", color(240), "fn3", "fnPHI");
  btnMINUS = new Button(baseX+stepX*3, baseY+stepY*2, btnMINUS_IMG, "", color(240), "fnMINUS", "fnTSUB");

  btn0     = new Button(baseX,         baseY+stepY*3, btn0_IMG, "", color(240), "fn0", "fnSTAT");
  btnDOT   = new Button(baseX+stepX,   baseY+stepY*3, btnDOT_IMG, "", color(240), "dotPressed", "fnLR");
  btnCHS   = new Button(baseX+stepX*2, baseY+stepY*3, btnCHS_IMG, "", color(240), "changeSignPressed", "fnRND");
  btnPLUS  = new Button(baseX+stepX*3, baseY+stepY*3, btnPLUS_IMG, "", color(240), "fnPLUS", "fnTADD");

  btnFTYPE = new Button(baseX+stepX*4, baseY+stepY*3, btnFTYPE_IMG, "", color(240), "fnFTYPE", "fnFTYPE");

  btnBACK  = new Button(baseX,         baseY+stepY*4, btnBACK_IMG, "", color(240), "backspacePressed", "fnPI");
  btnDEL   = new Button(baseX+stepX,   baseY+stepY*4, btnDEL_IMG, "", color(240), "deletePressed", "fnCLS");
  btnFIX   = new Button(baseX+stepX*2, baseY+stepY*4, btnFIX_IMG, "", color(240), "fnFIX", "fnROUND");
  btnINT   = new Button(baseX+stepX*3, baseY+stepY*4, btnINT_IMG, "", color(240), "fnINT", "fnFRAC");
  btnPERC  = new Button(baseX+stepX*4, baseY+stepY*4, btnPERC_IMG, "", color(240), "fnPERC", "fnDELTA");

  btnSQRT    = new Button(baseX,         baseY+stepY*5, btnSQRT_IMG, "", color(240), "fnSQRT", "fnX2");
  btnEULER   = new Button(baseX+stepX,   baseY+stepY*5, btnEULER_IMG, "", color(240), "fnEULER", "fnLN");
  btnPOWTEN  = new Button(baseX+stepX*2, baseY+stepY*5, btnPOWTEN_IMG, "", color(240), "fnPOWTEN", "fnLOG");
  btnPOW     = new Button(baseX+stepX*3, baseY+stepY*5, btnPOW_IMG, "", color(240), "fnPOW", "fnROOTS");
  btnINVERSE = new Button(baseX+stepX*4, baseY+stepY*5, btnINVERSE_IMG, "", color(240), "fnINVERSE", "fnABS");

  btnSIN  = new Button(baseX,         baseY+stepY*6, btnSIN_IMG, "", color(240), "fnSIN", "fnASIN");
  btnCOS  = new Button(baseX+stepX,   baseY+stepY*6, btnCOS_IMG, "", color(240), "fnCOS", "fnACOS");
  btnTAN  = new Button(baseX+stepX*2, baseY+stepY*6, btnTAN_IMG, "", color(240), "fnTAN", "fnATAN");
  btnDMS  = new Button(baseX+stepX*3, baseY+stepY*6, btnDMS_IMG, "", color(240), "fnDMS", "fnTODEG");
  btnDD   = new Button(baseX+stepX*4, baseY+stepY*6, btnDD_IMG, "", color(240), "fnDD", "fnTORAD");

  btnSINH  = new Button(baseX,         baseY+stepY*7, btnSINH_IMG, "", color(240), "fnSIN", "fnASINH");
  btnCOSH  = new Button(baseX+stepX,   baseY+stepY*7, btnCOSH_IMG, "", color(240), "fnCOS", "fnACOSH");
  btnTANH  = new Button(baseX+stepX*2, baseY+stepY*7, btnTANH_IMG, "", color(240), "fnTAN", "fnATANH");
  btnSTO   = new Button(baseX+stepX*3, baseY+stepY*7, btnSTO_IMG, "", color(240), "fnSTO", "fnPERM");
  btnRCL   = new Button(baseX+stepX*4, baseY+stepY*7, btnRCL_IMG, "", color(240), "fnRCL", "fnCOMB");
  
  btnFRACTADD  = new Button(baseX,         baseY+stepY*8, btnFRACTADD_IMG, "", color(240), "fnFRACTadd", "fnGCD");
  btnFRACTSUB  = new Button(baseX+stepX,   baseY+stepY*8, btnFRACTSUB_IMG, "", color(240), "fnFRACTsub", "fnLCM");
  btnFRACTMUL  = new Button(baseX+stepX*2, baseY+stepY*8, btnFRACTMUL_IMG, "", color(240), "fnFRACTmul", "fnFACTORIZE");
  btnFRACTDIV  = new Button(baseX+stepX*3, baseY+stepY*8, btnFRACTDIV_IMG, "", color(240), "fnFRACTdiv", "fnPROPORTION");
  btnFRACTGEN  = new Button(baseX+stepX*4, baseY+stepY*8, btnFRACTGEN_IMG, "", color(240), "fnFRACTgen", "fnEXIT");  


  // Forth buttons
  baseX = 6;
  baseY = 567;
  stepX = 101;
  stepY = 80;
  btnDUP    = new Button(baseX,         baseY, btnDUP_IMG, "", color(240), "fnDUP", "fnCXADD");
  btnDROP   = new Button(baseX+stepX,   baseY, btnDROP_IMG, "", color(240), "fnDROP", "fnCXSUB");
  btnSWAP   = new Button(baseX+stepX*2, baseY, btnSWAP_IMG, "", color(240), "fnSWAP", "fnCXMUL");
  btnOVER   = new Button(baseX+stepX*3, baseY, btnOVER_IMG, "", color(240), "fnOVER", "fnCXDIV");
  btnROT    = new Button(baseX+stepX*4, baseY, btnROT_IMG, "", color(240), "fnROT", "fnCXINV");
  btnNIP    = new Button(baseX+stepX*5, baseY, btnNIP_IMG, "", color(240), "fnNIP", "fnCXPOW");
  btnTUCK   = new Button(baseX+stepX*6, baseY, btnTUCK_IMG, "", color(240), "fnTUCK", "fnQUADRATIC");
  btnRUPS   = new Button(baseX+stepX*7, baseY, btnRUPS_IMG, "", color(240), "fnRUPS", "fnCUBIC");
  btnCOPYS  = new Button(baseX,         baseY+stepY, btnCOPYS_IMG, "", color(240), "fnCOPYS", "fnVECADD");
  btnPASTES = new Button(baseX+stepX,   baseY+stepY, btnPASTES_IMG, "", color(240), "fnPASTES", "fnVECSUB");
  btnPICKS  = new Button(baseX+stepX*2, baseY+stepY, btnPICKS_IMG, "", color(240), "fnPICKS", "fnVECCRO");
  btnROLLS  = new Button(baseX+stepX*3, baseY+stepY, btnROLLS_IMG, "", color(240), "fnROLLS", "fnVECDOT");
  btnFLIPS  = new Button(baseX+stepX*4, baseY+stepY, btnFLIPS_IMG, "", color(240), "fnFLIPS", "fnVECANG");
  btnLOAD   = new Button(baseX+stepX*5, baseY+stepY, btnLOAD_IMG, "", color(240), "fnloadFILE", "fnVECMAG");
  btnSAVE   = new Button(baseX+stepX*6, baseY+stepY, btnSAVE_IMG, "", color(240), "fnsaveFILE", "fnHORNER");
  btnRDOWNS = new Button(baseX+stepX*7, baseY+stepY, btnRDOWNS_IMG, "", color(240), "fnRDOWNS", "fnCRAMER");
  //btnCLEAR  = new Button(baseX+stepX*7, baseY+stepY, btnCLEAR_IMG, "", color(240), "fnCLS");


  //baseX = 612;
  //baseY = 180;
  //stepX = 40;
  //stepY = 36;
  //btnX2      = new Button(baseX,         baseY, btnX2_IMG, "", color(240), "fnX2");
  //btnEULER   = new Button(baseX+stepX,   baseY, btnEULER_IMG, "", color(240), "fnEULER");
  //btnPOWTEN  = new Button(baseX+stepX*2, baseY, btnPOWTEN_IMG, "", color(240), "fnPOWTEN");
  //btnPOW     = new Button(baseX+stepX*3, baseY, btnPOW_IMG, "", color(240), "fnPOW");
  //btnINVERSE = new Button(baseX+stepX*4, baseY, btnINVERSE_IMG, "", color(240), "fnINVERSE");
  //btnINT     = new Button(baseX+stepX*5, baseY, btnINT_IMG, "", color(240), "fnINT");
  //btnABS     = new Button(baseX+stepX*6, baseY, btnABS_IMG, "", color(240), "fnABS");
  //
  //btnSQRT    = new Button(baseX,         baseY+stepY, btnSQRT_IMG, "", color(240), "fnSQRT");
  //btnLN      = new Button(baseX+stepX,   baseY+stepY, btnLN_IMG, "", color(240), "fnLN");
  //btnLOG     = new Button(baseX+stepX*2, baseY+stepY, btnLOG_IMG, "", color(240), "fnLOG");
  //btnROOTS   = new Button(baseX+stepX*3, baseY+stepY, btnROOTS_IMG, "", color(240), "fnROOTS");
  //btnCBRT    = new Button(baseX+stepX*4, baseY+stepY, btnCBRT_IMG, "", color(240), "fnCBRT");
  //btnFRAC    = new Button(baseX+stepX*5, baseY+stepY, btnFRAC_IMG, "", color(240), "fnFRAC");
  //btnROUND   = new Button(baseX+stepX*6, baseY+stepY, btnROUND_IMG, "", color(240), "fnROUND");
  //
  //baseX = baseX;
  //baseY = baseY+stepY + 40;
  //stepX = 40;
  //stepY = 36;
  //btnSIN  = new Button(baseX,         baseY, btnSIN_IMG, "", color(240), "fnSIN");
  //btnCOS  = new Button(baseX+stepX,   baseY, btnCOS_IMG, "", color(240), "fnCOS");
  //btnTAN  = new Button(baseX+stepX*2, baseY, btnTAN_IMG, "", color(240), "fnTAN");
  //btnSINH = new Button(baseX+stepX*3, baseY, btnSINH_IMG, "", color(240), "fnSINH");
  //btnCOSH = new Button(baseX+stepX*4, baseY, btnCOSH_IMG, "", color(240), "fnCOSH");
  //btnTANH = new Button(baseX+stepX*5, baseY, btnTANH_IMG, "", color(240), "fnTANH");
  //btnPI   = new Button(baseX+stepX*6, baseY, btnPI_IMG, "", color(240), "fnPI");
  //
  //btnASIN  = new Button(baseX,         baseY+stepY, btnASIN_IMG, "", color(240), "fnASIN");
  //btnACOS  = new Button(baseX+stepX,   baseY+stepY, btnACOS_IMG, "", color(240), "fnACOS");
  //btnATAN  = new Button(baseX+stepX*2, baseY+stepY, btnATAN_IMG, "", color(240), "fnATAN");
  //btnASINH = new Button(baseX+stepX*3, baseY+stepY, btnASINH_IMG, "", color(240), "fnASINH");
  //btnACOSH = new Button(baseX+stepX*4, baseY+stepY, btnACOSH_IMG, "", color(240), "fnACOSH");
  //btnATANH = new Button(baseX+stepX*5, baseY+stepY, btnATANH_IMG, "", color(240), "fnATANH");
  //btnE     = new Button(baseX+stepX*6, baseY+stepY, btnE_IMG, "", color(240), "fnE");
  //
  //btnTODEG = new Button(baseX,         baseY+stepY*2, btnTODEG_IMG, "", color(240), "fnTODEG");
  //btnTORAD = new Button(baseX+stepX,   baseY+stepY*2, btnTORAD_IMG, "", color(240), "fnTORAD");
  //btnSTO  = new Button(baseX+stepX*2, baseY+stepY*2, btnSTO_IMG, "", color(240), "fnRECT");
  //btnRCL = new Button(baseX+stepX*3, baseY+stepY*2, btnRCL_IMG, "", color(240), "fnPOLAR");
  //btnDMS   = new Button(baseX+stepX*4, baseY+stepY*2, btnDMS_IMG, "", color(240), "fnDMS");
  //btnDD    = new Button(baseX+stepX*5, baseY+stepY*2, btnDD_IMG, "", color(240), "fnDD");
  //btnPHI   = new Button(baseX+stepX*6, baseY+stepY*2, btnPHI_IMG, "", color(240), "fnPHI");
  //
  //baseX = baseX;
  //baseY = baseY+stepY*2 + 40;
  //stepX = 40;
  //stepY = 36;
  //btnGCD       = new Button(baseX,         baseY, btnGCD_IMG, "", color(240), "fnGCD");
  //btnLCM       = new Button(baseX+stepX,   baseY, btnLCM_IMG, "", color(240), "fnLCM");
  //btnFACTORIZE = new Button(baseX+stepX*2, baseY, btnFACTORIZE_IMG, "", color(240), "fnFACTORIZE");
  //btnPROP      = new Button(baseX+stepX*3, baseY, btnPROP_IMG, "", color(240), "fnPROPORTION");
  //btnQEQ       = new Button(baseX+stepX*4, baseY, btnQEQ_IMG, "", color(240), "fnQUADRATIC");
  //btnCEQ       = new Button(baseX+stepX*5, baseY, btnCEQ_IMG, "", color(240), "fnCUBIC");
  //btnHORNER    = new Button(baseX+stepX*6, baseY, btnHORNER_IMG, "", color(240), "fnHORNER");
  ////btnDEG   = new Button(baseX+stepX*5, baseY, btnDEG_IMG, "", color(240), "fnINDEG");
  ////btnRAD   = new Button(baseX+stepX*6, baseY, btnRAD_IMG, "", color(240), "fnINRAD");
  //
  //btnFRACTADD  = new Button(baseX,         baseY+stepY, btnFRACTADD_IMG, "", color(240), "fnFRACTadd");
  //btnFRACTSUB  = new Button(baseX+stepX,   baseY+stepY, btnFRACTSUB_IMG, "", color(240), "fnFRACTsub");
  //btnFRACTMUL  = new Button(baseX+stepX*2, baseY+stepY, btnFRACTMUL_IMG, "", color(240), "fnFRACTmul");
  //btnFRACTDIV  = new Button(baseX+stepX*3, baseY+stepY, btnFRACTDIV_IMG, "", color(240), "fnFRACTdiv");
  //btnFRACTGEN  = new Button(baseX+stepX*4, baseY+stepY, btnFRACTGEN_IMG, "", color(240), "fnFRACTgen");
  //btnCRAMER    = new Button(baseX+stepX*5, baseY+stepY, btnCRAMER_IMG, "", color(240), "fnCRAMER");
  //btnTRIANGLE  = new Button(baseX+stepX*6, baseY+stepY, btnTRIANGLE_IMG, "", color(240), "fnTRIANGLE");
  //
  //baseX = baseX;
  //baseY = baseY+stepY + 40;
  //stepX = 40;
  //stepY = 36;
  //btnFACT      = new Button(baseX,         baseY, btnFACT_IMG, "", color(240), "fnFACT");
  //btnFIBO      = new Button(baseX+stepX,   baseY, btnFIBO_IMG, "", color(240), "fnFIBO");
  ////btnBINOMIAL  = new Button(baseX+stepX,   baseY, btnBINOMIAL_IMG, "", color(240), "fnBINOMIAL");
  //btnPERM      = new Button(baseX+stepX*2, baseY, btnPERM_IMG, "", color(240), "fnPERM");
  //btnCOMB      = new Button(baseX+stepX*3, baseY, btnCOMB_IMG, "", color(240), "fnCOMB");
  //btnSTAT      = new Button(baseX+stepX*4, baseY, btnSTAT_IMG, "", color(240), "fnSTAT");
  //btnLR        = new Button(baseX+stepX*5, baseY,  btnLR_IMG, "", color(240), "fnLR");
  //btnRND       = new Button(baseX+stepX*6, baseY, btnRND_IMG, "", color(240), "fnRND");
  //
  //// Column buttons
  //baseX = 909;
  //baseY = 16;
  //stepX = 44;
  //stepY = 36;
  //btnX_Y    = new Button(baseX,        baseY,         btnX_Y_IMG, "", color(240), "fnX_Y");
  //btnFIX    = new Button(baseX+stepX,  baseY,         btnFIX_IMG, "", color(240), "fnFIX");
  //btnSTOALL = new Button(baseX,        baseY+stepY,    btnSTOALL_IMG, "", color(240), "fnSTOALL");
  //btnRCLALL = new Button(baseX+stepX,  baseY+stepY,    btnRCLALL_IMG, "", color(240), "fnRCLALL");
  //btnPERC   = new Button(baseX,        baseY+stepY*2,  btnPERC_IMG, "", color(240), "fnPERC");
  //btnDELTA  = new Button(baseX+stepX,  baseY+stepY*2,  btnDELTA_IMG, "", color(240), "fnDELTA");
  //btnCXADD  = new Button(baseX,        baseY+stepY*3,  btnCXADD_IMG, "", color(240), "fnCXADD");
  //btnCXSUB  = new Button(baseX+stepX,  baseY+stepY*3,  btnCXSUB_IMG, "", color(240), "fnCXSUB");
  //btnCXMUL  = new Button(baseX,        baseY+stepY*4,  btnCXMUL_IMG, "", color(240), "fnCXMUL");
  //btnCXDIV  = new Button(baseX+stepX,  baseY+stepY*4,  btnCXDIV_IMG, "", color(240), "fnCXDIV");
  //btnCXINV  = new Button(baseX,        baseY+stepY*5,  btnCXINV_IMG, "", color(240), "fnCXINV");
  //btnCXPOW  = new Button(baseX+stepX,  baseY+stepY*5,  btnCXPOW_IMG, "", color(240), "fnCXPOW");
  //btnVECADD = new Button(baseX,        baseY+stepY*6,  btnVECADD_IMG, "", color(240), "fnVECADD");
  //btnVECSUB = new Button(baseX+stepX,  baseY+stepY*6,  btnVECSUB_IMG, "", color(240), "fnVECSUB");
  //btnVECCRO = new Button(baseX,        baseY+stepY*7,  btnVECCRO_IMG, "", color(240), "fnVECCRO");
  //btnVECDOT = new Button(baseX+stepX,  baseY+stepY*7,  btnVECDOT_IMG, "", color(240), "fnVECDOT");
  //btnVECANG = new Button(baseX,        baseY+stepY*8,  btnVECANG_IMG, "", color(240), "fnVECANG");
  //btnVECMAG = new Button(baseX+stepX,  baseY+stepY*8,  btnVECMAG_IMG, "", color(240), "fnVECMAG");
  //btnTADD   = new Button(baseX,        baseY+stepY*9,  btnTADD_IMG, "", color(240), "fnTADD");
  //btnTSUB   = new Button(baseX+stepX,  baseY+stepY*9,  btnTSUB_IMG, "", color(240), "fnTSUB");
  //btnASEQ   = new Button(baseX,        baseY+stepY*10, btnASEQ_IMG, "", color(240), "fnASEQ");
  //btnGSEQ   = new Button(baseX+stepX,  baseY+stepY*10, btnGSEQ_IMG, "", color(240), "fnGSEQ");
  //btnSLOPE  = new Button(baseX,        baseY+stepY*11, btnSLOPE_IMG, "", color(240), "fnSLOPE");
  //btnEDIT   = new Button(baseX+stepX,  baseY+stepY*11, btnEDIT_IMG, "", color(240), "fnEDIT");
  //btnMATH   = new Button(baseX,        baseY+stepY*12+6, btnMATH_IMG, "", color(240), "fnMATH");
  //btnEXIT   = new Button(baseX+stepX,  baseY+stepY*12+6, btnEXIT_IMG, "", color(240), "fnEXIT");
  //
  //// Forth buttons
  //baseX = 8;
  //baseY = 384;
  //stepX = 57;
  //stepY = 37;
  //btnDUP   = new Button(baseX,         baseY, btnDUP_IMG, "", color(240), "fnDUP");
  //btnDROP  = new Button(baseX+stepX,   baseY, btnDROP_IMG, "", color(240), "fnDROP");
  //btnSWAP  = new Button(baseX+stepX*2, baseY, btnSWAP_IMG, "", color(240), "fnSWAP");
  //btnOVER  = new Button(baseX+stepX*3, baseY, btnOVER_IMG, "", color(240), "fnOVER");
  //btnROT   = new Button(baseX+stepX*4, baseY, btnROT_IMG, "", color(240), "fnROT");
  //btnNIP   = new Button(baseX+stepX*5, baseY, btnNIP_IMG, "", color(240), "fnNIP");
  //btnTUCK  = new Button(baseX+stepX*6, baseY, btnTUCK_IMG, "", color(240), "fnTUCK");
  //
  //btn2DUP  = new Button(baseX,         baseY+stepY, btn2DUP_IMG, "", color(240), "fn2DUP");
  //btn2DROP = new Button(baseX+stepX,   baseY+stepY, btn2DROP_IMG, "", color(240), "fn2DROP");
  //btn2SWAP = new Button(baseX+stepX*2, baseY+stepY, btn2SWAP_IMG, "", color(240), "fn2SWAP");
  //btn2OVER = new Button(baseX+stepX*3, baseY+stepY, btn2OVER_IMG, "", color(240), "fn2OVER");
  //btn2ROT  = new Button(baseX+stepX*4, baseY+stepY, btn2ROT_IMG, "", color(240), "fn2ROT");
  //btn2NIP  = new Button(baseX+stepX*5, baseY+stepY, btn2NIP_IMG, "", color(240), "fn2NIP");
  //btn2TUCK = new Button(baseX+stepX*6, baseY+stepY, btn2TUCK_IMG, "", color(240), "fn2TUCK");
  //
  //btnCOPYS  = new Button(baseX,         baseY+stepY*2, btnCOPYS_IMG, "", color(240), "fnCOPYS");
  //btnPASTES = new Button(baseX+stepX,   baseY+stepY*2, btnPASTES_IMG, "", color(240), "fnPASTES");
  //btnPICKS  = new Button(baseX+stepX*2, baseY+stepY*2, btnPICKS_IMG, "", color(240), "fnPICKS");
  //btnROLLS  = new Button(baseX+stepX*3, baseY+stepY*2, btnROLLS_IMG, "", color(240), "fnROLLS");
  //btnFLIPS  = new Button(baseX+stepX*4, baseY+stepY*2, btnFLIPS_IMG, "", color(240), "fnFLIPS");
  //btnRUPS   = new Button(baseX+stepX*5, baseY+stepY*2, btnRUPS_IMG, "", color(240), "fnRUPS");
  //btnRDOWNS = new Button(baseX+stepX*6, baseY+stepY*2, btnRDOWNS_IMG, "", color(240), "fnRDOWNS");
  //btnCLEAR  = new Button(baseX+stepX*7, baseY+stepY*2, btnCLEAR_IMG, "", color(240), "fnCLS");
  //btnLOAD   = new Button(baseX+stepX*8, baseY+stepY*2, btnLOAD_IMG, "", color(240), "fnloadFILE");
  //btnSAVE   = new Button(baseX+stepX*9, baseY+stepY*2, btnSAVE_IMG, "", color(240), "fnsaveFILE");
  //btnHELP   = new Button(baseX+stepX*10, baseY+stepY*2, btnHELP_IMG, "", color(240), "fnHELP");
  ////btnTWINS  = new Button(baseX+stepX*2, baseY+stepY*2, btnTWINS_IMG, "", color(240), "fnTWINS");
  //
  //// Memory buttons
  //baseX = 409;
  //baseY = 384;
  //stepX = 39;
  //stepY = 37;
  //btnSTO1 = new Button(baseX,         baseY, btnSTO1_IMG, "", color(240), "fnSTO1");
  //btnSTO2 = new Button(baseX+stepX,   baseY, btnSTO2_IMG, "", color(240), "fnSTO2");
  //btnSTO3 = new Button(baseX+stepX*2, baseY, btnSTO3_IMG, "", color(240), "fnSTO3");
  //btnSTO4 = new Button(baseX+stepX*3, baseY, btnSTO4_IMG, "", color(240), "fnSTO4");
  //btnSTO5 = new Button(baseX+stepX*4, baseY, btnSTO5_IMG, "", color(240), "fnSTO5");
  //btnRCL1 = new Button(baseX,         baseY+stepY, btnRCL1_IMG, "", color(240), "fnRCL1");
  //btnRCL2 = new Button(baseX+stepX,   baseY+stepY, btnRCL2_IMG, "", color(240), "fnRCL2");
  //btnRCL3 = new Button(baseX+stepX*2, baseY+stepY, btnRCL3_IMG, "", color(240), "fnRCL3");
  //btnRCL4 = new Button(baseX+stepX*3, baseY+stepY, btnRCL4_IMG, "", color(240), "fnRCL4");
  //btnRCL5 = new Button(baseX+stepX*4, baseY+stepY, btnRCL5_IMG, "", color(240), "fnRCL5");
}