# ----------------------------------------------------------------------------------- #
# Copyright (c) 2015 Varnerlab
# School of Chemical Engineering Purdue University
# W. Lafayette IN 46907 USA

# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights 
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell 
# copies of the Software, and to permit persons to whom the Software is 
# furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included in
# all copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
# THE SOFTWARE.
# ----------------------------------------------------------------------------------- #
function Kinetics(t,x,data_dictionary)
# --------------------------------------------------------------------- #
# Kinetics.jl was generated using the Kwatee code generation system.
# Username: nicholas
# Type: CFPS-JULIA
# Version: 1.0
# Generation timestamp: 12-15-2015 14:24:33
# 
# Input arguments: 
# t  - current time 
# x  - state vector 
# data_dictionary - parameter vector 
# 
# Return arguments: 
# rate_vector - rate vector 
# --------------------------------------------------------------------- #
# 
# Alias the species vector - 
M_g6p_c = x[1];
M_f6p_c = x[2];
M_fdp_c = x[3];
M_dhap_c = x[4];
M_g3p_c = x[5];
M_13dpg_c = x[6];
M_3pg_c = x[7];
M_2pg_c = x[8];
M_oaa_c = x[9];
M_coa_c = x[10];
M_accoa_c = x[11];
M_6pgl_c = x[12];
M_6pgc_c = x[13];
M_ru5p_D_c = x[14];
M_xu5p_D_c = x[15];
M_r5p_c = x[16];
M_s7p_c = x[17];
M_e4p_c = x[18];
M_2ddg6p_c = x[19];
M_cit_c = x[20];
M_icit_c = x[21];
M_akg_c = x[22];
M_succoa_c = x[23];
M_q8_c = x[24];
M_fum_c = x[25];
M_q8h2_c = x[26];
M_mql8_c = x[27];
M_mqn8_c = x[28];
M_glx_c = x[29];
M_actp_c = x[30];
M_ppi_c = x[31];
M_etoh_c = x[32];
M_for_c = x[33];
M_h_e = x[34];
M_chor_c = x[35];
M_gar_c = x[36];
M_10fthf_c = x[37];
M_air_c = x[38];
M_thf_c = x[39];
M_hco3_c = x[40];
M_aicar_c = x[41];
M_imp_c = x[42];
M_arg_L_c = x[43];
M_h2s_c = x[44];
M_mlthf_c = x[45];
M_5mthf_c = x[46];
M_glc_D_c = x[47];
M_pep_c = x[48];
M_pyr_c = x[49];
M_ac_c = x[50];
M_lac_D_c = x[51];
M_mal_L_c = x[52];
M_atp_c = x[53];
M_adp_c = x[54];
M_amp_c = x[55];
M_gtp_c = x[56];
M_gdp_c = x[57];
M_gmp_c = x[58];
M_utp_c = x[59];
M_udp_c = x[60];
M_ump_c = x[61];
M_ctp_c = x[62];
M_cdp_c = x[63];
M_cmp_c = x[64];
M_succ_c = x[65];
M_asp_L_c = x[66];
M_gly_L_c = x[67];
M_ile_L_c = x[68];
M_asn_L_c = x[69];
M_cys_L_c = x[70];
M_lys_L_c = x[71];
M_his_L_c = x[72];
M_ala_L_c = x[73];
M_phe_L_c = x[74];
M_pro_L_c = x[75];
M_ser_L_c = x[76];
M_thr_L_c = x[77];
M_trp_L_c = x[78];
M_tyr_L_c = x[79];
M_val_L_c = x[80];
M_met_L_c = x[81];
M_leu_L_c = x[82];
M_glu_L_c = x[83];
M_gln_L_c = x[84];
CAT = x[85];
M_o2_c = x[86];
M_co2_c = x[87];
M_pi_c = x[88];
M_nh4_c = x[89];
M_so4_c = x[90];
M_h_c = x[91];
M_h2o_c = x[92];
M_nad_c = x[93];
M_nadh_c = x[94];
M_nadp_c = x[95];
M_nadph_c = x[96];
E_R_PTS = x[97];
E_R_glk_atp = x[98];
E_R_glk_utp = x[99];
E_R_glk_ctp = x[100];
E_R_glk_gtp = x[101];
E_R_pgi = x[102];
E_R_pgi_R = x[103];
E_R_pfk = x[104];
E_R_fdp = x[105];
E_R_fbaA = x[106];
E_R_fbaA_R = x[107];
E_R_tpiA = x[108];
E_R_tpiA_R = x[109];
E_R_gapA = x[110];
E_R_gapA_R = x[111];
E_R_pgk = x[112];
E_R_pgk_R = x[113];
E_R_gpm = x[114];
E_R_gpm_R = x[115];
E_R_eno = x[116];
E_R_eno_R = x[117];
E_R_pyk = x[118];
E_R_pck = x[119];
E_R_ppc = x[120];
E_R_pdh = x[121];
E_R_pps = x[122];
E_R_zwf = x[123];
E_R_zwf_R = x[124];
E_R_pgl = x[125];
E_R_gnd = x[126];
E_R_rpe = x[127];
E_R_rpe_R = x[128];
E_R_rpi = x[129];
E_R_rpi_R = x[130];
E_R_talAB = x[131];
E_R_talAB_R = x[132];
E_R_tkt1 = x[133];
E_R_tkt1_R = x[134];
E_R_tkt2 = x[135];
E_R_tkt2_R = x[136];
E_R_edd = x[137];
E_R_eda = x[138];
E_R_gltA = x[139];
E_R_acn = x[140];
E_R_acn_R = x[141];
E_R_icd = x[142];
E_R_icd_R = x[143];
E_R_sucAB = x[144];
E_R_sucCD = x[145];
E_R_sucCD_R = x[146];
E_R_sdh = x[147];
E_R_frd = x[148];
E_R_fum = x[149];
E_R_fum_R = x[150];
E_R_mdh = x[151];
E_R_mdh_R = x[152];
E_R_aceA = x[153];
E_R_aceB = x[154];
E_R_maeA = x[155];
E_R_maeB = x[156];
E_R_pta = x[157];
E_R_pta_R = x[158];
E_R_ackA = x[159];
E_R_ackA_R = x[160];
E_R_acs = x[161];
E_R_adhE = x[162];
E_R_adhE_R = x[163];
E_R_ldh_f = x[164];
E_R_ldh_r = x[165];
E_R_pflAB = x[166];
E_R_cyd = x[167];
E_R_app = x[168];
E_R_atp = x[169];
E_R_nuo = x[170];
E_R_pnt1 = x[171];
E_R_pnt2 = x[172];
E_R_ndh1 = x[173];
E_R_ndh2 = x[174];
E_R_hack1 = x[175];
E_R_ppk = x[176];
E_R_ppa = x[177];
E_R_chor = x[178];
E_R_gar = x[179];
E_R_air = x[180];
E_R_aicar = x[181];
E_R_imp = x[182];
E_R_gmp = x[183];
E_R_gdp = x[184];
E_R_gtp = x[185];
E_R_amp = x[186];
E_R_adk = x[187];
E_R_adk_R = x[188];
E_R_ump = x[189];
E_R_udp = x[190];
E_R_utp = x[191];
E_R_ctp = x[192];
E_R_cdp = x[193];
E_R_cmp = x[194];
E_R_alaAC = x[195];
E_R_arg = x[196];
E_R_aspC = x[197];
E_R_asnB = x[198];
E_R_asnA = x[199];
E_R_cysEMK = x[200];
E_R_gltBD = x[201];
E_R_gdhA = x[202];
E_R_glnA = x[203];
E_R_glyA = x[204];
E_R_his = x[205];
E_R_ile = x[206];
E_R_leu = x[207];
E_R_lys = x[208];
E_R_met = x[209];
E_R_phe = x[210];
E_R_pro = x[211];
E_R_serABC = x[212];
E_R_thr = x[213];
E_R_trp = x[214];
E_R_tyr = x[215];
E_R_val = x[216];
E_Ex_1 = x[217];
E_Ex_2 = x[218];
E_Ex_3 = x[219];
E_Ex_4 = x[220];
E_Ex_5 = x[221];
E_ATP_deg = x[222];
E_GTP_deg = x[223];
E_CTP_deg = x[224];
E_UTP_deg = x[225];
E_R_CAT = x[226];
E_R_amp_ppi = x[227];
E_R_amp_pi = x[228];
E_R_gmp_ppi = x[229];
E_R_gmp_pi = x[230];
E_R_cmp_ppi = x[231];
E_R_cmp_pi = x[232];
E_R_ump_ppi = x[233];
E_R_ump_pi = x[234];

# Formulate the kinetic rate vector - 
rate_constant_array = data_dictionary["RATE_CONSTANT_ARRAY"];
saturation_constant_array = data_dictionary["SATURATION_CONSTANT_ARRAY"];
rate_vector = Float64[];

