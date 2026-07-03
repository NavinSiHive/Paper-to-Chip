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

 wire refclk_i_regs;
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
 wire _0282_;
 wire _0297_;
 wire _0298_;
 wire _0299_;
 wire _0300_;
 wire _0302_;
 wire _0303_;
 wire _0304_;
 wire _0305_;
 wire _0306_;
 wire _0307_;
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
 wire _0326_;
 wire _0327_;
 wire _0329_;
 wire _0330_;
 wire _0331_;
 wire _0332_;
 wire _0333_;
 wire _0334_;
 wire _0335_;
 wire _0336_;
 wire _0338_;
 wire _0339_;
 wire _0340_;
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
 wire _0363_;
 wire _0364_;
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
 wire _0380_;
 wire _0381_;
 wire _0382_;
 wire _0383_;
 wire _0384_;
 wire _0385_;
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
 wire _0435_;
 wire _0436_;
 wire _0438_;
 wire _0439_;
 wire _0440_;
 wire _0441_;
 wire _0442_;
 wire _0444_;
 wire _0446_;
 wire _0447_;
 wire _0448_;
 wire _0449_;
 wire _0450_;
 wire _0451_;
 wire _0452_;
 wire _0453_;
 wire _0454_;
 wire _0455_;
 wire _0456_;
 wire _0457_;
 wire _0458_;
 wire _0459_;
 wire _0460_;
 wire _0461_;
 wire _0462_;
 wire _0463_;
 wire _0464_;
 wire _0465_;
 wire _0466_;
 wire _0467_;
 wire _0468_;
 wire _0469_;
 wire _0470_;
 wire _0471_;
 wire _0472_;
 wire _0473_;
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
 wire _0497_;
 wire _0498_;
 wire _0499_;
 wire _0500_;
 wire _0502_;
 wire _0503_;
 wire _0504_;
 wire _0505_;
 wire _0506_;
 wire _0507_;
 wire _0509_;
 wire _0510_;
 wire _0511_;
 wire _0512_;
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
 wire _0547_;
 wire _0548_;
 wire _0549_;
 wire _0550_;
 wire _0551_;
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
 wire _0588_;
 wire _0589_;
 wire _0590_;
 wire _0591_;
 wire _0592_;
 wire _0593_;
 wire _0594_;
 wire _0595_;
 wire _0596_;
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
 wire net10;
 wire core_rst_n;
 wire net11;
 wire net12;
 wire net13;
 wire net14;
 wire net15;
 wire net16;
 wire net17;
 wire net18;
 wire \cs_core[0] ;
 wire \cs_pll[0] ;
 wire \cs_pll[1] ;
 wire net19;
 wire net2;
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
 wire net30;
 wire net31;
 wire pll_d2;
 wire net32;
 wire net33;
 wire net3;
 wire net4;
 wire net5;
 wire net34;
 wire seq_done;
 wire net6;
 wire net7;
 wire net35;
 wire net8;
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
 wire \u_lock.dn_run[0] ;
 wire \u_lock.dn_run[1] ;
 wire \u_lock.dn_run[2] ;
 wire \u_lock.dn_run[3] ;
 wire \u_lock.good_cnt[0] ;
 wire \u_lock.good_cnt[1] ;
 wire \u_lock.good_cnt[2] ;
 wire \u_lock.good_cnt[3] ;
 wire \u_lock.good_cnt[4] ;
 wire \u_lock.good_cnt[5] ;
 wire \u_lock.lockw_s[0] ;
 wire \u_lock.lockw_s[1] ;
 wire \u_lock.lockw_s[2] ;
 wire \u_lock.lockw_s[3] ;
 wire \u_lock.lockw_s[4] ;
 wire \u_lock.lockw_s[5] ;
 wire \u_lock.period_bad ;
 wire \u_lock.ref_d ;
 wire \u_lock.u_clr.s[0] ;
 wire \u_lock.u_clr.s[1] ;
 wire \u_lock.u_clr.s[2] ;
 wire \u_lock.u_clr.tog ;
 wire \u_lock.u_dn.meta[0] ;
 wire \u_lock.u_dn.q[0] ;
 wire \u_lock.u_en.d[0] ;
 wire \u_lock.u_en.meta[0] ;
 wire \u_lock.u_en.q[0] ;
 wire \u_lock.u_lk.d[0] ;
 wire \u_lock.u_lk.meta[0] ;
 wire \u_lock.u_ll.d[0] ;
 wire \u_lock.u_ll.meta[0] ;
 wire \u_lock.u_ll.q[0] ;
 wire \u_lock.u_lw.meta[0] ;
 wire \u_lock.u_lw.meta[1] ;
 wire \u_lock.u_lw.meta[2] ;
 wire \u_lock.u_lw.meta[3] ;
 wire \u_lock.u_lw.meta[4] ;
 wire \u_lock.u_lw.meta[5] ;
 wire \u_lock.u_ref.meta[0] ;
 wire \u_lock.u_ref.q[0] ;
 wire \u_lock.u_up.meta[0] ;
 wire \u_lock.u_up.q[0] ;
 wire \u_lock.up_run[0] ;
 wire \u_lock.up_run[1] ;
 wire \u_lock.up_run[2] ;
 wire \u_lock.up_run[3] ;
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
 wire net9;
 wire net36;
 wire net37;
 wire net38;
 wire net39;
 wire net40;
 wire net41;
 wire net42;
 wire net43;
 wire net;
 wire net1;
 wire net60;
 wire pll_d2_regs;
 wire net57;
 wire net68;
 wire net59;
 wire net62;
 wire net63;
 wire net65;
 wire net67;
 wire \u_clkout.sel_clk_regs ;
 wire net58;
 wire net61;
 wire net64;
 wire net66;
 wire clknet_0_pll_clk_i;
 wire clknet_1_0__leaf_pll_clk_i;
 wire clknet_1_1__leaf_pll_clk_i;
 wire clknet_0_refclk_i;
 wire clknet_1_0__leaf_refclk_i;
 wire clknet_1_1__leaf_refclk_i;
 wire clknet_0_refclk_i_regs;
 wire clknet_3_0__leaf_refclk_i_regs;
 wire clknet_3_1__leaf_refclk_i_regs;
 wire clknet_3_2__leaf_refclk_i_regs;
 wire clknet_3_3__leaf_refclk_i_regs;
 wire clknet_3_4__leaf_refclk_i_regs;
 wire clknet_3_5__leaf_refclk_i_regs;
 wire clknet_3_6__leaf_refclk_i_regs;
 wire clknet_3_7__leaf_refclk_i_regs;
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
 wire clknet_0_pll_d2_regs;
 wire clknet_2_0__leaf_pll_d2_regs;
 wire clknet_2_1__leaf_pll_d2_regs;
 wire clknet_2_2__leaf_pll_d2_regs;
 wire clknet_2_3__leaf_pll_d2_regs;
 wire delaynet_0_pll_d2;
 wire delaynet_1_pll_d2;
 wire delaynet_2_pll_d2;
 wire delaynet_3_pll_d2;
 wire delaynet_0_refclk;
 wire delaynet_1_refclk;
 wire delaynet_2_refclk;
 wire delaynet_3_refclk;
 wire delaynet_4_refclk;
 wire delaynet_5_refclk;
 wire delaynet_6_refclk;
 wire delaynet_7_refclk;
 wire delaynet_8_refclk;
 wire net69;
 wire net70;
 wire net71;
 wire net72;

 sky130_fd_sc_hd__mux2_2 _0598_ (.A0(\u_csr.shreg[5] ),
    .A1(\u_csr.r_lockw[6] ),
    .S(_0444_),
    .X(_0132_));
 sky130_fd_sc_hd__mux2_2 _0599_ (.A0(\u_csr.shreg[4] ),
    .A1(\u_csr.r_lockw[5] ),
    .S(_0444_),
    .X(_0133_));
 sky130_fd_sc_hd__mux2_2 _0600_ (.A0(\u_csr.shreg[3] ),
    .A1(\u_csr.r_lockw[4] ),
    .S(_0444_),
    .X(_0134_));
 sky130_fd_sc_hd__mux2_2 _0601_ (.A0(\u_csr.shreg[2] ),
    .A1(\u_csr.r_lockw[3] ),
    .S(_0444_),
    .X(_0135_));
 sky130_fd_sc_hd__mux2_2 _0602_ (.A0(\u_csr.shreg[1] ),
    .A1(\u_csr.r_lockw[2] ),
    .S(_0444_),
    .X(_0136_));
 sky130_fd_sc_hd__mux2_2 _0603_ (.A0(\u_csr.shreg[0] ),
    .A1(\u_csr.r_lockw[1] ),
    .S(_0444_),
    .X(_0137_));
 sky130_fd_sc_hd__mux2_2 _0604_ (.A0(net7),
    .A1(\u_csr.r_lockw[0] ),
    .S(_0444_),
    .X(_0138_));
 sky130_fd_sc_hd__mux2_2 _0605_ (.A0(net17),
    .A1(\u_csr.r_cpiset[6] ),
    .S(_0432_),
    .X(_0139_));
 sky130_fd_sc_hd__mux2_2 _0606_ (.A0(net16),
    .A1(\u_csr.r_cpiset[5] ),
    .S(_0432_),
    .X(_0140_));
 sky130_fd_sc_hd__mux2_2 _0608_ (.A0(net15),
    .A1(\u_csr.r_cpiset[4] ),
    .S(net58),
    .X(_0141_));
 sky130_fd_sc_hd__mux2_2 _0609_ (.A0(net14),
    .A1(\u_csr.r_cpiset[3] ),
    .S(net58),
    .X(_0142_));
 sky130_fd_sc_hd__mux2_2 _0610_ (.A0(net13),
    .A1(\u_csr.r_cpiset[2] ),
    .S(net58),
    .X(_0143_));
 sky130_fd_sc_hd__mux2_2 _0611_ (.A0(net12),
    .A1(\u_csr.r_cpiset[1] ),
    .S(net58),
    .X(_0144_));
 sky130_fd_sc_hd__mux2_2 _0612_ (.A0(net11),
    .A1(\u_csr.r_cpiset[0] ),
    .S(net58),
    .X(_0145_));
 sky130_fd_sc_hd__nand2b_1 _0613_ (.A_N(\u_lock.ref_d ),
    .B(\u_lock.u_ref.q[0] ),
    .Y(_0446_));
 sky130_fd_sc_hd__nand2_1 _0614_ (.A(\u_lock.good_cnt[4] ),
    .B(_0446_),
    .Y(_0447_));
 sky130_fd_sc_hd__o21ai_0 _0615_ (.A1(_0051_),
    .A2(_0050_),
    .B1(_0056_),
    .Y(_0448_));
 sky130_fd_sc_hd__nand2b_1 _0616_ (.A_N(_0055_),
    .B(_0448_),
    .Y(_0449_));
 sky130_fd_sc_hd__nor3b_1 _0617_ (.A(_0021_),
    .B(_0016_),
    .C_N(_0015_),
    .Y(_0450_));
 sky130_fd_sc_hd__o211ai_1 _0618_ (.A1(_0022_),
    .A2(_0021_),
    .B1(_0013_),
    .C1(_0010_),
    .Y(_0451_));
 sky130_fd_sc_hd__a2111oi_0 _0619_ (.A1(_0013_),
    .A2(_0009_),
    .B1(_0012_),
    .C1(_0055_),
    .D1(_0050_),
    .Y(_0452_));
 sky130_fd_sc_hd__o21ai_0 _0620_ (.A1(_0450_),
    .A2(_0451_),
    .B1(_0452_),
    .Y(_0453_));
 sky130_fd_sc_hd__nand2_1 _0621_ (.A(_0449_),
    .B(_0453_),
    .Y(_0454_));
 sky130_fd_sc_hd__nor2b_1 _0622_ (.A(\u_lock.period_bad ),
    .B_N(\u_lock.u_en.q[0] ),
    .Y(_0455_));
 sky130_fd_sc_hd__nand2_1 _0623_ (.A(\u_lock.good_cnt[4] ),
    .B(_0455_),
    .Y(_0456_));
 sky130_fd_sc_hd__a41o_1 _0624_ (.A1(_0052_),
    .A2(\u_lock.good_cnt[2] ),
    .A3(\u_lock.good_cnt[3] ),
    .A4(_0454_),
    .B1(_0456_),
    .X(_0457_));
 sky130_fd_sc_hd__nand2b_1 _0625_ (.A_N(\u_lock.period_bad ),
    .B(\u_lock.u_en.q[0] ),
    .Y(_0458_));
 sky130_fd_sc_hd__nor4b_1 _0626_ (.A(\u_lock.good_cnt[4] ),
    .B(_0446_),
    .C(_0458_),
    .D_N(_0052_),
    .Y(_0459_));
 sky130_fd_sc_hd__nand4_1 _0627_ (.A(\u_lock.good_cnt[2] ),
    .B(\u_lock.good_cnt[3] ),
    .C(_0454_),
    .D(_0459_),
    .Y(_0460_));
 sky130_fd_sc_hd__nand3_1 _0628_ (.A(_0447_),
    .B(_0457_),
    .C(_0460_),
    .Y(_0146_));
 sky130_fd_sc_hd__nor2_1 _0629_ (.A(_0446_),
    .B(_0455_),
    .Y(_0461_));
 sky130_fd_sc_hd__nor2b_1 _0630_ (.A(\u_lock.ref_d ),
    .B_N(\u_lock.u_ref.q[0] ),
    .Y(_0462_));
 sky130_fd_sc_hd__nand3_1 _0631_ (.A(\u_lock.good_cnt[0] ),
    .B(\u_lock.good_cnt[1] ),
    .C(_0462_),
    .Y(_0463_));
 sky130_fd_sc_hd__inv_1 _0632_ (.A(\u_lock.good_cnt[2] ),
    .Y(_0464_));
 sky130_fd_sc_hd__a211oi_1 _0633_ (.A1(_0449_),
    .A2(_0453_),
    .B1(_0463_),
    .C1(_0464_),
    .Y(_0465_));
 sky130_fd_sc_hd__xnor2_1 _0634_ (.A(\u_lock.good_cnt[3] ),
    .B(_0465_),
    .Y(_0466_));
 sky130_fd_sc_hd__nor2_1 _0635_ (.A(_0461_),
    .B(_0466_),
    .Y(_0147_));
 sky130_fd_sc_hd__and3_1 _0636_ (.A(_0052_),
    .B(_0462_),
    .C(_0454_),
    .X(_0467_));
 sky130_fd_sc_hd__nor2_1 _0637_ (.A(_0446_),
    .B(_0458_),
    .Y(_0468_));
 sky130_fd_sc_hd__nand4_1 _0638_ (.A(_0052_),
    .B(_0464_),
    .C(_0454_),
    .D(_0468_),
    .Y(_0469_));
 sky130_fd_sc_hd__o31ai_1 _0639_ (.A1(_0464_),
    .A2(_0461_),
    .A3(_0467_),
    .B1(_0469_),
    .Y(_0148_));
 sky130_fd_sc_hd__inv_1 _0640_ (.A(\u_lock.good_cnt[1] ),
    .Y(_0470_));
 sky130_fd_sc_hd__nand3_1 _0641_ (.A(_0449_),
    .B(_0453_),
    .C(_0455_),
    .Y(_0471_));
 sky130_fd_sc_hd__a32oi_1 _0642_ (.A1(_0053_),
    .A2(_0454_),
    .A3(_0468_),
    .B1(\u_lock.good_cnt[1] ),
    .B2(_0446_),
    .Y(_0472_));
 sky130_fd_sc_hd__o21ai_0 _0643_ (.A1(_0470_),
    .A2(_0471_),
    .B1(_0472_),
    .Y(_0149_));
 sky130_fd_sc_hd__a21oi_1 _0644_ (.A1(_0454_),
    .A2(_0468_),
    .B1(\u_lock.good_cnt[0] ),
    .Y(_0473_));
 sky130_fd_sc_hd__a31oi_1 _0645_ (.A1(\u_lock.good_cnt[0] ),
    .A2(_0462_),
    .A3(_0471_),
    .B1(_0473_),
    .Y(_0150_));
 sky130_fd_sc_hd__mux2_2 _0646_ (.A0(\c_outdiv[1] ),
    .A1(\u_csr.r_odiv[1] ),
    .S(net58),
    .X(_0151_));
 sky130_fd_sc_hd__mux2_2 _0647_ (.A0(\c_outdiv[0] ),
    .A1(\u_csr.r_odiv[0] ),
    .S(net58),
    .X(_0152_));
 sky130_fd_sc_hd__mux2_2 _0648_ (.A0(net30),
    .A1(\u_csr.r_mdiv[6] ),
    .S(net58),
    .X(_0153_));
 sky130_fd_sc_hd__mux2_2 _0649_ (.A0(net29),
    .A1(\u_csr.r_mdiv[5] ),
    .S(net58),
    .X(_0154_));
 sky130_fd_sc_hd__mux2_2 _0650_ (.A0(net28),
    .A1(\u_csr.r_mdiv[4] ),
    .S(net58),
    .X(_0155_));
 sky130_fd_sc_hd__mux2_2 _0652_ (.A0(net27),
    .A1(\u_csr.r_mdiv[3] ),
    .S(_0432_),
    .X(_0156_));
 sky130_fd_sc_hd__mux2_2 _0653_ (.A0(net26),
    .A1(\u_csr.r_mdiv[2] ),
    .S(_0432_),
    .X(_0157_));
 sky130_fd_sc_hd__mux2_2 _0654_ (.A0(net25),
    .A1(\u_csr.r_mdiv[1] ),
    .S(net58),
    .X(_0158_));
 sky130_fd_sc_hd__mux2_2 _0655_ (.A0(net24),
    .A1(\u_csr.r_mdiv[0] ),
    .S(net58),
    .X(_0159_));
 sky130_fd_sc_hd__nand2_1 _0656_ (.A(_0324_),
    .B(_0430_),
    .Y(_0475_));
 sky130_fd_sc_hd__mux2_2 _0657_ (.A0(\u_csr.shreg[5] ),
    .A1(\u_csr.r_vcobnd[6] ),
    .S(_0475_),
    .X(_0160_));
 sky130_fd_sc_hd__mux2_2 _0658_ (.A0(\u_csr.shreg[4] ),
    .A1(\u_csr.r_vcobnd[5] ),
    .S(_0475_),
    .X(_0161_));
 sky130_fd_sc_hd__mux2_2 _0659_ (.A0(\u_csr.shreg[3] ),
    .A1(\u_csr.r_vcobnd[4] ),
    .S(_0475_),
    .X(_0162_));
 sky130_fd_sc_hd__mux2_2 _0660_ (.A0(\u_csr.shreg[2] ),
    .A1(\u_csr.r_vcobnd[3] ),
    .S(_0475_),
    .X(_0163_));
 sky130_fd_sc_hd__mux2_2 _0661_ (.A0(\u_csr.shreg[1] ),
    .A1(\u_csr.r_vcobnd[2] ),
    .S(_0475_),
    .X(_0164_));
 sky130_fd_sc_hd__mux2_2 _0662_ (.A0(\u_csr.shreg[0] ),
    .A1(\u_csr.r_vcobnd[1] ),
    .S(_0475_),
    .X(_0165_));
 sky130_fd_sc_hd__mux2_2 _0663_ (.A0(net7),
    .A1(\u_csr.r_vcobnd[0] ),
    .S(_0475_),
    .X(_0166_));
 sky130_fd_sc_hd__nand2_1 _0664_ (.A(_0393_),
    .B(_0430_),
    .Y(_0476_));
 sky130_fd_sc_hd__mux2_2 _0665_ (.A0(\u_csr.shreg[5] ),
    .A1(\u_csr.r_cpiset[6] ),
    .S(_0476_),
    .X(_0173_));
 sky130_fd_sc_hd__mux2_2 _0666_ (.A0(\u_csr.shreg[4] ),
    .A1(\u_csr.r_cpiset[5] ),
    .S(_0476_),
    .X(_0174_));
 sky130_fd_sc_hd__mux2_2 _0667_ (.A0(\u_csr.shreg[3] ),
    .A1(\u_csr.r_cpiset[4] ),
    .S(_0476_),
    .X(_0175_));
 sky130_fd_sc_hd__mux2_2 _0668_ (.A0(\u_csr.shreg[2] ),
    .A1(\u_csr.r_cpiset[3] ),
    .S(_0476_),
    .X(_0176_));
 sky130_fd_sc_hd__mux2_2 _0669_ (.A0(\u_csr.shreg[1] ),
    .A1(\u_csr.r_cpiset[2] ),
    .S(_0476_),
    .X(_0177_));
 sky130_fd_sc_hd__mux2_2 _0670_ (.A0(\u_csr.shreg[0] ),
    .A1(\u_csr.r_cpiset[1] ),
    .S(_0476_),
    .X(_0178_));
 sky130_fd_sc_hd__mux2_2 _0671_ (.A0(net7),
    .A1(\u_csr.r_cpiset[0] ),
    .S(_0476_),
    .X(_0179_));
 sky130_fd_sc_hd__nand2_2 _0672_ (.A(_0307_),
    .B(_0425_),
    .Y(_0477_));
 sky130_fd_sc_hd__mux2_2 _0673_ (.A0(\u_csr.shreg[5] ),
    .A1(\u_csr.r_odiv[6] ),
    .S(_0477_),
    .X(_0180_));
 sky130_fd_sc_hd__mux2_2 _0674_ (.A0(\u_csr.shreg[4] ),
    .A1(\u_csr.r_odiv[5] ),
    .S(_0477_),
    .X(_0181_));
 sky130_fd_sc_hd__mux2_2 _0675_ (.A0(\u_csr.shreg[3] ),
    .A1(\u_csr.r_odiv[4] ),
    .S(_0477_),
    .X(_0182_));
 sky130_fd_sc_hd__mux2_2 _0676_ (.A0(\u_csr.shreg[2] ),
    .A1(\u_csr.r_odiv[3] ),
    .S(_0477_),
    .X(_0183_));
 sky130_fd_sc_hd__mux2_2 _0677_ (.A0(\u_csr.shreg[1] ),
    .A1(\u_csr.r_odiv[2] ),
    .S(_0477_),
    .X(_0184_));
 sky130_fd_sc_hd__mux2_2 _0678_ (.A0(\u_csr.shreg[0] ),
    .A1(\u_csr.r_odiv[1] ),
    .S(_0477_),
    .X(_0185_));
 sky130_fd_sc_hd__mux2_2 _0679_ (.A0(net7),
    .A1(\u_csr.r_odiv[0] ),
    .S(_0477_),
    .X(_0186_));
 sky130_fd_sc_hd__nand2_2 _0680_ (.A(_0364_),
    .B(_0425_),
    .Y(_0478_));
 sky130_fd_sc_hd__mux2_2 _0681_ (.A0(\u_csr.shreg[5] ),
    .A1(\u_csr.r_mdiv[6] ),
    .S(_0478_),
    .X(_0187_));
 sky130_fd_sc_hd__mux2_2 _0682_ (.A0(\u_csr.shreg[4] ),
    .A1(\u_csr.r_mdiv[5] ),
    .S(_0478_),
    .X(_0188_));
 sky130_fd_sc_hd__mux2_2 _0683_ (.A0(\u_csr.shreg[3] ),
    .A1(\u_csr.r_mdiv[4] ),
    .S(_0478_),
    .X(_0189_));
 sky130_fd_sc_hd__mux2_2 _0684_ (.A0(\u_csr.shreg[2] ),
    .A1(\u_csr.r_mdiv[3] ),
    .S(_0478_),
    .X(_0190_));
 sky130_fd_sc_hd__mux2_2 _0685_ (.A0(\u_csr.shreg[1] ),
    .A1(\u_csr.r_mdiv[2] ),
    .S(_0478_),
    .X(_0191_));
 sky130_fd_sc_hd__mux2_2 _0686_ (.A0(\u_csr.shreg[0] ),
    .A1(\u_csr.r_mdiv[1] ),
    .S(_0478_),
    .X(_0192_));
 sky130_fd_sc_hd__mux2_2 _0687_ (.A0(net7),
    .A1(\u_csr.r_mdiv[0] ),
    .S(_0478_),
    .X(_0193_));
 sky130_fd_sc_hd__inv_1 _0688_ (.A(\u_lock.dn_run[3] ),
    .Y(_0479_));
 sky130_fd_sc_hd__o21ai_0 _0689_ (.A1(\u_lock.dn_run[2] ),
    .A2(_0003_),
    .B1(\u_lock.u_dn.q[0] ),
    .Y(_0480_));
 sky130_fd_sc_hd__a31oi_1 _0690_ (.A1(\u_lock.dn_run[2] ),
    .A2(_0479_),
    .A3(_0003_),
    .B1(_0480_),
    .Y(_0194_));
 sky130_fd_sc_hd__inv_1 _0691_ (.A(\u_lock.u_dn.q[0] ),
    .Y(_0481_));
 sky130_fd_sc_hd__nand3_1 _0692_ (.A(\u_lock.dn_run[2] ),
    .B(\u_lock.dn_run[3] ),
    .C(_0003_),
    .Y(_0482_));
 sky130_fd_sc_hd__mux2i_1 _0693_ (.A0(\u_lock.dn_run[1] ),
    .A1(_0004_),
    .S(_0482_),
    .Y(_0483_));
 sky130_fd_sc_hd__nor2_1 _0694_ (.A(_0481_),
    .B(_0483_),
    .Y(_0195_));
 sky130_fd_sc_hd__xnor2_1 _0695_ (.A(\u_lock.dn_run[0] ),
    .B(_0482_),
    .Y(_0484_));
 sky130_fd_sc_hd__nor2_1 _0696_ (.A(_0481_),
    .B(_0484_),
    .Y(_0196_));
 sky130_fd_sc_hd__nand3_1 _0697_ (.A(c_pll_en),
    .B(c_auto_relock),
    .C(\u_lock.u_ll.q[0] ),
    .Y(_0485_));
 sky130_fd_sc_hd__nor2_1 _0699_ (.A(c_manual_seq),
    .B(c_soft_rst),
    .Y(_0487_));
 sky130_fd_sc_hd__nand3_1 _0700_ (.A(\u_seq.state[4] ),
    .B(_0485_),
    .C(_0487_),
    .Y(_0488_));
 sky130_fd_sc_hd__nand2_1 _0701_ (.A(_0045_),
    .B(_0066_),
    .Y(_0489_));
 sky130_fd_sc_hd__o211ai_1 _0702_ (.A1(_0007_),
    .A2(_0006_),
    .B1(_0035_),
    .C1(_0063_),
    .Y(_0490_));
 sky130_fd_sc_hd__nor2_1 _0703_ (.A(_0489_),
    .B(_0490_),
    .Y(_0491_));
 sky130_fd_sc_hd__nand2_1 _0704_ (.A(_0040_),
    .B(_0069_),
    .Y(_0492_));
 sky130_fd_sc_hd__nor2b_1 _0705_ (.A(_0026_),
    .B_N(_0028_),
    .Y(_0493_));
 sky130_fd_sc_hd__a211oi_1 _0706_ (.A1(_0069_),
    .A2(_0039_),
    .B1(_0068_),
    .C1(_0006_),
    .Y(_0494_));
 sky130_fd_sc_hd__o21ai_0 _0707_ (.A1(_0492_),
    .A2(_0493_),
    .B1(_0494_),
    .Y(_0495_));
 sky130_fd_sc_hd__a21oi_1 _0708_ (.A1(_0035_),
    .A2(_0062_),
    .B1(_0034_),
    .Y(_0496_));
 sky130_fd_sc_hd__a21oi_1 _0709_ (.A1(_0045_),
    .A2(_0065_),
    .B1(_0044_),
    .Y(_0497_));
 sky130_fd_sc_hd__o21ai_0 _0710_ (.A1(_0489_),
    .A2(_0496_),
    .B1(_0497_),
    .Y(_0498_));
 sky130_fd_sc_hd__a21oi_1 _0711_ (.A1(_0491_),
    .A2(_0495_),
    .B1(_0498_),
    .Y(_0499_));
 sky130_fd_sc_hd__or2_2 _0712_ (.A(c_manual_seq),
    .B(c_soft_rst),
    .X(_0500_));
 sky130_fd_sc_hd__nor4_1 _0714_ (.A(\u_seq.state[3] ),
    .B(\u_seq.state[5] ),
    .C(\u_seq.state[1] ),
    .D(\u_seq.state[2] ),
    .Y(_0502_));
 sky130_fd_sc_hd__nor2_1 _0715_ (.A(_0500_),
    .B(_0502_),
    .Y(_0503_));
 sky130_fd_sc_hd__nand3_1 _0716_ (.A(_0488_),
    .B(net57),
    .C(_0503_),
    .Y(_0504_));
 sky130_fd_sc_hd__nand3_1 _0717_ (.A(\u_seq.dwell[2] ),
    .B(_0057_),
    .C(\u_seq.dwell[3] ),
    .Y(_0505_));
 sky130_fd_sc_hd__nand2_1 _0718_ (.A(\u_seq.dwell[4] ),
    .B(\u_seq.dwell[5] ),
    .Y(_0506_));
 sky130_fd_sc_hd__or2_2 _0719_ (.A(_0505_),
    .B(_0506_),
    .X(_0507_));
 sky130_fd_sc_hd__and4_1 _0721_ (.A(\u_seq.dwell[6] ),
    .B(_0488_),
    .C(_0503_),
    .D(_0507_),
    .X(_0509_));
 sky130_fd_sc_hd__nand2_1 _0722_ (.A(net57),
    .B(_0509_),
    .Y(_0510_));
 sky130_fd_sc_hd__nor4_1 _0723_ (.A(c_manual_seq),
    .B(c_soft_rst),
    .C(\u_seq.state[4] ),
    .D(\u_seq.state[0] ),
    .Y(_0511_));
 sky130_fd_sc_hd__a32o_1 _0724_ (.A1(\u_seq.state[4] ),
    .A2(_0485_),
    .A3(_0487_),
    .B1(_0502_),
    .B2(_0511_),
    .X(_0512_));
 sky130_fd_sc_hd__nand2_1 _0726_ (.A(\u_seq.dwell[6] ),
    .B(_0512_),
    .Y(_0514_));
 sky130_fd_sc_hd__o311ai_0 _0727_ (.A1(\u_seq.dwell[6] ),
    .A2(_0504_),
    .A3(_0507_),
    .B1(_0510_),
    .C1(_0514_),
    .Y(_0197_));
 sky130_fd_sc_hd__and2_1 _0728_ (.A(\u_seq.dwell[0] ),
    .B(\u_seq.dwell[1] ),
    .X(_0515_));
 sky130_fd_sc_hd__nand4_1 _0729_ (.A(\u_seq.dwell[4] ),
    .B(\u_seq.dwell[2] ),
    .C(\u_seq.dwell[3] ),
    .D(_0515_),
    .Y(_0516_));
 sky130_fd_sc_hd__and3_1 _0730_ (.A(\u_seq.dwell[5] ),
    .B(_0503_),
    .C(_0516_),
    .X(_0517_));
 sky130_fd_sc_hd__a22oi_1 _0731_ (.A1(\u_seq.dwell[5] ),
    .A2(_0512_),
    .B1(_0517_),
    .B2(net57),
    .Y(_0518_));
 sky130_fd_sc_hd__o31ai_1 _0732_ (.A1(\u_seq.dwell[5] ),
    .A2(_0504_),
    .A3(_0516_),
    .B1(_0518_),
    .Y(_0198_));
 sky130_fd_sc_hd__and3_1 _0733_ (.A(\u_seq.dwell[4] ),
    .B(_0503_),
    .C(_0505_),
    .X(_0519_));
 sky130_fd_sc_hd__a22oi_1 _0734_ (.A1(\u_seq.dwell[4] ),
    .A2(_0512_),
    .B1(_0519_),
    .B2(net57),
    .Y(_0520_));
 sky130_fd_sc_hd__o31ai_1 _0735_ (.A1(\u_seq.dwell[4] ),
    .A2(_0504_),
    .A3(_0505_),
    .B1(_0520_),
    .Y(_0199_));
 sky130_fd_sc_hd__nand2_1 _0736_ (.A(net57),
    .B(_0503_),
    .Y(_0521_));
 sky130_fd_sc_hd__nand2_1 _0737_ (.A(\u_seq.dwell[2] ),
    .B(_0515_),
    .Y(_0522_));
 sky130_fd_sc_hd__nor3_1 _0738_ (.A(\u_seq.dwell[3] ),
    .B(_0512_),
    .C(_0522_),
    .Y(_0523_));
 sky130_fd_sc_hd__a21oi_1 _0739_ (.A1(\u_seq.dwell[3] ),
    .A2(_0522_),
    .B1(_0523_),
    .Y(_0524_));
 sky130_fd_sc_hd__nand2_1 _0740_ (.A(\u_seq.dwell[3] ),
    .B(_0512_),
    .Y(_0525_));
 sky130_fd_sc_hd__o21ai_0 _0741_ (.A1(_0521_),
    .A2(_0524_),
    .B1(_0525_),
    .Y(_0200_));
 sky130_fd_sc_hd__nand2b_1 _0742_ (.A_N(\u_seq.dwell[2] ),
    .B(_0057_),
    .Y(_0526_));
 sky130_fd_sc_hd__nor2b_1 _0743_ (.A(_0057_),
    .B_N(\u_seq.dwell[2] ),
    .Y(_0527_));
 sky130_fd_sc_hd__a32oi_1 _0744_ (.A1(net57),
    .A2(_0503_),
    .A3(_0527_),
    .B1(_0512_),
    .B2(\u_seq.dwell[2] ),
    .Y(_0528_));
 sky130_fd_sc_hd__o21ai_0 _0745_ (.A1(_0504_),
    .A2(_0526_),
    .B1(_0528_),
    .Y(_0201_));
 sky130_fd_sc_hd__inv_1 _0746_ (.A(_0058_),
    .Y(_0529_));
 sky130_fd_sc_hd__nand2_1 _0747_ (.A(\u_seq.dwell[1] ),
    .B(_0512_),
    .Y(_0530_));
 sky130_fd_sc_hd__o21ai_0 _0748_ (.A1(_0529_),
    .A2(_0504_),
    .B1(_0530_),
    .Y(_0202_));
 sky130_fd_sc_hd__nand2_1 _0749_ (.A(\u_seq.dwell[0] ),
    .B(_0512_),
    .Y(_0531_));
 sky130_fd_sc_hd__o21ai_0 _0750_ (.A1(\u_seq.dwell[0] ),
    .A2(_0504_),
    .B1(_0531_),
    .Y(_0203_));
 sky130_fd_sc_hd__inv_1 _0751_ (.A(\u_lock.up_run[3] ),
    .Y(_0532_));
 sky130_fd_sc_hd__o21ai_0 _0752_ (.A1(\u_lock.up_run[2] ),
    .A2(_0036_),
    .B1(\u_lock.u_up.q[0] ),
    .Y(_0533_));
 sky130_fd_sc_hd__a31oi_1 _0753_ (.A1(\u_lock.up_run[2] ),
    .A2(_0532_),
    .A3(_0036_),
    .B1(_0533_),
    .Y(_0204_));
 sky130_fd_sc_hd__inv_1 _0754_ (.A(\u_lock.u_up.q[0] ),
    .Y(_0534_));
 sky130_fd_sc_hd__nand3_1 _0755_ (.A(\u_lock.up_run[2] ),
    .B(\u_lock.up_run[3] ),
    .C(_0036_),
    .Y(_0535_));
 sky130_fd_sc_hd__mux2i_1 _0756_ (.A0(\u_lock.up_run[1] ),
    .A1(_0037_),
    .S(_0535_),
    .Y(_0536_));
 sky130_fd_sc_hd__nor2_1 _0757_ (.A(_0534_),
    .B(_0536_),
    .Y(_0205_));
 sky130_fd_sc_hd__xnor2_1 _0758_ (.A(\u_lock.up_run[0] ),
    .B(_0535_),
    .Y(_0537_));
 sky130_fd_sc_hd__nor2_1 _0759_ (.A(_0534_),
    .B(_0537_),
    .Y(_0206_));
 sky130_fd_sc_hd__inv_1 _0760_ (.A(\u_lock.lockw_s[5] ),
    .Y(_0054_));
 sky130_fd_sc_hd__inv_1 _0761_ (.A(\u_lock.lockw_s[3] ),
    .Y(_0011_));
 sky130_fd_sc_hd__nand3_1 _0762_ (.A(\u_csr.bit_cnt[2] ),
    .B(\u_csr.bit_cnt[0] ),
    .C(\u_csr.bit_cnt[1] ),
    .Y(_0538_));
 sky130_fd_sc_hd__xnor2_1 _0763_ (.A(\u_csr.bit_cnt[3] ),
    .B(_0538_),
    .Y(_0002_));
 sky130_fd_sc_hd__xor2_1 _0764_ (.A(\u_csr.bit_cnt[2] ),
    .B(_0074_),
    .X(_0001_));
 sky130_fd_sc_hd__a41oi_1 _0765_ (.A1(\u_lock.period_bad ),
    .A2(\u_lock.u_en.q[0] ),
    .A3(\u_lock.u_lk.d[0] ),
    .A4(_0462_),
    .B1(\u_lock.u_ll.d[0] ),
    .Y(_0539_));
 sky130_fd_sc_hd__xor2_1 _0766_ (.A(\u_lock.u_clr.s[2] ),
    .B(\u_lock.u_clr.s[1] ),
    .X(_0540_));
 sky130_fd_sc_hd__nor2_1 _0767_ (.A(_0539_),
    .B(_0540_),
    .Y(_0207_));
 sky130_fd_sc_hd__mux2_2 _0768_ (.A0(net34),
    .A1(net5),
    .S(net4),
    .X(_0208_));
 sky130_fd_sc_hd__nand3_1 _0769_ (.A(\u_csr.shreg[0] ),
    .B(\u_csr.addr_r[3] ),
    .C(_0393_),
    .Y(_0541_));
 sky130_fd_sc_hd__nor3_1 _0770_ (.A(_0327_),
    .B(_0424_),
    .C(_0541_),
    .Y(_0542_));
 sky130_fd_sc_hd__xor2_1 _0771_ (.A(\u_csr.u_clr.tog ),
    .B(_0542_),
    .X(_0209_));
 sky130_fd_sc_hd__nor2_1 _0772_ (.A(\u_lock.dn_run[2] ),
    .B(\u_lock.dn_run[3] ),
    .Y(_0543_));
 sky130_fd_sc_hd__nor4_1 _0773_ (.A(_0003_),
    .B(\u_lock.up_run[2] ),
    .C(\u_lock.up_run[3] ),
    .D(_0036_),
    .Y(_0544_));
 sky130_fd_sc_hd__nand2_1 _0774_ (.A(_0543_),
    .B(_0544_),
    .Y(_0545_));
 sky130_fd_sc_hd__a21oi_1 _0775_ (.A1(\u_lock.u_en.q[0] ),
    .A2(_0545_),
    .B1(\u_lock.period_bad ),
    .Y(_0546_));
 sky130_fd_sc_hd__nor2_1 _0776_ (.A(_0462_),
    .B(_0546_),
    .Y(_0210_));
 sky130_fd_sc_hd__xnor2_1 _0777_ (.A(\u_csr.u_commit.tog ),
    .B(_0424_),
    .Y(_0211_));
 sky130_fd_sc_hd__xnor2_1 _0778_ (.A(\u_csr.u_clr.s[2] ),
    .B(\u_csr.u_clr.s[1] ),
    .Y(_0547_));
 sky130_fd_sc_hd__xnor2_1 _0779_ (.A(\u_lock.u_clr.tog ),
    .B(_0547_),
    .Y(_0212_));
 sky130_fd_sc_hd__mux2_1 _0780_ (.A0(\u_csr.shreg[6] ),
    .A1(\u_csr.r_ens[7] ),
    .S(_0426_),
    .X(_0213_));
 sky130_fd_sc_hd__mux2_1 _0781_ (.A0(\u_csr.shreg[6] ),
    .A1(\u_csr.r_ctrl[7] ),
    .S(_0427_),
    .X(_0214_));
 sky130_fd_sc_hd__mux2_2 _0782_ (.A0(\u_csr.r_test[7] ),
    .A1(\u_csr.shreg[6] ),
    .S(_0429_),
    .X(_0215_));
 sky130_fd_sc_hd__mux2_2 _0783_ (.A0(\u_csr.shreg[6] ),
    .A1(\u_csr.r_seqdly[7] ),
    .S(_0431_),
    .X(_0217_));
 sky130_fd_sc_hd__nand2_1 _0784_ (.A(\u_csr.r_seqdly[7] ),
    .B(net58),
    .Y(_0548_));
 sky130_fd_sc_hd__o21ai_0 _0785_ (.A1(_0043_),
    .A2(net58),
    .B1(_0548_),
    .Y(_0218_));
 sky130_fd_sc_hd__mux2_2 _0786_ (.A0(\c_lockw[5] ),
    .A1(\u_csr.r_lockw[5] ),
    .S(net58),
    .X(_0219_));
 sky130_fd_sc_hd__mux2_2 _0787_ (.A0(net43),
    .A1(\u_csr.r_vcobnd[7] ),
    .S(net58),
    .X(_0220_));
 sky130_fd_sc_hd__mux2_2 _0788_ (.A0(\u_csr.shreg[6] ),
    .A1(\u_csr.r_lockw[7] ),
    .S(_0444_),
    .X(_0221_));
 sky130_fd_sc_hd__mux2_2 _0789_ (.A0(net18),
    .A1(\u_csr.r_cpiset[7] ),
    .S(_0432_),
    .X(_0222_));
 sky130_fd_sc_hd__nand3_1 _0790_ (.A(\u_lock.good_cnt[2] ),
    .B(\u_lock.good_cnt[4] ),
    .C(\u_lock.good_cnt[3] ),
    .Y(_0549_));
 sky130_fd_sc_hd__a211oi_1 _0791_ (.A1(_0449_),
    .A2(_0453_),
    .B1(_0463_),
    .C1(_0549_),
    .Y(_0550_));
 sky130_fd_sc_hd__xnor2_1 _0792_ (.A(\u_lock.good_cnt[5] ),
    .B(_0550_),
    .Y(_0551_));
 sky130_fd_sc_hd__nor2_1 _0793_ (.A(_0461_),
    .B(_0551_),
    .Y(_0223_));
 sky130_fd_sc_hd__mux2_2 _0794_ (.A0(\c_outdiv[2] ),
    .A1(\u_csr.r_odiv[2] ),
    .S(net58),
    .X(_0224_));
 sky130_fd_sc_hd__mux2_2 _0795_ (.A0(net31),
    .A1(\u_csr.r_mdiv[7] ),
    .S(_0432_),
    .X(_0225_));
 sky130_fd_sc_hd__mux2_2 _0796_ (.A0(\u_csr.shreg[6] ),
    .A1(\u_csr.r_vcobnd[7] ),
    .S(_0475_),
    .X(_0226_));
 sky130_fd_sc_hd__mux2_2 _0797_ (.A0(c_en_cp_man),
    .A1(\u_csr.r_ens[2] ),
    .S(net58),
    .X(_0227_));
 sky130_fd_sc_hd__mux2_2 _0798_ (.A0(c_en_vco_man),
    .A1(\u_csr.r_ens[1] ),
    .S(net58),
    .X(_0229_));
 sky130_fd_sc_hd__mux2_2 _0799_ (.A0(c_en_vreg_man),
    .A1(\u_csr.r_ens[0] ),
    .S(net58),
    .X(_0230_));
 sky130_fd_sc_hd__mux2_2 _0800_ (.A0(\u_csr.shreg[6] ),
    .A1(\u_csr.r_cpiset[7] ),
    .S(_0476_),
    .X(_0231_));
 sky130_fd_sc_hd__mux2_2 _0802_ (.A0(c_manual_seq),
    .A1(\u_csr.r_ctrl[5] ),
    .S(net58),
    .X(_0232_));
 sky130_fd_sc_hd__mux2_2 _0803_ (.A0(c_auto_relock),
    .A1(\u_csr.r_ctrl[4] ),
    .S(net58),
    .X(_0233_));
 sky130_fd_sc_hd__mux2_2 _0804_ (.A0(c_soft_rst),
    .A1(\u_csr.r_ctrl[3] ),
    .S(net58),
    .X(_0234_));
 sky130_fd_sc_hd__mux2_2 _0805_ (.A0(\u_csr.shreg[6] ),
    .A1(\u_csr.r_odiv[7] ),
    .S(_0477_),
    .X(_0235_));
 sky130_fd_sc_hd__mux2_2 _0806_ (.A0(c_bypass_sel),
    .A1(\u_csr.r_ctrl[2] ),
    .S(net58),
    .X(_0236_));
 sky130_fd_sc_hd__mux2_2 _0807_ (.A0(c_clkout_en),
    .A1(\u_csr.r_ctrl[1] ),
    .S(net58),
    .X(_0237_));
 sky130_fd_sc_hd__mux2_2 _0808_ (.A0(c_pll_en),
    .A1(\u_csr.r_ctrl[0] ),
    .S(net58),
    .X(_0238_));
 sky130_fd_sc_hd__mux2_2 _0809_ (.A0(\u_csr.shreg[6] ),
    .A1(\u_csr.r_mdiv[7] ),
    .S(_0478_),
    .X(_0239_));
 sky130_fd_sc_hd__nand3_1 _0810_ (.A(\u_lock.dn_run[2] ),
    .B(\u_lock.dn_run[1] ),
    .C(\u_lock.dn_run[0] ),
    .Y(_0553_));
 sky130_fd_sc_hd__nor3_1 _0811_ (.A(_0479_),
    .B(_0003_),
    .C(_0553_),
    .Y(_0554_));
 sky130_fd_sc_hd__a211oi_1 _0812_ (.A1(_0479_),
    .A2(_0553_),
    .B1(_0554_),
    .C1(_0481_),
    .Y(_0240_));
 sky130_fd_sc_hd__inv_1 _0813_ (.A(net19),
    .Y(_0555_));
 sky130_fd_sc_hd__nor2_1 _0814_ (.A(\u_seq.state[4] ),
    .B(\u_seq.state[0] ),
    .Y(_0556_));
 sky130_fd_sc_hd__nand2_1 _0815_ (.A(_0487_),
    .B(_0556_),
    .Y(_0557_));
 sky130_fd_sc_hd__o21ai_0 _0816_ (.A1(\u_seq.state[1] ),
    .A2(_0557_),
    .B1(_0488_),
    .Y(_0558_));
 sky130_fd_sc_hd__mux2i_1 _0817_ (.A0(\u_seq.state[1] ),
    .A1(c_pll_en),
    .S(c_manual_seq),
    .Y(_0559_));
 sky130_fd_sc_hd__nor3_1 _0818_ (.A(c_soft_rst),
    .B(_0559_),
    .C(_0558_),
    .Y(_0560_));
 sky130_fd_sc_hd__a21oi_1 _0819_ (.A1(_0555_),
    .A2(_0558_),
    .B1(_0560_),
    .Y(_0241_));
 sky130_fd_sc_hd__inv_1 _0820_ (.A(\u_seq.state[0] ),
    .Y(_0561_));
 sky130_fd_sc_hd__a21oi_1 _0821_ (.A1(_0561_),
    .A2(net20),
    .B1(\u_seq.state[5] ),
    .Y(_0562_));
 sky130_fd_sc_hd__nor2_1 _0822_ (.A(c_manual_seq),
    .B(_0562_),
    .Y(_0563_));
 sky130_fd_sc_hd__a21oi_1 _0823_ (.A1(c_manual_seq),
    .A2(c_en_cp_man),
    .B1(_0563_),
    .Y(_0564_));
 sky130_fd_sc_hd__nor2_1 _0824_ (.A(c_soft_rst),
    .B(_0564_),
    .Y(_0242_));
 sky130_fd_sc_hd__and4_1 _0825_ (.A(\u_seq.dwell[6] ),
    .B(\u_seq.dwell[4] ),
    .C(\u_seq.dwell[2] ),
    .D(\u_seq.dwell[3] ),
    .X(_0565_));
 sky130_fd_sc_hd__nand3_1 _0826_ (.A(\u_seq.dwell[5] ),
    .B(_0515_),
    .C(_0565_),
    .Y(_0566_));
 sky130_fd_sc_hd__and3_1 _0827_ (.A(\u_seq.dwell[7] ),
    .B(_0503_),
    .C(_0566_),
    .X(_0567_));
 sky130_fd_sc_hd__a22oi_1 _0828_ (.A1(\u_seq.dwell[7] ),
    .A2(_0512_),
    .B1(_0567_),
    .B2(net57),
    .Y(_0568_));
 sky130_fd_sc_hd__o31ai_1 _0829_ (.A1(\u_seq.dwell[7] ),
    .A2(_0504_),
    .A3(_0566_),
    .B1(_0568_),
    .Y(_0243_));
 sky130_fd_sc_hd__a21oi_1 _0830_ (.A1(_0561_),
    .A2(net21),
    .B1(\u_seq.state[2] ),
    .Y(_0569_));
 sky130_fd_sc_hd__nor2_1 _0831_ (.A(c_manual_seq),
    .B(_0569_),
    .Y(_0570_));
 sky130_fd_sc_hd__a21oi_1 _0832_ (.A1(c_manual_seq),
    .A2(c_en_vco_man),
    .B1(_0570_),
    .Y(_0571_));
 sky130_fd_sc_hd__nor2_1 _0833_ (.A(c_soft_rst),
    .B(_0571_),
    .Y(_0244_));
 sky130_fd_sc_hd__a21oi_1 _0834_ (.A1(_0561_),
    .A2(net22),
    .B1(\u_seq.state[3] ),
    .Y(_0572_));
 sky130_fd_sc_hd__nor2_1 _0835_ (.A(c_manual_seq),
    .B(_0572_),
    .Y(_0573_));
 sky130_fd_sc_hd__a21oi_1 _0836_ (.A1(c_manual_seq),
    .A2(c_en_vreg_man),
    .B1(_0573_),
    .Y(_0574_));
 sky130_fd_sc_hd__nor2_1 _0837_ (.A(c_soft_rst),
    .B(_0574_),
    .Y(_0245_));
 sky130_fd_sc_hd__a21oi_1 _0838_ (.A1(_0561_),
    .A2(net32),
    .B1(\u_seq.state[1] ),
    .Y(_0575_));
 sky130_fd_sc_hd__nor2_1 _0839_ (.A(c_manual_seq),
    .B(_0575_),
    .Y(_0576_));
 sky130_fd_sc_hd__a21oi_1 _0840_ (.A1(c_manual_seq),
    .A2(c_pll_en),
    .B1(_0576_),
    .Y(_0577_));
 sky130_fd_sc_hd__nor2_1 _0841_ (.A(c_soft_rst),
    .B(_0577_),
    .Y(_0246_));
 sky130_fd_sc_hd__nand2_1 _0842_ (.A(seq_done),
    .B(_0511_),
    .Y(_0578_));
 sky130_fd_sc_hd__nand2_1 _0843_ (.A(_0488_),
    .B(_0578_),
    .Y(_0247_));
 sky130_fd_sc_hd__a31oi_1 _0844_ (.A1(_0462_),
    .A2(_0449_),
    .A3(_0453_),
    .B1(\u_lock.u_lk.d[0] ),
    .Y(_0579_));
 sky130_fd_sc_hd__nor2_1 _0845_ (.A(_0461_),
    .B(_0579_),
    .Y(_0248_));
 sky130_fd_sc_hd__nand3_1 _0846_ (.A(\u_lock.up_run[2] ),
    .B(\u_lock.up_run[0] ),
    .C(\u_lock.up_run[1] ),
    .Y(_0580_));
 sky130_fd_sc_hd__nor3_1 _0847_ (.A(_0532_),
    .B(_0036_),
    .C(_0580_),
    .Y(_0581_));
 sky130_fd_sc_hd__a211oi_1 _0848_ (.A1(_0532_),
    .A2(_0580_),
    .B1(_0581_),
    .C1(_0534_),
    .Y(_0249_));
 sky130_fd_sc_hd__o21ai_0 _0849_ (.A1(c_pll_en),
    .A2(_0556_),
    .B1(_0487_),
    .Y(_0077_));
 sky130_fd_sc_hd__mux2i_1 _0850_ (.A0(\u_seq.state[5] ),
    .A1(\u_seq.state[1] ),
    .S(net57),
    .Y(_0582_));
 sky130_fd_sc_hd__nor2_1 _0851_ (.A(_0500_),
    .B(_0582_),
    .Y(_0078_));
 sky130_fd_sc_hd__mux2i_1 _0852_ (.A0(\u_seq.state[3] ),
    .A1(\u_seq.state[2] ),
    .S(net57),
    .Y(_0583_));
 sky130_fd_sc_hd__nor2_1 _0853_ (.A(_0500_),
    .B(_0583_),
    .Y(_0079_));
 sky130_fd_sc_hd__a22oi_1 _0854_ (.A1(c_pll_en),
    .A2(\u_seq.state[0] ),
    .B1(net57),
    .B2(\u_seq.state[3] ),
    .Y(_0584_));
 sky130_fd_sc_hd__nor2_1 _0855_ (.A(_0500_),
    .B(_0584_),
    .Y(_0080_));
 sky130_fd_sc_hd__nand2b_1 _0856_ (.A_N(net57),
    .B(\u_seq.state[1] ),
    .Y(_0585_));
 sky130_fd_sc_hd__nand2_1 _0857_ (.A(c_auto_relock),
    .B(\u_lock.u_ll.q[0] ),
    .Y(_0586_));
 sky130_fd_sc_hd__nand3_1 _0858_ (.A(c_pll_en),
    .B(\u_seq.state[4] ),
    .C(_0586_),
    .Y(_0587_));
 sky130_fd_sc_hd__a21oi_1 _0859_ (.A1(_0585_),
    .A2(_0587_),
    .B1(_0500_),
    .Y(_0081_));
 sky130_fd_sc_hd__nand4_1 _0860_ (.A(c_pll_en),
    .B(\u_seq.state[4] ),
    .C(c_auto_relock),
    .D(\u_lock.u_ll.q[0] ),
    .Y(_0588_));
 sky130_fd_sc_hd__mux2i_1 _0861_ (.A0(\u_seq.state[2] ),
    .A1(\u_seq.state[5] ),
    .S(net57),
    .Y(_0263_));
 sky130_fd_sc_hd__a21oi_1 _0862_ (.A1(_0588_),
    .A2(_0263_),
    .B1(_0500_),
    .Y(_0082_));
 sky130_fd_sc_hd__inv_1 _0863_ (.A(\u_lock.lockw_s[2] ),
    .Y(_0008_));
 sky130_fd_sc_hd__xnor2_1 _0864_ (.A(\u_clkout.cnt[2] ),
    .B(_0023_),
    .Y(_0264_));
 sky130_fd_sc_hd__nor2_1 _0865_ (.A(_0300_),
    .B(_0264_),
    .Y(_0252_));
 sky130_fd_sc_hd__nor2_1 _0866_ (.A(\u_clkout.N[1] ),
    .B(\u_clkout.N[0] ),
    .Y(_0265_));
 sky130_fd_sc_hd__o21ai_0 _0867_ (.A1(_0060_),
    .A2(_0265_),
    .B1(_0017_),
    .Y(_0266_));
 sky130_fd_sc_hd__mux2_2 _0868_ (.A0(clknet_1_0__leaf_pll_d2),
    .A1(\u_clkout.divq ),
    .S(_0266_),
    .X(_0267_));
 sky130_fd_sc_hd__mux2_2 _0869_ (.A0(_0267_),
    .A1(clknet_1_0__leaf_refclk_i),
    .S(c_bypass_sel),
    .X(\u_clkout.sel_clk ));
 sky130_fd_sc_hd__and2_1 _0870_ (.A(\u_clkout.u_gate.en_lat ),
    .B(\clknet_1_0__leaf_u_clkout.sel_clk ),
    .X(net10));
 sky130_fd_sc_hd__or2_2 _0871_ (.A(c_clkout_en),
    .B(net8),
    .X(_0253_));
 sky130_fd_sc_hd__mux2_2 _0872_ (.A0(\u_csr.shreg[5] ),
    .A1(\u_csr.addr_r[6] ),
    .S(_0282_),
    .X(_0228_));
 sky130_fd_sc_hd__mux2i_1 _0873_ (.A0(\u_csr.r_mdiv[7] ),
    .A1(\u_csr.r_lockw[7] ),
    .S(net61),
    .Y(_0268_));
 sky130_fd_sc_hd__a21oi_1 _0874_ (.A1(net61),
    .A2(\u_csr.r_cpiset[7] ),
    .B1(net62),
    .Y(_0269_));
 sky130_fd_sc_hd__a211oi_1 _0875_ (.A1(net62),
    .A2(_0268_),
    .B1(_0269_),
    .C1(net63),
    .Y(_0270_));
 sky130_fd_sc_hd__nand2_1 _0876_ (.A(net63),
    .B(net61),
    .Y(_0271_));
 sky130_fd_sc_hd__mux2i_1 _0877_ (.A0(\u_csr.r_vcobnd[7] ),
    .A1(\u_csr.r_seqdly[7] ),
    .S(net62),
    .Y(_0272_));
 sky130_fd_sc_hd__nor2_1 _0878_ (.A(_0271_),
    .B(_0272_),
    .Y(_0273_));
 sky130_fd_sc_hd__o21ai_0 _0879_ (.A1(_0270_),
    .A2(_0273_),
    .B1(net59),
    .Y(_0274_));
 sky130_fd_sc_hd__nand3_1 _0880_ (.A(\u_csr.r_odiv[7] ),
    .B(_0307_),
    .C(_0382_),
    .Y(_0275_));
 sky130_fd_sc_hd__mux2_2 _0881_ (.A0(\u_csr.r_ens[7] ),
    .A1(\u_csr.r_test[7] ),
    .S(net60),
    .X(_0276_));
 sky130_fd_sc_hd__a22oi_1 _0882_ (.A1(\u_csr.r_ctrl[7] ),
    .A2(_0321_),
    .B1(_0276_),
    .B2(net63),
    .Y(_0277_));
 sky130_fd_sc_hd__o21a_1 _0883_ (.A1(_0304_),
    .A2(_0277_),
    .B1(_0310_),
    .X(_0278_));
 sky130_fd_sc_hd__a31oi_1 _0884_ (.A1(_0274_),
    .A2(_0275_),
    .A3(_0278_),
    .B1(_0312_),
    .Y(_0279_));
 sky130_fd_sc_hd__a21o_1 _0885_ (.A1(\u_csr.sh_out[6] ),
    .A2(_0311_),
    .B1(_0279_),
    .X(_0261_));
 sky130_fd_sc_hd__inv_1 _0886_ (.A(\u_csr.bit_cnt[1] ),
    .Y(_0071_));
 sky130_fd_sc_hd__inv_1 _0887_ (.A(\u_lock.lockw_s[4] ),
    .Y(_0049_));
 sky130_fd_sc_hd__xnor2_1 _0888_ (.A(_0059_),
    .B(\u_clkout.N[2] ),
    .Y(_0046_));
 sky130_fd_sc_hd__and2_1 _0889_ (.A(clknet_1_1__leaf_refclk_i),
    .B(\u_refgate.en_lat ),
    .X(net33));
 sky130_fd_sc_hd__or2_2 _0890_ (.A(net32),
    .B(net8),
    .X(_0262_));
 sky130_fd_sc_hd__inv_1 _0891_ (.A(_0041_),
    .Y(_0280_));
 sky130_fd_sc_hd__a211oi_1 _0892_ (.A1(_0019_),
    .A2(_0280_),
    .B1(_0018_),
    .C1(\u_clkout.cnt[2] ),
    .Y(_0083_));
 sky130_fd_sc_hd__and2_1 _0893_ (.A(net32),
    .B(seq_done),
    .X(\u_lock.u_en.d[0] ));
 sky130_fd_sc_hd__inv_1 _0894__69 (.A(clknet_2_0__leaf_pll_d2_regs),
    .Y(net68));
 sky130_fd_sc_hd__nand3b_1 _0896_ (.A_N(\u_csr.bit_cnt[3] ),
    .B(\u_csr.bit_cnt[2] ),
    .C(_0073_),
    .Y(_0282_));
 sky130_fd_sc_hd__mux2_2 _0897_ (.A0(\u_csr.shreg[6] ),
    .A1(\u_csr.rw_r ),
    .S(_0282_),
    .X(_0216_));
 sky130_fd_sc_hd__mux2_2 _0901_ (.A0(net7),
    .A1(net63),
    .S(_0282_),
    .X(_0172_));
 sky130_fd_sc_hd__mux2_2 _0905_ (.A0(\u_csr.shreg[0] ),
    .A1(net62),
    .S(_0282_),
    .X(_0171_));
 sky130_fd_sc_hd__mux2_2 _0909_ (.A0(\u_csr.shreg[1] ),
    .A1(net61),
    .S(_0282_),
    .X(_0170_));
 sky130_fd_sc_hd__mux2_2 _0913_ (.A0(\u_csr.shreg[2] ),
    .A1(\u_csr.addr_r[3] ),
    .S(_0282_),
    .X(_0169_));
 sky130_fd_sc_hd__mux2_2 _0915_ (.A0(\u_csr.shreg[3] ),
    .A1(\u_csr.addr_r[4] ),
    .S(_0282_),
    .X(_0168_));
 sky130_fd_sc_hd__mux2_2 _0917_ (.A0(\u_csr.shreg[4] ),
    .A1(\u_csr.addr_r[5] ),
    .S(_0282_),
    .X(_0167_));
 sky130_fd_sc_hd__inv_1 _0918_ (.A(_0024_),
    .Y(_0297_));
 sky130_fd_sc_hd__nand2b_1 _0919_ (.A_N(_0032_),
    .B(_0031_),
    .Y(_0298_));
 sky130_fd_sc_hd__a21o_1 _0920_ (.A1(_0076_),
    .A2(_0298_),
    .B1(_0075_),
    .X(_0299_));
 sky130_fd_sc_hd__a21o_1 _0921_ (.A1(_0048_),
    .A2(_0299_),
    .B1(_0047_),
    .X(_0300_));
 sky130_fd_sc_hd__nor2_1 _0922_ (.A(_0297_),
    .B(_0300_),
    .Y(_0251_));
 sky130_fd_sc_hd__inv_1 _0923_ (.A(\u_clkout.cnt[0] ),
    .Y(_0029_));
 sky130_fd_sc_hd__nor2_1 _0924_ (.A(\u_clkout.cnt[0] ),
    .B(_0300_),
    .Y(_0250_));
 sky130_fd_sc_hd__inv_1 _0925_ (.A(\c_seqdly[7] ),
    .Y(_0043_));
 sky130_fd_sc_hd__inv_1 _0926_ (.A(\u_lock.good_cnt[0] ),
    .Y(_0014_));
 sky130_fd_sc_hd__inv_1 _0927_ (.A(\u_seq.dwell[0] ),
    .Y(_0027_));
 sky130_fd_sc_hd__inv_1 _0928_ (.A(\c_seqdly[6] ),
    .Y(_0064_));
 sky130_fd_sc_hd__inv_1 _0929_ (.A(\c_seqdly[3] ),
    .Y(_0005_));
 sky130_fd_sc_hd__inv_1 _0931_ (.A(net62),
    .Y(_0302_));
 sky130_fd_sc_hd__nor4_2 _0932_ (.A(net61),
    .B(\u_csr.addr_r[4] ),
    .C(\u_csr.addr_r[5] ),
    .D(\u_csr.addr_r[6] ),
    .Y(_0303_));
 sky130_fd_sc_hd__nand2_1 _0933_ (.A(_0302_),
    .B(_0303_),
    .Y(_0304_));
 sky130_fd_sc_hd__nor4_1 _0934_ (.A(net60),
    .B(\u_csr.addr_r[4] ),
    .C(\u_csr.addr_r[5] ),
    .D(\u_csr.addr_r[6] ),
    .Y(_0305_));
 sky130_fd_sc_hd__inv_1 _0935_ (.A(net59),
    .Y(_0306_));
 sky130_fd_sc_hd__and2_1 _0936_ (.A(\u_csr.addr_r[0] ),
    .B(net62),
    .X(_0307_));
 sky130_fd_sc_hd__and3_1 _0938_ (.A(net61),
    .B(net60),
    .C(\u_csr.addr_r[4] ),
    .X(_0309_));
 sky130_fd_sc_hd__nand4_1 _0939_ (.A(\u_csr.addr_r[5] ),
    .B(\u_csr.addr_r[6] ),
    .C(_0307_),
    .D(_0309_),
    .Y(_0310_));
 sky130_fd_sc_hd__nand3b_1 _0940_ (.A_N(\u_csr.bit_cnt[2] ),
    .B(_0072_),
    .C(\u_csr.bit_cnt[3] ),
    .Y(_0311_));
 sky130_fd_sc_hd__a31o_2 _0941_ (.A1(_0304_),
    .A2(_0306_),
    .A3(_0310_),
    .B1(_0311_),
    .X(_0312_));
 sky130_fd_sc_hd__mux2_2 _0942_ (.A0(\u_csr.r_cpiset[6] ),
    .A1(\u_csr.r_lockw[6] ),
    .S(net62),
    .X(_0313_));
 sky130_fd_sc_hd__nor2b_1 _0943_ (.A(net63),
    .B_N(net61),
    .Y(_0314_));
 sky130_fd_sc_hd__mux2i_1 _0944_ (.A0(\u_csr.r_ens[6] ),
    .A1(\u_csr.r_vcobnd[6] ),
    .S(net61),
    .Y(_0315_));
 sky130_fd_sc_hd__nand3_1 _0946_ (.A(net62),
    .B(net61),
    .C(\u_csr.r_seqdly[6] ),
    .Y(_0317_));
 sky130_fd_sc_hd__o21ai_0 _0947_ (.A1(net62),
    .A2(_0315_),
    .B1(_0317_),
    .Y(_0318_));
 sky130_fd_sc_hd__a22o_1 _0948_ (.A1(_0313_),
    .A2(_0314_),
    .B1(_0318_),
    .B2(net63),
    .X(_0319_));
 sky130_fd_sc_hd__mux2_2 _0949_ (.A0(\u_csr.r_ctrl[6] ),
    .A1(\u_csr.r_mdiv[6] ),
    .S(net62),
    .X(_0320_));
 sky130_fd_sc_hd__nor2_1 _0950_ (.A(net63),
    .B(net60),
    .Y(_0321_));
 sky130_fd_sc_hd__nand2_1 _0951_ (.A(_0320_),
    .B(_0321_),
    .Y(_0322_));
 sky130_fd_sc_hd__nand3b_1 _0952_ (.A_N(net60),
    .B(\u_csr.r_odiv[6] ),
    .C(_0307_),
    .Y(_0323_));
 sky130_fd_sc_hd__nor2b_1 _0953_ (.A(net62),
    .B_N(\u_csr.addr_r[0] ),
    .Y(_0324_));
 sky130_fd_sc_hd__nand3_1 _0955_ (.A(net60),
    .B(\u_csr.r_test[6] ),
    .C(_0324_),
    .Y(_0326_));
 sky130_fd_sc_hd__or4_1 _0956_ (.A(net61),
    .B(\u_csr.addr_r[4] ),
    .C(\u_csr.addr_r[5] ),
    .D(\u_csr.addr_r[6] ),
    .X(_0327_));
 sky130_fd_sc_hd__a31oi_1 _0958_ (.A1(_0322_),
    .A2(_0323_),
    .A3(_0326_),
    .B1(_0327_),
    .Y(_0329_));
 sky130_fd_sc_hd__a21oi_1 _0959_ (.A1(net59),
    .A2(_0319_),
    .B1(_0329_),
    .Y(_0330_));
 sky130_fd_sc_hd__nand2_1 _0960_ (.A(\u_csr.sh_out[5] ),
    .B(_0311_),
    .Y(_0331_));
 sky130_fd_sc_hd__o21ai_0 _0961_ (.A1(_0312_),
    .A2(_0330_),
    .B1(_0331_),
    .Y(_0260_));
 sky130_fd_sc_hd__nand4_1 _0962_ (.A(net61),
    .B(net60),
    .C(\u_csr.addr_r[4] ),
    .D(\u_csr.addr_r[5] ),
    .Y(_0332_));
 sky130_fd_sc_hd__nand2_1 _0963_ (.A(\u_csr.addr_r[6] ),
    .B(_0307_),
    .Y(_0333_));
 sky130_fd_sc_hd__nor2_1 _0964_ (.A(_0332_),
    .B(_0333_),
    .Y(_0334_));
 sky130_fd_sc_hd__a21oi_1 _0965_ (.A1(\u_csr.sh_out[4] ),
    .A2(_0311_),
    .B1(_0334_),
    .Y(_0335_));
 sky130_fd_sc_hd__and3_1 _0966_ (.A(net60),
    .B(_0303_),
    .C(_0324_),
    .X(_0336_));
 sky130_fd_sc_hd__mux2i_1 _0968_ (.A0(\u_csr.r_ctrl[5] ),
    .A1(\u_csr.r_mdiv[5] ),
    .S(net62),
    .Y(_0338_));
 sky130_fd_sc_hd__nor4_1 _0969_ (.A(net63),
    .B(\u_csr.addr_r[3] ),
    .C(_0327_),
    .D(_0338_),
    .Y(_0339_));
 sky130_fd_sc_hd__a21oi_1 _0970_ (.A1(\u_csr.r_test[5] ),
    .A2(_0336_),
    .B1(_0339_),
    .Y(_0340_));
 sky130_fd_sc_hd__mux2i_1 _0972_ (.A0(\u_csr.r_cpiset[5] ),
    .A1(\u_csr.r_lockw[5] ),
    .S(net62),
    .Y(_0342_));
 sky130_fd_sc_hd__nand3_1 _0973_ (.A(net63),
    .B(net62),
    .C(\u_csr.r_seqdly[5] ),
    .Y(_0343_));
 sky130_fd_sc_hd__o21ai_0 _0974_ (.A1(net63),
    .A2(_0342_),
    .B1(_0343_),
    .Y(_0344_));
 sky130_fd_sc_hd__mux2i_1 _0975_ (.A0(\u_csr.r_ens[5] ),
    .A1(\u_csr.r_vcobnd[5] ),
    .S(net61),
    .Y(_0345_));
 sky130_fd_sc_hd__nand3b_1 _0976_ (.A_N(net61),
    .B(\u_csr.r_odiv[5] ),
    .C(net62),
    .Y(_0346_));
 sky130_fd_sc_hd__o21ai_0 _0977_ (.A1(net62),
    .A2(_0345_),
    .B1(_0346_),
    .Y(_0347_));
 sky130_fd_sc_hd__a22o_1 _0978_ (.A1(net61),
    .A2(_0344_),
    .B1(_0347_),
    .B2(net63),
    .X(_0348_));
 sky130_fd_sc_hd__nand2_1 _0979_ (.A(net59),
    .B(_0348_),
    .Y(_0349_));
 sky130_fd_sc_hd__nand2_1 _0980_ (.A(\u_csr.sh_out[4] ),
    .B(_0311_),
    .Y(_0350_));
 sky130_fd_sc_hd__a32oi_1 _0981_ (.A1(_0335_),
    .A2(_0340_),
    .A3(_0349_),
    .B1(_0350_),
    .B2(_0312_),
    .Y(_0259_));
 sky130_fd_sc_hd__mux2_2 _0982_ (.A0(\u_csr.r_cpiset[4] ),
    .A1(\u_csr.r_lockw[4] ),
    .S(net62),
    .X(_0351_));
 sky130_fd_sc_hd__mux2i_1 _0983_ (.A0(\u_csr.r_ens[4] ),
    .A1(\u_csr.r_vcobnd[4] ),
    .S(net61),
    .Y(_0352_));
 sky130_fd_sc_hd__nand3_1 _0984_ (.A(net62),
    .B(net61),
    .C(\u_csr.r_seqdly[4] ),
    .Y(_0353_));
 sky130_fd_sc_hd__o21ai_0 _0985_ (.A1(net62),
    .A2(_0352_),
    .B1(_0353_),
    .Y(_0354_));
 sky130_fd_sc_hd__a22o_1 _0986_ (.A1(_0314_),
    .A2(_0351_),
    .B1(_0354_),
    .B2(net63),
    .X(_0355_));
 sky130_fd_sc_hd__mux2_2 _0987_ (.A0(\u_csr.r_ctrl[4] ),
    .A1(\u_csr.r_mdiv[4] ),
    .S(net62),
    .X(_0356_));
 sky130_fd_sc_hd__nand2_1 _0988_ (.A(_0321_),
    .B(_0356_),
    .Y(_0357_));
 sky130_fd_sc_hd__nand3b_1 _0989_ (.A_N(net60),
    .B(\u_csr.r_odiv[4] ),
    .C(_0307_),
    .Y(_0358_));
 sky130_fd_sc_hd__nand3_1 _0990_ (.A(net60),
    .B(\u_csr.r_test[4] ),
    .C(_0324_),
    .Y(_0359_));
 sky130_fd_sc_hd__a31oi_1 _0991_ (.A1(_0357_),
    .A2(_0358_),
    .A3(_0359_),
    .B1(_0327_),
    .Y(_0360_));
 sky130_fd_sc_hd__a21oi_1 _0992_ (.A1(net59),
    .A2(_0355_),
    .B1(_0360_),
    .Y(_0361_));
 sky130_fd_sc_hd__nand2_1 _0993_ (.A(\u_csr.sh_out[3] ),
    .B(_0311_),
    .Y(_0362_));
 sky130_fd_sc_hd__o21ai_0 _0994_ (.A1(_0312_),
    .A2(_0361_),
    .B1(_0362_),
    .Y(_0258_));
 sky130_fd_sc_hd__mux2_2 _0995_ (.A0(\u_csr.r_vcobnd[3] ),
    .A1(\u_csr.r_seqdly[3] ),
    .S(net62),
    .X(_0363_));
 sky130_fd_sc_hd__nor2b_1 _0996_ (.A(\u_csr.addr_r[0] ),
    .B_N(net62),
    .Y(_0364_));
 sky130_fd_sc_hd__a22oi_1 _0998_ (.A1(\u_csr.addr_r[0] ),
    .A2(_0363_),
    .B1(_0364_),
    .B2(\u_csr.r_lockw[3] ),
    .Y(_0366_));
 sky130_fd_sc_hd__mux2_2 _0999_ (.A0(\u_csr.r_ens[3] ),
    .A1(\u_csr.r_odiv[3] ),
    .S(net62),
    .X(_0367_));
 sky130_fd_sc_hd__a221oi_1 _1000_ (.A1(\u_csr.r_mdiv[3] ),
    .A2(_0364_),
    .B1(_0367_),
    .B2(net63),
    .C1(net61),
    .Y(_0368_));
 sky130_fd_sc_hd__a21oi_1 _1001_ (.A1(net61),
    .A2(_0366_),
    .B1(_0368_),
    .Y(_0369_));
 sky130_fd_sc_hd__mux2i_1 _1002_ (.A0(\u_csr.r_ctrl[3] ),
    .A1(\u_csr.st_sync[3] ),
    .S(net60),
    .Y(_0370_));
 sky130_fd_sc_hd__nand3b_1 _1003_ (.A_N(\u_csr.addr_r[3] ),
    .B(\u_csr.r_cpiset[3] ),
    .C(net61),
    .Y(_0371_));
 sky130_fd_sc_hd__o21ai_0 _1004_ (.A1(net61),
    .A2(_0370_),
    .B1(_0371_),
    .Y(_0372_));
 sky130_fd_sc_hd__or3_1 _1005_ (.A(\u_csr.addr_r[4] ),
    .B(\u_csr.addr_r[5] ),
    .C(\u_csr.addr_r[6] ),
    .X(_0373_));
 sky130_fd_sc_hd__nor3_1 _1006_ (.A(net63),
    .B(net62),
    .C(_0373_),
    .Y(_0374_));
 sky130_fd_sc_hd__a22o_1 _1007_ (.A1(\u_csr.r_test[3] ),
    .A2(_0336_),
    .B1(_0372_),
    .B2(_0374_),
    .X(_0375_));
 sky130_fd_sc_hd__a21oi_1 _1008_ (.A1(net59),
    .A2(_0369_),
    .B1(_0375_),
    .Y(_0376_));
 sky130_fd_sc_hd__nand2_1 _1009_ (.A(\u_csr.sh_out[2] ),
    .B(_0311_),
    .Y(_0377_));
 sky130_fd_sc_hd__o21ai_0 _1010_ (.A1(_0312_),
    .A2(_0376_),
    .B1(_0377_),
    .Y(_0257_));
 sky130_fd_sc_hd__nand2_1 _1011_ (.A(\u_csr.sh_out[1] ),
    .B(_0311_),
    .Y(_0378_));
 sky130_fd_sc_hd__nand2_1 _1012_ (.A(net60),
    .B(\u_csr.st_sync[2] ),
    .Y(_0379_));
 sky130_fd_sc_hd__nand3b_1 _1013_ (.A_N(net60),
    .B(\u_csr.r_ens[2] ),
    .C(\u_csr.addr_r[0] ),
    .Y(_0380_));
 sky130_fd_sc_hd__o21ai_0 _1014_ (.A1(\u_csr.addr_r[0] ),
    .A2(_0379_),
    .B1(_0380_),
    .Y(_0381_));
 sky130_fd_sc_hd__nor2_1 _1015_ (.A(net60),
    .B(_0327_),
    .Y(_0382_));
 sky130_fd_sc_hd__a32o_1 _1016_ (.A1(\u_csr.r_mdiv[2] ),
    .A2(_0382_),
    .A3(_0364_),
    .B1(_0336_),
    .B2(\u_csr.r_test[2] ),
    .X(_0383_));
 sky130_fd_sc_hd__a311oi_1 _1017_ (.A1(_0302_),
    .A2(_0303_),
    .A3(_0381_),
    .B1(_0383_),
    .C1(_0334_),
    .Y(_0384_));
 sky130_fd_sc_hd__mux2i_1 _1018_ (.A0(\u_csr.r_cpiset[2] ),
    .A1(\u_csr.r_lockw[2] ),
    .S(net62),
    .Y(_0385_));
 sky130_fd_sc_hd__nand2_1 _1019_ (.A(_0314_),
    .B(_0385_),
    .Y(_0386_));
 sky130_fd_sc_hd__nand2_1 _1020_ (.A(\u_csr.r_odiv[2] ),
    .B(_0307_),
    .Y(_0387_));
 sky130_fd_sc_hd__a21oi_1 _1021_ (.A1(_0302_),
    .A2(\u_csr.r_ctrl[2] ),
    .B1(net61),
    .Y(_0388_));
 sky130_fd_sc_hd__mux2_2 _1022_ (.A0(\u_csr.r_vcobnd[2] ),
    .A1(\u_csr.r_seqdly[2] ),
    .S(net62),
    .X(_0389_));
 sky130_fd_sc_hd__nand2_1 _1023_ (.A(net61),
    .B(_0389_),
    .Y(_0390_));
 sky130_fd_sc_hd__o221ai_1 _1024_ (.A1(net61),
    .A2(_0387_),
    .B1(_0388_),
    .B2(\u_csr.addr_r[0] ),
    .C1(_0390_),
    .Y(_0391_));
 sky130_fd_sc_hd__a32oi_1 _1025_ (.A1(net59),
    .A2(_0386_),
    .A3(_0391_),
    .B1(_0311_),
    .B2(\u_csr.sh_out[1] ),
    .Y(_0392_));
 sky130_fd_sc_hd__a22oi_1 _1026_ (.A1(_0312_),
    .A2(_0378_),
    .B1(_0384_),
    .B2(_0392_),
    .Y(_0256_));
 sky130_fd_sc_hd__nor2_1 _1027_ (.A(\u_csr.addr_r[0] ),
    .B(net62),
    .Y(_0393_));
 sky130_fd_sc_hd__nor3b_1 _1028_ (.A(net60),
    .B(_0373_),
    .C_N(net61),
    .Y(_0394_));
 sky130_fd_sc_hd__a32o_1 _1029_ (.A1(\u_csr.addr_r[3] ),
    .A2(\u_csr.st_sync[1] ),
    .A3(_0303_),
    .B1(_0394_),
    .B2(\u_csr.r_cpiset[1] ),
    .X(_0395_));
 sky130_fd_sc_hd__nand2_1 _1030_ (.A(_0393_),
    .B(_0395_),
    .Y(_0396_));
 sky130_fd_sc_hd__nand3b_1 _1031_ (.A_N(net61),
    .B(\u_csr.r_ens[1] ),
    .C(_0324_),
    .Y(_0397_));
 sky130_fd_sc_hd__nand3_1 _1032_ (.A(net61),
    .B(\u_csr.r_vcobnd[1] ),
    .C(_0324_),
    .Y(_0398_));
 sky130_fd_sc_hd__nor2_1 _1033_ (.A(net63),
    .B(net61),
    .Y(_0399_));
 sky130_fd_sc_hd__nand3_1 _1034_ (.A(net62),
    .B(\u_csr.r_mdiv[1] ),
    .C(_0399_),
    .Y(_0400_));
 sky130_fd_sc_hd__nand3_1 _1035_ (.A(net61),
    .B(\u_csr.r_lockw[1] ),
    .C(_0364_),
    .Y(_0401_));
 sky130_fd_sc_hd__nand4_1 _1036_ (.A(_0397_),
    .B(_0398_),
    .C(_0400_),
    .D(_0401_),
    .Y(_0402_));
 sky130_fd_sc_hd__mux2i_1 _1037_ (.A0(\u_csr.r_odiv[1] ),
    .A1(\u_csr.r_seqdly[1] ),
    .S(net61),
    .Y(_0403_));
 sky130_fd_sc_hd__nor2b_1 _1038_ (.A(_0403_),
    .B_N(_0307_),
    .Y(_0404_));
 sky130_fd_sc_hd__o21ai_0 _1039_ (.A1(_0402_),
    .A2(_0404_),
    .B1(net59),
    .Y(_0405_));
 sky130_fd_sc_hd__nand2_1 _1040_ (.A(\u_csr.sh_out[0] ),
    .B(_0311_),
    .Y(_0406_));
 sky130_fd_sc_hd__nand4b_1 _1041_ (.A_N(\u_csr.addr_r[3] ),
    .B(\u_csr.r_ctrl[1] ),
    .C(_0303_),
    .D(_0393_),
    .Y(_0407_));
 sky130_fd_sc_hd__nand2_1 _1042_ (.A(_0406_),
    .B(_0407_),
    .Y(_0408_));
 sky130_fd_sc_hd__a21oi_1 _1043_ (.A1(\u_csr.r_test[1] ),
    .A2(_0336_),
    .B1(_0408_),
    .Y(_0409_));
 sky130_fd_sc_hd__a32oi_1 _1044_ (.A1(_0396_),
    .A2(_0405_),
    .A3(_0409_),
    .B1(_0406_),
    .B2(_0312_),
    .Y(_0255_));
 sky130_fd_sc_hd__mux2i_1 _1045_ (.A0(\u_csr.r_cpiset[0] ),
    .A1(\u_csr.r_lockw[0] ),
    .S(net62),
    .Y(_0410_));
 sky130_fd_sc_hd__a2bb2oi_1 _1046_ (.A1_N(\u_csr.addr_r[0] ),
    .A2_N(_0410_),
    .B1(_0307_),
    .B2(\u_csr.r_seqdly[0] ),
    .Y(_0411_));
 sky130_fd_sc_hd__mux2_2 _1047_ (.A0(\u_csr.r_ens[0] ),
    .A1(\u_csr.r_odiv[0] ),
    .S(net62),
    .X(_0412_));
 sky130_fd_sc_hd__a221oi_1 _1048_ (.A1(\u_csr.r_ctrl[0] ),
    .A2(_0393_),
    .B1(_0412_),
    .B2(\u_csr.addr_r[0] ),
    .C1(net61),
    .Y(_0413_));
 sky130_fd_sc_hd__a21oi_1 _1049_ (.A1(net61),
    .A2(_0411_),
    .B1(_0413_),
    .Y(_0414_));
 sky130_fd_sc_hd__nand2_1 _1050_ (.A(net59),
    .B(_0414_),
    .Y(_0415_));
 sky130_fd_sc_hd__a31oi_1 _1051_ (.A1(\u_csr.r_vcobnd[0] ),
    .A2(_0324_),
    .A3(_0394_),
    .B1(_0334_),
    .Y(_0416_));
 sky130_fd_sc_hd__nand2_1 _1052_ (.A(\u_csr.addr_r[3] ),
    .B(\u_csr.st_sync[0] ),
    .Y(_0417_));
 sky130_fd_sc_hd__nand3b_1 _1053_ (.A_N(\u_csr.addr_r[3] ),
    .B(\u_csr.r_mdiv[0] ),
    .C(net62),
    .Y(_0418_));
 sky130_fd_sc_hd__o21ai_0 _1054_ (.A1(net62),
    .A2(_0417_),
    .B1(_0418_),
    .Y(_0419_));
 sky130_fd_sc_hd__nor2_1 _1055_ (.A(net63),
    .B(_0327_),
    .Y(_0420_));
 sky130_fd_sc_hd__a22oi_1 _1056_ (.A1(\u_csr.r_test[0] ),
    .A2(_0336_),
    .B1(_0419_),
    .B2(_0420_),
    .Y(_0421_));
 sky130_fd_sc_hd__a31oi_1 _1057_ (.A1(_0415_),
    .A2(_0416_),
    .A3(_0421_),
    .B1(_0312_),
    .Y(_0254_));
 sky130_fd_sc_hd__inv_1 _1058_ (.A(\c_seqdly[0] ),
    .Y(_0025_));
 sky130_fd_sc_hd__inv_1 _1059_ (.A(\u_clkout.N[2] ),
    .Y(_0017_));
 sky130_fd_sc_hd__inv_1 _1060_ (.A(\u_clkout.N[1] ),
    .Y(_0042_));
 sky130_fd_sc_hd__inv_1 _1061_ (.A(\u_lock.lockw_s[1] ),
    .Y(_0020_));
 sky130_fd_sc_hd__inv_1 _1062_ (.A(\c_seqdly[4] ),
    .Y(_0061_));
 sky130_fd_sc_hd__inv_1 _1063_ (.A(\u_clkout.N[0] ),
    .Y(_0030_));
 sky130_fd_sc_hd__inv_1 _1064_ (.A(\u_csr.bit_cnt[0] ),
    .Y(_0070_));
 sky130_fd_sc_hd__inv_1 _1065_ (.A(net6),
    .Y(_0084_));
 sky130_fd_sc_hd__nor2_1 _1067_ (.A(\u_csr.rw_r ),
    .B(net6),
    .Y(_0423_));
 sky130_fd_sc_hd__nand4_1 _1068_ (.A(\u_csr.bit_cnt[3] ),
    .B(\u_csr.bit_cnt[2] ),
    .C(_0073_),
    .D(_0423_),
    .Y(_0424_));
 sky130_fd_sc_hd__nor3_4 _1069_ (.A(net60),
    .B(_0327_),
    .C(_0424_),
    .Y(_0425_));
 sky130_fd_sc_hd__nand2_2 _1070_ (.A(_0324_),
    .B(_0425_),
    .Y(_0426_));
 sky130_fd_sc_hd__mux2_2 _1071_ (.A0(\u_csr.shreg[5] ),
    .A1(\u_csr.r_ens[6] ),
    .S(_0426_),
    .X(_0085_));
 sky130_fd_sc_hd__mux2_2 _1072_ (.A0(\u_csr.shreg[4] ),
    .A1(\u_csr.r_ens[5] ),
    .S(_0426_),
    .X(_0086_));
 sky130_fd_sc_hd__mux2_2 _1073_ (.A0(\u_csr.shreg[3] ),
    .A1(\u_csr.r_ens[4] ),
    .S(_0426_),
    .X(_0087_));
 sky130_fd_sc_hd__mux2_2 _1074_ (.A0(\u_csr.shreg[2] ),
    .A1(\u_csr.r_ens[3] ),
    .S(_0426_),
    .X(_0088_));
 sky130_fd_sc_hd__mux2_1 _1075_ (.A0(\u_csr.shreg[1] ),
    .A1(\u_csr.r_ens[2] ),
    .S(_0426_),
    .X(_0089_));
 sky130_fd_sc_hd__mux2_2 _1076_ (.A0(\u_csr.shreg[0] ),
    .A1(\u_csr.r_ens[1] ),
    .S(_0426_),
    .X(_0090_));
 sky130_fd_sc_hd__mux2_2 _1077_ (.A0(net7),
    .A1(\u_csr.r_ens[0] ),
    .S(_0426_),
    .X(_0091_));
 sky130_fd_sc_hd__nand2_2 _1078_ (.A(_0393_),
    .B(_0425_),
    .Y(_0427_));
 sky130_fd_sc_hd__mux2_2 _1079_ (.A0(\u_csr.shreg[5] ),
    .A1(\u_csr.r_ctrl[6] ),
    .S(_0427_),
    .X(_0092_));
 sky130_fd_sc_hd__mux2_2 _1080_ (.A0(\u_csr.shreg[4] ),
    .A1(\u_csr.r_ctrl[5] ),
    .S(_0427_),
    .X(_0093_));
 sky130_fd_sc_hd__mux2_2 _1081_ (.A0(\u_csr.shreg[3] ),
    .A1(\u_csr.r_ctrl[4] ),
    .S(_0427_),
    .X(_0094_));
 sky130_fd_sc_hd__mux2_2 _1082_ (.A0(\u_csr.shreg[2] ),
    .A1(\u_csr.r_ctrl[3] ),
    .S(_0427_),
    .X(_0095_));
 sky130_fd_sc_hd__mux2_2 _1083_ (.A0(\u_csr.shreg[1] ),
    .A1(\u_csr.r_ctrl[2] ),
    .S(_0427_),
    .X(_0096_));
 sky130_fd_sc_hd__mux2_2 _1084_ (.A0(\u_csr.shreg[0] ),
    .A1(\u_csr.r_ctrl[1] ),
    .S(_0427_),
    .X(_0097_));
 sky130_fd_sc_hd__mux2_1 _1085_ (.A0(net7),
    .A1(\u_csr.r_ctrl[0] ),
    .S(_0427_),
    .X(_0098_));
 sky130_fd_sc_hd__inv_1 _1086_ (.A(_0336_),
    .Y(_0428_));
 sky130_fd_sc_hd__nor2_2 _1087_ (.A(_0428_),
    .B(_0424_),
    .Y(_0429_));
 sky130_fd_sc_hd__mux2_2 _1088_ (.A0(\u_csr.r_test[6] ),
    .A1(\u_csr.shreg[5] ),
    .S(_0429_),
    .X(_0099_));
 sky130_fd_sc_hd__mux2_2 _1089_ (.A0(\u_csr.r_test[5] ),
    .A1(\u_csr.shreg[4] ),
    .S(_0429_),
    .X(_0100_));
 sky130_fd_sc_hd__mux2_2 _1090_ (.A0(\u_csr.r_test[4] ),
    .A1(\u_csr.shreg[3] ),
    .S(_0429_),
    .X(_0101_));
 sky130_fd_sc_hd__mux2_2 _1091_ (.A0(\u_csr.r_test[3] ),
    .A1(\u_csr.shreg[2] ),
    .S(_0429_),
    .X(_0102_));
 sky130_fd_sc_hd__mux2_2 _1092_ (.A0(\u_csr.r_test[2] ),
    .A1(\u_csr.shreg[1] ),
    .S(_0429_),
    .X(_0103_));
 sky130_fd_sc_hd__mux2_2 _1093_ (.A0(\u_csr.r_test[1] ),
    .A1(\u_csr.shreg[0] ),
    .S(_0429_),
    .X(_0104_));
 sky130_fd_sc_hd__mux2_2 _1094_ (.A0(\u_csr.r_test[0] ),
    .A1(net7),
    .S(_0429_),
    .X(_0105_));
 sky130_fd_sc_hd__nor4b_2 _1095_ (.A(net60),
    .B(_0373_),
    .C(_0424_),
    .D_N(net61),
    .Y(_0430_));
 sky130_fd_sc_hd__nand2_1 _1096_ (.A(_0307_),
    .B(_0430_),
    .Y(_0431_));
 sky130_fd_sc_hd__mux2_2 _1097_ (.A0(\u_csr.shreg[5] ),
    .A1(\u_csr.r_seqdly[6] ),
    .S(_0431_),
    .X(_0106_));
 sky130_fd_sc_hd__mux2_2 _1098_ (.A0(\u_csr.shreg[4] ),
    .A1(\u_csr.r_seqdly[5] ),
    .S(_0431_),
    .X(_0107_));
 sky130_fd_sc_hd__mux2_2 _1099_ (.A0(\u_csr.shreg[3] ),
    .A1(\u_csr.r_seqdly[4] ),
    .S(_0431_),
    .X(_0108_));
 sky130_fd_sc_hd__mux2_2 _1100_ (.A0(\u_csr.shreg[2] ),
    .A1(\u_csr.r_seqdly[3] ),
    .S(_0431_),
    .X(_0109_));
 sky130_fd_sc_hd__mux2_2 _1101_ (.A0(\u_csr.shreg[1] ),
    .A1(\u_csr.r_seqdly[2] ),
    .S(_0431_),
    .X(_0110_));
 sky130_fd_sc_hd__mux2_2 _1102_ (.A0(\u_csr.shreg[0] ),
    .A1(\u_csr.r_seqdly[1] ),
    .S(_0431_),
    .X(_0111_));
 sky130_fd_sc_hd__mux2_2 _1103_ (.A0(net7),
    .A1(\u_csr.r_seqdly[0] ),
    .S(_0431_),
    .X(_0112_));
 sky130_fd_sc_hd__xor2_4 _1104_ (.A(\u_csr.u_commit.s[2] ),
    .B(\u_csr.u_commit.s[1] ),
    .X(_0432_));
 sky130_fd_sc_hd__nand2_1 _1107_ (.A(\u_csr.r_seqdly[6] ),
    .B(net58),
    .Y(_0435_));
 sky130_fd_sc_hd__o21ai_0 _1108_ (.A1(_0064_),
    .A2(net58),
    .B1(_0435_),
    .Y(_0113_));
 sky130_fd_sc_hd__inv_1 _1109_ (.A(\c_seqdly[5] ),
    .Y(_0033_));
 sky130_fd_sc_hd__nand2_1 _1110_ (.A(\u_csr.r_seqdly[5] ),
    .B(net58),
    .Y(_0436_));
 sky130_fd_sc_hd__o21ai_0 _1111_ (.A1(_0033_),
    .A2(net58),
    .B1(_0436_),
    .Y(_0114_));
 sky130_fd_sc_hd__nand2_1 _1113_ (.A(\u_csr.r_seqdly[4] ),
    .B(net58),
    .Y(_0438_));
 sky130_fd_sc_hd__o21ai_0 _1114_ (.A1(_0061_),
    .A2(net58),
    .B1(_0438_),
    .Y(_0115_));
 sky130_fd_sc_hd__nand2_1 _1115_ (.A(\u_csr.r_seqdly[3] ),
    .B(net58),
    .Y(_0439_));
 sky130_fd_sc_hd__o21ai_0 _1116_ (.A1(_0005_),
    .A2(net58),
    .B1(_0439_),
    .Y(_0116_));
 sky130_fd_sc_hd__inv_1 _1117_ (.A(\c_seqdly[2] ),
    .Y(_0067_));
 sky130_fd_sc_hd__nand2_1 _1118_ (.A(\u_csr.r_seqdly[2] ),
    .B(net58),
    .Y(_0440_));
 sky130_fd_sc_hd__o21ai_0 _1119_ (.A1(_0067_),
    .A2(net58),
    .B1(_0440_),
    .Y(_0117_));
 sky130_fd_sc_hd__inv_1 _1120_ (.A(\c_seqdly[1] ),
    .Y(_0038_));
 sky130_fd_sc_hd__nand2_1 _1121_ (.A(\u_csr.r_seqdly[1] ),
    .B(net58),
    .Y(_0441_));
 sky130_fd_sc_hd__o21ai_0 _1122_ (.A1(_0038_),
    .A2(net58),
    .B1(_0441_),
    .Y(_0118_));
 sky130_fd_sc_hd__nand2_1 _1123_ (.A(\u_csr.r_seqdly[0] ),
    .B(net58),
    .Y(_0442_));
 sky130_fd_sc_hd__o21ai_0 _1124_ (.A1(_0025_),
    .A2(net58),
    .B1(_0442_),
    .Y(_0119_));
 sky130_fd_sc_hd__mux2_2 _1125_ (.A0(\c_lockw[4] ),
    .A1(\u_csr.r_lockw[4] ),
    .S(net58),
    .X(_0120_));
 sky130_fd_sc_hd__mux2_2 _1126_ (.A0(\c_lockw[3] ),
    .A1(\u_csr.r_lockw[3] ),
    .S(net58),
    .X(_0121_));
 sky130_fd_sc_hd__mux2_2 _1127_ (.A0(\c_lockw[2] ),
    .A1(\u_csr.r_lockw[2] ),
    .S(net58),
    .X(_0122_));
 sky130_fd_sc_hd__mux2_2 _1128_ (.A0(\c_lockw[1] ),
    .A1(\u_csr.r_lockw[1] ),
    .S(net58),
    .X(_0123_));
 sky130_fd_sc_hd__mux2_2 _1130_ (.A0(\c_lockw[0] ),
    .A1(\u_csr.r_lockw[0] ),
    .S(net58),
    .X(_0124_));
 sky130_fd_sc_hd__mux2_2 _1131_ (.A0(net42),
    .A1(\u_csr.r_vcobnd[6] ),
    .S(_0432_),
    .X(_0125_));
 sky130_fd_sc_hd__mux2_2 _1132_ (.A0(net41),
    .A1(\u_csr.r_vcobnd[5] ),
    .S(net58),
    .X(_0126_));
 sky130_fd_sc_hd__mux2_2 _1133_ (.A0(net40),
    .A1(\u_csr.r_vcobnd[4] ),
    .S(net58),
    .X(_0127_));
 sky130_fd_sc_hd__mux2_2 _1134_ (.A0(net39),
    .A1(\u_csr.r_vcobnd[3] ),
    .S(net58),
    .X(_0128_));
 sky130_fd_sc_hd__mux2_2 _1135_ (.A0(net38),
    .A1(\u_csr.r_vcobnd[2] ),
    .S(net58),
    .X(_0129_));
 sky130_fd_sc_hd__mux2_2 _1136_ (.A0(net37),
    .A1(\u_csr.r_vcobnd[1] ),
    .S(net58),
    .X(_0130_));
 sky130_fd_sc_hd__mux2_2 _1137_ (.A0(net36),
    .A1(\u_csr.r_vcobnd[0] ),
    .S(_0432_),
    .X(_0131_));
 sky130_fd_sc_hd__nand2_1 _1138_ (.A(_0364_),
    .B(_0430_),
    .Y(_0444_));
 sky130_fd_sc_hd__ha_1 _1139_ (.A(\u_lock.dn_run[0] ),
    .B(\u_lock.dn_run[1] ),
    .COUT(_0003_),
    .SUM(_0004_));
 sky130_fd_sc_hd__ha_1 _1140_ (.A(_0005_),
    .B(\u_seq.dwell[3] ),
    .COUT(_0006_),
    .SUM(_0007_));
 sky130_fd_sc_hd__ha_1 _1141_ (.A(\u_lock.good_cnt[2] ),
    .B(_0008_),
    .COUT(_0009_),
    .SUM(_0010_));
 sky130_fd_sc_hd__ha_1 _1142_ (.A(\u_lock.good_cnt[3] ),
    .B(_0011_),
    .COUT(_0012_),
    .SUM(_0013_));
 sky130_fd_sc_hd__ha_1 _1143_ (.A(_0014_),
    .B(\u_lock.lockw_s[0] ),
    .COUT(_0015_),
    .SUM(_0016_));
 sky130_fd_sc_hd__ha_1 _1144_ (.A(\u_clkout.cnt[1] ),
    .B(_0017_),
    .COUT(_0018_),
    .SUM(_0019_));
 sky130_fd_sc_hd__ha_1 _1145_ (.A(\u_lock.good_cnt[1] ),
    .B(_0020_),
    .COUT(_0021_),
    .SUM(_0022_));
 sky130_fd_sc_hd__ha_1 _1146_ (.A(\u_clkout.cnt[0] ),
    .B(\u_clkout.cnt[1] ),
    .COUT(_0023_),
    .SUM(_0024_));
 sky130_fd_sc_hd__ha_1 _1147_ (.A(_0025_),
    .B(\u_seq.dwell[0] ),
    .COUT(_0591_),
    .SUM(_0026_));
 sky130_fd_sc_hd__ha_1 _1148_ (.A(\c_seqdly[0] ),
    .B(_0027_),
    .COUT(_0028_),
    .SUM(_0592_));
 sky130_fd_sc_hd__ha_1 _1149_ (.A(_0029_),
    .B(_0030_),
    .COUT(_0031_),
    .SUM(_0032_));
 sky130_fd_sc_hd__ha_1 _1150_ (.A(_0033_),
    .B(\u_seq.dwell[5] ),
    .COUT(_0034_),
    .SUM(_0035_));
 sky130_fd_sc_hd__ha_1 _1151_ (.A(\u_lock.up_run[0] ),
    .B(\u_lock.up_run[1] ),
    .COUT(_0036_),
    .SUM(_0037_));
 sky130_fd_sc_hd__ha_1 _1152_ (.A(_0038_),
    .B(\u_seq.dwell[1] ),
    .COUT(_0039_),
    .SUM(_0040_));
 sky130_fd_sc_hd__ha_1 _1153_ (.A(_0029_),
    .B(\u_clkout.N[1] ),
    .COUT(_0041_),
    .SUM(_0589_));
 sky130_fd_sc_hd__ha_1 _1154_ (.A(_0043_),
    .B(\u_seq.dwell[7] ),
    .COUT(_0044_),
    .SUM(_0045_));
 sky130_fd_sc_hd__ha_1 _1155_ (.A(_0046_),
    .B(\u_clkout.cnt[2] ),
    .COUT(_0047_),
    .SUM(_0048_));
 sky130_fd_sc_hd__ha_1 _1156_ (.A(\u_lock.good_cnt[4] ),
    .B(_0049_),
    .COUT(_0050_),
    .SUM(_0051_));
 sky130_fd_sc_hd__ha_1 _1157_ (.A(\u_lock.good_cnt[0] ),
    .B(\u_lock.good_cnt[1] ),
    .COUT(_0052_),
    .SUM(_0053_));
 sky130_fd_sc_hd__ha_1 _1158_ (.A(\u_lock.good_cnt[5] ),
    .B(_0054_),
    .COUT(_0055_),
    .SUM(_0056_));
 sky130_fd_sc_hd__ha_1 _1159_ (.A(\u_seq.dwell[0] ),
    .B(\u_seq.dwell[1] ),
    .COUT(_0057_),
    .SUM(_0058_));
 sky130_fd_sc_hd__ha_1 _1160_ (.A(_0030_),
    .B(_0042_),
    .COUT(_0059_),
    .SUM(_0593_));
 sky130_fd_sc_hd__ha_1 _1161_ (.A(\u_clkout.N[0] ),
    .B(_0042_),
    .COUT(_0060_),
    .SUM(_0594_));
 sky130_fd_sc_hd__ha_1 _1162_ (.A(_0061_),
    .B(\u_seq.dwell[4] ),
    .COUT(_0062_),
    .SUM(_0063_));
 sky130_fd_sc_hd__ha_1 _1163_ (.A(_0064_),
    .B(\u_seq.dwell[6] ),
    .COUT(_0065_),
    .SUM(_0066_));
 sky130_fd_sc_hd__ha_1 _1164_ (.A(_0067_),
    .B(\u_seq.dwell[2] ),
    .COUT(_0068_),
    .SUM(_0069_));
 sky130_fd_sc_hd__ha_1 _1165_ (.A(_0070_),
    .B(_0071_),
    .COUT(_0072_),
    .SUM(_0590_));
 sky130_fd_sc_hd__ha_1 _1166_ (.A(\u_csr.bit_cnt[0] ),
    .B(\u_csr.bit_cnt[1] ),
    .COUT(_0073_),
    .SUM(_0595_));
 sky130_fd_sc_hd__ha_1 _1167_ (.A(\u_csr.bit_cnt[0] ),
    .B(\u_csr.bit_cnt[1] ),
    .COUT(_0074_),
    .SUM(_0596_));
 sky130_fd_sc_hd__ha_1 _1168_ (.A(_0593_),
    .B(\u_clkout.cnt[1] ),
    .COUT(_0075_),
    .SUM(_0076_));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_0_pll_clk_i (.A(pll_clk_i),
    .X(clknet_0_pll_clk_i));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_0_pll_d2 (.A(pll_d2),
    .X(clknet_0_pll_d2));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_0_pll_d2_regs (.A(pll_d2_regs),
    .X(clknet_0_pll_d2_regs));
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
 sky130_fd_sc_hd__clkbuf_16 clkbuf_1_0__f_pll_d2 (.A(clknet_0_pll_d2),
    .X(clknet_1_0__leaf_pll_d2));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_1_0__f_refclk_i (.A(clknet_0_refclk_i),
    .X(clknet_1_0__leaf_refclk_i));
 sky130_fd_sc_hd__clkbuf_16 \clkbuf_1_0__f_u_clkout.sel_clk  (.A(\clknet_0_u_clkout.sel_clk ),
    .X(\clknet_1_0__leaf_u_clkout.sel_clk ));
 sky130_fd_sc_hd__clkbuf_16 \clkbuf_1_0__f_u_clkout.sel_clk_regs  (.A(\clknet_0_u_clkout.sel_clk_regs ),
    .X(\clknet_1_0__leaf_u_clkout.sel_clk_regs ));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_1_1__f_pll_clk_i (.A(clknet_0_pll_clk_i),
    .X(clknet_1_1__leaf_pll_clk_i));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_1_1__f_refclk_i (.A(delaynet_6_refclk),
    .X(clknet_1_1__leaf_refclk_i));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_2_0__f_pll_d2_regs (.A(clknet_0_pll_d2_regs),
    .X(clknet_2_0__leaf_pll_d2_regs));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_2_1__f_pll_d2_regs (.A(clknet_0_pll_d2_regs),
    .X(clknet_2_1__leaf_pll_d2_regs));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_2_2__f_pll_d2_regs (.A(clknet_0_pll_d2_regs),
    .X(clknet_2_2__leaf_pll_d2_regs));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_2_3__f_pll_d2_regs (.A(clknet_0_pll_d2_regs),
    .X(clknet_2_3__leaf_pll_d2_regs));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_3_0__f_refclk_i_regs (.A(clknet_0_refclk_i_regs),
    .X(clknet_3_0__leaf_refclk_i_regs));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_3_0__f_spi_sclk_i (.A(clknet_0_spi_sclk_i),
    .X(clknet_3_0__leaf_spi_sclk_i));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_3_1__f_refclk_i_regs (.A(clknet_0_refclk_i_regs),
    .X(clknet_3_1__leaf_refclk_i_regs));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_3_1__f_spi_sclk_i (.A(clknet_0_spi_sclk_i),
    .X(clknet_3_1__leaf_spi_sclk_i));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_3_2__f_refclk_i_regs (.A(clknet_0_refclk_i_regs),
    .X(clknet_3_2__leaf_refclk_i_regs));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_3_2__f_spi_sclk_i (.A(clknet_0_spi_sclk_i),
    .X(clknet_3_2__leaf_spi_sclk_i));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_3_3__f_refclk_i_regs (.A(clknet_0_refclk_i_regs),
    .X(clknet_3_3__leaf_refclk_i_regs));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_3_3__f_spi_sclk_i (.A(clknet_0_spi_sclk_i),
    .X(clknet_3_3__leaf_spi_sclk_i));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_3_4__f_refclk_i_regs (.A(clknet_0_refclk_i_regs),
    .X(clknet_3_4__leaf_refclk_i_regs));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_3_4__f_spi_sclk_i (.A(clknet_0_spi_sclk_i),
    .X(clknet_3_4__leaf_spi_sclk_i));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_3_5__f_refclk_i_regs (.A(clknet_0_refclk_i_regs),
    .X(clknet_3_5__leaf_refclk_i_regs));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_3_5__f_spi_sclk_i (.A(clknet_0_spi_sclk_i),
    .X(clknet_3_5__leaf_spi_sclk_i));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_3_6__f_refclk_i_regs (.A(clknet_0_refclk_i_regs),
    .X(clknet_3_6__leaf_refclk_i_regs));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_3_6__f_spi_sclk_i (.A(clknet_0_spi_sclk_i),
    .X(clknet_3_6__leaf_spi_sclk_i));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_3_7__f_refclk_i_regs (.A(clknet_0_refclk_i_regs),
    .X(clknet_3_7__leaf_refclk_i_regs));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_3_7__f_spi_sclk_i (.A(clknet_0_spi_sclk_i),
    .X(clknet_3_7__leaf_spi_sclk_i));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_regs_0_refclk (.A(delaynet_8_refclk),
    .X(refclk_i_regs));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_regs_1_refclk (.A(\u_clkout.sel_clk ),
    .X(\u_clkout.sel_clk_regs ));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_regs_2_pll_d2 (.A(delaynet_3_pll_d2),
    .X(pll_d2_regs));
 sky130_fd_sc_hd__clkbuf_1 clkload0 (.A(clknet_1_1__leaf_pll_clk_i));
 sky130_fd_sc_hd__clkbuf_2 clkload1 (.A(clknet_1_1__leaf_refclk_i));
 sky130_fd_sc_hd__clkinv_2 clkload10 (.A(clknet_3_2__leaf_spi_sclk_i));
 sky130_fd_sc_hd__inv_6 clkload11 (.A(clknet_3_3__leaf_spi_sclk_i));
 sky130_fd_sc_hd__clkinv_4 clkload12 (.A(clknet_3_4__leaf_spi_sclk_i));
 sky130_fd_sc_hd__clkbuf_1 clkload13 (.A(clknet_3_5__leaf_spi_sclk_i));
 sky130_fd_sc_hd__clkinvlp_4 clkload14 (.A(clknet_3_6__leaf_spi_sclk_i));
 sky130_fd_sc_hd__clkbuf_1 clkload15 (.A(clknet_3_7__leaf_spi_sclk_i));
 sky130_fd_sc_hd__clkinvlp_2 clkload16 (.A(clknet_2_0__leaf_pll_d2_regs));
 sky130_fd_sc_hd__clkbuf_8 clkload17 (.A(clknet_2_1__leaf_pll_d2_regs));
 sky130_fd_sc_hd__inv_6 clkload18 (.A(clknet_2_3__leaf_pll_d2_regs));
 sky130_fd_sc_hd__clkinv_8 clkload2 (.A(clknet_3_0__leaf_refclk_i_regs));
 sky130_fd_sc_hd__clkinv_8 clkload3 (.A(clknet_3_1__leaf_refclk_i_regs));
 sky130_fd_sc_hd__clkinv_4 clkload4 (.A(clknet_3_2__leaf_refclk_i_regs));
 sky130_fd_sc_hd__inv_8 clkload5 (.A(clknet_3_3__leaf_refclk_i_regs));
 sky130_fd_sc_hd__inv_8 clkload6 (.A(clknet_3_4__leaf_refclk_i_regs));
 sky130_fd_sc_hd__clkinv_4 clkload7 (.A(clknet_3_5__leaf_refclk_i_regs));
 sky130_fd_sc_hd__clkinv_4 clkload8 (.A(clknet_3_6__leaf_refclk_i_regs));
 sky130_fd_sc_hd__bufinv_16 clkload9 (.A(clknet_3_0__leaf_spi_sclk_i));
 sky130_fd_sc_hd__dfrtp_1 \cs_core[0]$_DFF_PN0_  (.D(net),
    .Q(\cs_core[0] ),
    .RESET_B(net3),
    .CLK(clknet_3_2__leaf_refclk_i_regs));
 sky130_fd_sc_hd__conb_1 \cs_core[0]$_DFF_PN0__1  (.HI(net));
 sky130_fd_sc_hd__dfrtp_4 \cs_core[1]$_DFF_PN0_  (.D(\cs_core[0] ),
    .Q(core_rst_n),
    .RESET_B(net3),
    .CLK(clknet_3_2__leaf_refclk_i_regs));
 sky130_fd_sc_hd__dfrtp_1 \cs_pll[0]$_DFF_PN0_  (.D(net1),
    .Q(\cs_pll[0] ),
    .RESET_B(net3),
    .CLK(clknet_1_0__leaf_pll_clk_i));
 sky130_fd_sc_hd__conb_1 \cs_pll[0]$_DFF_PN0__2  (.HI(net1));
 sky130_fd_sc_hd__dfrtp_2 \cs_pll[1]$_DFF_PN0_  (.D(\cs_pll[0] ),
    .Q(\cs_pll[1] ),
    .RESET_B(net3),
    .CLK(clknet_1_0__leaf_pll_clk_i));
 sky130_fd_sc_hd__clkbuf_16 delaybuf_0_pll_d2 (.A(pll_d2),
    .X(delaynet_0_pll_d2));
 sky130_fd_sc_hd__clkbuf_16 delaybuf_0_refclk (.A(clknet_0_refclk_i),
    .X(delaynet_0_refclk));
 sky130_fd_sc_hd__clkbuf_16 delaybuf_1_pll_d2 (.A(delaynet_0_pll_d2),
    .X(delaynet_1_pll_d2));
 sky130_fd_sc_hd__clkbuf_16 delaybuf_1_refclk (.A(delaynet_0_refclk),
    .X(delaynet_1_refclk));
 sky130_fd_sc_hd__clkbuf_16 delaybuf_2_pll_d2 (.A(delaynet_1_pll_d2),
    .X(delaynet_2_pll_d2));
 sky130_fd_sc_hd__clkbuf_16 delaybuf_2_refclk (.A(delaynet_1_refclk),
    .X(delaynet_2_refclk));
 sky130_fd_sc_hd__clkbuf_16 delaybuf_3_pll_d2 (.A(delaynet_2_pll_d2),
    .X(delaynet_3_pll_d2));
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
 sky130_fd_sc_hd__clkbuf_16 delaybuf_8_refclk (.A(delaynet_7_refclk),
    .X(delaynet_8_refclk));
 sky130_fd_sc_hd__dlygate4sd3_1 hold70 (.A(net71),
    .X(net69));
 sky130_fd_sc_hd__buf_16 hold71 (.A(net64),
    .X(net70));
 sky130_fd_sc_hd__dlygate4sd3_1 hold72 (.A(\cs_pll[1] ),
    .X(net71));
 sky130_fd_sc_hd__dlygate4sd3_1 hold73 (.A(net69),
    .X(net72));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input10 (.A(up_i),
    .X(net9));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input3 (.A(dn_i),
    .X(net2));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input4 (.A(rst_n_i),
    .X(net3));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input5 (.A(scan_en_i),
    .X(net4));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input6 (.A(scan_in_i),
    .X(net5));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input7 (.A(spi_cs_n_i),
    .X(net6));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input8 (.A(spi_sdi_i),
    .X(net7));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input9 (.A(test_mode_i),
    .X(net8));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output11 (.A(net10),
    .X(clk_out_o));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output12 (.A(net11),
    .X(cp_iset_o[0]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output13 (.A(net12),
    .X(cp_iset_o[1]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output14 (.A(net13),
    .X(cp_iset_o[2]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output15 (.A(net14),
    .X(cp_iset_o[3]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output16 (.A(net15),
    .X(cp_iset_o[4]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output17 (.A(net16),
    .X(cp_iset_o[5]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output18 (.A(net17),
    .X(cp_iset_o[6]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output19 (.A(net18),
    .X(cp_iset_o[7]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output20 (.A(net19),
    .X(div_rst_o));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output21 (.A(net20),
    .X(en_cp_o));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output22 (.A(net21),
    .X(en_vco_o));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output23 (.A(net22),
    .X(en_vreg_o));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output24 (.A(net23),
    .X(lock_o));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output25 (.A(net24),
    .X(m_div_o[0]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output26 (.A(net25),
    .X(m_div_o[1]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output27 (.A(net26),
    .X(m_div_o[2]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output28 (.A(net27),
    .X(m_div_o[3]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output29 (.A(net28),
    .X(m_div_o[4]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output30 (.A(net29),
    .X(m_div_o[5]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output31 (.A(net30),
    .X(m_div_o[6]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output32 (.A(net31),
    .X(m_div_o[7]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output33 (.A(net32),
    .X(pll_en_o));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output34 (.A(net33),
    .X(ref_o));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output35 (.A(net34),
    .X(scan_out_o));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output36 (.A(net35),
    .X(spi_sdo_o));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output37 (.A(net36),
    .X(vco_band_o[0]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output38 (.A(net37),
    .X(vco_band_o[1]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output39 (.A(net38),
    .X(vco_band_o[2]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output40 (.A(net39),
    .X(vco_band_o[3]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output41 (.A(net40),
    .X(vco_band_o[4]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output42 (.A(net41),
    .X(vco_band_o[5]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output43 (.A(net42),
    .X(vco_band_o[6]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output44 (.A(net43),
    .X(vco_band_o[7]));
 sky130_fd_sc_hd__buf_4 place58 (.A(_0499_),
    .X(net57));
 sky130_fd_sc_hd__buf_4 place59 (.A(_0432_),
    .X(net58));
 sky130_fd_sc_hd__buf_4 place60 (.A(_0305_),
    .X(net59));
 sky130_fd_sc_hd__buf_4 place61 (.A(\u_csr.addr_r[3] ),
    .X(net60));
 sky130_fd_sc_hd__buf_4 place62 (.A(\u_csr.addr_r[2] ),
    .X(net61));
 sky130_fd_sc_hd__buf_4 place63 (.A(\u_csr.addr_r[1] ),
    .X(net62));
 sky130_fd_sc_hd__buf_4 place64 (.A(\u_csr.addr_r[0] ),
    .X(net63));
 sky130_fd_sc_hd__buf_4 place65 (.A(net72),
    .X(net64));
 sky130_fd_sc_hd__buf_4 place66 (.A(net66),
    .X(net65));
 sky130_fd_sc_hd__buf_12 place67 (.A(core_rst_n),
    .X(net66));
 sky130_fd_sc_hd__buf_4 place68 (.A(_0084_),
    .X(net67));
 sky130_fd_sc_hd__dfrtp_1 \pll_d2$_DFF_PN0_  (.D(net68),
    .Q(pll_d2),
    .RESET_B(net64),
    .CLK(clknet_1_1__leaf_pll_clk_i));
 sky130_fd_sc_hd__dfrtp_1 \scan_ff$_DFFE_PN0P_  (.D(_0208_),
    .Q(net34),
    .RESET_B(net65),
    .CLK(clknet_3_5__leaf_refclk_i_regs));
 sky130_fd_sc_hd__dfrtp_1 \u_clkout.cnt[0]$_DFF_PN0_  (.D(_0250_),
    .Q(\u_clkout.cnt[0] ),
    .RESET_B(net70),
    .CLK(clknet_2_3__leaf_pll_d2_regs));
 sky130_fd_sc_hd__dfrtp_1 \u_clkout.cnt[1]$_DFF_PN0_  (.D(_0251_),
    .Q(\u_clkout.cnt[1] ),
    .RESET_B(net70),
    .CLK(clknet_2_3__leaf_pll_d2_regs));
 sky130_fd_sc_hd__dfrtp_1 \u_clkout.cnt[2]$_DFF_PN0_  (.D(_0252_),
    .Q(\u_clkout.cnt[2] ),
    .RESET_B(net70),
    .CLK(clknet_2_3__leaf_pll_d2_regs));
 sky130_fd_sc_hd__dfrtp_1 \u_clkout.divq$_DFF_PN0_  (.D(_0083_),
    .Q(\u_clkout.divq ),
    .RESET_B(net70),
    .CLK(clknet_2_2__leaf_pll_d2_regs));
 sky130_fd_sc_hd__dlxtn_1 \u_clkout.u_gate.en_lat$_DLATCH_N_  (.D(_0253_),
    .Q(\u_clkout.u_gate.en_lat ),
    .GATE_N(\clknet_1_0__leaf_u_clkout.sel_clk_regs ));
 sky130_fd_sc_hd__dfrtp_1 \u_clkout.u_n.meta[0]$_DFF_PN0_  (.D(\c_outdiv[0] ),
    .Q(\u_clkout.u_n.meta[0] ),
    .RESET_B(net70),
    .CLK(clknet_2_2__leaf_pll_d2_regs));
 sky130_fd_sc_hd__dfrtp_1 \u_clkout.u_n.meta[1]$_DFF_PN0_  (.D(\c_outdiv[1] ),
    .Q(\u_clkout.u_n.meta[1] ),
    .RESET_B(net70),
    .CLK(clknet_2_2__leaf_pll_d2_regs));
 sky130_fd_sc_hd__dfrtp_1 \u_clkout.u_n.meta[2]$_DFF_PN0_  (.D(\c_outdiv[2] ),
    .Q(\u_clkout.u_n.meta[2] ),
    .RESET_B(net70),
    .CLK(clknet_2_2__leaf_pll_d2_regs));
 sky130_fd_sc_hd__dfrtp_1 \u_clkout.u_n.q[0]$_DFF_PN0_  (.D(\u_clkout.u_n.meta[0] ),
    .Q(\u_clkout.N[0] ),
    .RESET_B(net70),
    .CLK(clknet_2_2__leaf_pll_d2_regs));
 sky130_fd_sc_hd__dfrtp_1 \u_clkout.u_n.q[1]$_DFF_PN0_  (.D(\u_clkout.u_n.meta[1] ),
    .Q(\u_clkout.N[1] ),
    .RESET_B(net70),
    .CLK(clknet_2_2__leaf_pll_d2_regs));
 sky130_fd_sc_hd__dfrtp_1 \u_clkout.u_n.q[2]$_DFF_PN0_  (.D(\u_clkout.u_n.meta[2] ),
    .Q(\u_clkout.N[2] ),
    .RESET_B(net70),
    .CLK(clknet_2_2__leaf_pll_d2_regs));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.addr_r[0]$_DFFE_PP0P_  (.D(_0172_),
    .Q(\u_csr.addr_r[0] ),
    .RESET_B(net67),
    .CLK(clknet_3_1__leaf_spi_sclk_i));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.addr_r[1]$_DFFE_PP0P_  (.D(_0171_),
    .Q(\u_csr.addr_r[1] ),
    .RESET_B(net67),
    .CLK(clknet_3_1__leaf_spi_sclk_i));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.addr_r[2]$_DFFE_PP0P_  (.D(_0170_),
    .Q(\u_csr.addr_r[2] ),
    .RESET_B(net67),
    .CLK(clknet_3_0__leaf_spi_sclk_i));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.addr_r[3]$_DFFE_PP0P_  (.D(_0169_),
    .Q(\u_csr.addr_r[3] ),
    .RESET_B(net67),
    .CLK(clknet_3_0__leaf_spi_sclk_i));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.addr_r[4]$_DFFE_PP0P_  (.D(_0168_),
    .Q(\u_csr.addr_r[4] ),
    .RESET_B(net67),
    .CLK(clknet_3_0__leaf_spi_sclk_i));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.addr_r[5]$_DFFE_PP0P_  (.D(_0167_),
    .Q(\u_csr.addr_r[5] ),
    .RESET_B(net67),
    .CLK(clknet_3_0__leaf_spi_sclk_i));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.addr_r[6]$_DFFE_PP0P_  (.D(_0228_),
    .Q(\u_csr.addr_r[6] ),
    .RESET_B(net67),
    .CLK(clknet_3_1__leaf_spi_sclk_i));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.bit_cnt[0]$_DFF_PP0_  (.D(_0070_),
    .Q(\u_csr.bit_cnt[0] ),
    .RESET_B(net67),
    .CLK(clknet_3_0__leaf_spi_sclk_i));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.bit_cnt[1]$_DFF_PP0_  (.D(_0590_),
    .Q(\u_csr.bit_cnt[1] ),
    .RESET_B(net67),
    .CLK(clknet_3_0__leaf_spi_sclk_i));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.bit_cnt[2]$_DFF_PP0_  (.D(_0001_),
    .Q(\u_csr.bit_cnt[2] ),
    .RESET_B(net67),
    .CLK(clknet_3_0__leaf_spi_sclk_i));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.bit_cnt[3]$_DFF_PP0_  (.D(_0002_),
    .Q(\u_csr.bit_cnt[3] ),
    .RESET_B(net67),
    .CLK(clknet_3_2__leaf_spi_sclk_i));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.c_auto_relock$_DFFE_PN0P_  (.D(_0233_),
    .Q(c_auto_relock),
    .RESET_B(net66),
    .CLK(clknet_3_6__leaf_refclk_i_regs));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.c_bypass_sel$_DFFE_PN0P_  (.D(_0236_),
    .Q(c_bypass_sel),
    .RESET_B(net66),
    .CLK(clknet_3_6__leaf_refclk_i_regs));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.c_clkout_en$_DFFE_PN0P_  (.D(_0237_),
    .Q(c_clkout_en),
    .RESET_B(net66),
    .CLK(clknet_3_6__leaf_refclk_i_regs));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.c_cp_iset[0]$_DFFE_PN0P_  (.D(_0145_),
    .Q(net11),
    .RESET_B(core_rst_n),
    .CLK(clknet_3_2__leaf_refclk_i_regs));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.c_cp_iset[1]$_DFFE_PN0P_  (.D(_0144_),
    .Q(net12),
    .RESET_B(core_rst_n),
    .CLK(clknet_3_2__leaf_refclk_i_regs));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.c_cp_iset[2]$_DFFE_PN0P_  (.D(_0143_),
    .Q(net13),
    .RESET_B(core_rst_n),
    .CLK(clknet_3_2__leaf_refclk_i_regs));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.c_cp_iset[3]$_DFFE_PN0P_  (.D(_0142_),
    .Q(net14),
    .RESET_B(core_rst_n),
    .CLK(clknet_3_0__leaf_refclk_i_regs));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.c_cp_iset[4]$_DFFE_PN0P_  (.D(_0141_),
    .Q(net15),
    .RESET_B(core_rst_n),
    .CLK(clknet_3_2__leaf_refclk_i_regs));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.c_cp_iset[5]$_DFFE_PN0P_  (.D(_0140_),
    .Q(net16),
    .RESET_B(net65),
    .CLK(clknet_3_1__leaf_refclk_i_regs));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.c_cp_iset[6]$_DFFE_PN0P_  (.D(_0139_),
    .Q(net17),
    .RESET_B(net65),
    .CLK(clknet_3_1__leaf_refclk_i_regs));
 sky130_fd_sc_hd__dfstp_2 \u_csr.c_cp_iset[7]$_DFFE_PN1P_  (.D(_0222_),
    .Q(net18),
    .SET_B(net65),
    .CLK(clknet_3_1__leaf_refclk_i_regs));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.c_en_cp_man$_DFFE_PN0P_  (.D(_0227_),
    .Q(c_en_cp_man),
    .RESET_B(net66),
    .CLK(clknet_3_7__leaf_refclk_i_regs));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.c_en_vco_man$_DFFE_PN0P_  (.D(_0229_),
    .Q(c_en_vco_man),
    .RESET_B(net66),
    .CLK(clknet_3_7__leaf_refclk_i_regs));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.c_en_vreg_man$_DFFE_PN0P_  (.D(_0230_),
    .Q(c_en_vreg_man),
    .RESET_B(net66),
    .CLK(clknet_3_6__leaf_refclk_i_regs));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.c_lockw[0]$_DFFE_PN0P_  (.D(_0124_),
    .Q(\c_lockw[0] ),
    .RESET_B(net66),
    .CLK(clknet_3_3__leaf_refclk_i_regs));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.c_lockw[1]$_DFFE_PN0P_  (.D(_0123_),
    .Q(\c_lockw[1] ),
    .RESET_B(net66),
    .CLK(clknet_3_3__leaf_refclk_i_regs));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.c_lockw[2]$_DFFE_PN0P_  (.D(_0122_),
    .Q(\c_lockw[2] ),
    .RESET_B(net66),
    .CLK(clknet_3_0__leaf_refclk_i_regs));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.c_lockw[3]$_DFFE_PN0P_  (.D(_0121_),
    .Q(\c_lockw[3] ),
    .RESET_B(net66),
    .CLK(clknet_3_3__leaf_refclk_i_regs));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.c_lockw[4]$_DFFE_PN0P_  (.D(_0120_),
    .Q(\c_lockw[4] ),
    .RESET_B(net66),
    .CLK(clknet_3_3__leaf_refclk_i_regs));
 sky130_fd_sc_hd__dfstp_2 \u_csr.c_lockw[5]$_DFFE_PN1P_  (.D(_0219_),
    .Q(\c_lockw[5] ),
    .SET_B(net66),
    .CLK(clknet_3_3__leaf_refclk_i_regs));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.c_m_div[0]$_DFFE_PN0P_  (.D(_0159_),
    .Q(net24),
    .RESET_B(core_rst_n),
    .CLK(clknet_3_2__leaf_refclk_i_regs));
 sky130_fd_sc_hd__dfstp_2 \u_csr.c_m_div[1]$_DFFE_PN1P_  (.D(_0158_),
    .Q(net25),
    .SET_B(net65),
    .CLK(clknet_3_4__leaf_refclk_i_regs));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.c_m_div[2]$_DFFE_PN0P_  (.D(_0157_),
    .Q(net26),
    .RESET_B(net65),
    .CLK(clknet_3_1__leaf_refclk_i_regs));
 sky130_fd_sc_hd__dfstp_2 \u_csr.c_m_div[3]$_DFFE_PN1P_  (.D(_0156_),
    .Q(net27),
    .SET_B(net65),
    .CLK(clknet_3_4__leaf_refclk_i_regs));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.c_m_div[4]$_DFFE_PN0P_  (.D(_0155_),
    .Q(net28),
    .RESET_B(net66),
    .CLK(clknet_3_3__leaf_refclk_i_regs));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.c_m_div[5]$_DFFE_PN0P_  (.D(_0154_),
    .Q(net29),
    .RESET_B(core_rst_n),
    .CLK(clknet_3_2__leaf_refclk_i_regs));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.c_m_div[6]$_DFFE_PN0P_  (.D(_0153_),
    .Q(net30),
    .RESET_B(net66),
    .CLK(clknet_3_3__leaf_refclk_i_regs));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.c_m_div[7]$_DFFE_PN0P_  (.D(_0225_),
    .Q(net31),
    .RESET_B(net65),
    .CLK(clknet_3_1__leaf_refclk_i_regs));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.c_manual_seq$_DFFE_PN0P_  (.D(_0232_),
    .Q(c_manual_seq),
    .RESET_B(net66),
    .CLK(clknet_3_6__leaf_refclk_i_regs));
 sky130_fd_sc_hd__dfstp_2 \u_csr.c_outdiv[0]$_DFFE_PN1P_  (.D(_0152_),
    .Q(\c_outdiv[0] ),
    .SET_B(net66),
    .CLK(clknet_3_6__leaf_refclk_i_regs));
 sky130_fd_sc_hd__dfstp_2 \u_csr.c_outdiv[1]$_DFFE_PN1P_  (.D(_0151_),
    .Q(\c_outdiv[1] ),
    .SET_B(net66),
    .CLK(clknet_3_6__leaf_refclk_i_regs));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.c_outdiv[2]$_DFFE_PN0P_  (.D(_0224_),
    .Q(\c_outdiv[2] ),
    .RESET_B(net66),
    .CLK(clknet_3_3__leaf_refclk_i_regs));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.c_pll_en$_DFFE_PN0P_  (.D(_0238_),
    .Q(c_pll_en),
    .RESET_B(net66),
    .CLK(clknet_3_6__leaf_refclk_i_regs));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.c_seqdly[0]$_DFFE_PN0P_  (.D(_0119_),
    .Q(\c_seqdly[0] ),
    .RESET_B(net66),
    .CLK(clknet_3_4__leaf_refclk_i_regs));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.c_seqdly[1]$_DFFE_PN0P_  (.D(_0118_),
    .Q(\c_seqdly[1] ),
    .RESET_B(net66),
    .CLK(clknet_3_7__leaf_refclk_i_regs));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.c_seqdly[2]$_DFFE_PN0P_  (.D(_0117_),
    .Q(\c_seqdly[2] ),
    .RESET_B(net66),
    .CLK(clknet_3_5__leaf_refclk_i_regs));
 sky130_fd_sc_hd__dfstp_2 \u_csr.c_seqdly[3]$_DFFE_PN1P_  (.D(_0116_),
    .Q(\c_seqdly[3] ),
    .SET_B(net66),
    .CLK(clknet_3_5__leaf_refclk_i_regs));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.c_seqdly[4]$_DFFE_PN0P_  (.D(_0115_),
    .Q(\c_seqdly[4] ),
    .RESET_B(net66),
    .CLK(clknet_3_7__leaf_refclk_i_regs));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.c_seqdly[5]$_DFFE_PN0P_  (.D(_0114_),
    .Q(\c_seqdly[5] ),
    .RESET_B(net66),
    .CLK(clknet_3_4__leaf_refclk_i_regs));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.c_seqdly[6]$_DFFE_PN0P_  (.D(_0113_),
    .Q(\c_seqdly[6] ),
    .RESET_B(net66),
    .CLK(clknet_3_5__leaf_refclk_i_regs));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.c_seqdly[7]$_DFFE_PN0P_  (.D(_0218_),
    .Q(\c_seqdly[7] ),
    .RESET_B(net66),
    .CLK(clknet_3_5__leaf_refclk_i_regs));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.c_soft_rst$_DFFE_PN0P_  (.D(_0234_),
    .Q(c_soft_rst),
    .RESET_B(net66),
    .CLK(clknet_3_7__leaf_refclk_i_regs));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.c_vco_band[0]$_DFFE_PN0P_  (.D(_0131_),
    .Q(net36),
    .RESET_B(net65),
    .CLK(clknet_3_1__leaf_refclk_i_regs));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.c_vco_band[1]$_DFFE_PN0P_  (.D(_0130_),
    .Q(net37),
    .RESET_B(net65),
    .CLK(clknet_3_4__leaf_refclk_i_regs));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.c_vco_band[2]$_DFFE_PN0P_  (.D(_0129_),
    .Q(net38),
    .RESET_B(net66),
    .CLK(clknet_3_4__leaf_refclk_i_regs));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.c_vco_band[3]$_DFFE_PN0P_  (.D(_0128_),
    .Q(net39),
    .RESET_B(net66),
    .CLK(clknet_3_5__leaf_refclk_i_regs));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.c_vco_band[4]$_DFFE_PN0P_  (.D(_0127_),
    .Q(net40),
    .RESET_B(net65),
    .CLK(clknet_3_4__leaf_refclk_i_regs));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.c_vco_band[5]$_DFFE_PN0P_  (.D(_0126_),
    .Q(net41),
    .RESET_B(net65),
    .CLK(clknet_3_4__leaf_refclk_i_regs));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.c_vco_band[6]$_DFFE_PN0P_  (.D(_0125_),
    .Q(net42),
    .RESET_B(net65),
    .CLK(clknet_3_1__leaf_refclk_i_regs));
 sky130_fd_sc_hd__dfstp_2 \u_csr.c_vco_band[7]$_DFFE_PN1P_  (.D(_0220_),
    .Q(net43),
    .SET_B(net65),
    .CLK(clknet_3_4__leaf_refclk_i_regs));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.r_cpiset[0]$_DFFE_PN0P_  (.D(_0179_),
    .Q(\u_csr.r_cpiset[0] ),
    .RESET_B(core_rst_n),
    .CLK(clknet_3_2__leaf_spi_sclk_i));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.r_cpiset[1]$_DFFE_PN0P_  (.D(_0178_),
    .Q(\u_csr.r_cpiset[1] ),
    .RESET_B(core_rst_n),
    .CLK(clknet_3_2__leaf_spi_sclk_i));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.r_cpiset[2]$_DFFE_PN0P_  (.D(_0177_),
    .Q(\u_csr.r_cpiset[2] ),
    .RESET_B(core_rst_n),
    .CLK(clknet_3_2__leaf_spi_sclk_i));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.r_cpiset[3]$_DFFE_PN0P_  (.D(_0176_),
    .Q(\u_csr.r_cpiset[3] ),
    .RESET_B(core_rst_n),
    .CLK(clknet_3_2__leaf_spi_sclk_i));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.r_cpiset[4]$_DFFE_PN0P_  (.D(_0175_),
    .Q(\u_csr.r_cpiset[4] ),
    .RESET_B(core_rst_n),
    .CLK(clknet_3_2__leaf_spi_sclk_i));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.r_cpiset[5]$_DFFE_PN0P_  (.D(_0174_),
    .Q(\u_csr.r_cpiset[5] ),
    .RESET_B(net65),
    .CLK(clknet_3_4__leaf_spi_sclk_i));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.r_cpiset[6]$_DFFE_PN0P_  (.D(_0173_),
    .Q(\u_csr.r_cpiset[6] ),
    .RESET_B(net65),
    .CLK(clknet_3_1__leaf_spi_sclk_i));
 sky130_fd_sc_hd__dfstp_2 \u_csr.r_cpiset[7]$_DFFE_PN1P_  (.D(_0231_),
    .Q(\u_csr.r_cpiset[7] ),
    .SET_B(net65),
    .CLK(clknet_3_1__leaf_spi_sclk_i));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.r_ctrl[0]$_DFFE_PN0P_  (.D(_0098_),
    .Q(\u_csr.r_ctrl[0] ),
    .RESET_B(net66),
    .CLK(clknet_3_7__leaf_spi_sclk_i));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.r_ctrl[1]$_DFFE_PN0P_  (.D(_0097_),
    .Q(\u_csr.r_ctrl[1] ),
    .RESET_B(net66),
    .CLK(clknet_3_7__leaf_spi_sclk_i));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.r_ctrl[2]$_DFFE_PN0P_  (.D(_0096_),
    .Q(\u_csr.r_ctrl[2] ),
    .RESET_B(net66),
    .CLK(clknet_3_7__leaf_spi_sclk_i));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.r_ctrl[3]$_DFFE_PN0P_  (.D(_0095_),
    .Q(\u_csr.r_ctrl[3] ),
    .RESET_B(net66),
    .CLK(clknet_3_7__leaf_spi_sclk_i));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.r_ctrl[4]$_DFFE_PN0P_  (.D(_0094_),
    .Q(\u_csr.r_ctrl[4] ),
    .RESET_B(net66),
    .CLK(clknet_3_7__leaf_spi_sclk_i));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.r_ctrl[5]$_DFFE_PN0P_  (.D(_0093_),
    .Q(\u_csr.r_ctrl[5] ),
    .RESET_B(net66),
    .CLK(clknet_3_6__leaf_spi_sclk_i));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.r_ctrl[6]$_DFFE_PN0P_  (.D(_0092_),
    .Q(\u_csr.r_ctrl[6] ),
    .RESET_B(net66),
    .CLK(clknet_3_6__leaf_spi_sclk_i));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.r_ctrl[7]$_DFFE_PN0P_  (.D(_0214_),
    .Q(\u_csr.r_ctrl[7] ),
    .RESET_B(net65),
    .CLK(clknet_3_4__leaf_spi_sclk_i));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.r_ens[0]$_DFFE_PN0P_  (.D(_0091_),
    .Q(\u_csr.r_ens[0] ),
    .RESET_B(net66),
    .CLK(clknet_3_7__leaf_spi_sclk_i));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.r_ens[1]$_DFFE_PN0P_  (.D(_0090_),
    .Q(\u_csr.r_ens[1] ),
    .RESET_B(net66),
    .CLK(clknet_3_7__leaf_spi_sclk_i));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.r_ens[2]$_DFFE_PN0P_  (.D(_0089_),
    .Q(\u_csr.r_ens[2] ),
    .RESET_B(net66),
    .CLK(clknet_3_7__leaf_spi_sclk_i));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.r_ens[3]$_DFFE_PN0P_  (.D(_0088_),
    .Q(\u_csr.r_ens[3] ),
    .RESET_B(net66),
    .CLK(clknet_3_5__leaf_spi_sclk_i));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.r_ens[4]$_DFFE_PN0P_  (.D(_0087_),
    .Q(\u_csr.r_ens[4] ),
    .RESET_B(net66),
    .CLK(clknet_3_5__leaf_spi_sclk_i));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.r_ens[5]$_DFFE_PN0P_  (.D(_0086_),
    .Q(\u_csr.r_ens[5] ),
    .RESET_B(net65),
    .CLK(clknet_3_5__leaf_spi_sclk_i));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.r_ens[6]$_DFFE_PN0P_  (.D(_0085_),
    .Q(\u_csr.r_ens[6] ),
    .RESET_B(net65),
    .CLK(clknet_3_4__leaf_spi_sclk_i));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.r_ens[7]$_DFFE_PN0P_  (.D(_0213_),
    .Q(\u_csr.r_ens[7] ),
    .RESET_B(net65),
    .CLK(clknet_3_4__leaf_spi_sclk_i));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.r_lockw[0]$_DFFE_PN0P_  (.D(_0138_),
    .Q(\u_csr.r_lockw[0] ),
    .RESET_B(net66),
    .CLK(clknet_3_6__leaf_spi_sclk_i));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.r_lockw[1]$_DFFE_PN0P_  (.D(_0137_),
    .Q(\u_csr.r_lockw[1] ),
    .RESET_B(net66),
    .CLK(clknet_3_6__leaf_spi_sclk_i));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.r_lockw[2]$_DFFE_PN0P_  (.D(_0136_),
    .Q(\u_csr.r_lockw[2] ),
    .RESET_B(net66),
    .CLK(clknet_3_3__leaf_spi_sclk_i));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.r_lockw[3]$_DFFE_PN0P_  (.D(_0135_),
    .Q(\u_csr.r_lockw[3] ),
    .RESET_B(net66),
    .CLK(clknet_3_6__leaf_spi_sclk_i));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.r_lockw[4]$_DFFE_PN0P_  (.D(_0134_),
    .Q(\u_csr.r_lockw[4] ),
    .RESET_B(net66),
    .CLK(clknet_3_3__leaf_spi_sclk_i));
 sky130_fd_sc_hd__dfstp_2 \u_csr.r_lockw[5]$_DFFE_PN1P_  (.D(_0133_),
    .Q(\u_csr.r_lockw[5] ),
    .SET_B(net66),
    .CLK(clknet_3_6__leaf_spi_sclk_i));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.r_lockw[6]$_DFFE_PN0P_  (.D(_0132_),
    .Q(\u_csr.r_lockw[6] ),
    .RESET_B(net65),
    .CLK(clknet_3_1__leaf_spi_sclk_i));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.r_lockw[7]$_DFFE_PN0P_  (.D(_0221_),
    .Q(\u_csr.r_lockw[7] ),
    .RESET_B(net65),
    .CLK(clknet_3_1__leaf_spi_sclk_i));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.r_mdiv[0]$_DFFE_PN0P_  (.D(_0193_),
    .Q(\u_csr.r_mdiv[0] ),
    .RESET_B(core_rst_n),
    .CLK(clknet_3_3__leaf_spi_sclk_i));
 sky130_fd_sc_hd__dfstp_2 \u_csr.r_mdiv[1]$_DFFE_PN1P_  (.D(_0192_),
    .Q(\u_csr.r_mdiv[1] ),
    .SET_B(net65),
    .CLK(clknet_3_4__leaf_spi_sclk_i));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.r_mdiv[2]$_DFFE_PN0P_  (.D(_0191_),
    .Q(\u_csr.r_mdiv[2] ),
    .RESET_B(net65),
    .CLK(clknet_3_1__leaf_spi_sclk_i));
 sky130_fd_sc_hd__dfstp_2 \u_csr.r_mdiv[3]$_DFFE_PN1P_  (.D(_0190_),
    .Q(\u_csr.r_mdiv[3] ),
    .SET_B(net65),
    .CLK(clknet_3_4__leaf_spi_sclk_i));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.r_mdiv[4]$_DFFE_PN0P_  (.D(_0189_),
    .Q(\u_csr.r_mdiv[4] ),
    .RESET_B(net66),
    .CLK(clknet_3_6__leaf_spi_sclk_i));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.r_mdiv[5]$_DFFE_PN0P_  (.D(_0188_),
    .Q(\u_csr.r_mdiv[5] ),
    .RESET_B(core_rst_n),
    .CLK(clknet_3_2__leaf_spi_sclk_i));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.r_mdiv[6]$_DFFE_PN0P_  (.D(_0187_),
    .Q(\u_csr.r_mdiv[6] ),
    .RESET_B(net66),
    .CLK(clknet_3_6__leaf_spi_sclk_i));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.r_mdiv[7]$_DFFE_PN0P_  (.D(_0239_),
    .Q(\u_csr.r_mdiv[7] ),
    .RESET_B(net65),
    .CLK(clknet_3_1__leaf_spi_sclk_i));
 sky130_fd_sc_hd__dfstp_2 \u_csr.r_odiv[0]$_DFFE_PN1P_  (.D(_0186_),
    .Q(\u_csr.r_odiv[0] ),
    .SET_B(net66),
    .CLK(clknet_3_7__leaf_spi_sclk_i));
 sky130_fd_sc_hd__dfstp_2 \u_csr.r_odiv[1]$_DFFE_PN1P_  (.D(_0185_),
    .Q(\u_csr.r_odiv[1] ),
    .SET_B(net66),
    .CLK(clknet_3_6__leaf_spi_sclk_i));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.r_odiv[2]$_DFFE_PN0P_  (.D(_0184_),
    .Q(\u_csr.r_odiv[2] ),
    .RESET_B(net66),
    .CLK(clknet_3_6__leaf_spi_sclk_i));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.r_odiv[3]$_DFFE_PN0P_  (.D(_0183_),
    .Q(\u_csr.r_odiv[3] ),
    .RESET_B(net66),
    .CLK(clknet_3_5__leaf_spi_sclk_i));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.r_odiv[4]$_DFFE_PN0P_  (.D(_0182_),
    .Q(\u_csr.r_odiv[4] ),
    .RESET_B(net66),
    .CLK(clknet_3_6__leaf_spi_sclk_i));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.r_odiv[5]$_DFFE_PN0P_  (.D(_0181_),
    .Q(\u_csr.r_odiv[5] ),
    .RESET_B(net66),
    .CLK(clknet_3_5__leaf_spi_sclk_i));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.r_odiv[6]$_DFFE_PN0P_  (.D(_0180_),
    .Q(\u_csr.r_odiv[6] ),
    .RESET_B(net65),
    .CLK(clknet_3_4__leaf_spi_sclk_i));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.r_odiv[7]$_DFFE_PN0P_  (.D(_0235_),
    .Q(\u_csr.r_odiv[7] ),
    .RESET_B(net65),
    .CLK(clknet_3_1__leaf_spi_sclk_i));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.r_seqdly[0]$_DFFE_PN0P_  (.D(_0112_),
    .Q(\u_csr.r_seqdly[0] ),
    .RESET_B(net66),
    .CLK(clknet_3_7__leaf_spi_sclk_i));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.r_seqdly[1]$_DFFE_PN0P_  (.D(_0111_),
    .Q(\u_csr.r_seqdly[1] ),
    .RESET_B(net66),
    .CLK(clknet_3_7__leaf_spi_sclk_i));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.r_seqdly[2]$_DFFE_PN0P_  (.D(_0110_),
    .Q(\u_csr.r_seqdly[2] ),
    .RESET_B(net66),
    .CLK(clknet_3_5__leaf_spi_sclk_i));
 sky130_fd_sc_hd__dfstp_2 \u_csr.r_seqdly[3]$_DFFE_PN1P_  (.D(_0109_),
    .Q(\u_csr.r_seqdly[3] ),
    .SET_B(net66),
    .CLK(clknet_3_5__leaf_spi_sclk_i));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.r_seqdly[4]$_DFFE_PN0P_  (.D(_0108_),
    .Q(\u_csr.r_seqdly[4] ),
    .RESET_B(net66),
    .CLK(clknet_3_5__leaf_spi_sclk_i));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.r_seqdly[5]$_DFFE_PN0P_  (.D(_0107_),
    .Q(\u_csr.r_seqdly[5] ),
    .RESET_B(net66),
    .CLK(clknet_3_5__leaf_spi_sclk_i));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.r_seqdly[6]$_DFFE_PN0P_  (.D(_0106_),
    .Q(\u_csr.r_seqdly[6] ),
    .RESET_B(net65),
    .CLK(clknet_3_4__leaf_spi_sclk_i));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.r_seqdly[7]$_DFFE_PN0P_  (.D(_0217_),
    .Q(\u_csr.r_seqdly[7] ),
    .RESET_B(net65),
    .CLK(clknet_3_5__leaf_spi_sclk_i));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.r_test[0]$_DFFE_PN0P_  (.D(_0105_),
    .Q(\u_csr.r_test[0] ),
    .RESET_B(core_rst_n),
    .CLK(clknet_3_3__leaf_spi_sclk_i));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.r_test[1]$_DFFE_PN0P_  (.D(_0104_),
    .Q(\u_csr.r_test[1] ),
    .RESET_B(net66),
    .CLK(clknet_3_3__leaf_spi_sclk_i));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.r_test[2]$_DFFE_PN0P_  (.D(_0103_),
    .Q(\u_csr.r_test[2] ),
    .RESET_B(net65),
    .CLK(clknet_3_1__leaf_spi_sclk_i));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.r_test[3]$_DFFE_PN0P_  (.D(_0102_),
    .Q(\u_csr.r_test[3] ),
    .RESET_B(core_rst_n),
    .CLK(clknet_3_2__leaf_spi_sclk_i));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.r_test[4]$_DFFE_PN0P_  (.D(_0101_),
    .Q(\u_csr.r_test[4] ),
    .RESET_B(net66),
    .CLK(clknet_3_6__leaf_spi_sclk_i));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.r_test[5]$_DFFE_PN0P_  (.D(_0100_),
    .Q(\u_csr.r_test[5] ),
    .RESET_B(core_rst_n),
    .CLK(clknet_3_2__leaf_spi_sclk_i));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.r_test[6]$_DFFE_PN0P_  (.D(_0099_),
    .Q(\u_csr.r_test[6] ),
    .RESET_B(net65),
    .CLK(clknet_3_1__leaf_spi_sclk_i));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.r_test[7]$_DFFE_PN0P_  (.D(_0215_),
    .Q(\u_csr.r_test[7] ),
    .RESET_B(net65),
    .CLK(clknet_3_4__leaf_spi_sclk_i));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.r_vcobnd[0]$_DFFE_PN0P_  (.D(_0166_),
    .Q(\u_csr.r_vcobnd[0] ),
    .RESET_B(net65),
    .CLK(clknet_3_4__leaf_spi_sclk_i));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.r_vcobnd[1]$_DFFE_PN0P_  (.D(_0165_),
    .Q(\u_csr.r_vcobnd[1] ),
    .RESET_B(net66),
    .CLK(clknet_3_5__leaf_spi_sclk_i));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.r_vcobnd[2]$_DFFE_PN0P_  (.D(_0164_),
    .Q(\u_csr.r_vcobnd[2] ),
    .RESET_B(net66),
    .CLK(clknet_3_5__leaf_spi_sclk_i));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.r_vcobnd[3]$_DFFE_PN0P_  (.D(_0163_),
    .Q(\u_csr.r_vcobnd[3] ),
    .RESET_B(net66),
    .CLK(clknet_3_5__leaf_spi_sclk_i));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.r_vcobnd[4]$_DFFE_PN0P_  (.D(_0162_),
    .Q(\u_csr.r_vcobnd[4] ),
    .RESET_B(net65),
    .CLK(clknet_3_5__leaf_spi_sclk_i));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.r_vcobnd[5]$_DFFE_PN0P_  (.D(_0161_),
    .Q(\u_csr.r_vcobnd[5] ),
    .RESET_B(net65),
    .CLK(clknet_3_5__leaf_spi_sclk_i));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.r_vcobnd[6]$_DFFE_PN0P_  (.D(_0160_),
    .Q(\u_csr.r_vcobnd[6] ),
    .RESET_B(net65),
    .CLK(clknet_3_4__leaf_spi_sclk_i));
 sky130_fd_sc_hd__dfstp_2 \u_csr.r_vcobnd[7]$_DFFE_PN1P_  (.D(_0226_),
    .Q(\u_csr.r_vcobnd[7] ),
    .SET_B(net65),
    .CLK(clknet_3_5__leaf_spi_sclk_i));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.rw_r$_DFFE_PP0P_  (.D(_0216_),
    .Q(\u_csr.rw_r ),
    .RESET_B(net67),
    .CLK(clknet_3_0__leaf_spi_sclk_i));
 sky130_fd_sc_hd__dfrtn_1 \u_csr.sh_out[0]$_DFF_NP0_  (.D(_0254_),
    .Q(\u_csr.sh_out[0] ),
    .RESET_B(net67),
    .CLK_N(clknet_3_3__leaf_spi_sclk_i));
 sky130_fd_sc_hd__dfrtn_1 \u_csr.sh_out[1]$_DFF_NP0_  (.D(_0255_),
    .Q(\u_csr.sh_out[1] ),
    .RESET_B(net67),
    .CLK_N(clknet_3_3__leaf_spi_sclk_i));
 sky130_fd_sc_hd__dfrtn_1 \u_csr.sh_out[2]$_DFF_NP0_  (.D(_0256_),
    .Q(\u_csr.sh_out[2] ),
    .RESET_B(net67),
    .CLK_N(clknet_3_3__leaf_spi_sclk_i));
 sky130_fd_sc_hd__dfrtn_1 \u_csr.sh_out[3]$_DFF_NP0_  (.D(_0257_),
    .Q(\u_csr.sh_out[3] ),
    .RESET_B(net67),
    .CLK_N(clknet_3_2__leaf_spi_sclk_i));
 sky130_fd_sc_hd__dfrtn_1 \u_csr.sh_out[4]$_DFF_NP0_  (.D(_0258_),
    .Q(\u_csr.sh_out[4] ),
    .RESET_B(net67),
    .CLK_N(clknet_3_0__leaf_spi_sclk_i));
 sky130_fd_sc_hd__dfrtn_1 \u_csr.sh_out[5]$_DFF_NP0_  (.D(_0259_),
    .Q(\u_csr.sh_out[5] ),
    .RESET_B(net67),
    .CLK_N(clknet_3_0__leaf_spi_sclk_i));
 sky130_fd_sc_hd__dfrtn_1 \u_csr.sh_out[6]$_DFF_NP0_  (.D(_0260_),
    .Q(\u_csr.sh_out[6] ),
    .RESET_B(net67),
    .CLK_N(clknet_3_2__leaf_spi_sclk_i));
 sky130_fd_sc_hd__dfrtn_1 \u_csr.sh_out[7]$_DFF_NP0_  (.D(_0261_),
    .Q(net35),
    .RESET_B(net67),
    .CLK_N(clknet_3_0__leaf_spi_sclk_i));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.shreg[0]$_DFF_PP0_  (.D(net7),
    .Q(\u_csr.shreg[0] ),
    .RESET_B(net67),
    .CLK(clknet_3_1__leaf_spi_sclk_i));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.shreg[1]$_DFF_PP0_  (.D(\u_csr.shreg[0] ),
    .Q(\u_csr.shreg[1] ),
    .RESET_B(net67),
    .CLK(clknet_3_0__leaf_spi_sclk_i));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.shreg[2]$_DFF_PP0_  (.D(\u_csr.shreg[1] ),
    .Q(\u_csr.shreg[2] ),
    .RESET_B(net67),
    .CLK(clknet_3_0__leaf_spi_sclk_i));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.shreg[3]$_DFF_PP0_  (.D(\u_csr.shreg[2] ),
    .Q(\u_csr.shreg[3] ),
    .RESET_B(net67),
    .CLK(clknet_3_1__leaf_spi_sclk_i));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.shreg[4]$_DFF_PP0_  (.D(\u_csr.shreg[3] ),
    .Q(\u_csr.shreg[4] ),
    .RESET_B(net67),
    .CLK(clknet_3_1__leaf_spi_sclk_i));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.shreg[5]$_DFF_PP0_  (.D(\u_csr.shreg[4] ),
    .Q(\u_csr.shreg[5] ),
    .RESET_B(net67),
    .CLK(clknet_3_1__leaf_spi_sclk_i));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.shreg[6]$_DFF_PP0_  (.D(\u_csr.shreg[5] ),
    .Q(\u_csr.shreg[6] ),
    .RESET_B(net67),
    .CLK(clknet_3_1__leaf_spi_sclk_i));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.u_clr.s[0]$_DFF_PN0_  (.D(\u_csr.u_clr.tog ),
    .Q(\u_csr.u_clr.s[0] ),
    .RESET_B(net66),
    .CLK(clknet_3_0__leaf_refclk_i_regs));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.u_clr.s[1]$_DFF_PN0_  (.D(\u_csr.u_clr.s[0] ),
    .Q(\u_csr.u_clr.s[1] ),
    .RESET_B(net66),
    .CLK(clknet_3_0__leaf_refclk_i_regs));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.u_clr.s[2]$_DFF_PN0_  (.D(\u_csr.u_clr.s[1] ),
    .Q(\u_csr.u_clr.s[2] ),
    .RESET_B(net66),
    .CLK(clknet_3_2__leaf_refclk_i_regs));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.u_clr.tog$_DFFE_PN0P_  (.D(_0209_),
    .Q(\u_csr.u_clr.tog ),
    .RESET_B(net66),
    .CLK(clknet_3_3__leaf_spi_sclk_i));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.u_commit.s[0]$_DFF_PN0_  (.D(\u_csr.u_commit.tog ),
    .Q(\u_csr.u_commit.s[0] ),
    .RESET_B(core_rst_n),
    .CLK(clknet_3_0__leaf_refclk_i_regs));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.u_commit.s[1]$_DFF_PN0_  (.D(\u_csr.u_commit.s[0] ),
    .Q(\u_csr.u_commit.s[1] ),
    .RESET_B(core_rst_n),
    .CLK(clknet_3_0__leaf_refclk_i_regs));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.u_commit.s[2]$_DFF_PN0_  (.D(\u_csr.u_commit.s[1] ),
    .Q(\u_csr.u_commit.s[2] ),
    .RESET_B(core_rst_n),
    .CLK(clknet_3_0__leaf_refclk_i_regs));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.u_commit.tog$_DFFE_PN0P_  (.D(_0211_),
    .Q(\u_csr.u_commit.tog ),
    .RESET_B(core_rst_n),
    .CLK(clknet_3_2__leaf_spi_sclk_i));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.u_stsync.meta[0]$_DFF_PN0_  (.D(net23),
    .Q(\u_csr.u_stsync.meta[0] ),
    .RESET_B(core_rst_n),
    .CLK(clknet_3_2__leaf_spi_sclk_i));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.u_stsync.meta[1]$_DFF_PN0_  (.D(\u_lock.u_ll.q[0] ),
    .Q(\u_csr.u_stsync.meta[1] ),
    .RESET_B(net66),
    .CLK(clknet_3_7__leaf_spi_sclk_i));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.u_stsync.meta[2]$_DFF_PN0_  (.D(seq_done),
    .Q(\u_csr.u_stsync.meta[2] ),
    .RESET_B(net66),
    .CLK(clknet_3_7__leaf_spi_sclk_i));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.u_stsync.meta[3]$_DFF_PN0_  (.D(c_bypass_sel),
    .Q(\u_csr.u_stsync.meta[3] ),
    .RESET_B(net66),
    .CLK(clknet_3_7__leaf_spi_sclk_i));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.u_stsync.q[0]$_DFF_PN0_  (.D(\u_csr.u_stsync.meta[0] ),
    .Q(\u_csr.st_sync[0] ),
    .RESET_B(core_rst_n),
    .CLK(clknet_3_2__leaf_spi_sclk_i));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.u_stsync.q[1]$_DFF_PN0_  (.D(\u_csr.u_stsync.meta[1] ),
    .Q(\u_csr.st_sync[1] ),
    .RESET_B(net66),
    .CLK(clknet_3_3__leaf_spi_sclk_i));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.u_stsync.q[2]$_DFF_PN0_  (.D(\u_csr.u_stsync.meta[2] ),
    .Q(\u_csr.st_sync[2] ),
    .RESET_B(net66),
    .CLK(clknet_3_7__leaf_spi_sclk_i));
 sky130_fd_sc_hd__dfrtp_1 \u_csr.u_stsync.q[3]$_DFF_PN0_  (.D(\u_csr.u_stsync.meta[3] ),
    .Q(\u_csr.st_sync[3] ),
    .RESET_B(net66),
    .CLK(clknet_3_7__leaf_spi_sclk_i));
 sky130_fd_sc_hd__dfrtp_1 \u_lock.dn_run[0]$_DFFE_PN0P_  (.D(_0196_),
    .Q(\u_lock.dn_run[0] ),
    .RESET_B(net70),
    .CLK(clknet_2_1__leaf_pll_d2_regs));
 sky130_fd_sc_hd__dfrtp_1 \u_lock.dn_run[1]$_DFFE_PN0P_  (.D(_0195_),
    .Q(\u_lock.dn_run[1] ),
    .RESET_B(net70),
    .CLK(clknet_2_1__leaf_pll_d2_regs));
 sky130_fd_sc_hd__dfrtp_1 \u_lock.dn_run[2]$_DFFE_PN0P_  (.D(_0194_),
    .Q(\u_lock.dn_run[2] ),
    .RESET_B(net70),
    .CLK(clknet_2_1__leaf_pll_d2_regs));
 sky130_fd_sc_hd__dfrtp_1 \u_lock.dn_run[3]$_DFFE_PN0P_  (.D(_0240_),
    .Q(\u_lock.dn_run[3] ),
    .RESET_B(net70),
    .CLK(clknet_2_1__leaf_pll_d2_regs));
 sky130_fd_sc_hd__dfrtp_1 \u_lock.good_cnt[0]$_DFFE_PN0P_  (.D(_0150_),
    .Q(\u_lock.good_cnt[0] ),
    .RESET_B(net70),
    .CLK(clknet_2_1__leaf_pll_d2_regs));
 sky130_fd_sc_hd__dfrtp_1 \u_lock.good_cnt[1]$_DFFE_PN0P_  (.D(_0149_),
    .Q(\u_lock.good_cnt[1] ),
    .RESET_B(net70),
    .CLK(clknet_2_0__leaf_pll_d2_regs));
 sky130_fd_sc_hd__dfrtp_1 \u_lock.good_cnt[2]$_DFFE_PN0P_  (.D(_0148_),
    .Q(\u_lock.good_cnt[2] ),
    .RESET_B(net70),
    .CLK(clknet_2_1__leaf_pll_d2_regs));
 sky130_fd_sc_hd__dfrtp_1 \u_lock.good_cnt[3]$_DFFE_PN0P_  (.D(_0147_),
    .Q(\u_lock.good_cnt[3] ),
    .RESET_B(net70),
    .CLK(clknet_2_3__leaf_pll_d2_regs));
 sky130_fd_sc_hd__dfrtp_1 \u_lock.good_cnt[4]$_DFFE_PN0P_  (.D(_0146_),
    .Q(\u_lock.good_cnt[4] ),
    .RESET_B(net70),
    .CLK(clknet_2_3__leaf_pll_d2_regs));
 sky130_fd_sc_hd__dfrtp_1 \u_lock.good_cnt[5]$_DFFE_PN0P_  (.D(_0223_),
    .Q(\u_lock.good_cnt[5] ),
    .RESET_B(net70),
    .CLK(clknet_2_2__leaf_pll_d2_regs));
 sky130_fd_sc_hd__dfrtp_1 \u_lock.lock_lost_r$_DFFE_PN0P_  (.D(_0207_),
    .Q(\u_lock.u_ll.d[0] ),
    .RESET_B(net70),
    .CLK(clknet_2_1__leaf_pll_d2_regs));
 sky130_fd_sc_hd__dfrtp_1 \u_lock.locked_r$_DFFE_PN0P_  (.D(_0248_),
    .Q(\u_lock.u_lk.d[0] ),
    .RESET_B(net70),
    .CLK(clknet_2_0__leaf_pll_d2_regs));
 sky130_fd_sc_hd__dfrtp_1 \u_lock.period_bad$_DFFE_PN0P_  (.D(_0210_),
    .Q(\u_lock.period_bad ),
    .RESET_B(net70),
    .CLK(clknet_2_1__leaf_pll_d2_regs));
 sky130_fd_sc_hd__dfrtp_1 \u_lock.ref_d$_DFF_PN0_  (.D(\u_lock.u_ref.q[0] ),
    .Q(\u_lock.ref_d ),
    .RESET_B(net70),
    .CLK(clknet_2_0__leaf_pll_d2_regs));
 sky130_fd_sc_hd__dfrtp_1 \u_lock.u_clr.s[0]$_DFF_PN0_  (.D(\u_lock.u_clr.tog ),
    .Q(\u_lock.u_clr.s[0] ),
    .RESET_B(net70),
    .CLK(clknet_2_0__leaf_pll_d2_regs));
 sky130_fd_sc_hd__dfrtp_1 \u_lock.u_clr.s[1]$_DFF_PN0_  (.D(\u_lock.u_clr.s[0] ),
    .Q(\u_lock.u_clr.s[1] ),
    .RESET_B(net70),
    .CLK(clknet_2_0__leaf_pll_d2_regs));
 sky130_fd_sc_hd__dfrtp_1 \u_lock.u_clr.s[2]$_DFF_PN0_  (.D(\u_lock.u_clr.s[1] ),
    .Q(\u_lock.u_clr.s[2] ),
    .RESET_B(net70),
    .CLK(clknet_2_0__leaf_pll_d2_regs));
 sky130_fd_sc_hd__dfrtp_1 \u_lock.u_clr.tog$_DFFE_PN0P_  (.D(_0212_),
    .Q(\u_lock.u_clr.tog ),
    .RESET_B(net66),
    .CLK(clknet_3_2__leaf_refclk_i_regs));
 sky130_fd_sc_hd__dfrtp_1 \u_lock.u_dn.meta$_DFF_PN0_  (.D(net2),
    .Q(\u_lock.u_dn.meta[0] ),
    .RESET_B(net70),
    .CLK(clknet_2_1__leaf_pll_d2_regs));
 sky130_fd_sc_hd__dfrtp_1 \u_lock.u_dn.q$_DFF_PN0_  (.D(\u_lock.u_dn.meta[0] ),
    .Q(\u_lock.u_dn.q[0] ),
    .RESET_B(net70),
    .CLK(clknet_2_1__leaf_pll_d2_regs));
 sky130_fd_sc_hd__dfrtp_1 \u_lock.u_en.meta$_DFF_PN0_  (.D(\u_lock.u_en.d[0] ),
    .Q(\u_lock.u_en.meta[0] ),
    .RESET_B(net70),
    .CLK(clknet_2_2__leaf_pll_d2_regs));
 sky130_fd_sc_hd__dfrtp_1 \u_lock.u_en.q$_DFF_PN0_  (.D(\u_lock.u_en.meta[0] ),
    .Q(\u_lock.u_en.q[0] ),
    .RESET_B(net70),
    .CLK(clknet_2_3__leaf_pll_d2_regs));
 sky130_fd_sc_hd__dfrtp_1 \u_lock.u_lk.meta$_DFF_PN0_  (.D(\u_lock.u_lk.d[0] ),
    .Q(\u_lock.u_lk.meta[0] ),
    .RESET_B(core_rst_n),
    .CLK(clknet_3_2__leaf_refclk_i_regs));
 sky130_fd_sc_hd__dfrtp_1 \u_lock.u_lk.q$_DFF_PN0_  (.D(\u_lock.u_lk.meta[0] ),
    .Q(net23),
    .RESET_B(core_rst_n),
    .CLK(clknet_3_2__leaf_refclk_i_regs));
 sky130_fd_sc_hd__dfrtp_1 \u_lock.u_ll.meta$_DFF_PN0_  (.D(\u_lock.u_ll.d[0] ),
    .Q(\u_lock.u_ll.meta[0] ),
    .RESET_B(net66),
    .CLK(clknet_3_6__leaf_refclk_i_regs));
 sky130_fd_sc_hd__dfrtp_1 \u_lock.u_ll.q$_DFF_PN0_  (.D(\u_lock.u_ll.meta[0] ),
    .Q(\u_lock.u_ll.q[0] ),
    .RESET_B(net66),
    .CLK(clknet_3_6__leaf_refclk_i_regs));
 sky130_fd_sc_hd__dfrtp_1 \u_lock.u_lw.meta[0]$_DFF_PN0_  (.D(\c_lockw[0] ),
    .Q(\u_lock.u_lw.meta[0] ),
    .RESET_B(net70),
    .CLK(clknet_2_2__leaf_pll_d2_regs));
 sky130_fd_sc_hd__dfrtp_1 \u_lock.u_lw.meta[1]$_DFF_PN0_  (.D(\c_lockw[1] ),
    .Q(\u_lock.u_lw.meta[1] ),
    .RESET_B(net70),
    .CLK(clknet_2_2__leaf_pll_d2_regs));
 sky130_fd_sc_hd__dfrtp_1 \u_lock.u_lw.meta[2]$_DFF_PN0_  (.D(\c_lockw[2] ),
    .Q(\u_lock.u_lw.meta[2] ),
    .RESET_B(net70),
    .CLK(clknet_2_0__leaf_pll_d2_regs));
 sky130_fd_sc_hd__dfrtp_1 \u_lock.u_lw.meta[3]$_DFF_PN0_  (.D(\c_lockw[3] ),
    .Q(\u_lock.u_lw.meta[3] ),
    .RESET_B(net70),
    .CLK(clknet_2_2__leaf_pll_d2_regs));
 sky130_fd_sc_hd__dfrtp_1 \u_lock.u_lw.meta[4]$_DFF_PN0_  (.D(\c_lockw[4] ),
    .Q(\u_lock.u_lw.meta[4] ),
    .RESET_B(net70),
    .CLK(clknet_2_2__leaf_pll_d2_regs));
 sky130_fd_sc_hd__dfrtp_1 \u_lock.u_lw.meta[5]$_DFF_PN0_  (.D(\c_lockw[5] ),
    .Q(\u_lock.u_lw.meta[5] ),
    .RESET_B(net70),
    .CLK(clknet_2_2__leaf_pll_d2_regs));
 sky130_fd_sc_hd__dfrtp_1 \u_lock.u_lw.q[0]$_DFF_PN0_  (.D(\u_lock.u_lw.meta[0] ),
    .Q(\u_lock.lockw_s[0] ),
    .RESET_B(net70),
    .CLK(clknet_2_3__leaf_pll_d2_regs));
 sky130_fd_sc_hd__dfrtp_1 \u_lock.u_lw.q[1]$_DFF_PN0_  (.D(\u_lock.u_lw.meta[1] ),
    .Q(\u_lock.lockw_s[1] ),
    .RESET_B(net70),
    .CLK(clknet_2_3__leaf_pll_d2_regs));
 sky130_fd_sc_hd__dfrtp_1 \u_lock.u_lw.q[2]$_DFF_PN0_  (.D(\u_lock.u_lw.meta[2] ),
    .Q(\u_lock.lockw_s[2] ),
    .RESET_B(net70),
    .CLK(clknet_2_0__leaf_pll_d2_regs));
 sky130_fd_sc_hd__dfrtp_1 \u_lock.u_lw.q[3]$_DFF_PN0_  (.D(\u_lock.u_lw.meta[3] ),
    .Q(\u_lock.lockw_s[3] ),
    .RESET_B(net70),
    .CLK(clknet_2_3__leaf_pll_d2_regs));
 sky130_fd_sc_hd__dfrtp_1 \u_lock.u_lw.q[4]$_DFF_PN0_  (.D(\u_lock.u_lw.meta[4] ),
    .Q(\u_lock.lockw_s[4] ),
    .RESET_B(net70),
    .CLK(clknet_2_2__leaf_pll_d2_regs));
 sky130_fd_sc_hd__dfrtp_1 \u_lock.u_lw.q[5]$_DFF_PN0_  (.D(\u_lock.u_lw.meta[5] ),
    .Q(\u_lock.lockw_s[5] ),
    .RESET_B(net70),
    .CLK(clknet_2_2__leaf_pll_d2_regs));
 sky130_fd_sc_hd__dfrtp_1 \u_lock.u_ref.meta$_DFF_PN0_  (.D(clknet_1_0__leaf_refclk_i),
    .Q(\u_lock.u_ref.meta[0] ),
    .RESET_B(net70),
    .CLK(clknet_2_0__leaf_pll_d2_regs));
 sky130_fd_sc_hd__dfrtp_1 \u_lock.u_ref.q$_DFF_PN0_  (.D(\u_lock.u_ref.meta[0] ),
    .Q(\u_lock.u_ref.q[0] ),
    .RESET_B(net70),
    .CLK(clknet_2_0__leaf_pll_d2_regs));
 sky130_fd_sc_hd__dfrtp_1 \u_lock.u_up.meta$_DFF_PN0_  (.D(net9),
    .Q(\u_lock.u_up.meta[0] ),
    .RESET_B(net70),
    .CLK(clknet_2_1__leaf_pll_d2_regs));
 sky130_fd_sc_hd__dfrtp_1 \u_lock.u_up.q$_DFF_PN0_  (.D(\u_lock.u_up.meta[0] ),
    .Q(\u_lock.u_up.q[0] ),
    .RESET_B(net70),
    .CLK(clknet_2_1__leaf_pll_d2_regs));
 sky130_fd_sc_hd__dfrtp_1 \u_lock.up_run[0]$_DFFE_PN0P_  (.D(_0206_),
    .Q(\u_lock.up_run[0] ),
    .RESET_B(net70),
    .CLK(clknet_2_0__leaf_pll_d2_regs));
 sky130_fd_sc_hd__dfrtp_1 \u_lock.up_run[1]$_DFFE_PN0P_  (.D(_0205_),
    .Q(\u_lock.up_run[1] ),
    .RESET_B(net70),
    .CLK(clknet_2_0__leaf_pll_d2_regs));
 sky130_fd_sc_hd__dfrtp_1 \u_lock.up_run[2]$_DFFE_PN0P_  (.D(_0204_),
    .Q(\u_lock.up_run[2] ),
    .RESET_B(net70),
    .CLK(clknet_2_1__leaf_pll_d2_regs));
 sky130_fd_sc_hd__dfrtp_1 \u_lock.up_run[3]$_DFFE_PN0P_  (.D(_0249_),
    .Q(\u_lock.up_run[3] ),
    .RESET_B(net70),
    .CLK(clknet_2_1__leaf_pll_d2_regs));
 sky130_fd_sc_hd__dlxtn_1 \u_refgate.en_lat$_DLATCH_N_  (.D(_0262_),
    .Q(\u_refgate.en_lat ),
    .GATE_N(clknet_3_7__leaf_refclk_i_regs));
 sky130_fd_sc_hd__dfstp_2 \u_seq.div_rst$_DFFE_PN1P_  (.D(_0241_),
    .Q(net19),
    .SET_B(net66),
    .CLK(clknet_3_7__leaf_refclk_i_regs));
 sky130_fd_sc_hd__dfrtp_1 \u_seq.dwell[0]$_DFFE_PN0P_  (.D(_0203_),
    .Q(\u_seq.dwell[0] ),
    .RESET_B(net66),
    .CLK(clknet_3_5__leaf_refclk_i_regs));
 sky130_fd_sc_hd__dfrtp_1 \u_seq.dwell[1]$_DFFE_PN0P_  (.D(_0202_),
    .Q(\u_seq.dwell[1] ),
    .RESET_B(net66),
    .CLK(clknet_3_5__leaf_refclk_i_regs));
 sky130_fd_sc_hd__dfrtp_1 \u_seq.dwell[2]$_DFFE_PN0P_  (.D(_0201_),
    .Q(\u_seq.dwell[2] ),
    .RESET_B(net66),
    .CLK(clknet_3_5__leaf_refclk_i_regs));
 sky130_fd_sc_hd__dfrtp_1 \u_seq.dwell[3]$_DFFE_PN0P_  (.D(_0200_),
    .Q(\u_seq.dwell[3] ),
    .RESET_B(net66),
    .CLK(clknet_3_5__leaf_refclk_i_regs));
 sky130_fd_sc_hd__dfrtp_1 \u_seq.dwell[4]$_DFFE_PN0P_  (.D(_0199_),
    .Q(\u_seq.dwell[4] ),
    .RESET_B(net66),
    .CLK(clknet_3_7__leaf_refclk_i_regs));
 sky130_fd_sc_hd__dfrtp_1 \u_seq.dwell[5]$_DFFE_PN0P_  (.D(_0198_),
    .Q(\u_seq.dwell[5] ),
    .RESET_B(net66),
    .CLK(clknet_3_5__leaf_refclk_i_regs));
 sky130_fd_sc_hd__dfrtp_1 \u_seq.dwell[6]$_DFFE_PN0P_  (.D(_0197_),
    .Q(\u_seq.dwell[6] ),
    .RESET_B(net66),
    .CLK(clknet_3_7__leaf_refclk_i_regs));
 sky130_fd_sc_hd__dfrtp_1 \u_seq.dwell[7]$_DFFE_PN0P_  (.D(_0243_),
    .Q(\u_seq.dwell[7] ),
    .RESET_B(net66),
    .CLK(clknet_3_5__leaf_refclk_i_regs));
 sky130_fd_sc_hd__dfrtp_1 \u_seq.en_cp$_DFFE_PN0P_  (.D(_0242_),
    .Q(net20),
    .RESET_B(net66),
    .CLK(clknet_3_7__leaf_refclk_i_regs));
 sky130_fd_sc_hd__dfrtp_1 \u_seq.en_vco$_DFFE_PN0P_  (.D(_0244_),
    .Q(net21),
    .RESET_B(net66),
    .CLK(clknet_3_7__leaf_refclk_i_regs));
 sky130_fd_sc_hd__dfrtp_1 \u_seq.en_vreg$_DFFE_PN0P_  (.D(_0245_),
    .Q(net22),
    .RESET_B(net66),
    .CLK(clknet_3_7__leaf_refclk_i_regs));
 sky130_fd_sc_hd__dfrtp_1 \u_seq.pll_en$_DFFE_PN0P_  (.D(_0246_),
    .Q(net32),
    .RESET_B(net66),
    .CLK(clknet_3_7__leaf_refclk_i_regs));
 sky130_fd_sc_hd__dfrtp_1 \u_seq.seq_done$_DFFE_PN0P_  (.D(_0247_),
    .Q(seq_done),
    .RESET_B(net66),
    .CLK(clknet_3_7__leaf_refclk_i_regs));
 sky130_fd_sc_hd__dfstp_2 \u_seq.state[0]$_DFF_PN1_  (.D(_0077_),
    .Q(\u_seq.state[0] ),
    .SET_B(net66),
    .CLK(clknet_3_7__leaf_refclk_i_regs));
 sky130_fd_sc_hd__dfrtp_1 \u_seq.state[1]$_DFF_PN0_  (.D(_0078_),
    .Q(\u_seq.state[1] ),
    .RESET_B(net66),
    .CLK(clknet_3_6__leaf_refclk_i_regs));
 sky130_fd_sc_hd__dfrtp_1 \u_seq.state[2]$_DFF_PN0_  (.D(_0079_),
    .Q(\u_seq.state[2] ),
    .RESET_B(net66),
    .CLK(clknet_3_7__leaf_refclk_i_regs));
 sky130_fd_sc_hd__dfrtp_1 \u_seq.state[3]$_DFF_PN0_  (.D(_0080_),
    .Q(\u_seq.state[3] ),
    .RESET_B(net66),
    .CLK(clknet_3_7__leaf_refclk_i_regs));
 sky130_fd_sc_hd__dfrtp_1 \u_seq.state[4]$_DFF_PN0_  (.D(_0081_),
    .Q(\u_seq.state[4] ),
    .RESET_B(net66),
    .CLK(clknet_3_6__leaf_refclk_i_regs));
 sky130_fd_sc_hd__dfrtp_1 \u_seq.state[5]$_DFF_PN0_  (.D(_0082_),
    .Q(\u_seq.state[5] ),
    .RESET_B(net66),
    .CLK(clknet_3_7__leaf_refclk_i_regs));
endmodule
