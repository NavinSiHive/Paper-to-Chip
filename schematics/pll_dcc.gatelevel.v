module pll_dcc (clk_out_o,
    div_rst_o,
    dn_i,
    en_cp_o,
    en_vco_o,
    en_vreg_o,
    lock_o,
    pll_clk_i,
    pll_en_o,
    ref_o,
    refclk_i,
    rst_n_i,
    scan_en_i,
    scan_in_i,
    scan_out_o,
    spi_cs_n_i,
    spi_sclk_i,
    spi_sdi_i,
    spi_sdo_o,
    test_clk_i,
    test_mode_i,
    up_i,
    cp_iset_o,
    m_div_o,
    vco_band_o);
 output clk_out_o;
 output div_rst_o;
 input dn_i;
 output en_cp_o;
 output en_vco_o;
 output en_vreg_o;
 output lock_o;
 input pll_clk_i;
 output pll_en_o;
 output ref_o;
 input refclk_i;
 input rst_n_i;
 input scan_en_i;
 input scan_in_i;
 output scan_out_o;
 input spi_cs_n_i;
 input spi_sclk_i;
 input spi_sdi_i;
 output spi_sdo_o;
 input test_clk_i;
 input test_mode_i;
 input up_i;
 output [7:0] cp_iset_o;
 output [7:0] m_div_o;
 output [7:0] vco_band_o;

 wire pll_clk_i_regs;
 wire _0001_;
 wire _0002_;
 wire _0003_;
 wire _0004_;
 wire _0005_;
 wire _0006_;
 wire _0007_;
 wire _0008_;
 wire _0009_;
 wire _0010_;
 wire _0011_;
 wire _0012_;
 wire _0013_;
 wire _0014_;
 wire _0015_;
 wire _0016_;
 wire _0017_;
 wire _0018_;
 wire _0019_;
 wire _0020_;
 wire _0021_;
 wire _0022_;
 wire _0023_;
 wire _0024_;
 wire _0025_;
 wire _0026_;
 wire _0027_;
 wire _0028_;
 wire _0029_;
 wire _0030_;
 wire _0031_;
 wire _0032_;
 wire _0033_;
 wire _0034_;
 wire _0035_;
 wire _0036_;
 wire _0037_;
 wire _0038_;
 wire _0039_;
 wire _0040_;
 wire _0041_;
 wire _0042_;
 wire _0043_;
 wire _0044_;
 wire _0045_;
 wire _0046_;
 wire _0047_;
 wire _0048_;
 wire _0049_;
 wire _0050_;
 wire _0051_;
 wire _0052_;
 wire _0053_;
 wire _0054_;
 wire _0055_;
 wire _0056_;
 wire _0057_;
 wire _0058_;
 wire _0059_;
 wire _0060_;
 wire _0061_;
 wire _0062_;
 wire _0063_;
 wire _0064_;
 wire _0065_;
 wire _0066_;
 wire _0067_;
 wire _0068_;
 wire _0069_;
 wire _0070_;
 wire _0071_;
 wire _0072_;
 wire _0073_;
 wire _0074_;
 wire _0075_;
 wire _0076_;
 wire _0077_;
 wire _0078_;
 wire _0079_;
 wire _0080_;
 wire _0081_;
 wire _0082_;
 wire _0083_;
 wire _0084_;
 wire _0085_;
 wire _0086_;
 wire _0087_;
 wire _0088_;
 wire _0089_;
 wire _0090_;
 wire _0091_;
 wire _0092_;
 wire _0093_;
 wire _0094_;
 wire _0095_;
 wire _0096_;
 wire _0097_;
 wire _0098_;
 wire _0099_;
 wire _0100_;
 wire _0101_;
 wire _0102_;
 wire _0103_;
 wire _0104_;
 wire _0105_;
 wire _0106_;
 wire _0107_;
 wire _0108_;
 wire _0109_;
 wire _0110_;
 wire _0111_;
 wire _0112_;
 wire _0113_;
 wire _0114_;
 wire _0115_;
 wire _0116_;
 wire _0117_;
 wire _0118_;
 wire _0119_;
 wire _0120_;
 wire _0121_;
 wire _0122_;
 wire _0123_;
 wire _0124_;
 wire _0125_;
 wire _0126_;
 wire _0127_;
 wire _0128_;
 wire _0129_;
 wire _0130_;
 wire _0131_;
 wire _0132_;
 wire _0133_;
 wire _0134_;
 wire _0135_;
 wire _0136_;
 wire _0137_;
 wire _0138_;
 wire _0139_;
 wire _0140_;
 wire _0141_;
 wire _0142_;
 wire _0143_;
 wire _0144_;
 wire _0145_;
 wire _0146_;
 wire _0147_;
 wire _0148_;
 wire _0149_;
 wire _0150_;
 wire _0151_;
 wire _0152_;
 wire _0153_;
 wire _0154_;
 wire _0155_;
 wire _0156_;
 wire _0157_;
 wire _0158_;
 wire _0159_;
 wire _0160_;
 wire _0161_;
 wire _0162_;
 wire _0163_;
 wire _0164_;
 wire _0165_;
 wire _0166_;
 wire _0167_;
 wire _0168_;
 wire _0169_;
 wire _0170_;
 wire _0171_;
 wire _0172_;
 wire _0173_;
 wire _0174_;
 wire _0175_;
 wire _0176_;
 wire _0177_;
 wire _0178_;
 wire _0179_;
 wire _0180_;
 wire _0181_;
 wire _0182_;
 wire _0183_;
 wire _0184_;
 wire _0185_;
 wire _0186_;
 wire _0187_;
 wire _0188_;
 wire _0189_;
 wire _0190_;
 wire _0191_;
 wire _0192_;
 wire _0193_;
 wire _0194_;
 wire _0195_;
 wire _0196_;
 wire _0197_;
 wire _0198_;
 wire _0199_;
 wire _0200_;
 wire _0201_;
 wire _0202_;
 wire _0203_;
 wire _0204_;
 wire _0205_;
 wire _0206_;
 wire _0207_;
 wire _0208_;
 wire _0209_;
 wire _0210_;
 wire _0211_;
 wire _0212_;
 wire _0213_;
 wire _0214_;
 wire _0215_;
 wire _0216_;
 wire _0217_;
 wire _0218_;
 wire _0219_;
 wire _0220_;
 wire _0221_;
 wire _0222_;
 wire _0223_;
 wire _0224_;
 wire _0225_;
 wire _0226_;
 wire _0227_;
 wire _0228_;
 wire _0229_;
 wire _0230_;
 wire _0231_;
 wire _0232_;
 wire _0233_;
 wire _0234_;
 wire _0235_;
 wire _0236_;
 wire _0237_;
 wire _0238_;
 wire _0239_;
 wire _0240_;
 wire _0241_;
 wire _0242_;
 wire _0243_;
 wire _0244_;
 wire _0245_;
 wire _0246_;
 wire _0247_;
 wire _0248_;
 wire _0249_;
 wire _0250_;
 wire _0251_;
 wire _0252_;
 wire _0253_;
 wire _0254_;
 wire _0255_;
 wire _0256_;
 wire _0257_;
 wire _0258_;
 wire _0259_;
 wire _0260_;
 wire _0261_;
 wire _0262_;
 wire _0263_;
 wire _0264_;
 wire _0265_;
 wire _0266_;
 wire _0267_;
 wire _0268_;
 wire _0269_;
 wire _0270_;
 wire _0271_;
 wire _0272_;
 wire _0273_;
 wire _0274_;
 wire _0275_;
 wire _0276_;
 wire _0277_;
 wire _0278_;
 wire _0279_;
 wire _0280_;
 wire _0281_;
 wire _0282_;
 wire _0283_;
 wire _0284_;
 wire _0285_;
 wire _0286_;
 wire _0287_;
 wire _0288_;
 wire _0289_;
 wire _0290_;
 wire _0291_;
 wire _0292_;
 wire _0293_;
 wire _0294_;
 wire _0295_;
 wire _0296_;
 wire _0297_;
 wire _0298_;
 wire _0299_;
 wire _0300_;
 wire _0301_;
 wire _0302_;
 wire _0303_;
 wire _0304_;
 wire _0305_;
 wire _0306_;
 wire _0307_;
 wire _0308_;
 wire _0309_;
 wire _0310_;
 wire _0311_;
 wire _0312_;
 wire _0313_;
 wire _0314_;
 wire _0315_;
 wire _0317_;
 wire _0318_;
 wire _0319_;
 wire _0320_;
 wire _0321_;
 wire _0322_;
 wire _0323_;
 wire _0324_;
 wire _0325_;
 wire _0326_;
 wire _0327_;
 wire _0328_;
 wire _0329_;
 wire _0330_;
 wire _0331_;
 wire _0332_;
 wire _0333_;
 wire _0334_;
 wire _0335_;
 wire _0336_;
 wire _0337_;
 wire _0338_;
 wire _0339_;
 wire _0340_;
 wire _0341_;
 wire _0342_;
 wire _0343_;
 wire _0344_;
 wire _0345_;
 wire _0346_;
 wire _0347_;
 wire _0348_;
 wire _0349_;
 wire _0350_;
 wire _0351_;
 wire _0352_;
 wire _0353_;
 wire _0354_;
 wire _0355_;
 wire _0356_;
 wire _0357_;
 wire _0358_;
 wire _0359_;
 wire _0360_;
 wire _0361_;
 wire _0362_;
 wire _0364_;
 wire _0365_;
 wire _0366_;
 wire _0367_;
 wire _0368_;
 wire _0369_;
 wire _0370_;
 wire _0371_;
 wire _0372_;
 wire _0373_;
 wire _0374_;
 wire _0375_;
 wire _0376_;
 wire _0377_;
 wire _0378_;
 wire _0379_;
 wire _0381_;
 wire _0382_;
 wire _0383_;
 wire _0384_;
 wire _0386_;
 wire _0387_;
 wire _0388_;
 wire _0389_;
 wire _0390_;
 wire _0391_;
 wire _0392_;
 wire _0393_;
 wire _0394_;
 wire _0395_;
 wire _0396_;
 wire _0397_;
 wire _0398_;
 wire _0399_;
 wire _0400_;
 wire _0401_;
 wire _0402_;
 wire _0403_;
 wire _0404_;
 wire _0405_;
 wire _0406_;
 wire _0407_;
 wire _0408_;
 wire _0409_;
 wire _0410_;
 wire _0411_;
 wire _0412_;
 wire _0413_;
 wire _0414_;
 wire _0415_;
 wire _0416_;
 wire _0417_;
 wire _0418_;
 wire _0419_;
 wire _0420_;
 wire _0421_;
 wire _0422_;
 wire _0423_;
 wire _0424_;
 wire _0425_;
 wire _0426_;
 wire _0427_;
 wire _0428_;
 wire _0429_;
 wire _0430_;
 wire _0431_;
 wire _0432_;
 wire _0433_;
 wire _0434_;
 wire net59;
 wire _0439_;
 wire _0440_;
 wire _0448_;
 wire _0449_;
 wire _0450_;
 wire _0451_;
 wire _0452_;
 wire _0454_;
 wire _0455_;
 wire _0456_;
 wire _0457_;
 wire _0458_;
 wire _0459_;
 wire _0460_;
 wire _0461_;
 wire _0464_;
 wire _0466_;
 wire _0469_;
 wire _0472_;
 wire _0473_;
 wire _0474_;
 wire _0475_;
 wire _0476_;
 wire _0477_;
 wire _0478_;
 wire _0479_;
 wire _0480_;
 wire _0481_;
 wire _0482_;
 wire _0483_;
 wire _0484_;
 wire _0485_;
 wire _0486_;
 wire _0487_;
 wire _0488_;
 wire _0489_;
 wire _0490_;
 wire _0491_;
 wire _0492_;
 wire _0493_;
 wire _0494_;
 wire _0495_;
 wire _0496_;
 wire _0498_;
 wire _0499_;
 wire _0500_;
 wire _0501_;
 wire _0502_;
 wire _0503_;
 wire _0504_;
 wire _0507_;
 wire _0508_;
 wire _0509_;
 wire _0510_;
 wire _0511_;
 wire _0512_;
 wire _0513_;
 wire _0514_;
 wire _0515_;
 wire _0516_;
 wire _0517_;
 wire _0518_;
 wire _0519_;
 wire _0520_;
 wire _0521_;
 wire _0522_;
 wire _0523_;
 wire _0524_;
 wire _0525_;
 wire _0526_;
 wire _0527_;
 wire _0528_;
 wire _0529_;
 wire _0530_;
 wire _0531_;
 wire _0532_;
 wire _0533_;
 wire _0534_;
 wire _0535_;
 wire _0536_;
 wire _0537_;
 wire _0538_;
 wire _0539_;
 wire _0540_;
 wire _0541_;
 wire _0542_;
 wire _0543_;
 wire _0544_;
 wire _0545_;
 wire _0546_;
 wire _0548_;
 wire _0551_;
 wire _0552_;
 wire _0553_;
 wire _0554_;
 wire _0555_;
 wire _0556_;
 wire _0557_;
 wire _0558_;
 wire _0559_;
 wire _0560_;
 wire _0561_;
 wire _0562_;
 wire _0563_;
 wire _0564_;
 wire _0565_;
 wire _0566_;
 wire _0567_;
 wire _0568_;
 wire _0569_;
 wire _0570_;
 wire _0571_;
 wire _0572_;
 wire _0573_;
 wire _0574_;
 wire _0575_;
 wire _0576_;
 wire _0577_;
 wire _0578_;
 wire _0579_;
 wire _0580_;
 wire _0581_;
 wire _0582_;
 wire _0583_;
 wire _0584_;
 wire _0585_;
 wire _0586_;
 wire _0587_;
 wire _0590_;
 wire _0591_;
 wire _0593_;
 wire _0594_;
 wire _0595_;
 wire _0596_;
 wire _0597_;
 wire _0598_;
 wire _0600_;
 wire _0604_;
 wire _0606_;
 wire _0609_;
 wire _0610_;
 wire _0611_;
 wire _0612_;
 wire _0613_;
 wire _0614_;
 wire _0615_;
 wire _0616_;
 wire _0617_;
 wire _0618_;
 wire _0619_;
 wire _0620_;
 wire _0621_;
 wire _0622_;
 wire _0623_;
 wire _0624_;
 wire _0625_;
 wire _0626_;
 wire _0627_;
 wire _0628_;
 wire _0629_;
 wire _0630_;
 wire _0631_;
 wire _0632_;
 wire _0633_;
 wire _0634_;
 wire _0635_;
 wire _0636_;
 wire _0637_;
 wire _0638_;
 wire _0639_;
 wire _0640_;
 wire _0641_;
 wire _0642_;
 wire _0643_;
 wire _0644_;
 wire _0645_;
 wire _0646_;
 wire _0647_;
 wire _0648_;
 wire _0649_;
 wire _0650_;
 wire _0651_;
 wire _0652_;
 wire _0653_;
 wire _0654_;
 wire _0655_;
 wire _0656_;
 wire _0657_;
 wire _0658_;
 wire _0659_;
 wire _0660_;
 wire _0661_;
 wire _0662_;
 wire _0663_;
 wire _0664_;
 wire _0665_;
 wire _0667_;
 wire _0668_;
 wire _0669_;
 wire _0670_;
 wire _0671_;
 wire _0672_;
 wire _0673_;
 wire _0675_;
 wire _0676_;
 wire _0677_;
 wire _0678_;
 wire _0679_;
 wire _0680_;
 wire _0681_;
 wire _0682_;
 wire _0683_;
 wire _0684_;
 wire _0685_;
 wire _0686_;
 wire _0687_;
 wire _0688_;
 wire _0689_;
 wire _0690_;
 wire _0691_;
 wire _0692_;
 wire _0693_;
 wire _0694_;
 wire _0695_;
 wire _0696_;
 wire _0697_;
 wire _0698_;
 wire _0699_;
 wire _0700_;
 wire _0701_;
 wire _0702_;
 wire c_auto_relock;
 wire c_bypass_sel;
 wire c_clkout_en;
 wire c_en_cp_man;
 wire c_en_vco_man;
 wire c_en_vreg_man;
 wire \c_lockw[0] ;
 wire \c_lockw[1] ;
 wire \c_lockw[2] ;
 wire \c_lockw[3] ;
 wire \c_lockw[4] ;
 wire \c_lockw[5] ;
 wire \c_lockw[6] ;
 wire \c_lockw[7] ;
 wire c_manual_seq;
 wire \c_outdiv[0] ;
 wire \c_outdiv[1] ;
 wire \c_outdiv[2] ;
 wire c_pll_en;
 wire \c_seqdly[0] ;
 wire \c_seqdly[1] ;
 wire \c_seqdly[2] ;
 wire \c_seqdly[3] ;
 wire \c_seqdly[4] ;
 wire \c_seqdly[5] ;
 wire \c_seqdly[6] ;
 wire \c_seqdly[7] ;
 wire c_soft_rst;
 wire net8;
 wire core_rst_n;
 wire net9;
 wire net10;
 wire net11;
 wire net12;
 wire net13;
 wire net14;
 wire net15;
 wire net16;
 wire \cs_core[0] ;
 wire \cs_pll[0] ;
 wire \cs_pll[1] ;
 wire net17;
 wire net18;
 wire net19;
 wire net20;
 wire net21;
 wire net22;
 wire net23;
 wire net24;
 wire net25;
 wire net26;
 wire net27;
 wire net28;
 wire net29;
 wire pll_d2;
 wire net30;
 wire net31;
 wire net2;
 wire net3;
 wire net4;
 wire net32;
 wire seq_done;
 wire net5;
 wire net6;
 wire net33;
 wire net7;
 wire \u_clkout.N[0] ;
 wire \u_clkout.N[1] ;
 wire \u_clkout.N[2] ;
 wire \u_clkout.cnt[0] ;
 wire \u_clkout.cnt[1] ;
 wire \u_clkout.cnt[2] ;
 wire \u_clkout.divq ;
 wire \u_clkout.sel_clk ;
 wire \u_clkout.u_gate.en_lat ;
 wire \u_clkout.u_n.meta[0] ;
 wire \u_clkout.u_n.meta[1] ;
 wire \u_clkout.u_n.meta[2] ;
 wire \u_csr.addr_r[0] ;
 wire \u_csr.addr_r[1] ;
 wire \u_csr.addr_r[2] ;
 wire \u_csr.addr_r[3] ;
 wire \u_csr.addr_r[4] ;
 wire \u_csr.addr_r[5] ;
 wire \u_csr.addr_r[6] ;
 wire \u_csr.bit_cnt[0] ;
 wire \u_csr.bit_cnt[1] ;
 wire \u_csr.bit_cnt[2] ;
 wire \u_csr.bit_cnt[3] ;
 wire \u_csr.r_cpiset[0] ;
 wire \u_csr.r_cpiset[1] ;
 wire \u_csr.r_cpiset[2] ;
 wire \u_csr.r_cpiset[3] ;
 wire \u_csr.r_cpiset[4] ;
 wire \u_csr.r_cpiset[5] ;
 wire \u_csr.r_cpiset[6] ;
 wire \u_csr.r_cpiset[7] ;
 wire \u_csr.r_ctrl[0] ;
 wire \u_csr.r_ctrl[1] ;
 wire \u_csr.r_ctrl[2] ;
 wire \u_csr.r_ctrl[3] ;
 wire \u_csr.r_ctrl[4] ;
 wire \u_csr.r_ctrl[5] ;
 wire \u_csr.r_ctrl[6] ;
 wire \u_csr.r_ctrl[7] ;
 wire \u_csr.r_ens[0] ;
 wire \u_csr.r_ens[1] ;
 wire \u_csr.r_ens[2] ;
 wire \u_csr.r_ens[3] ;
 wire \u_csr.r_ens[4] ;
 wire \u_csr.r_ens[5] ;
 wire \u_csr.r_ens[6] ;
 wire \u_csr.r_ens[7] ;
 wire \u_csr.r_lockw[0] ;
 wire \u_csr.r_lockw[1] ;
 wire \u_csr.r_lockw[2] ;
 wire \u_csr.r_lockw[3] ;
 wire \u_csr.r_lockw[4] ;
 wire \u_csr.r_lockw[5] ;
 wire \u_csr.r_lockw[6] ;
 wire \u_csr.r_lockw[7] ;
 wire \u_csr.r_mdiv[0] ;
 wire \u_csr.r_mdiv[1] ;
 wire \u_csr.r_mdiv[2] ;
 wire \u_csr.r_mdiv[3] ;
 wire \u_csr.r_mdiv[4] ;
 wire \u_csr.r_mdiv[5] ;
 wire \u_csr.r_mdiv[6] ;
 wire \u_csr.r_mdiv[7] ;
 wire \u_csr.r_odiv[0] ;
 wire \u_csr.r_odiv[1] ;
 wire \u_csr.r_odiv[2] ;
 wire \u_csr.r_odiv[3] ;
 wire \u_csr.r_odiv[4] ;
 wire \u_csr.r_odiv[5] ;
 wire \u_csr.r_odiv[6] ;
 wire \u_csr.r_odiv[7] ;
 wire \u_csr.r_seqdly[0] ;
 wire \u_csr.r_seqdly[1] ;
 wire \u_csr.r_seqdly[2] ;
 wire \u_csr.r_seqdly[3] ;
 wire \u_csr.r_seqdly[4] ;
 wire \u_csr.r_seqdly[5] ;
 wire \u_csr.r_seqdly[6] ;
 wire \u_csr.r_seqdly[7] ;
 wire \u_csr.r_test[0] ;
 wire \u_csr.r_test[1] ;
 wire \u_csr.r_test[2] ;
 wire \u_csr.r_test[3] ;
 wire \u_csr.r_test[4] ;
 wire \u_csr.r_test[5] ;
 wire \u_csr.r_test[6] ;
 wire \u_csr.r_test[7] ;
 wire \u_csr.r_vcobnd[0] ;
 wire \u_csr.r_vcobnd[1] ;
 wire \u_csr.r_vcobnd[2] ;
 wire \u_csr.r_vcobnd[3] ;
 wire \u_csr.r_vcobnd[4] ;
 wire \u_csr.r_vcobnd[5] ;
 wire \u_csr.r_vcobnd[6] ;
 wire \u_csr.r_vcobnd[7] ;
 wire \u_csr.rw_r ;
 wire \u_csr.sh_out[0] ;
 wire \u_csr.sh_out[1] ;
 wire \u_csr.sh_out[2] ;
 wire \u_csr.sh_out[3] ;
 wire \u_csr.sh_out[4] ;
 wire \u_csr.sh_out[5] ;
 wire \u_csr.sh_out[6] ;
 wire \u_csr.shreg[0] ;
 wire \u_csr.shreg[1] ;
 wire \u_csr.shreg[2] ;
 wire \u_csr.shreg[3] ;
 wire \u_csr.shreg[4] ;
 wire \u_csr.shreg[5] ;
 wire \u_csr.shreg[6] ;
 wire \u_csr.st_sync[0] ;
 wire \u_csr.st_sync[1] ;
 wire \u_csr.st_sync[2] ;
 wire \u_csr.st_sync[3] ;
 wire \u_csr.u_clr.s[0] ;
 wire \u_csr.u_clr.s[1] ;
 wire \u_csr.u_clr.s[2] ;
 wire \u_csr.u_clr.tog ;
 wire \u_csr.u_commit.s[0] ;
 wire \u_csr.u_commit.s[1] ;
 wire \u_csr.u_commit.s[2] ;
 wire \u_csr.u_commit.tog ;
 wire \u_csr.u_stsync.meta[0] ;
 wire \u_csr.u_stsync.meta[1] ;
 wire \u_csr.u_stsync.meta[2] ;
 wire \u_csr.u_stsync.meta[3] ;
 wire \u_lock.bad_cnt[0] ;
 wire \u_lock.bad_cnt[1] ;
 wire \u_lock.bad_cnt[2] ;
 wire \u_lock.bad_cnt[3] ;
 wire \u_lock.bad_cnt[4] ;
 wire \u_lock.bad_cnt[5] ;
 wire \u_lock.bad_cnt[6] ;
 wire \u_lock.bad_cnt[7] ;
 wire \u_lock.div_cnt[0] ;
 wire \u_lock.div_cnt[10] ;
 wire \u_lock.div_cnt[11] ;
 wire \u_lock.div_cnt[12] ;
 wire \u_lock.div_cnt[13] ;
 wire \u_lock.div_cnt[14] ;
 wire \u_lock.div_cnt[15] ;
 wire \u_lock.div_cnt[1] ;
 wire \u_lock.div_cnt[2] ;
 wire \u_lock.div_cnt[3] ;
 wire \u_lock.div_cnt[4] ;
 wire \u_lock.div_cnt[5] ;
 wire \u_lock.div_cnt[6] ;
 wire \u_lock.div_cnt[7] ;
 wire \u_lock.div_cnt[8] ;
 wire \u_lock.div_cnt[9] ;
 wire \u_lock.div_d ;
 wire \u_lock.div_edge ;
 wire \u_lock.div_total[0] ;
 wire \u_lock.div_total[1] ;
 wire \u_lock.good_cnt[0] ;
 wire \u_lock.good_cnt[1] ;
 wire \u_lock.good_cnt[2] ;
 wire \u_lock.good_cnt[3] ;
 wire \u_lock.good_cnt[4] ;
 wire \u_lock.good_cnt[5] ;
 wire \u_lock.good_cnt[6] ;
 wire \u_lock.good_cnt[7] ;
 wire \u_lock.k_s[0] ;
 wire \u_lock.k_s[1] ;
 wire \u_lock.k_s[2] ;
 wire \u_lock.k_s[3] ;
 wire \u_lock.k_s[4] ;
 wire \u_lock.k_s[5] ;
 wire \u_lock.k_s[6] ;
 wire \u_lock.k_s[7] ;
 wire \u_lock.u_clr.s[0] ;
 wire \u_lock.u_clr.s[1] ;
 wire \u_lock.u_clr.s[2] ;
 wire \u_lock.u_clr.tog ;
 wire \u_lock.u_div.meta[0] ;
 wire \u_lock.u_div.q[0] ;
 wire \u_lock.u_en.d[0] ;
 wire \u_lock.u_en.meta[0] ;
 wire \u_lock.u_en.q[0] ;
 wire \u_lock.u_k.meta[0] ;
 wire \u_lock.u_k.meta[1] ;
 wire \u_lock.u_k.meta[2] ;
 wire \u_lock.u_k.meta[3] ;
 wire \u_lock.u_k.meta[4] ;
 wire \u_lock.u_k.meta[5] ;
 wire \u_lock.u_k.meta[6] ;
 wire \u_lock.u_k.meta[7] ;
 wire \u_lock.u_lk.d[0] ;
 wire \u_lock.u_lk.meta[0] ;
 wire \u_lock.u_ll.d[0] ;
 wire \u_lock.u_ll.meta[0] ;
 wire \u_lock.u_ll.q[0] ;
 wire \u_lock.win_cnt[0] ;
 wire \u_lock.win_cnt[10] ;
 wire \u_lock.win_cnt[11] ;
 wire \u_lock.win_cnt[12] ;
 wire \u_lock.win_cnt[13] ;
 wire \u_lock.win_cnt[14] ;
 wire \u_lock.win_cnt[15] ;
 wire \u_lock.win_cnt[1] ;
 wire \u_lock.win_cnt[2] ;
 wire \u_lock.win_cnt[3] ;
 wire \u_lock.win_cnt[4] ;
 wire \u_lock.win_cnt[5] ;
 wire \u_lock.win_cnt[6] ;
 wire \u_lock.win_cnt[7] ;
 wire \u_lock.win_cnt[8] ;
 wire \u_lock.win_cnt[9] ;
 wire \u_refgate.en_lat ;
 wire \u_seq.dwell[0] ;
 wire \u_seq.dwell[1] ;
 wire \u_seq.dwell[2] ;
 wire \u_seq.dwell[3] ;
 wire \u_seq.dwell[4] ;
 wire \u_seq.dwell[5] ;
 wire \u_seq.dwell[6] ;
 wire \u_seq.dwell[7] ;
 wire \u_seq.state[0] ;
 wire \u_seq.state[1] ;
 wire \u_seq.state[2] ;
 wire \u_seq.state[3] ;
 wire \u_seq.state[4] ;
 wire \u_seq.state[5] ;
 wire net34;
 wire net35;
 wire net36;
 wire net37;
 wire net38;
 wire net39;
 wire net40;
 wire net41;
 wire net;
 wire net1;
 wire net57;
 wire net64;
 wire net55;
 wire net54;
 wire net58;
 wire net56;
 wire net63;
 wire refclk_i_regs;
 wire net60;
 wire net61;
 wire net62;
 wire \u_clkout.sel_clk_regs ;
 wire clknet_0_pll_clk_i;
 wire clknet_1_0__leaf_pll_clk_i;
 wire clknet_0_pll_clk_i_regs;
 wire clknet_1_0__leaf_pll_clk_i_regs;
 wire clknet_1_1__leaf_pll_clk_i_regs;
 wire clknet_0_refclk_i;
 wire clknet_1_0__leaf_refclk_i;
 wire clknet_1_1__leaf_refclk_i;
 wire clknet_0_refclk_i_regs;
 wire clknet_4_0_0_refclk_i_regs;
 wire clknet_4_1_0_refclk_i_regs;
 wire clknet_4_2_0_refclk_i_regs;
 wire clknet_4_3_0_refclk_i_regs;
 wire clknet_4_4_0_refclk_i_regs;
 wire clknet_4_5_0_refclk_i_regs;
 wire clknet_4_6_0_refclk_i_regs;
 wire clknet_4_7_0_refclk_i_regs;
 wire clknet_4_8_0_refclk_i_regs;
 wire clknet_4_9_0_refclk_i_regs;
 wire clknet_4_10_0_refclk_i_regs;
 wire clknet_4_11_0_refclk_i_regs;
 wire clknet_4_12_0_refclk_i_regs;
 wire clknet_4_13_0_refclk_i_regs;
 wire clknet_4_14_0_refclk_i_regs;
 wire clknet_4_15_0_refclk_i_regs;
 wire \clknet_0_u_clkout.sel_clk ;
 wire \clknet_1_0__leaf_u_clkout.sel_clk ;
 wire \clknet_0_u_clkout.sel_clk_regs ;
 wire \clknet_1_0__leaf_u_clkout.sel_clk_regs ;
 wire clknet_0_spi_sclk_i;
 wire clknet_3_0__leaf_spi_sclk_i;
 wire clknet_3_1__leaf_spi_sclk_i;
 wire clknet_3_2__leaf_spi_sclk_i;
 wire clknet_3_3__leaf_spi_sclk_i;
 wire clknet_3_4__leaf_spi_sclk_i;
 wire clknet_3_5__leaf_spi_sclk_i;
 wire clknet_3_6__leaf_spi_sclk_i;
 wire clknet_3_7__leaf_spi_sclk_i;
 wire clknet_0_pll_d2;
 wire clknet_1_0__leaf_pll_d2;
 wire clknet_1_1__leaf_pll_d2;
 wire delaynet_0_refclk;
 wire delaynet_1_refclk;
 wire delaynet_2_refclk;
 wire delaynet_3_refclk;
 wire delaynet_4_refclk;
 wire delaynet_5_refclk;
 wire delaynet_6_refclk;
 wire delaynet_7_refclk;

 sky130_fd_sc_hd__nand2_1 _0708_ (.A(\u_csr.bit_cnt[2] ),
    .B(_0012_),
    .Y(_0439_));
 sky130_fd_sc_hd__or2_2 _0709_ (.A(\u_csr.bit_cnt[3] ),
    .B(_0439_),
    .X(_0440_));
 sky130_fd_sc_hd__mux2_2 _0711_ (.A0(net6),
    .A1(net58),
    .S(_0440_),
    .X(_0190_));
 sky130_fd_sc_hd__mux2_2 _0714_ (.A0(\u_csr.shreg[0] ),
    .A1(\u_csr.addr_r[1] ),
    .S(_0440_),
    .X(_0189_));
 sky130_fd_sc_hd__mux2_2 _0716_ (.A0(\u_csr.shreg[1] ),
    .A1(\u_csr.addr_r[2] ),
    .S(_0440_),
    .X(_0188_));
 sky130_fd_sc_hd__mux2_2 _0718_ (.A0(\u_csr.shreg[2] ),
    .A1(\u_csr.addr_r[3] ),
    .S(_0440_),
    .X(_0187_));
 sky130_fd_sc_hd__mux2_2 _0720_ (.A0(\u_csr.shreg[3] ),
    .A1(\u_csr.addr_r[4] ),
    .S(_0440_),
    .X(_0186_));
 sky130_fd_sc_hd__mux2_2 _0722_ (.A0(\u_csr.shreg[4] ),
    .A1(\u_csr.addr_r[5] ),
    .S(_0440_),
    .X(_0185_));
 sky130_fd_sc_hd__inv_1 _0723_ (.A(\u_lock.bad_cnt[0] ),
    .Y(_0050_));
 sky130_fd_sc_hd__inv_1 _0724_ (.A(\u_clkout.N[2] ),
    .Y(_0014_));
 sky130_fd_sc_hd__inv_1 _0725_ (.A(\u_clkout.N[1] ),
    .Y(_0038_));
 sky130_fd_sc_hd__inv_1 _0726_ (.A(\u_lock.k_s[4] ),
    .Y(_0074_));
 sky130_fd_sc_hd__inv_1 _0727_ (.A(\u_lock.k_s[2] ),
    .Y(_0071_));
 sky130_fd_sc_hd__inv_1 _0728_ (.A(\u_lock.k_s[5] ),
    .Y(_0068_));
 sky130_fd_sc_hd__inv_1 _0729_ (.A(\u_lock.k_s[6] ),
    .Y(_0065_));
 sky130_fd_sc_hd__inv_1 _0730_ (.A(\c_seqdly[1] ),
    .Y(_0062_));
 sky130_fd_sc_hd__inv_1 _0731_ (.A(_0089_),
    .Y(_0448_));
 sky130_fd_sc_hd__nand2b_1 _0732_ (.A_N(_0033_),
    .B(_0032_),
    .Y(_0449_));
 sky130_fd_sc_hd__a21o_1 _0733_ (.A1(_0081_),
    .A2(_0449_),
    .B1(_0080_),
    .X(_0450_));
 sky130_fd_sc_hd__a21o_1 _0734_ (.A1(_0049_),
    .A2(_0450_),
    .B1(_0048_),
    .X(_0451_));
 sky130_fd_sc_hd__nor2_1 _0735_ (.A(_0448_),
    .B(_0451_),
    .Y(_0268_));
 sky130_fd_sc_hd__inv_1 _0736_ (.A(\u_clkout.cnt[0] ),
    .Y(_0030_));
 sky130_fd_sc_hd__nor2_1 _0737_ (.A(\u_clkout.cnt[0] ),
    .B(_0451_),
    .Y(_0267_));
 sky130_fd_sc_hd__nand3_1 _0738_ (.A(\u_csr.bit_cnt[2] ),
    .B(\u_csr.bit_cnt[1] ),
    .C(\u_csr.bit_cnt[0] ),
    .Y(_0452_));
 sky130_fd_sc_hd__xnor2_1 _0739_ (.A(\u_csr.bit_cnt[3] ),
    .B(_0452_),
    .Y(_0002_));
 sky130_fd_sc_hd__xor2_1 _0740_ (.A(\u_csr.bit_cnt[2] ),
    .B(_0013_),
    .X(_0001_));
 sky130_fd_sc_hd__nor3b_1 _0742_ (.A(\u_lock.win_cnt[14] ),
    .B(\u_lock.win_cnt[15] ),
    .C_N(_0017_),
    .Y(_0454_));
 sky130_fd_sc_hd__and3_1 _0743_ (.A(\u_lock.win_cnt[4] ),
    .B(\u_lock.win_cnt[3] ),
    .C(\u_lock.win_cnt[2] ),
    .X(_0455_));
 sky130_fd_sc_hd__and2_1 _0744_ (.A(\u_lock.win_cnt[5] ),
    .B(_0455_),
    .X(_0456_));
 sky130_fd_sc_hd__or4_1 _0745_ (.A(\u_lock.win_cnt[12] ),
    .B(\u_lock.win_cnt[13] ),
    .C(\u_lock.win_cnt[10] ),
    .D(\u_lock.win_cnt[11] ),
    .X(_0457_));
 sky130_fd_sc_hd__nand2_1 _0746_ (.A(\u_lock.win_cnt[7] ),
    .B(\u_lock.win_cnt[6] ),
    .Y(_0458_));
 sky130_fd_sc_hd__nor4_2 _0747_ (.A(\u_lock.win_cnt[9] ),
    .B(\u_lock.win_cnt[8] ),
    .C(_0457_),
    .D(_0458_),
    .Y(_0459_));
 sky130_fd_sc_hd__nand3_2 _0748_ (.A(_0454_),
    .B(_0456_),
    .C(_0459_),
    .Y(_0460_));
 sky130_fd_sc_hd__nand2_1 _0749_ (.A(\u_lock.u_en.q[0] ),
    .B(_0460_),
    .Y(_0461_));
 sky130_fd_sc_hd__nand2_1 _0752_ (.A(\u_lock.div_cnt[13] ),
    .B(\u_lock.div_cnt[12] ),
    .Y(_0464_));
 sky130_fd_sc_hd__and2_1 _0754_ (.A(\u_lock.div_cnt[11] ),
    .B(\u_lock.div_cnt[10] ),
    .X(_0466_));
 sky130_fd_sc_hd__and4_4 _0757_ (.A(\u_lock.div_cnt[5] ),
    .B(\u_lock.div_cnt[2] ),
    .C(\u_lock.div_cnt[4] ),
    .D(\u_lock.div_cnt[3] ),
    .X(_0469_));
 sky130_fd_sc_hd__and4_1 _0760_ (.A(\u_lock.div_cnt[6] ),
    .B(\u_lock.div_cnt[8] ),
    .C(\u_lock.div_cnt[7] ),
    .D(\u_lock.div_cnt[9] ),
    .X(_0472_));
 sky130_fd_sc_hd__nand4_4 _0761_ (.A(_0021_),
    .B(_0466_),
    .C(_0469_),
    .D(_0472_),
    .Y(_0473_));
 sky130_fd_sc_hd__nor2_1 _0762_ (.A(_0464_),
    .B(_0473_),
    .Y(_0474_));
 sky130_fd_sc_hd__xnor2_1 _0763_ (.A(\u_lock.div_cnt[14] ),
    .B(_0474_),
    .Y(_0475_));
 sky130_fd_sc_hd__nor2_1 _0764_ (.A(net54),
    .B(_0475_),
    .Y(_0284_));
 sky130_fd_sc_hd__nand4_1 _0765_ (.A(\u_lock.div_cnt[5] ),
    .B(\u_lock.div_cnt[2] ),
    .C(\u_lock.div_cnt[4] ),
    .D(\u_lock.div_cnt[3] ),
    .Y(_0476_));
 sky130_fd_sc_hd__nand2_1 _0766_ (.A(_0020_),
    .B(\u_lock.div_cnt[1] ),
    .Y(_0477_));
 sky130_fd_sc_hd__nor2_1 _0767_ (.A(_0476_),
    .B(_0477_),
    .Y(_0478_));
 sky130_fd_sc_hd__and4_1 _0768_ (.A(\u_lock.div_cnt[12] ),
    .B(_0466_),
    .C(_0472_),
    .D(_0478_),
    .X(_0479_));
 sky130_fd_sc_hd__xnor2_1 _0769_ (.A(\u_lock.div_cnt[13] ),
    .B(_0479_),
    .Y(_0480_));
 sky130_fd_sc_hd__nor2_1 _0770_ (.A(net54),
    .B(_0480_),
    .Y(_0283_));
 sky130_fd_sc_hd__xor2_1 _0771_ (.A(\u_lock.div_cnt[12] ),
    .B(_0473_),
    .X(_0481_));
 sky130_fd_sc_hd__nor2_1 _0772_ (.A(net54),
    .B(_0481_),
    .Y(_0282_));
 sky130_fd_sc_hd__nand3_1 _0773_ (.A(\u_lock.div_cnt[10] ),
    .B(_0472_),
    .C(_0478_),
    .Y(_0482_));
 sky130_fd_sc_hd__xor2_1 _0774_ (.A(\u_lock.div_cnt[11] ),
    .B(_0482_),
    .X(_0483_));
 sky130_fd_sc_hd__nor2_1 _0775_ (.A(net54),
    .B(_0483_),
    .Y(_0281_));
 sky130_fd_sc_hd__nand3_1 _0776_ (.A(_0021_),
    .B(_0469_),
    .C(_0472_),
    .Y(_0484_));
 sky130_fd_sc_hd__xor2_1 _0777_ (.A(\u_lock.div_cnt[10] ),
    .B(_0484_),
    .X(_0485_));
 sky130_fd_sc_hd__nor2_1 _0778_ (.A(net54),
    .B(_0485_),
    .Y(_0280_));
 sky130_fd_sc_hd__nand3_1 _0779_ (.A(\u_lock.div_cnt[6] ),
    .B(\u_lock.div_cnt[8] ),
    .C(\u_lock.div_cnt[7] ),
    .Y(_0486_));
 sky130_fd_sc_hd__and2_1 _0780_ (.A(_0020_),
    .B(\u_lock.div_cnt[1] ),
    .X(_0487_));
 sky130_fd_sc_hd__nand2_1 _0781_ (.A(_0469_),
    .B(_0487_),
    .Y(_0488_));
 sky130_fd_sc_hd__nor2_1 _0782_ (.A(_0486_),
    .B(_0488_),
    .Y(_0489_));
 sky130_fd_sc_hd__xnor2_1 _0783_ (.A(\u_lock.div_cnt[9] ),
    .B(_0489_),
    .Y(_0490_));
 sky130_fd_sc_hd__nor2_1 _0784_ (.A(net54),
    .B(_0490_),
    .Y(_0294_));
 sky130_fd_sc_hd__and2_1 _0785_ (.A(_0021_),
    .B(_0469_),
    .X(_0491_));
 sky130_fd_sc_hd__nand3_1 _0786_ (.A(\u_lock.div_cnt[6] ),
    .B(\u_lock.div_cnt[7] ),
    .C(_0491_),
    .Y(_0492_));
 sky130_fd_sc_hd__xor2_1 _0787_ (.A(\u_lock.div_cnt[8] ),
    .B(_0492_),
    .X(_0493_));
 sky130_fd_sc_hd__nor2_1 _0788_ (.A(net54),
    .B(_0493_),
    .Y(_0293_));
 sky130_fd_sc_hd__nand2_1 _0789_ (.A(\u_lock.div_cnt[6] ),
    .B(_0478_),
    .Y(_0494_));
 sky130_fd_sc_hd__xor2_1 _0790_ (.A(\u_lock.div_cnt[7] ),
    .B(_0494_),
    .X(_0495_));
 sky130_fd_sc_hd__nor2_1 _0791_ (.A(net54),
    .B(_0495_),
    .Y(_0292_));
 sky130_fd_sc_hd__xnor2_1 _0792_ (.A(\u_lock.div_cnt[6] ),
    .B(_0491_),
    .Y(_0496_));
 sky130_fd_sc_hd__nor2_1 _0793_ (.A(net54),
    .B(_0496_),
    .Y(_0291_));
 sky130_fd_sc_hd__nand4_1 _0795_ (.A(\u_lock.div_cnt[2] ),
    .B(\u_lock.div_cnt[4] ),
    .C(\u_lock.div_cnt[3] ),
    .D(_0487_),
    .Y(_0498_));
 sky130_fd_sc_hd__xor2_1 _0796_ (.A(\u_lock.div_cnt[5] ),
    .B(_0498_),
    .X(_0499_));
 sky130_fd_sc_hd__nor2_1 _0797_ (.A(net54),
    .B(_0499_),
    .Y(_0290_));
 sky130_fd_sc_hd__nand3_1 _0798_ (.A(\u_lock.div_cnt[2] ),
    .B(_0021_),
    .C(\u_lock.div_cnt[3] ),
    .Y(_0500_));
 sky130_fd_sc_hd__xor2_1 _0799_ (.A(\u_lock.div_cnt[4] ),
    .B(_0500_),
    .X(_0501_));
 sky130_fd_sc_hd__nor2_1 _0800_ (.A(net54),
    .B(_0501_),
    .Y(_0289_));
 sky130_fd_sc_hd__nand2_1 _0801_ (.A(\u_lock.div_cnt[2] ),
    .B(_0487_),
    .Y(_0502_));
 sky130_fd_sc_hd__xor2_1 _0802_ (.A(\u_lock.div_cnt[3] ),
    .B(_0502_),
    .X(_0503_));
 sky130_fd_sc_hd__nor2_1 _0803_ (.A(net54),
    .B(_0503_),
    .Y(_0288_));
 sky130_fd_sc_hd__xnor2_1 _0804_ (.A(\u_lock.div_cnt[2] ),
    .B(_0021_),
    .Y(_0504_));
 sky130_fd_sc_hd__nor2_1 _0805_ (.A(net54),
    .B(_0504_),
    .Y(_0287_));
 sky130_fd_sc_hd__and3_1 _0808_ (.A(\u_lock.div_total[1] ),
    .B(\u_lock.u_en.q[0] ),
    .C(_0460_),
    .X(_0286_));
 sky130_fd_sc_hd__and3_1 _0809_ (.A(\u_lock.div_total[0] ),
    .B(\u_lock.u_en.q[0] ),
    .C(_0460_),
    .X(_0279_));
 sky130_fd_sc_hd__nand2_1 _0810_ (.A(_0019_),
    .B(_0456_),
    .Y(_0507_));
 sky130_fd_sc_hd__nand3_1 _0811_ (.A(\u_lock.win_cnt[9] ),
    .B(\u_lock.win_cnt[8] ),
    .C(\u_lock.win_cnt[10] ),
    .Y(_0508_));
 sky130_fd_sc_hd__nor2_1 _0812_ (.A(_0458_),
    .B(_0508_),
    .Y(_0509_));
 sky130_fd_sc_hd__nand4_1 _0813_ (.A(\u_lock.win_cnt[12] ),
    .B(\u_lock.win_cnt[13] ),
    .C(\u_lock.win_cnt[11] ),
    .D(_0509_),
    .Y(_0510_));
 sky130_fd_sc_hd__nor2_1 _0814_ (.A(_0507_),
    .B(_0510_),
    .Y(_0511_));
 sky130_fd_sc_hd__xnor2_1 _0815_ (.A(\u_lock.win_cnt[14] ),
    .B(_0511_),
    .Y(_0512_));
 sky130_fd_sc_hd__nor2_1 _0816_ (.A(_0461_),
    .B(_0512_),
    .Y(_0300_));
 sky130_fd_sc_hd__and3_1 _0817_ (.A(\u_lock.win_cnt[0] ),
    .B(\u_lock.win_cnt[1] ),
    .C(_0456_),
    .X(_0513_));
 sky130_fd_sc_hd__nand4_1 _0818_ (.A(\u_lock.win_cnt[12] ),
    .B(\u_lock.win_cnt[11] ),
    .C(_0509_),
    .D(_0513_),
    .Y(_0514_));
 sky130_fd_sc_hd__xor2_1 _0819_ (.A(\u_lock.win_cnt[13] ),
    .B(_0514_),
    .X(_0515_));
 sky130_fd_sc_hd__nor2_1 _0820_ (.A(_0461_),
    .B(_0515_),
    .Y(_0299_));
 sky130_fd_sc_hd__nand4_1 _0821_ (.A(_0019_),
    .B(\u_lock.win_cnt[11] ),
    .C(_0456_),
    .D(_0509_),
    .Y(_0516_));
 sky130_fd_sc_hd__xor2_1 _0822_ (.A(\u_lock.win_cnt[12] ),
    .B(_0516_),
    .X(_0517_));
 sky130_fd_sc_hd__nor2_1 _0823_ (.A(_0461_),
    .B(_0517_),
    .Y(_0298_));
 sky130_fd_sc_hd__nand2_1 _0824_ (.A(_0509_),
    .B(_0513_),
    .Y(_0518_));
 sky130_fd_sc_hd__xor2_1 _0825_ (.A(\u_lock.win_cnt[11] ),
    .B(_0518_),
    .X(_0519_));
 sky130_fd_sc_hd__nor2_1 _0826_ (.A(_0461_),
    .B(_0519_),
    .Y(_0297_));
 sky130_fd_sc_hd__nor2_1 _0827_ (.A(_0458_),
    .B(_0507_),
    .Y(_0520_));
 sky130_fd_sc_hd__nand3_1 _0828_ (.A(\u_lock.win_cnt[9] ),
    .B(\u_lock.win_cnt[8] ),
    .C(_0520_),
    .Y(_0521_));
 sky130_fd_sc_hd__xor2_1 _0829_ (.A(\u_lock.win_cnt[10] ),
    .B(_0521_),
    .X(_0522_));
 sky130_fd_sc_hd__nor2_1 _0830_ (.A(net54),
    .B(_0522_),
    .Y(_0296_));
 sky130_fd_sc_hd__nand4_1 _0831_ (.A(\u_lock.win_cnt[8] ),
    .B(\u_lock.win_cnt[7] ),
    .C(\u_lock.win_cnt[6] ),
    .D(_0513_),
    .Y(_0523_));
 sky130_fd_sc_hd__xor2_1 _0832_ (.A(\u_lock.win_cnt[9] ),
    .B(_0523_),
    .X(_0524_));
 sky130_fd_sc_hd__nor2_1 _0833_ (.A(net54),
    .B(_0524_),
    .Y(_0310_));
 sky130_fd_sc_hd__xnor2_1 _0834_ (.A(\u_lock.win_cnt[8] ),
    .B(_0520_),
    .Y(_0525_));
 sky130_fd_sc_hd__nor2_1 _0835_ (.A(net54),
    .B(_0525_),
    .Y(_0309_));
 sky130_fd_sc_hd__nand2_1 _0836_ (.A(\u_lock.win_cnt[6] ),
    .B(_0513_),
    .Y(_0526_));
 sky130_fd_sc_hd__xor2_1 _0837_ (.A(\u_lock.win_cnt[7] ),
    .B(_0526_),
    .X(_0527_));
 sky130_fd_sc_hd__nor2_1 _0838_ (.A(net54),
    .B(_0527_),
    .Y(_0308_));
 sky130_fd_sc_hd__xor2_1 _0839_ (.A(\u_lock.win_cnt[6] ),
    .B(_0507_),
    .X(_0528_));
 sky130_fd_sc_hd__nor2_1 _0840_ (.A(net54),
    .B(_0528_),
    .Y(_0307_));
 sky130_fd_sc_hd__nand3_1 _0841_ (.A(\u_lock.win_cnt[0] ),
    .B(\u_lock.win_cnt[1] ),
    .C(_0455_),
    .Y(_0529_));
 sky130_fd_sc_hd__xor2_1 _0842_ (.A(\u_lock.win_cnt[5] ),
    .B(_0529_),
    .X(_0530_));
 sky130_fd_sc_hd__nor2_1 _0843_ (.A(_0461_),
    .B(_0530_),
    .Y(_0306_));
 sky130_fd_sc_hd__nand3_1 _0844_ (.A(\u_lock.win_cnt[3] ),
    .B(_0019_),
    .C(\u_lock.win_cnt[2] ),
    .Y(_0531_));
 sky130_fd_sc_hd__xor2_1 _0845_ (.A(\u_lock.win_cnt[4] ),
    .B(_0531_),
    .X(_0532_));
 sky130_fd_sc_hd__nor2_1 _0846_ (.A(_0461_),
    .B(_0532_),
    .Y(_0305_));
 sky130_fd_sc_hd__nand3_1 _0847_ (.A(\u_lock.win_cnt[2] ),
    .B(\u_lock.win_cnt[0] ),
    .C(\u_lock.win_cnt[1] ),
    .Y(_0533_));
 sky130_fd_sc_hd__xor2_1 _0848_ (.A(\u_lock.win_cnt[3] ),
    .B(_0533_),
    .X(_0534_));
 sky130_fd_sc_hd__nor2_1 _0849_ (.A(_0461_),
    .B(_0534_),
    .Y(_0304_));
 sky130_fd_sc_hd__xnor2_1 _0850_ (.A(_0019_),
    .B(\u_lock.win_cnt[2] ),
    .Y(_0535_));
 sky130_fd_sc_hd__nor2_1 _0851_ (.A(_0461_),
    .B(_0535_),
    .Y(_0303_));
 sky130_fd_sc_hd__and3_1 _0852_ (.A(\u_lock.u_en.q[0] ),
    .B(_0018_),
    .C(_0460_),
    .X(_0302_));
 sky130_fd_sc_hd__nor2_1 _0853_ (.A(\u_lock.win_cnt[0] ),
    .B(_0461_),
    .Y(_0295_));
 sky130_fd_sc_hd__inv_1 _0854_ (.A(\u_lock.good_cnt[0] ),
    .Y(_0006_));
 sky130_fd_sc_hd__inv_1 _0855_ (.A(\u_seq.dwell[0] ),
    .Y(_0028_));
 sky130_fd_sc_hd__inv_1 _0856_ (.A(\c_seqdly[4] ),
    .Y(_0077_));
 sky130_fd_sc_hd__inv_1 _0857_ (.A(\u_lock.k_s[3] ),
    .Y(_0003_));
 sky130_fd_sc_hd__xnor2_1 _0858_ (.A(\u_clkout.N[2] ),
    .B(_0042_),
    .Y(_0047_));
 sky130_fd_sc_hd__and4_1 _0859_ (.A(net58),
    .B(\u_csr.addr_r[1] ),
    .C(\u_csr.addr_r[5] ),
    .D(\u_csr.addr_r[6] ),
    .X(_0536_));
 sky130_fd_sc_hd__nand4_1 _0860_ (.A(\u_csr.addr_r[2] ),
    .B(\u_csr.addr_r[3] ),
    .C(\u_csr.addr_r[4] ),
    .D(_0536_),
    .Y(_0537_));
 sky130_fd_sc_hd__or3_4 _0861_ (.A(\u_csr.addr_r[4] ),
    .B(\u_csr.addr_r[5] ),
    .C(\u_csr.addr_r[6] ),
    .X(_0538_));
 sky130_fd_sc_hd__o21ai_0 _0862_ (.A1(net57),
    .A2(\u_csr.addr_r[2] ),
    .B1(\u_csr.addr_r[3] ),
    .Y(_0539_));
 sky130_fd_sc_hd__nand2b_1 _0863_ (.A_N(_0538_),
    .B(_0539_),
    .Y(_0540_));
 sky130_fd_sc_hd__nand3b_1 _0864_ (.A_N(\u_csr.bit_cnt[2] ),
    .B(_0011_),
    .C(\u_csr.bit_cnt[3] ),
    .Y(_0541_));
 sky130_fd_sc_hd__a21oi_1 _0865_ (.A1(_0537_),
    .A2(_0540_),
    .B1(_0541_),
    .Y(_0542_));
 sky130_fd_sc_hd__inv_1 _0866_ (.A(_0542_),
    .Y(_0543_));
 sky130_fd_sc_hd__nor2b_1 _0867_ (.A(net57),
    .B_N(net58),
    .Y(_0544_));
 sky130_fd_sc_hd__nor2_1 _0868_ (.A(\u_csr.addr_r[2] ),
    .B(_0538_),
    .Y(_0545_));
 sky130_fd_sc_hd__and3_1 _0869_ (.A(\u_csr.addr_r[3] ),
    .B(_0544_),
    .C(_0545_),
    .X(_0546_));
 sky130_fd_sc_hd__nor3_4 _0871_ (.A(\u_csr.addr_r[2] ),
    .B(\u_csr.addr_r[3] ),
    .C(_0538_),
    .Y(_0548_));
 sky130_fd_sc_hd__mux4_2 _0874_ (.A0(\u_csr.r_ctrl[6] ),
    .A1(\u_csr.r_ens[6] ),
    .A2(\u_csr.r_mdiv[6] ),
    .A3(\u_csr.r_odiv[6] ),
    .S0(net58),
    .S1(net57),
    .X(_0551_));
 sky130_fd_sc_hd__nor3b_2 _0875_ (.A(\u_csr.addr_r[3] ),
    .B(_0538_),
    .C_N(\u_csr.addr_r[2] ),
    .Y(_0552_));
 sky130_fd_sc_hd__mux4_2 _0876_ (.A0(\u_csr.r_cpiset[6] ),
    .A1(\u_csr.r_vcobnd[6] ),
    .A2(\u_csr.r_lockw[6] ),
    .A3(\u_csr.r_seqdly[6] ),
    .S0(\u_csr.addr_r[0] ),
    .S1(net57),
    .X(_0553_));
 sky130_fd_sc_hd__a22o_1 _0877_ (.A1(_0548_),
    .A2(_0551_),
    .B1(_0552_),
    .B2(_0553_),
    .X(_0554_));
 sky130_fd_sc_hd__a21oi_1 _0878_ (.A1(\u_csr.r_test[6] ),
    .A2(_0546_),
    .B1(_0554_),
    .Y(_0555_));
 sky130_fd_sc_hd__nand2_1 _0879_ (.A(\u_csr.sh_out[5] ),
    .B(_0541_),
    .Y(_0556_));
 sky130_fd_sc_hd__o21ai_0 _0880_ (.A1(_0543_),
    .A2(_0555_),
    .B1(_0556_),
    .Y(_0277_));
 sky130_fd_sc_hd__mux4_2 _0881_ (.A0(\u_csr.r_ctrl[5] ),
    .A1(\u_csr.r_ens[5] ),
    .A2(\u_csr.r_mdiv[5] ),
    .A3(\u_csr.r_odiv[5] ),
    .S0(\u_csr.addr_r[0] ),
    .S1(net57),
    .X(_0557_));
 sky130_fd_sc_hd__mux4_2 _0882_ (.A0(\u_csr.r_cpiset[5] ),
    .A1(\u_csr.r_vcobnd[5] ),
    .A2(\u_csr.r_lockw[5] ),
    .A3(\u_csr.r_seqdly[5] ),
    .S0(\u_csr.addr_r[0] ),
    .S1(net57),
    .X(_0558_));
 sky130_fd_sc_hd__a22oi_1 _0883_ (.A1(_0548_),
    .A2(_0557_),
    .B1(_0558_),
    .B2(_0552_),
    .Y(_0559_));
 sky130_fd_sc_hd__nand2_1 _0884_ (.A(\u_csr.r_test[5] ),
    .B(_0546_),
    .Y(_0560_));
 sky130_fd_sc_hd__nand3_1 _0885_ (.A(_0537_),
    .B(_0559_),
    .C(_0560_),
    .Y(_0561_));
 sky130_fd_sc_hd__a22o_1 _0886_ (.A1(\u_csr.sh_out[4] ),
    .A2(_0541_),
    .B1(_0542_),
    .B2(_0561_),
    .X(_0276_));
 sky130_fd_sc_hd__mux4_2 _0887_ (.A0(\u_csr.r_ctrl[4] ),
    .A1(\u_csr.r_ens[4] ),
    .A2(\u_csr.r_mdiv[4] ),
    .A3(\u_csr.r_odiv[4] ),
    .S0(\u_csr.addr_r[0] ),
    .S1(net57),
    .X(_0562_));
 sky130_fd_sc_hd__mux4_2 _0888_ (.A0(\u_csr.r_cpiset[4] ),
    .A1(\u_csr.r_vcobnd[4] ),
    .A2(\u_csr.r_lockw[4] ),
    .A3(\u_csr.r_seqdly[4] ),
    .S0(\u_csr.addr_r[0] ),
    .S1(net57),
    .X(_0563_));
 sky130_fd_sc_hd__a222oi_1 _0889_ (.A1(\u_csr.r_test[4] ),
    .A2(_0546_),
    .B1(_0548_),
    .B2(_0562_),
    .C1(_0563_),
    .C2(_0552_),
    .Y(_0564_));
 sky130_fd_sc_hd__nand2_1 _0890_ (.A(\u_csr.sh_out[3] ),
    .B(_0541_),
    .Y(_0565_));
 sky130_fd_sc_hd__o21ai_0 _0891_ (.A1(_0543_),
    .A2(_0564_),
    .B1(_0565_),
    .Y(_0275_));
 sky130_fd_sc_hd__nor2_1 _0892_ (.A(net58),
    .B(net57),
    .Y(_0566_));
 sky130_fd_sc_hd__and3_1 _0893_ (.A(\u_csr.addr_r[3] ),
    .B(_0545_),
    .C(_0566_),
    .X(_0567_));
 sky130_fd_sc_hd__mux4_2 _0894_ (.A0(\u_csr.r_cpiset[3] ),
    .A1(\u_csr.r_vcobnd[3] ),
    .A2(\u_csr.r_lockw[3] ),
    .A3(\u_csr.r_seqdly[3] ),
    .S0(net58),
    .S1(net57),
    .X(_0568_));
 sky130_fd_sc_hd__mux4_2 _0895_ (.A0(\u_csr.r_ctrl[3] ),
    .A1(\u_csr.r_ens[3] ),
    .A2(\u_csr.r_mdiv[3] ),
    .A3(\u_csr.r_odiv[3] ),
    .S0(\u_csr.addr_r[0] ),
    .S1(net57),
    .X(_0569_));
 sky130_fd_sc_hd__a22o_1 _0896_ (.A1(_0552_),
    .A2(_0568_),
    .B1(_0569_),
    .B2(_0548_),
    .X(_0570_));
 sky130_fd_sc_hd__a221oi_1 _0897_ (.A1(\u_csr.r_test[3] ),
    .A2(_0546_),
    .B1(_0567_),
    .B2(\u_csr.st_sync[3] ),
    .C1(_0570_),
    .Y(_0571_));
 sky130_fd_sc_hd__nand2_1 _0898_ (.A(\u_csr.sh_out[2] ),
    .B(_0541_),
    .Y(_0572_));
 sky130_fd_sc_hd__o21ai_0 _0899_ (.A1(_0543_),
    .A2(_0571_),
    .B1(_0572_),
    .Y(_0274_));
 sky130_fd_sc_hd__mux4_2 _0900_ (.A0(\u_csr.r_ctrl[2] ),
    .A1(\u_csr.r_ens[2] ),
    .A2(\u_csr.r_mdiv[2] ),
    .A3(\u_csr.r_odiv[2] ),
    .S0(net58),
    .S1(net57),
    .X(_0573_));
 sky130_fd_sc_hd__mux4_2 _0901_ (.A0(\u_csr.r_cpiset[2] ),
    .A1(\u_csr.r_vcobnd[2] ),
    .A2(\u_csr.r_lockw[2] ),
    .A3(\u_csr.r_seqdly[2] ),
    .S0(net58),
    .S1(net57),
    .X(_0574_));
 sky130_fd_sc_hd__a22oi_1 _0902_ (.A1(_0548_),
    .A2(_0573_),
    .B1(_0574_),
    .B2(_0552_),
    .Y(_0575_));
 sky130_fd_sc_hd__nand2_1 _0903_ (.A(_0537_),
    .B(_0575_),
    .Y(_0576_));
 sky130_fd_sc_hd__a221oi_1 _0904_ (.A1(\u_csr.r_test[2] ),
    .A2(_0546_),
    .B1(_0567_),
    .B2(\u_csr.st_sync[2] ),
    .C1(_0576_),
    .Y(_0577_));
 sky130_fd_sc_hd__nand2_1 _0905_ (.A(\u_csr.sh_out[1] ),
    .B(_0541_),
    .Y(_0578_));
 sky130_fd_sc_hd__o21ai_1 _0906_ (.A1(_0543_),
    .A2(_0577_),
    .B1(_0578_),
    .Y(_0273_));
 sky130_fd_sc_hd__mux4_2 _0907_ (.A0(\u_csr.r_cpiset[1] ),
    .A1(\u_csr.r_vcobnd[1] ),
    .A2(\u_csr.r_lockw[1] ),
    .A3(\u_csr.r_seqdly[1] ),
    .S0(net58),
    .S1(net57),
    .X(_0579_));
 sky130_fd_sc_hd__mux4_2 _0908_ (.A0(\u_csr.r_ctrl[1] ),
    .A1(\u_csr.r_ens[1] ),
    .A2(\u_csr.r_mdiv[1] ),
    .A3(\u_csr.r_odiv[1] ),
    .S0(net58),
    .S1(net57),
    .X(_0580_));
 sky130_fd_sc_hd__a22o_1 _0909_ (.A1(_0552_),
    .A2(_0579_),
    .B1(_0580_),
    .B2(_0548_),
    .X(_0581_));
 sky130_fd_sc_hd__a221oi_1 _0910_ (.A1(\u_csr.r_test[1] ),
    .A2(_0546_),
    .B1(_0567_),
    .B2(\u_csr.st_sync[1] ),
    .C1(_0581_),
    .Y(_0582_));
 sky130_fd_sc_hd__nand2_1 _0911_ (.A(\u_csr.sh_out[0] ),
    .B(_0541_),
    .Y(_0583_));
 sky130_fd_sc_hd__o21ai_0 _0912_ (.A1(_0543_),
    .A2(_0582_),
    .B1(_0583_),
    .Y(_0272_));
 sky130_fd_sc_hd__a22oi_1 _0913_ (.A1(\u_csr.r_test[0] ),
    .A2(_0546_),
    .B1(_0567_),
    .B2(\u_csr.st_sync[0] ),
    .Y(_0584_));
 sky130_fd_sc_hd__mux4_2 _0914_ (.A0(\u_csr.r_cpiset[0] ),
    .A1(\u_csr.r_vcobnd[0] ),
    .A2(\u_csr.r_lockw[0] ),
    .A3(\u_csr.r_seqdly[0] ),
    .S0(\u_csr.addr_r[0] ),
    .S1(net57),
    .X(_0585_));
 sky130_fd_sc_hd__mux4_2 _0915_ (.A0(\u_csr.r_ctrl[0] ),
    .A1(\u_csr.r_ens[0] ),
    .A2(\u_csr.r_mdiv[0] ),
    .A3(\u_csr.r_odiv[0] ),
    .S0(\u_csr.addr_r[0] ),
    .S1(net57),
    .X(_0586_));
 sky130_fd_sc_hd__a22oi_1 _0916_ (.A1(_0552_),
    .A2(_0585_),
    .B1(_0586_),
    .B2(_0548_),
    .Y(_0587_));
 sky130_fd_sc_hd__a31oi_1 _0917_ (.A1(_0537_),
    .A2(_0584_),
    .A3(_0587_),
    .B1(_0543_),
    .Y(_0271_));
 sky130_fd_sc_hd__inv_1 _0918_ (.A(\u_csr.bit_cnt[1] ),
    .Y(_0010_));
 sky130_fd_sc_hd__inv_1 _0919_ (.A(\c_seqdly[2] ),
    .Y(_0059_));
 sky130_fd_sc_hd__inv_1 _0920_ (.A(\u_lock.k_s[1] ),
    .Y(_0085_));
 sky130_fd_sc_hd__inv_1 _0921_ (.A(\c_seqdly[6] ),
    .Y(_0082_));
 sky130_fd_sc_hd__inv_1 _0922_ (.A(\u_clkout.N[0] ),
    .Y(_0031_));
 sky130_fd_sc_hd__nor2b_1 _0923_ (.A(net5),
    .B_N(net59),
    .Y(_0097_));
 sky130_fd_sc_hd__inv_1 _0924_ (.A(net5),
    .Y(_0098_));
 sky130_fd_sc_hd__mux2_2 _0926_ (.A0(\u_csr.shreg[6] ),
    .A1(\u_csr.rw_r ),
    .S(_0440_),
    .X(_0257_));
 sky130_fd_sc_hd__inv_1 _0927_ (.A(\u_csr.bit_cnt[0] ),
    .Y(_0009_));
 sky130_fd_sc_hd__nor3_1 _0929_ (.A(net5),
    .B(\u_csr.rw_r ),
    .C(_0439_),
    .Y(_0590_));
 sky130_fd_sc_hd__and3_1 _0930_ (.A(\u_csr.bit_cnt[3] ),
    .B(_0548_),
    .C(_0590_),
    .X(_0591_));
 sky130_fd_sc_hd__nand3_1 _0932_ (.A(net58),
    .B(net57),
    .C(_0591_),
    .Y(_0593_));
 sky130_fd_sc_hd__mux2_2 _0933_ (.A0(\u_csr.shreg[5] ),
    .A1(\u_csr.r_odiv[6] ),
    .S(_0593_),
    .X(_0099_));
 sky130_fd_sc_hd__mux2_2 _0934_ (.A0(\u_csr.shreg[4] ),
    .A1(\u_csr.r_odiv[5] ),
    .S(_0593_),
    .X(_0100_));
 sky130_fd_sc_hd__mux2_2 _0935_ (.A0(\u_csr.shreg[3] ),
    .A1(\u_csr.r_odiv[4] ),
    .S(_0593_),
    .X(_0101_));
 sky130_fd_sc_hd__mux2_2 _0936_ (.A0(\u_csr.shreg[2] ),
    .A1(\u_csr.r_odiv[3] ),
    .S(_0593_),
    .X(_0102_));
 sky130_fd_sc_hd__mux2_2 _0937_ (.A0(\u_csr.shreg[1] ),
    .A1(\u_csr.r_odiv[2] ),
    .S(_0593_),
    .X(_0103_));
 sky130_fd_sc_hd__mux2_2 _0938_ (.A0(\u_csr.shreg[0] ),
    .A1(\u_csr.r_odiv[1] ),
    .S(_0593_),
    .X(_0104_));
 sky130_fd_sc_hd__mux2_2 _0939_ (.A0(net6),
    .A1(\u_csr.r_odiv[0] ),
    .S(_0593_),
    .X(_0105_));
 sky130_fd_sc_hd__nor2b_1 _0940_ (.A(net58),
    .B_N(net57),
    .Y(_0594_));
 sky130_fd_sc_hd__nand2_1 _0941_ (.A(_0591_),
    .B(_0594_),
    .Y(_0595_));
 sky130_fd_sc_hd__mux2_2 _0942_ (.A0(\u_csr.shreg[5] ),
    .A1(\u_csr.r_mdiv[6] ),
    .S(_0595_),
    .X(_0106_));
 sky130_fd_sc_hd__mux2_2 _0943_ (.A0(\u_csr.shreg[4] ),
    .A1(\u_csr.r_mdiv[5] ),
    .S(_0595_),
    .X(_0107_));
 sky130_fd_sc_hd__mux2_2 _0944_ (.A0(\u_csr.shreg[3] ),
    .A1(\u_csr.r_mdiv[4] ),
    .S(_0595_),
    .X(_0108_));
 sky130_fd_sc_hd__mux2_2 _0945_ (.A0(\u_csr.shreg[2] ),
    .A1(\u_csr.r_mdiv[3] ),
    .S(_0595_),
    .X(_0109_));
 sky130_fd_sc_hd__mux2_2 _0946_ (.A0(\u_csr.shreg[1] ),
    .A1(\u_csr.r_mdiv[2] ),
    .S(_0595_),
    .X(_0110_));
 sky130_fd_sc_hd__mux2_2 _0947_ (.A0(\u_csr.shreg[0] ),
    .A1(\u_csr.r_mdiv[1] ),
    .S(_0595_),
    .X(_0111_));
 sky130_fd_sc_hd__mux2_2 _0948_ (.A0(net6),
    .A1(\u_csr.r_mdiv[0] ),
    .S(_0595_),
    .X(_0112_));
 sky130_fd_sc_hd__nand2_1 _0949_ (.A(_0544_),
    .B(_0591_),
    .Y(_0596_));
 sky130_fd_sc_hd__mux2_2 _0950_ (.A0(\u_csr.shreg[5] ),
    .A1(\u_csr.r_ens[6] ),
    .S(_0596_),
    .X(_0113_));
 sky130_fd_sc_hd__mux2_2 _0951_ (.A0(\u_csr.shreg[4] ),
    .A1(\u_csr.r_ens[5] ),
    .S(_0596_),
    .X(_0114_));
 sky130_fd_sc_hd__mux2_2 _0952_ (.A0(\u_csr.shreg[3] ),
    .A1(\u_csr.r_ens[4] ),
    .S(_0596_),
    .X(_0115_));
 sky130_fd_sc_hd__mux2_2 _0953_ (.A0(\u_csr.shreg[2] ),
    .A1(\u_csr.r_ens[3] ),
    .S(_0596_),
    .X(_0116_));
 sky130_fd_sc_hd__mux2_2 _0954_ (.A0(\u_csr.shreg[1] ),
    .A1(\u_csr.r_ens[2] ),
    .S(_0596_),
    .X(_0117_));
 sky130_fd_sc_hd__mux2_2 _0955_ (.A0(\u_csr.shreg[0] ),
    .A1(\u_csr.r_ens[1] ),
    .S(_0596_),
    .X(_0118_));
 sky130_fd_sc_hd__mux2_2 _0956_ (.A0(net6),
    .A1(\u_csr.r_ens[0] ),
    .S(_0596_),
    .X(_0119_));
 sky130_fd_sc_hd__nand2_1 _0957_ (.A(_0566_),
    .B(_0591_),
    .Y(_0597_));
 sky130_fd_sc_hd__mux2_2 _0958_ (.A0(\u_csr.shreg[5] ),
    .A1(\u_csr.r_ctrl[6] ),
    .S(_0597_),
    .X(_0120_));
 sky130_fd_sc_hd__mux2_2 _0959_ (.A0(\u_csr.shreg[4] ),
    .A1(\u_csr.r_ctrl[5] ),
    .S(_0597_),
    .X(_0121_));
 sky130_fd_sc_hd__mux2_2 _0960_ (.A0(\u_csr.shreg[3] ),
    .A1(\u_csr.r_ctrl[4] ),
    .S(_0597_),
    .X(_0122_));
 sky130_fd_sc_hd__mux2_2 _0961_ (.A0(\u_csr.shreg[2] ),
    .A1(\u_csr.r_ctrl[3] ),
    .S(_0597_),
    .X(_0123_));
 sky130_fd_sc_hd__mux2_2 _0962_ (.A0(\u_csr.shreg[1] ),
    .A1(\u_csr.r_ctrl[2] ),
    .S(_0597_),
    .X(_0124_));
 sky130_fd_sc_hd__mux2_2 _0963_ (.A0(\u_csr.shreg[0] ),
    .A1(\u_csr.r_ctrl[1] ),
    .S(_0597_),
    .X(_0125_));
 sky130_fd_sc_hd__mux2_2 _0964_ (.A0(net6),
    .A1(\u_csr.r_ctrl[0] ),
    .S(_0597_),
    .X(_0126_));
 sky130_fd_sc_hd__xnor2_2 _0965_ (.A(\u_csr.u_commit.s[2] ),
    .B(\u_csr.u_commit.s[1] ),
    .Y(_0598_));
 sky130_fd_sc_hd__mux2_2 _0967_ (.A0(\u_csr.r_seqdly[6] ),
    .A1(\c_seqdly[6] ),
    .S(net55),
    .X(_0127_));
 sky130_fd_sc_hd__mux2_2 _0968_ (.A0(\u_csr.r_seqdly[5] ),
    .A1(\c_seqdly[5] ),
    .S(net55),
    .X(_0128_));
 sky130_fd_sc_hd__mux2_2 _0969_ (.A0(\u_csr.r_seqdly[4] ),
    .A1(\c_seqdly[4] ),
    .S(net55),
    .X(_0129_));
 sky130_fd_sc_hd__mux2_2 _0970_ (.A0(\u_csr.r_seqdly[3] ),
    .A1(\c_seqdly[3] ),
    .S(_0598_),
    .X(_0130_));
 sky130_fd_sc_hd__mux2_2 _0971_ (.A0(\u_csr.r_seqdly[2] ),
    .A1(\c_seqdly[2] ),
    .S(_0598_),
    .X(_0131_));
 sky130_fd_sc_hd__mux2_2 _0972_ (.A0(\u_csr.r_seqdly[1] ),
    .A1(\c_seqdly[1] ),
    .S(_0598_),
    .X(_0132_));
 sky130_fd_sc_hd__mux2_2 _0973_ (.A0(\u_csr.r_seqdly[0] ),
    .A1(\c_seqdly[0] ),
    .S(_0598_),
    .X(_0133_));
 sky130_fd_sc_hd__and3_1 _0974_ (.A(\u_csr.bit_cnt[3] ),
    .B(_0546_),
    .C(_0590_),
    .X(_0600_));
 sky130_fd_sc_hd__mux2_2 _0976_ (.A0(\u_csr.r_test[6] ),
    .A1(\u_csr.shreg[5] ),
    .S(_0600_),
    .X(_0134_));
 sky130_fd_sc_hd__mux2_2 _0977_ (.A0(\u_csr.r_test[5] ),
    .A1(\u_csr.shreg[4] ),
    .S(_0600_),
    .X(_0135_));
 sky130_fd_sc_hd__mux2_2 _0978_ (.A0(\u_csr.r_test[4] ),
    .A1(\u_csr.shreg[3] ),
    .S(_0600_),
    .X(_0136_));
 sky130_fd_sc_hd__mux2_2 _0979_ (.A0(\u_csr.r_test[3] ),
    .A1(\u_csr.shreg[2] ),
    .S(_0600_),
    .X(_0137_));
 sky130_fd_sc_hd__mux2_2 _0980_ (.A0(\u_csr.r_test[2] ),
    .A1(\u_csr.shreg[1] ),
    .S(_0600_),
    .X(_0138_));
 sky130_fd_sc_hd__mux2_2 _0981_ (.A0(\u_csr.r_test[1] ),
    .A1(\u_csr.shreg[0] ),
    .S(_0600_),
    .X(_0139_));
 sky130_fd_sc_hd__mux2_2 _0982_ (.A0(\u_csr.r_test[0] ),
    .A1(net6),
    .S(_0600_),
    .X(_0140_));
 sky130_fd_sc_hd__mux2_2 _0983_ (.A0(\u_csr.r_lockw[6] ),
    .A1(\c_lockw[6] ),
    .S(net55),
    .X(_0141_));
 sky130_fd_sc_hd__mux2_2 _0984_ (.A0(\u_csr.r_lockw[5] ),
    .A1(\c_lockw[5] ),
    .S(net55),
    .X(_0142_));
 sky130_fd_sc_hd__mux2_2 _0985_ (.A0(\u_csr.r_lockw[4] ),
    .A1(\c_lockw[4] ),
    .S(net55),
    .X(_0143_));
 sky130_fd_sc_hd__mux2_2 _0987_ (.A0(\u_csr.r_lockw[3] ),
    .A1(\c_lockw[3] ),
    .S(net55),
    .X(_0144_));
 sky130_fd_sc_hd__mux2_2 _0988_ (.A0(\u_csr.r_lockw[2] ),
    .A1(\c_lockw[2] ),
    .S(net55),
    .X(_0145_));
 sky130_fd_sc_hd__mux2_2 _0989_ (.A0(\u_csr.r_lockw[1] ),
    .A1(\c_lockw[1] ),
    .S(net55),
    .X(_0146_));
 sky130_fd_sc_hd__mux2_2 _0990_ (.A0(\u_csr.r_lockw[0] ),
    .A1(\c_lockw[0] ),
    .S(net55),
    .X(_0147_));
 sky130_fd_sc_hd__mux2_2 _0991_ (.A0(\u_csr.r_vcobnd[6] ),
    .A1(net40),
    .S(net55),
    .X(_0148_));
 sky130_fd_sc_hd__mux2_2 _0992_ (.A0(\u_csr.r_vcobnd[5] ),
    .A1(net39),
    .S(net55),
    .X(_0149_));
 sky130_fd_sc_hd__mux2_2 _0993_ (.A0(\u_csr.r_vcobnd[4] ),
    .A1(net38),
    .S(net55),
    .X(_0150_));
 sky130_fd_sc_hd__mux2_2 _0994_ (.A0(\u_csr.r_vcobnd[3] ),
    .A1(net37),
    .S(net55),
    .X(_0151_));
 sky130_fd_sc_hd__mux2_2 _0995_ (.A0(\u_csr.r_vcobnd[2] ),
    .A1(net36),
    .S(net55),
    .X(_0152_));
 sky130_fd_sc_hd__mux2_2 _0996_ (.A0(\u_csr.r_vcobnd[1] ),
    .A1(net35),
    .S(net55),
    .X(_0153_));
 sky130_fd_sc_hd__mux2_2 _0998_ (.A0(\u_csr.r_vcobnd[0] ),
    .A1(net34),
    .S(net55),
    .X(_0154_));
 sky130_fd_sc_hd__mux2_2 _0999_ (.A0(\u_csr.r_cpiset[6] ),
    .A1(net15),
    .S(_0598_),
    .X(_0155_));
 sky130_fd_sc_hd__mux2_2 _1000_ (.A0(\u_csr.r_cpiset[5] ),
    .A1(net14),
    .S(_0598_),
    .X(_0156_));
 sky130_fd_sc_hd__mux2_2 _1001_ (.A0(\u_csr.r_cpiset[4] ),
    .A1(net13),
    .S(net55),
    .X(_0157_));
 sky130_fd_sc_hd__mux2_2 _1002_ (.A0(\u_csr.r_cpiset[3] ),
    .A1(net12),
    .S(net55),
    .X(_0158_));
 sky130_fd_sc_hd__mux2_2 _1003_ (.A0(\u_csr.r_cpiset[2] ),
    .A1(net11),
    .S(net55),
    .X(_0159_));
 sky130_fd_sc_hd__mux2_2 _1004_ (.A0(\u_csr.r_cpiset[1] ),
    .A1(net10),
    .S(net55),
    .X(_0160_));
 sky130_fd_sc_hd__mux2_2 _1005_ (.A0(\u_csr.r_cpiset[0] ),
    .A1(net9),
    .S(_0598_),
    .X(_0161_));
 sky130_fd_sc_hd__and3_1 _1006_ (.A(\u_csr.bit_cnt[3] ),
    .B(_0552_),
    .C(_0590_),
    .X(_0604_));
 sky130_fd_sc_hd__and3_1 _1008_ (.A(net58),
    .B(net57),
    .C(_0604_),
    .X(_0606_));
 sky130_fd_sc_hd__mux2_2 _1010_ (.A0(\u_csr.r_seqdly[6] ),
    .A1(\u_csr.shreg[5] ),
    .S(_0606_),
    .X(_0162_));
 sky130_fd_sc_hd__mux2_2 _1011_ (.A0(\u_csr.r_seqdly[5] ),
    .A1(\u_csr.shreg[4] ),
    .S(_0606_),
    .X(_0163_));
 sky130_fd_sc_hd__mux2_2 _1012_ (.A0(\u_csr.r_seqdly[4] ),
    .A1(\u_csr.shreg[3] ),
    .S(_0606_),
    .X(_0164_));
 sky130_fd_sc_hd__mux2_2 _1013_ (.A0(\u_csr.r_seqdly[3] ),
    .A1(\u_csr.shreg[2] ),
    .S(_0606_),
    .X(_0165_));
 sky130_fd_sc_hd__mux2_2 _1014_ (.A0(\u_csr.r_seqdly[2] ),
    .A1(\u_csr.shreg[1] ),
    .S(_0606_),
    .X(_0166_));
 sky130_fd_sc_hd__mux2_2 _1015_ (.A0(\u_csr.r_seqdly[1] ),
    .A1(\u_csr.shreg[0] ),
    .S(_0606_),
    .X(_0167_));
 sky130_fd_sc_hd__mux2_2 _1016_ (.A0(\u_csr.r_seqdly[0] ),
    .A1(net6),
    .S(_0606_),
    .X(_0168_));
 sky130_fd_sc_hd__mux2_2 _1017_ (.A0(\u_csr.r_odiv[1] ),
    .A1(\c_outdiv[1] ),
    .S(net55),
    .X(_0169_));
 sky130_fd_sc_hd__mux2_2 _1018_ (.A0(\u_csr.r_odiv[0] ),
    .A1(\c_outdiv[0] ),
    .S(net55),
    .X(_0170_));
 sky130_fd_sc_hd__mux2_2 _1020_ (.A0(\u_csr.r_mdiv[6] ),
    .A1(net28),
    .S(net55),
    .X(_0171_));
 sky130_fd_sc_hd__mux2_2 _1021_ (.A0(\u_csr.r_mdiv[5] ),
    .A1(net27),
    .S(net55),
    .X(_0172_));
 sky130_fd_sc_hd__mux2_2 _1022_ (.A0(\u_csr.r_mdiv[4] ),
    .A1(net26),
    .S(net55),
    .X(_0173_));
 sky130_fd_sc_hd__mux2_2 _1023_ (.A0(\u_csr.r_mdiv[3] ),
    .A1(net25),
    .S(net55),
    .X(_0174_));
 sky130_fd_sc_hd__mux2_2 _1024_ (.A0(\u_csr.r_mdiv[2] ),
    .A1(net24),
    .S(net55),
    .X(_0175_));
 sky130_fd_sc_hd__mux2_2 _1025_ (.A0(\u_csr.r_mdiv[1] ),
    .A1(net23),
    .S(net55),
    .X(_0176_));
 sky130_fd_sc_hd__mux2_2 _1026_ (.A0(\u_csr.r_mdiv[0] ),
    .A1(net22),
    .S(net55),
    .X(_0177_));
 sky130_fd_sc_hd__nand2_1 _1027_ (.A(_0594_),
    .B(_0604_),
    .Y(_0609_));
 sky130_fd_sc_hd__mux2_2 _1028_ (.A0(\u_csr.shreg[5] ),
    .A1(\u_csr.r_lockw[6] ),
    .S(_0609_),
    .X(_0178_));
 sky130_fd_sc_hd__mux2_2 _1029_ (.A0(\u_csr.shreg[4] ),
    .A1(\u_csr.r_lockw[5] ),
    .S(_0609_),
    .X(_0179_));
 sky130_fd_sc_hd__mux2_2 _1030_ (.A0(\u_csr.shreg[3] ),
    .A1(\u_csr.r_lockw[4] ),
    .S(_0609_),
    .X(_0180_));
 sky130_fd_sc_hd__mux2_2 _1031_ (.A0(\u_csr.shreg[2] ),
    .A1(\u_csr.r_lockw[3] ),
    .S(_0609_),
    .X(_0181_));
 sky130_fd_sc_hd__mux2_2 _1032_ (.A0(\u_csr.shreg[1] ),
    .A1(\u_csr.r_lockw[2] ),
    .S(_0609_),
    .X(_0182_));
 sky130_fd_sc_hd__mux2_2 _1033_ (.A0(\u_csr.shreg[0] ),
    .A1(\u_csr.r_lockw[1] ),
    .S(_0609_),
    .X(_0183_));
 sky130_fd_sc_hd__mux2_2 _1034_ (.A0(net6),
    .A1(\u_csr.r_lockw[0] ),
    .S(_0609_),
    .X(_0184_));
 sky130_fd_sc_hd__or2_2 _1035_ (.A(\u_lock.div_cnt[14] ),
    .B(\u_lock.div_cnt[15] ),
    .X(_0610_));
 sky130_fd_sc_hd__o21ai_0 _1036_ (.A1(_0476_),
    .A2(_0477_),
    .B1(\u_lock.div_cnt[15] ),
    .Y(_0611_));
 sky130_fd_sc_hd__or3_1 _1037_ (.A(\u_lock.div_cnt[15] ),
    .B(_0476_),
    .C(_0477_),
    .X(_0612_));
 sky130_fd_sc_hd__nand3_1 _1038_ (.A(\u_lock.div_cnt[14] ),
    .B(_0611_),
    .C(_0612_),
    .Y(_0613_));
 sky130_fd_sc_hd__mux2i_1 _1039_ (.A0(_0610_),
    .A1(_0613_),
    .S(_0474_),
    .Y(_0614_));
 sky130_fd_sc_hd__nand3b_1 _1040_ (.A_N(\u_lock.div_cnt[2] ),
    .B(_0021_),
    .C(\u_lock.div_cnt[3] ),
    .Y(_0615_));
 sky130_fd_sc_hd__a21boi_0 _1041_ (.A1(_0020_),
    .A2(\u_lock.div_cnt[1] ),
    .B1_N(\u_lock.div_cnt[3] ),
    .Y(_0616_));
 sky130_fd_sc_hd__and3b_1 _1042_ (.A_N(\u_lock.div_cnt[3] ),
    .B(\u_lock.div_cnt[1] ),
    .C(_0020_),
    .X(_0617_));
 sky130_fd_sc_hd__nor2b_1 _1043_ (.A(_0021_),
    .B_N(\u_lock.div_cnt[2] ),
    .Y(_0618_));
 sky130_fd_sc_hd__o21ai_0 _1044_ (.A1(_0616_),
    .A2(_0617_),
    .B1(_0618_),
    .Y(_0619_));
 sky130_fd_sc_hd__o211ai_1 _1045_ (.A1(\u_lock.div_total[1] ),
    .A2(\u_lock.div_total[0] ),
    .B1(\u_lock.div_cnt[4] ),
    .C1(\u_lock.div_cnt[5] ),
    .Y(_0620_));
 sky130_fd_sc_hd__a21oi_1 _1046_ (.A1(_0615_),
    .A2(_0619_),
    .B1(_0620_),
    .Y(_0621_));
 sky130_fd_sc_hd__and2_1 _1047_ (.A(\u_lock.div_cnt[2] ),
    .B(_0021_),
    .X(_0622_));
 sky130_fd_sc_hd__nor2_1 _1048_ (.A(\u_lock.div_cnt[2] ),
    .B(_0021_),
    .Y(_0623_));
 sky130_fd_sc_hd__a21oi_1 _1049_ (.A1(_0477_),
    .A2(_0622_),
    .B1(_0623_),
    .Y(_0624_));
 sky130_fd_sc_hd__or3_1 _1050_ (.A(\u_lock.div_cnt[5] ),
    .B(\u_lock.div_cnt[4] ),
    .C(\u_lock.div_cnt[3] ),
    .X(_0625_));
 sky130_fd_sc_hd__nor4b_1 _1051_ (.A(\u_lock.div_cnt[6] ),
    .B(_0487_),
    .C(_0476_),
    .D_N(_0021_),
    .Y(_0626_));
 sky130_fd_sc_hd__a21boi_0 _1052_ (.A1(_0021_),
    .A2(_0469_),
    .B1_N(\u_lock.div_cnt[6] ),
    .Y(_0627_));
 sky130_fd_sc_hd__o22ai_1 _1053_ (.A1(_0624_),
    .A2(_0625_),
    .B1(_0626_),
    .B2(_0627_),
    .Y(_0628_));
 sky130_fd_sc_hd__a21o_1 _1054_ (.A1(_0020_),
    .A2(\u_lock.div_cnt[1] ),
    .B1(_0021_),
    .X(_0629_));
 sky130_fd_sc_hd__a31o_1 _1055_ (.A1(\u_lock.div_cnt[6] ),
    .A2(_0469_),
    .A3(_0629_),
    .B1(\u_lock.div_cnt[7] ),
    .X(_0630_));
 sky130_fd_sc_hd__nor2b_1 _1056_ (.A(_0021_),
    .B_N(\u_lock.div_cnt[7] ),
    .Y(_0631_));
 sky130_fd_sc_hd__nand4_1 _1057_ (.A(\u_lock.div_cnt[6] ),
    .B(_0469_),
    .C(_0487_),
    .D(_0631_),
    .Y(_0632_));
 sky130_fd_sc_hd__a211oi_2 _1058_ (.A1(_0630_),
    .A2(_0632_),
    .B1(\u_lock.div_cnt[8] ),
    .C1(\u_lock.div_cnt[9] ),
    .Y(_0633_));
 sky130_fd_sc_hd__o311a_2 _1059_ (.A1(\u_lock.div_cnt[6] ),
    .A2(_0491_),
    .A3(_0621_),
    .B1(_0628_),
    .C1(_0633_),
    .X(_0634_));
 sky130_fd_sc_hd__nor2_1 _1060_ (.A(\u_lock.div_cnt[13] ),
    .B(\u_lock.div_cnt[11] ),
    .Y(_0635_));
 sky130_fd_sc_hd__o21ai_0 _1061_ (.A1(_0476_),
    .A2(_0477_),
    .B1(\u_lock.div_cnt[10] ),
    .Y(_0636_));
 sky130_fd_sc_hd__mux2i_1 _1062_ (.A0(_0636_),
    .A1(\u_lock.div_cnt[10] ),
    .S(_0484_),
    .Y(_0637_));
 sky130_fd_sc_hd__o21ai_0 _1063_ (.A1(_0476_),
    .A2(_0477_),
    .B1(\u_lock.div_cnt[12] ),
    .Y(_0638_));
 sky130_fd_sc_hd__mux2i_1 _1064_ (.A0(_0638_),
    .A1(\u_lock.div_cnt[12] ),
    .S(_0473_),
    .Y(_0639_));
 sky130_fd_sc_hd__and3_1 _1065_ (.A(\u_lock.div_cnt[14] ),
    .B(\u_lock.div_cnt[15] ),
    .C(_0466_),
    .X(_0640_));
 sky130_fd_sc_hd__nor4_2 _1066_ (.A(_0464_),
    .B(_0473_),
    .C(_0488_),
    .D(_0640_),
    .Y(_0641_));
 sky130_fd_sc_hd__a31o_2 _1067_ (.A1(_0635_),
    .A2(_0637_),
    .A3(_0639_),
    .B1(_0641_),
    .X(_0642_));
 sky130_fd_sc_hd__nand3_4 _1068_ (.A(_0614_),
    .B(_0634_),
    .C(_0642_),
    .Y(_0643_));
 sky130_fd_sc_hd__nor2_1 _1069_ (.A(_0460_),
    .B(_0643_),
    .Y(_0644_));
 sky130_fd_sc_hd__clkinv_1 _1070_ (.A(\u_lock.u_en.q[0] ),
    .Y(_0645_));
 sky130_fd_sc_hd__nand2_1 _1071_ (.A(\u_lock.good_cnt[5] ),
    .B(\u_lock.good_cnt[4] ),
    .Y(_0646_));
 sky130_fd_sc_hd__nand3_1 _1072_ (.A(_0022_),
    .B(\u_lock.good_cnt[3] ),
    .C(\u_lock.good_cnt[2] ),
    .Y(_0647_));
 sky130_fd_sc_hd__a2111o_1 _1073_ (.A1(_0070_),
    .A2(_0075_),
    .B1(_0069_),
    .C1(_0057_),
    .D1(_0066_),
    .X(_0648_));
 sky130_fd_sc_hd__inv_1 _1074_ (.A(_0007_),
    .Y(_0649_));
 sky130_fd_sc_hd__o21ai_0 _1075_ (.A1(_0649_),
    .A2(_0008_),
    .B1(_0087_),
    .Y(_0650_));
 sky130_fd_sc_hd__nor2_1 _1076_ (.A(_0072_),
    .B(_0086_),
    .Y(_0651_));
 sky130_fd_sc_hd__o21ai_0 _1077_ (.A1(_0072_),
    .A2(_0073_),
    .B1(_0005_),
    .Y(_0652_));
 sky130_fd_sc_hd__a21oi_1 _1078_ (.A1(_0650_),
    .A2(_0651_),
    .B1(_0652_),
    .Y(_0653_));
 sky130_fd_sc_hd__inv_1 _1079_ (.A(_0057_),
    .Y(_0654_));
 sky130_fd_sc_hd__o21ai_0 _1080_ (.A1(_0066_),
    .A2(_0067_),
    .B1(_0058_),
    .Y(_0655_));
 sky130_fd_sc_hd__a21oi_1 _1081_ (.A1(_0070_),
    .A2(_0076_),
    .B1(_0648_),
    .Y(_0656_));
 sky130_fd_sc_hd__a21oi_1 _1082_ (.A1(_0654_),
    .A2(_0655_),
    .B1(_0656_),
    .Y(_0657_));
 sky130_fd_sc_hd__o31ai_1 _1083_ (.A1(_0004_),
    .A2(_0648_),
    .A3(_0653_),
    .B1(_0657_),
    .Y(_0658_));
 sky130_fd_sc_hd__nand2b_1 _1084_ (.A_N(_0647_),
    .B(_0658_),
    .Y(_0659_));
 sky130_fd_sc_hd__nor4_1 _1085_ (.A(_0645_),
    .B(\u_lock.good_cnt[6] ),
    .C(_0646_),
    .D(_0659_),
    .Y(_0660_));
 sky130_fd_sc_hd__o31a_1 _1086_ (.A1(_0004_),
    .A2(_0648_),
    .A3(_0653_),
    .B1(_0657_),
    .X(_0661_));
 sky130_fd_sc_hd__nor2_1 _1087_ (.A(_0661_),
    .B(_0647_),
    .Y(_0662_));
 sky130_fd_sc_hd__nand2_1 _1088_ (.A(\u_lock.u_en.q[0] ),
    .B(\u_lock.good_cnt[6] ),
    .Y(_0663_));
 sky130_fd_sc_hd__a311oi_1 _1089_ (.A1(\u_lock.good_cnt[5] ),
    .A2(\u_lock.good_cnt[4] ),
    .A3(_0662_),
    .B1(_0643_),
    .C1(_0663_),
    .Y(_0664_));
 sky130_fd_sc_hd__and3_1 _1090_ (.A(_0454_),
    .B(_0456_),
    .C(_0459_),
    .X(_0665_));
 sky130_fd_sc_hd__nor2_1 _1092_ (.A(_0665_),
    .B(_0663_),
    .Y(_0667_));
 sky130_fd_sc_hd__a211o_1 _1093_ (.A1(_0644_),
    .A2(_0660_),
    .B1(_0664_),
    .C1(_0667_),
    .X(_0191_));
 sky130_fd_sc_hd__nand2_1 _1094_ (.A(\u_lock.u_en.q[0] ),
    .B(\u_lock.good_cnt[5] ),
    .Y(_0668_));
 sky130_fd_sc_hd__nand2_1 _1095_ (.A(\u_lock.good_cnt[4] ),
    .B(\u_lock.good_cnt[3] ),
    .Y(_0669_));
 sky130_fd_sc_hd__nand3_1 _1096_ (.A(\u_lock.good_cnt[2] ),
    .B(\u_lock.good_cnt[1] ),
    .C(\u_lock.good_cnt[0] ),
    .Y(_0670_));
 sky130_fd_sc_hd__nor3_1 _1097_ (.A(_0661_),
    .B(_0669_),
    .C(_0670_),
    .Y(_0671_));
 sky130_fd_sc_hd__nor3_1 _1098_ (.A(_0645_),
    .B(\u_lock.good_cnt[5] ),
    .C(_0460_),
    .Y(_0672_));
 sky130_fd_sc_hd__nand2_1 _1099_ (.A(_0671_),
    .B(_0672_),
    .Y(_0673_));
 sky130_fd_sc_hd__or3_1 _1101_ (.A(_0643_),
    .B(_0671_),
    .C(_0668_),
    .X(_0675_));
 sky130_fd_sc_hd__o221ai_1 _1102_ (.A1(_0665_),
    .A2(_0668_),
    .B1(_0673_),
    .B2(_0643_),
    .C1(_0675_),
    .Y(_0192_));
 sky130_fd_sc_hd__and2_1 _1103_ (.A(\u_lock.good_cnt[4] ),
    .B(_0460_),
    .X(_0676_));
 sky130_fd_sc_hd__nor3b_1 _1104_ (.A(_0662_),
    .B(_0643_),
    .C_N(\u_lock.good_cnt[4] ),
    .Y(_0677_));
 sky130_fd_sc_hd__nor4_1 _1105_ (.A(\u_lock.good_cnt[4] ),
    .B(_0460_),
    .C(_0659_),
    .D(_0643_),
    .Y(_0678_));
 sky130_fd_sc_hd__o31a_1 _1106_ (.A1(_0676_),
    .A2(_0677_),
    .A3(_0678_),
    .B1(\u_lock.u_en.q[0] ),
    .X(_0193_));
 sky130_fd_sc_hd__nor3_1 _1107_ (.A(_0645_),
    .B(\u_lock.good_cnt[3] ),
    .C(_0670_),
    .Y(_0679_));
 sky130_fd_sc_hd__o2111ai_1 _1108_ (.A1(_0661_),
    .A2(_0670_),
    .B1(_0642_),
    .C1(_0634_),
    .D1(_0614_),
    .Y(_0680_));
 sky130_fd_sc_hd__nand2_1 _1109_ (.A(\u_lock.u_en.q[0] ),
    .B(\u_lock.good_cnt[3] ),
    .Y(_0681_));
 sky130_fd_sc_hd__a21oi_1 _1110_ (.A1(_0665_),
    .A2(_0680_),
    .B1(_0681_),
    .Y(_0682_));
 sky130_fd_sc_hd__a31o_2 _1111_ (.A1(_0658_),
    .A2(_0644_),
    .A3(_0679_),
    .B1(_0682_),
    .X(_0194_));
 sky130_fd_sc_hd__nand2_1 _1112_ (.A(\u_lock.good_cnt[2] ),
    .B(_0460_),
    .Y(_0683_));
 sky130_fd_sc_hd__inv_1 _1113_ (.A(\u_lock.good_cnt[2] ),
    .Y(_0684_));
 sky130_fd_sc_hd__nand2_1 _1114_ (.A(_0022_),
    .B(_0658_),
    .Y(_0685_));
 sky130_fd_sc_hd__or3b_1 _1115_ (.A(_0684_),
    .B(_0643_),
    .C_N(_0685_),
    .X(_0686_));
 sky130_fd_sc_hd__or4_1 _1116_ (.A(\u_lock.good_cnt[2] ),
    .B(_0460_),
    .C(_0685_),
    .D(_0643_),
    .X(_0687_));
 sky130_fd_sc_hd__a31oi_1 _1117_ (.A1(_0683_),
    .A2(_0686_),
    .A3(_0687_),
    .B1(_0645_),
    .Y(_0195_));
 sky130_fd_sc_hd__nand3_1 _1118_ (.A(\u_lock.u_en.q[0] ),
    .B(_0023_),
    .C(_0658_),
    .Y(_0688_));
 sky130_fd_sc_hd__nand2_1 _1119_ (.A(\u_lock.u_en.q[0] ),
    .B(\u_lock.good_cnt[1] ),
    .Y(_0689_));
 sky130_fd_sc_hd__a41oi_1 _1120_ (.A1(_0661_),
    .A2(_0614_),
    .A3(_0634_),
    .A4(_0642_),
    .B1(_0460_),
    .Y(_0690_));
 sky130_fd_sc_hd__o32ai_1 _1121_ (.A1(_0460_),
    .A2(_0643_),
    .A3(_0688_),
    .B1(_0689_),
    .B2(_0690_),
    .Y(_0196_));
 sky130_fd_sc_hd__nor3_1 _1122_ (.A(_0645_),
    .B(_0006_),
    .C(_0690_),
    .Y(_0691_));
 sky130_fd_sc_hd__a41o_1 _1123_ (.A1(\u_lock.u_en.q[0] ),
    .A2(_0006_),
    .A3(_0658_),
    .A4(_0644_),
    .B1(_0691_),
    .X(_0197_));
 sky130_fd_sc_hd__nand2_1 _1124_ (.A(_0544_),
    .B(_0604_),
    .Y(_0312_));
 sky130_fd_sc_hd__mux2_2 _1125_ (.A0(\u_csr.shreg[5] ),
    .A1(\u_csr.r_vcobnd[6] ),
    .S(_0312_),
    .X(_0198_));
 sky130_fd_sc_hd__mux2_2 _1126_ (.A0(\u_csr.shreg[4] ),
    .A1(\u_csr.r_vcobnd[5] ),
    .S(_0312_),
    .X(_0199_));
 sky130_fd_sc_hd__mux2_2 _1127_ (.A0(\u_csr.shreg[3] ),
    .A1(\u_csr.r_vcobnd[4] ),
    .S(_0312_),
    .X(_0200_));
 sky130_fd_sc_hd__mux2_2 _1128_ (.A0(\u_csr.shreg[2] ),
    .A1(\u_csr.r_vcobnd[3] ),
    .S(_0312_),
    .X(_0201_));
 sky130_fd_sc_hd__mux2_2 _1129_ (.A0(\u_csr.shreg[1] ),
    .A1(\u_csr.r_vcobnd[2] ),
    .S(_0312_),
    .X(_0202_));
 sky130_fd_sc_hd__mux2_2 _1130_ (.A0(\u_csr.shreg[0] ),
    .A1(\u_csr.r_vcobnd[1] ),
    .S(_0312_),
    .X(_0203_));
 sky130_fd_sc_hd__mux2_2 _1131_ (.A0(net6),
    .A1(\u_csr.r_vcobnd[0] ),
    .S(_0312_),
    .X(_0204_));
 sky130_fd_sc_hd__nand2_1 _1132_ (.A(_0566_),
    .B(_0604_),
    .Y(_0313_));
 sky130_fd_sc_hd__mux2_2 _1133_ (.A0(\u_csr.shreg[5] ),
    .A1(\u_csr.r_cpiset[6] ),
    .S(_0313_),
    .X(_0205_));
 sky130_fd_sc_hd__mux2_2 _1134_ (.A0(\u_csr.shreg[4] ),
    .A1(\u_csr.r_cpiset[5] ),
    .S(_0313_),
    .X(_0206_));
 sky130_fd_sc_hd__mux2_2 _1135_ (.A0(\u_csr.shreg[3] ),
    .A1(\u_csr.r_cpiset[4] ),
    .S(_0313_),
    .X(_0207_));
 sky130_fd_sc_hd__mux2_2 _1136_ (.A0(\u_csr.shreg[2] ),
    .A1(\u_csr.r_cpiset[3] ),
    .S(_0313_),
    .X(_0208_));
 sky130_fd_sc_hd__mux2_2 _1137_ (.A0(\u_csr.shreg[1] ),
    .A1(\u_csr.r_cpiset[2] ),
    .S(_0313_),
    .X(_0209_));
 sky130_fd_sc_hd__mux2_2 _1138_ (.A0(\u_csr.shreg[0] ),
    .A1(\u_csr.r_cpiset[1] ),
    .S(_0313_),
    .X(_0210_));
 sky130_fd_sc_hd__mux2_2 _1139_ (.A0(net6),
    .A1(\u_csr.r_cpiset[0] ),
    .S(_0313_),
    .X(_0211_));
 sky130_fd_sc_hd__nor4_1 _1140_ (.A(\u_seq.state[3] ),
    .B(\u_seq.state[5] ),
    .C(\u_seq.state[1] ),
    .D(\u_seq.state[2] ),
    .Y(_0314_));
 sky130_fd_sc_hd__or2_2 _1141_ (.A(c_manual_seq),
    .B(c_soft_rst),
    .X(_0315_));
 sky130_fd_sc_hd__nor3_1 _1143_ (.A(\u_seq.state[4] ),
    .B(\u_seq.state[0] ),
    .C(_0315_),
    .Y(_0317_));
 sky130_fd_sc_hd__nand3_1 _1144_ (.A(c_pll_en),
    .B(c_auto_relock),
    .C(\u_lock.u_ll.q[0] ),
    .Y(_0318_));
 sky130_fd_sc_hd__nor2_1 _1145_ (.A(c_manual_seq),
    .B(c_soft_rst),
    .Y(_0319_));
 sky130_fd_sc_hd__nand3_1 _1146_ (.A(\u_seq.state[4] ),
    .B(_0318_),
    .C(_0319_),
    .Y(_0320_));
 sky130_fd_sc_hd__a21boi_0 _1147_ (.A1(_0314_),
    .A2(_0317_),
    .B1_N(_0320_),
    .Y(_0321_));
 sky130_fd_sc_hd__nand2_1 _1148_ (.A(_0036_),
    .B(_0079_),
    .Y(_0322_));
 sky130_fd_sc_hd__nand2b_1 _1149_ (.A_N(_0027_),
    .B(_0029_),
    .Y(_0323_));
 sky130_fd_sc_hd__a21o_1 _1150_ (.A1(_0064_),
    .A2(_0323_),
    .B1(_0063_),
    .X(_0324_));
 sky130_fd_sc_hd__a21o_1 _1151_ (.A1(_0061_),
    .A2(_0324_),
    .B1(_0060_),
    .X(_0325_));
 sky130_fd_sc_hd__a21oi_1 _1152_ (.A1(_0041_),
    .A2(_0325_),
    .B1(_0040_),
    .Y(_0326_));
 sky130_fd_sc_hd__a2111oi_0 _1153_ (.A1(_0036_),
    .A2(_0078_),
    .B1(_0035_),
    .C1(_0045_),
    .D1(_0083_),
    .Y(_0327_));
 sky130_fd_sc_hd__o21a_1 _1154_ (.A1(_0322_),
    .A2(_0326_),
    .B1(_0327_),
    .X(_0328_));
 sky130_fd_sc_hd__o21ai_0 _1155_ (.A1(_0083_),
    .A2(_0084_),
    .B1(_0046_),
    .Y(_0329_));
 sky130_fd_sc_hd__nor2b_1 _1156_ (.A(_0045_),
    .B_N(_0329_),
    .Y(_0330_));
 sky130_fd_sc_hd__nor2_1 _1157_ (.A(_0315_),
    .B(_0314_),
    .Y(_0331_));
 sky130_fd_sc_hd__o21ai_0 _1158_ (.A1(_0328_),
    .A2(_0330_),
    .B1(_0331_),
    .Y(_0332_));
 sky130_fd_sc_hd__inv_1 _1159_ (.A(\u_seq.dwell[3] ),
    .Y(_0333_));
 sky130_fd_sc_hd__or4_1 _1160_ (.A(\u_seq.state[3] ),
    .B(\u_seq.state[5] ),
    .C(\u_seq.state[1] ),
    .D(\u_seq.state[2] ),
    .X(_0334_));
 sky130_fd_sc_hd__nor2_1 _1161_ (.A(\u_seq.state[4] ),
    .B(\u_seq.state[0] ),
    .Y(_0335_));
 sky130_fd_sc_hd__nand2_1 _1162_ (.A(_0319_),
    .B(_0335_),
    .Y(_0336_));
 sky130_fd_sc_hd__o21ai_1 _1163_ (.A1(_0334_),
    .A2(_0336_),
    .B1(_0320_),
    .Y(_0337_));
 sky130_fd_sc_hd__nand2_1 _1164_ (.A(\u_seq.dwell[2] ),
    .B(_0024_),
    .Y(_0338_));
 sky130_fd_sc_hd__nor3_1 _1165_ (.A(_0333_),
    .B(_0337_),
    .C(_0338_),
    .Y(_0339_));
 sky130_fd_sc_hd__nand3_1 _1166_ (.A(\u_seq.dwell[4] ),
    .B(\u_seq.dwell[5] ),
    .C(_0339_),
    .Y(_0340_));
 sky130_fd_sc_hd__xor2_1 _1167_ (.A(\u_seq.dwell[6] ),
    .B(_0340_),
    .X(_0341_));
 sky130_fd_sc_hd__a21oi_1 _1168_ (.A1(_0321_),
    .A2(_0332_),
    .B1(_0341_),
    .Y(_0212_));
 sky130_fd_sc_hd__inv_1 _1169_ (.A(\u_seq.dwell[4] ),
    .Y(_0342_));
 sky130_fd_sc_hd__nand3_1 _1170_ (.A(\u_seq.dwell[2] ),
    .B(\u_seq.dwell[1] ),
    .C(\u_seq.dwell[0] ),
    .Y(_0343_));
 sky130_fd_sc_hd__nor4_1 _1171_ (.A(_0342_),
    .B(_0333_),
    .C(_0337_),
    .D(_0343_),
    .Y(_0344_));
 sky130_fd_sc_hd__xnor2_1 _1172_ (.A(\u_seq.dwell[5] ),
    .B(_0344_),
    .Y(_0345_));
 sky130_fd_sc_hd__a21oi_1 _1173_ (.A1(_0321_),
    .A2(_0332_),
    .B1(_0345_),
    .Y(_0213_));
 sky130_fd_sc_hd__xnor2_1 _1174_ (.A(\u_seq.dwell[4] ),
    .B(_0339_),
    .Y(_0346_));
 sky130_fd_sc_hd__a21oi_1 _1175_ (.A1(_0321_),
    .A2(_0332_),
    .B1(_0346_),
    .Y(_0214_));
 sky130_fd_sc_hd__and3_1 _1176_ (.A(\u_seq.dwell[3] ),
    .B(_0331_),
    .C(_0343_),
    .X(_0347_));
 sky130_fd_sc_hd__nand2_1 _1177_ (.A(_0319_),
    .B(_0334_),
    .Y(_0348_));
 sky130_fd_sc_hd__nor4_1 _1178_ (.A(\u_seq.dwell[3] ),
    .B(_0337_),
    .C(_0348_),
    .D(_0343_),
    .Y(_0349_));
 sky130_fd_sc_hd__o22ai_1 _1179_ (.A1(_0328_),
    .A2(_0330_),
    .B1(_0347_),
    .B2(_0349_),
    .Y(_0350_));
 sky130_fd_sc_hd__o21ai_0 _1180_ (.A1(_0333_),
    .A2(_0321_),
    .B1(_0350_),
    .Y(_0215_));
 sky130_fd_sc_hd__inv_1 _1181_ (.A(_0024_),
    .Y(_0351_));
 sky130_fd_sc_hd__nor4_1 _1182_ (.A(\u_seq.dwell[2] ),
    .B(_0351_),
    .C(_0337_),
    .D(_0348_),
    .Y(_0352_));
 sky130_fd_sc_hd__o21ai_0 _1183_ (.A1(_0328_),
    .A2(_0330_),
    .B1(_0352_),
    .Y(_0353_));
 sky130_fd_sc_hd__o2111ai_1 _1184_ (.A1(_0328_),
    .A2(_0330_),
    .B1(_0331_),
    .C1(_0351_),
    .D1(\u_seq.dwell[2] ),
    .Y(_0354_));
 sky130_fd_sc_hd__nand2_1 _1185_ (.A(\u_seq.dwell[2] ),
    .B(_0337_),
    .Y(_0355_));
 sky130_fd_sc_hd__nand3_1 _1186_ (.A(_0353_),
    .B(_0354_),
    .C(_0355_),
    .Y(_0216_));
 sky130_fd_sc_hd__nand2_1 _1187_ (.A(_0025_),
    .B(_0320_),
    .Y(_0356_));
 sky130_fd_sc_hd__nand2_1 _1188_ (.A(\u_seq.dwell[1] ),
    .B(_0337_),
    .Y(_0357_));
 sky130_fd_sc_hd__o21ai_0 _1189_ (.A1(_0332_),
    .A2(_0356_),
    .B1(_0357_),
    .Y(_0217_));
 sky130_fd_sc_hd__nand2_1 _1190_ (.A(_0028_),
    .B(_0321_),
    .Y(_0358_));
 sky130_fd_sc_hd__nand2_1 _1191_ (.A(\u_seq.dwell[0] ),
    .B(_0337_),
    .Y(_0359_));
 sky130_fd_sc_hd__o21ai_0 _1192_ (.A1(_0332_),
    .A2(_0358_),
    .B1(_0359_),
    .Y(_0218_));
 sky130_fd_sc_hd__nor2_1 _1193_ (.A(\u_lock.bad_cnt[3] ),
    .B(\u_lock.bad_cnt[7] ),
    .Y(_0360_));
 sky130_fd_sc_hd__nor4_1 _1194_ (.A(\u_lock.bad_cnt[6] ),
    .B(\u_lock.bad_cnt[2] ),
    .C(\u_lock.bad_cnt[5] ),
    .D(\u_lock.bad_cnt[4] ),
    .Y(_0361_));
 sky130_fd_sc_hd__and4b_1 _1195_ (.A_N(_0054_),
    .B(_0052_),
    .C(_0360_),
    .D(_0361_),
    .X(_0362_));
 sky130_fd_sc_hd__a31oi_1 _1197_ (.A1(_0614_),
    .A2(_0634_),
    .A3(_0642_),
    .B1(_0362_),
    .Y(_0364_));
 sky130_fd_sc_hd__nand2b_1 _1198_ (.A_N(_0364_),
    .B(_0665_),
    .Y(_0365_));
 sky130_fd_sc_hd__and3_1 _1199_ (.A(\u_lock.bad_cnt[6] ),
    .B(\u_lock.u_en.q[0] ),
    .C(_0365_),
    .X(_0219_));
 sky130_fd_sc_hd__and3_1 _1200_ (.A(\u_lock.bad_cnt[5] ),
    .B(\u_lock.u_en.q[0] ),
    .C(_0365_),
    .X(_0220_));
 sky130_fd_sc_hd__and3_1 _1201_ (.A(\u_lock.u_en.q[0] ),
    .B(\u_lock.bad_cnt[4] ),
    .C(_0365_),
    .X(_0221_));
 sky130_fd_sc_hd__and3_1 _1202_ (.A(\u_lock.u_en.q[0] ),
    .B(\u_lock.bad_cnt[3] ),
    .C(_0365_),
    .X(_0222_));
 sky130_fd_sc_hd__a31oi_1 _1203_ (.A1(_0055_),
    .A2(_0665_),
    .A3(_0362_),
    .B1(\u_lock.bad_cnt[2] ),
    .Y(_0366_));
 sky130_fd_sc_hd__nor3_1 _1204_ (.A(_0645_),
    .B(_0644_),
    .C(_0366_),
    .Y(_0223_));
 sky130_fd_sc_hd__o21ai_0 _1205_ (.A1(_0460_),
    .A2(_0364_),
    .B1(\u_lock.bad_cnt[1] ),
    .Y(_0367_));
 sky130_fd_sc_hd__nand4_1 _1206_ (.A(_0053_),
    .B(_0665_),
    .C(_0643_),
    .D(_0362_),
    .Y(_0368_));
 sky130_fd_sc_hd__a21oi_1 _1207_ (.A1(_0367_),
    .A2(_0368_),
    .B1(_0645_),
    .Y(_0224_));
 sky130_fd_sc_hd__o21ai_0 _1208_ (.A1(_0460_),
    .A2(_0364_),
    .B1(\u_lock.bad_cnt[0] ),
    .Y(_0369_));
 sky130_fd_sc_hd__nand4_1 _1209_ (.A(_0050_),
    .B(_0665_),
    .C(_0643_),
    .D(_0362_),
    .Y(_0370_));
 sky130_fd_sc_hd__a21oi_1 _1210_ (.A1(_0369_),
    .A2(_0370_),
    .B1(_0645_),
    .Y(_0225_));
 sky130_fd_sc_hd__inv_1 _1211_ (.A(\c_seqdly[5] ),
    .Y(_0034_));
 sky130_fd_sc_hd__inv_1 _1212_ (.A(\u_lock.k_s[7] ),
    .Y(_0056_));
 sky130_fd_sc_hd__inv_1 _1213_ (.A(\c_seqdly[7] ),
    .Y(_0044_));
 sky130_fd_sc_hd__inv_1 _1214_ (.A(\c_seqdly[3] ),
    .Y(_0039_));
 sky130_fd_sc_hd__inv_1 _1215_ (.A(\c_seqdly[0] ),
    .Y(_0026_));
 sky130_fd_sc_hd__nor2_1 _1216_ (.A(_0460_),
    .B(_0362_),
    .Y(_0371_));
 sky130_fd_sc_hd__a41oi_1 _1217_ (.A1(\u_lock.u_en.q[0] ),
    .A2(\u_lock.u_lk.d[0] ),
    .A3(_0643_),
    .A4(_0371_),
    .B1(\u_lock.u_ll.d[0] ),
    .Y(_0372_));
 sky130_fd_sc_hd__xor2_1 _1218_ (.A(\u_lock.u_clr.s[2] ),
    .B(\u_lock.u_clr.s[1] ),
    .X(_0373_));
 sky130_fd_sc_hd__nor2_1 _1219_ (.A(_0372_),
    .B(_0373_),
    .Y(_0226_));
 sky130_fd_sc_hd__xnor2_1 _1220_ (.A(\u_csr.u_clr.s[2] ),
    .B(\u_csr.u_clr.s[1] ),
    .Y(_0374_));
 sky130_fd_sc_hd__xnor2_1 _1221_ (.A(\u_lock.u_clr.tog ),
    .B(_0374_),
    .Y(_0227_));
 sky130_fd_sc_hd__mux2_2 _1222_ (.A0(net32),
    .A1(net4),
    .S(net3),
    .X(_0228_));
 sky130_fd_sc_hd__nand4_1 _1223_ (.A(\u_csr.shreg[0] ),
    .B(\u_csr.bit_cnt[3] ),
    .C(_0567_),
    .D(_0590_),
    .Y(_0375_));
 sky130_fd_sc_hd__xnor2_1 _1224_ (.A(\u_csr.u_clr.tog ),
    .B(_0375_),
    .Y(_0229_));
 sky130_fd_sc_hd__nand2_1 _1225_ (.A(\u_csr.bit_cnt[3] ),
    .B(_0590_),
    .Y(_0376_));
 sky130_fd_sc_hd__xnor2_1 _1226_ (.A(\u_csr.u_commit.tog ),
    .B(_0376_),
    .Y(_0230_));
 sky130_fd_sc_hd__mux2_2 _1227_ (.A0(\u_csr.shreg[6] ),
    .A1(\u_csr.r_odiv[7] ),
    .S(_0593_),
    .X(_0231_));
 sky130_fd_sc_hd__mux2_2 _1228_ (.A0(\u_csr.shreg[6] ),
    .A1(\u_csr.r_mdiv[7] ),
    .S(_0595_),
    .X(_0232_));
 sky130_fd_sc_hd__mux2_2 _1229_ (.A0(\u_csr.shreg[6] ),
    .A1(\u_csr.r_ens[7] ),
    .S(_0596_),
    .X(_0233_));
 sky130_fd_sc_hd__mux2_2 _1230_ (.A0(\u_csr.shreg[6] ),
    .A1(\u_csr.r_ctrl[7] ),
    .S(_0597_),
    .X(_0234_));
 sky130_fd_sc_hd__a21oi_1 _1231_ (.A1(_0665_),
    .A2(_0661_),
    .B1(\u_lock.u_lk.d[0] ),
    .Y(_0377_));
 sky130_fd_sc_hd__or2_0 _1232_ (.A(_0643_),
    .B(_0377_),
    .X(_0378_));
 sky130_fd_sc_hd__o21ai_0 _1233_ (.A1(_0460_),
    .A2(_0362_),
    .B1(\u_lock.u_lk.d[0] ),
    .Y(_0379_));
 sky130_fd_sc_hd__a21oi_1 _1234_ (.A1(_0378_),
    .A2(_0379_),
    .B1(_0645_),
    .Y(_0235_));
 sky130_fd_sc_hd__mux2_2 _1235_ (.A0(\u_csr.r_seqdly[7] ),
    .A1(\c_seqdly[7] ),
    .S(_0598_),
    .X(_0236_));
 sky130_fd_sc_hd__mux2_2 _1236_ (.A0(\u_csr.r_test[7] ),
    .A1(\u_csr.shreg[6] ),
    .S(_0600_),
    .X(_0237_));
 sky130_fd_sc_hd__mux2_2 _1237_ (.A0(\u_csr.r_lockw[7] ),
    .A1(\c_lockw[7] ),
    .S(net55),
    .X(_0238_));
 sky130_fd_sc_hd__mux2_2 _1238_ (.A0(\u_csr.r_vcobnd[7] ),
    .A1(net41),
    .S(net55),
    .X(_0239_));
 sky130_fd_sc_hd__mux2_2 _1240_ (.A0(\u_csr.r_cpiset[7] ),
    .A1(net16),
    .S(net55),
    .X(_0240_));
 sky130_fd_sc_hd__mux2_2 _1241_ (.A0(\u_csr.r_seqdly[7] ),
    .A1(\u_csr.shreg[6] ),
    .S(_0606_),
    .X(_0241_));
 sky130_fd_sc_hd__mux2_2 _1242_ (.A0(\u_csr.r_odiv[2] ),
    .A1(\c_outdiv[2] ),
    .S(net55),
    .X(_0242_));
 sky130_fd_sc_hd__mux2_2 _1243_ (.A0(\u_csr.r_mdiv[7] ),
    .A1(net29),
    .S(net55),
    .X(_0243_));
 sky130_fd_sc_hd__mux2_2 _1244_ (.A0(\u_csr.r_ens[2] ),
    .A1(c_en_cp_man),
    .S(net55),
    .X(_0244_));
 sky130_fd_sc_hd__mux2_2 _1245_ (.A0(\u_csr.shreg[6] ),
    .A1(\u_csr.r_lockw[7] ),
    .S(_0609_),
    .X(_0245_));
 sky130_fd_sc_hd__mux2_2 _1246_ (.A0(\u_csr.r_ens[1] ),
    .A1(c_en_vco_man),
    .S(net55),
    .X(_0246_));
 sky130_fd_sc_hd__nand2_1 _1247_ (.A(\u_lock.u_en.q[0] ),
    .B(\u_lock.good_cnt[7] ),
    .Y(_0381_));
 sky130_fd_sc_hd__nor3_1 _1248_ (.A(_0645_),
    .B(\u_lock.good_cnt[7] ),
    .C(_0460_),
    .Y(_0382_));
 sky130_fd_sc_hd__nand4_1 _1249_ (.A(\u_lock.good_cnt[6] ),
    .B(\u_lock.good_cnt[5] ),
    .C(_0671_),
    .D(_0382_),
    .Y(_0383_));
 sky130_fd_sc_hd__a311o_1 _1250_ (.A1(\u_lock.good_cnt[6] ),
    .A2(\u_lock.good_cnt[5] ),
    .A3(_0671_),
    .B1(_0381_),
    .C1(_0643_),
    .X(_0384_));
 sky130_fd_sc_hd__o221ai_1 _1251_ (.A1(_0665_),
    .A2(_0381_),
    .B1(_0383_),
    .B2(_0643_),
    .C1(_0384_),
    .Y(_0248_));
 sky130_fd_sc_hd__mux2_2 _1252_ (.A0(\u_csr.r_ens[0] ),
    .A1(c_en_vreg_man),
    .S(net55),
    .X(_0249_));
 sky130_fd_sc_hd__mux2_2 _1254_ (.A0(\u_csr.r_ctrl[5] ),
    .A1(c_manual_seq),
    .S(net55),
    .X(_0250_));
 sky130_fd_sc_hd__mux2_2 _1255_ (.A0(\u_csr.shreg[6] ),
    .A1(\u_csr.r_vcobnd[7] ),
    .S(_0312_),
    .X(_0251_));
 sky130_fd_sc_hd__mux2_2 _1256_ (.A0(\u_csr.r_ctrl[4] ),
    .A1(c_auto_relock),
    .S(net55),
    .X(_0252_));
 sky130_fd_sc_hd__mux2_2 _1257_ (.A0(\u_csr.r_ctrl[3] ),
    .A1(c_soft_rst),
    .S(net55),
    .X(_0253_));
 sky130_fd_sc_hd__mux2_2 _1258_ (.A0(\u_csr.r_ctrl[2] ),
    .A1(c_bypass_sel),
    .S(net55),
    .X(_0254_));
 sky130_fd_sc_hd__mux2_2 _1259_ (.A0(\u_csr.shreg[6] ),
    .A1(\u_csr.r_cpiset[7] ),
    .S(_0313_),
    .X(_0255_));
 sky130_fd_sc_hd__mux2_2 _1260_ (.A0(\u_csr.r_ctrl[1] ),
    .A1(c_clkout_en),
    .S(net55),
    .X(_0256_));
 sky130_fd_sc_hd__mux2_2 _1261_ (.A0(\u_csr.r_ctrl[0] ),
    .A1(c_pll_en),
    .S(net55),
    .X(_0258_));
 sky130_fd_sc_hd__inv_1 _1262_ (.A(net17),
    .Y(_0386_));
 sky130_fd_sc_hd__o21ai_0 _1263_ (.A1(\u_seq.state[1] ),
    .A2(_0336_),
    .B1(_0320_),
    .Y(_0387_));
 sky130_fd_sc_hd__mux2i_1 _1264_ (.A0(\u_seq.state[1] ),
    .A1(c_pll_en),
    .S(c_manual_seq),
    .Y(_0388_));
 sky130_fd_sc_hd__nor3_1 _1265_ (.A(c_soft_rst),
    .B(_0388_),
    .C(_0387_),
    .Y(_0389_));
 sky130_fd_sc_hd__a21oi_1 _1266_ (.A1(_0386_),
    .A2(_0387_),
    .B1(_0389_),
    .Y(_0259_));
 sky130_fd_sc_hd__inv_1 _1267_ (.A(\u_seq.state[0] ),
    .Y(_0390_));
 sky130_fd_sc_hd__a21oi_1 _1268_ (.A1(_0390_),
    .A2(net18),
    .B1(\u_seq.state[5] ),
    .Y(_0391_));
 sky130_fd_sc_hd__nor2_1 _1269_ (.A(c_manual_seq),
    .B(_0391_),
    .Y(_0392_));
 sky130_fd_sc_hd__a21oi_1 _1270_ (.A1(c_manual_seq),
    .A2(c_en_cp_man),
    .B1(_0392_),
    .Y(_0393_));
 sky130_fd_sc_hd__nor2_1 _1271_ (.A(c_soft_rst),
    .B(_0393_),
    .Y(_0260_));
 sky130_fd_sc_hd__nand3_1 _1272_ (.A(\u_seq.dwell[5] ),
    .B(\u_seq.dwell[6] ),
    .C(_0344_),
    .Y(_0394_));
 sky130_fd_sc_hd__xor2_1 _1273_ (.A(\u_seq.dwell[7] ),
    .B(_0394_),
    .X(_0395_));
 sky130_fd_sc_hd__a21oi_1 _1274_ (.A1(_0321_),
    .A2(_0332_),
    .B1(_0395_),
    .Y(_0261_));
 sky130_fd_sc_hd__a21oi_1 _1275_ (.A1(_0390_),
    .A2(net19),
    .B1(\u_seq.state[2] ),
    .Y(_0396_));
 sky130_fd_sc_hd__nor2_1 _1276_ (.A(c_manual_seq),
    .B(_0396_),
    .Y(_0397_));
 sky130_fd_sc_hd__a21oi_1 _1277_ (.A1(c_manual_seq),
    .A2(c_en_vco_man),
    .B1(_0397_),
    .Y(_0398_));
 sky130_fd_sc_hd__nor2_1 _1278_ (.A(c_soft_rst),
    .B(_0398_),
    .Y(_0262_));
 sky130_fd_sc_hd__a21oi_1 _1279_ (.A1(_0390_),
    .A2(net20),
    .B1(\u_seq.state[3] ),
    .Y(_0399_));
 sky130_fd_sc_hd__nor2_1 _1280_ (.A(c_manual_seq),
    .B(_0399_),
    .Y(_0400_));
 sky130_fd_sc_hd__a21oi_1 _1281_ (.A1(c_manual_seq),
    .A2(c_en_vreg_man),
    .B1(_0400_),
    .Y(_0401_));
 sky130_fd_sc_hd__nor2_1 _1282_ (.A(c_soft_rst),
    .B(_0401_),
    .Y(_0263_));
 sky130_fd_sc_hd__a21oi_1 _1283_ (.A1(_0390_),
    .A2(net30),
    .B1(\u_seq.state[1] ),
    .Y(_0402_));
 sky130_fd_sc_hd__nor2_1 _1284_ (.A(c_manual_seq),
    .B(_0402_),
    .Y(_0403_));
 sky130_fd_sc_hd__a21oi_1 _1285_ (.A1(c_manual_seq),
    .A2(c_pll_en),
    .B1(_0403_),
    .Y(_0404_));
 sky130_fd_sc_hd__nor2_1 _1286_ (.A(c_soft_rst),
    .B(_0404_),
    .Y(_0264_));
 sky130_fd_sc_hd__nand2_1 _1287_ (.A(seq_done),
    .B(_0317_),
    .Y(_0405_));
 sky130_fd_sc_hd__nand2_1 _1288_ (.A(_0320_),
    .B(_0405_),
    .Y(_0265_));
 sky130_fd_sc_hd__and3_1 _1289_ (.A(\u_lock.u_en.q[0] ),
    .B(\u_lock.bad_cnt[7] ),
    .C(_0365_),
    .X(_0266_));
 sky130_fd_sc_hd__o21ai_0 _1290_ (.A1(c_pll_en),
    .A2(_0335_),
    .B1(_0319_),
    .Y(_0090_));
 sky130_fd_sc_hd__o21ai_0 _1291_ (.A1(_0322_),
    .A2(_0326_),
    .B1(_0327_),
    .Y(_0406_));
 sky130_fd_sc_hd__nand2b_1 _1292_ (.A_N(_0045_),
    .B(_0329_),
    .Y(_0407_));
 sky130_fd_sc_hd__nand3_1 _1293_ (.A(\u_seq.state[5] ),
    .B(_0406_),
    .C(_0407_),
    .Y(_0408_));
 sky130_fd_sc_hd__o21ai_0 _1294_ (.A1(_0328_),
    .A2(_0330_),
    .B1(\u_seq.state[1] ),
    .Y(_0409_));
 sky130_fd_sc_hd__a21oi_1 _1295_ (.A1(_0408_),
    .A2(_0409_),
    .B1(_0315_),
    .Y(_0091_));
 sky130_fd_sc_hd__nand3_1 _1296_ (.A(\u_seq.state[3] ),
    .B(_0406_),
    .C(_0407_),
    .Y(_0410_));
 sky130_fd_sc_hd__o21ai_0 _1297_ (.A1(_0328_),
    .A2(_0330_),
    .B1(\u_seq.state[2] ),
    .Y(_0411_));
 sky130_fd_sc_hd__a21oi_1 _1298_ (.A1(_0410_),
    .A2(_0411_),
    .B1(_0315_),
    .Y(_0092_));
 sky130_fd_sc_hd__o21ai_0 _1299_ (.A1(_0328_),
    .A2(_0330_),
    .B1(\u_seq.state[3] ),
    .Y(_0412_));
 sky130_fd_sc_hd__nand2_1 _1300_ (.A(c_pll_en),
    .B(\u_seq.state[0] ),
    .Y(_0413_));
 sky130_fd_sc_hd__a21oi_1 _1301_ (.A1(_0412_),
    .A2(_0413_),
    .B1(_0315_),
    .Y(_0093_));
 sky130_fd_sc_hd__nand3_1 _1302_ (.A(\u_seq.state[1] ),
    .B(_0406_),
    .C(_0407_),
    .Y(_0414_));
 sky130_fd_sc_hd__nand2_1 _1303_ (.A(c_auto_relock),
    .B(\u_lock.u_ll.q[0] ),
    .Y(_0415_));
 sky130_fd_sc_hd__nand3_1 _1304_ (.A(c_pll_en),
    .B(\u_seq.state[4] ),
    .C(_0415_),
    .Y(_0416_));
 sky130_fd_sc_hd__a21oi_1 _1305_ (.A1(_0414_),
    .A2(_0416_),
    .B1(_0315_),
    .Y(_0094_));
 sky130_fd_sc_hd__nand4_1 _1306_ (.A(c_pll_en),
    .B(\u_seq.state[4] ),
    .C(c_auto_relock),
    .D(\u_lock.u_ll.q[0] ),
    .Y(_0417_));
 sky130_fd_sc_hd__o21ai_0 _1307_ (.A1(_0328_),
    .A2(_0330_),
    .B1(\u_seq.state[5] ),
    .Y(_0418_));
 sky130_fd_sc_hd__nand3_1 _1308_ (.A(\u_seq.state[2] ),
    .B(_0406_),
    .C(_0407_),
    .Y(_0419_));
 sky130_fd_sc_hd__a31oi_1 _1309_ (.A1(_0417_),
    .A2(_0418_),
    .A3(_0419_),
    .B1(_0315_),
    .Y(_0095_));
 sky130_fd_sc_hd__xnor2_1 _1310_ (.A(\u_clkout.cnt[2] ),
    .B(_0088_),
    .Y(_0420_));
 sky130_fd_sc_hd__nor2_1 _1311_ (.A(_0451_),
    .B(_0420_),
    .Y(_0269_));
 sky130_fd_sc_hd__inv_1 _1312__64 (.A(clknet_1_1__leaf_pll_d2),
    .Y(net63));
 sky130_fd_sc_hd__inv_1 _1312__65 (.A(clknet_1_1__leaf_pll_d2),
    .Y(net64));
 sky130_fd_sc_hd__a21oi_1 _1313_ (.A1(_0031_),
    .A2(_0038_),
    .B1(_0043_),
    .Y(_0421_));
 sky130_fd_sc_hd__o21ai_0 _1314_ (.A1(\u_clkout.N[2] ),
    .A2(_0421_),
    .B1(\u_clkout.divq ),
    .Y(_0422_));
 sky130_fd_sc_hd__o31ai_1 _1315_ (.A1(\u_clkout.N[2] ),
    .A2(net64),
    .A3(_0421_),
    .B1(_0422_),
    .Y(_0423_));
 sky130_fd_sc_hd__mux2_2 _1316_ (.A0(_0423_),
    .A1(clknet_1_0__leaf_refclk_i),
    .S(c_bypass_sel),
    .X(\u_clkout.sel_clk ));
 sky130_fd_sc_hd__and2_1 _1317_ (.A(\u_clkout.u_gate.en_lat ),
    .B(\clknet_1_0__leaf_u_clkout.sel_clk ),
    .X(net8));
 sky130_fd_sc_hd__or2_2 _1318_ (.A(c_clkout_en),
    .B(net7),
    .X(_0270_));
 sky130_fd_sc_hd__mux2_2 _1319_ (.A0(\u_csr.shreg[5] ),
    .A1(\u_csr.addr_r[6] ),
    .S(_0440_),
    .X(_0247_));
 sky130_fd_sc_hd__mux4_2 _1320_ (.A0(\u_csr.r_ctrl[7] ),
    .A1(\u_csr.r_ens[7] ),
    .A2(\u_csr.r_mdiv[7] ),
    .A3(\u_csr.r_odiv[7] ),
    .S0(net58),
    .S1(net57),
    .X(_0424_));
 sky130_fd_sc_hd__mux4_2 _1321_ (.A0(\u_csr.r_cpiset[7] ),
    .A1(\u_csr.r_vcobnd[7] ),
    .A2(\u_csr.r_lockw[7] ),
    .A3(\u_csr.r_seqdly[7] ),
    .S0(net58),
    .S1(net57),
    .X(_0425_));
 sky130_fd_sc_hd__a22oi_1 _1322_ (.A1(_0548_),
    .A2(_0424_),
    .B1(_0425_),
    .B2(_0552_),
    .Y(_0426_));
 sky130_fd_sc_hd__nand2_1 _1323_ (.A(\u_csr.r_test[7] ),
    .B(_0546_),
    .Y(_0427_));
 sky130_fd_sc_hd__nand3_1 _1324_ (.A(_0537_),
    .B(_0426_),
    .C(_0427_),
    .Y(_0428_));
 sky130_fd_sc_hd__a22o_1 _1325_ (.A1(\u_csr.sh_out[6] ),
    .A2(_0541_),
    .B1(_0542_),
    .B2(_0428_),
    .X(_0278_));
 sky130_fd_sc_hd__nor2b_1 _1326_ (.A(\u_lock.div_d ),
    .B_N(\u_lock.u_div.q[0] ),
    .Y(\u_lock.div_edge ));
 sky130_fd_sc_hd__nand3_1 _1327_ (.A(\u_lock.div_cnt[14] ),
    .B(\u_lock.div_cnt[13] ),
    .C(_0479_),
    .Y(_0429_));
 sky130_fd_sc_hd__xor2_1 _1328_ (.A(\u_lock.div_cnt[15] ),
    .B(_0429_),
    .X(_0430_));
 sky130_fd_sc_hd__nor2_1 _1329_ (.A(net54),
    .B(_0430_),
    .Y(_0285_));
 sky130_fd_sc_hd__nand2_1 _1330_ (.A(\u_lock.win_cnt[14] ),
    .B(_0513_),
    .Y(_0431_));
 sky130_fd_sc_hd__o21ai_0 _1331_ (.A1(_0510_),
    .A2(_0431_),
    .B1(\u_lock.win_cnt[15] ),
    .Y(_0432_));
 sky130_fd_sc_hd__or3_1 _1332_ (.A(\u_lock.win_cnt[15] ),
    .B(_0510_),
    .C(_0431_),
    .X(_0433_));
 sky130_fd_sc_hd__a21oi_1 _1333_ (.A1(_0432_),
    .A2(_0433_),
    .B1(_0461_),
    .Y(_0301_));
 sky130_fd_sc_hd__inv_1 _1334_ (.A(\u_lock.bad_cnt[1] ),
    .Y(_0051_));
 sky130_fd_sc_hd__and2_1 _1335_ (.A(net30),
    .B(seq_done),
    .X(\u_lock.u_en.d[0] ));
 sky130_fd_sc_hd__and2_1 _1336_ (.A(clknet_1_1__leaf_refclk_i),
    .B(\u_refgate.en_lat ),
    .X(net31));
 sky130_fd_sc_hd__or2_2 _1337_ (.A(net30),
    .B(net7),
    .X(_0311_));
 sky130_fd_sc_hd__inv_1 _1338_ (.A(_0037_),
    .Y(_0434_));
 sky130_fd_sc_hd__a211oi_1 _1339_ (.A1(_0016_),
    .A2(_0434_),
    .B1(_0015_),
    .C1(\u_clkout.cnt[2] ),
    .Y(_0096_));
 sky130_fd_sc_hd__ha_1 _1340_ (.A(\u_lock.good_cnt[3] ),
    .B(_0003_),
    .COUT(_0004_),
    .SUM(_0005_));
 sky130_fd_sc_hd__ha_1 _1341_ (.A(_0006_),
    .B(\u_lock.k_s[0] ),
    .COUT(_0007_),
    .SUM(_0008_));
 sky130_fd_sc_hd__ha_1 _1342_ (.A(_0009_),
    .B(_0010_),
    .COUT(_0011_),
    .SUM(_0693_));
 sky130_fd_sc_hd__ha_1 _1343_ (.A(\u_csr.bit_cnt[0] ),
    .B(\u_csr.bit_cnt[1] ),
    .COUT(_0012_),
    .SUM(_0694_));
 sky130_fd_sc_hd__ha_1 _1344_ (.A(\u_csr.bit_cnt[0] ),
    .B(\u_csr.bit_cnt[1] ),
    .COUT(_0013_),
    .SUM(_0695_));
 sky130_fd_sc_hd__ha_1 _1345_ (.A(\u_clkout.cnt[1] ),
    .B(_0014_),
    .COUT(_0015_),
    .SUM(_0016_));
 sky130_fd_sc_hd__ha_1 _1346_ (.A(\u_lock.win_cnt[0] ),
    .B(\u_lock.win_cnt[1] ),
    .COUT(_0017_),
    .SUM(_0018_));
 sky130_fd_sc_hd__ha_1 _1347_ (.A(\u_lock.win_cnt[0] ),
    .B(\u_lock.win_cnt[1] ),
    .COUT(_0019_),
    .SUM(_0696_));
 sky130_fd_sc_hd__ha_1 _1348_ (.A(\u_lock.div_cnt[1] ),
    .B(_0020_),
    .COUT(_0021_),
    .SUM(\u_lock.div_total[1] ));
 sky130_fd_sc_hd__ha_1 _1349_ (.A(\u_lock.good_cnt[0] ),
    .B(\u_lock.good_cnt[1] ),
    .COUT(_0022_),
    .SUM(_0023_));
 sky130_fd_sc_hd__ha_1 _1350_ (.A(\u_seq.dwell[0] ),
    .B(\u_seq.dwell[1] ),
    .COUT(_0024_),
    .SUM(_0025_));
 sky130_fd_sc_hd__ha_1 _1351_ (.A(_0026_),
    .B(\u_seq.dwell[0] ),
    .COUT(_0697_),
    .SUM(_0027_));
 sky130_fd_sc_hd__ha_1 _1352_ (.A(\c_seqdly[0] ),
    .B(_0028_),
    .COUT(_0029_),
    .SUM(_0698_));
 sky130_fd_sc_hd__ha_1 _1353_ (.A(_0030_),
    .B(_0031_),
    .COUT(_0032_),
    .SUM(_0033_));
 sky130_fd_sc_hd__ha_1 _1354_ (.A(_0034_),
    .B(\u_seq.dwell[5] ),
    .COUT(_0035_),
    .SUM(_0036_));
 sky130_fd_sc_hd__ha_1 _1355_ (.A(_0030_),
    .B(\u_clkout.N[1] ),
    .COUT(_0037_),
    .SUM(_0692_));
 sky130_fd_sc_hd__ha_1 _1356_ (.A(_0039_),
    .B(\u_seq.dwell[3] ),
    .COUT(_0040_),
    .SUM(_0041_));
 sky130_fd_sc_hd__ha_1 _1357_ (.A(_0031_),
    .B(_0038_),
    .COUT(_0042_),
    .SUM(_0699_));
 sky130_fd_sc_hd__ha_1 _1358_ (.A(\u_clkout.N[0] ),
    .B(_0038_),
    .COUT(_0043_),
    .SUM(_0700_));
 sky130_fd_sc_hd__ha_1 _1359_ (.A(_0044_),
    .B(\u_seq.dwell[7] ),
    .COUT(_0045_),
    .SUM(_0046_));
 sky130_fd_sc_hd__ha_1 _1360_ (.A(_0047_),
    .B(\u_clkout.cnt[2] ),
    .COUT(_0048_),
    .SUM(_0049_));
 sky130_fd_sc_hd__ha_1 _1361_ (.A(_0050_),
    .B(_0051_),
    .COUT(_0052_),
    .SUM(_0053_));
 sky130_fd_sc_hd__ha_1 _1362_ (.A(\u_lock.bad_cnt[0] ),
    .B(_0051_),
    .COUT(_0054_),
    .SUM(_0701_));
 sky130_fd_sc_hd__ha_1 _1363_ (.A(\u_lock.bad_cnt[0] ),
    .B(\u_lock.bad_cnt[1] ),
    .COUT(_0055_),
    .SUM(_0702_));
 sky130_fd_sc_hd__ha_1 _1364_ (.A(\u_lock.good_cnt[7] ),
    .B(_0056_),
    .COUT(_0057_),
    .SUM(_0058_));
 sky130_fd_sc_hd__ha_1 _1365_ (.A(_0059_),
    .B(\u_seq.dwell[2] ),
    .COUT(_0060_),
    .SUM(_0061_));
 sky130_fd_sc_hd__ha_1 _1366_ (.A(_0062_),
    .B(\u_seq.dwell[1] ),
    .COUT(_0063_),
    .SUM(_0064_));
 sky130_fd_sc_hd__ha_1 _1367_ (.A(\u_lock.good_cnt[6] ),
    .B(_0065_),
    .COUT(_0066_),
    .SUM(_0067_));
 sky130_fd_sc_hd__ha_1 _1368_ (.A(\u_lock.good_cnt[5] ),
    .B(_0068_),
    .COUT(_0069_),
    .SUM(_0070_));
 sky130_fd_sc_hd__ha_1 _1369_ (.A(\u_lock.good_cnt[2] ),
    .B(_0071_),
    .COUT(_0072_),
    .SUM(_0073_));
 sky130_fd_sc_hd__ha_1 _1370_ (.A(\u_lock.good_cnt[4] ),
    .B(_0074_),
    .COUT(_0075_),
    .SUM(_0076_));
 sky130_fd_sc_hd__ha_1 _1371_ (.A(_0077_),
    .B(\u_seq.dwell[4] ),
    .COUT(_0078_),
    .SUM(_0079_));
 sky130_fd_sc_hd__ha_1 _1372_ (.A(_0699_),
    .B(\u_clkout.cnt[1] ),
    .COUT(_0080_),
    .SUM(_0081_));
 sky130_fd_sc_hd__ha_1 _1373_ (.A(_0082_),
    .B(\u_seq.dwell[6] ),
    .COUT(_0083_),
    .SUM(_0084_));
 sky130_fd_sc_hd__ha_1 _1374_ (.A(\u_lock.good_cnt[1] ),
    .B(_0085_),
    .COUT(_0086_),
    .SUM(_0087_));
 sky130_fd_sc_hd__ha_1 _1375_ (.A(\u_lock.div_cnt[0] ),
    .B(\u_lock.div_edge ),
    .COUT(_0020_),
    .SUM(\u_lock.div_total[0] ));
 sky130_fd_sc_hd__ha_1 _1376_ (.A(\u_clkout.cnt[0] ),
    .B(\u_clkout.cnt[1] ),
    .COUT(_0088_),
    .SUM(_0089_));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_0_pll_clk_i (.A(pll_clk_i),
    .X(clknet_0_pll_clk_i));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_0_pll_clk_i_regs (.A(pll_clk_i_regs),
    .X(clknet_0_pll_clk_i_regs));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_0_pll_d2 (.A(pll_d2),
    .X(clknet_0_pll_d2));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_0_refclk_i (.A(refclk_i),
    .X(clknet_0_refclk_i));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_0_refclk_i_regs (.A(refclk_i_regs),
    .X(clknet_0_refclk_i_regs));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_0_spi_sclk_i (.A(spi_sclk_i),
    .X(clknet_0_spi_sclk_i));
 sky130_fd_sc_hd__clkbuf_16 \clkbuf_0_u_clkout.sel_clk  (.A(\u_clkout.sel_clk ),
    .X(\clknet_0_u_clkout.sel_clk ));
 sky130_fd_sc_hd__clkbuf_16 \clkbuf_0_u_clkout.sel_clk_regs  (.A(\u_clkout.sel_clk_regs ),
    .X(\clknet_0_u_clkout.sel_clk_regs ));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_1_0__f_pll_clk_i (.A(clknet_0_pll_clk_i),
    .X(clknet_1_0__leaf_pll_clk_i));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_1_0__f_pll_clk_i_regs (.A(clknet_0_pll_clk_i_regs),
    .X(clknet_1_0__leaf_pll_clk_i_regs));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_1_0__f_pll_d2 (.A(clknet_0_pll_d2),
    .X(clknet_1_0__leaf_pll_d2));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_1_0__f_refclk_i (.A(clknet_0_refclk_i),
    .X(clknet_1_0__leaf_refclk_i));
 sky130_fd_sc_hd__clkbuf_16 \clkbuf_1_0__f_u_clkout.sel_clk  (.A(\clknet_0_u_clkout.sel_clk ),
    .X(\clknet_1_0__leaf_u_clkout.sel_clk ));
 sky130_fd_sc_hd__clkbuf_16 \clkbuf_1_0__f_u_clkout.sel_clk_regs  (.A(\clknet_0_u_clkout.sel_clk_regs ),
    .X(\clknet_1_0__leaf_u_clkout.sel_clk_regs ));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_1_1__f_pll_clk_i_regs (.A(clknet_0_pll_clk_i_regs),
    .X(clknet_1_1__leaf_pll_clk_i_regs));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_1_1__f_pll_d2 (.A(clknet_0_pll_d2),
    .X(clknet_1_1__leaf_pll_d2));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_1_1__f_refclk_i (.A(delaynet_6_refclk),
    .X(clknet_1_1__leaf_refclk_i));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_3_0__f_spi_sclk_i (.A(clknet_0_spi_sclk_i),
    .X(clknet_3_0__leaf_spi_sclk_i));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_3_1__f_spi_sclk_i (.A(clknet_0_spi_sclk_i),
    .X(clknet_3_1__leaf_spi_sclk_i));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_3_2__f_spi_sclk_i (.A(clknet_0_spi_sclk_i),
    .X(clknet_3_2__leaf_spi_sclk_i));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_3_3__f_spi_sclk_i (.A(clknet_0_spi_sclk_i),
    .X(clknet_3_3__leaf_spi_sclk_i));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_3_4__f_spi_sclk_i (.A(clknet_0_spi_sclk_i),
    .X(clknet_3_4__leaf_spi_sclk_i));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_3_5__f_spi_sclk_i (.A(clknet_0_spi_sclk_i),
    .X(clknet_3_5__leaf_spi_sclk_i));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_3_6__f_spi_sclk_i (.A(clknet_0_spi_sclk_i),
    .X(clknet_3_6__leaf_spi_sclk_i));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_3_7__f_spi_sclk_i (.A(clknet_0_spi_sclk_i),
    .X(clknet_3_7__leaf_spi_sclk_i));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_4_0_0_refclk_i_regs (.A(clknet_0_refclk_i_regs),
    .X(clknet_4_0_0_refclk_i_regs));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_4_10_0_refclk_i_regs (.A(clknet_0_refclk_i_regs),
    .X(clknet_4_10_0_refclk_i_regs));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_4_11_0_refclk_i_regs (.A(clknet_0_refclk_i_regs),
    .X(clknet_4_11_0_refclk_i_regs));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_4_12_0_refclk_i_regs (.A(clknet_0_refclk_i_regs),
    .X(clknet_4_12_0_refclk_i_regs));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_4_13_0_refclk_i_regs (.A(clknet_0_refclk_i_regs),
    .X(clknet_4_13_0_refclk_i_regs));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_4_14_0_refclk_i_regs (.A(clknet_0_refclk_i_regs),
    .X(clknet_4_14_0_refclk_i_regs));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_4_15_0_refclk_i_regs (.A(clknet_0_refclk_i_regs),
    .X(clknet_4_15_0_refclk_i_regs));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_4_1_0_refclk_i_regs (.A(clknet_0_refclk_i_regs),
    .X(clknet_4_1_0_refclk_i_regs));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_4_2_0_refclk_i_regs (.A(clknet_0_refclk_i_regs),
    .X(clknet_4_2_0_refclk_i_regs));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_4_3_0_refclk_i_regs (.A(clknet_0_refclk_i_regs),
    .X(clknet_4_3_0_refclk_i_regs));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_4_4_0_refclk_i_regs (.A(clknet_0_refclk_i_regs),
    .X(clknet_4_4_0_refclk_i_regs));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_4_5_0_refclk_i_regs (.A(clknet_0_refclk_i_regs),
    .X(clknet_4_5_0_refclk_i_regs));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_4_6_0_refclk_i_regs (.A(clknet_0_refclk_i_regs),
    .X(clknet_4_6_0_refclk_i_regs));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_4_7_0_refclk_i_regs (.A(clknet_0_refclk_i_regs),
    .X(clknet_4_7_0_refclk_i_regs));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_4_8_0_refclk_i_regs (.A(clknet_0_refclk_i_regs),
    .X(clknet_4_8_0_refclk_i_regs));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_4_9_0_refclk_i_regs (.A(clknet_0_refclk_i_regs),
    .X(clknet_4_9_0_refclk_i_regs));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_regs_0_pll_clk (.A(pll_clk_i),
    .X(pll_clk_i_regs));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_regs_1_refclk (.A(delaynet_7_refclk),
    .X(refclk_i_regs));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_regs_2_refclk (.A(\u_clkout.sel_clk ),
    .X(\u_clkout.sel_clk_regs ));
 sky130_fd_sc_hd__clkbuf_1 clkload0 (.A(clknet_1_1__leaf_pll_clk_i_regs));
 sky130_fd_sc_hd__clkbuf_1 clkload1 (.A(clknet_1_1__leaf_refclk_i));
 sky130_fd_sc_hd__inv_8 clkload10 (.A(clknet_4_9_0_refclk_i_regs));
 sky130_fd_sc_hd__inv_8 clkload11 (.A(clknet_4_10_0_refclk_i_regs));
 sky130_fd_sc_hd__inv_6 clkload12 (.A(clknet_4_11_0_refclk_i_regs));
 sky130_fd_sc_hd__clkinvlp_4 clkload13 (.A(clknet_4_12_0_refclk_i_regs));
 sky130_fd_sc_hd__inv_6 clkload14 (.A(clknet_4_13_0_refclk_i_regs));
 sky130_fd_sc_hd__inv_8 clkload15 (.A(clknet_4_14_0_refclk_i_regs));
 sky130_fd_sc_hd__inv_6 clkload16 (.A(clknet_4_15_0_refclk_i_regs));
 sky130_fd_sc_hd__inv_6 clkload17 (.A(clknet_3_0__leaf_spi_sclk_i));
 sky130_fd_sc_hd__clkinvlp_4 clkload18 (.A(clknet_3_1__leaf_spi_sclk_i));
 sky130_fd_sc_hd__inv_8 clkload19 (.A(clknet_3_2__leaf_spi_sclk_i));
 sky130_fd_sc_hd__inv_6 clkload2 (.A(clknet_4_0_0_refclk_i_regs));
 sky130_fd_sc_hd__inv_6 clkload20 (.A(clknet_3_3__leaf_spi_sclk_i));
 sky130_fd_sc_hd__clkinvlp_4 clkload21 (.A(clknet_3_4__leaf_spi_sclk_i));
 sky130_fd_sc_hd__clkinv_2 clkload22 (.A(clknet_3_6__leaf_spi_sclk_i));
 sky130_fd_sc_hd__inv_6 clkload23 (.A(clknet_3_7__leaf_spi_sclk_i));
 sky130_fd_sc_hd__bufinv_8 clkload24 (.A(clknet_1_1__leaf_pll_d2));
 sky130_fd_sc_hd__inv_6 clkload3 (.A(clknet_4_1_0_refclk_i_regs));
 sky130_fd_sc_hd__clkinvlp_4 clkload4 (.A(clknet_4_3_0_refclk_i_regs));
 sky130_fd_sc_hd__clkinv_4 clkload5 (.A(clknet_4_4_0_refclk_i_regs));
 sky130_fd_sc_hd__clkinv_4 clkload6 (.A(clknet_4_5_0_refclk_i_regs));
 sky130_fd_sc_hd__inv_6 clkload7 (.A(clknet_4_6_0_refclk_i_regs));
 sky130_fd_sc_hd__bufinv_16 clkload8 (.A(clknet_4_7_0_refclk_i_regs));
 sky130_fd_sc_hd__clkinv_8 clkload9 (.A(clknet_4_8_0_refclk_i_regs));
 sky130_fd_sc_hd__dfrtp_1 \cs_core[0]$_DFF_PN0_  (.D(net),
    .Q(\cs_core[0] ),
    .RESET_B(net2),
    .CLK(clknet_4_0_0_refclk_i_regs));
 sky130_fd_sc_hd__conb_1 \cs_core[0]$_DFF_PN0__1  (.HI(net));
 sky130_fd_sc_hd__dfrtp_4 \cs_core[1]$_DFF_PN0_  (.D(\cs_core[0] ),
    .Q(core_rst_n),
    .RESET_B(net2),
    .CLK(clknet_4_0_0_refclk_i_regs));
 sky130_fd_sc_hd__dfrtp_1 \cs_pll[0]$_DFF_PN0_  (.D(net1),
    .Q(\cs_pll[0] ),
    .RESET_B(net2),
    .CLK(clknet_1_0__leaf_pll_clk_i_regs));
 sky130_fd_sc_hd__conb_1 \cs_pll[0]$_DFF_PN0__2  (.HI(net1));
 sky130_fd_sc_hd__dfrtp_1 \cs_pll[1]$_DFF_PN0_  (.D(\cs_pll[0] ),
    .Q(\cs_pll[1] ),
    .RESET_B(net2),
    .CLK(clknet_1_1__leaf_pll_clk_i_regs));
 sky130_fd_sc_hd__clkbuf_16 delaybuf_0_refclk (.A(clknet_0_refclk_i),
    .X(delaynet_0_refclk));
 sky130_fd_sc_hd__clkbuf_16 delaybuf_1_refclk (.A(delaynet_0_refclk),
    .X(delaynet_1_refclk));
 sky130_fd_sc_hd__clkbuf_16 delaybuf_2_refclk (.A(delaynet_1_refclk),
    .X(delaynet_2_refclk));
 sky130_fd_sc_hd__clkbuf_16 delaybuf_3_refclk (.A(delaynet_2_refclk),
    .X(delaynet_3_refclk));
 sky130_fd_sc_hd__clkbuf_16 delaybuf_4_refclk (.A(delaynet_3_refclk),
    .X(delaynet_4_refclk));
 sky130_fd_sc_hd__clkbuf_16 delaybuf_5_refclk (.A(delaynet_4_refclk),
    .X(delaynet_5_refclk));
 sky130_fd_sc_hd__clkbuf_16 delaybuf_6_refclk (.A(delaynet_5_refclk),
    .X(delaynet_6_refclk));
 sky130_fd_sc_hd__clkbuf_16 delaybuf_7_refclk (.A(refclk_i),
    .X(delaynet_7_refclk));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input3 (.A(rst_n_i),
    .X(net2));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input4 (.A(scan_en_i),
    .X(net3));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input5 (.A(scan_in_i),
    .X(net4));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input6 (.A(spi_cs_n_i),
    .X(net5));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input7 (.A(spi_sdi_i),
    .X(net6));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input8 (.A(test_mode_i),
    .X(net7));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output10 (.A(net9),
    .X(cp_iset_o[0]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output11 (.A(net10),
    .X(cp_iset_o[1]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output12 (.A(net11),
    .X(cp_iset_o[2]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output13 (.A(net12),
    .X(cp_iset_o[3]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output14 (.A(net13),
    .X(cp_iset_o[4]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output15 (.A(net14),
    .X(cp_iset_o[5]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output16 (.A(net15),
    .X(cp_iset_o[6]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output17 (.A(net16),
    .X(cp_iset_o[7]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output18 (.A(net17),
    .X(div_rst_o));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output19 (.A(net18),
    .X(en_cp_o));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output20 (.A(net19),
    .X(en_vco_o));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output21 (.A(net20),
    .X(en_vreg_o));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output22 (.A(net21),
    .X(lock_o));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output23 (.A(net22),
    .X(m_div_o[0]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output24 (.A(net23),
    .X(m_div_o[1]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output25 (.A(net24),
    .X(m_div_o[2]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output26 (.A(net25),
    .X(m_div_o[3]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output27 (.A(net26),
    .X(m_div_o[4]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output28 (.A(net27),
    .X(m_div_o[5]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output29 (.A(net28),
    .X(m_div_o[6]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output30 (.A(net29),
    .X(m_div_o[7]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output31 (.A(net30),
    .X(pll_en_o));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output32 (.A(net31),
    .X(ref_o));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output33 (.A(net32),
    .X(scan_out_o));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output34 (.A(net33),
    .X(spi_sdo_o));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output35 (.A(net34),
    .X(vco_band_o[0]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output36 (.A(net35),
    .X(vco_band_o[1]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output37 (.A(net36),
    .X(vco_band_o[2]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output38 (.A(net37),
    .X(vco_band_o[3]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output39 (.A(net38),
    .X(vco_band_o[4]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output40 (.A(net39),
    .X(vco_band_o[5]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output41 (.A(net40),
    .X(vco_band_o[6]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output42 (.A(net41),
    .X(vco_band_o[7]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output9 (.A(net8),
    .X(clk_out_o));
 sky130_fd_sc_hd__buf_4 place55 (.A(_0461_),
    .X(net54));
 sky130_fd_sc_hd__buf_4 place56 (.A(_0598_),
    .X(net55));
 sky130_fd_sc_hd__buf_4 place57 (.A(_0097_),
    .X(net56));
 sky130_fd_sc_hd__buf_4 place58 (.A(\u_csr.addr_r[1] ),
    .X(net57));
 sky130_fd_sc_hd__buf_4 place59 (.A(\u_csr.addr_r[0] ),
    .X(net58));
 sky130_fd_sc_hd__buf_4 place60 (.A(net60),
    .X(net59));
 sky130_fd_sc_hd__buf_4 place61 (.A(core_rst_n),
    .X(net60));
 sky130_fd_sc_hd__buf_4 place62 (.A(core_rst_n),
    .X(net61));
 sky130_fd_sc_hd__buf_4 place63 (.A(core_rst_n),
    .X(net62));
 sky130_fd_sc_hd__dfrtp_1 \pll_d2$_DFF_PN0_  (.D(net63),
    .Q(pll_d2),
    .RESET_B(\cs_pll[1] ),
    .CLK(clknet_1_0__leaf_pll_clk_i_regs));
 sky130_fd_sc_hd__dfrtp_1 \scan_ff$_DFFE_PN0P_  (.D(_0228_),
    .Q(net32),
    .RESET_B(net62),
    .CLK(clknet_4_0_0_refclk_i_regs));
 sky130_fd_sc_hd__dfrtp_1 \u_clkout.cnt[0]$_DFF_PN0_  (.D(_0267_),
    .Q(\u_clkout.cnt[0] ),
    .RESET_B(\cs_pll[1] ),
    .CLK(clknet_1_0__leaf_pll_d2));
 sky130_fd_sc_hd__dfrtp_1 \u_clkout.cnt[1]$_DFF_PN0_  (.D(_0268_),
    .Q(\u_clkout.cnt[1] ),
    .RESET_B(\cs_pll[1] ),
    .CLK(clknet_1_0__leaf_pll_d2));
 sky130_fd_sc_hd__dfrtp_1 \u_clkout.cnt[2]$_DFF_PN0_  (.D(_0269_),
    .Q(\u_clkout.cnt[2] ),
    .RESET_B(\cs_pll[1] ),
    .CLK(clknet_1_0__leaf_pll_d2));
 sky130_fd_sc_hd__dfrtp_1 \u_clkout.divq$_DFF_PN0_  (.D(_0096_),
    .Q(\u_clkout.divq ),
    .RESET_B(\cs_pll[1] ),
    .CLK(clknet_1_1__leaf_pll_d2));
 sky130_fd_sc_hd__dlxtn_1 \u_clkout.u_gate.en_lat$_DLATCH_N_  (.D(_0270_),
    .Q(\u_clkout.u_gate.en_lat ),
    .GATE_N(\clknet_1_0__leaf_u_clkout.sel_clk_regs ));
 sky130_fd_sc_hd__dfrtp_1 \u_clkout.u_n.meta[0]$_DFF_PN0_  (.D(\c_outdiv[0] ),
    .Q(\u_clkout.u_n.meta[0] ),
    .RESET_B(\cs_pll[1] ),
    .CLK(clknet_1_1__leaf_pll_d2));
 sky130_fd_sc_hd__dfrtp_1 \u_clkout.u_n.meta[1]$_DFF_PN0_  (.D(\c_outdiv[1] ),
    .Q(\u_clkout.u_n.meta[1] ),
    .RESET_B(\cs_pll[1] ),
    .CLK(clknet_1_0__leaf_pll_d2));
 sky130_fd_sc_hd__dfrtp_1 \u_clkout.u_n.meta[2]$_DFF_PN0_  (.D(\c_outdiv[2] ),
    .Q(\u_clkout.u_n.meta[2] ),
    .RESET_B(\cs_pll[1] ),
    .CLK(clknet_1_0__leaf_pll_d2));
 sky130_fd_sc_hd__dfrtp_1 \u_clkout.u_n.q[0]$_DFF_PN0_  (.D(\u_clkout.u_n.meta[0] ),
    .Q(\u_clkout.N[0] ),
    .RESET_B(\cs_pll[1] ),
    .CLK(clknet_1_1__leaf_pll_d2));
 sky130_fd_sc_hd__dfrtp_1 \u_clkout.u_n.q[1]$_DFF_PN0_  (.D(\u_clkout.u_n.meta[1] ),
    .Q(\u_clkout.N[1] ),
    .RESET_B(\cs_pll[1] ),
    .CLK(clknet_1_0__leaf_pll_d2));
 sky130_fd_sc_hd__dfrtp_1 \u_clkout.u_n.q[2]$_DFF_PN0_  (.D(\u_clkout.u_n.meta[2] ),
    .Q(\u_clkout.N[2] ),
    .RESET_B(\cs_pll[1] ),
    .CLK(clknet_1_0__leaf_pll_d2));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.addr_r[0]$_DFFE_PP0P_  (.D(_0190_),
    .Q(\u_csr.addr_r[0] ),
    .RESET_B(_0098_),
    .CLK(clknet_3_5__leaf_spi_sclk_i));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.addr_r[1]$_DFFE_PP0P_  (.D(_0189_),
    .Q(\u_csr.addr_r[1] ),
    .RESET_B(_0098_),
    .CLK(clknet_3_4__leaf_spi_sclk_i));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.addr_r[2]$_DFFE_PP0P_  (.D(_0188_),
    .Q(\u_csr.addr_r[2] ),
    .RESET_B(_0098_),
    .CLK(clknet_3_4__leaf_spi_sclk_i));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.addr_r[3]$_DFFE_PP0P_  (.D(_0187_),
    .Q(\u_csr.addr_r[3] ),
    .RESET_B(_0098_),
    .CLK(clknet_3_4__leaf_spi_sclk_i));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.addr_r[4]$_DFFE_PP0P_  (.D(_0186_),
    .Q(\u_csr.addr_r[4] ),
    .RESET_B(_0098_),
    .CLK(clknet_3_5__leaf_spi_sclk_i));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.addr_r[5]$_DFFE_PP0P_  (.D(_0185_),
    .Q(\u_csr.addr_r[5] ),
    .RESET_B(_0098_),
    .CLK(clknet_3_5__leaf_spi_sclk_i));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.addr_r[6]$_DFFE_PP0P_  (.D(_0247_),
    .Q(\u_csr.addr_r[6] ),
    .RESET_B(_0098_),
    .CLK(clknet_3_4__leaf_spi_sclk_i));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.bit_cnt[0]$_DFF_PP0_  (.D(_0009_),
    .Q(\u_csr.bit_cnt[0] ),
    .RESET_B(net56),
    .CLK(clknet_3_5__leaf_spi_sclk_i));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.bit_cnt[1]$_DFF_PP0_  (.D(_0693_),
    .Q(\u_csr.bit_cnt[1] ),
    .RESET_B(net56),
    .CLK(clknet_3_5__leaf_spi_sclk_i));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.bit_cnt[2]$_DFF_PP0_  (.D(_0001_),
    .Q(\u_csr.bit_cnt[2] ),
    .RESET_B(net56),
    .CLK(clknet_3_5__leaf_spi_sclk_i));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.bit_cnt[3]$_DFF_PP0_  (.D(_0002_),
    .Q(\u_csr.bit_cnt[3] ),
    .RESET_B(net56),
    .CLK(clknet_3_5__leaf_spi_sclk_i));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.c_auto_relock$_DFFE_PN0P_  (.D(_0252_),
    .Q(c_auto_relock),
    .RESET_B(net61),
    .CLK(clknet_4_11_0_refclk_i_regs));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.c_bypass_sel$_DFFE_PN0P_  (.D(_0254_),
    .Q(c_bypass_sel),
    .RESET_B(net60),
    .CLK(clknet_4_2_0_refclk_i_regs));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.c_clkout_en$_DFFE_PN0P_  (.D(_0256_),
    .Q(c_clkout_en),
    .RESET_B(net59),
    .CLK(clknet_4_2_0_refclk_i_regs));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.c_cp_iset[0]$_DFFE_PN0P_  (.D(_0161_),
    .Q(net9),
    .RESET_B(net62),
    .CLK(clknet_4_13_0_refclk_i_regs));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.c_cp_iset[1]$_DFFE_PN0P_  (.D(_0160_),
    .Q(net10),
    .RESET_B(net59),
    .CLK(clknet_4_10_0_refclk_i_regs));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.c_cp_iset[2]$_DFFE_PN0P_  (.D(_0159_),
    .Q(net11),
    .RESET_B(net60),
    .CLK(clknet_4_2_0_refclk_i_regs));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.c_cp_iset[3]$_DFFE_PN0P_  (.D(_0158_),
    .Q(net12),
    .RESET_B(core_rst_n),
    .CLK(clknet_4_1_0_refclk_i_regs));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.c_cp_iset[4]$_DFFE_PN0P_  (.D(_0157_),
    .Q(net13),
    .RESET_B(net59),
    .CLK(clknet_4_11_0_refclk_i_regs));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.c_cp_iset[5]$_DFFE_PN0P_  (.D(_0156_),
    .Q(net14),
    .RESET_B(net62),
    .CLK(clknet_4_13_0_refclk_i_regs));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.c_cp_iset[6]$_DFFE_PN0P_  (.D(_0155_),
    .Q(net15),
    .RESET_B(net62),
    .CLK(clknet_4_13_0_refclk_i_regs));
 sky130_fd_sc_hd__dfstp_2 \u_csr.c_cp_iset[7]$_DFFE_PN1P_  (.D(_0240_),
    .Q(net16),
    .SET_B(net60),
    .CLK(clknet_4_2_0_refclk_i_regs));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.c_en_cp_man$_DFFE_PN0P_  (.D(_0244_),
    .Q(c_en_cp_man),
    .RESET_B(net59),
    .CLK(clknet_4_9_0_refclk_i_regs));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.c_en_vco_man$_DFFE_PN0P_  (.D(_0246_),
    .Q(c_en_vco_man),
    .RESET_B(net59),
    .CLK(clknet_4_10_0_refclk_i_regs));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.c_en_vreg_man$_DFFE_PN0P_  (.D(_0249_),
    .Q(c_en_vreg_man),
    .RESET_B(net59),
    .CLK(clknet_4_9_0_refclk_i_regs));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.c_lockw[0]$_DFFE_PN0P_  (.D(_0147_),
    .Q(\c_lockw[0] ),
    .RESET_B(net61),
    .CLK(clknet_4_3_0_refclk_i_regs));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.c_lockw[1]$_DFFE_PN0P_  (.D(_0146_),
    .Q(\c_lockw[1] ),
    .RESET_B(net60),
    .CLK(clknet_4_3_0_refclk_i_regs));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.c_lockw[2]$_DFFE_PN0P_  (.D(_0145_),
    .Q(\c_lockw[2] ),
    .RESET_B(net60),
    .CLK(clknet_4_2_0_refclk_i_regs));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.c_lockw[3]$_DFFE_PN0P_  (.D(_0144_),
    .Q(\c_lockw[3] ),
    .RESET_B(net60),
    .CLK(clknet_4_3_0_refclk_i_regs));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.c_lockw[4]$_DFFE_PN0P_  (.D(_0143_),
    .Q(\c_lockw[4] ),
    .RESET_B(net61),
    .CLK(clknet_4_9_0_refclk_i_regs));
 sky130_fd_sc_hd__dfstp_2 \u_csr.c_lockw[5]$_DFFE_PN1P_  (.D(_0142_),
    .Q(\c_lockw[5] ),
    .SET_B(net61),
    .CLK(clknet_4_12_0_refclk_i_regs));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.c_lockw[6]$_DFFE_PN0P_  (.D(_0141_),
    .Q(\c_lockw[6] ),
    .RESET_B(net61),
    .CLK(clknet_4_9_0_refclk_i_regs));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.c_lockw[7]$_DFFE_PN0P_  (.D(_0238_),
    .Q(\c_lockw[7] ),
    .RESET_B(net60),
    .CLK(clknet_4_2_0_refclk_i_regs));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.c_m_div[0]$_DFFE_PN0P_  (.D(_0177_),
    .Q(net22),
    .RESET_B(net60),
    .CLK(clknet_4_8_0_refclk_i_regs));
 sky130_fd_sc_hd__dfstp_2 \u_csr.c_m_div[1]$_DFFE_PN1P_  (.D(_0176_),
    .Q(net23),
    .SET_B(net60),
    .CLK(clknet_4_8_0_refclk_i_regs));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.c_m_div[2]$_DFFE_PN0P_  (.D(_0175_),
    .Q(net24),
    .RESET_B(net60),
    .CLK(clknet_4_2_0_refclk_i_regs));
 sky130_fd_sc_hd__dfstp_2 \u_csr.c_m_div[3]$_DFFE_PN1P_  (.D(_0174_),
    .Q(net25),
    .SET_B(net59),
    .CLK(clknet_4_10_0_refclk_i_regs));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.c_m_div[4]$_DFFE_PN0P_  (.D(_0173_),
    .Q(net26),
    .RESET_B(net59),
    .CLK(clknet_4_10_0_refclk_i_regs));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.c_m_div[5]$_DFFE_PN0P_  (.D(_0172_),
    .Q(net27),
    .RESET_B(net60),
    .CLK(clknet_4_10_0_refclk_i_regs));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.c_m_div[6]$_DFFE_PN0P_  (.D(_0171_),
    .Q(net28),
    .RESET_B(net60),
    .CLK(clknet_4_8_0_refclk_i_regs));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.c_m_div[7]$_DFFE_PN0P_  (.D(_0243_),
    .Q(net29),
    .RESET_B(net60),
    .CLK(clknet_4_8_0_refclk_i_regs));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.c_manual_seq$_DFFE_PN0P_  (.D(_0250_),
    .Q(c_manual_seq),
    .RESET_B(net59),
    .CLK(clknet_4_11_0_refclk_i_regs));
 sky130_fd_sc_hd__dfstp_2 \u_csr.c_outdiv[0]$_DFFE_PN1P_  (.D(_0170_),
    .Q(\c_outdiv[0] ),
    .SET_B(net60),
    .CLK(clknet_4_2_0_refclk_i_regs));
 sky130_fd_sc_hd__dfstp_2 \u_csr.c_outdiv[1]$_DFFE_PN1P_  (.D(_0169_),
    .Q(\c_outdiv[1] ),
    .SET_B(net60),
    .CLK(clknet_4_2_0_refclk_i_regs));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.c_outdiv[2]$_DFFE_PN0P_  (.D(_0242_),
    .Q(\c_outdiv[2] ),
    .RESET_B(net60),
    .CLK(clknet_4_2_0_refclk_i_regs));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.c_pll_en$_DFFE_PN0P_  (.D(_0258_),
    .Q(c_pll_en),
    .RESET_B(net61),
    .CLK(clknet_4_9_0_refclk_i_regs));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.c_seqdly[0]$_DFFE_PN0P_  (.D(_0133_),
    .Q(\c_seqdly[0] ),
    .RESET_B(core_rst_n),
    .CLK(clknet_4_13_0_refclk_i_regs));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.c_seqdly[1]$_DFFE_PN0P_  (.D(_0132_),
    .Q(\c_seqdly[1] ),
    .RESET_B(core_rst_n),
    .CLK(clknet_4_13_0_refclk_i_regs));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.c_seqdly[2]$_DFFE_PN0P_  (.D(_0131_),
    .Q(\c_seqdly[2] ),
    .RESET_B(core_rst_n),
    .CLK(clknet_4_13_0_refclk_i_regs));
 sky130_fd_sc_hd__dfstp_2 \u_csr.c_seqdly[3]$_DFFE_PN1P_  (.D(_0130_),
    .Q(\c_seqdly[3] ),
    .SET_B(core_rst_n),
    .CLK(clknet_4_13_0_refclk_i_regs));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.c_seqdly[4]$_DFFE_PN0P_  (.D(_0129_),
    .Q(\c_seqdly[4] ),
    .RESET_B(net61),
    .CLK(clknet_4_9_0_refclk_i_regs));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.c_seqdly[5]$_DFFE_PN0P_  (.D(_0128_),
    .Q(\c_seqdly[5] ),
    .RESET_B(net61),
    .CLK(clknet_4_14_0_refclk_i_regs));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.c_seqdly[6]$_DFFE_PN0P_  (.D(_0127_),
    .Q(\c_seqdly[6] ),
    .RESET_B(net61),
    .CLK(clknet_4_12_0_refclk_i_regs));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.c_seqdly[7]$_DFFE_PN0P_  (.D(_0236_),
    .Q(\c_seqdly[7] ),
    .RESET_B(net61),
    .CLK(clknet_4_12_0_refclk_i_regs));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.c_soft_rst$_DFFE_PN0P_  (.D(_0253_),
    .Q(c_soft_rst),
    .RESET_B(net59),
    .CLK(clknet_4_11_0_refclk_i_regs));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.c_vco_band[0]$_DFFE_PN0P_  (.D(_0154_),
    .Q(net34),
    .RESET_B(core_rst_n),
    .CLK(clknet_4_3_0_refclk_i_regs));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.c_vco_band[1]$_DFFE_PN0P_  (.D(_0153_),
    .Q(net35),
    .RESET_B(net60),
    .CLK(clknet_4_8_0_refclk_i_regs));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.c_vco_band[2]$_DFFE_PN0P_  (.D(_0152_),
    .Q(net36),
    .RESET_B(net60),
    .CLK(clknet_4_2_0_refclk_i_regs));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.c_vco_band[3]$_DFFE_PN0P_  (.D(_0151_),
    .Q(net37),
    .RESET_B(net60),
    .CLK(clknet_4_3_0_refclk_i_regs));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.c_vco_band[4]$_DFFE_PN0P_  (.D(_0150_),
    .Q(net38),
    .RESET_B(net59),
    .CLK(clknet_4_10_0_refclk_i_regs));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.c_vco_band[5]$_DFFE_PN0P_  (.D(_0149_),
    .Q(net39),
    .RESET_B(net59),
    .CLK(clknet_4_11_0_refclk_i_regs));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.c_vco_band[6]$_DFFE_PN0P_  (.D(_0148_),
    .Q(net40),
    .RESET_B(net59),
    .CLK(clknet_4_10_0_refclk_i_regs));
 sky130_fd_sc_hd__dfstp_2 \u_csr.c_vco_band[7]$_DFFE_PN1P_  (.D(_0239_),
    .Q(net41),
    .SET_B(net60),
    .CLK(clknet_4_2_0_refclk_i_regs));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.r_cpiset[0]$_DFFE_PN0P_  (.D(_0211_),
    .Q(\u_csr.r_cpiset[0] ),
    .RESET_B(net61),
    .CLK(clknet_3_3__leaf_spi_sclk_i));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.r_cpiset[1]$_DFFE_PN0P_  (.D(_0210_),
    .Q(\u_csr.r_cpiset[1] ),
    .RESET_B(net59),
    .CLK(clknet_3_3__leaf_spi_sclk_i));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.r_cpiset[2]$_DFFE_PN0P_  (.D(_0209_),
    .Q(\u_csr.r_cpiset[2] ),
    .RESET_B(net60),
    .CLK(clknet_3_0__leaf_spi_sclk_i));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.r_cpiset[3]$_DFFE_PN0P_  (.D(_0208_),
    .Q(\u_csr.r_cpiset[3] ),
    .RESET_B(net60),
    .CLK(clknet_3_2__leaf_spi_sclk_i));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.r_cpiset[4]$_DFFE_PN0P_  (.D(_0207_),
    .Q(\u_csr.r_cpiset[4] ),
    .RESET_B(net61),
    .CLK(clknet_3_7__leaf_spi_sclk_i));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.r_cpiset[5]$_DFFE_PN0P_  (.D(_0206_),
    .Q(\u_csr.r_cpiset[5] ),
    .RESET_B(net61),
    .CLK(clknet_3_6__leaf_spi_sclk_i));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.r_cpiset[6]$_DFFE_PN0P_  (.D(_0205_),
    .Q(\u_csr.r_cpiset[6] ),
    .RESET_B(net61),
    .CLK(clknet_3_3__leaf_spi_sclk_i));
 sky130_fd_sc_hd__dfstp_2 \u_csr.r_cpiset[7]$_DFFE_PN1P_  (.D(_0255_),
    .Q(\u_csr.r_cpiset[7] ),
    .SET_B(net60),
    .CLK(clknet_3_0__leaf_spi_sclk_i));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.r_ctrl[0]$_DFFE_PN0P_  (.D(_0126_),
    .Q(\u_csr.r_ctrl[0] ),
    .RESET_B(net59),
    .CLK(clknet_3_7__leaf_spi_sclk_i));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.r_ctrl[1]$_DFFE_PN0P_  (.D(_0125_),
    .Q(\u_csr.r_ctrl[1] ),
    .RESET_B(net59),
    .CLK(clknet_3_2__leaf_spi_sclk_i));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.r_ctrl[2]$_DFFE_PN0P_  (.D(_0124_),
    .Q(\u_csr.r_ctrl[2] ),
    .RESET_B(net60),
    .CLK(clknet_3_0__leaf_spi_sclk_i));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.r_ctrl[3]$_DFFE_PN0P_  (.D(_0123_),
    .Q(\u_csr.r_ctrl[3] ),
    .RESET_B(net59),
    .CLK(clknet_3_7__leaf_spi_sclk_i));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.r_ctrl[4]$_DFFE_PN0P_  (.D(_0122_),
    .Q(\u_csr.r_ctrl[4] ),
    .RESET_B(net59),
    .CLK(clknet_3_7__leaf_spi_sclk_i));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.r_ctrl[5]$_DFFE_PN0P_  (.D(_0121_),
    .Q(\u_csr.r_ctrl[5] ),
    .RESET_B(net59),
    .CLK(clknet_3_7__leaf_spi_sclk_i));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.r_ctrl[6]$_DFFE_PN0P_  (.D(_0120_),
    .Q(\u_csr.r_ctrl[6] ),
    .RESET_B(net59),
    .CLK(clknet_3_1__leaf_spi_sclk_i));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.r_ctrl[7]$_DFFE_PN0P_  (.D(_0234_),
    .Q(\u_csr.r_ctrl[7] ),
    .RESET_B(net60),
    .CLK(clknet_3_1__leaf_spi_sclk_i));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.r_ens[0]$_DFFE_PN0P_  (.D(_0119_),
    .Q(\u_csr.r_ens[0] ),
    .RESET_B(net59),
    .CLK(clknet_3_7__leaf_spi_sclk_i));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.r_ens[1]$_DFFE_PN0P_  (.D(_0118_),
    .Q(\u_csr.r_ens[1] ),
    .RESET_B(net59),
    .CLK(clknet_3_3__leaf_spi_sclk_i));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.r_ens[2]$_DFFE_PN0P_  (.D(_0117_),
    .Q(\u_csr.r_ens[2] ),
    .RESET_B(net60),
    .CLK(clknet_3_1__leaf_spi_sclk_i));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.r_ens[3]$_DFFE_PN0P_  (.D(_0116_),
    .Q(\u_csr.r_ens[3] ),
    .RESET_B(net59),
    .CLK(clknet_3_5__leaf_spi_sclk_i));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.r_ens[4]$_DFFE_PN0P_  (.D(_0115_),
    .Q(\u_csr.r_ens[4] ),
    .RESET_B(net59),
    .CLK(clknet_3_5__leaf_spi_sclk_i));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.r_ens[5]$_DFFE_PN0P_  (.D(_0114_),
    .Q(\u_csr.r_ens[5] ),
    .RESET_B(net59),
    .CLK(clknet_3_5__leaf_spi_sclk_i));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.r_ens[6]$_DFFE_PN0P_  (.D(_0113_),
    .Q(\u_csr.r_ens[6] ),
    .RESET_B(net59),
    .CLK(clknet_3_4__leaf_spi_sclk_i));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.r_ens[7]$_DFFE_PN0P_  (.D(_0233_),
    .Q(\u_csr.r_ens[7] ),
    .RESET_B(net60),
    .CLK(clknet_3_1__leaf_spi_sclk_i));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.r_lockw[0]$_DFFE_PN0P_  (.D(_0184_),
    .Q(\u_csr.r_lockw[0] ),
    .RESET_B(net61),
    .CLK(clknet_3_3__leaf_spi_sclk_i));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.r_lockw[1]$_DFFE_PN0P_  (.D(_0183_),
    .Q(\u_csr.r_lockw[1] ),
    .RESET_B(net59),
    .CLK(clknet_3_2__leaf_spi_sclk_i));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.r_lockw[2]$_DFFE_PN0P_  (.D(_0182_),
    .Q(\u_csr.r_lockw[2] ),
    .RESET_B(net60),
    .CLK(clknet_3_0__leaf_spi_sclk_i));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.r_lockw[3]$_DFFE_PN0P_  (.D(_0181_),
    .Q(\u_csr.r_lockw[3] ),
    .RESET_B(net60),
    .CLK(clknet_3_2__leaf_spi_sclk_i));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.r_lockw[4]$_DFFE_PN0P_  (.D(_0180_),
    .Q(\u_csr.r_lockw[4] ),
    .RESET_B(net59),
    .CLK(clknet_3_7__leaf_spi_sclk_i));
 sky130_fd_sc_hd__dfstp_2 \u_csr.r_lockw[5]$_DFFE_PN1P_  (.D(_0179_),
    .Q(\u_csr.r_lockw[5] ),
    .SET_B(net59),
    .CLK(clknet_3_6__leaf_spi_sclk_i));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.r_lockw[6]$_DFFE_PN0P_  (.D(_0178_),
    .Q(\u_csr.r_lockw[6] ),
    .RESET_B(net61),
    .CLK(clknet_3_3__leaf_spi_sclk_i));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.r_lockw[7]$_DFFE_PN0P_  (.D(_0245_),
    .Q(\u_csr.r_lockw[7] ),
    .RESET_B(net60),
    .CLK(clknet_3_0__leaf_spi_sclk_i));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.r_mdiv[0]$_DFFE_PN0P_  (.D(_0112_),
    .Q(\u_csr.r_mdiv[0] ),
    .RESET_B(net60),
    .CLK(clknet_3_4__leaf_spi_sclk_i));
 sky130_fd_sc_hd__dfstp_2 \u_csr.r_mdiv[1]$_DFFE_PN1P_  (.D(_0111_),
    .Q(\u_csr.r_mdiv[1] ),
    .SET_B(net60),
    .CLK(clknet_3_1__leaf_spi_sclk_i));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.r_mdiv[2]$_DFFE_PN0P_  (.D(_0110_),
    .Q(\u_csr.r_mdiv[2] ),
    .RESET_B(net60),
    .CLK(clknet_3_0__leaf_spi_sclk_i));
 sky130_fd_sc_hd__dfstp_2 \u_csr.r_mdiv[3]$_DFFE_PN1P_  (.D(_0109_),
    .Q(\u_csr.r_mdiv[3] ),
    .SET_B(net59),
    .CLK(clknet_3_5__leaf_spi_sclk_i));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.r_mdiv[4]$_DFFE_PN0P_  (.D(_0108_),
    .Q(\u_csr.r_mdiv[4] ),
    .RESET_B(net59),
    .CLK(clknet_3_5__leaf_spi_sclk_i));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.r_mdiv[5]$_DFFE_PN0P_  (.D(_0107_),
    .Q(\u_csr.r_mdiv[5] ),
    .RESET_B(net60),
    .CLK(clknet_3_5__leaf_spi_sclk_i));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.r_mdiv[6]$_DFFE_PN0P_  (.D(_0106_),
    .Q(\u_csr.r_mdiv[6] ),
    .RESET_B(net60),
    .CLK(clknet_3_1__leaf_spi_sclk_i));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.r_mdiv[7]$_DFFE_PN0P_  (.D(_0232_),
    .Q(\u_csr.r_mdiv[7] ),
    .RESET_B(net60),
    .CLK(clknet_3_1__leaf_spi_sclk_i));
 sky130_fd_sc_hd__dfstp_2 \u_csr.r_odiv[0]$_DFFE_PN1P_  (.D(_0105_),
    .Q(\u_csr.r_odiv[0] ),
    .SET_B(net60),
    .CLK(clknet_3_0__leaf_spi_sclk_i));
 sky130_fd_sc_hd__dfstp_2 \u_csr.r_odiv[1]$_DFFE_PN1P_  (.D(_0104_),
    .Q(\u_csr.r_odiv[1] ),
    .SET_B(net60),
    .CLK(clknet_3_1__leaf_spi_sclk_i));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.r_odiv[2]$_DFFE_PN0P_  (.D(_0103_),
    .Q(\u_csr.r_odiv[2] ),
    .RESET_B(net60),
    .CLK(clknet_3_0__leaf_spi_sclk_i));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.r_odiv[3]$_DFFE_PN0P_  (.D(_0102_),
    .Q(\u_csr.r_odiv[3] ),
    .RESET_B(net59),
    .CLK(clknet_3_5__leaf_spi_sclk_i));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.r_odiv[4]$_DFFE_PN0P_  (.D(_0101_),
    .Q(\u_csr.r_odiv[4] ),
    .RESET_B(net59),
    .CLK(clknet_3_5__leaf_spi_sclk_i));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.r_odiv[5]$_DFFE_PN0P_  (.D(_0100_),
    .Q(\u_csr.r_odiv[5] ),
    .RESET_B(net59),
    .CLK(clknet_3_5__leaf_spi_sclk_i));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.r_odiv[6]$_DFFE_PN0P_  (.D(_0099_),
    .Q(\u_csr.r_odiv[6] ),
    .RESET_B(net59),
    .CLK(clknet_3_1__leaf_spi_sclk_i));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.r_odiv[7]$_DFFE_PN0P_  (.D(_0231_),
    .Q(\u_csr.r_odiv[7] ),
    .RESET_B(net60),
    .CLK(clknet_3_1__leaf_spi_sclk_i));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.r_seqdly[0]$_DFFE_PN0P_  (.D(_0168_),
    .Q(\u_csr.r_seqdly[0] ),
    .RESET_B(net61),
    .CLK(clknet_3_3__leaf_spi_sclk_i));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.r_seqdly[1]$_DFFE_PN0P_  (.D(_0167_),
    .Q(\u_csr.r_seqdly[1] ),
    .RESET_B(net59),
    .CLK(clknet_3_3__leaf_spi_sclk_i));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.r_seqdly[2]$_DFFE_PN0P_  (.D(_0166_),
    .Q(\u_csr.r_seqdly[2] ),
    .RESET_B(net60),
    .CLK(clknet_3_0__leaf_spi_sclk_i));
 sky130_fd_sc_hd__dfstp_2 \u_csr.r_seqdly[3]$_DFFE_PN1P_  (.D(_0165_),
    .Q(\u_csr.r_seqdly[3] ),
    .SET_B(net59),
    .CLK(clknet_3_3__leaf_spi_sclk_i));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.r_seqdly[4]$_DFFE_PN0P_  (.D(_0164_),
    .Q(\u_csr.r_seqdly[4] ),
    .RESET_B(net61),
    .CLK(clknet_3_7__leaf_spi_sclk_i));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.r_seqdly[5]$_DFFE_PN0P_  (.D(_0163_),
    .Q(\u_csr.r_seqdly[5] ),
    .RESET_B(net61),
    .CLK(clknet_3_6__leaf_spi_sclk_i));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.r_seqdly[6]$_DFFE_PN0P_  (.D(_0162_),
    .Q(\u_csr.r_seqdly[6] ),
    .RESET_B(net61),
    .CLK(clknet_3_6__leaf_spi_sclk_i));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.r_seqdly[7]$_DFFE_PN0P_  (.D(_0241_),
    .Q(\u_csr.r_seqdly[7] ),
    .RESET_B(net60),
    .CLK(clknet_3_1__leaf_spi_sclk_i));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.r_test[0]$_DFFE_PN0P_  (.D(_0140_),
    .Q(\u_csr.r_test[0] ),
    .RESET_B(net59),
    .CLK(clknet_3_6__leaf_spi_sclk_i));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.r_test[1]$_DFFE_PN0P_  (.D(_0139_),
    .Q(\u_csr.r_test[1] ),
    .RESET_B(net59),
    .CLK(clknet_3_3__leaf_spi_sclk_i));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.r_test[2]$_DFFE_PN0P_  (.D(_0138_),
    .Q(\u_csr.r_test[2] ),
    .RESET_B(net59),
    .CLK(clknet_3_4__leaf_spi_sclk_i));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.r_test[3]$_DFFE_PN0P_  (.D(_0137_),
    .Q(\u_csr.r_test[3] ),
    .RESET_B(net59),
    .CLK(clknet_3_3__leaf_spi_sclk_i));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.r_test[4]$_DFFE_PN0P_  (.D(_0136_),
    .Q(\u_csr.r_test[4] ),
    .RESET_B(net59),
    .CLK(clknet_3_7__leaf_spi_sclk_i));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.r_test[5]$_DFFE_PN0P_  (.D(_0135_),
    .Q(\u_csr.r_test[5] ),
    .RESET_B(net59),
    .CLK(clknet_3_4__leaf_spi_sclk_i));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.r_test[6]$_DFFE_PN0P_  (.D(_0134_),
    .Q(\u_csr.r_test[6] ),
    .RESET_B(net59),
    .CLK(clknet_3_1__leaf_spi_sclk_i));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.r_test[7]$_DFFE_PN0P_  (.D(_0237_),
    .Q(\u_csr.r_test[7] ),
    .RESET_B(net59),
    .CLK(clknet_3_1__leaf_spi_sclk_i));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.r_vcobnd[0]$_DFFE_PN0P_  (.D(_0204_),
    .Q(\u_csr.r_vcobnd[0] ),
    .RESET_B(net61),
    .CLK(clknet_3_2__leaf_spi_sclk_i));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.r_vcobnd[1]$_DFFE_PN0P_  (.D(_0203_),
    .Q(\u_csr.r_vcobnd[1] ),
    .RESET_B(net60),
    .CLK(clknet_3_1__leaf_spi_sclk_i));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.r_vcobnd[2]$_DFFE_PN0P_  (.D(_0202_),
    .Q(\u_csr.r_vcobnd[2] ),
    .RESET_B(net60),
    .CLK(clknet_3_0__leaf_spi_sclk_i));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.r_vcobnd[3]$_DFFE_PN0P_  (.D(_0201_),
    .Q(\u_csr.r_vcobnd[3] ),
    .RESET_B(net60),
    .CLK(clknet_3_2__leaf_spi_sclk_i));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.r_vcobnd[4]$_DFFE_PN0P_  (.D(_0200_),
    .Q(\u_csr.r_vcobnd[4] ),
    .RESET_B(net59),
    .CLK(clknet_3_7__leaf_spi_sclk_i));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.r_vcobnd[5]$_DFFE_PN0P_  (.D(_0199_),
    .Q(\u_csr.r_vcobnd[5] ),
    .RESET_B(net59),
    .CLK(clknet_3_7__leaf_spi_sclk_i));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.r_vcobnd[6]$_DFFE_PN0P_  (.D(_0198_),
    .Q(\u_csr.r_vcobnd[6] ),
    .RESET_B(net59),
    .CLK(clknet_3_6__leaf_spi_sclk_i));
 sky130_fd_sc_hd__dfstp_2 \u_csr.r_vcobnd[7]$_DFFE_PN1P_  (.D(_0251_),
    .Q(\u_csr.r_vcobnd[7] ),
    .SET_B(net60),
    .CLK(clknet_3_0__leaf_spi_sclk_i));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.rw_r$_DFFE_PP0P_  (.D(_0257_),
    .Q(\u_csr.rw_r ),
    .RESET_B(_0098_),
    .CLK(clknet_3_5__leaf_spi_sclk_i));
 sky130_fd_sc_hd__dfrtn_1 \u_csr.sh_out[0]$_DFF_NP0_  (.D(_0271_),
    .Q(\u_csr.sh_out[0] ),
    .RESET_B(_0098_),
    .CLK_N(clknet_3_6__leaf_spi_sclk_i));
 sky130_fd_sc_hd__dfrtn_1 \u_csr.sh_out[1]$_DFF_NP0_  (.D(_0272_),
    .Q(\u_csr.sh_out[1] ),
    .RESET_B(_0098_),
    .CLK_N(clknet_3_6__leaf_spi_sclk_i));
 sky130_fd_sc_hd__dfrtn_1 \u_csr.sh_out[2]$_DFF_NP0_  (.D(_0273_),
    .Q(\u_csr.sh_out[2] ),
    .RESET_B(_0098_),
    .CLK_N(clknet_3_6__leaf_spi_sclk_i));
 sky130_fd_sc_hd__dfrtn_1 \u_csr.sh_out[3]$_DFF_NP0_  (.D(_0274_),
    .Q(\u_csr.sh_out[3] ),
    .RESET_B(_0098_),
    .CLK_N(clknet_3_6__leaf_spi_sclk_i));
 sky130_fd_sc_hd__dfrtn_1 \u_csr.sh_out[4]$_DFF_NP0_  (.D(_0275_),
    .Q(\u_csr.sh_out[4] ),
    .RESET_B(_0098_),
    .CLK_N(clknet_3_7__leaf_spi_sclk_i));
 sky130_fd_sc_hd__dfrtn_1 \u_csr.sh_out[5]$_DFF_NP0_  (.D(_0276_),
    .Q(\u_csr.sh_out[5] ),
    .RESET_B(_0098_),
    .CLK_N(clknet_3_6__leaf_spi_sclk_i));
 sky130_fd_sc_hd__dfrtn_1 \u_csr.sh_out[6]$_DFF_NP0_  (.D(_0277_),
    .Q(\u_csr.sh_out[6] ),
    .RESET_B(_0098_),
    .CLK_N(clknet_3_6__leaf_spi_sclk_i));
 sky130_fd_sc_hd__dfrtn_1 \u_csr.sh_out[7]$_DFF_NP0_  (.D(_0278_),
    .Q(net33),
    .RESET_B(_0098_),
    .CLK_N(clknet_3_4__leaf_spi_sclk_i));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.shreg[0]$_DFF_PP0_  (.D(net6),
    .Q(\u_csr.shreg[0] ),
    .RESET_B(net56),
    .CLK(clknet_3_4__leaf_spi_sclk_i));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.shreg[1]$_DFF_PP0_  (.D(\u_csr.shreg[0] ),
    .Q(\u_csr.shreg[1] ),
    .RESET_B(net56),
    .CLK(clknet_3_4__leaf_spi_sclk_i));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.shreg[2]$_DFF_PP0_  (.D(\u_csr.shreg[1] ),
    .Q(\u_csr.shreg[2] ),
    .RESET_B(net56),
    .CLK(clknet_3_4__leaf_spi_sclk_i));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.shreg[3]$_DFF_PP0_  (.D(\u_csr.shreg[2] ),
    .Q(\u_csr.shreg[3] ),
    .RESET_B(net56),
    .CLK(clknet_3_5__leaf_spi_sclk_i));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.shreg[4]$_DFF_PP0_  (.D(\u_csr.shreg[3] ),
    .Q(\u_csr.shreg[4] ),
    .RESET_B(net56),
    .CLK(clknet_3_5__leaf_spi_sclk_i));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.shreg[5]$_DFF_PP0_  (.D(\u_csr.shreg[4] ),
    .Q(\u_csr.shreg[5] ),
    .RESET_B(net56),
    .CLK(clknet_3_4__leaf_spi_sclk_i));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.shreg[6]$_DFF_PP0_  (.D(\u_csr.shreg[5] ),
    .Q(\u_csr.shreg[6] ),
    .RESET_B(net56),
    .CLK(clknet_3_4__leaf_spi_sclk_i));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.u_clr.s[0]$_DFF_PN0_  (.D(\u_csr.u_clr.tog ),
    .Q(\u_csr.u_clr.s[0] ),
    .RESET_B(net60),
    .CLK(clknet_4_2_0_refclk_i_regs));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.u_clr.s[1]$_DFF_PN0_  (.D(\u_csr.u_clr.s[0] ),
    .Q(\u_csr.u_clr.s[1] ),
    .RESET_B(net60),
    .CLK(clknet_4_2_0_refclk_i_regs));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.u_clr.s[2]$_DFF_PN0_  (.D(\u_csr.u_clr.s[1] ),
    .Q(\u_csr.u_clr.s[2] ),
    .RESET_B(net60),
    .CLK(clknet_4_2_0_refclk_i_regs));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.u_clr.tog$_DFFE_PN0P_  (.D(_0229_),
    .Q(\u_csr.u_clr.tog ),
    .RESET_B(net60),
    .CLK(clknet_3_0__leaf_spi_sclk_i));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.u_commit.s[0]$_DFF_PN0_  (.D(\u_csr.u_commit.tog ),
    .Q(\u_csr.u_commit.s[0] ),
    .RESET_B(net61),
    .CLK(clknet_4_12_0_refclk_i_regs));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.u_commit.s[1]$_DFF_PN0_  (.D(\u_csr.u_commit.s[0] ),
    .Q(\u_csr.u_commit.s[1] ),
    .RESET_B(net61),
    .CLK(clknet_4_12_0_refclk_i_regs));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.u_commit.s[2]$_DFF_PN0_  (.D(\u_csr.u_commit.s[1] ),
    .Q(\u_csr.u_commit.s[2] ),
    .RESET_B(core_rst_n),
    .CLK(clknet_4_13_0_refclk_i_regs));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.u_commit.tog$_DFFE_PN0P_  (.D(_0230_),
    .Q(\u_csr.u_commit.tog ),
    .RESET_B(net61),
    .CLK(clknet_3_6__leaf_spi_sclk_i));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.u_stsync.meta[0]$_DFF_PN0_  (.D(net21),
    .Q(\u_csr.u_stsync.meta[0] ),
    .RESET_B(net60),
    .CLK(clknet_3_2__leaf_spi_sclk_i));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.u_stsync.meta[1]$_DFF_PN0_  (.D(\u_lock.u_ll.q[0] ),
    .Q(\u_csr.u_stsync.meta[1] ),
    .RESET_B(net61),
    .CLK(clknet_3_3__leaf_spi_sclk_i));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.u_stsync.meta[2]$_DFF_PN0_  (.D(seq_done),
    .Q(\u_csr.u_stsync.meta[2] ),
    .RESET_B(net61),
    .CLK(clknet_3_6__leaf_spi_sclk_i));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.u_stsync.meta[3]$_DFF_PN0_  (.D(c_bypass_sel),
    .Q(\u_csr.u_stsync.meta[3] ),
    .RESET_B(net60),
    .CLK(clknet_3_2__leaf_spi_sclk_i));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.u_stsync.q[0]$_DFF_PN0_  (.D(\u_csr.u_stsync.meta[0] ),
    .Q(\u_csr.st_sync[0] ),
    .RESET_B(net60),
    .CLK(clknet_3_2__leaf_spi_sclk_i));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.u_stsync.q[1]$_DFF_PN0_  (.D(\u_csr.u_stsync.meta[1] ),
    .Q(\u_csr.st_sync[1] ),
    .RESET_B(net61),
    .CLK(clknet_3_6__leaf_spi_sclk_i));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.u_stsync.q[2]$_DFF_PN0_  (.D(\u_csr.u_stsync.meta[2] ),
    .Q(\u_csr.st_sync[2] ),
    .RESET_B(net61),
    .CLK(clknet_3_6__leaf_spi_sclk_i));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.u_stsync.q[3]$_DFF_PN0_  (.D(\u_csr.u_stsync.meta[3] ),
    .Q(\u_csr.st_sync[3] ),
    .RESET_B(net60),
    .CLK(clknet_3_2__leaf_spi_sclk_i));
 sky130_fd_sc_hd__dfrtp_1 \u_lock.bad_cnt[0]$_DFFE_PN0P_  (.D(_0225_),
    .Q(\u_lock.bad_cnt[0] ),
    .RESET_B(net62),
    .CLK(clknet_4_7_0_refclk_i_regs));
 sky130_fd_sc_hd__dfrtp_1 \u_lock.bad_cnt[1]$_DFFE_PN0P_  (.D(_0224_),
    .Q(\u_lock.bad_cnt[1] ),
    .RESET_B(net62),
    .CLK(clknet_4_7_0_refclk_i_regs));
 sky130_fd_sc_hd__dfrtp_1 \u_lock.bad_cnt[2]$_DFFE_PN0P_  (.D(_0223_),
    .Q(\u_lock.bad_cnt[2] ),
    .RESET_B(net62),
    .CLK(clknet_4_7_0_refclk_i_regs));
 sky130_fd_sc_hd__dfrtp_1 \u_lock.bad_cnt[3]$_DFFE_PN0P_  (.D(_0222_),
    .Q(\u_lock.bad_cnt[3] ),
    .RESET_B(net62),
    .CLK(clknet_4_7_0_refclk_i_regs));
 sky130_fd_sc_hd__dfrtp_1 \u_lock.bad_cnt[4]$_DFFE_PN0P_  (.D(_0221_),
    .Q(\u_lock.bad_cnt[4] ),
    .RESET_B(net62),
    .CLK(clknet_4_7_0_refclk_i_regs));
 sky130_fd_sc_hd__dfrtp_1 \u_lock.bad_cnt[5]$_DFFE_PN0P_  (.D(_0220_),
    .Q(\u_lock.bad_cnt[5] ),
    .RESET_B(net62),
    .CLK(clknet_4_7_0_refclk_i_regs));
 sky130_fd_sc_hd__dfrtp_1 \u_lock.bad_cnt[6]$_DFFE_PN0P_  (.D(_0219_),
    .Q(\u_lock.bad_cnt[6] ),
    .RESET_B(net62),
    .CLK(clknet_4_7_0_refclk_i_regs));
 sky130_fd_sc_hd__dfrtp_1 \u_lock.bad_cnt[7]$_DFFE_PN0P_  (.D(_0266_),
    .Q(\u_lock.bad_cnt[7] ),
    .RESET_B(net62),
    .CLK(clknet_4_7_0_refclk_i_regs));
 sky130_fd_sc_hd__dfrtp_1 \u_lock.div_cnt[0]$_DFF_PN0_  (.D(_0279_),
    .Q(\u_lock.div_cnt[0] ),
    .RESET_B(net62),
    .CLK(clknet_4_4_0_refclk_i_regs));
 sky130_fd_sc_hd__dfrtp_1 \u_lock.div_cnt[10]$_DFF_PN0_  (.D(_0280_),
    .Q(\u_lock.div_cnt[10] ),
    .RESET_B(net62),
    .CLK(clknet_4_5_0_refclk_i_regs));
 sky130_fd_sc_hd__dfrtp_1 \u_lock.div_cnt[11]$_DFF_PN0_  (.D(_0281_),
    .Q(\u_lock.div_cnt[11] ),
    .RESET_B(net62),
    .CLK(clknet_4_5_0_refclk_i_regs));
 sky130_fd_sc_hd__dfrtp_1 \u_lock.div_cnt[12]$_DFF_PN0_  (.D(_0282_),
    .Q(\u_lock.div_cnt[12] ),
    .RESET_B(net62),
    .CLK(clknet_4_5_0_refclk_i_regs));
 sky130_fd_sc_hd__dfrtp_1 \u_lock.div_cnt[13]$_DFF_PN0_  (.D(_0283_),
    .Q(\u_lock.div_cnt[13] ),
    .RESET_B(net62),
    .CLK(clknet_4_5_0_refclk_i_regs));
 sky130_fd_sc_hd__dfrtp_1 \u_lock.div_cnt[14]$_DFF_PN0_  (.D(_0284_),
    .Q(\u_lock.div_cnt[14] ),
    .RESET_B(net62),
    .CLK(clknet_4_7_0_refclk_i_regs));
 sky130_fd_sc_hd__dfrtp_1 \u_lock.div_cnt[15]$_DFF_PN0_  (.D(_0285_),
    .Q(\u_lock.div_cnt[15] ),
    .RESET_B(net62),
    .CLK(clknet_4_7_0_refclk_i_regs));
 sky130_fd_sc_hd__dfrtp_1 \u_lock.div_cnt[1]$_DFF_PN0_  (.D(_0286_),
    .Q(\u_lock.div_cnt[1] ),
    .RESET_B(net62),
    .CLK(clknet_4_5_0_refclk_i_regs));
 sky130_fd_sc_hd__dfrtp_1 \u_lock.div_cnt[2]$_DFF_PN0_  (.D(_0287_),
    .Q(\u_lock.div_cnt[2] ),
    .RESET_B(net62),
    .CLK(clknet_4_5_0_refclk_i_regs));
 sky130_fd_sc_hd__dfrtp_1 \u_lock.div_cnt[3]$_DFF_PN0_  (.D(_0288_),
    .Q(\u_lock.div_cnt[3] ),
    .RESET_B(net62),
    .CLK(clknet_4_4_0_refclk_i_regs));
 sky130_fd_sc_hd__dfrtp_1 \u_lock.div_cnt[4]$_DFF_PN0_  (.D(_0289_),
    .Q(\u_lock.div_cnt[4] ),
    .RESET_B(net62),
    .CLK(clknet_4_5_0_refclk_i_regs));
 sky130_fd_sc_hd__dfrtp_1 \u_lock.div_cnt[5]$_DFF_PN0_  (.D(_0290_),
    .Q(\u_lock.div_cnt[5] ),
    .RESET_B(net62),
    .CLK(clknet_4_4_0_refclk_i_regs));
 sky130_fd_sc_hd__dfrtp_1 \u_lock.div_cnt[6]$_DFF_PN0_  (.D(_0291_),
    .Q(\u_lock.div_cnt[6] ),
    .RESET_B(net62),
    .CLK(clknet_4_5_0_refclk_i_regs));
 sky130_fd_sc_hd__dfrtp_1 \u_lock.div_cnt[7]$_DFF_PN0_  (.D(_0292_),
    .Q(\u_lock.div_cnt[7] ),
    .RESET_B(net62),
    .CLK(clknet_4_5_0_refclk_i_regs));
 sky130_fd_sc_hd__dfrtp_1 \u_lock.div_cnt[8]$_DFF_PN0_  (.D(_0293_),
    .Q(\u_lock.div_cnt[8] ),
    .RESET_B(net62),
    .CLK(clknet_4_5_0_refclk_i_regs));
 sky130_fd_sc_hd__dfrtp_1 \u_lock.div_cnt[9]$_DFF_PN0_  (.D(_0294_),
    .Q(\u_lock.div_cnt[9] ),
    .RESET_B(net62),
    .CLK(clknet_4_5_0_refclk_i_regs));
 sky130_fd_sc_hd__dfrtp_1 \u_lock.div_d$_DFF_PN0_  (.D(\u_lock.u_div.q[0] ),
    .Q(\u_lock.div_d ),
    .RESET_B(net62),
    .CLK(clknet_4_4_0_refclk_i_regs));
 sky130_fd_sc_hd__dfrtp_1 \u_lock.good_cnt[0]$_DFFE_PN0P_  (.D(_0197_),
    .Q(\u_lock.good_cnt[0] ),
    .RESET_B(net62),
    .CLK(clknet_4_6_0_refclk_i_regs));
 sky130_fd_sc_hd__dfrtp_1 \u_lock.good_cnt[1]$_DFFE_PN0P_  (.D(_0196_),
    .Q(\u_lock.good_cnt[1] ),
    .RESET_B(net62),
    .CLK(clknet_4_6_0_refclk_i_regs));
 sky130_fd_sc_hd__dfrtp_1 \u_lock.good_cnt[2]$_DFFE_PN0P_  (.D(_0195_),
    .Q(\u_lock.good_cnt[2] ),
    .RESET_B(net62),
    .CLK(clknet_4_6_0_refclk_i_regs));
 sky130_fd_sc_hd__dfrtp_1 \u_lock.good_cnt[3]$_DFFE_PN0P_  (.D(_0194_),
    .Q(\u_lock.good_cnt[3] ),
    .RESET_B(net62),
    .CLK(clknet_4_6_0_refclk_i_regs));
 sky130_fd_sc_hd__dfrtp_1 \u_lock.good_cnt[4]$_DFFE_PN0P_  (.D(_0193_),
    .Q(\u_lock.good_cnt[4] ),
    .RESET_B(net62),
    .CLK(clknet_4_6_0_refclk_i_regs));
 sky130_fd_sc_hd__dfrtp_1 \u_lock.good_cnt[5]$_DFFE_PN0P_  (.D(_0192_),
    .Q(\u_lock.good_cnt[5] ),
    .RESET_B(net62),
    .CLK(clknet_4_7_0_refclk_i_regs));
 sky130_fd_sc_hd__dfrtp_1 \u_lock.good_cnt[6]$_DFFE_PN0P_  (.D(_0191_),
    .Q(\u_lock.good_cnt[6] ),
    .RESET_B(net62),
    .CLK(clknet_4_7_0_refclk_i_regs));
 sky130_fd_sc_hd__dfrtp_1 \u_lock.good_cnt[7]$_DFFE_PN0P_  (.D(_0248_),
    .Q(\u_lock.good_cnt[7] ),
    .RESET_B(net62),
    .CLK(clknet_4_7_0_refclk_i_regs));
 sky130_fd_sc_hd__dfrtp_1 \u_lock.lock_lost_r$_DFFE_PN0P_  (.D(_0226_),
    .Q(\u_lock.u_ll.d[0] ),
    .RESET_B(core_rst_n),
    .CLK(clknet_4_6_0_refclk_i_regs));
 sky130_fd_sc_hd__dfrtp_1 \u_lock.locked_r$_DFFE_PN0P_  (.D(_0235_),
    .Q(\u_lock.u_lk.d[0] ),
    .RESET_B(net62),
    .CLK(clknet_4_6_0_refclk_i_regs));
 sky130_fd_sc_hd__dfrtp_1 \u_lock.u_clr.s[0]$_DFF_PN0_  (.D(\u_lock.u_clr.tog ),
    .Q(\u_lock.u_clr.s[0] ),
    .RESET_B(net60),
    .CLK(clknet_4_0_0_refclk_i_regs));
 sky130_fd_sc_hd__dfrtp_1 \u_lock.u_clr.s[1]$_DFF_PN0_  (.D(\u_lock.u_clr.s[0] ),
    .Q(\u_lock.u_clr.s[1] ),
    .RESET_B(net60),
    .CLK(clknet_4_1_0_refclk_i_regs));
 sky130_fd_sc_hd__dfrtp_1 \u_lock.u_clr.s[2]$_DFF_PN0_  (.D(\u_lock.u_clr.s[1] ),
    .Q(\u_lock.u_clr.s[2] ),
    .RESET_B(core_rst_n),
    .CLK(clknet_4_1_0_refclk_i_regs));
 sky130_fd_sc_hd__dfrtp_1 \u_lock.u_clr.tog$_DFFE_PN0P_  (.D(_0227_),
    .Q(\u_lock.u_clr.tog ),
    .RESET_B(net60),
    .CLK(clknet_4_2_0_refclk_i_regs));
 sky130_fd_sc_hd__dfrtp_1 \u_lock.u_div.meta$_DFF_PN0_  (.D(clknet_1_0__leaf_pll_clk_i),
    .Q(\u_lock.u_div.meta[0] ),
    .RESET_B(core_rst_n),
    .CLK(clknet_4_0_0_refclk_i_regs));
 sky130_fd_sc_hd__dfrtp_1 \u_lock.u_div.q$_DFF_PN0_  (.D(\u_lock.u_div.meta[0] ),
    .Q(\u_lock.u_div.q[0] ),
    .RESET_B(core_rst_n),
    .CLK(clknet_4_0_0_refclk_i_regs));
 sky130_fd_sc_hd__dfrtp_1 \u_lock.u_en.meta$_DFF_PN0_  (.D(\u_lock.u_en.d[0] ),
    .Q(\u_lock.u_en.meta[0] ),
    .RESET_B(core_rst_n),
    .CLK(clknet_4_13_0_refclk_i_regs));
 sky130_fd_sc_hd__dfrtp_1 \u_lock.u_en.q$_DFF_PN0_  (.D(\u_lock.u_en.meta[0] ),
    .Q(\u_lock.u_en.q[0] ),
    .RESET_B(net62),
    .CLK(clknet_4_13_0_refclk_i_regs));
 sky130_fd_sc_hd__dfrtp_1 \u_lock.u_k.meta[0]$_DFF_PN0_  (.D(\c_lockw[0] ),
    .Q(\u_lock.u_k.meta[0] ),
    .RESET_B(core_rst_n),
    .CLK(clknet_4_3_0_refclk_i_regs));
 sky130_fd_sc_hd__dfrtp_1 \u_lock.u_k.meta[1]$_DFF_PN0_  (.D(\c_lockw[1] ),
    .Q(\u_lock.u_k.meta[1] ),
    .RESET_B(net61),
    .CLK(clknet_4_3_0_refclk_i_regs));
 sky130_fd_sc_hd__dfrtp_1 \u_lock.u_k.meta[2]$_DFF_PN0_  (.D(\c_lockw[2] ),
    .Q(\u_lock.u_k.meta[2] ),
    .RESET_B(net60),
    .CLK(clknet_4_2_0_refclk_i_regs));
 sky130_fd_sc_hd__dfrtp_1 \u_lock.u_k.meta[3]$_DFF_PN0_  (.D(\c_lockw[3] ),
    .Q(\u_lock.u_k.meta[3] ),
    .RESET_B(net61),
    .CLK(clknet_4_3_0_refclk_i_regs));
 sky130_fd_sc_hd__dfrtp_1 \u_lock.u_k.meta[4]$_DFF_PN0_  (.D(\c_lockw[4] ),
    .Q(\u_lock.u_k.meta[4] ),
    .RESET_B(net61),
    .CLK(clknet_4_9_0_refclk_i_regs));
 sky130_fd_sc_hd__dfrtp_1 \u_lock.u_k.meta[5]$_DFF_PN0_  (.D(\c_lockw[5] ),
    .Q(\u_lock.u_k.meta[5] ),
    .RESET_B(net61),
    .CLK(clknet_4_12_0_refclk_i_regs));
 sky130_fd_sc_hd__dfrtp_1 \u_lock.u_k.meta[6]$_DFF_PN0_  (.D(\c_lockw[6] ),
    .Q(\u_lock.u_k.meta[6] ),
    .RESET_B(net61),
    .CLK(clknet_4_12_0_refclk_i_regs));
 sky130_fd_sc_hd__dfrtp_1 \u_lock.u_k.meta[7]$_DFF_PN0_  (.D(\c_lockw[7] ),
    .Q(\u_lock.u_k.meta[7] ),
    .RESET_B(core_rst_n),
    .CLK(clknet_4_3_0_refclk_i_regs));
 sky130_fd_sc_hd__dfrtp_1 \u_lock.u_k.q[0]$_DFF_PN0_  (.D(\u_lock.u_k.meta[0] ),
    .Q(\u_lock.k_s[0] ),
    .RESET_B(core_rst_n),
    .CLK(clknet_4_6_0_refclk_i_regs));
 sky130_fd_sc_hd__dfrtp_1 \u_lock.u_k.q[1]$_DFF_PN0_  (.D(\u_lock.u_k.meta[1] ),
    .Q(\u_lock.k_s[1] ),
    .RESET_B(core_rst_n),
    .CLK(clknet_4_3_0_refclk_i_regs));
 sky130_fd_sc_hd__dfrtp_1 \u_lock.u_k.q[2]$_DFF_PN0_  (.D(\u_lock.u_k.meta[2] ),
    .Q(\u_lock.k_s[2] ),
    .RESET_B(net61),
    .CLK(clknet_4_3_0_refclk_i_regs));
 sky130_fd_sc_hd__dfrtp_1 \u_lock.u_k.q[3]$_DFF_PN0_  (.D(\u_lock.u_k.meta[3] ),
    .Q(\u_lock.k_s[3] ),
    .RESET_B(core_rst_n),
    .CLK(clknet_4_3_0_refclk_i_regs));
 sky130_fd_sc_hd__dfrtp_1 \u_lock.u_k.q[4]$_DFF_PN0_  (.D(\u_lock.u_k.meta[4] ),
    .Q(\u_lock.k_s[4] ),
    .RESET_B(core_rst_n),
    .CLK(clknet_4_12_0_refclk_i_regs));
 sky130_fd_sc_hd__dfrtp_1 \u_lock.u_k.q[5]$_DFF_PN0_  (.D(\u_lock.u_k.meta[5] ),
    .Q(\u_lock.k_s[5] ),
    .RESET_B(core_rst_n),
    .CLK(clknet_4_12_0_refclk_i_regs));
 sky130_fd_sc_hd__dfrtp_1 \u_lock.u_k.q[6]$_DFF_PN0_  (.D(\u_lock.u_k.meta[6] ),
    .Q(\u_lock.k_s[6] ),
    .RESET_B(core_rst_n),
    .CLK(clknet_4_12_0_refclk_i_regs));
 sky130_fd_sc_hd__dfrtp_1 \u_lock.u_k.q[7]$_DFF_PN0_  (.D(\u_lock.u_k.meta[7] ),
    .Q(\u_lock.k_s[7] ),
    .RESET_B(core_rst_n),
    .CLK(clknet_4_6_0_refclk_i_regs));
 sky130_fd_sc_hd__dfrtp_1 \u_lock.u_lk.meta$_DFF_PN0_  (.D(\u_lock.u_lk.d[0] ),
    .Q(\u_lock.u_lk.meta[0] ),
    .RESET_B(core_rst_n),
    .CLK(clknet_4_1_0_refclk_i_regs));
 sky130_fd_sc_hd__dfrtp_1 \u_lock.u_lk.q$_DFF_PN0_  (.D(\u_lock.u_lk.meta[0] ),
    .Q(net21),
    .RESET_B(core_rst_n),
    .CLK(clknet_4_1_0_refclk_i_regs));
 sky130_fd_sc_hd__dfrtp_1 \u_lock.u_ll.meta$_DFF_PN0_  (.D(\u_lock.u_ll.d[0] ),
    .Q(\u_lock.u_ll.meta[0] ),
    .RESET_B(core_rst_n),
    .CLK(clknet_4_12_0_refclk_i_regs));
 sky130_fd_sc_hd__dfrtp_1 \u_lock.u_ll.q$_DFF_PN0_  (.D(\u_lock.u_ll.meta[0] ),
    .Q(\u_lock.u_ll.q[0] ),
    .RESET_B(core_rst_n),
    .CLK(clknet_4_12_0_refclk_i_regs));
 sky130_fd_sc_hd__dfrtp_1 \u_lock.win_cnt[0]$_DFF_PN0_  (.D(_0295_),
    .Q(\u_lock.win_cnt[0] ),
    .RESET_B(core_rst_n),
    .CLK(clknet_4_1_0_refclk_i_regs));
 sky130_fd_sc_hd__dfrtp_1 \u_lock.win_cnt[10]$_DFF_PN0_  (.D(_0296_),
    .Q(\u_lock.win_cnt[10] ),
    .RESET_B(net62),
    .CLK(clknet_4_4_0_refclk_i_regs));
 sky130_fd_sc_hd__dfrtp_1 \u_lock.win_cnt[11]$_DFF_PN0_  (.D(_0297_),
    .Q(\u_lock.win_cnt[11] ),
    .RESET_B(net62),
    .CLK(clknet_4_0_0_refclk_i_regs));
 sky130_fd_sc_hd__dfrtp_1 \u_lock.win_cnt[12]$_DFF_PN0_  (.D(_0298_),
    .Q(\u_lock.win_cnt[12] ),
    .RESET_B(net62),
    .CLK(clknet_4_1_0_refclk_i_regs));
 sky130_fd_sc_hd__dfrtp_1 \u_lock.win_cnt[13]$_DFF_PN0_  (.D(_0299_),
    .Q(\u_lock.win_cnt[13] ),
    .RESET_B(net62),
    .CLK(clknet_4_1_0_refclk_i_regs));
 sky130_fd_sc_hd__dfrtp_1 \u_lock.win_cnt[14]$_DFF_PN0_  (.D(_0300_),
    .Q(\u_lock.win_cnt[14] ),
    .RESET_B(net62),
    .CLK(clknet_4_4_0_refclk_i_regs));
 sky130_fd_sc_hd__dfrtp_1 \u_lock.win_cnt[15]$_DFF_PN0_  (.D(_0301_),
    .Q(\u_lock.win_cnt[15] ),
    .RESET_B(net62),
    .CLK(clknet_4_4_0_refclk_i_regs));
 sky130_fd_sc_hd__dfrtp_1 \u_lock.win_cnt[1]$_DFF_PN0_  (.D(_0302_),
    .Q(\u_lock.win_cnt[1] ),
    .RESET_B(net62),
    .CLK(clknet_4_4_0_refclk_i_regs));
 sky130_fd_sc_hd__dfrtp_1 \u_lock.win_cnt[2]$_DFF_PN0_  (.D(_0303_),
    .Q(\u_lock.win_cnt[2] ),
    .RESET_B(core_rst_n),
    .CLK(clknet_4_0_0_refclk_i_regs));
 sky130_fd_sc_hd__dfrtp_1 \u_lock.win_cnt[3]$_DFF_PN0_  (.D(_0304_),
    .Q(\u_lock.win_cnt[3] ),
    .RESET_B(core_rst_n),
    .CLK(clknet_4_0_0_refclk_i_regs));
 sky130_fd_sc_hd__dfrtp_1 \u_lock.win_cnt[4]$_DFF_PN0_  (.D(_0305_),
    .Q(\u_lock.win_cnt[4] ),
    .RESET_B(core_rst_n),
    .CLK(clknet_4_0_0_refclk_i_regs));
 sky130_fd_sc_hd__dfrtp_1 \u_lock.win_cnt[5]$_DFF_PN0_  (.D(_0306_),
    .Q(\u_lock.win_cnt[5] ),
    .RESET_B(core_rst_n),
    .CLK(clknet_4_1_0_refclk_i_regs));
 sky130_fd_sc_hd__dfrtp_1 \u_lock.win_cnt[6]$_DFF_PN0_  (.D(_0307_),
    .Q(\u_lock.win_cnt[6] ),
    .RESET_B(net62),
    .CLK(clknet_4_4_0_refclk_i_regs));
 sky130_fd_sc_hd__dfrtp_1 \u_lock.win_cnt[7]$_DFF_PN0_  (.D(_0308_),
    .Q(\u_lock.win_cnt[7] ),
    .RESET_B(net62),
    .CLK(clknet_4_1_0_refclk_i_regs));
 sky130_fd_sc_hd__dfrtp_1 \u_lock.win_cnt[8]$_DFF_PN0_  (.D(_0309_),
    .Q(\u_lock.win_cnt[8] ),
    .RESET_B(net62),
    .CLK(clknet_4_4_0_refclk_i_regs));
 sky130_fd_sc_hd__dfrtp_1 \u_lock.win_cnt[9]$_DFF_PN0_  (.D(_0310_),
    .Q(\u_lock.win_cnt[9] ),
    .RESET_B(net62),
    .CLK(clknet_4_4_0_refclk_i_regs));
 sky130_fd_sc_hd__dlxtn_1 \u_refgate.en_lat$_DLATCH_N_  (.D(_0311_),
    .Q(\u_refgate.en_lat ),
    .GATE_N(clknet_4_14_0_refclk_i_regs));
 sky130_fd_sc_hd__dfstp_2 \u_seq.div_rst$_DFFE_PN1P_  (.D(_0259_),
    .Q(net17),
    .SET_B(net61),
    .CLK(clknet_4_14_0_refclk_i_regs));
 sky130_fd_sc_hd__dfrtp_1 \u_seq.dwell[0]$_DFFE_PN0P_  (.D(_0218_),
    .Q(\u_seq.dwell[0] ),
    .RESET_B(net61),
    .CLK(clknet_4_15_0_refclk_i_regs));
 sky130_fd_sc_hd__dfrtp_1 \u_seq.dwell[1]$_DFFE_PN0P_  (.D(_0217_),
    .Q(\u_seq.dwell[1] ),
    .RESET_B(net61),
    .CLK(clknet_4_15_0_refclk_i_regs));
 sky130_fd_sc_hd__dfrtp_1 \u_seq.dwell[2]$_DFFE_PN0P_  (.D(_0216_),
    .Q(\u_seq.dwell[2] ),
    .RESET_B(net61),
    .CLK(clknet_4_15_0_refclk_i_regs));
 sky130_fd_sc_hd__dfrtp_1 \u_seq.dwell[3]$_DFFE_PN0P_  (.D(_0215_),
    .Q(\u_seq.dwell[3] ),
    .RESET_B(net61),
    .CLK(clknet_4_15_0_refclk_i_regs));
 sky130_fd_sc_hd__dfrtp_1 \u_seq.dwell[4]$_DFFE_PN0P_  (.D(_0214_),
    .Q(\u_seq.dwell[4] ),
    .RESET_B(net61),
    .CLK(clknet_4_15_0_refclk_i_regs));
 sky130_fd_sc_hd__dfrtp_1 \u_seq.dwell[5]$_DFFE_PN0P_  (.D(_0213_),
    .Q(\u_seq.dwell[5] ),
    .RESET_B(net61),
    .CLK(clknet_4_15_0_refclk_i_regs));
 sky130_fd_sc_hd__dfrtp_1 \u_seq.dwell[6]$_DFFE_PN0P_  (.D(_0212_),
    .Q(\u_seq.dwell[6] ),
    .RESET_B(net61),
    .CLK(clknet_4_15_0_refclk_i_regs));
 sky130_fd_sc_hd__dfrtp_1 \u_seq.dwell[7]$_DFFE_PN0P_  (.D(_0261_),
    .Q(\u_seq.dwell[7] ),
    .RESET_B(net61),
    .CLK(clknet_4_15_0_refclk_i_regs));
 sky130_fd_sc_hd__dfrtp_1 \u_seq.en_cp$_DFFE_PN0P_  (.D(_0260_),
    .Q(net18),
    .RESET_B(net59),
    .CLK(clknet_4_11_0_refclk_i_regs));
 sky130_fd_sc_hd__dfrtp_1 \u_seq.en_vco$_DFFE_PN0P_  (.D(_0262_),
    .Q(net19),
    .RESET_B(net59),
    .CLK(clknet_4_11_0_refclk_i_regs));
 sky130_fd_sc_hd__dfrtp_1 \u_seq.en_vreg$_DFFE_PN0P_  (.D(_0263_),
    .Q(net20),
    .RESET_B(net61),
    .CLK(clknet_4_14_0_refclk_i_regs));
 sky130_fd_sc_hd__dfrtp_1 \u_seq.pll_en$_DFFE_PN0P_  (.D(_0264_),
    .Q(net30),
    .RESET_B(net61),
    .CLK(clknet_4_14_0_refclk_i_regs));
 sky130_fd_sc_hd__dfrtp_1 \u_seq.seq_done$_DFFE_PN0P_  (.D(_0265_),
    .Q(seq_done),
    .RESET_B(net61),
    .CLK(clknet_4_11_0_refclk_i_regs));
 sky130_fd_sc_hd__dfstp_2 \u_seq.state[0]$_DFF_PN1_  (.D(_0090_),
    .Q(\u_seq.state[0] ),
    .SET_B(net61),
    .CLK(clknet_4_14_0_refclk_i_regs));
 sky130_fd_sc_hd__dfrtp_1 \u_seq.state[1]$_DFF_PN0_  (.D(_0091_),
    .Q(\u_seq.state[1] ),
    .RESET_B(net61),
    .CLK(clknet_4_15_0_refclk_i_regs));
 sky130_fd_sc_hd__dfrtp_1 \u_seq.state[2]$_DFF_PN0_  (.D(_0092_),
    .Q(\u_seq.state[2] ),
    .RESET_B(net61),
    .CLK(clknet_4_15_0_refclk_i_regs));
 sky130_fd_sc_hd__dfrtp_1 \u_seq.state[3]$_DFF_PN0_  (.D(_0093_),
    .Q(\u_seq.state[3] ),
    .RESET_B(net61),
    .CLK(clknet_4_14_0_refclk_i_regs));
 sky130_fd_sc_hd__dfrtp_1 \u_seq.state[4]$_DFF_PN0_  (.D(_0094_),
    .Q(\u_seq.state[4] ),
    .RESET_B(net61),
    .CLK(clknet_4_11_0_refclk_i_regs));
 sky130_fd_sc_hd__dfrtp_1 \u_seq.state[5]$_DFF_PN0_  (.D(_0095_),
    .Q(\u_seq.state[5] ),
    .RESET_B(net61),
    .CLK(clknet_4_14_0_refclk_i_regs));
endmodule