# R_PTS: M_pep_c+M_glc_D_c = M_g6p_c+M_pyr_c
tmp_reaction = rate_constant_array[1]*(E_R_PTS)*(M_pep_c/(saturation_constant_array[1,48] + M_pep_c))*(M_glc_D_c/(saturation_constant_array[1,47] + M_glc_D_c));
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# R_glk_atp: M_atp_c+M_glc_D_c = M_adp_c+M_g6p_c+M_h_c
tmp_reaction = rate_constant_array[2]*(E_R_glk_atp)*(M_atp_c/(saturation_constant_array[2,53] + M_atp_c))*(M_glc_D_c/(saturation_constant_array[2,47] + M_glc_D_c));
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# R_glk_utp: M_utp_c+M_glc_D_c = M_udp_c+M_g6p_c+M_h_c
tmp_reaction = rate_constant_array[3]*(E_R_glk_utp)*(M_utp_c/(saturation_constant_array[3,59] + M_utp_c))*(M_glc_D_c/(saturation_constant_array[3,47] + M_glc_D_c));
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# R_glk_ctp: M_ctp_c+M_glc_D_c = M_cdp_c+M_g6p_c+M_h_c
tmp_reaction = rate_constant_array[4]*(E_R_glk_ctp)*(M_ctp_c/(saturation_constant_array[4,62] + M_ctp_c))*(M_glc_D_c/(saturation_constant_array[4,47] + M_glc_D_c));
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# R_glk_gtp: M_gtp_c+M_glc_D_c = M_gdp_c+M_g6p_c+M_h_c
tmp_reaction = rate_constant_array[5]*(E_R_glk_gtp)*(M_gtp_c/(saturation_constant_array[5,56] + M_gtp_c))*(M_glc_D_c/(saturation_constant_array[5,47] + M_glc_D_c));
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# R_pgi: M_g6p_c = M_f6p_c
tmp_reaction = rate_constant_array[6]*(E_R_pgi)*(M_g6p_c/(saturation_constant_array[6,1] + M_g6p_c));
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# R_pgi_R: M_f6p_c = M_g6p_c
tmp_reaction = rate_constant_array[7]*(E_R_pgi_R)*(M_f6p_c/(saturation_constant_array[7,2] + M_f6p_c));
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# R_pfk: M_atp_c+M_f6p_c = M_adp_c+M_fdp_c+M_h_c
tmp_reaction = rate_constant_array[8]*(E_R_pfk)*(M_atp_c/(saturation_constant_array[8,53] + M_atp_c))*(M_f6p_c/(saturation_constant_array[8,2] + M_f6p_c));
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# R_fdp: M_fdp_c+M_h2o_c = M_f6p_c+M_pi_c
tmp_reaction = rate_constant_array[9]*(E_R_fdp)*(M_fdp_c/(saturation_constant_array[9,3] + M_fdp_c))*(M_h2o_c/(saturation_constant_array[9,92] + M_h2o_c));
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# R_fbaA: M_fdp_c = M_dhap_c+M_g3p_c
tmp_reaction = rate_constant_array[10]*(E_R_fbaA)*(M_fdp_c/(saturation_constant_array[10,3] + M_fdp_c));
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# R_fbaA_R: M_dhap_c+M_g3p_c = M_fdp_c
tmp_reaction = rate_constant_array[11]*(E_R_fbaA_R)*(M_dhap_c/(saturation_constant_array[11,4] + M_dhap_c))*(M_g3p_c/(saturation_constant_array[11,5] + M_g3p_c));
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# R_tpiA: M_dhap_c = M_g3p_c
tmp_reaction = rate_constant_array[12]*(E_R_tpiA)*(M_dhap_c/(saturation_constant_array[12,4] + M_dhap_c));
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# R_tpiA_R: M_g3p_c = M_dhap_c
tmp_reaction = rate_constant_array[13]*(E_R_tpiA_R)*(M_g3p_c/(saturation_constant_array[13,5] + M_g3p_c));
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# R_gapA: M_g3p_c+M_nad_c+M_pi_c = M_13dpg_c+M_h_c+M_nadh_c
tmp_reaction = rate_constant_array[14]*(E_R_gapA)*(M_g3p_c/(saturation_constant_array[14,5] + M_g3p_c))*(M_nad_c/(saturation_constant_array[14,93] + M_nad_c))*(M_pi_c/(saturation_constant_array[14,88] + M_pi_c));
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# R_gapA_R: M_13dpg_c+M_h_c+M_nadh_c = M_g3p_c+M_nad_c+M_pi_c
tmp_reaction = rate_constant_array[15]*(E_R_gapA_R)*(M_13dpg_c/(saturation_constant_array[15,6] + M_13dpg_c))*(M_h_c/(saturation_constant_array[15,91] + M_h_c))*(M_nadh_c/(saturation_constant_array[15,94] + M_nadh_c));
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# R_pgk: M_13dpg_c+M_adp_c = M_3pg_c+M_atp_c
tmp_reaction = rate_constant_array[16]*(E_R_pgk)*(M_13dpg_c/(saturation_constant_array[16,6] + M_13dpg_c))*(M_adp_c/(saturation_constant_array[16,54] + M_adp_c));
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# R_pgk_R: M_3pg_c+M_atp_c = M_13dpg_c+M_adp_c
tmp_reaction = rate_constant_array[17]*(E_R_pgk_R)*(M_3pg_c/(saturation_constant_array[17,7] + M_3pg_c))*(M_atp_c/(saturation_constant_array[17,53] + M_atp_c));
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# R_gpm: M_3pg_c = M_2pg_c
tmp_reaction = rate_constant_array[18]*(E_R_gpm)*(M_3pg_c/(saturation_constant_array[18,7] + M_3pg_c));
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# R_gpm_R: M_2pg_c = M_3pg_c
tmp_reaction = rate_constant_array[19]*(E_R_gpm_R)*(M_2pg_c/(saturation_constant_array[19,8] + M_2pg_c));
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# R_eno: M_2pg_c = M_h2o_c+M_pep_c
tmp_reaction = rate_constant_array[20]*(E_R_eno)*(M_2pg_c/(saturation_constant_array[20,8] + M_2pg_c));
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# R_eno_R: M_h2o_c+M_pep_c = M_2pg_c
tmp_reaction = rate_constant_array[21]*(E_R_eno_R)*(M_h2o_c/(saturation_constant_array[21,92] + M_h2o_c))*(M_pep_c/(saturation_constant_array[21,48] + M_pep_c));
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# R_pyk: M_adp_c+M_h_c+M_pep_c = M_atp_c+M_pyr_c
tmp_reaction = rate_constant_array[22]*(E_R_pyk)*(M_adp_c/(saturation_constant_array[22,54] + M_adp_c))*(M_h_c/(saturation_constant_array[22,91] + M_h_c))*(M_pep_c/(saturation_constant_array[22,48] + M_pep_c));
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# R_pck: M_atp_c+M_oaa_c = M_adp_c+M_co2_c+M_pep_c
tmp_reaction = rate_constant_array[23]*(E_R_pck)*(M_atp_c/(saturation_constant_array[23,53] + M_atp_c))*(M_oaa_c/(saturation_constant_array[23,9] + M_oaa_c));
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# R_ppc: M_co2_c+M_h2o_c+M_pep_c = M_h_c+M_oaa_c+M_pi_c
tmp_reaction = rate_constant_array[24]*(E_R_ppc)*(M_co2_c/(saturation_constant_array[24,87] + M_co2_c))*(M_h2o_c/(saturation_constant_array[24,92] + M_h2o_c))*(M_pep_c/(saturation_constant_array[24,48] + M_pep_c));
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# R_pdh: M_coa_c+M_nad_c+M_pyr_c = M_accoa_c+M_co2_c+M_nadh_c
tmp_reaction = rate_constant_array[25]*(E_R_pdh)*(M_coa_c/(saturation_constant_array[25,10] + M_coa_c))*(M_nad_c/(saturation_constant_array[25,93] + M_nad_c))*(M_pyr_c/(saturation_constant_array[25,49] + M_pyr_c));
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# R_pps: M_atp_c+M_h2o_c+M_pyr_c = M_amp_c+2*M_h_c+M_pep_c+M_pi_c
tmp_reaction = rate_constant_array[26]*(E_R_pps)*(M_atp_c/(saturation_constant_array[26,53] + M_atp_c))*(M_h2o_c/(saturation_constant_array[26,92] + M_h2o_c))*(M_pyr_c/(saturation_constant_array[26,49] + M_pyr_c));
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# R_zwf: M_g6p_c+M_nadp_c = M_6pgl_c+M_h_c+M_nadph_c
tmp_reaction = rate_constant_array[27]*(E_R_zwf)*(M_g6p_c/(saturation_constant_array[27,1] + M_g6p_c))*(M_nadp_c/(saturation_constant_array[27,95] + M_nadp_c));
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# R_zwf_R: M_6pgl_c+M_h_c+M_nadph_c = M_g6p_c+M_nadp_c
tmp_reaction = rate_constant_array[28]*(E_R_zwf_R)*(M_6pgl_c/(saturation_constant_array[28,12] + M_6pgl_c))*(M_h_c/(saturation_constant_array[28,91] + M_h_c))*(M_nadph_c/(saturation_constant_array[28,96] + M_nadph_c));
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# R_pgl: M_6pgl_c+M_h2o_c = M_6pgc_c+M_h_c
tmp_reaction = rate_constant_array[29]*(E_R_pgl)*(M_6pgl_c/(saturation_constant_array[29,12] + M_6pgl_c))*(M_h2o_c/(saturation_constant_array[29,92] + M_h2o_c));
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# R_gnd: M_6pgc_c+M_nadp_c = M_co2_c+M_nadph_c+M_ru5p_D_c
tmp_reaction = rate_constant_array[30]*(E_R_gnd)*(M_6pgc_c/(saturation_constant_array[30,13] + M_6pgc_c))*(M_nadp_c/(saturation_constant_array[30,95] + M_nadp_c));
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# R_rpe: M_ru5p_D_c = M_xu5p_D_c
tmp_reaction = rate_constant_array[31]*(E_R_rpe)*(M_ru5p_D_c/(saturation_constant_array[31,14] + M_ru5p_D_c));
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# R_rpe_R: M_xu5p_D_c = M_ru5p_D_c
tmp_reaction = rate_constant_array[32]*(E_R_rpe_R)*(M_xu5p_D_c/(saturation_constant_array[32,15] + M_xu5p_D_c));
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# R_rpi: M_r5p_c = M_ru5p_D_c
tmp_reaction = rate_constant_array[33]*(E_R_rpi)*(M_r5p_c/(saturation_constant_array[33,16] + M_r5p_c));
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# R_rpi_R: M_ru5p_D_c = M_r5p_c
tmp_reaction = rate_constant_array[34]*(E_R_rpi_R)*(M_ru5p_D_c/(saturation_constant_array[34,14] + M_ru5p_D_c));
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# R_talAB: M_g3p_c+M_s7p_c = M_e4p_c+M_f6p_c
tmp_reaction = rate_constant_array[35]*(E_R_talAB)*(M_g3p_c/(saturation_constant_array[35,5] + M_g3p_c))*(M_s7p_c/(saturation_constant_array[35,17] + M_s7p_c));
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# R_talAB_R: M_e4p_c+M_f6p_c = M_g3p_c+M_s7p_c
tmp_reaction = rate_constant_array[36]*(E_R_talAB_R)*(M_e4p_c/(saturation_constant_array[36,18] + M_e4p_c))*(M_f6p_c/(saturation_constant_array[36,2] + M_f6p_c));
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# R_tkt1: M_r5p_c+M_xu5p_D_c = M_g3p_c+M_s7p_c
tmp_reaction = rate_constant_array[37]*(E_R_tkt1)*(M_r5p_c/(saturation_constant_array[37,16] + M_r5p_c))*(M_xu5p_D_c/(saturation_constant_array[37,15] + M_xu5p_D_c));
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# R_tkt1_R: M_g3p_c+M_s7p_c = M_r5p_c+M_xu5p_D_c
tmp_reaction = rate_constant_array[38]*(E_R_tkt1_R)*(M_g3p_c/(saturation_constant_array[38,5] + M_g3p_c))*(M_s7p_c/(saturation_constant_array[38,17] + M_s7p_c));
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# R_tkt2: M_e4p_c+M_xu5p_D_c = M_f6p_c+M_g3p_c
tmp_reaction = rate_constant_array[39]*(E_R_tkt2)*(M_e4p_c/(saturation_constant_array[39,18] + M_e4p_c))*(M_xu5p_D_c/(saturation_constant_array[39,15] + M_xu5p_D_c));
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# R_tkt2_R: M_f6p_c+M_g3p_c = M_e4p_c+M_xu5p_D_c
tmp_reaction = rate_constant_array[40]*(E_R_tkt2_R)*(M_f6p_c/(saturation_constant_array[40,2] + M_f6p_c))*(M_g3p_c/(saturation_constant_array[40,5] + M_g3p_c));
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# R_edd: M_6pgc_c = M_2ddg6p_c+M_h2o_c
tmp_reaction = rate_constant_array[41]*(E_R_edd)*(M_6pgc_c/(saturation_constant_array[41,13] + M_6pgc_c));
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# R_eda: M_2ddg6p_c = M_g3p_c+M_pyr_c
tmp_reaction = rate_constant_array[42]*(E_R_eda)*(M_2ddg6p_c/(saturation_constant_array[42,19] + M_2ddg6p_c));
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# R_gltA: M_accoa_c+M_h2o_c+M_oaa_c = M_cit_c+M_coa_c+M_h_c
tmp_reaction = rate_constant_array[43]*(E_R_gltA)*(M_accoa_c/(saturation_constant_array[43,11] + M_accoa_c))*(M_h2o_c/(saturation_constant_array[43,92] + M_h2o_c))*(M_oaa_c/(saturation_constant_array[43,9] + M_oaa_c));
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# R_acn: M_cit_c = M_icit_c
tmp_reaction = rate_constant_array[44]*(E_R_acn)*(M_cit_c/(saturation_constant_array[44,20] + M_cit_c));
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# R_acn_R: M_icit_c = M_cit_c
tmp_reaction = rate_constant_array[45]*(E_R_acn_R)*(M_icit_c/(saturation_constant_array[45,21] + M_icit_c));
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# R_icd: M_icit_c+M_nadp_c = M_akg_c+M_co2_c+M_nadph_c
tmp_reaction = rate_constant_array[46]*(E_R_icd)*(M_icit_c/(saturation_constant_array[46,21] + M_icit_c))*(M_nadp_c/(saturation_constant_array[46,95] + M_nadp_c));
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# R_icd_R: M_akg_c+M_co2_c+M_nadph_c = M_icit_c+M_nadp_c
tmp_reaction = rate_constant_array[47]*(E_R_icd_R)*(M_akg_c/(saturation_constant_array[47,22] + M_akg_c))*(M_co2_c/(saturation_constant_array[47,87] + M_co2_c))*(M_nadph_c/(saturation_constant_array[47,96] + M_nadph_c));
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# R_sucAB: M_akg_c+M_coa_c+M_nad_c = M_co2_c+M_nadh_c+M_succoa_c
tmp_reaction = rate_constant_array[48]*(E_R_sucAB)*(M_akg_c/(saturation_constant_array[48,22] + M_akg_c))*(M_coa_c/(saturation_constant_array[48,10] + M_coa_c))*(M_nad_c/(saturation_constant_array[48,93] + M_nad_c));
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# R_sucCD: M_atp_c+M_coa_c+M_succ_c = M_adp_c+M_pi_c+M_succoa_c
tmp_reaction = rate_constant_array[49]*(E_R_sucCD)*(M_atp_c/(saturation_constant_array[49,53] + M_atp_c))*(M_coa_c/(saturation_constant_array[49,10] + M_coa_c))*(M_succ_c/(saturation_constant_array[49,65] + M_succ_c));
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# R_sucCD_R: M_adp_c+M_pi_c+M_succoa_c = M_atp_c+M_coa_c+M_succ_c
tmp_reaction = rate_constant_array[50]*(E_R_sucCD_R)*(M_adp_c/(saturation_constant_array[50,54] + M_adp_c))*(M_pi_c/(saturation_constant_array[50,88] + M_pi_c))*(M_succoa_c/(saturation_constant_array[50,23] + M_succoa_c));
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# R_sdh: M_q8_c+M_succ_c = M_fum_c+M_q8h2_c
tmp_reaction = rate_constant_array[51]*(E_R_sdh)*(M_q8_c/(saturation_constant_array[51,24] + M_q8_c))*(M_succ_c/(saturation_constant_array[51,65] + M_succ_c));
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# R_frd: M_fum_c+M_mql8_c = M_mqn8_c+M_succ_c
tmp_reaction = rate_constant_array[52]*(E_R_frd)*(M_fum_c/(saturation_constant_array[52,25] + M_fum_c))*(M_mql8_c/(saturation_constant_array[52,27] + M_mql8_c));
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# R_fum: M_fum_c+M_h2o_c = M_mal_L_c
tmp_reaction = rate_constant_array[53]*(E_R_fum)*(M_fum_c/(saturation_constant_array[53,25] + M_fum_c))*(M_h2o_c/(saturation_constant_array[53,92] + M_h2o_c));
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# R_fum_R: M_mal_L_c = M_fum_c+M_h2o_c
tmp_reaction = rate_constant_array[54]*(E_R_fum_R)*(M_mal_L_c/(saturation_constant_array[54,52] + M_mal_L_c));
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# R_mdh: M_mal_L_c+M_nad_c = M_oaa_c+M_h_c+M_nadh_c
tmp_reaction = rate_constant_array[55]*(E_R_mdh)*(M_mal_L_c/(saturation_constant_array[55,52] + M_mal_L_c))*(M_nad_c/(saturation_constant_array[55,93] + M_nad_c));
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# R_mdh_R: M_oaa_c+M_h_c+M_nadh_c = M_mal_L_c+M_nad_c
tmp_reaction = rate_constant_array[56]*(E_R_mdh_R)*(M_oaa_c/(saturation_constant_array[56,9] + M_oaa_c))*(M_h_c/(saturation_constant_array[56,91] + M_h_c))*(M_nadh_c/(saturation_constant_array[56,94] + M_nadh_c));
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# R_aceA: M_icit_c = M_glx_c+M_succ_c
tmp_reaction = rate_constant_array[57]*(E_R_aceA)*(M_icit_c/(saturation_constant_array[57,21] + M_icit_c));
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# R_aceB: M_accoa_c+M_glx_c+M_h2o_c = M_coa_c+M_h_c+M_mal_L_c
tmp_reaction = rate_constant_array[58]*(E_R_aceB)*(M_accoa_c/(saturation_constant_array[58,11] + M_accoa_c))*(M_glx_c/(saturation_constant_array[58,29] + M_glx_c))*(M_h2o_c/(saturation_constant_array[58,92] + M_h2o_c));
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# R_maeA: M_mal_L_c+M_nad_c = M_co2_c+M_nadh_c+M_pyr_c
tmp_reaction = rate_constant_array[59]*(E_R_maeA)*(M_mal_L_c/(saturation_constant_array[59,52] + M_mal_L_c))*(M_nad_c/(saturation_constant_array[59,93] + M_nad_c));
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# R_maeB: M_mal_L_c+M_nadp_c = M_co2_c+M_nadph_c+M_pyr_c
tmp_reaction = rate_constant_array[60]*(E_R_maeB)*(M_mal_L_c/(saturation_constant_array[60,52] + M_mal_L_c))*(M_nadp_c/(saturation_constant_array[60,95] + M_nadp_c));
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# R_pta: M_accoa_c+M_pi_c = M_actp_c+M_coa_c
tmp_reaction = rate_constant_array[61]*(E_R_pta)*(M_accoa_c/(saturation_constant_array[61,11] + M_accoa_c))*(M_pi_c/(saturation_constant_array[61,88] + M_pi_c));
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# R_pta_R: M_actp_c+M_coa_c = M_accoa_c+M_pi_c
tmp_reaction = rate_constant_array[62]*(E_R_pta_R)*(M_actp_c/(saturation_constant_array[62,30] + M_actp_c))*(M_coa_c/(saturation_constant_array[62,10] + M_coa_c));
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# R_ackA: M_actp_c+M_adp_c = M_ac_c+M_atp_c
tmp_reaction = rate_constant_array[63]*(E_R_ackA)*(M_actp_c/(saturation_constant_array[63,30] + M_actp_c))*(M_adp_c/(saturation_constant_array[63,54] + M_adp_c));
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# R_ackA_R: M_ac_c+M_atp_c = M_actp_c+M_adp_c
tmp_reaction = rate_constant_array[64]*(E_R_ackA_R)*(M_ac_c/(saturation_constant_array[64,50] + M_ac_c))*(M_atp_c/(saturation_constant_array[64,53] + M_atp_c));
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# R_acs: M_ac_c+M_atp_c+M_coa_c = M_accoa_c+M_amp_c+M_ppi_c
tmp_reaction = rate_constant_array[65]*(E_R_acs)*(M_ac_c/(saturation_constant_array[65,50] + M_ac_c))*(M_atp_c/(saturation_constant_array[65,53] + M_atp_c))*(M_coa_c/(saturation_constant_array[65,10] + M_coa_c));
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# R_adhE: M_accoa_c+2*M_h_c+2*M_nadh_c = M_coa_c+M_etoh_c+2*M_nad_c
tmp_reaction = rate_constant_array[66]*(E_R_adhE)*(M_accoa_c/(saturation_constant_array[66,11] + M_accoa_c))*(M_h_c/(saturation_constant_array[66,91] + M_h_c))*(M_nadh_c/(saturation_constant_array[66,94] + M_nadh_c));
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# R_adhE_R: M_coa_c+M_etoh_c+2*M_nad_c = M_accoa_c+2*M_h_c+2*M_nadh_c
tmp_reaction = rate_constant_array[67]*(E_R_adhE_R)*(M_coa_c/(saturation_constant_array[67,10] + M_coa_c))*(M_etoh_c/(saturation_constant_array[67,32] + M_etoh_c))*(M_nad_c/(saturation_constant_array[67,93] + M_nad_c));
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# R_ldh_f: M_pyr_c+M_nadh_c+M_h_c = M_lac_D_c+M_nad_c
tmp_reaction = rate_constant_array[68]*(E_R_ldh_f)*(M_pyr_c/(saturation_constant_array[68,49] + M_pyr_c))*(M_nadh_c/(saturation_constant_array[68,94] + M_nadh_c))*(M_h_c/(saturation_constant_array[68,91] + M_h_c));
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# R_ldh_r: M_lac_D_c+M_nad_c = M_pyr_c+M_nadh_c+M_h_c
tmp_reaction = rate_constant_array[69]*(E_R_ldh_r)*(M_lac_D_c/(saturation_constant_array[69,51] + M_lac_D_c))*(M_nad_c/(saturation_constant_array[69,93] + M_nad_c));
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# R_pflAB: M_coa_c+M_pyr_c = M_accoa_c+M_for_c
tmp_reaction = rate_constant_array[70]*(E_R_pflAB)*(M_coa_c/(saturation_constant_array[70,10] + M_coa_c))*(M_pyr_c/(saturation_constant_array[70,49] + M_pyr_c));
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# R_cyd: 2*M_h_c+0.5*M_o2_c+M_q8h2_c = M_h2o_c+M_q8_c+2*M_h_e
tmp_reaction = rate_constant_array[71]*(E_R_cyd)*(M_h_c/(saturation_constant_array[71,91] + M_h_c))*(M_o2_c/(saturation_constant_array[71,86] + M_o2_c))*(M_q8h2_c/(saturation_constant_array[71,26] + M_q8h2_c));
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# R_app: 2*M_h_c+M_mql8_c+0.5*M_o2_c = M_h2o_c+M_mqn8_c+2*M_h_e
tmp_reaction = rate_constant_array[72]*(E_R_app)*(M_h_c/(saturation_constant_array[72,91] + M_h_c))*(M_mql8_c/(saturation_constant_array[72,27] + M_mql8_c))*(M_o2_c/(saturation_constant_array[72,86] + M_o2_c));
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# R_atp: M_adp_c+M_pi_c+4*M_h_e = M_atp_c+3*M_h_c+M_h2o_c
tmp_reaction = rate_constant_array[73]*(E_R_atp)*(M_adp_c/(saturation_constant_array[73,54] + M_adp_c))*(M_pi_c/(saturation_constant_array[73,88] + M_pi_c))*(M_h_e/(saturation_constant_array[73,34] + M_h_e));
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# R_nuo: 3*M_h_c+M_nadh_c+M_q8_c = M_nad_c+M_q8h2_c+2*M_h_e
tmp_reaction = rate_constant_array[74]*(E_R_nuo)*(M_h_c/(saturation_constant_array[74,91] + M_h_c))*(M_nadh_c/(saturation_constant_array[74,94] + M_nadh_c))*(M_q8_c/(saturation_constant_array[74,24] + M_q8_c));
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# R_pnt1: M_nad_c+M_nadph_c = M_nadh_c+M_nadp_c
tmp_reaction = rate_constant_array[75]*(E_R_pnt1)*(M_nad_c/(saturation_constant_array[75,93] + M_nad_c))*(M_nadph_c/(saturation_constant_array[75,96] + M_nadph_c));
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# R_pnt2: M_nadh_c+M_nadp_c+2*M_h_e = 2*M_h_c+M_nad_c+M_nadph_c
tmp_reaction = rate_constant_array[76]*(E_R_pnt2)*(M_nadh_c/(saturation_constant_array[76,94] + M_nadh_c))*(M_nadp_c/(saturation_constant_array[76,95] + M_nadp_c))*(M_h_e/(saturation_constant_array[76,34] + M_h_e));
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# R_ndh1: M_h_c+M_nadh_c+M_q8_c = M_nad_c+M_q8h2_c
tmp_reaction = rate_constant_array[77]*(E_R_ndh1)*(M_h_c/(saturation_constant_array[77,91] + M_h_c))*(M_nadh_c/(saturation_constant_array[77,94] + M_nadh_c))*(M_q8_c/(saturation_constant_array[77,24] + M_q8_c));
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# R_ndh2: M_h_c+M_mqn8_c+M_nadh_c = M_mql8_c+M_nad_c
tmp_reaction = rate_constant_array[78]*(E_R_ndh2)*(M_h_c/(saturation_constant_array[78,91] + M_h_c))*(M_mqn8_c/(saturation_constant_array[78,28] + M_mqn8_c))*(M_nadh_c/(saturation_constant_array[78,94] + M_nadh_c));
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# R_hack1: M_atp_c+M_h2o_c = M_adp_c+M_h_c+M_pi_c
tmp_reaction = rate_constant_array[79]*(E_R_hack1)*(M_atp_c/(saturation_constant_array[79,53] + M_atp_c))*(M_h2o_c/(saturation_constant_array[79,92] + M_h2o_c));
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# R_ppk: M_atp_c+M_pi_c = M_adp_c+M_ppi_c
tmp_reaction = rate_constant_array[80]*(E_R_ppk)*(M_atp_c/(saturation_constant_array[80,53] + M_atp_c))*(M_pi_c/(saturation_constant_array[80,88] + M_pi_c));
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# R_ppa: M_ppi_c+M_h2o_c = 2*M_pi_c+M_h_c
tmp_reaction = rate_constant_array[81]*(E_R_ppa)*(M_ppi_c/(saturation_constant_array[81,31] + M_ppi_c))*(M_h2o_c/(saturation_constant_array[81,92] + M_h2o_c));
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# R_chor: M_e4p_c+2*M_pep_c+M_nadph_c+M_atp_c = M_chor_c+M_nadp_c+M_adp_c+4*M_pi_c
tmp_reaction = rate_constant_array[82]*(E_R_chor)*(M_e4p_c/(saturation_constant_array[82,18] + M_e4p_c))*(M_pep_c/(saturation_constant_array[82,48] + M_pep_c))*(M_nadph_c/(saturation_constant_array[82,96] + M_nadph_c))*(M_atp_c/(saturation_constant_array[82,53] + M_atp_c));
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# R_gar: M_r5p_c+M_gln_L_c+M_gly_L_c+2*M_atp_c+M_h2o_c = M_gar_c+M_glu_L_c+M_adp_c+M_amp_c+M_pi_c+M_ppi_c+7*M_h_c
tmp_reaction = rate_constant_array[83]*(E_R_gar)*(M_r5p_c/(saturation_constant_array[83,16] + M_r5p_c))*(M_gln_L_c/(saturation_constant_array[83,84] + M_gln_L_c))*(M_gly_L_c/(saturation_constant_array[83,67] + M_gly_L_c))*(M_atp_c/(saturation_constant_array[83,53] + M_atp_c))*(M_h2o_c/(saturation_constant_array[83,92] + M_h2o_c));
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# R_air: M_gar_c+M_10fthf_c+M_gln_L_c+2*M_atp_c+M_h2o_c = M_air_c+M_thf_c+M_glu_L_c+2*M_adp_c+2*M_pi_c+3*M_h_c
tmp_reaction = rate_constant_array[84]*(E_R_air)*(M_gar_c/(saturation_constant_array[84,36] + M_gar_c))*(M_10fthf_c/(saturation_constant_array[84,37] + M_10fthf_c))*(M_gln_L_c/(saturation_constant_array[84,84] + M_gln_L_c))*(M_atp_c/(saturation_constant_array[84,53] + M_atp_c))*(M_h2o_c/(saturation_constant_array[84,92] + M_h2o_c));
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# R_aicar: M_air_c+M_asp_L_c+2*M_atp_c+M_hco3_c = M_aicar_c+M_fum_c+2*M_adp_c+2*M_h_c+2*M_pi_c
tmp_reaction = rate_constant_array[85]*(E_R_aicar)*(M_air_c/(saturation_constant_array[85,38] + M_air_c))*(M_asp_L_c/(saturation_constant_array[85,66] + M_asp_L_c))*(M_atp_c/(saturation_constant_array[85,53] + M_atp_c))*(M_hco3_c/(saturation_constant_array[85,40] + M_hco3_c));
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# R_imp: M_aicar_c+M_10fthf_c = M_imp_c+M_thf_c+M_h2o_c
tmp_reaction = rate_constant_array[86]*(E_R_imp)*(M_aicar_c/(saturation_constant_array[86,41] + M_aicar_c))*(M_10fthf_c/(saturation_constant_array[86,37] + M_10fthf_c));
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# R_gmp: M_imp_c+M_atp_c+M_gln_L_c+M_nad_c+2*M_h2o_c = M_gmp_c+M_amp_c+M_glu_L_c+M_nadh_c+3*M_h_c+M_ppi_c
tmp_reaction = rate_constant_array[87]*(E_R_gmp)*(M_imp_c/(saturation_constant_array[87,42] + M_imp_c))*(M_atp_c/(saturation_constant_array[87,53] + M_atp_c))*(M_gln_L_c/(saturation_constant_array[87,84] + M_gln_L_c))*(M_nad_c/(saturation_constant_array[87,93] + M_nad_c))*(M_h2o_c/(saturation_constant_array[87,92] + M_h2o_c));
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# R_gdp: M_gmp_c+M_atp_c = M_gdp_c+M_adp_c
tmp_reaction = rate_constant_array[88]*(E_R_gdp)*(M_gmp_c/(saturation_constant_array[88,58] + M_gmp_c))*(M_atp_c/(saturation_constant_array[88,53] + M_atp_c));
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# R_gtp: M_gdp_c+M_atp_c = M_gtp_c+M_adp_c
tmp_reaction = rate_constant_array[89]*(E_R_gtp)*(M_gdp_c/(saturation_constant_array[89,57] + M_gdp_c))*(M_atp_c/(saturation_constant_array[89,53] + M_atp_c));
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# R_amp: M_asp_L_c+M_imp_c+M_gtp_c = M_amp_c+M_gdp_c+M_pi_c+2*M_h_c+M_fum_c
tmp_reaction = rate_constant_array[90]*(E_R_amp)*(M_asp_L_c/(saturation_constant_array[90,66] + M_asp_L_c))*(M_imp_c/(saturation_constant_array[90,42] + M_imp_c))*(M_gtp_c/(saturation_constant_array[90,56] + M_gtp_c));
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# R_adk: M_amp_c+M_atp_c = 2*M_adp_c
tmp_reaction = rate_constant_array[91]*(E_R_adk)*(M_amp_c/(saturation_constant_array[91,55] + M_amp_c))*(M_atp_c/(saturation_constant_array[91,53] + M_atp_c));
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# R_adk_R: 2*M_adp_c = M_amp_c+M_atp_c
tmp_reaction = rate_constant_array[92]*(E_R_adk_R)*(M_adp_c/(saturation_constant_array[92,54] + M_adp_c));
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# R_ump: M_gln_L_c+M_asp_L_c+M_r5p_c+M_q8_c+3*M_atp_c+M_hco3_c = M_ump_c+M_glu_L_c+M_q8h2_c+2*M_h_c+2*M_adp_c+M_amp_c+2*M_pi_c+M_ppi_c+M_co2_c
tmp_reaction = rate_constant_array[93]*(E_R_ump)*(M_gln_L_c/(saturation_constant_array[93,84] + M_gln_L_c))*(M_asp_L_c/(saturation_constant_array[93,66] + M_asp_L_c))*(M_r5p_c/(saturation_constant_array[93,16] + M_r5p_c))*(M_q8_c/(saturation_constant_array[93,24] + M_q8_c))*(M_atp_c/(saturation_constant_array[93,53] + M_atp_c))*(M_hco3_c/(saturation_constant_array[93,40] + M_hco3_c));
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# R_udp: M_ump_c+M_atp_c = M_udp_c+M_adp_c
tmp_reaction = rate_constant_array[94]*(E_R_udp)*(M_ump_c/(saturation_constant_array[94,61] + M_ump_c))*(M_atp_c/(saturation_constant_array[94,53] + M_atp_c));
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# R_utp: M_udp_c+M_atp_c = M_utp_c+M_adp_c
tmp_reaction = rate_constant_array[95]*(E_R_utp)*(M_udp_c/(saturation_constant_array[95,60] + M_udp_c))*(M_atp_c/(saturation_constant_array[95,53] + M_atp_c));
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# R_ctp: M_utp_c+M_gln_L_c+M_atp_c+M_h2o_c = M_ctp_c+M_glu_L_c+M_adp_c+M_pi_c+3*M_h_c
tmp_reaction = rate_constant_array[96]*(E_R_ctp)*(M_utp_c/(saturation_constant_array[96,59] + M_utp_c))*(M_gln_L_c/(saturation_constant_array[96,84] + M_gln_L_c))*(M_atp_c/(saturation_constant_array[96,53] + M_atp_c))*(M_h2o_c/(saturation_constant_array[96,92] + M_h2o_c));
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# R_cdp: M_ctp_c+M_h2o_c = M_cdp_c+M_pi_c+M_h_c
tmp_reaction = rate_constant_array[97]*(E_R_cdp)*(M_ctp_c/(saturation_constant_array[97,62] + M_ctp_c))*(M_h2o_c/(saturation_constant_array[97,92] + M_h2o_c));
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# R_cmp: M_cdp_c+M_h2o_c = M_cmp_c+M_pi_c+M_h_c
tmp_reaction = rate_constant_array[98]*(E_R_cmp)*(M_cdp_c/(saturation_constant_array[98,63] + M_cdp_c))*(M_h2o_c/(saturation_constant_array[98,92] + M_h2o_c));
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# R_alaAC: M_pyr_c+M_glu_L_c = M_ala_L_c+M_akg_c
tmp_reaction = rate_constant_array[99]*(E_R_alaAC)*(M_pyr_c/(saturation_constant_array[99,49] + M_pyr_c))*(M_glu_L_c/(saturation_constant_array[99,83] + M_glu_L_c));
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# R_arg: M_glu_L_c+M_accoa_c+4*M_atp_c+M_nadph_c+3*M_h2o_c+M_gln_L_c+M_asp_L_c+M_co2_c = M_arg_L_c+M_coa_c+5*M_h_c+3*M_adp_c+3*M_pi_c+M_nadp_c+M_akg_c+M_ac_c+M_amp_c+M_ppi_c+M_fum_c
tmp_reaction = rate_constant_array[100]*(E_R_arg)*(M_glu_L_c/(saturation_constant_array[100,83] + M_glu_L_c))*(M_accoa_c/(saturation_constant_array[100,11] + M_accoa_c))*(M_atp_c/(saturation_constant_array[100,53] + M_atp_c))*(M_nadph_c/(saturation_constant_array[100,96] + M_nadph_c))*(M_h2o_c/(saturation_constant_array[100,92] + M_h2o_c))*(M_gln_L_c/(saturation_constant_array[100,84] + M_gln_L_c))*(M_asp_L_c/(saturation_constant_array[100,66] + M_asp_L_c))*(M_co2_c/(saturation_constant_array[100,87] + M_co2_c));
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# R_aspC: M_glu_L_c+M_oaa_c = M_asp_L_c+M_akg_c
tmp_reaction = rate_constant_array[101]*(E_R_aspC)*(M_glu_L_c/(saturation_constant_array[101,83] + M_glu_L_c))*(M_oaa_c/(saturation_constant_array[101,9] + M_oaa_c));
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# R_asnB: M_asp_L_c+M_gln_L_c+M_h2o_c+M_atp_c = M_asn_L_c+M_glu_L_c+M_h_c+M_ppi_c+M_amp_c
tmp_reaction = rate_constant_array[102]*(E_R_asnB)*(M_asp_L_c/(saturation_constant_array[102,66] + M_asp_L_c))*(M_gln_L_c/(saturation_constant_array[102,84] + M_gln_L_c))*(M_h2o_c/(saturation_constant_array[102,92] + M_h2o_c))*(M_atp_c/(saturation_constant_array[102,53] + M_atp_c));
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# R_asnA: M_asp_L_c+M_atp_c+M_nh4_c = M_asn_L_c+M_h_c+M_ppi_c+M_amp_c
tmp_reaction = rate_constant_array[103]*(E_R_asnA)*(M_asp_L_c/(saturation_constant_array[103,66] + M_asp_L_c))*(M_atp_c/(saturation_constant_array[103,53] + M_atp_c))*(M_nh4_c/(saturation_constant_array[103,89] + M_nh4_c));
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# R_cysEMK: M_ser_L_c+M_accoa_c+M_h2s_c = M_cys_L_c+M_coa_c+M_h_c+M_ac_c
tmp_reaction = rate_constant_array[104]*(E_R_cysEMK)*(M_ser_L_c/(saturation_constant_array[104,76] + M_ser_L_c))*(M_accoa_c/(saturation_constant_array[104,11] + M_accoa_c))*(M_h2s_c/(saturation_constant_array[104,44] + M_h2s_c));
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# R_gltBD: M_gln_L_c+M_akg_c+M_nadph_c+M_h_c = 2*M_glu_L_c+M_nadp_c
tmp_reaction = rate_constant_array[105]*(E_R_gltBD)*(M_gln_L_c/(saturation_constant_array[105,84] + M_gln_L_c))*(M_akg_c/(saturation_constant_array[105,22] + M_akg_c))*(M_nadph_c/(saturation_constant_array[105,96] + M_nadph_c))*(M_h_c/(saturation_constant_array[105,91] + M_h_c));
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# R_gdhA: M_akg_c+M_nadph_c+M_nh4_c+M_h_c = M_glu_L_c+M_h2o_c+M_nadp_c
tmp_reaction = rate_constant_array[106]*(E_R_gdhA)*(M_akg_c/(saturation_constant_array[106,22] + M_akg_c))*(M_nadph_c/(saturation_constant_array[106,96] + M_nadph_c))*(M_nh4_c/(saturation_constant_array[106,89] + M_nh4_c))*(M_h_c/(saturation_constant_array[106,91] + M_h_c));
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# R_glnA: M_glu_L_c+M_atp_c+M_nh4_c = M_gln_L_c+M_h_c+M_adp_c+M_pi_c
tmp_reaction = rate_constant_array[107]*(E_R_glnA)*(M_glu_L_c/(saturation_constant_array[107,83] + M_glu_L_c))*(M_atp_c/(saturation_constant_array[107,53] + M_atp_c))*(M_nh4_c/(saturation_constant_array[107,89] + M_nh4_c));
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# R_glyA: M_ser_L_c+M_thf_c = M_gly_L_c+M_h2o_c+M_mlthf_c
tmp_reaction = rate_constant_array[108]*(E_R_glyA)*(M_ser_L_c/(saturation_constant_array[108,76] + M_ser_L_c))*(M_thf_c/(saturation_constant_array[108,39] + M_thf_c));
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# R_his: M_gln_L_c+M_r5p_c+3*M_atp_c+2*M_nad_c+3*M_h2o_c = M_his_L_c+M_akg_c+M_aicar_c+2*M_adp_c+2*M_nadh_c+M_pi_c+2*M_ppi_c+6*M_h_c
tmp_reaction = rate_constant_array[109]*(E_R_his)*(M_gln_L_c/(saturation_constant_array[109,84] + M_gln_L_c))*(M_r5p_c/(saturation_constant_array[109,16] + M_r5p_c))*(M_atp_c/(saturation_constant_array[109,53] + M_atp_c))*(M_nad_c/(saturation_constant_array[109,93] + M_nad_c))*(M_h2o_c/(saturation_constant_array[109,92] + M_h2o_c));
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# R_ile: M_thr_L_c+2*M_h_c+M_pyr_c+M_nadph_c+M_glu_L_c = M_ile_L_c+M_h2o_c+M_nh4_c+M_co2_c+M_nadp_c+M_akg_c
tmp_reaction = rate_constant_array[110]*(E_R_ile)*(M_thr_L_c/(saturation_constant_array[110,77] + M_thr_L_c))*(M_h_c/(saturation_constant_array[110,91] + M_h_c))*(M_pyr_c/(saturation_constant_array[110,49] + M_pyr_c))*(M_nadph_c/(saturation_constant_array[110,96] + M_nadph_c))*(M_glu_L_c/(saturation_constant_array[110,83] + M_glu_L_c));
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# R_leu: 2*M_pyr_c+M_glu_L_c+M_h_c+M_nad_c+M_nadph_c+M_accoa_c = M_leu_L_c+2*M_co2_c+M_nadp_c+M_coa_c+M_nadh_c+M_akg_c
tmp_reaction = rate_constant_array[111]*(E_R_leu)*(M_pyr_c/(saturation_constant_array[111,49] + M_pyr_c))*(M_glu_L_c/(saturation_constant_array[111,83] + M_glu_L_c))*(M_h_c/(saturation_constant_array[111,91] + M_h_c))*(M_nad_c/(saturation_constant_array[111,93] + M_nad_c))*(M_nadph_c/(saturation_constant_array[111,96] + M_nadph_c))*(M_accoa_c/(saturation_constant_array[111,11] + M_accoa_c));
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# R_lys: M_asp_L_c+M_atp_c+2*M_nadph_c+2*M_h_c+M_pyr_c+M_succoa_c+M_glu_L_c = M_lys_L_c+M_adp_c+M_pi_c+2*M_nadp_c+M_coa_c+M_akg_c+M_succ_c+M_co2_c
tmp_reaction = rate_constant_array[112]*(E_R_lys)*(M_asp_L_c/(saturation_constant_array[112,66] + M_asp_L_c))*(M_atp_c/(saturation_constant_array[112,53] + M_atp_c))*(M_nadph_c/(saturation_constant_array[112,96] + M_nadph_c))*(M_h_c/(saturation_constant_array[112,91] + M_h_c))*(M_pyr_c/(saturation_constant_array[112,49] + M_pyr_c))*(M_succoa_c/(saturation_constant_array[112,23] + M_succoa_c))*(M_glu_L_c/(saturation_constant_array[112,83] + M_glu_L_c));
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# R_met: M_asp_L_c+M_cys_L_c+M_succoa_c+M_atp_c+2*M_nadph_c+M_5mthf_c = M_met_L_c+M_coa_c+M_succ_c+M_adp_c+M_pi_c+2*M_nadp_c+M_thf_c+M_nh4_c+M_pyr_c
tmp_reaction = rate_constant_array[113]*(E_R_met)*(M_asp_L_c/(saturation_constant_array[113,66] + M_asp_L_c))*(M_cys_L_c/(saturation_constant_array[113,70] + M_cys_L_c))*(M_succoa_c/(saturation_constant_array[113,23] + M_succoa_c))*(M_atp_c/(saturation_constant_array[113,53] + M_atp_c))*(M_nadph_c/(saturation_constant_array[113,96] + M_nadph_c))*(M_5mthf_c/(saturation_constant_array[113,46] + M_5mthf_c));
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# R_phe: M_chor_c+M_h_c+M_glu_L_c = M_phe_L_c+M_co2_c+M_h2o_c+M_akg_c
tmp_reaction = rate_constant_array[114]*(E_R_phe)*(M_chor_c/(saturation_constant_array[114,35] + M_chor_c))*(M_h_c/(saturation_constant_array[114,91] + M_h_c))*(M_glu_L_c/(saturation_constant_array[114,83] + M_glu_L_c));
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# R_pro: M_glu_L_c+M_atp_c+2*M_h_c+2*M_nadph_c = M_pro_L_c+M_adp_c+2*M_nadp_c+M_pi_c+M_h2o_c
tmp_reaction = rate_constant_array[115]*(E_R_pro)*(M_glu_L_c/(saturation_constant_array[115,83] + M_glu_L_c))*(M_atp_c/(saturation_constant_array[115,53] + M_atp_c))*(M_h_c/(saturation_constant_array[115,91] + M_h_c))*(M_nadph_c/(saturation_constant_array[115,96] + M_nadph_c));
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# R_serABC: M_3pg_c+M_nad_c+M_glu_L_c+M_h2o_c = M_ser_L_c+M_nadh_c+M_h_c+M_akg_c+M_pi_c
tmp_reaction = rate_constant_array[116]*(E_R_serABC)*(M_3pg_c/(saturation_constant_array[116,7] + M_3pg_c))*(M_nad_c/(saturation_constant_array[116,93] + M_nad_c))*(M_glu_L_c/(saturation_constant_array[116,83] + M_glu_L_c))*(M_h2o_c/(saturation_constant_array[116,92] + M_h2o_c));
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# R_thr: M_asp_L_c+2*M_atp_c+2*M_nadph_c+M_h_c+M_h2o_c = M_thr_L_c+2*M_adp_c+2*M_pi_c+2*M_nadp_c
tmp_reaction = rate_constant_array[117]*(E_R_thr)*(M_asp_L_c/(saturation_constant_array[117,66] + M_asp_L_c))*(M_atp_c/(saturation_constant_array[117,53] + M_atp_c))*(M_nadph_c/(saturation_constant_array[117,96] + M_nadph_c))*(M_h_c/(saturation_constant_array[117,91] + M_h_c))*(M_h2o_c/(saturation_constant_array[117,92] + M_h2o_c));
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# R_trp: M_chor_c+M_gln_L_c+M_ser_L_c+M_r5p_c+2*M_atp_c = M_trp_L_c+M_glu_L_c+M_pyr_c+M_ppi_c+2*M_h2o_c+M_co2_c+M_g3p_c+2*M_adp_c+M_h_c
tmp_reaction = rate_constant_array[118]*(E_R_trp)*(M_chor_c/(saturation_constant_array[118,35] + M_chor_c))*(M_gln_L_c/(saturation_constant_array[118,84] + M_gln_L_c))*(M_ser_L_c/(saturation_constant_array[118,76] + M_ser_L_c))*(M_r5p_c/(saturation_constant_array[118,16] + M_r5p_c))*(M_atp_c/(saturation_constant_array[118,53] + M_atp_c));
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# R_tyr: M_chor_c+M_glu_L_c+M_nad_c = M_tyr_L_c+M_akg_c+M_nadh_c+M_co2_c
tmp_reaction = rate_constant_array[119]*(E_R_tyr)*(M_chor_c/(saturation_constant_array[119,35] + M_chor_c))*(M_glu_L_c/(saturation_constant_array[119,83] + M_glu_L_c))*(M_nad_c/(saturation_constant_array[119,93] + M_nad_c));
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# R_val: 2*M_pyr_c+2*M_h_c+M_nadph_c+M_glu_L_c = M_val_L_c+M_co2_c+M_nadp_c+M_h2o_c+M_akg_c
tmp_reaction = rate_constant_array[120]*(E_R_val)*(M_pyr_c/(saturation_constant_array[120,49] + M_pyr_c))*(M_h_c/(saturation_constant_array[120,91] + M_h_c))*(M_nadph_c/(saturation_constant_array[120,96] + M_nadph_c))*(M_glu_L_c/(saturation_constant_array[120,83] + M_glu_L_c));
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# Ex_1: [] = M_o2_c
tmp_reaction = rate_constant_array[121]*(E_Ex_1);
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# Ex_2: [] = M_co2_c
tmp_reaction = rate_constant_array[122]*(E_Ex_2);
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# Ex_3: [] = M_pi_c
tmp_reaction = rate_constant_array[123]*(E_Ex_3);
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# Ex_4: [] = M_nh4_c
tmp_reaction = rate_constant_array[124]*(E_Ex_4);
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# Ex_5: [] = M_so4_c
tmp_reaction = rate_constant_array[125]*(E_Ex_5);
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# ATP_deg: M_atp_c = []
tmp_reaction = rate_constant_array[126]*(E_ATP_deg)*(M_atp_c/(saturation_constant_array[126,53] + M_atp_c));
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# GTP_deg: M_gtp_c = []
tmp_reaction = rate_constant_array[127]*(E_GTP_deg)*(M_gtp_c/(saturation_constant_array[127,56] + M_gtp_c));
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# CTP_deg: M_ctp_c = []
tmp_reaction = rate_constant_array[128]*(E_CTP_deg)*(M_ctp_c/(saturation_constant_array[128,62] + M_ctp_c));
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# UTP_deg: M_utp_c = []
tmp_reaction = rate_constant_array[129]*(E_UTP_deg)*(M_utp_c/(saturation_constant_array[129,59] + M_utp_c));
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# R_CAT: 15*M_ala_L_c+10*M_asn_L_c+5*M_arg_L_c+12*M_asp_L_c+12*M_glu_L_c+13*M_gln_L_c+10*M_gly_L_c+12*M_his_L_c+9*M_ile_L_c+13*M_leu_L_c+12*M_lys_L_c+9*M_met_L_c+20*M_phe_L_c+7*M_pro_L_c+10*M_ser_L_c+13*M_thr_L_c+5*M_trp_L_c+11*M_tyr_L_c+16*M_val_L_c+219*M_atp_c+438*M_gtp_c = 219*M_amp_c+438*M_gdp_c+219*M_ppi_c+438*M_pi_c+CAT
tmp_reaction = rate_constant_array[130]*(E_R_CAT)*(M_ala_L_c/(saturation_constant_array[130,73] + M_ala_L_c))*(M_asn_L_c/(saturation_constant_array[130,69] + M_asn_L_c))*(M_arg_L_c/(saturation_constant_array[130,43] + M_arg_L_c))*(M_asp_L_c/(saturation_constant_array[130,66] + M_asp_L_c))*(M_glu_L_c/(saturation_constant_array[130,83] + M_glu_L_c))*(M_gln_L_c/(saturation_constant_array[130,84] + M_gln_L_c))*(M_gly_L_c/(saturation_constant_array[130,67] + M_gly_L_c))*(M_his_L_c/(saturation_constant_array[130,72] + M_his_L_c))*(M_ile_L_c/(saturation_constant_array[130,68] + M_ile_L_c))*(M_leu_L_c/(saturation_constant_array[130,82] + M_leu_L_c))*(M_lys_L_c/(saturation_constant_array[130,71] + M_lys_L_c))*(M_met_L_c/(saturation_constant_array[130,81] + M_met_L_c))*(M_phe_L_c/(saturation_constant_array[130,74] + M_phe_L_c))*(M_pro_L_c/(saturation_constant_array[130,75] + M_pro_L_c))*(M_ser_L_c/(saturation_constant_array[130,76] + M_ser_L_c))*(M_thr_L_c/(saturation_constant_array[130,77] + M_thr_L_c))*(M_trp_L_c/(saturation_constant_array[130,78] + M_trp_L_c))*(M_tyr_L_c/(saturation_constant_array[130,79] + M_tyr_L_c))*(M_val_L_c/(saturation_constant_array[130,80] + M_val_L_c))*(M_atp_c/(saturation_constant_array[130,53] + M_atp_c))*(M_gtp_c/(saturation_constant_array[130,56] + M_gtp_c));
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# R_amp_ppi: M_amp_c+M_ppi_c+4*M_h_c = M_atp_c+M_h2o_c
tmp_reaction = rate_constant_array[131]*(E_R_amp_ppi)*(M_amp_c/(saturation_constant_array[131,55] + M_amp_c))*(M_ppi_c/(saturation_constant_array[131,31] + M_ppi_c))*(M_h_c/(saturation_constant_array[131,91] + M_h_c));
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# R_amp_pi: M_amp_c+2*M_pi_c+6*M_h_c = M_atp_c+2*M_h2o_c
tmp_reaction = rate_constant_array[132]*(E_R_amp_pi)*(M_amp_c/(saturation_constant_array[132,55] + M_amp_c))*(M_pi_c/(saturation_constant_array[132,88] + M_pi_c))*(M_h_c/(saturation_constant_array[132,91] + M_h_c));
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# R_gmp_ppi: M_gmp_c+M_ppi_c+4*M_h_c = M_gtp_c+M_h2o_c
tmp_reaction = rate_constant_array[133]*(E_R_gmp_ppi)*(M_gmp_c/(saturation_constant_array[133,58] + M_gmp_c))*(M_ppi_c/(saturation_constant_array[133,31] + M_ppi_c))*(M_h_c/(saturation_constant_array[133,91] + M_h_c));
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# R_gmp_pi: M_gmp_c+2*M_pi_c+6*M_h_c = M_gtp_c+2*M_h2o_c
tmp_reaction = rate_constant_array[134]*(E_R_gmp_pi)*(M_gmp_c/(saturation_constant_array[134,58] + M_gmp_c))*(M_pi_c/(saturation_constant_array[134,88] + M_pi_c))*(M_h_c/(saturation_constant_array[134,91] + M_h_c));
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# R_cmp_ppi: M_cmp_c+M_ppi_c+4*M_h_c = M_ctp_c+M_h2o_c
tmp_reaction = rate_constant_array[135]*(E_R_cmp_ppi)*(M_cmp_c/(saturation_constant_array[135,64] + M_cmp_c))*(M_ppi_c/(saturation_constant_array[135,31] + M_ppi_c))*(M_h_c/(saturation_constant_array[135,91] + M_h_c));
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# R_cmp_pi: M_cmp_c+2*M_pi_c+6*M_h_c = M_ctp_c+2*M_h2o_c
tmp_reaction = rate_constant_array[136]*(E_R_cmp_pi)*(M_cmp_c/(saturation_constant_array[136,64] + M_cmp_c))*(M_pi_c/(saturation_constant_array[136,88] + M_pi_c))*(M_h_c/(saturation_constant_array[136,91] + M_h_c));
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# R_ump_ppi: M_ump_c+M_ppi_c+4*M_h_c = M_utp_c+M_h2o_c
tmp_reaction = rate_constant_array[137]*(E_R_ump_ppi)*(M_ump_c/(saturation_constant_array[137,61] + M_ump_c))*(M_ppi_c/(saturation_constant_array[137,31] + M_ppi_c))*(M_h_c/(saturation_constant_array[137,91] + M_h_c));
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# R_ump_pi: M_ump_c+2*M_pi_c+6*M_h_c = M_utp_c+2*M_h2o_c
tmp_reaction = rate_constant_array[138]*(E_R_ump_pi)*(M_ump_c/(saturation_constant_array[138,61] + M_ump_c))*(M_pi_c/(saturation_constant_array[138,88] + M_pi_c))*(M_h_c/(saturation_constant_array[138,91] + M_h_c));
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# Degradation: E_R_PTS = []
tmp_reaction = rate_constant_array[139]*E_R_PTS;
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# Degradation: E_R_glk_atp = []
tmp_reaction = rate_constant_array[140]*E_R_glk_atp;
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# Degradation: E_R_glk_utp = []
tmp_reaction = rate_constant_array[141]*E_R_glk_utp;
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# Degradation: E_R_glk_ctp = []
tmp_reaction = rate_constant_array[142]*E_R_glk_ctp;
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# Degradation: E_R_glk_gtp = []
tmp_reaction = rate_constant_array[143]*E_R_glk_gtp;
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# Degradation: E_R_pgi = []
tmp_reaction = rate_constant_array[144]*E_R_pgi;
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# Degradation: E_R_pgi_R = []
tmp_reaction = rate_constant_array[145]*E_R_pgi_R;
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# Degradation: E_R_pfk = []
tmp_reaction = rate_constant_array[146]*E_R_pfk;
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# Degradation: E_R_fdp = []
tmp_reaction = rate_constant_array[147]*E_R_fdp;
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# Degradation: E_R_fbaA = []
tmp_reaction = rate_constant_array[148]*E_R_fbaA;
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# Degradation: E_R_fbaA_R = []
tmp_reaction = rate_constant_array[149]*E_R_fbaA_R;
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# Degradation: E_R_tpiA = []
tmp_reaction = rate_constant_array[150]*E_R_tpiA;
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# Degradation: E_R_tpiA_R = []
tmp_reaction = rate_constant_array[151]*E_R_tpiA_R;
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# Degradation: E_R_gapA = []
tmp_reaction = rate_constant_array[152]*E_R_gapA;
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# Degradation: E_R_gapA_R = []
tmp_reaction = rate_constant_array[153]*E_R_gapA_R;
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# Degradation: E_R_pgk = []
tmp_reaction = rate_constant_array[154]*E_R_pgk;
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# Degradation: E_R_pgk_R = []
tmp_reaction = rate_constant_array[155]*E_R_pgk_R;
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# Degradation: E_R_gpm = []
tmp_reaction = rate_constant_array[156]*E_R_gpm;
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# Degradation: E_R_gpm_R = []
tmp_reaction = rate_constant_array[157]*E_R_gpm_R;
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# Degradation: E_R_eno = []
tmp_reaction = rate_constant_array[158]*E_R_eno;
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# Degradation: E_R_eno_R = []
tmp_reaction = rate_constant_array[159]*E_R_eno_R;
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# Degradation: E_R_pyk = []
tmp_reaction = rate_constant_array[160]*E_R_pyk;
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# Degradation: E_R_pck = []
tmp_reaction = rate_constant_array[161]*E_R_pck;
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# Degradation: E_R_ppc = []
tmp_reaction = rate_constant_array[162]*E_R_ppc;
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# Degradation: E_R_pdh = []
tmp_reaction = rate_constant_array[163]*E_R_pdh;
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# Degradation: E_R_pps = []
tmp_reaction = rate_constant_array[164]*E_R_pps;
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# Degradation: E_R_zwf = []
tmp_reaction = rate_constant_array[165]*E_R_zwf;
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# Degradation: E_R_zwf_R = []
tmp_reaction = rate_constant_array[166]*E_R_zwf_R;
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# Degradation: E_R_pgl = []
tmp_reaction = rate_constant_array[167]*E_R_pgl;
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# Degradation: E_R_gnd = []
tmp_reaction = rate_constant_array[168]*E_R_gnd;
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# Degradation: E_R_rpe = []
tmp_reaction = rate_constant_array[169]*E_R_rpe;
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# Degradation: E_R_rpe_R = []
tmp_reaction = rate_constant_array[170]*E_R_rpe_R;
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# Degradation: E_R_rpi = []
tmp_reaction = rate_constant_array[171]*E_R_rpi;
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# Degradation: E_R_rpi_R = []
tmp_reaction = rate_constant_array[172]*E_R_rpi_R;
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# Degradation: E_R_talAB = []
tmp_reaction = rate_constant_array[173]*E_R_talAB;
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# Degradation: E_R_talAB_R = []
tmp_reaction = rate_constant_array[174]*E_R_talAB_R;
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# Degradation: E_R_tkt1 = []
tmp_reaction = rate_constant_array[175]*E_R_tkt1;
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# Degradation: E_R_tkt1_R = []
tmp_reaction = rate_constant_array[176]*E_R_tkt1_R;
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# Degradation: E_R_tkt2 = []
tmp_reaction = rate_constant_array[177]*E_R_tkt2;
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# Degradation: E_R_tkt2_R = []
tmp_reaction = rate_constant_array[178]*E_R_tkt2_R;
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# Degradation: E_R_edd = []
tmp_reaction = rate_constant_array[179]*E_R_edd;
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# Degradation: E_R_eda = []
tmp_reaction = rate_constant_array[180]*E_R_eda;
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# Degradation: E_R_gltA = []
tmp_reaction = rate_constant_array[181]*E_R_gltA;
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# Degradation: E_R_acn = []
tmp_reaction = rate_constant_array[182]*E_R_acn;
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# Degradation: E_R_acn_R = []
tmp_reaction = rate_constant_array[183]*E_R_acn_R;
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# Degradation: E_R_icd = []
tmp_reaction = rate_constant_array[184]*E_R_icd;
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# Degradation: E_R_icd_R = []
tmp_reaction = rate_constant_array[185]*E_R_icd_R;
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# Degradation: E_R_sucAB = []
tmp_reaction = rate_constant_array[186]*E_R_sucAB;
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# Degradation: E_R_sucCD = []
tmp_reaction = rate_constant_array[187]*E_R_sucCD;
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# Degradation: E_R_sucCD_R = []
tmp_reaction = rate_constant_array[188]*E_R_sucCD_R;
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# Degradation: E_R_sdh = []
tmp_reaction = rate_constant_array[189]*E_R_sdh;
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# Degradation: E_R_frd = []
tmp_reaction = rate_constant_array[190]*E_R_frd;
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# Degradation: E_R_fum = []
tmp_reaction = rate_constant_array[191]*E_R_fum;
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# Degradation: E_R_fum_R = []
tmp_reaction = rate_constant_array[192]*E_R_fum_R;
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# Degradation: E_R_mdh = []
tmp_reaction = rate_constant_array[193]*E_R_mdh;
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# Degradation: E_R_mdh_R = []
tmp_reaction = rate_constant_array[194]*E_R_mdh_R;
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# Degradation: E_R_aceA = []
tmp_reaction = rate_constant_array[195]*E_R_aceA;
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# Degradation: E_R_aceB = []
tmp_reaction = rate_constant_array[196]*E_R_aceB;
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# Degradation: E_R_maeA = []
tmp_reaction = rate_constant_array[197]*E_R_maeA;
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# Degradation: E_R_maeB = []
tmp_reaction = rate_constant_array[198]*E_R_maeB;
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# Degradation: E_R_pta = []
tmp_reaction = rate_constant_array[199]*E_R_pta;
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# Degradation: E_R_pta_R = []
tmp_reaction = rate_constant_array[200]*E_R_pta_R;
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# Degradation: E_R_ackA = []
tmp_reaction = rate_constant_array[201]*E_R_ackA;
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# Degradation: E_R_ackA_R = []
tmp_reaction = rate_constant_array[202]*E_R_ackA_R;
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# Degradation: E_R_acs = []
tmp_reaction = rate_constant_array[203]*E_R_acs;
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# Degradation: E_R_adhE = []
tmp_reaction = rate_constant_array[204]*E_R_adhE;
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# Degradation: E_R_adhE_R = []
tmp_reaction = rate_constant_array[205]*E_R_adhE_R;
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# Degradation: E_R_ldh_f = []
tmp_reaction = rate_constant_array[206]*E_R_ldh_f;
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# Degradation: E_R_ldh_r = []
tmp_reaction = rate_constant_array[207]*E_R_ldh_r;
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# Degradation: E_R_pflAB = []
tmp_reaction = rate_constant_array[208]*E_R_pflAB;
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# Degradation: E_R_cyd = []
tmp_reaction = rate_constant_array[209]*E_R_cyd;
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# Degradation: E_R_app = []
tmp_reaction = rate_constant_array[210]*E_R_app;
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# Degradation: E_R_atp = []
tmp_reaction = rate_constant_array[211]*E_R_atp;
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# Degradation: E_R_nuo = []
tmp_reaction = rate_constant_array[212]*E_R_nuo;
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# Degradation: E_R_pnt1 = []
tmp_reaction = rate_constant_array[213]*E_R_pnt1;
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# Degradation: E_R_pnt2 = []
tmp_reaction = rate_constant_array[214]*E_R_pnt2;
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# Degradation: E_R_ndh1 = []
tmp_reaction = rate_constant_array[215]*E_R_ndh1;
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# Degradation: E_R_ndh2 = []
tmp_reaction = rate_constant_array[216]*E_R_ndh2;
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# Degradation: E_R_hack1 = []
tmp_reaction = rate_constant_array[217]*E_R_hack1;
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# Degradation: E_R_ppk = []
tmp_reaction = rate_constant_array[218]*E_R_ppk;
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# Degradation: E_R_ppa = []
tmp_reaction = rate_constant_array[219]*E_R_ppa;
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# Degradation: E_R_chor = []
tmp_reaction = rate_constant_array[220]*E_R_chor;
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# Degradation: E_R_gar = []
tmp_reaction = rate_constant_array[221]*E_R_gar;
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# Degradation: E_R_air = []
tmp_reaction = rate_constant_array[222]*E_R_air;
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# Degradation: E_R_aicar = []
tmp_reaction = rate_constant_array[223]*E_R_aicar;
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# Degradation: E_R_imp = []
tmp_reaction = rate_constant_array[224]*E_R_imp;
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# Degradation: E_R_gmp = []
tmp_reaction = rate_constant_array[225]*E_R_gmp;
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# Degradation: E_R_gdp = []
tmp_reaction = rate_constant_array[226]*E_R_gdp;
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# Degradation: E_R_gtp = []
tmp_reaction = rate_constant_array[227]*E_R_gtp;
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# Degradation: E_R_amp = []
tmp_reaction = rate_constant_array[228]*E_R_amp;
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# Degradation: E_R_adk = []
tmp_reaction = rate_constant_array[229]*E_R_adk;
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# Degradation: E_R_adk_R = []
tmp_reaction = rate_constant_array[230]*E_R_adk_R;
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# Degradation: E_R_ump = []
tmp_reaction = rate_constant_array[231]*E_R_ump;
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# Degradation: E_R_udp = []
tmp_reaction = rate_constant_array[232]*E_R_udp;
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# Degradation: E_R_utp = []
tmp_reaction = rate_constant_array[233]*E_R_utp;
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# Degradation: E_R_ctp = []
tmp_reaction = rate_constant_array[234]*E_R_ctp;
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# Degradation: E_R_cdp = []
tmp_reaction = rate_constant_array[235]*E_R_cdp;
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# Degradation: E_R_cmp = []
tmp_reaction = rate_constant_array[236]*E_R_cmp;
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# Degradation: E_R_alaAC = []
tmp_reaction = rate_constant_array[237]*E_R_alaAC;
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# Degradation: E_R_arg = []
tmp_reaction = rate_constant_array[238]*E_R_arg;
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# Degradation: E_R_aspC = []
tmp_reaction = rate_constant_array[239]*E_R_aspC;
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# Degradation: E_R_asnB = []
tmp_reaction = rate_constant_array[240]*E_R_asnB;
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# Degradation: E_R_asnA = []
tmp_reaction = rate_constant_array[241]*E_R_asnA;
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# Degradation: E_R_cysEMK = []
tmp_reaction = rate_constant_array[242]*E_R_cysEMK;
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# Degradation: E_R_gltBD = []
tmp_reaction = rate_constant_array[243]*E_R_gltBD;
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# Degradation: E_R_gdhA = []
tmp_reaction = rate_constant_array[244]*E_R_gdhA;
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# Degradation: E_R_glnA = []
tmp_reaction = rate_constant_array[245]*E_R_glnA;
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# Degradation: E_R_glyA = []
tmp_reaction = rate_constant_array[246]*E_R_glyA;
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# Degradation: E_R_his = []
tmp_reaction = rate_constant_array[247]*E_R_his;
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# Degradation: E_R_ile = []
tmp_reaction = rate_constant_array[248]*E_R_ile;
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# Degradation: E_R_leu = []
tmp_reaction = rate_constant_array[249]*E_R_leu;
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# Degradation: E_R_lys = []
tmp_reaction = rate_constant_array[250]*E_R_lys;
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# Degradation: E_R_met = []
tmp_reaction = rate_constant_array[251]*E_R_met;
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# Degradation: E_R_phe = []
tmp_reaction = rate_constant_array[252]*E_R_phe;
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# Degradation: E_R_pro = []
tmp_reaction = rate_constant_array[253]*E_R_pro;
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# Degradation: E_R_serABC = []
tmp_reaction = rate_constant_array[254]*E_R_serABC;
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# Degradation: E_R_thr = []
tmp_reaction = rate_constant_array[255]*E_R_thr;
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# Degradation: E_R_trp = []
tmp_reaction = rate_constant_array[256]*E_R_trp;
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# Degradation: E_R_tyr = []
tmp_reaction = rate_constant_array[257]*E_R_tyr;
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# Degradation: E_R_val = []
tmp_reaction = rate_constant_array[258]*E_R_val;
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# Degradation: E_Ex_1 = []
tmp_reaction = rate_constant_array[259]*E_Ex_1;
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# Degradation: E_Ex_2 = []
tmp_reaction = rate_constant_array[260]*E_Ex_2;
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# Degradation: E_Ex_3 = []
tmp_reaction = rate_constant_array[261]*E_Ex_3;
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# Degradation: E_Ex_4 = []
tmp_reaction = rate_constant_array[262]*E_Ex_4;
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# Degradation: E_Ex_5 = []
tmp_reaction = rate_constant_array[263]*E_Ex_5;
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# Degradation: E_ATP_deg = []
tmp_reaction = rate_constant_array[264]*E_ATP_deg;
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# Degradation: E_GTP_deg = []
tmp_reaction = rate_constant_array[265]*E_GTP_deg;
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# Degradation: E_CTP_deg = []
tmp_reaction = rate_constant_array[266]*E_CTP_deg;
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# Degradation: E_UTP_deg = []
tmp_reaction = rate_constant_array[267]*E_UTP_deg;
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# Degradation: E_R_CAT = []
tmp_reaction = rate_constant_array[268]*E_R_CAT;
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# Degradation: E_R_amp_ppi = []
tmp_reaction = rate_constant_array[269]*E_R_amp_ppi;
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# Degradation: E_R_amp_pi = []
tmp_reaction = rate_constant_array[270]*E_R_amp_pi;
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# Degradation: E_R_gmp_ppi = []
tmp_reaction = rate_constant_array[271]*E_R_gmp_ppi;
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# Degradation: E_R_gmp_pi = []
tmp_reaction = rate_constant_array[272]*E_R_gmp_pi;
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# Degradation: E_R_cmp_ppi = []
tmp_reaction = rate_constant_array[273]*E_R_cmp_ppi;
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# Degradation: E_R_cmp_pi = []
tmp_reaction = rate_constant_array[274]*E_R_cmp_pi;
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# Degradation: E_R_ump_ppi = []
tmp_reaction = rate_constant_array[275]*E_R_ump_ppi;
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# Degradation: E_R_ump_pi = []
tmp_reaction = rate_constant_array[276]*E_R_ump_pi;
push!(rate_vector,tmp_reaction);
tmp_reaction = 0;

# return the kinetics vector -
return rate_vector;
end
