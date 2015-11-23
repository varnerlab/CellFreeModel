function FluxNames()
flux_names = String[]
push!(flux_names,"R_PTS") # M_pep_c+M_glc_D_c = M_g6p_c+M_pyr_c
push!(flux_names,"R_glk_atp") # M_atp_c+M_glc_D_c = M_adp_c+M_g6p_c+M_h_c
push!(flux_names,"R_glk_utp") # M_utp_c+M_glc_D_c = M_udp_c+M_g6p_c+M_h_c
push!(flux_names,"R_glk_ctp") # M_ctp_c+M_glc_D_c = M_cdp_c+M_g6p_c+M_h_c
push!(flux_names,"R_glk_gtp") # M_gtp_c+M_glc_D_c = M_gdp_c+M_g6p_c+M_h_c
push!(flux_names,"R_pgi") # M_g6p_c = M_f6p_c
push!(flux_names,"R_pgi_R") # M_f6p_c = M_g6p_c
push!(flux_names,"R_pfk") # M_atp_c+M_f6p_c = M_adp_c+M_fdp_c+M_h_c
push!(flux_names,"R_fdp") # M_fdp_c+M_h2o_c = M_f6p_c+M_pi_c
push!(flux_names,"R_fbaA") # M_fdp_c = M_dhap_c+M_g3p_c
push!(flux_names,"R_fbaA_R") # M_dhap_c+M_g3p_c = M_fdp_c
push!(flux_names,"R_tpiA") # M_dhap_c = M_g3p_c
push!(flux_names,"R_tpiA_R") # M_g3p_c = M_dhap_c
push!(flux_names,"R_gapA") # M_g3p_c+M_nad_c+M_pi_c = M_13dpg_c+M_h_c+M_nadh_c
push!(flux_names,"R_gapA_R") # M_13dpg_c+M_h_c+M_nadh_c = M_g3p_c+M_nad_c+M_pi_c
push!(flux_names,"R_pgk") # M_13dpg_c+M_adp_c = M_3pg_c+M_atp_c
push!(flux_names,"R_pgk_R") # M_3pg_c+M_atp_c = M_13dpg_c+M_adp_c
push!(flux_names,"R_gpm") # M_3pg_c = M_2pg_c
push!(flux_names,"R_gpm_R") # M_2pg_c = M_3pg_c
push!(flux_names,"R_eno") # M_2pg_c = M_h2o_c+M_pep_c
push!(flux_names,"R_eno_R") # M_h2o_c+M_pep_c = M_2pg_c
push!(flux_names,"R_pyk") # M_adp_c+M_h_c+M_pep_c = M_atp_c+M_pyr_c
push!(flux_names,"R_pck") # M_atp_c+M_oaa_c = M_adp_c+M_co2_c+M_pep_c
push!(flux_names,"R_ppc") # M_co2_c+M_h2o_c+M_pep_c = M_h_c+M_oaa_c+M_pi_c
push!(flux_names,"R_pdh") # M_coa_c+M_nad_c+M_pyr_c = M_accoa_c+M_co2_c+M_nadh_c
push!(flux_names,"R_pps") # M_atp_c+M_h2o_c+M_pyr_c = M_amp_c+2*M_h_c+M_pep_c+M_pi_c
push!(flux_names,"R_zwf") # M_g6p_c+M_nadp_c = M_6pgl_c+M_h_c+M_nadph_c
push!(flux_names,"R_zwf_R") # M_6pgl_c+M_h_c+M_nadph_c = M_g6p_c+M_nadp_c
push!(flux_names,"R_pgl") # M_6pgl_c+M_h2o_c = M_6pgc_c+M_h_c
push!(flux_names,"R_gnd") # M_6pgc_c+M_nadp_c = M_co2_c+M_nadph_c+M_ru5p_D_c
push!(flux_names,"R_rpe") # M_ru5p_D_c = M_xu5p_D_c
push!(flux_names,"R_rpe_R") # M_xu5p_D_c = M_ru5p_D_c
push!(flux_names,"R_rpi") # M_r5p_c = M_ru5p_D_c
push!(flux_names,"R_rpi_R") # M_ru5p_D_c = M_r5p_c
push!(flux_names,"R_talAB") # M_g3p_c+M_s7p_c = M_e4p_c+M_f6p_c
push!(flux_names,"R_talAB_R") # M_e4p_c+M_f6p_c = M_g3p_c+M_s7p_c
push!(flux_names,"R_tkt1") # M_r5p_c+M_xu5p_D_c = M_g3p_c+M_s7p_c
push!(flux_names,"R_tkt1_R") # M_g3p_c+M_s7p_c = M_r5p_c+M_xu5p_D_c
push!(flux_names,"R_tkt2") # M_e4p_c+M_xu5p_D_c = M_f6p_c+M_g3p_c
push!(flux_names,"R_tkt2_R") # M_f6p_c+M_g3p_c = M_e4p_c+M_xu5p_D_c
push!(flux_names,"R_edd") # M_6pgc_c = M_2ddg6p_c+M_h2o_c
push!(flux_names,"R_eda") # M_2ddg6p_c = M_g3p_c+M_pyr_c
push!(flux_names,"R_gltA") # M_accoa_c+M_h2o_c+M_oaa_c = M_cit_c+M_coa_c+M_h_c
push!(flux_names,"R_acn") # M_cit_c = M_icit_c
push!(flux_names,"R_acn_R") # M_icit_c = M_cit_c
push!(flux_names,"R_icd") # M_icit_c+M_nadp_c = M_akg_c+M_co2_c+M_nadph_c
push!(flux_names,"R_icd_R") # M_akg_c+M_co2_c+M_nadph_c = M_icit_c+M_nadp_c
push!(flux_names,"R_sucAB") # M_akg_c+M_coa_c+M_nad_c = M_co2_c+M_nadh_c+M_succoa_c
push!(flux_names,"R_sucCD") # M_atp_c+M_coa_c+M_succ_c = M_adp_c+M_pi_c+M_succoa_c
push!(flux_names,"R_sucCD_R") # M_adp_c+M_pi_c+M_succoa_c = M_atp_c+M_coa_c+M_succ_c
push!(flux_names,"R_sdh") # M_q8_c+M_succ_c = M_fum_c+M_q8h2_c
push!(flux_names,"R_frd") # M_fum_c+M_mql8_c = M_mqn8_c+M_succ_c
push!(flux_names,"R_fum") # M_fum_c+M_h2o_c = M_mal_L_c
push!(flux_names,"R_fum_R") # M_mal_L_c = M_fum_c+M_h2o_c
push!(flux_names,"R_mdh") # M_mal_L_c+M_nad_c = M_oaa_c+M_h_c+M_nadh_c
push!(flux_names,"R_mdh_R") # M_oaa_c+M_h_c+M_nadh_c = M_mal_L_c+M_nad_c
push!(flux_names,"R_aceA") # M_icit_c = M_glx_c+M_succ_c
push!(flux_names,"R_aceB") # M_accoa_c+M_glx_c+M_h2o_c = M_coa_c+M_h_c+M_mal_L_c
push!(flux_names,"R_maeA") # M_mal_L_c+M_nad_c = M_co2_c+M_nadh_c+M_pyr_c
push!(flux_names,"R_maeB") # M_mal_L_c+M_nadp_c = M_co2_c+M_nadph_c+M_pyr_c
push!(flux_names,"R_pta") # M_accoa_c+M_pi_c = M_actp_c+M_coa_c
push!(flux_names,"R_pta_R") # M_actp_c+M_coa_c = M_accoa_c+M_pi_c
push!(flux_names,"R_ackA") # M_actp_c+M_adp_c = M_ac_c+M_atp_c
push!(flux_names,"R_ackA_R") # M_ac_c+M_atp_c = M_actp_c+M_adp_c
push!(flux_names,"R_acs") # M_ac_c+M_atp_c+M_coa_c = M_accoa_c+M_amp_c+M_ppi_c
push!(flux_names,"R_adhE") # M_accoa_c+2*M_h_c+2*M_nadh_c = M_coa_c+M_etoh_c+2*M_nad_c
push!(flux_names,"R_adhE_R") # M_coa_c+M_etoh_c+2*M_nad_c = M_accoa_c+2*M_h_c+2*M_nadh_c
push!(flux_names,"R_ldh_f") # M_pyr_c+M_nadh_c+M_h_c = M_lac_D_c+M_nad_c
push!(flux_names,"R_ldh_r") # M_lac_D_c+M_nad_c = M_pyr_c+M_nadh_c+M_h_c
push!(flux_names,"R_pflAB") # M_coa_c+M_pyr_c = M_accoa_c+M_for_c
push!(flux_names,"R_cyd") # 2*M_h_c+0.5*M_o2_c+M_q8h2_c = M_h2o_c+M_q8_c+2*M_h_e
push!(flux_names,"R_app") # 2*M_h_c+M_mql8_c+0.5*M_o2_c = M_h2o_c+M_mqn8_c+2*M_h_e
push!(flux_names,"R_atp") # M_adp_c+M_pi_c+4*M_h_e = M_atp_c+3*M_h_c+M_h2o_c
push!(flux_names,"R_nuo") # 3*M_h_c+M_nadh_c+M_q8_c = M_nad_c+M_q8h2_c+2*M_h_e
push!(flux_names,"R_pnt1") # M_nad_c+M_nadph_c = M_nadh_c+M_nadp_c
push!(flux_names,"R_pnt2") # M_nadh_c+M_nadp_c+2*M_h_e = 2*M_h_c+M_nad_c+M_nadph_c
push!(flux_names,"R_ndh1") # M_h_c+M_nadh_c+M_q8_c = M_nad_c+M_q8h2_c
push!(flux_names,"R_ndh2") # M_h_c+M_mqn8_c+M_nadh_c = M_mql8_c+M_nad_c
push!(flux_names,"R_hack1") # M_atp_c+M_h2o_c = M_adp_c+M_h_c+M_pi_c
push!(flux_names,"R_ppk") # M_atp_c+M_pi_c = M_adp_c+M_ppi_c
push!(flux_names,"R_ppa") # M_ppi_c+M_h2o_c = 2*M_pi_c+M_h_c
push!(flux_names,"R_chor") # M_e4p_c+2*M_pep_c+M_nadph_c+M_atp_c = M_chor_c+M_nadp_c+M_adp_c+4*M_pi_c
push!(flux_names,"R_gar") # M_r5p_c+M_glu_L_c+M_gly_L_c+2*M_atp_c+M_h2o_c = M_gar_c+M_glu_L_c+M_adp_c+M_amp_c+M_pi_c+M_ppi_c+2*M_h_c
push!(flux_names,"R_air") # M_gar_c+M_10fthf_c+M_gln_L_c+2*M_atp_c+M_h2o_c = M_air_c+M_thf_c+M_glu_L_c+2*M_adp_c+2*M_pi_c+3*M_h_c
push!(flux_names,"R_aicar") # M_air_c+M_asp_L_c+2*M_atp_c+M_hco3_c = M_aicar_c+M_fum_c+2*M_adp_c+2*M_h_c+2*M_pi_c
push!(flux_names,"R_imp") # M_aicar_c+M_10fthf_c = M_imp_c+M_thf_c+M_h2o_c
push!(flux_names,"R_gmp") # M_imp_c+M_atp_c+M_gln_L_c+M_nad_c+2*M_h2o_c = M_gmp_c+M_amp_c+M_glu_L_c+M_nadh_c+3*M_h_c+M_ppi_c
push!(flux_names,"R_gdp") # M_gmp_c+M_atp_c = M_gdp_c+M_adp_c
push!(flux_names,"R_gtp") # M_gdp_c+M_atp_c = M_gtp_c+M_adp_c
push!(flux_names,"R_amp") # M_asp_L_c+M_imp_c+M_gtp_c = M_amp_c+M_gdp_c+M_pi_c+2*M_h_c+M_fum_c
push!(flux_names,"R_adk") # M_amp_c+M_atp_c = 2*M_adp_c
push!(flux_names,"R_adk_R") # 2*M_adp_c = M_amp_c+M_atp_c
push!(flux_names,"R_ump") # M_gln_L_c+M_asp_L_c+M_r5p_c+M_q8_c+3*M_atp_c+M_hco3_c = M_ump_c+M_glu_L_c+M_q8h2_c+2*M_h_c+2*M_adp_c+M_amp_c+2*M_pi_c+M_ppi_c+M_co2_c
push!(flux_names,"R_udp") # M_ump_c+M_atp_c = M_udp_c+M_adp_c
push!(flux_names,"R_utp") # M_udp_c+M_atp_c = M_utp_c+M_adp_c
push!(flux_names,"R_ctp") # M_utp_c+M_glu_L_c+M_atp_c+M_h2o_c = M_ctp_c+M_glu_L_c+M_adp_c+M_pi_c+2*M_h_c
push!(flux_names,"R_cdp") # M_ctp_c+M_h2o_c = M_cdp_c+M_pi_c+M_h_c
push!(flux_names,"R_cmp") # M_cdp_c+M_h2o_c = M_cmp_c+M_pi_c+M_h_c
push!(flux_names,"R_alaAC") # M_pyr_c+M_glu_L_c = M_ala_L_c+M_akg_c
push!(flux_names,"R_arg") # M_glu_L_c+M_accoa_c+4*M_atp_c+M_nadph_c+3*M_h2o_c+M_gln_L_c+M_asp_L_c+M_co2_c = M_arg_L_c+M_coa_c+5*M_h_c+3*M_adp_c+3*M_pi_c+M_nadp_c+M_akg_c+M_ac_c+M_amp_c+M_ppi_c+M_fum_c
push!(flux_names,"R_aspC") # M_glu_L_c+M_oaa_c = M_asp_L_c+M_akg_c
push!(flux_names,"R_asnB") # M_asp_L_c+M_gln_L_c+M_h2o_c+M_atp_c = M_asn_L_c+M_glu_L_c+M_h_c+M_ppi_c+M_amp_c
push!(flux_names,"R_asnA") # M_asp_L_c+M_atp_c+M_nh4_c = M_asn_L_c+M_h_c+M_ppi_c+M_amp_c
push!(flux_names,"R_cysEMK") # M_ser_L_c+M_accoa_c+M_h2s_c = M_cys_L_c+M_coa_c+M_h_c+M_ac_c
push!(flux_names,"R_gltBD") # M_gln_L_c+M_akg_c+M_nadph_c+M_h_c = 2*M_glu_L_c+M_nadp_c
push!(flux_names,"R_gdhA") # M_akg_c+M_nadph_c+M_nh4_c+M_h_c = M_glu_L_c+M_h2o_c+M_nadp_c
push!(flux_names,"R_glnA") # M_glu_L_c+M_atp_c+M_nh4_c = M_gln_L_c+M_h_c+M_adp_c+M_pi_c
push!(flux_names,"R_glyA") # M_ser_L_c+M_thf_c = M_gly_L_c+M_h2o_c+M_mlthf_c
push!(flux_names,"R_his") # M_gln_L_c+M_r5p_c+3*M_atp_c+2*M_nad_c+3*M_h2o_c = M_his_L_c+M_akg_c+M_aicar_c+2*M_adp_c+2*M_nadh_c+M_pi_c+2*M_ppi_c+6*M_h_c
push!(flux_names,"R_ile") # M_thr_L_c+2*M_h_c+M_pyr_c+M_nadph_c+M_glu_L_c = M_ile_L_c+M_h2o_c+M_nh4_c+M_co2_c+M_nadp_c+M_akg_c
push!(flux_names,"R_leu") # 2*M_pyr_c+M_glu_L_c+M_h_c+M_nad_c+M_nadph_c+M_accoa_c = M_leu_L_c+2*M_co2_c+M_nadp_c+M_coa_c+M_nadh_c+M_akg_c
push!(flux_names,"R_lys") # M_asp_L_c+M_atp_c+2*M_nadph_c+2*M_h_c+M_pyr_c+M_succoa_c+M_glu_L_c = M_lys_L_c+M_adp_c+M_pi_c+2*M_nadp_c+M_coa_c+M_akg_c+M_succ_c+M_co2_c
push!(flux_names,"R_met") # M_asp_L_c+M_cys_L_c+M_succoa_c+M_atp_c+2*M_nadph_c+M_5mthf_c = M_met_L_c+M_coa_c+M_succ_c+M_adp_c+M_pi_c+2*M_nadp_c+M_thf_c+M_nh4_c+M_pyr_c
push!(flux_names,"R_phe") # M_chor_c+M_h_c+M_glu_L_c = M_phe_L_c+M_co2_c+M_h2o_c+M_akg_c
push!(flux_names,"R_pro") # M_glu_L_c+M_atp_c+2*M_h_c+2*M_nadph_c = M_pro_L_c+M_adp_c+2*M_nadp_c+M_pi_c+M_h2o_c
push!(flux_names,"R_serABC") # M_3pg_c+M_nad_c+M_glu_L_c+M_h2o_c = M_ser_L_c+M_nadh_c+M_h_c+M_akg_c+M_pi_c
push!(flux_names,"R_thr") # M_asp_L_c+2*M_atp_c+2*M_nadph_c+M_h_c+M_h2o_c = M_thr_L_c+2*M_adp_c+2*M_pi_c+2*M_nadp_c
push!(flux_names,"R_trp") # M_chor_c+M_gln_L_c+M_ser_L_c+M_r5p_c+2*M_atp_c = M_trp_L_c+M_glu_L_c+M_pyr_c+M_ppi_c+2*M_h2o_c+M_co2_c+M_g3p_c+2*M_adp_c+M_h_c
push!(flux_names,"R_tyr") # M_chor_c+M_glu_L_c+M_nad_c = M_tyr_L_c+M_akg_c+M_nadh_c+M_co2_c
push!(flux_names,"R_val") # 2*M_pyr_c+2*M_h_c+M_nadph_c+M_glu_L_c = M_val_L_c+M_co2_c+M_nadp_c+M_h2o_c+M_akg_c
push!(flux_names,"Ex_1,M_o2_c")
push!(flux_names,"Ex_2,M_co2_c")
push!(flux_names,"Ex_3,M_pi_c")
push!(flux_names,"Ex_4,M_nh4_c")
push!(flux_names,"Ex_5,M_so4_c")
push!(flux_names,"R_CAT") #5*M_ala_L_c+10*M_asn_L_c+5*M_arg_L_c+12*M_asp_L_c+12*M_glu_L_c+13*M_gln_L_c+10*M_gly_L_c+12*M_his_L_c+9*M_ile_L_c+13*M_leu_L_c+12*M_lys_L_c+9*M_met_L_c+20*M_phe_L_c+7*M_pro_L_c+10*M_ser_L_c+13*M_thr_L_c+5*M_trp_L_c+11*M_tyr_L_c+16*M_val_L_c+219*M_atp_c+438*M_gtp_c = 219*M_amp_c+438*M_gdp_c+219*M_ppi_c+438*M_pi_c+CAT
push!(flux_names,"Degradation,R_PTS")
push!(flux_names,"Degradation,R_glk_atp")
push!(flux_names,"Degradation,R_glk_utp")
push!(flux_names,"Degradation,R_glk_ctp")
push!(flux_names,"Degradation,R_glk_gtp")
push!(flux_names,"Degradation,R_pgi")
push!(flux_names,"Degradation,R_pgi_R")
push!(flux_names,"Degradation,R_pfk")
push!(flux_names,"Degradation,R_fdp")
push!(flux_names,"Degradation,R_fbaA")
push!(flux_names,"Degradation,R_fbaA_R")
push!(flux_names,"Degradation,R_tpiA")
push!(flux_names,"Degradation,R_tpiA_R")
push!(flux_names,"Degradation,R_gapA")
push!(flux_names,"Degradation,R_gapA_R")
push!(flux_names,"Degradation,R_pgk")
push!(flux_names,"Degradation,R_pgk_R")
push!(flux_names,"Degradation,R_gpm")
push!(flux_names,"Degradation,R_gpm_R")
push!(flux_names,"Degradation,R_eno")
push!(flux_names,"Degradation,R_eno_R")
push!(flux_names,"Degradation,R_pyk")
push!(flux_names,"Degradation,R_pck")
push!(flux_names,"Degradation,R_ppc")
push!(flux_names,"Degradation,R_pdh")
push!(flux_names,"Degradation,R_pps")
push!(flux_names,"Degradation,R_zwf")
push!(flux_names,"Degradation,R_zwf_R")
push!(flux_names,"Degradation,R_pgl")
push!(flux_names,"Degradation,R_gnd")
push!(flux_names,"Degradation,R_rpe")
push!(flux_names,"Degradation,R_rpe_R")
push!(flux_names,"Degradation,R_rpi")
push!(flux_names,"Degradation,R_rpi_R")
push!(flux_names,"Degradation,R_talAB")
push!(flux_names,"Degradation,R_talAB_R")
push!(flux_names,"Degradation,R_tkt1")
push!(flux_names,"Degradation,R_tkt1_R")
push!(flux_names,"Degradation,R_tkt2")
push!(flux_names,"Degradation,R_tkt2_R")
push!(flux_names,"Degradation,R_edd")
push!(flux_names,"Degradation,R_eda")
push!(flux_names,"Degradation,R_gltA")
push!(flux_names,"Degradation,R_acn")
push!(flux_names,"Degradation,R_acn_R")
push!(flux_names,"Degradation,R_icd")
push!(flux_names,"Degradation,R_icd_R")
push!(flux_names,"Degradation,R_sucAB")
push!(flux_names,"Degradation,R_sucCD")
push!(flux_names,"Degradation,R_sucCD_R")
push!(flux_names,"Degradation,R_sdh")
push!(flux_names,"Degradation,R_frd")
push!(flux_names,"Degradation,R_fum")
push!(flux_names,"Degradation,R_fum_R")
push!(flux_names,"Degradation,R_mdh")
push!(flux_names,"Degradation,R_mdh_R")
push!(flux_names,"Degradation,R_aceA")
push!(flux_names,"Degradation,R_aceB")
push!(flux_names,"Degradation,R_maeA")
push!(flux_names,"Degradation,R_maeB")
push!(flux_names,"Degradation,R_pta")
push!(flux_names,"Degradation,R_pta_R")
push!(flux_names,"Degradation,R_ackA")
push!(flux_names,"Degradation,R_ackA_R")
push!(flux_names,"Degradation,R_acs")
push!(flux_names,"Degradation,R_adhE")
push!(flux_names,"Degradation,R_adhE_R")
push!(flux_names,"Degradation,R_ldh_f")
push!(flux_names,"Degradation,R_ldh_r")
push!(flux_names,"Degradation,R_pflAB")
push!(flux_names,"Degradation,R_cyd")
push!(flux_names,"Degradation,R_app")
push!(flux_names,"Degradation,R_atp")
push!(flux_names,"Degradation,R_nuo")
push!(flux_names,"Degradation,R_pnt1")
push!(flux_names,"Degradation,R_pnt2")
push!(flux_names,"Degradation,R_ndh1")
push!(flux_names,"Degradation,R_ndh2")
push!(flux_names,"Degradation,R_hack1")
push!(flux_names,"Degradation,R_ppk")
push!(flux_names,"Degradation,R_ppa")
push!(flux_names,"Degradation,R_chor")
push!(flux_names,"Degradation,R_gar")
push!(flux_names,"Degradation,R_air")
push!(flux_names,"Degradation,R_aicar")
push!(flux_names,"Degradation,R_imp")
push!(flux_names,"Degradation,R_gmp")
push!(flux_names,"Degradation,R_gdp")
push!(flux_names,"Degradation,R_gtp")
push!(flux_names,"Degradation,R_amp")
push!(flux_names,"Degradation,R_adk")
push!(flux_names,"Degradation,R_adk_R")
push!(flux_names,"Degradation,R_ump")
push!(flux_names,"Degradation,R_udp")
push!(flux_names,"Degradation,R_utp")
push!(flux_names,"Degradation,R_ctp")
push!(flux_names,"Degradation,R_cdp")
push!(flux_names,"Degradation,R_cmp")
push!(flux_names,"Degradation,R_alaAC")
push!(flux_names,"Degradation,R_arg")
push!(flux_names,"Degradation,R_aspC")
push!(flux_names,"Degradation,R_asnB")
push!(flux_names,"Degradation,R_asnA")
push!(flux_names,"Degradation,R_cysEMK")
push!(flux_names,"Degradation,R_gltBD")
push!(flux_names,"Degradation,R_gdhA")
push!(flux_names,"Degradation,R_glnA")
push!(flux_names,"Degradation,R_glyA")
push!(flux_names,"Degradation,R_his")
push!(flux_names,"Degradation,R_ile")
push!(flux_names,"Degradation,R_leu")
push!(flux_names,"Degradation,R_lys")
push!(flux_names,"Degradation,R_met")
push!(flux_names,"Degradation,R_phe")
push!(flux_names,"Degradation,R_pro")
push!(flux_names,"Degradation,R_serABC")
push!(flux_names,"Degradation,R_thr")
push!(flux_names,"Degradation,R_trp")
push!(flux_names,"Degradation,R_tyr")
push!(flux_names,"Degradation,R_val")
push!(flux_names,"Degradation,Ex_1")
push!(flux_names,"Degradation,Ex_2")
push!(flux_names,"Degradation,Ex_3")
push!(flux_names,"Degradation,Ex_4")
push!(flux_names,"Degradation,Ex_5")
push!(flux_names,"Degradation,E_R_CAT")
return flux_names
end
