include("ExperimentDataDictionary.jl");

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
function DataFile(TSTART,TSTOP,Ts)
# ----------------------------------------------------------------------------------- #
# DataFile.jl was generated using the Kwatee code generation system.
# DataFile: Stores model parameters as key - value pairs in a Julia Dict() 
# Username: nicholas
# Type: CFPS-JULIA
# Version: 1.0
# Generation timestamp: 11-23-2015 12:43:28
# 
# Input arguments: 
# TSTART  - Time start 
# TSTOP  - Time stop 
# Ts - Time step 
# 
# Return arguments: 
# data_dictionary  - Data dictionary instance (holds model parameters) 
# ----------------------------------------------------------------------------------- #

# Load the stoichiometric matrix - 
S = float(open(readdlm,"/home/nicholas/code/KwateeNov23/network/Network.dat"));
(NSPECIES,NREACTIONS) = size(S);

# Load experimental data file -
experimental_data_dictionary = ExperimentDataDictionary(TSTART,TSTOP,Ts);

# Formulate the initial condition array - 
initial_condition_array = Float64[];
push!(initial_condition_array,0.0);	#	1	 id:M_g6p_c	 symbol:M_g6p_c
push!(initial_condition_array,0.0);	#	2	 id:M_f6p_c	 symbol:M_f6p_c
push!(initial_condition_array,0.0);	#	3	 id:M_fdp_c	 symbol:M_fdp_c
push!(initial_condition_array,0.0);	#	4	 id:M_dhap_c	 symbol:M_dhap_c
push!(initial_condition_array,0.0);	#	5	 id:M_g3p_c	 symbol:M_g3p_c
push!(initial_condition_array,0.0);	#	6	 id:M_13dpg_c	 symbol:M_13dpg_c
push!(initial_condition_array,0.0);	#	7	 id:M_3pg_c	 symbol:M_3pg_c
push!(initial_condition_array,0.0);	#	8	 id:M_2pg_c	 symbol:M_2pg_c
push!(initial_condition_array,0.0);	#	9	 id:M_oaa_c	 symbol:M_oaa_c
push!(initial_condition_array,0.0);	#	10	 id:M_coa_c	 symbol:M_coa_c
push!(initial_condition_array,0.0);	#	11	 id:M_accoa_c	 symbol:M_accoa_c
push!(initial_condition_array,0.0);	#	12	 id:M_6pgl_c	 symbol:M_6pgl_c
push!(initial_condition_array,0.0);	#	13	 id:M_6pgc_c	 symbol:M_6pgc_c
push!(initial_condition_array,0.0);	#	14	 id:M_ru5p_D_c	 symbol:M_ru5p_D_c
push!(initial_condition_array,0.0);	#	15	 id:M_xu5p_D_c	 symbol:M_xu5p_D_c
push!(initial_condition_array,0.0);	#	16	 id:M_r5p_c	 symbol:M_r5p_c
push!(initial_condition_array,0.0);	#	17	 id:M_s7p_c	 symbol:M_s7p_c
push!(initial_condition_array,0.0);	#	18	 id:M_e4p_c	 symbol:M_e4p_c
push!(initial_condition_array,0.0);	#	19	 id:M_2ddg6p_c	 symbol:M_2ddg6p_c
push!(initial_condition_array,0.0);	#	20	 id:M_cit_c	 symbol:M_cit_c
push!(initial_condition_array,0.0);	#	21	 id:M_icit_c	 symbol:M_icit_c
push!(initial_condition_array,0.0);	#	22	 id:M_akg_c	 symbol:M_akg_c
push!(initial_condition_array,0.0);	#	23	 id:M_succoa_c	 symbol:M_succoa_c
push!(initial_condition_array,0.0);	#	24	 id:M_q8_c	 symbol:M_q8_c
push!(initial_condition_array,0.0);	#	25	 id:M_fum_c	 symbol:M_fum_c
push!(initial_condition_array,0.0);	#	26	 id:M_q8h2_c	 symbol:M_q8h2_c
push!(initial_condition_array,0.0);	#	27	 id:M_mql8_c	 symbol:M_mql8_c
push!(initial_condition_array,0.0);	#	28	 id:M_mqn8_c	 symbol:M_mqn8_c
push!(initial_condition_array,0.0);	#	29	 id:M_glx_c	 symbol:M_glx_c
push!(initial_condition_array,0.0);	#	30	 id:M_actp_c	 symbol:M_actp_c
push!(initial_condition_array,0.0);	#	31	 id:M_ppi_c	 symbol:M_ppi_c
push!(initial_condition_array,0.0);	#	32	 id:M_etoh_c	 symbol:M_etoh_c
push!(initial_condition_array,0.0);	#	33	 id:M_for_c	 symbol:M_for_c
push!(initial_condition_array,0.0);	#	34	 id:M_h_e	 symbol:M_h_e
push!(initial_condition_array,0.0);	#	35	 id:M_chor_c	 symbol:M_chor_c
push!(initial_condition_array,0.0);	#	36	 id:M_gar_c	 symbol:M_gar_c
push!(initial_condition_array,0.0);	#	37	 id:M_10fthf_c	 symbol:M_10fthf_c
push!(initial_condition_array,0.0);	#	38	 id:M_air_c	 symbol:M_air_c
push!(initial_condition_array,0.0);	#	39	 id:M_thf_c	 symbol:M_thf_c
push!(initial_condition_array,0.0);	#	40	 id:M_hco3_c	 symbol:M_hco3_c
push!(initial_condition_array,0.0);	#	41	 id:M_aicar_c	 symbol:M_aicar_c
push!(initial_condition_array,0.0);	#	42	 id:M_imp_c	 symbol:M_imp_c
push!(initial_condition_array,0.0);	#	43	 id:M_arg_L_c	 symbol:M_arg_L_c
push!(initial_condition_array,0.0);	#	44	 id:M_h2s_c	 symbol:M_h2s_c
push!(initial_condition_array,0.0);	#	45	 id:M_mlthf_c	 symbol:M_mlthf_c
push!(initial_condition_array,0.0);	#	46	 id:M_5mthf_c	 symbol:M_5mthf_c
push!(initial_condition_array,0.0);	#	47	 id:M_glc_D_c	 symbol:M_glc_D_c
push!(initial_condition_array,0.0);	#	48	 id:M_pep_c	 symbol:M_pep_c
push!(initial_condition_array,0.0);	#	49	 id:M_pyr_c	 symbol:M_pyr_c
push!(initial_condition_array,0.0);	#	50	 id:M_ac_c	 symbol:M_ac_c
push!(initial_condition_array,0.0);	#	51	 id:M_lac_D_c	 symbol:M_lac_D_c
push!(initial_condition_array,0.0);	#	52	 id:M_mal_L_c	 symbol:M_mal_L_c
push!(initial_condition_array,0.0);	#	53	 id:M_atp_c	 symbol:M_atp_c
push!(initial_condition_array,0.0);	#	54	 id:M_adp_c	 symbol:M_adp_c
push!(initial_condition_array,0.0);	#	55	 id:M_amp_c	 symbol:M_amp_c
push!(initial_condition_array,0.0);	#	56	 id:M_gtp_c	 symbol:M_gtp_c
push!(initial_condition_array,0.0);	#	57	 id:M_gdp_c	 symbol:M_gdp_c
push!(initial_condition_array,0.0);	#	58	 id:M_gmp_c	 symbol:M_gmp_c
push!(initial_condition_array,0.0);	#	59	 id:M_utp_c	 symbol:M_utp_c
push!(initial_condition_array,0.0);	#	60	 id:M_udp_c	 symbol:M_udp_c
push!(initial_condition_array,0.0);	#	61	 id:M_ump_c	 symbol:M_ump_c
push!(initial_condition_array,0.0);	#	62	 id:M_ctp_c	 symbol:M_ctp_c
push!(initial_condition_array,0.0);	#	63	 id:M_cdp_c	 symbol:M_cdp_c
push!(initial_condition_array,0.0);	#	64	 id:M_cmp_c	 symbol:M_cmp_c
push!(initial_condition_array,0.0);	#	65	 id:M_succ_c	 symbol:M_succ_c
push!(initial_condition_array,0.0);	#	66	 id:M_asp_L_c	 symbol:M_asp_L_c
push!(initial_condition_array,0.0);	#	67	 id:M_gly_L_c	 symbol:M_gly_L_c
push!(initial_condition_array,0.0);	#	68	 id:M_ile_L_c	 symbol:M_ile_L_c
push!(initial_condition_array,0.0);	#	69	 id:M_asn_L_c	 symbol:M_asn_L_c
push!(initial_condition_array,0.0);	#	70	 id:M_cys_L_c	 symbol:M_cys_L_c
push!(initial_condition_array,0.0);	#	71	 id:M_lys_L_c	 symbol:M_lys_L_c
push!(initial_condition_array,0.0);	#	72	 id:M_his_L_c	 symbol:M_his_L_c
push!(initial_condition_array,0.0);	#	73	 id:M_ala_L_c	 symbol:M_ala_L_c
push!(initial_condition_array,0.0);	#	74	 id:M_phe_L_c	 symbol:M_phe_L_c
push!(initial_condition_array,0.0);	#	75	 id:M_pro_L_c	 symbol:M_pro_L_c
push!(initial_condition_array,0.0);	#	76	 id:M_ser_L_c	 symbol:M_ser_L_c
push!(initial_condition_array,0.0);	#	77	 id:M_thr_L_c	 symbol:M_thr_L_c
push!(initial_condition_array,0.0);	#	78	 id:M_trp_L_c	 symbol:M_trp_L_c
push!(initial_condition_array,0.0);	#	79	 id:M_tyr_L_c	 symbol:M_tyr_L_c
push!(initial_condition_array,0.0);	#	80	 id:M_val_L_c	 symbol:M_val_L_c
push!(initial_condition_array,0.0);	#	81	 id:M_met_L_c	 symbol:M_met_L_c
push!(initial_condition_array,0.0);	#	82	 id:M_leu_L_c	 symbol:M_leu_L_c
push!(initial_condition_array,0.0);	#	83	 id:M_glu_L_c	 symbol:M_glu_L_c
push!(initial_condition_array,0.0);	#	84	 id:M_gln_L_c	 symbol:M_gln_L_c
push!(initial_condition_array,0.0);	#	85	 id:CAT	 symbol:CAT
push!(initial_condition_array,0.0);	#	86	 id:M_o2_c	 symbol:M_o2_c
push!(initial_condition_array,0.0);	#	87	 id:M_co2_c	 symbol:M_co2_c
push!(initial_condition_array,0.0);	#	88	 id:M_pi_c	 symbol:M_pi_c
push!(initial_condition_array,0.0);	#	89	 id:M_nh4_c	 symbol:M_nh4_c
push!(initial_condition_array,0.0);	#	90	 id:M_so4_c	 symbol:M_so4_c
push!(initial_condition_array,0.0);	#	91	 id:M_h_c	 symbol:M_h_c
push!(initial_condition_array,0.0);	#	92	 id:M_h2o_c	 symbol:M_h2o_c
push!(initial_condition_array,0.0);	#	93	 id:M_nad_c	 symbol:M_nad_c
push!(initial_condition_array,0.0);	#	94	 id:M_nadh_c	 symbol:M_nadh_c
push!(initial_condition_array,0.0);	#	95	 id:M_nadp_c	 symbol:M_nadp_c
push!(initial_condition_array,0.0);	#	96	 id:M_nadph_c	 symbol:M_nadph_c
push!(initial_condition_array,1.0);	#	97	 id:E_R_PTS	 symbol:E_R_PTS
push!(initial_condition_array,1.0);	#	98	 id:E_R_glk_atp	 symbol:E_R_glk_atp
push!(initial_condition_array,1.0);	#	99	 id:E_R_glk_utp	 symbol:E_R_glk_utp
push!(initial_condition_array,1.0);	#	100	 id:E_R_glk_ctp	 symbol:E_R_glk_ctp
push!(initial_condition_array,1.0);	#	101	 id:E_R_glk_gtp	 symbol:E_R_glk_gtp
push!(initial_condition_array,1.0);	#	102	 id:E_R_pgi	 symbol:E_R_pgi
push!(initial_condition_array,1.0);	#	103	 id:E_R_pgi_R	 symbol:E_R_pgi_R
push!(initial_condition_array,1.0);	#	104	 id:E_R_pfk	 symbol:E_R_pfk
push!(initial_condition_array,1.0);	#	105	 id:E_R_fdp	 symbol:E_R_fdp
push!(initial_condition_array,1.0);	#	106	 id:E_R_fbaA	 symbol:E_R_fbaA
push!(initial_condition_array,1.0);	#	107	 id:E_R_fbaA_R	 symbol:E_R_fbaA_R
push!(initial_condition_array,1.0);	#	108	 id:E_R_tpiA	 symbol:E_R_tpiA
push!(initial_condition_array,1.0);	#	109	 id:E_R_tpiA_R	 symbol:E_R_tpiA_R
push!(initial_condition_array,1.0);	#	110	 id:E_R_gapA	 symbol:E_R_gapA
push!(initial_condition_array,1.0);	#	111	 id:E_R_gapA_R	 symbol:E_R_gapA_R
push!(initial_condition_array,1.0);	#	112	 id:E_R_pgk	 symbol:E_R_pgk
push!(initial_condition_array,1.0);	#	113	 id:E_R_pgk_R	 symbol:E_R_pgk_R
push!(initial_condition_array,1.0);	#	114	 id:E_R_gpm	 symbol:E_R_gpm
push!(initial_condition_array,1.0);	#	115	 id:E_R_gpm_R	 symbol:E_R_gpm_R
push!(initial_condition_array,1.0);	#	116	 id:E_R_eno	 symbol:E_R_eno
push!(initial_condition_array,1.0);	#	117	 id:E_R_eno_R	 symbol:E_R_eno_R
push!(initial_condition_array,1.0);	#	118	 id:E_R_pyk	 symbol:E_R_pyk
push!(initial_condition_array,1.0);	#	119	 id:E_R_pck	 symbol:E_R_pck
push!(initial_condition_array,1.0);	#	120	 id:E_R_ppc	 symbol:E_R_ppc
push!(initial_condition_array,1.0);	#	121	 id:E_R_pdh	 symbol:E_R_pdh
push!(initial_condition_array,1.0);	#	122	 id:E_R_pps	 symbol:E_R_pps
push!(initial_condition_array,1.0);	#	123	 id:E_R_zwf	 symbol:E_R_zwf
push!(initial_condition_array,1.0);	#	124	 id:E_R_zwf_R	 symbol:E_R_zwf_R
push!(initial_condition_array,1.0);	#	125	 id:E_R_pgl	 symbol:E_R_pgl
push!(initial_condition_array,1.0);	#	126	 id:E_R_gnd	 symbol:E_R_gnd
push!(initial_condition_array,1.0);	#	127	 id:E_R_rpe	 symbol:E_R_rpe
push!(initial_condition_array,1.0);	#	128	 id:E_R_rpe_R	 symbol:E_R_rpe_R
push!(initial_condition_array,1.0);	#	129	 id:E_R_rpi	 symbol:E_R_rpi
push!(initial_condition_array,1.0);	#	130	 id:E_R_rpi_R	 symbol:E_R_rpi_R
push!(initial_condition_array,1.0);	#	131	 id:E_R_talAB	 symbol:E_R_talAB
push!(initial_condition_array,1.0);	#	132	 id:E_R_talAB_R	 symbol:E_R_talAB_R
push!(initial_condition_array,1.0);	#	133	 id:E_R_tkt1	 symbol:E_R_tkt1
push!(initial_condition_array,1.0);	#	134	 id:E_R_tkt1_R	 symbol:E_R_tkt1_R
push!(initial_condition_array,1.0);	#	135	 id:E_R_tkt2	 symbol:E_R_tkt2
push!(initial_condition_array,1.0);	#	136	 id:E_R_tkt2_R	 symbol:E_R_tkt2_R
push!(initial_condition_array,1.0);	#	137	 id:E_R_edd	 symbol:E_R_edd
push!(initial_condition_array,1.0);	#	138	 id:E_R_eda	 symbol:E_R_eda
push!(initial_condition_array,1.0);	#	139	 id:E_R_gltA	 symbol:E_R_gltA
push!(initial_condition_array,1.0);	#	140	 id:E_R_acn	 symbol:E_R_acn
push!(initial_condition_array,1.0);	#	141	 id:E_R_acn_R	 symbol:E_R_acn_R
push!(initial_condition_array,1.0);	#	142	 id:E_R_icd	 symbol:E_R_icd
push!(initial_condition_array,1.0);	#	143	 id:E_R_icd_R	 symbol:E_R_icd_R
push!(initial_condition_array,1.0);	#	144	 id:E_R_sucAB	 symbol:E_R_sucAB
push!(initial_condition_array,1.0);	#	145	 id:E_R_sucCD	 symbol:E_R_sucCD
push!(initial_condition_array,1.0);	#	146	 id:E_R_sucCD_R	 symbol:E_R_sucCD_R
push!(initial_condition_array,1.0);	#	147	 id:E_R_sdh	 symbol:E_R_sdh
push!(initial_condition_array,1.0);	#	148	 id:E_R_frd	 symbol:E_R_frd
push!(initial_condition_array,1.0);	#	149	 id:E_R_fum	 symbol:E_R_fum
push!(initial_condition_array,1.0);	#	150	 id:E_R_fum_R	 symbol:E_R_fum_R
push!(initial_condition_array,1.0);	#	151	 id:E_R_mdh	 symbol:E_R_mdh
push!(initial_condition_array,1.0);	#	152	 id:E_R_mdh_R	 symbol:E_R_mdh_R
push!(initial_condition_array,1.0);	#	153	 id:E_R_aceA	 symbol:E_R_aceA
push!(initial_condition_array,1.0);	#	154	 id:E_R_aceB	 symbol:E_R_aceB
push!(initial_condition_array,1.0);	#	155	 id:E_R_maeA	 symbol:E_R_maeA
push!(initial_condition_array,1.0);	#	156	 id:E_R_maeB	 symbol:E_R_maeB
push!(initial_condition_array,1.0);	#	157	 id:E_R_pta	 symbol:E_R_pta
push!(initial_condition_array,1.0);	#	158	 id:E_R_pta_R	 symbol:E_R_pta_R
push!(initial_condition_array,1.0);	#	159	 id:E_R_ackA	 symbol:E_R_ackA
push!(initial_condition_array,1.0);	#	160	 id:E_R_ackA_R	 symbol:E_R_ackA_R
push!(initial_condition_array,1.0);	#	161	 id:E_R_acs	 symbol:E_R_acs
push!(initial_condition_array,1.0);	#	162	 id:E_R_adhE	 symbol:E_R_adhE
push!(initial_condition_array,1.0);	#	163	 id:E_R_adhE_R	 symbol:E_R_adhE_R
push!(initial_condition_array,1.0);	#	164	 id:E_R_ldh_f	 symbol:E_R_ldh_f
push!(initial_condition_array,1.0);	#	165	 id:E_R_ldh_r	 symbol:E_R_ldh_r
push!(initial_condition_array,1.0);	#	166	 id:E_R_pflAB	 symbol:E_R_pflAB
push!(initial_condition_array,1.0);	#	167	 id:E_R_cyd	 symbol:E_R_cyd
push!(initial_condition_array,1.0);	#	168	 id:E_R_app	 symbol:E_R_app
push!(initial_condition_array,1.0);	#	169	 id:E_R_atp	 symbol:E_R_atp
push!(initial_condition_array,1.0);	#	170	 id:E_R_nuo	 symbol:E_R_nuo
push!(initial_condition_array,1.0);	#	171	 id:E_R_pnt1	 symbol:E_R_pnt1
push!(initial_condition_array,1.0);	#	172	 id:E_R_pnt2	 symbol:E_R_pnt2
push!(initial_condition_array,1.0);	#	173	 id:E_R_ndh1	 symbol:E_R_ndh1
push!(initial_condition_array,1.0);	#	174	 id:E_R_ndh2	 symbol:E_R_ndh2
push!(initial_condition_array,1.0);	#	175	 id:E_R_hack1	 symbol:E_R_hack1
push!(initial_condition_array,1.0);	#	176	 id:E_R_ppk	 symbol:E_R_ppk
push!(initial_condition_array,1.0);	#	177	 id:E_R_ppa	 symbol:E_R_ppa
push!(initial_condition_array,1.0);	#	178	 id:E_R_chor	 symbol:E_R_chor
push!(initial_condition_array,1.0);	#	179	 id:E_R_gar	 symbol:E_R_gar
push!(initial_condition_array,1.0);	#	180	 id:E_R_air	 symbol:E_R_air
push!(initial_condition_array,1.0);	#	181	 id:E_R_aicar	 symbol:E_R_aicar
push!(initial_condition_array,1.0);	#	182	 id:E_R_imp	 symbol:E_R_imp
push!(initial_condition_array,1.0);	#	183	 id:E_R_gmp	 symbol:E_R_gmp
push!(initial_condition_array,1.0);	#	184	 id:E_R_gdp	 symbol:E_R_gdp
push!(initial_condition_array,1.0);	#	185	 id:E_R_gtp	 symbol:E_R_gtp
push!(initial_condition_array,1.0);	#	186	 id:E_R_amp	 symbol:E_R_amp
push!(initial_condition_array,1.0);	#	187	 id:E_R_adk	 symbol:E_R_adk
push!(initial_condition_array,1.0);	#	188	 id:E_R_adk_R	 symbol:E_R_adk_R
push!(initial_condition_array,1.0);	#	189	 id:E_R_ump	 symbol:E_R_ump
push!(initial_condition_array,1.0);	#	190	 id:E_R_udp	 symbol:E_R_udp
push!(initial_condition_array,1.0);	#	191	 id:E_R_utp	 symbol:E_R_utp
push!(initial_condition_array,1.0);	#	192	 id:E_R_ctp	 symbol:E_R_ctp
push!(initial_condition_array,1.0);	#	193	 id:E_R_cdp	 symbol:E_R_cdp
push!(initial_condition_array,1.0);	#	194	 id:E_R_cmp	 symbol:E_R_cmp
push!(initial_condition_array,1.0);	#	195	 id:E_R_alaAC	 symbol:E_R_alaAC
push!(initial_condition_array,1.0);	#	196	 id:E_R_arg	 symbol:E_R_arg
push!(initial_condition_array,1.0);	#	197	 id:E_R_aspC	 symbol:E_R_aspC
push!(initial_condition_array,1.0);	#	198	 id:E_R_asnB	 symbol:E_R_asnB
push!(initial_condition_array,1.0);	#	199	 id:E_R_asnA	 symbol:E_R_asnA
push!(initial_condition_array,1.0);	#	200	 id:E_R_cysEMK	 symbol:E_R_cysEMK
push!(initial_condition_array,1.0);	#	201	 id:E_R_gltBD	 symbol:E_R_gltBD
push!(initial_condition_array,1.0);	#	202	 id:E_R_gdhA	 symbol:E_R_gdhA
push!(initial_condition_array,1.0);	#	203	 id:E_R_glnA	 symbol:E_R_glnA
push!(initial_condition_array,1.0);	#	204	 id:E_R_glyA	 symbol:E_R_glyA
push!(initial_condition_array,1.0);	#	205	 id:E_R_his	 symbol:E_R_his
push!(initial_condition_array,1.0);	#	206	 id:E_R_ile	 symbol:E_R_ile
push!(initial_condition_array,1.0);	#	207	 id:E_R_leu	 symbol:E_R_leu
push!(initial_condition_array,1.0);	#	208	 id:E_R_lys	 symbol:E_R_lys
push!(initial_condition_array,1.0);	#	209	 id:E_R_met	 symbol:E_R_met
push!(initial_condition_array,1.0);	#	210	 id:E_R_phe	 symbol:E_R_phe
push!(initial_condition_array,1.0);	#	211	 id:E_R_pro	 symbol:E_R_pro
push!(initial_condition_array,1.0);	#	212	 id:E_R_serABC	 symbol:E_R_serABC
push!(initial_condition_array,1.0);	#	213	 id:E_R_thr	 symbol:E_R_thr
push!(initial_condition_array,1.0);	#	214	 id:E_R_trp	 symbol:E_R_trp
push!(initial_condition_array,1.0);	#	215	 id:E_R_tyr	 symbol:E_R_tyr
push!(initial_condition_array,1.0);	#	216	 id:E_R_val	 symbol:E_R_val
push!(initial_condition_array,1.0);	#	217	 id:E_Ex_1	 symbol:E_Ex_1
push!(initial_condition_array,1.0);	#	218	 id:E_Ex_2	 symbol:E_Ex_2
push!(initial_condition_array,1.0);	#	219	 id:E_Ex_3	 symbol:E_Ex_3
push!(initial_condition_array,1.0);	#	220	 id:E_Ex_4	 symbol:E_Ex_4
push!(initial_condition_array,1.0);	#	221	 id:E_Ex_5	 symbol:E_Ex_5
push!(initial_condition_array,1.0);	#	222	 id:E_R_CAT	 symbol:E_R_CAT
push!(initial_condition_array,1.0);	#	223	 id:E_R_amp_ppi	 symbol:E_R_amp_ppi
push!(initial_condition_array,1.0);	#	224	 id:E_R_amp_pi	 symbol:E_R_amp_pi
push!(initial_condition_array,1.0);	#	225	 id:E_R_gmp_ppi	 symbol:E_R_gmp_ppi
push!(initial_condition_array,1.0);	#	226	 id:E_R_gmp_pi	 symbol:E_R_gmp_pi
push!(initial_condition_array,1.0);	#	227	 id:E_R_cmp_ppi	 symbol:E_R_cmp_ppi
push!(initial_condition_array,1.0);	#	228	 id:E_R_cmp_pi	 symbol:E_R_cmp_pi
push!(initial_condition_array,1.0);	#	229	 id:E_R_ump_ppi	 symbol:E_R_ump_ppi
push!(initial_condition_array,1.0);	#	230	 id:E_R_ump_pi	 symbol:E_R_ump_pi

# Formulate the rate constant array - 
rate_constant_array = Float64[];
push!(rate_constant_array,0.0)	#	1	 R_PTS: M_pep_c+M_glc_D_c = M_g6p_c+M_pyr_c
push!(rate_constant_array,0.0)	#	2	 R_glk_atp: M_atp_c+M_glc_D_c = M_adp_c+M_g6p_c+M_h_c
push!(rate_constant_array,0.0)	#	3	 R_glk_utp: M_utp_c+M_glc_D_c = M_udp_c+M_g6p_c+M_h_c
push!(rate_constant_array,0.0)	#	4	 R_glk_ctp: M_ctp_c+M_glc_D_c = M_cdp_c+M_g6p_c+M_h_c
push!(rate_constant_array,0.0)	#	5	 R_glk_gtp: M_gtp_c+M_glc_D_c = M_gdp_c+M_g6p_c+M_h_c
push!(rate_constant_array,0.0)	#	6	 R_pgi: M_g6p_c = M_f6p_c
push!(rate_constant_array,0.0)	#	7	 R_pgi_R: M_f6p_c = M_g6p_c
push!(rate_constant_array,0.0)	#	8	 R_pfk: M_atp_c+M_f6p_c = M_adp_c+M_fdp_c+M_h_c
push!(rate_constant_array,0.0)	#	9	 R_fdp: M_fdp_c+M_h2o_c = M_f6p_c+M_pi_c
push!(rate_constant_array,0.0)	#	10	 R_fbaA: M_fdp_c = M_dhap_c+M_g3p_c
push!(rate_constant_array,0.0)	#	11	 R_fbaA_R: M_dhap_c+M_g3p_c = M_fdp_c
push!(rate_constant_array,0.0)	#	12	 R_tpiA: M_dhap_c = M_g3p_c
push!(rate_constant_array,0.0)	#	13	 R_tpiA_R: M_g3p_c = M_dhap_c
push!(rate_constant_array,0.0)	#	14	 R_gapA: M_g3p_c+M_nad_c+M_pi_c = M_13dpg_c+M_h_c+M_nadh_c
push!(rate_constant_array,0.0)	#	15	 R_gapA_R: M_13dpg_c+M_h_c+M_nadh_c = M_g3p_c+M_nad_c+M_pi_c
push!(rate_constant_array,0.0)	#	16	 R_pgk: M_13dpg_c+M_adp_c = M_3pg_c+M_atp_c
push!(rate_constant_array,0.0)	#	17	 R_pgk_R: M_3pg_c+M_atp_c = M_13dpg_c+M_adp_c
push!(rate_constant_array,0.0)	#	18	 R_gpm: M_3pg_c = M_2pg_c
push!(rate_constant_array,0.0)	#	19	 R_gpm_R: M_2pg_c = M_3pg_c
push!(rate_constant_array,0.0)	#	20	 R_eno: M_2pg_c = M_h2o_c+M_pep_c
push!(rate_constant_array,0.0)	#	21	 R_eno_R: M_h2o_c+M_pep_c = M_2pg_c
push!(rate_constant_array,0.0)	#	22	 R_pyk: M_adp_c+M_h_c+M_pep_c = M_atp_c+M_pyr_c
push!(rate_constant_array,0.0)	#	23	 R_pck: M_atp_c+M_oaa_c = M_adp_c+M_co2_c+M_pep_c
push!(rate_constant_array,0.0)	#	24	 R_ppc: M_co2_c+M_h2o_c+M_pep_c = M_h_c+M_oaa_c+M_pi_c
push!(rate_constant_array,0.0)	#	25	 R_pdh: M_coa_c+M_nad_c+M_pyr_c = M_accoa_c+M_co2_c+M_nadh_c
push!(rate_constant_array,0.0)	#	26	 R_pps: M_atp_c+M_h2o_c+M_pyr_c = M_amp_c+2*M_h_c+M_pep_c+M_pi_c
push!(rate_constant_array,0.0)	#	27	 R_zwf: M_g6p_c+M_nadp_c = M_6pgl_c+M_h_c+M_nadph_c
push!(rate_constant_array,0.0)	#	28	 R_zwf_R: M_6pgl_c+M_h_c+M_nadph_c = M_g6p_c+M_nadp_c
push!(rate_constant_array,0.0)	#	29	 R_pgl: M_6pgl_c+M_h2o_c = M_6pgc_c+M_h_c
push!(rate_constant_array,0.0)	#	30	 R_gnd: M_6pgc_c+M_nadp_c = M_co2_c+M_nadph_c+M_ru5p_D_c
push!(rate_constant_array,0.0)	#	31	 R_rpe: M_ru5p_D_c = M_xu5p_D_c
push!(rate_constant_array,0.0)	#	32	 R_rpe_R: M_xu5p_D_c = M_ru5p_D_c
push!(rate_constant_array,0.0)	#	33	 R_rpi: M_r5p_c = M_ru5p_D_c
push!(rate_constant_array,0.0)	#	34	 R_rpi_R: M_ru5p_D_c = M_r5p_c
push!(rate_constant_array,0.0)	#	35	 R_talAB: M_g3p_c+M_s7p_c = M_e4p_c+M_f6p_c
push!(rate_constant_array,0.0)	#	36	 R_talAB_R: M_e4p_c+M_f6p_c = M_g3p_c+M_s7p_c
push!(rate_constant_array,0.0)	#	37	 R_tkt1: M_r5p_c+M_xu5p_D_c = M_g3p_c+M_s7p_c
push!(rate_constant_array,0.0)	#	38	 R_tkt1_R: M_g3p_c+M_s7p_c = M_r5p_c+M_xu5p_D_c
push!(rate_constant_array,0.0)	#	39	 R_tkt2: M_e4p_c+M_xu5p_D_c = M_f6p_c+M_g3p_c
push!(rate_constant_array,0.0)	#	40	 R_tkt2_R: M_f6p_c+M_g3p_c = M_e4p_c+M_xu5p_D_c
push!(rate_constant_array,0.0)	#	41	 R_edd: M_6pgc_c = M_2ddg6p_c+M_h2o_c
push!(rate_constant_array,0.0)	#	42	 R_eda: M_2ddg6p_c = M_g3p_c+M_pyr_c
push!(rate_constant_array,0.0)	#	43	 R_gltA: M_accoa_c+M_h2o_c+M_oaa_c = M_cit_c+M_coa_c+M_h_c
push!(rate_constant_array,0.0)	#	44	 R_acn: M_cit_c = M_icit_c
push!(rate_constant_array,0.0)	#	45	 R_acn_R: M_icit_c = M_cit_c
push!(rate_constant_array,0.0)	#	46	 R_icd: M_icit_c+M_nadp_c = M_akg_c+M_co2_c+M_nadph_c
push!(rate_constant_array,0.0)	#	47	 R_icd_R: M_akg_c+M_co2_c+M_nadph_c = M_icit_c+M_nadp_c
push!(rate_constant_array,0.0)	#	48	 R_sucAB: M_akg_c+M_coa_c+M_nad_c = M_co2_c+M_nadh_c+M_succoa_c
push!(rate_constant_array,0.0)	#	49	 R_sucCD: M_atp_c+M_coa_c+M_succ_c = M_adp_c+M_pi_c+M_succoa_c
push!(rate_constant_array,0.0)	#	50	 R_sucCD_R: M_adp_c+M_pi_c+M_succoa_c = M_atp_c+M_coa_c+M_succ_c
push!(rate_constant_array,0.0)	#	51	 R_sdh: M_q8_c+M_succ_c = M_fum_c+M_q8h2_c
push!(rate_constant_array,0.0)	#	52	 R_frd: M_fum_c+M_mql8_c = M_mqn8_c+M_succ_c
push!(rate_constant_array,0.0)	#	53	 R_fum: M_fum_c+M_h2o_c = M_mal_L_c
push!(rate_constant_array,0.0)	#	54	 R_fum_R: M_mal_L_c = M_fum_c+M_h2o_c
push!(rate_constant_array,0.0)	#	55	 R_mdh: M_mal_L_c+M_nad_c = M_oaa_c+M_h_c+M_nadh_c
push!(rate_constant_array,0.0)	#	56	 R_mdh_R: M_oaa_c+M_h_c+M_nadh_c = M_mal_L_c+M_nad_c
push!(rate_constant_array,0.0)	#	57	 R_aceA: M_icit_c = M_glx_c+M_succ_c
push!(rate_constant_array,0.0)	#	58	 R_aceB: M_accoa_c+M_glx_c+M_h2o_c = M_coa_c+M_h_c+M_mal_L_c
push!(rate_constant_array,0.0)	#	59	 R_maeA: M_mal_L_c+M_nad_c = M_co2_c+M_nadh_c+M_pyr_c
push!(rate_constant_array,0.0)	#	60	 R_maeB: M_mal_L_c+M_nadp_c = M_co2_c+M_nadph_c+M_pyr_c
push!(rate_constant_array,0.0)	#	61	 R_pta: M_accoa_c+M_pi_c = M_actp_c+M_coa_c
push!(rate_constant_array,0.0)	#	62	 R_pta_R: M_actp_c+M_coa_c = M_accoa_c+M_pi_c
push!(rate_constant_array,0.0)	#	63	 R_ackA: M_actp_c+M_adp_c = M_ac_c+M_atp_c
push!(rate_constant_array,0.0)	#	64	 R_ackA_R: M_ac_c+M_atp_c = M_actp_c+M_adp_c
push!(rate_constant_array,0.0)	#	65	 R_acs: M_ac_c+M_atp_c+M_coa_c = M_accoa_c+M_amp_c+M_ppi_c
push!(rate_constant_array,0.0)	#	66	 R_adhE: M_accoa_c+2*M_h_c+2*M_nadh_c = M_coa_c+M_etoh_c+2*M_nad_c
push!(rate_constant_array,0.0)	#	67	 R_adhE_R: M_coa_c+M_etoh_c+2*M_nad_c = M_accoa_c+2*M_h_c+2*M_nadh_c
push!(rate_constant_array,0.0)	#	68	 R_ldh_f: M_pyr_c+M_nadh_c+M_h_c = M_lac_D_c+M_nad_c
push!(rate_constant_array,0.0)	#	69	 R_ldh_r: M_lac_D_c+M_nad_c = M_pyr_c+M_nadh_c+M_h_c
push!(rate_constant_array,0.0)	#	70	 R_pflAB: M_coa_c+M_pyr_c = M_accoa_c+M_for_c
push!(rate_constant_array,0.0)	#	71	 R_cyd: 2*M_h_c+0.5*M_o2_c+M_q8h2_c = M_h2o_c+M_q8_c+2*M_h_e
push!(rate_constant_array,0.0)	#	72	 R_app: 2*M_h_c+M_mql8_c+0.5*M_o2_c = M_h2o_c+M_mqn8_c+2*M_h_e
push!(rate_constant_array,0.0)	#	73	 R_atp: M_adp_c+M_pi_c+4*M_h_e = M_atp_c+3*M_h_c+M_h2o_c
push!(rate_constant_array,0.0)	#	74	 R_nuo: 3*M_h_c+M_nadh_c+M_q8_c = M_nad_c+M_q8h2_c+2*M_h_e
push!(rate_constant_array,0.0)	#	75	 R_pnt1: M_nad_c+M_nadph_c = M_nadh_c+M_nadp_c
push!(rate_constant_array,0.0)	#	76	 R_pnt2: M_nadh_c+M_nadp_c+2*M_h_e = 2*M_h_c+M_nad_c+M_nadph_c
push!(rate_constant_array,0.0)	#	77	 R_ndh1: M_h_c+M_nadh_c+M_q8_c = M_nad_c+M_q8h2_c
push!(rate_constant_array,0.0)	#	78	 R_ndh2: M_h_c+M_mqn8_c+M_nadh_c = M_mql8_c+M_nad_c
push!(rate_constant_array,0.0)	#	79	 R_hack1: M_atp_c+M_h2o_c = M_adp_c+M_h_c+M_pi_c
push!(rate_constant_array,0.0)	#	80	 R_ppk: M_atp_c+M_pi_c = M_adp_c+M_ppi_c
push!(rate_constant_array,0.0)	#	81	 R_ppa: M_ppi_c+M_h2o_c = 2*M_pi_c+M_h_c
push!(rate_constant_array,0.0)	#	82	 R_chor: M_e4p_c+2*M_pep_c+M_nadph_c+M_atp_c = M_chor_c+M_nadp_c+M_adp_c+4*M_pi_c
push!(rate_constant_array,0.0)	#	83	 R_gar: M_r5p_c+M_glu_L_c+M_gly_L_c+2*M_atp_c+M_h2o_c = M_gar_c+M_glu_L_c+M_adp_c+M_amp_c+M_pi_c+M_ppi_c+2*M_h_c
push!(rate_constant_array,0.0)	#	84	 R_air: M_gar_c+M_10fthf_c+M_gln_L_c+2*M_atp_c+M_h2o_c = M_air_c+M_thf_c+M_glu_L_c+2*M_adp_c+2*M_pi_c+3*M_h_c
push!(rate_constant_array,0.0)	#	85	 R_aicar: M_air_c+M_asp_L_c+2*M_atp_c+M_hco3_c = M_aicar_c+M_fum_c+2*M_adp_c+2*M_h_c+2*M_pi_c
push!(rate_constant_array,0.0)	#	86	 R_imp: M_aicar_c+M_10fthf_c = M_imp_c+M_thf_c+M_h2o_c
push!(rate_constant_array,0.0)	#	87	 R_gmp: M_imp_c+M_atp_c+M_gln_L_c+M_nad_c+2*M_h2o_c = M_gmp_c+M_amp_c+M_glu_L_c+M_nadh_c+3*M_h_c+M_ppi_c
push!(rate_constant_array,0.0)	#	88	 R_gdp: M_gmp_c+M_atp_c = M_gdp_c+M_adp_c
push!(rate_constant_array,0.0)	#	89	 R_gtp: M_gdp_c+M_atp_c = M_gtp_c+M_adp_c
push!(rate_constant_array,0.0)	#	90	 R_amp: M_asp_L_c+M_imp_c+M_gtp_c = M_amp_c+M_gdp_c+M_pi_c+2*M_h_c+M_fum_c
push!(rate_constant_array,0.0)	#	91	 R_adk: M_amp_c+M_atp_c = 2*M_adp_c
push!(rate_constant_array,0.0)	#	92	 R_adk_R: 2*M_adp_c = M_amp_c+M_atp_c
push!(rate_constant_array,0.0)	#	93	 R_ump: M_gln_L_c+M_asp_L_c+M_r5p_c+M_q8_c+3*M_atp_c+M_hco3_c = M_ump_c+M_glu_L_c+M_q8h2_c+2*M_h_c+2*M_adp_c+M_amp_c+2*M_pi_c+M_ppi_c+M_co2_c
push!(rate_constant_array,0.0)	#	94	 R_udp: M_ump_c+M_atp_c = M_udp_c+M_adp_c
push!(rate_constant_array,0.0)	#	95	 R_utp: M_udp_c+M_atp_c = M_utp_c+M_adp_c
push!(rate_constant_array,0.0)	#	96	 R_ctp: M_utp_c+M_glu_L_c+M_atp_c+M_h2o_c = M_ctp_c+M_glu_L_c+M_adp_c+M_pi_c+2*M_h_c
push!(rate_constant_array,0.0)	#	97	 R_cdp: M_ctp_c+M_h2o_c = M_cdp_c+M_pi_c+M_h_c
push!(rate_constant_array,0.0)	#	98	 R_cmp: M_cdp_c+M_h2o_c = M_cmp_c+M_pi_c+M_h_c
push!(rate_constant_array,0.0)	#	99	 R_alaAC: M_pyr_c+M_glu_L_c = M_ala_L_c+M_akg_c
push!(rate_constant_array,0.0)	#	100	 R_arg: M_glu_L_c+M_accoa_c+4*M_atp_c+M_nadph_c+3*M_h2o_c+M_gln_L_c+M_asp_L_c+M_co2_c = M_arg_L_c+M_coa_c+5*M_h_c+3*M_adp_c+3*M_pi_c+M_nadp_c+M_akg_c+M_ac_c+M_amp_c+M_ppi_c+M_fum_c
push!(rate_constant_array,0.0)	#	101	 R_aspC: M_glu_L_c+M_oaa_c = M_asp_L_c+M_akg_c
push!(rate_constant_array,0.0)	#	102	 R_asnB: M_asp_L_c+M_gln_L_c+M_h2o_c+M_atp_c = M_asn_L_c+M_glu_L_c+M_h_c+M_ppi_c+M_amp_c
push!(rate_constant_array,0.0)	#	103	 R_asnA: M_asp_L_c+M_atp_c+M_nh4_c = M_asn_L_c+M_h_c+M_ppi_c+M_amp_c
push!(rate_constant_array,0.0)	#	104	 R_cysEMK: M_ser_L_c+M_accoa_c+M_h2s_c = M_cys_L_c+M_coa_c+M_h_c+M_ac_c
push!(rate_constant_array,0.0)	#	105	 R_gltBD: M_gln_L_c+M_akg_c+M_nadph_c+M_h_c = 2*M_glu_L_c+M_nadp_c
push!(rate_constant_array,0.0)	#	106	 R_gdhA: M_akg_c+M_nadph_c+M_nh4_c+M_h_c = M_glu_L_c+M_h2o_c+M_nadp_c
push!(rate_constant_array,0.0)	#	107	 R_glnA: M_glu_L_c+M_atp_c+M_nh4_c = M_gln_L_c+M_h_c+M_adp_c+M_pi_c
push!(rate_constant_array,0.0)	#	108	 R_glyA: M_ser_L_c+M_thf_c = M_gly_L_c+M_h2o_c+M_mlthf_c
push!(rate_constant_array,0.0)	#	109	 R_his: M_gln_L_c+M_r5p_c+3*M_atp_c+2*M_nad_c+3*M_h2o_c = M_his_L_c+M_akg_c+M_aicar_c+2*M_adp_c+2*M_nadh_c+M_pi_c+2*M_ppi_c+6*M_h_c
push!(rate_constant_array,0.0)	#	110	 R_ile: M_thr_L_c+2*M_h_c+M_pyr_c+M_nadph_c+M_glu_L_c = M_ile_L_c+M_h2o_c+M_nh4_c+M_co2_c+M_nadp_c+M_akg_c
push!(rate_constant_array,0.0)	#	111	 R_leu: 2*M_pyr_c+M_glu_L_c+M_h_c+M_nad_c+M_nadph_c+M_accoa_c = M_leu_L_c+2*M_co2_c+M_nadp_c+M_coa_c+M_nadh_c+M_akg_c
push!(rate_constant_array,0.0)	#	112	 R_lys: M_asp_L_c+M_atp_c+2*M_nadph_c+2*M_h_c+M_pyr_c+M_succoa_c+M_glu_L_c = M_lys_L_c+M_adp_c+M_pi_c+2*M_nadp_c+M_coa_c+M_akg_c+M_succ_c+M_co2_c
push!(rate_constant_array,0.0)	#	113	 R_met: M_asp_L_c+M_cys_L_c+M_succoa_c+M_atp_c+2*M_nadph_c+M_5mthf_c = M_met_L_c+M_coa_c+M_succ_c+M_adp_c+M_pi_c+2*M_nadp_c+M_thf_c+M_nh4_c+M_pyr_c
push!(rate_constant_array,0.0)	#	114	 R_phe: M_chor_c+M_h_c+M_glu_L_c = M_phe_L_c+M_co2_c+M_h2o_c+M_akg_c
push!(rate_constant_array,0.0)	#	115	 R_pro: M_glu_L_c+M_atp_c+2*M_h_c+2*M_nadph_c = M_pro_L_c+M_adp_c+2*M_nadp_c+M_pi_c+M_h2o_c
push!(rate_constant_array,0.0)	#	116	 R_serABC: M_3pg_c+M_nad_c+M_glu_L_c+M_h2o_c = M_ser_L_c+M_nadh_c+M_h_c+M_akg_c+M_pi_c
push!(rate_constant_array,0.0)	#	117	 R_thr: M_asp_L_c+2*M_atp_c+2*M_nadph_c+M_h_c+M_h2o_c = M_thr_L_c+2*M_adp_c+2*M_pi_c+2*M_nadp_c
push!(rate_constant_array,0.0)	#	118	 R_trp: M_chor_c+M_gln_L_c+M_ser_L_c+M_r5p_c+2*M_atp_c = M_trp_L_c+M_glu_L_c+M_pyr_c+M_ppi_c+2*M_h2o_c+M_co2_c+M_g3p_c+2*M_adp_c+M_h_c
push!(rate_constant_array,0.0)	#	119	 R_tyr: M_chor_c+M_glu_L_c+M_nad_c = M_tyr_L_c+M_akg_c+M_nadh_c+M_co2_c
push!(rate_constant_array,0.0)	#	120	 R_val: 2*M_pyr_c+2*M_h_c+M_nadph_c+M_glu_L_c = M_val_L_c+M_co2_c+M_nadp_c+M_h2o_c+M_akg_c
push!(rate_constant_array,0.0)	#	121	 Ex_1: [] = M_o2_c
push!(rate_constant_array,0.0)	#	122	 Ex_2: [] = M_co2_c
push!(rate_constant_array,0.0)	#	123	 Ex_3: [] = M_pi_c
push!(rate_constant_array,0.0)	#	124	 Ex_4: [] = M_nh4_c
push!(rate_constant_array,0.0)	#	125	 Ex_5: [] = M_so4_c
push!(rate_constant_array,0.0)	#	126	 R_CAT: 15*M_ala_L_c+10*M_asn_L_c+5*M_arg_L_c+12*M_asp_L_c+12*M_glu_L_c+13*M_gln_L_c+10*M_gly_L_c+12*M_his_L_c+9*M_ile_L_c+13*M_leu_L_c+12*M_lys_L_c+9*M_met_L_c+20*M_phe_L_c+7*M_pro_L_c+10*M_ser_L_c+13*M_thr_L_c+5*M_trp_L_c+11*M_tyr_L_c+16*M_val_L_c+219*M_atp_c+438*M_gtp_c = 219*M_amp_c+438*M_gdp_c+219*M_ppi_c+438*M_pi_c+CAT
push!(rate_constant_array,0.0)	#	127	 R_amp_ppi: M_amp_c+M_ppi_c+4*M_h_c = M_atp_c+M_h2o_c
push!(rate_constant_array,0.0)	#	128	 R_amp_pi: M_amp_c+2*M_pi_c+6*M_h_c = M_atp_c+2*M_h2o_c
push!(rate_constant_array,0.0)	#	129	 R_gmp_ppi: M_gmp_c+M_ppi_c+4*M_h_c = M_gtp_c+M_h2o_c
push!(rate_constant_array,0.0)	#	130	 R_gmp_pi: M_gmp_c+2*M_pi_c+6*M_h_c = M_gtp_c+2*M_h2o_c
push!(rate_constant_array,0.0)	#	131	 R_cmp_ppi: M_cmp_c+M_ppi_c+4*M_h_c = M_ctp_c+M_h2o_c
push!(rate_constant_array,0.0)	#	132	 R_cmp_pi: M_cmp_c+2*M_pi_c+6*M_h_c = M_ctp_c+2*M_h2o_c
push!(rate_constant_array,0.0)	#	133	 R_ump_ppi: M_ump_c+M_ppi_c+4*M_h_c = M_utp_c+M_h2o_c
push!(rate_constant_array,0.0)	#	134	 R_ump_pi: M_ump_c+2*M_pi_c+6*M_h_c = M_utp_c+2*M_h2o_c
push!(rate_constant_array,0.0)	#	135	 Degradation: E_R_PTS = []
push!(rate_constant_array,0.0)	#	136	 Degradation: E_R_glk_atp = []
push!(rate_constant_array,0.0)	#	137	 Degradation: E_R_glk_utp = []
push!(rate_constant_array,0.0)	#	138	 Degradation: E_R_glk_ctp = []
push!(rate_constant_array,0.0)	#	139	 Degradation: E_R_glk_gtp = []
push!(rate_constant_array,0.0)	#	140	 Degradation: E_R_pgi = []
push!(rate_constant_array,0.0)	#	141	 Degradation: E_R_pgi_R = []
push!(rate_constant_array,0.0)	#	142	 Degradation: E_R_pfk = []
push!(rate_constant_array,0.0)	#	143	 Degradation: E_R_fdp = []
push!(rate_constant_array,0.0)	#	144	 Degradation: E_R_fbaA = []
push!(rate_constant_array,0.0)	#	145	 Degradation: E_R_fbaA_R = []
push!(rate_constant_array,0.0)	#	146	 Degradation: E_R_tpiA = []
push!(rate_constant_array,0.0)	#	147	 Degradation: E_R_tpiA_R = []
push!(rate_constant_array,0.0)	#	148	 Degradation: E_R_gapA = []
push!(rate_constant_array,0.0)	#	149	 Degradation: E_R_gapA_R = []
push!(rate_constant_array,0.0)	#	150	 Degradation: E_R_pgk = []
push!(rate_constant_array,0.0)	#	151	 Degradation: E_R_pgk_R = []
push!(rate_constant_array,0.0)	#	152	 Degradation: E_R_gpm = []
push!(rate_constant_array,0.0)	#	153	 Degradation: E_R_gpm_R = []
push!(rate_constant_array,0.0)	#	154	 Degradation: E_R_eno = []
push!(rate_constant_array,0.0)	#	155	 Degradation: E_R_eno_R = []
push!(rate_constant_array,0.0)	#	156	 Degradation: E_R_pyk = []
push!(rate_constant_array,0.0)	#	157	 Degradation: E_R_pck = []
push!(rate_constant_array,0.0)	#	158	 Degradation: E_R_ppc = []
push!(rate_constant_array,0.0)	#	159	 Degradation: E_R_pdh = []
push!(rate_constant_array,0.0)	#	160	 Degradation: E_R_pps = []
push!(rate_constant_array,0.0)	#	161	 Degradation: E_R_zwf = []
push!(rate_constant_array,0.0)	#	162	 Degradation: E_R_zwf_R = []
push!(rate_constant_array,0.0)	#	163	 Degradation: E_R_pgl = []
push!(rate_constant_array,0.0)	#	164	 Degradation: E_R_gnd = []
push!(rate_constant_array,0.0)	#	165	 Degradation: E_R_rpe = []
push!(rate_constant_array,0.0)	#	166	 Degradation: E_R_rpe_R = []
push!(rate_constant_array,0.0)	#	167	 Degradation: E_R_rpi = []
push!(rate_constant_array,0.0)	#	168	 Degradation: E_R_rpi_R = []
push!(rate_constant_array,0.0)	#	169	 Degradation: E_R_talAB = []
push!(rate_constant_array,0.0)	#	170	 Degradation: E_R_talAB_R = []
push!(rate_constant_array,0.0)	#	171	 Degradation: E_R_tkt1 = []
push!(rate_constant_array,0.0)	#	172	 Degradation: E_R_tkt1_R = []
push!(rate_constant_array,0.0)	#	173	 Degradation: E_R_tkt2 = []
push!(rate_constant_array,0.0)	#	174	 Degradation: E_R_tkt2_R = []
push!(rate_constant_array,0.0)	#	175	 Degradation: E_R_edd = []
push!(rate_constant_array,0.0)	#	176	 Degradation: E_R_eda = []
push!(rate_constant_array,0.0)	#	177	 Degradation: E_R_gltA = []
push!(rate_constant_array,0.0)	#	178	 Degradation: E_R_acn = []
push!(rate_constant_array,0.0)	#	179	 Degradation: E_R_acn_R = []
push!(rate_constant_array,0.0)	#	180	 Degradation: E_R_icd = []
push!(rate_constant_array,0.0)	#	181	 Degradation: E_R_icd_R = []
push!(rate_constant_array,0.0)	#	182	 Degradation: E_R_sucAB = []
push!(rate_constant_array,0.0)	#	183	 Degradation: E_R_sucCD = []
push!(rate_constant_array,0.0)	#	184	 Degradation: E_R_sucCD_R = []
push!(rate_constant_array,0.0)	#	185	 Degradation: E_R_sdh = []
push!(rate_constant_array,0.0)	#	186	 Degradation: E_R_frd = []
push!(rate_constant_array,0.0)	#	187	 Degradation: E_R_fum = []
push!(rate_constant_array,0.0)	#	188	 Degradation: E_R_fum_R = []
push!(rate_constant_array,0.0)	#	189	 Degradation: E_R_mdh = []
push!(rate_constant_array,0.0)	#	190	 Degradation: E_R_mdh_R = []
push!(rate_constant_array,0.0)	#	191	 Degradation: E_R_aceA = []
push!(rate_constant_array,0.0)	#	192	 Degradation: E_R_aceB = []
push!(rate_constant_array,0.0)	#	193	 Degradation: E_R_maeA = []
push!(rate_constant_array,0.0)	#	194	 Degradation: E_R_maeB = []
push!(rate_constant_array,0.0)	#	195	 Degradation: E_R_pta = []
push!(rate_constant_array,0.0)	#	196	 Degradation: E_R_pta_R = []
push!(rate_constant_array,0.0)	#	197	 Degradation: E_R_ackA = []
push!(rate_constant_array,0.0)	#	198	 Degradation: E_R_ackA_R = []
push!(rate_constant_array,0.0)	#	199	 Degradation: E_R_acs = []
push!(rate_constant_array,0.0)	#	200	 Degradation: E_R_adhE = []
push!(rate_constant_array,0.0)	#	201	 Degradation: E_R_adhE_R = []
push!(rate_constant_array,0.0)	#	202	 Degradation: E_R_ldh_f = []
push!(rate_constant_array,0.0)	#	203	 Degradation: E_R_ldh_r = []
push!(rate_constant_array,0.0)	#	204	 Degradation: E_R_pflAB = []
push!(rate_constant_array,0.0)	#	205	 Degradation: E_R_cyd = []
push!(rate_constant_array,0.0)	#	206	 Degradation: E_R_app = []
push!(rate_constant_array,0.0)	#	207	 Degradation: E_R_atp = []
push!(rate_constant_array,0.0)	#	208	 Degradation: E_R_nuo = []
push!(rate_constant_array,0.0)	#	209	 Degradation: E_R_pnt1 = []
push!(rate_constant_array,0.0)	#	210	 Degradation: E_R_pnt2 = []
push!(rate_constant_array,0.0)	#	211	 Degradation: E_R_ndh1 = []
push!(rate_constant_array,0.0)	#	212	 Degradation: E_R_ndh2 = []
push!(rate_constant_array,0.0)	#	213	 Degradation: E_R_hack1 = []
push!(rate_constant_array,0.0)	#	214	 Degradation: E_R_ppk = []
push!(rate_constant_array,0.0)	#	215	 Degradation: E_R_ppa = []
push!(rate_constant_array,0.0)	#	216	 Degradation: E_R_chor = []
push!(rate_constant_array,0.0)	#	217	 Degradation: E_R_gar = []
push!(rate_constant_array,0.0)	#	218	 Degradation: E_R_air = []
push!(rate_constant_array,0.0)	#	219	 Degradation: E_R_aicar = []
push!(rate_constant_array,0.0)	#	220	 Degradation: E_R_imp = []
push!(rate_constant_array,0.0)	#	221	 Degradation: E_R_gmp = []
push!(rate_constant_array,0.0)	#	222	 Degradation: E_R_gdp = []
push!(rate_constant_array,0.0)	#	223	 Degradation: E_R_gtp = []
push!(rate_constant_array,0.0)	#	224	 Degradation: E_R_amp = []
push!(rate_constant_array,0.0)	#	225	 Degradation: E_R_adk = []
push!(rate_constant_array,0.0)	#	226	 Degradation: E_R_adk_R = []
push!(rate_constant_array,0.0)	#	227	 Degradation: E_R_ump = []
push!(rate_constant_array,0.0)	#	228	 Degradation: E_R_udp = []
push!(rate_constant_array,0.0)	#	229	 Degradation: E_R_utp = []
push!(rate_constant_array,0.0)	#	230	 Degradation: E_R_ctp = []
push!(rate_constant_array,0.0)	#	231	 Degradation: E_R_cdp = []
push!(rate_constant_array,0.0)	#	232	 Degradation: E_R_cmp = []
push!(rate_constant_array,0.0)	#	233	 Degradation: E_R_alaAC = []
push!(rate_constant_array,0.0)	#	234	 Degradation: E_R_arg = []
push!(rate_constant_array,0.0)	#	235	 Degradation: E_R_aspC = []
push!(rate_constant_array,0.0)	#	236	 Degradation: E_R_asnB = []
push!(rate_constant_array,0.0)	#	237	 Degradation: E_R_asnA = []
push!(rate_constant_array,0.0)	#	238	 Degradation: E_R_cysEMK = []
push!(rate_constant_array,0.0)	#	239	 Degradation: E_R_gltBD = []
push!(rate_constant_array,0.0)	#	240	 Degradation: E_R_gdhA = []
push!(rate_constant_array,0.0)	#	241	 Degradation: E_R_glnA = []
push!(rate_constant_array,0.0)	#	242	 Degradation: E_R_glyA = []
push!(rate_constant_array,0.0)	#	243	 Degradation: E_R_his = []
push!(rate_constant_array,0.0)	#	244	 Degradation: E_R_ile = []
push!(rate_constant_array,0.0)	#	245	 Degradation: E_R_leu = []
push!(rate_constant_array,0.0)	#	246	 Degradation: E_R_lys = []
push!(rate_constant_array,0.0)	#	247	 Degradation: E_R_met = []
push!(rate_constant_array,0.0)	#	248	 Degradation: E_R_phe = []
push!(rate_constant_array,0.0)	#	249	 Degradation: E_R_pro = []
push!(rate_constant_array,0.0)	#	250	 Degradation: E_R_serABC = []
push!(rate_constant_array,0.0)	#	251	 Degradation: E_R_thr = []
push!(rate_constant_array,0.0)	#	252	 Degradation: E_R_trp = []
push!(rate_constant_array,0.0)	#	253	 Degradation: E_R_tyr = []
push!(rate_constant_array,0.0)	#	254	 Degradation: E_R_val = []
push!(rate_constant_array,0.0)	#	255	 Degradation: E_Ex_1 = []
push!(rate_constant_array,0.0)	#	256	 Degradation: E_Ex_2 = []
push!(rate_constant_array,0.0)	#	257	 Degradation: E_Ex_3 = []
push!(rate_constant_array,0.0)	#	258	 Degradation: E_Ex_4 = []
push!(rate_constant_array,0.0)	#	259	 Degradation: E_Ex_5 = []
push!(rate_constant_array,0.0)	#	260	 Degradation: E_R_CAT = []
push!(rate_constant_array,0.0)	#	261	 Degradation: E_R_amp_ppi = []
push!(rate_constant_array,0.0)	#	262	 Degradation: E_R_amp_pi = []
push!(rate_constant_array,0.0)	#	263	 Degradation: E_R_gmp_ppi = []
push!(rate_constant_array,0.0)	#	264	 Degradation: E_R_gmp_pi = []
push!(rate_constant_array,0.0)	#	265	 Degradation: E_R_cmp_ppi = []
push!(rate_constant_array,0.0)	#	266	 Degradation: E_R_cmp_pi = []
push!(rate_constant_array,0.0)	#	267	 Degradation: E_R_ump_ppi = []
push!(rate_constant_array,0.0)	#	268	 Degradation: E_R_ump_pi = []

# Formulate the saturation constant array - 
saturation_constant_array = zeros(NREACTIONS,NSPECIES);
saturation_constant_array[1,48] = 1.0;	#	 Name: R_PTS: M_pep_c+M_glc_D_c = M_g6p_c+M_pyr_c Species: M_pep_c
saturation_constant_array[1,47] = 1.0;	#	 Name: R_PTS: M_pep_c+M_glc_D_c = M_g6p_c+M_pyr_c Species: M_glc_D_c
saturation_constant_array[2,53] = 1.0;	#	 Name: R_glk_atp: M_atp_c+M_glc_D_c = M_adp_c+M_g6p_c+M_h_c Species: M_atp_c
saturation_constant_array[2,47] = 1.0;	#	 Name: R_glk_atp: M_atp_c+M_glc_D_c = M_adp_c+M_g6p_c+M_h_c Species: M_glc_D_c
saturation_constant_array[3,59] = 1.0;	#	 Name: R_glk_utp: M_utp_c+M_glc_D_c = M_udp_c+M_g6p_c+M_h_c Species: M_utp_c
saturation_constant_array[3,47] = 1.0;	#	 Name: R_glk_utp: M_utp_c+M_glc_D_c = M_udp_c+M_g6p_c+M_h_c Species: M_glc_D_c
saturation_constant_array[4,62] = 1.0;	#	 Name: R_glk_ctp: M_ctp_c+M_glc_D_c = M_cdp_c+M_g6p_c+M_h_c Species: M_ctp_c
saturation_constant_array[4,47] = 1.0;	#	 Name: R_glk_ctp: M_ctp_c+M_glc_D_c = M_cdp_c+M_g6p_c+M_h_c Species: M_glc_D_c
saturation_constant_array[5,56] = 1.0;	#	 Name: R_glk_gtp: M_gtp_c+M_glc_D_c = M_gdp_c+M_g6p_c+M_h_c Species: M_gtp_c
saturation_constant_array[5,47] = 1.0;	#	 Name: R_glk_gtp: M_gtp_c+M_glc_D_c = M_gdp_c+M_g6p_c+M_h_c Species: M_glc_D_c
saturation_constant_array[6,1] = 1.0;	#	 Name: R_pgi: M_g6p_c = M_f6p_c Species: M_g6p_c
saturation_constant_array[7,2] = 1.0;	#	 Name: R_pgi_R: M_f6p_c = M_g6p_c Species: M_f6p_c
saturation_constant_array[8,53] = 1.0;	#	 Name: R_pfk: M_atp_c+M_f6p_c = M_adp_c+M_fdp_c+M_h_c Species: M_atp_c
saturation_constant_array[8,2] = 1.0;	#	 Name: R_pfk: M_atp_c+M_f6p_c = M_adp_c+M_fdp_c+M_h_c Species: M_f6p_c
saturation_constant_array[9,3] = 1.0;	#	 Name: R_fdp: M_fdp_c+M_h2o_c = M_f6p_c+M_pi_c Species: M_fdp_c
saturation_constant_array[9,92] = 1.0;	#	 Name: R_fdp: M_fdp_c+M_h2o_c = M_f6p_c+M_pi_c Species: M_h2o_c
saturation_constant_array[10,3] = 1.0;	#	 Name: R_fbaA: M_fdp_c = M_dhap_c+M_g3p_c Species: M_fdp_c
saturation_constant_array[11,4] = 1.0;	#	 Name: R_fbaA_R: M_dhap_c+M_g3p_c = M_fdp_c Species: M_dhap_c
saturation_constant_array[11,5] = 1.0;	#	 Name: R_fbaA_R: M_dhap_c+M_g3p_c = M_fdp_c Species: M_g3p_c
saturation_constant_array[12,4] = 1.0;	#	 Name: R_tpiA: M_dhap_c = M_g3p_c Species: M_dhap_c
saturation_constant_array[13,5] = 1.0;	#	 Name: R_tpiA_R: M_g3p_c = M_dhap_c Species: M_g3p_c
saturation_constant_array[14,5] = 1.0;	#	 Name: R_gapA: M_g3p_c+M_nad_c+M_pi_c = M_13dpg_c+M_h_c+M_nadh_c Species: M_g3p_c
saturation_constant_array[14,93] = 1.0;	#	 Name: R_gapA: M_g3p_c+M_nad_c+M_pi_c = M_13dpg_c+M_h_c+M_nadh_c Species: M_nad_c
saturation_constant_array[14,88] = 1.0;	#	 Name: R_gapA: M_g3p_c+M_nad_c+M_pi_c = M_13dpg_c+M_h_c+M_nadh_c Species: M_pi_c
saturation_constant_array[15,6] = 1.0;	#	 Name: R_gapA_R: M_13dpg_c+M_h_c+M_nadh_c = M_g3p_c+M_nad_c+M_pi_c Species: M_13dpg_c
saturation_constant_array[15,91] = 1.0;	#	 Name: R_gapA_R: M_13dpg_c+M_h_c+M_nadh_c = M_g3p_c+M_nad_c+M_pi_c Species: M_h_c
saturation_constant_array[15,94] = 1.0;	#	 Name: R_gapA_R: M_13dpg_c+M_h_c+M_nadh_c = M_g3p_c+M_nad_c+M_pi_c Species: M_nadh_c
saturation_constant_array[16,6] = 1.0;	#	 Name: R_pgk: M_13dpg_c+M_adp_c = M_3pg_c+M_atp_c Species: M_13dpg_c
saturation_constant_array[16,54] = 1.0;	#	 Name: R_pgk: M_13dpg_c+M_adp_c = M_3pg_c+M_atp_c Species: M_adp_c
saturation_constant_array[17,7] = 1.0;	#	 Name: R_pgk_R: M_3pg_c+M_atp_c = M_13dpg_c+M_adp_c Species: M_3pg_c
saturation_constant_array[17,53] = 1.0;	#	 Name: R_pgk_R: M_3pg_c+M_atp_c = M_13dpg_c+M_adp_c Species: M_atp_c
saturation_constant_array[18,7] = 1.0;	#	 Name: R_gpm: M_3pg_c = M_2pg_c Species: M_3pg_c
saturation_constant_array[19,8] = 1.0;	#	 Name: R_gpm_R: M_2pg_c = M_3pg_c Species: M_2pg_c
saturation_constant_array[20,8] = 1.0;	#	 Name: R_eno: M_2pg_c = M_h2o_c+M_pep_c Species: M_2pg_c
saturation_constant_array[21,92] = 1.0;	#	 Name: R_eno_R: M_h2o_c+M_pep_c = M_2pg_c Species: M_h2o_c
saturation_constant_array[21,48] = 1.0;	#	 Name: R_eno_R: M_h2o_c+M_pep_c = M_2pg_c Species: M_pep_c
saturation_constant_array[22,54] = 1.0;	#	 Name: R_pyk: M_adp_c+M_h_c+M_pep_c = M_atp_c+M_pyr_c Species: M_adp_c
saturation_constant_array[22,91] = 1.0;	#	 Name: R_pyk: M_adp_c+M_h_c+M_pep_c = M_atp_c+M_pyr_c Species: M_h_c
saturation_constant_array[22,48] = 1.0;	#	 Name: R_pyk: M_adp_c+M_h_c+M_pep_c = M_atp_c+M_pyr_c Species: M_pep_c
saturation_constant_array[23,53] = 1.0;	#	 Name: R_pck: M_atp_c+M_oaa_c = M_adp_c+M_co2_c+M_pep_c Species: M_atp_c
saturation_constant_array[23,9] = 1.0;	#	 Name: R_pck: M_atp_c+M_oaa_c = M_adp_c+M_co2_c+M_pep_c Species: M_oaa_c
saturation_constant_array[24,87] = 1.0;	#	 Name: R_ppc: M_co2_c+M_h2o_c+M_pep_c = M_h_c+M_oaa_c+M_pi_c Species: M_co2_c
saturation_constant_array[24,92] = 1.0;	#	 Name: R_ppc: M_co2_c+M_h2o_c+M_pep_c = M_h_c+M_oaa_c+M_pi_c Species: M_h2o_c
saturation_constant_array[24,48] = 1.0;	#	 Name: R_ppc: M_co2_c+M_h2o_c+M_pep_c = M_h_c+M_oaa_c+M_pi_c Species: M_pep_c
saturation_constant_array[25,10] = 1.0;	#	 Name: R_pdh: M_coa_c+M_nad_c+M_pyr_c = M_accoa_c+M_co2_c+M_nadh_c Species: M_coa_c
saturation_constant_array[25,93] = 1.0;	#	 Name: R_pdh: M_coa_c+M_nad_c+M_pyr_c = M_accoa_c+M_co2_c+M_nadh_c Species: M_nad_c
saturation_constant_array[25,49] = 1.0;	#	 Name: R_pdh: M_coa_c+M_nad_c+M_pyr_c = M_accoa_c+M_co2_c+M_nadh_c Species: M_pyr_c
saturation_constant_array[26,53] = 1.0;	#	 Name: R_pps: M_atp_c+M_h2o_c+M_pyr_c = M_amp_c+2*M_h_c+M_pep_c+M_pi_c Species: M_atp_c
saturation_constant_array[26,92] = 1.0;	#	 Name: R_pps: M_atp_c+M_h2o_c+M_pyr_c = M_amp_c+2*M_h_c+M_pep_c+M_pi_c Species: M_h2o_c
saturation_constant_array[26,49] = 1.0;	#	 Name: R_pps: M_atp_c+M_h2o_c+M_pyr_c = M_amp_c+2*M_h_c+M_pep_c+M_pi_c Species: M_pyr_c
saturation_constant_array[27,1] = 1.0;	#	 Name: R_zwf: M_g6p_c+M_nadp_c = M_6pgl_c+M_h_c+M_nadph_c Species: M_g6p_c
saturation_constant_array[27,95] = 1.0;	#	 Name: R_zwf: M_g6p_c+M_nadp_c = M_6pgl_c+M_h_c+M_nadph_c Species: M_nadp_c
saturation_constant_array[28,12] = 1.0;	#	 Name: R_zwf_R: M_6pgl_c+M_h_c+M_nadph_c = M_g6p_c+M_nadp_c Species: M_6pgl_c
saturation_constant_array[28,91] = 1.0;	#	 Name: R_zwf_R: M_6pgl_c+M_h_c+M_nadph_c = M_g6p_c+M_nadp_c Species: M_h_c
saturation_constant_array[28,96] = 1.0;	#	 Name: R_zwf_R: M_6pgl_c+M_h_c+M_nadph_c = M_g6p_c+M_nadp_c Species: M_nadph_c
saturation_constant_array[29,12] = 1.0;	#	 Name: R_pgl: M_6pgl_c+M_h2o_c = M_6pgc_c+M_h_c Species: M_6pgl_c
saturation_constant_array[29,92] = 1.0;	#	 Name: R_pgl: M_6pgl_c+M_h2o_c = M_6pgc_c+M_h_c Species: M_h2o_c
saturation_constant_array[30,13] = 1.0;	#	 Name: R_gnd: M_6pgc_c+M_nadp_c = M_co2_c+M_nadph_c+M_ru5p_D_c Species: M_6pgc_c
saturation_constant_array[30,95] = 1.0;	#	 Name: R_gnd: M_6pgc_c+M_nadp_c = M_co2_c+M_nadph_c+M_ru5p_D_c Species: M_nadp_c
saturation_constant_array[31,14] = 1.0;	#	 Name: R_rpe: M_ru5p_D_c = M_xu5p_D_c Species: M_ru5p_D_c
saturation_constant_array[32,15] = 1.0;	#	 Name: R_rpe_R: M_xu5p_D_c = M_ru5p_D_c Species: M_xu5p_D_c
saturation_constant_array[33,16] = 1.0;	#	 Name: R_rpi: M_r5p_c = M_ru5p_D_c Species: M_r5p_c
saturation_constant_array[34,14] = 1.0;	#	 Name: R_rpi_R: M_ru5p_D_c = M_r5p_c Species: M_ru5p_D_c
saturation_constant_array[35,5] = 1.0;	#	 Name: R_talAB: M_g3p_c+M_s7p_c = M_e4p_c+M_f6p_c Species: M_g3p_c
saturation_constant_array[35,17] = 1.0;	#	 Name: R_talAB: M_g3p_c+M_s7p_c = M_e4p_c+M_f6p_c Species: M_s7p_c
saturation_constant_array[36,18] = 1.0;	#	 Name: R_talAB_R: M_e4p_c+M_f6p_c = M_g3p_c+M_s7p_c Species: M_e4p_c
saturation_constant_array[36,2] = 1.0;	#	 Name: R_talAB_R: M_e4p_c+M_f6p_c = M_g3p_c+M_s7p_c Species: M_f6p_c
saturation_constant_array[37,16] = 1.0;	#	 Name: R_tkt1: M_r5p_c+M_xu5p_D_c = M_g3p_c+M_s7p_c Species: M_r5p_c
saturation_constant_array[37,15] = 1.0;	#	 Name: R_tkt1: M_r5p_c+M_xu5p_D_c = M_g3p_c+M_s7p_c Species: M_xu5p_D_c
saturation_constant_array[38,5] = 1.0;	#	 Name: R_tkt1_R: M_g3p_c+M_s7p_c = M_r5p_c+M_xu5p_D_c Species: M_g3p_c
saturation_constant_array[38,17] = 1.0;	#	 Name: R_tkt1_R: M_g3p_c+M_s7p_c = M_r5p_c+M_xu5p_D_c Species: M_s7p_c
saturation_constant_array[39,18] = 1.0;	#	 Name: R_tkt2: M_e4p_c+M_xu5p_D_c = M_f6p_c+M_g3p_c Species: M_e4p_c
saturation_constant_array[39,15] = 1.0;	#	 Name: R_tkt2: M_e4p_c+M_xu5p_D_c = M_f6p_c+M_g3p_c Species: M_xu5p_D_c
saturation_constant_array[40,2] = 1.0;	#	 Name: R_tkt2_R: M_f6p_c+M_g3p_c = M_e4p_c+M_xu5p_D_c Species: M_f6p_c
saturation_constant_array[40,5] = 1.0;	#	 Name: R_tkt2_R: M_f6p_c+M_g3p_c = M_e4p_c+M_xu5p_D_c Species: M_g3p_c
saturation_constant_array[41,13] = 1.0;	#	 Name: R_edd: M_6pgc_c = M_2ddg6p_c+M_h2o_c Species: M_6pgc_c
saturation_constant_array[42,19] = 1.0;	#	 Name: R_eda: M_2ddg6p_c = M_g3p_c+M_pyr_c Species: M_2ddg6p_c
saturation_constant_array[43,11] = 1.0;	#	 Name: R_gltA: M_accoa_c+M_h2o_c+M_oaa_c = M_cit_c+M_coa_c+M_h_c Species: M_accoa_c
saturation_constant_array[43,92] = 1.0;	#	 Name: R_gltA: M_accoa_c+M_h2o_c+M_oaa_c = M_cit_c+M_coa_c+M_h_c Species: M_h2o_c
saturation_constant_array[43,9] = 1.0;	#	 Name: R_gltA: M_accoa_c+M_h2o_c+M_oaa_c = M_cit_c+M_coa_c+M_h_c Species: M_oaa_c
saturation_constant_array[44,20] = 1.0;	#	 Name: R_acn: M_cit_c = M_icit_c Species: M_cit_c
saturation_constant_array[45,21] = 1.0;	#	 Name: R_acn_R: M_icit_c = M_cit_c Species: M_icit_c
saturation_constant_array[46,21] = 1.0;	#	 Name: R_icd: M_icit_c+M_nadp_c = M_akg_c+M_co2_c+M_nadph_c Species: M_icit_c
saturation_constant_array[46,95] = 1.0;	#	 Name: R_icd: M_icit_c+M_nadp_c = M_akg_c+M_co2_c+M_nadph_c Species: M_nadp_c
saturation_constant_array[47,22] = 1.0;	#	 Name: R_icd_R: M_akg_c+M_co2_c+M_nadph_c = M_icit_c+M_nadp_c Species: M_akg_c
saturation_constant_array[47,87] = 1.0;	#	 Name: R_icd_R: M_akg_c+M_co2_c+M_nadph_c = M_icit_c+M_nadp_c Species: M_co2_c
saturation_constant_array[47,96] = 1.0;	#	 Name: R_icd_R: M_akg_c+M_co2_c+M_nadph_c = M_icit_c+M_nadp_c Species: M_nadph_c
saturation_constant_array[48,22] = 1.0;	#	 Name: R_sucAB: M_akg_c+M_coa_c+M_nad_c = M_co2_c+M_nadh_c+M_succoa_c Species: M_akg_c
saturation_constant_array[48,10] = 1.0;	#	 Name: R_sucAB: M_akg_c+M_coa_c+M_nad_c = M_co2_c+M_nadh_c+M_succoa_c Species: M_coa_c
saturation_constant_array[48,93] = 1.0;	#	 Name: R_sucAB: M_akg_c+M_coa_c+M_nad_c = M_co2_c+M_nadh_c+M_succoa_c Species: M_nad_c
saturation_constant_array[49,53] = 1.0;	#	 Name: R_sucCD: M_atp_c+M_coa_c+M_succ_c = M_adp_c+M_pi_c+M_succoa_c Species: M_atp_c
saturation_constant_array[49,10] = 1.0;	#	 Name: R_sucCD: M_atp_c+M_coa_c+M_succ_c = M_adp_c+M_pi_c+M_succoa_c Species: M_coa_c
saturation_constant_array[49,65] = 1.0;	#	 Name: R_sucCD: M_atp_c+M_coa_c+M_succ_c = M_adp_c+M_pi_c+M_succoa_c Species: M_succ_c
saturation_constant_array[50,54] = 1.0;	#	 Name: R_sucCD_R: M_adp_c+M_pi_c+M_succoa_c = M_atp_c+M_coa_c+M_succ_c Species: M_adp_c
saturation_constant_array[50,88] = 1.0;	#	 Name: R_sucCD_R: M_adp_c+M_pi_c+M_succoa_c = M_atp_c+M_coa_c+M_succ_c Species: M_pi_c
saturation_constant_array[50,23] = 1.0;	#	 Name: R_sucCD_R: M_adp_c+M_pi_c+M_succoa_c = M_atp_c+M_coa_c+M_succ_c Species: M_succoa_c
saturation_constant_array[51,24] = 1.0;	#	 Name: R_sdh: M_q8_c+M_succ_c = M_fum_c+M_q8h2_c Species: M_q8_c
saturation_constant_array[51,65] = 1.0;	#	 Name: R_sdh: M_q8_c+M_succ_c = M_fum_c+M_q8h2_c Species: M_succ_c
saturation_constant_array[52,25] = 1.0;	#	 Name: R_frd: M_fum_c+M_mql8_c = M_mqn8_c+M_succ_c Species: M_fum_c
saturation_constant_array[52,27] = 1.0;	#	 Name: R_frd: M_fum_c+M_mql8_c = M_mqn8_c+M_succ_c Species: M_mql8_c
saturation_constant_array[53,25] = 1.0;	#	 Name: R_fum: M_fum_c+M_h2o_c = M_mal_L_c Species: M_fum_c
saturation_constant_array[53,92] = 1.0;	#	 Name: R_fum: M_fum_c+M_h2o_c = M_mal_L_c Species: M_h2o_c
saturation_constant_array[54,52] = 1.0;	#	 Name: R_fum_R: M_mal_L_c = M_fum_c+M_h2o_c Species: M_mal_L_c
saturation_constant_array[55,52] = 1.0;	#	 Name: R_mdh: M_mal_L_c+M_nad_c = M_oaa_c+M_h_c+M_nadh_c Species: M_mal_L_c
saturation_constant_array[55,93] = 1.0;	#	 Name: R_mdh: M_mal_L_c+M_nad_c = M_oaa_c+M_h_c+M_nadh_c Species: M_nad_c
saturation_constant_array[56,9] = 1.0;	#	 Name: R_mdh_R: M_oaa_c+M_h_c+M_nadh_c = M_mal_L_c+M_nad_c Species: M_oaa_c
saturation_constant_array[56,91] = 1.0;	#	 Name: R_mdh_R: M_oaa_c+M_h_c+M_nadh_c = M_mal_L_c+M_nad_c Species: M_h_c
saturation_constant_array[56,94] = 1.0;	#	 Name: R_mdh_R: M_oaa_c+M_h_c+M_nadh_c = M_mal_L_c+M_nad_c Species: M_nadh_c
saturation_constant_array[57,21] = 1.0;	#	 Name: R_aceA: M_icit_c = M_glx_c+M_succ_c Species: M_icit_c
saturation_constant_array[58,11] = 1.0;	#	 Name: R_aceB: M_accoa_c+M_glx_c+M_h2o_c = M_coa_c+M_h_c+M_mal_L_c Species: M_accoa_c
saturation_constant_array[58,29] = 1.0;	#	 Name: R_aceB: M_accoa_c+M_glx_c+M_h2o_c = M_coa_c+M_h_c+M_mal_L_c Species: M_glx_c
saturation_constant_array[58,92] = 1.0;	#	 Name: R_aceB: M_accoa_c+M_glx_c+M_h2o_c = M_coa_c+M_h_c+M_mal_L_c Species: M_h2o_c
saturation_constant_array[59,52] = 1.0;	#	 Name: R_maeA: M_mal_L_c+M_nad_c = M_co2_c+M_nadh_c+M_pyr_c Species: M_mal_L_c
saturation_constant_array[59,93] = 1.0;	#	 Name: R_maeA: M_mal_L_c+M_nad_c = M_co2_c+M_nadh_c+M_pyr_c Species: M_nad_c
saturation_constant_array[60,52] = 1.0;	#	 Name: R_maeB: M_mal_L_c+M_nadp_c = M_co2_c+M_nadph_c+M_pyr_c Species: M_mal_L_c
saturation_constant_array[60,95] = 1.0;	#	 Name: R_maeB: M_mal_L_c+M_nadp_c = M_co2_c+M_nadph_c+M_pyr_c Species: M_nadp_c
saturation_constant_array[61,11] = 1.0;	#	 Name: R_pta: M_accoa_c+M_pi_c = M_actp_c+M_coa_c Species: M_accoa_c
saturation_constant_array[61,88] = 1.0;	#	 Name: R_pta: M_accoa_c+M_pi_c = M_actp_c+M_coa_c Species: M_pi_c
saturation_constant_array[62,30] = 1.0;	#	 Name: R_pta_R: M_actp_c+M_coa_c = M_accoa_c+M_pi_c Species: M_actp_c
saturation_constant_array[62,10] = 1.0;	#	 Name: R_pta_R: M_actp_c+M_coa_c = M_accoa_c+M_pi_c Species: M_coa_c
saturation_constant_array[63,30] = 1.0;	#	 Name: R_ackA: M_actp_c+M_adp_c = M_ac_c+M_atp_c Species: M_actp_c
saturation_constant_array[63,54] = 1.0;	#	 Name: R_ackA: M_actp_c+M_adp_c = M_ac_c+M_atp_c Species: M_adp_c
saturation_constant_array[64,50] = 1.0;	#	 Name: R_ackA_R: M_ac_c+M_atp_c = M_actp_c+M_adp_c Species: M_ac_c
saturation_constant_array[64,53] = 1.0;	#	 Name: R_ackA_R: M_ac_c+M_atp_c = M_actp_c+M_adp_c Species: M_atp_c
saturation_constant_array[65,50] = 1.0;	#	 Name: R_acs: M_ac_c+M_atp_c+M_coa_c = M_accoa_c+M_amp_c+M_ppi_c Species: M_ac_c
saturation_constant_array[65,53] = 1.0;	#	 Name: R_acs: M_ac_c+M_atp_c+M_coa_c = M_accoa_c+M_amp_c+M_ppi_c Species: M_atp_c
saturation_constant_array[65,10] = 1.0;	#	 Name: R_acs: M_ac_c+M_atp_c+M_coa_c = M_accoa_c+M_amp_c+M_ppi_c Species: M_coa_c
saturation_constant_array[66,11] = 1.0;	#	 Name: R_adhE: M_accoa_c+2*M_h_c+2*M_nadh_c = M_coa_c+M_etoh_c+2*M_nad_c Species: M_accoa_c
saturation_constant_array[66,91] = 1.0;	#	 Name: R_adhE: M_accoa_c+2*M_h_c+2*M_nadh_c = M_coa_c+M_etoh_c+2*M_nad_c Species: M_h_c
saturation_constant_array[66,94] = 1.0;	#	 Name: R_adhE: M_accoa_c+2*M_h_c+2*M_nadh_c = M_coa_c+M_etoh_c+2*M_nad_c Species: M_nadh_c
saturation_constant_array[67,10] = 1.0;	#	 Name: R_adhE_R: M_coa_c+M_etoh_c+2*M_nad_c = M_accoa_c+2*M_h_c+2*M_nadh_c Species: M_coa_c
saturation_constant_array[67,32] = 1.0;	#	 Name: R_adhE_R: M_coa_c+M_etoh_c+2*M_nad_c = M_accoa_c+2*M_h_c+2*M_nadh_c Species: M_etoh_c
saturation_constant_array[67,93] = 1.0;	#	 Name: R_adhE_R: M_coa_c+M_etoh_c+2*M_nad_c = M_accoa_c+2*M_h_c+2*M_nadh_c Species: M_nad_c
saturation_constant_array[68,49] = 1.0;	#	 Name: R_ldh_f: M_pyr_c+M_nadh_c+M_h_c = M_lac_D_c+M_nad_c Species: M_pyr_c
saturation_constant_array[68,94] = 1.0;	#	 Name: R_ldh_f: M_pyr_c+M_nadh_c+M_h_c = M_lac_D_c+M_nad_c Species: M_nadh_c
saturation_constant_array[68,91] = 1.0;	#	 Name: R_ldh_f: M_pyr_c+M_nadh_c+M_h_c = M_lac_D_c+M_nad_c Species: M_h_c
saturation_constant_array[69,51] = 1.0;	#	 Name: R_ldh_r: M_lac_D_c+M_nad_c = M_pyr_c+M_nadh_c+M_h_c Species: M_lac_D_c
saturation_constant_array[69,93] = 1.0;	#	 Name: R_ldh_r: M_lac_D_c+M_nad_c = M_pyr_c+M_nadh_c+M_h_c Species: M_nad_c
saturation_constant_array[70,10] = 1.0;	#	 Name: R_pflAB: M_coa_c+M_pyr_c = M_accoa_c+M_for_c Species: M_coa_c
saturation_constant_array[70,49] = 1.0;	#	 Name: R_pflAB: M_coa_c+M_pyr_c = M_accoa_c+M_for_c Species: M_pyr_c
saturation_constant_array[71,91] = 1.0;	#	 Name: R_cyd: 2*M_h_c+0.5*M_o2_c+M_q8h2_c = M_h2o_c+M_q8_c+2*M_h_e Species: M_h_c
saturation_constant_array[71,86] = 1.0;	#	 Name: R_cyd: 2*M_h_c+0.5*M_o2_c+M_q8h2_c = M_h2o_c+M_q8_c+2*M_h_e Species: M_o2_c
saturation_constant_array[71,26] = 1.0;	#	 Name: R_cyd: 2*M_h_c+0.5*M_o2_c+M_q8h2_c = M_h2o_c+M_q8_c+2*M_h_e Species: M_q8h2_c
saturation_constant_array[72,91] = 1.0;	#	 Name: R_app: 2*M_h_c+M_mql8_c+0.5*M_o2_c = M_h2o_c+M_mqn8_c+2*M_h_e Species: M_h_c
saturation_constant_array[72,27] = 1.0;	#	 Name: R_app: 2*M_h_c+M_mql8_c+0.5*M_o2_c = M_h2o_c+M_mqn8_c+2*M_h_e Species: M_mql8_c
saturation_constant_array[72,86] = 1.0;	#	 Name: R_app: 2*M_h_c+M_mql8_c+0.5*M_o2_c = M_h2o_c+M_mqn8_c+2*M_h_e Species: M_o2_c
saturation_constant_array[73,54] = 1.0;	#	 Name: R_atp: M_adp_c+M_pi_c+4*M_h_e = M_atp_c+3*M_h_c+M_h2o_c Species: M_adp_c
saturation_constant_array[73,88] = 1.0;	#	 Name: R_atp: M_adp_c+M_pi_c+4*M_h_e = M_atp_c+3*M_h_c+M_h2o_c Species: M_pi_c
saturation_constant_array[73,34] = 1.0;	#	 Name: R_atp: M_adp_c+M_pi_c+4*M_h_e = M_atp_c+3*M_h_c+M_h2o_c Species: M_h_e
saturation_constant_array[74,91] = 1.0;	#	 Name: R_nuo: 3*M_h_c+M_nadh_c+M_q8_c = M_nad_c+M_q8h2_c+2*M_h_e Species: M_h_c
saturation_constant_array[74,94] = 1.0;	#	 Name: R_nuo: 3*M_h_c+M_nadh_c+M_q8_c = M_nad_c+M_q8h2_c+2*M_h_e Species: M_nadh_c
saturation_constant_array[74,24] = 1.0;	#	 Name: R_nuo: 3*M_h_c+M_nadh_c+M_q8_c = M_nad_c+M_q8h2_c+2*M_h_e Species: M_q8_c
saturation_constant_array[75,93] = 1.0;	#	 Name: R_pnt1: M_nad_c+M_nadph_c = M_nadh_c+M_nadp_c Species: M_nad_c
saturation_constant_array[75,96] = 1.0;	#	 Name: R_pnt1: M_nad_c+M_nadph_c = M_nadh_c+M_nadp_c Species: M_nadph_c
saturation_constant_array[76,94] = 1.0;	#	 Name: R_pnt2: M_nadh_c+M_nadp_c+2*M_h_e = 2*M_h_c+M_nad_c+M_nadph_c Species: M_nadh_c
saturation_constant_array[76,95] = 1.0;	#	 Name: R_pnt2: M_nadh_c+M_nadp_c+2*M_h_e = 2*M_h_c+M_nad_c+M_nadph_c Species: M_nadp_c
saturation_constant_array[76,34] = 1.0;	#	 Name: R_pnt2: M_nadh_c+M_nadp_c+2*M_h_e = 2*M_h_c+M_nad_c+M_nadph_c Species: M_h_e
saturation_constant_array[77,91] = 1.0;	#	 Name: R_ndh1: M_h_c+M_nadh_c+M_q8_c = M_nad_c+M_q8h2_c Species: M_h_c
saturation_constant_array[77,94] = 1.0;	#	 Name: R_ndh1: M_h_c+M_nadh_c+M_q8_c = M_nad_c+M_q8h2_c Species: M_nadh_c
saturation_constant_array[77,24] = 1.0;	#	 Name: R_ndh1: M_h_c+M_nadh_c+M_q8_c = M_nad_c+M_q8h2_c Species: M_q8_c
saturation_constant_array[78,91] = 1.0;	#	 Name: R_ndh2: M_h_c+M_mqn8_c+M_nadh_c = M_mql8_c+M_nad_c Species: M_h_c
saturation_constant_array[78,28] = 1.0;	#	 Name: R_ndh2: M_h_c+M_mqn8_c+M_nadh_c = M_mql8_c+M_nad_c Species: M_mqn8_c
saturation_constant_array[78,94] = 1.0;	#	 Name: R_ndh2: M_h_c+M_mqn8_c+M_nadh_c = M_mql8_c+M_nad_c Species: M_nadh_c
saturation_constant_array[79,53] = 1.0;	#	 Name: R_hack1: M_atp_c+M_h2o_c = M_adp_c+M_h_c+M_pi_c Species: M_atp_c
saturation_constant_array[79,92] = 1.0;	#	 Name: R_hack1: M_atp_c+M_h2o_c = M_adp_c+M_h_c+M_pi_c Species: M_h2o_c
saturation_constant_array[80,53] = 1.0;	#	 Name: R_ppk: M_atp_c+M_pi_c = M_adp_c+M_ppi_c Species: M_atp_c
saturation_constant_array[80,88] = 1.0;	#	 Name: R_ppk: M_atp_c+M_pi_c = M_adp_c+M_ppi_c Species: M_pi_c
saturation_constant_array[81,31] = 1.0;	#	 Name: R_ppa: M_ppi_c+M_h2o_c = 2*M_pi_c+M_h_c Species: M_ppi_c
saturation_constant_array[81,92] = 1.0;	#	 Name: R_ppa: M_ppi_c+M_h2o_c = 2*M_pi_c+M_h_c Species: M_h2o_c
saturation_constant_array[82,18] = 1.0;	#	 Name: R_chor: M_e4p_c+2*M_pep_c+M_nadph_c+M_atp_c = M_chor_c+M_nadp_c+M_adp_c+4*M_pi_c Species: M_e4p_c
saturation_constant_array[82,48] = 1.0;	#	 Name: R_chor: M_e4p_c+2*M_pep_c+M_nadph_c+M_atp_c = M_chor_c+M_nadp_c+M_adp_c+4*M_pi_c Species: M_pep_c
saturation_constant_array[82,96] = 1.0;	#	 Name: R_chor: M_e4p_c+2*M_pep_c+M_nadph_c+M_atp_c = M_chor_c+M_nadp_c+M_adp_c+4*M_pi_c Species: M_nadph_c
saturation_constant_array[82,53] = 1.0;	#	 Name: R_chor: M_e4p_c+2*M_pep_c+M_nadph_c+M_atp_c = M_chor_c+M_nadp_c+M_adp_c+4*M_pi_c Species: M_atp_c
saturation_constant_array[83,16] = 1.0;	#	 Name: R_gar: M_r5p_c+M_glu_L_c+M_gly_L_c+2*M_atp_c+M_h2o_c = M_gar_c+M_glu_L_c+M_adp_c+M_amp_c+M_pi_c+M_ppi_c+2*M_h_c Species: M_r5p_c
saturation_constant_array[83,83] = 1.0;	#	 Name: R_gar: M_r5p_c+M_glu_L_c+M_gly_L_c+2*M_atp_c+M_h2o_c = M_gar_c+M_glu_L_c+M_adp_c+M_amp_c+M_pi_c+M_ppi_c+2*M_h_c Species: M_glu_L_c
saturation_constant_array[83,67] = 1.0;	#	 Name: R_gar: M_r5p_c+M_glu_L_c+M_gly_L_c+2*M_atp_c+M_h2o_c = M_gar_c+M_glu_L_c+M_adp_c+M_amp_c+M_pi_c+M_ppi_c+2*M_h_c Species: M_gly_L_c
saturation_constant_array[83,53] = 1.0;	#	 Name: R_gar: M_r5p_c+M_glu_L_c+M_gly_L_c+2*M_atp_c+M_h2o_c = M_gar_c+M_glu_L_c+M_adp_c+M_amp_c+M_pi_c+M_ppi_c+2*M_h_c Species: M_atp_c
saturation_constant_array[83,92] = 1.0;	#	 Name: R_gar: M_r5p_c+M_glu_L_c+M_gly_L_c+2*M_atp_c+M_h2o_c = M_gar_c+M_glu_L_c+M_adp_c+M_amp_c+M_pi_c+M_ppi_c+2*M_h_c Species: M_h2o_c
saturation_constant_array[84,36] = 1.0;	#	 Name: R_air: M_gar_c+M_10fthf_c+M_gln_L_c+2*M_atp_c+M_h2o_c = M_air_c+M_thf_c+M_glu_L_c+2*M_adp_c+2*M_pi_c+3*M_h_c Species: M_gar_c
saturation_constant_array[84,37] = 1.0;	#	 Name: R_air: M_gar_c+M_10fthf_c+M_gln_L_c+2*M_atp_c+M_h2o_c = M_air_c+M_thf_c+M_glu_L_c+2*M_adp_c+2*M_pi_c+3*M_h_c Species: M_10fthf_c
saturation_constant_array[84,84] = 1.0;	#	 Name: R_air: M_gar_c+M_10fthf_c+M_gln_L_c+2*M_atp_c+M_h2o_c = M_air_c+M_thf_c+M_glu_L_c+2*M_adp_c+2*M_pi_c+3*M_h_c Species: M_gln_L_c
saturation_constant_array[84,53] = 1.0;	#	 Name: R_air: M_gar_c+M_10fthf_c+M_gln_L_c+2*M_atp_c+M_h2o_c = M_air_c+M_thf_c+M_glu_L_c+2*M_adp_c+2*M_pi_c+3*M_h_c Species: M_atp_c
saturation_constant_array[84,92] = 1.0;	#	 Name: R_air: M_gar_c+M_10fthf_c+M_gln_L_c+2*M_atp_c+M_h2o_c = M_air_c+M_thf_c+M_glu_L_c+2*M_adp_c+2*M_pi_c+3*M_h_c Species: M_h2o_c
saturation_constant_array[85,38] = 1.0;	#	 Name: R_aicar: M_air_c+M_asp_L_c+2*M_atp_c+M_hco3_c = M_aicar_c+M_fum_c+2*M_adp_c+2*M_h_c+2*M_pi_c Species: M_air_c
saturation_constant_array[85,66] = 1.0;	#	 Name: R_aicar: M_air_c+M_asp_L_c+2*M_atp_c+M_hco3_c = M_aicar_c+M_fum_c+2*M_adp_c+2*M_h_c+2*M_pi_c Species: M_asp_L_c
saturation_constant_array[85,53] = 1.0;	#	 Name: R_aicar: M_air_c+M_asp_L_c+2*M_atp_c+M_hco3_c = M_aicar_c+M_fum_c+2*M_adp_c+2*M_h_c+2*M_pi_c Species: M_atp_c
saturation_constant_array[85,40] = 1.0;	#	 Name: R_aicar: M_air_c+M_asp_L_c+2*M_atp_c+M_hco3_c = M_aicar_c+M_fum_c+2*M_adp_c+2*M_h_c+2*M_pi_c Species: M_hco3_c
saturation_constant_array[86,41] = 1.0;	#	 Name: R_imp: M_aicar_c+M_10fthf_c = M_imp_c+M_thf_c+M_h2o_c Species: M_aicar_c
saturation_constant_array[86,37] = 1.0;	#	 Name: R_imp: M_aicar_c+M_10fthf_c = M_imp_c+M_thf_c+M_h2o_c Species: M_10fthf_c
saturation_constant_array[87,42] = 1.0;	#	 Name: R_gmp: M_imp_c+M_atp_c+M_gln_L_c+M_nad_c+2*M_h2o_c = M_gmp_c+M_amp_c+M_glu_L_c+M_nadh_c+3*M_h_c+M_ppi_c Species: M_imp_c
saturation_constant_array[87,53] = 1.0;	#	 Name: R_gmp: M_imp_c+M_atp_c+M_gln_L_c+M_nad_c+2*M_h2o_c = M_gmp_c+M_amp_c+M_glu_L_c+M_nadh_c+3*M_h_c+M_ppi_c Species: M_atp_c
saturation_constant_array[87,84] = 1.0;	#	 Name: R_gmp: M_imp_c+M_atp_c+M_gln_L_c+M_nad_c+2*M_h2o_c = M_gmp_c+M_amp_c+M_glu_L_c+M_nadh_c+3*M_h_c+M_ppi_c Species: M_gln_L_c
saturation_constant_array[87,93] = 1.0;	#	 Name: R_gmp: M_imp_c+M_atp_c+M_gln_L_c+M_nad_c+2*M_h2o_c = M_gmp_c+M_amp_c+M_glu_L_c+M_nadh_c+3*M_h_c+M_ppi_c Species: M_nad_c
saturation_constant_array[87,92] = 1.0;	#	 Name: R_gmp: M_imp_c+M_atp_c+M_gln_L_c+M_nad_c+2*M_h2o_c = M_gmp_c+M_amp_c+M_glu_L_c+M_nadh_c+3*M_h_c+M_ppi_c Species: M_h2o_c
saturation_constant_array[88,58] = 1.0;	#	 Name: R_gdp: M_gmp_c+M_atp_c = M_gdp_c+M_adp_c Species: M_gmp_c
saturation_constant_array[88,53] = 1.0;	#	 Name: R_gdp: M_gmp_c+M_atp_c = M_gdp_c+M_adp_c Species: M_atp_c
saturation_constant_array[89,57] = 1.0;	#	 Name: R_gtp: M_gdp_c+M_atp_c = M_gtp_c+M_adp_c Species: M_gdp_c
saturation_constant_array[89,53] = 1.0;	#	 Name: R_gtp: M_gdp_c+M_atp_c = M_gtp_c+M_adp_c Species: M_atp_c
saturation_constant_array[90,66] = 1.0;	#	 Name: R_amp: M_asp_L_c+M_imp_c+M_gtp_c = M_amp_c+M_gdp_c+M_pi_c+2*M_h_c+M_fum_c Species: M_asp_L_c
saturation_constant_array[90,42] = 1.0;	#	 Name: R_amp: M_asp_L_c+M_imp_c+M_gtp_c = M_amp_c+M_gdp_c+M_pi_c+2*M_h_c+M_fum_c Species: M_imp_c
saturation_constant_array[90,56] = 1.0;	#	 Name: R_amp: M_asp_L_c+M_imp_c+M_gtp_c = M_amp_c+M_gdp_c+M_pi_c+2*M_h_c+M_fum_c Species: M_gtp_c
saturation_constant_array[91,55] = 1.0;	#	 Name: R_adk: M_amp_c+M_atp_c = 2*M_adp_c Species: M_amp_c
saturation_constant_array[91,53] = 1.0;	#	 Name: R_adk: M_amp_c+M_atp_c = 2*M_adp_c Species: M_atp_c
saturation_constant_array[92,54] = 1.0;	#	 Name: R_adk_R: 2*M_adp_c = M_amp_c+M_atp_c Species: M_adp_c
saturation_constant_array[93,84] = 1.0;	#	 Name: R_ump: M_gln_L_c+M_asp_L_c+M_r5p_c+M_q8_c+3*M_atp_c+M_hco3_c = M_ump_c+M_glu_L_c+M_q8h2_c+2*M_h_c+2*M_adp_c+M_amp_c+2*M_pi_c+M_ppi_c+M_co2_c Species: M_gln_L_c
saturation_constant_array[93,66] = 1.0;	#	 Name: R_ump: M_gln_L_c+M_asp_L_c+M_r5p_c+M_q8_c+3*M_atp_c+M_hco3_c = M_ump_c+M_glu_L_c+M_q8h2_c+2*M_h_c+2*M_adp_c+M_amp_c+2*M_pi_c+M_ppi_c+M_co2_c Species: M_asp_L_c
saturation_constant_array[93,16] = 1.0;	#	 Name: R_ump: M_gln_L_c+M_asp_L_c+M_r5p_c+M_q8_c+3*M_atp_c+M_hco3_c = M_ump_c+M_glu_L_c+M_q8h2_c+2*M_h_c+2*M_adp_c+M_amp_c+2*M_pi_c+M_ppi_c+M_co2_c Species: M_r5p_c
saturation_constant_array[93,24] = 1.0;	#	 Name: R_ump: M_gln_L_c+M_asp_L_c+M_r5p_c+M_q8_c+3*M_atp_c+M_hco3_c = M_ump_c+M_glu_L_c+M_q8h2_c+2*M_h_c+2*M_adp_c+M_amp_c+2*M_pi_c+M_ppi_c+M_co2_c Species: M_q8_c
saturation_constant_array[93,53] = 1.0;	#	 Name: R_ump: M_gln_L_c+M_asp_L_c+M_r5p_c+M_q8_c+3*M_atp_c+M_hco3_c = M_ump_c+M_glu_L_c+M_q8h2_c+2*M_h_c+2*M_adp_c+M_amp_c+2*M_pi_c+M_ppi_c+M_co2_c Species: M_atp_c
saturation_constant_array[93,40] = 1.0;	#	 Name: R_ump: M_gln_L_c+M_asp_L_c+M_r5p_c+M_q8_c+3*M_atp_c+M_hco3_c = M_ump_c+M_glu_L_c+M_q8h2_c+2*M_h_c+2*M_adp_c+M_amp_c+2*M_pi_c+M_ppi_c+M_co2_c Species: M_hco3_c
saturation_constant_array[94,61] = 1.0;	#	 Name: R_udp: M_ump_c+M_atp_c = M_udp_c+M_adp_c Species: M_ump_c
saturation_constant_array[94,53] = 1.0;	#	 Name: R_udp: M_ump_c+M_atp_c = M_udp_c+M_adp_c Species: M_atp_c
saturation_constant_array[95,60] = 1.0;	#	 Name: R_utp: M_udp_c+M_atp_c = M_utp_c+M_adp_c Species: M_udp_c
saturation_constant_array[95,53] = 1.0;	#	 Name: R_utp: M_udp_c+M_atp_c = M_utp_c+M_adp_c Species: M_atp_c
saturation_constant_array[96,59] = 1.0;	#	 Name: R_ctp: M_utp_c+M_glu_L_c+M_atp_c+M_h2o_c = M_ctp_c+M_glu_L_c+M_adp_c+M_pi_c+2*M_h_c Species: M_utp_c
saturation_constant_array[96,83] = 1.0;	#	 Name: R_ctp: M_utp_c+M_glu_L_c+M_atp_c+M_h2o_c = M_ctp_c+M_glu_L_c+M_adp_c+M_pi_c+2*M_h_c Species: M_glu_L_c
saturation_constant_array[96,53] = 1.0;	#	 Name: R_ctp: M_utp_c+M_glu_L_c+M_atp_c+M_h2o_c = M_ctp_c+M_glu_L_c+M_adp_c+M_pi_c+2*M_h_c Species: M_atp_c
saturation_constant_array[96,92] = 1.0;	#	 Name: R_ctp: M_utp_c+M_glu_L_c+M_atp_c+M_h2o_c = M_ctp_c+M_glu_L_c+M_adp_c+M_pi_c+2*M_h_c Species: M_h2o_c
saturation_constant_array[97,62] = 1.0;	#	 Name: R_cdp: M_ctp_c+M_h2o_c = M_cdp_c+M_pi_c+M_h_c Species: M_ctp_c
saturation_constant_array[97,92] = 1.0;	#	 Name: R_cdp: M_ctp_c+M_h2o_c = M_cdp_c+M_pi_c+M_h_c Species: M_h2o_c
saturation_constant_array[98,63] = 1.0;	#	 Name: R_cmp: M_cdp_c+M_h2o_c = M_cmp_c+M_pi_c+M_h_c Species: M_cdp_c
saturation_constant_array[98,92] = 1.0;	#	 Name: R_cmp: M_cdp_c+M_h2o_c = M_cmp_c+M_pi_c+M_h_c Species: M_h2o_c
saturation_constant_array[99,49] = 1.0;	#	 Name: R_alaAC: M_pyr_c+M_glu_L_c = M_ala_L_c+M_akg_c Species: M_pyr_c
saturation_constant_array[99,83] = 1.0;	#	 Name: R_alaAC: M_pyr_c+M_glu_L_c = M_ala_L_c+M_akg_c Species: M_glu_L_c
saturation_constant_array[100,83] = 1.0;	#	 Name: R_arg: M_glu_L_c+M_accoa_c+4*M_atp_c+M_nadph_c+3*M_h2o_c+M_gln_L_c+M_asp_L_c+M_co2_c = M_arg_L_c+M_coa_c+5*M_h_c+3*M_adp_c+3*M_pi_c+M_nadp_c+M_akg_c+M_ac_c+M_amp_c+M_ppi_c+M_fum_c Species: M_glu_L_c
saturation_constant_array[100,11] = 1.0;	#	 Name: R_arg: M_glu_L_c+M_accoa_c+4*M_atp_c+M_nadph_c+3*M_h2o_c+M_gln_L_c+M_asp_L_c+M_co2_c = M_arg_L_c+M_coa_c+5*M_h_c+3*M_adp_c+3*M_pi_c+M_nadp_c+M_akg_c+M_ac_c+M_amp_c+M_ppi_c+M_fum_c Species: M_accoa_c
saturation_constant_array[100,53] = 1.0;	#	 Name: R_arg: M_glu_L_c+M_accoa_c+4*M_atp_c+M_nadph_c+3*M_h2o_c+M_gln_L_c+M_asp_L_c+M_co2_c = M_arg_L_c+M_coa_c+5*M_h_c+3*M_adp_c+3*M_pi_c+M_nadp_c+M_akg_c+M_ac_c+M_amp_c+M_ppi_c+M_fum_c Species: M_atp_c
saturation_constant_array[100,96] = 1.0;	#	 Name: R_arg: M_glu_L_c+M_accoa_c+4*M_atp_c+M_nadph_c+3*M_h2o_c+M_gln_L_c+M_asp_L_c+M_co2_c = M_arg_L_c+M_coa_c+5*M_h_c+3*M_adp_c+3*M_pi_c+M_nadp_c+M_akg_c+M_ac_c+M_amp_c+M_ppi_c+M_fum_c Species: M_nadph_c
saturation_constant_array[100,92] = 1.0;	#	 Name: R_arg: M_glu_L_c+M_accoa_c+4*M_atp_c+M_nadph_c+3*M_h2o_c+M_gln_L_c+M_asp_L_c+M_co2_c = M_arg_L_c+M_coa_c+5*M_h_c+3*M_adp_c+3*M_pi_c+M_nadp_c+M_akg_c+M_ac_c+M_amp_c+M_ppi_c+M_fum_c Species: M_h2o_c
saturation_constant_array[100,84] = 1.0;	#	 Name: R_arg: M_glu_L_c+M_accoa_c+4*M_atp_c+M_nadph_c+3*M_h2o_c+M_gln_L_c+M_asp_L_c+M_co2_c = M_arg_L_c+M_coa_c+5*M_h_c+3*M_adp_c+3*M_pi_c+M_nadp_c+M_akg_c+M_ac_c+M_amp_c+M_ppi_c+M_fum_c Species: M_gln_L_c
saturation_constant_array[100,66] = 1.0;	#	 Name: R_arg: M_glu_L_c+M_accoa_c+4*M_atp_c+M_nadph_c+3*M_h2o_c+M_gln_L_c+M_asp_L_c+M_co2_c = M_arg_L_c+M_coa_c+5*M_h_c+3*M_adp_c+3*M_pi_c+M_nadp_c+M_akg_c+M_ac_c+M_amp_c+M_ppi_c+M_fum_c Species: M_asp_L_c
saturation_constant_array[100,87] = 1.0;	#	 Name: R_arg: M_glu_L_c+M_accoa_c+4*M_atp_c+M_nadph_c+3*M_h2o_c+M_gln_L_c+M_asp_L_c+M_co2_c = M_arg_L_c+M_coa_c+5*M_h_c+3*M_adp_c+3*M_pi_c+M_nadp_c+M_akg_c+M_ac_c+M_amp_c+M_ppi_c+M_fum_c Species: M_co2_c
saturation_constant_array[101,83] = 1.0;	#	 Name: R_aspC: M_glu_L_c+M_oaa_c = M_asp_L_c+M_akg_c Species: M_glu_L_c
saturation_constant_array[101,9] = 1.0;	#	 Name: R_aspC: M_glu_L_c+M_oaa_c = M_asp_L_c+M_akg_c Species: M_oaa_c
saturation_constant_array[102,66] = 1.0;	#	 Name: R_asnB: M_asp_L_c+M_gln_L_c+M_h2o_c+M_atp_c = M_asn_L_c+M_glu_L_c+M_h_c+M_ppi_c+M_amp_c Species: M_asp_L_c
saturation_constant_array[102,84] = 1.0;	#	 Name: R_asnB: M_asp_L_c+M_gln_L_c+M_h2o_c+M_atp_c = M_asn_L_c+M_glu_L_c+M_h_c+M_ppi_c+M_amp_c Species: M_gln_L_c
saturation_constant_array[102,92] = 1.0;	#	 Name: R_asnB: M_asp_L_c+M_gln_L_c+M_h2o_c+M_atp_c = M_asn_L_c+M_glu_L_c+M_h_c+M_ppi_c+M_amp_c Species: M_h2o_c
saturation_constant_array[102,53] = 1.0;	#	 Name: R_asnB: M_asp_L_c+M_gln_L_c+M_h2o_c+M_atp_c = M_asn_L_c+M_glu_L_c+M_h_c+M_ppi_c+M_amp_c Species: M_atp_c
saturation_constant_array[103,66] = 1.0;	#	 Name: R_asnA: M_asp_L_c+M_atp_c+M_nh4_c = M_asn_L_c+M_h_c+M_ppi_c+M_amp_c Species: M_asp_L_c
saturation_constant_array[103,53] = 1.0;	#	 Name: R_asnA: M_asp_L_c+M_atp_c+M_nh4_c = M_asn_L_c+M_h_c+M_ppi_c+M_amp_c Species: M_atp_c
saturation_constant_array[103,89] = 1.0;	#	 Name: R_asnA: M_asp_L_c+M_atp_c+M_nh4_c = M_asn_L_c+M_h_c+M_ppi_c+M_amp_c Species: M_nh4_c
saturation_constant_array[104,76] = 1.0;	#	 Name: R_cysEMK: M_ser_L_c+M_accoa_c+M_h2s_c = M_cys_L_c+M_coa_c+M_h_c+M_ac_c Species: M_ser_L_c
saturation_constant_array[104,11] = 1.0;	#	 Name: R_cysEMK: M_ser_L_c+M_accoa_c+M_h2s_c = M_cys_L_c+M_coa_c+M_h_c+M_ac_c Species: M_accoa_c
saturation_constant_array[104,44] = 1.0;	#	 Name: R_cysEMK: M_ser_L_c+M_accoa_c+M_h2s_c = M_cys_L_c+M_coa_c+M_h_c+M_ac_c Species: M_h2s_c
saturation_constant_array[105,84] = 1.0;	#	 Name: R_gltBD: M_gln_L_c+M_akg_c+M_nadph_c+M_h_c = 2*M_glu_L_c+M_nadp_c Species: M_gln_L_c
saturation_constant_array[105,22] = 1.0;	#	 Name: R_gltBD: M_gln_L_c+M_akg_c+M_nadph_c+M_h_c = 2*M_glu_L_c+M_nadp_c Species: M_akg_c
saturation_constant_array[105,96] = 1.0;	#	 Name: R_gltBD: M_gln_L_c+M_akg_c+M_nadph_c+M_h_c = 2*M_glu_L_c+M_nadp_c Species: M_nadph_c
saturation_constant_array[105,91] = 1.0;	#	 Name: R_gltBD: M_gln_L_c+M_akg_c+M_nadph_c+M_h_c = 2*M_glu_L_c+M_nadp_c Species: M_h_c
saturation_constant_array[106,22] = 1.0;	#	 Name: R_gdhA: M_akg_c+M_nadph_c+M_nh4_c+M_h_c = M_glu_L_c+M_h2o_c+M_nadp_c Species: M_akg_c
saturation_constant_array[106,96] = 1.0;	#	 Name: R_gdhA: M_akg_c+M_nadph_c+M_nh4_c+M_h_c = M_glu_L_c+M_h2o_c+M_nadp_c Species: M_nadph_c
saturation_constant_array[106,89] = 1.0;	#	 Name: R_gdhA: M_akg_c+M_nadph_c+M_nh4_c+M_h_c = M_glu_L_c+M_h2o_c+M_nadp_c Species: M_nh4_c
saturation_constant_array[106,91] = 1.0;	#	 Name: R_gdhA: M_akg_c+M_nadph_c+M_nh4_c+M_h_c = M_glu_L_c+M_h2o_c+M_nadp_c Species: M_h_c
saturation_constant_array[107,83] = 1.0;	#	 Name: R_glnA: M_glu_L_c+M_atp_c+M_nh4_c = M_gln_L_c+M_h_c+M_adp_c+M_pi_c Species: M_glu_L_c
saturation_constant_array[107,53] = 1.0;	#	 Name: R_glnA: M_glu_L_c+M_atp_c+M_nh4_c = M_gln_L_c+M_h_c+M_adp_c+M_pi_c Species: M_atp_c
saturation_constant_array[107,89] = 1.0;	#	 Name: R_glnA: M_glu_L_c+M_atp_c+M_nh4_c = M_gln_L_c+M_h_c+M_adp_c+M_pi_c Species: M_nh4_c
saturation_constant_array[108,76] = 1.0;	#	 Name: R_glyA: M_ser_L_c+M_thf_c = M_gly_L_c+M_h2o_c+M_mlthf_c Species: M_ser_L_c
saturation_constant_array[108,39] = 1.0;	#	 Name: R_glyA: M_ser_L_c+M_thf_c = M_gly_L_c+M_h2o_c+M_mlthf_c Species: M_thf_c
saturation_constant_array[109,84] = 1.0;	#	 Name: R_his: M_gln_L_c+M_r5p_c+3*M_atp_c+2*M_nad_c+3*M_h2o_c = M_his_L_c+M_akg_c+M_aicar_c+2*M_adp_c+2*M_nadh_c+M_pi_c+2*M_ppi_c+6*M_h_c Species: M_gln_L_c
saturation_constant_array[109,16] = 1.0;	#	 Name: R_his: M_gln_L_c+M_r5p_c+3*M_atp_c+2*M_nad_c+3*M_h2o_c = M_his_L_c+M_akg_c+M_aicar_c+2*M_adp_c+2*M_nadh_c+M_pi_c+2*M_ppi_c+6*M_h_c Species: M_r5p_c
saturation_constant_array[109,53] = 1.0;	#	 Name: R_his: M_gln_L_c+M_r5p_c+3*M_atp_c+2*M_nad_c+3*M_h2o_c = M_his_L_c+M_akg_c+M_aicar_c+2*M_adp_c+2*M_nadh_c+M_pi_c+2*M_ppi_c+6*M_h_c Species: M_atp_c
saturation_constant_array[109,93] = 1.0;	#	 Name: R_his: M_gln_L_c+M_r5p_c+3*M_atp_c+2*M_nad_c+3*M_h2o_c = M_his_L_c+M_akg_c+M_aicar_c+2*M_adp_c+2*M_nadh_c+M_pi_c+2*M_ppi_c+6*M_h_c Species: M_nad_c
saturation_constant_array[109,92] = 1.0;	#	 Name: R_his: M_gln_L_c+M_r5p_c+3*M_atp_c+2*M_nad_c+3*M_h2o_c = M_his_L_c+M_akg_c+M_aicar_c+2*M_adp_c+2*M_nadh_c+M_pi_c+2*M_ppi_c+6*M_h_c Species: M_h2o_c
saturation_constant_array[110,77] = 1.0;	#	 Name: R_ile: M_thr_L_c+2*M_h_c+M_pyr_c+M_nadph_c+M_glu_L_c = M_ile_L_c+M_h2o_c+M_nh4_c+M_co2_c+M_nadp_c+M_akg_c Species: M_thr_L_c
saturation_constant_array[110,91] = 1.0;	#	 Name: R_ile: M_thr_L_c+2*M_h_c+M_pyr_c+M_nadph_c+M_glu_L_c = M_ile_L_c+M_h2o_c+M_nh4_c+M_co2_c+M_nadp_c+M_akg_c Species: M_h_c
saturation_constant_array[110,49] = 1.0;	#	 Name: R_ile: M_thr_L_c+2*M_h_c+M_pyr_c+M_nadph_c+M_glu_L_c = M_ile_L_c+M_h2o_c+M_nh4_c+M_co2_c+M_nadp_c+M_akg_c Species: M_pyr_c
saturation_constant_array[110,96] = 1.0;	#	 Name: R_ile: M_thr_L_c+2*M_h_c+M_pyr_c+M_nadph_c+M_glu_L_c = M_ile_L_c+M_h2o_c+M_nh4_c+M_co2_c+M_nadp_c+M_akg_c Species: M_nadph_c
saturation_constant_array[110,83] = 1.0;	#	 Name: R_ile: M_thr_L_c+2*M_h_c+M_pyr_c+M_nadph_c+M_glu_L_c = M_ile_L_c+M_h2o_c+M_nh4_c+M_co2_c+M_nadp_c+M_akg_c Species: M_glu_L_c
saturation_constant_array[111,49] = 1.0;	#	 Name: R_leu: 2*M_pyr_c+M_glu_L_c+M_h_c+M_nad_c+M_nadph_c+M_accoa_c = M_leu_L_c+2*M_co2_c+M_nadp_c+M_coa_c+M_nadh_c+M_akg_c Species: M_pyr_c
saturation_constant_array[111,83] = 1.0;	#	 Name: R_leu: 2*M_pyr_c+M_glu_L_c+M_h_c+M_nad_c+M_nadph_c+M_accoa_c = M_leu_L_c+2*M_co2_c+M_nadp_c+M_coa_c+M_nadh_c+M_akg_c Species: M_glu_L_c
saturation_constant_array[111,91] = 1.0;	#	 Name: R_leu: 2*M_pyr_c+M_glu_L_c+M_h_c+M_nad_c+M_nadph_c+M_accoa_c = M_leu_L_c+2*M_co2_c+M_nadp_c+M_coa_c+M_nadh_c+M_akg_c Species: M_h_c
saturation_constant_array[111,93] = 1.0;	#	 Name: R_leu: 2*M_pyr_c+M_glu_L_c+M_h_c+M_nad_c+M_nadph_c+M_accoa_c = M_leu_L_c+2*M_co2_c+M_nadp_c+M_coa_c+M_nadh_c+M_akg_c Species: M_nad_c
saturation_constant_array[111,96] = 1.0;	#	 Name: R_leu: 2*M_pyr_c+M_glu_L_c+M_h_c+M_nad_c+M_nadph_c+M_accoa_c = M_leu_L_c+2*M_co2_c+M_nadp_c+M_coa_c+M_nadh_c+M_akg_c Species: M_nadph_c
saturation_constant_array[111,11] = 1.0;	#	 Name: R_leu: 2*M_pyr_c+M_glu_L_c+M_h_c+M_nad_c+M_nadph_c+M_accoa_c = M_leu_L_c+2*M_co2_c+M_nadp_c+M_coa_c+M_nadh_c+M_akg_c Species: M_accoa_c
saturation_constant_array[112,66] = 1.0;	#	 Name: R_lys: M_asp_L_c+M_atp_c+2*M_nadph_c+2*M_h_c+M_pyr_c+M_succoa_c+M_glu_L_c = M_lys_L_c+M_adp_c+M_pi_c+2*M_nadp_c+M_coa_c+M_akg_c+M_succ_c+M_co2_c Species: M_asp_L_c
saturation_constant_array[112,53] = 1.0;	#	 Name: R_lys: M_asp_L_c+M_atp_c+2*M_nadph_c+2*M_h_c+M_pyr_c+M_succoa_c+M_glu_L_c = M_lys_L_c+M_adp_c+M_pi_c+2*M_nadp_c+M_coa_c+M_akg_c+M_succ_c+M_co2_c Species: M_atp_c
saturation_constant_array[112,96] = 1.0;	#	 Name: R_lys: M_asp_L_c+M_atp_c+2*M_nadph_c+2*M_h_c+M_pyr_c+M_succoa_c+M_glu_L_c = M_lys_L_c+M_adp_c+M_pi_c+2*M_nadp_c+M_coa_c+M_akg_c+M_succ_c+M_co2_c Species: M_nadph_c
saturation_constant_array[112,91] = 1.0;	#	 Name: R_lys: M_asp_L_c+M_atp_c+2*M_nadph_c+2*M_h_c+M_pyr_c+M_succoa_c+M_glu_L_c = M_lys_L_c+M_adp_c+M_pi_c+2*M_nadp_c+M_coa_c+M_akg_c+M_succ_c+M_co2_c Species: M_h_c
saturation_constant_array[112,49] = 1.0;	#	 Name: R_lys: M_asp_L_c+M_atp_c+2*M_nadph_c+2*M_h_c+M_pyr_c+M_succoa_c+M_glu_L_c = M_lys_L_c+M_adp_c+M_pi_c+2*M_nadp_c+M_coa_c+M_akg_c+M_succ_c+M_co2_c Species: M_pyr_c
saturation_constant_array[112,23] = 1.0;	#	 Name: R_lys: M_asp_L_c+M_atp_c+2*M_nadph_c+2*M_h_c+M_pyr_c+M_succoa_c+M_glu_L_c = M_lys_L_c+M_adp_c+M_pi_c+2*M_nadp_c+M_coa_c+M_akg_c+M_succ_c+M_co2_c Species: M_succoa_c
saturation_constant_array[112,83] = 1.0;	#	 Name: R_lys: M_asp_L_c+M_atp_c+2*M_nadph_c+2*M_h_c+M_pyr_c+M_succoa_c+M_glu_L_c = M_lys_L_c+M_adp_c+M_pi_c+2*M_nadp_c+M_coa_c+M_akg_c+M_succ_c+M_co2_c Species: M_glu_L_c
saturation_constant_array[113,66] = 1.0;	#	 Name: R_met: M_asp_L_c+M_cys_L_c+M_succoa_c+M_atp_c+2*M_nadph_c+M_5mthf_c = M_met_L_c+M_coa_c+M_succ_c+M_adp_c+M_pi_c+2*M_nadp_c+M_thf_c+M_nh4_c+M_pyr_c Species: M_asp_L_c
saturation_constant_array[113,70] = 1.0;	#	 Name: R_met: M_asp_L_c+M_cys_L_c+M_succoa_c+M_atp_c+2*M_nadph_c+M_5mthf_c = M_met_L_c+M_coa_c+M_succ_c+M_adp_c+M_pi_c+2*M_nadp_c+M_thf_c+M_nh4_c+M_pyr_c Species: M_cys_L_c
saturation_constant_array[113,23] = 1.0;	#	 Name: R_met: M_asp_L_c+M_cys_L_c+M_succoa_c+M_atp_c+2*M_nadph_c+M_5mthf_c = M_met_L_c+M_coa_c+M_succ_c+M_adp_c+M_pi_c+2*M_nadp_c+M_thf_c+M_nh4_c+M_pyr_c Species: M_succoa_c
saturation_constant_array[113,53] = 1.0;	#	 Name: R_met: M_asp_L_c+M_cys_L_c+M_succoa_c+M_atp_c+2*M_nadph_c+M_5mthf_c = M_met_L_c+M_coa_c+M_succ_c+M_adp_c+M_pi_c+2*M_nadp_c+M_thf_c+M_nh4_c+M_pyr_c Species: M_atp_c
saturation_constant_array[113,96] = 1.0;	#	 Name: R_met: M_asp_L_c+M_cys_L_c+M_succoa_c+M_atp_c+2*M_nadph_c+M_5mthf_c = M_met_L_c+M_coa_c+M_succ_c+M_adp_c+M_pi_c+2*M_nadp_c+M_thf_c+M_nh4_c+M_pyr_c Species: M_nadph_c
saturation_constant_array[113,46] = 1.0;	#	 Name: R_met: M_asp_L_c+M_cys_L_c+M_succoa_c+M_atp_c+2*M_nadph_c+M_5mthf_c = M_met_L_c+M_coa_c+M_succ_c+M_adp_c+M_pi_c+2*M_nadp_c+M_thf_c+M_nh4_c+M_pyr_c Species: M_5mthf_c
saturation_constant_array[114,35] = 1.0;	#	 Name: R_phe: M_chor_c+M_h_c+M_glu_L_c = M_phe_L_c+M_co2_c+M_h2o_c+M_akg_c Species: M_chor_c
saturation_constant_array[114,91] = 1.0;	#	 Name: R_phe: M_chor_c+M_h_c+M_glu_L_c = M_phe_L_c+M_co2_c+M_h2o_c+M_akg_c Species: M_h_c
saturation_constant_array[114,83] = 1.0;	#	 Name: R_phe: M_chor_c+M_h_c+M_glu_L_c = M_phe_L_c+M_co2_c+M_h2o_c+M_akg_c Species: M_glu_L_c
saturation_constant_array[115,83] = 1.0;	#	 Name: R_pro: M_glu_L_c+M_atp_c+2*M_h_c+2*M_nadph_c = M_pro_L_c+M_adp_c+2*M_nadp_c+M_pi_c+M_h2o_c Species: M_glu_L_c
saturation_constant_array[115,53] = 1.0;	#	 Name: R_pro: M_glu_L_c+M_atp_c+2*M_h_c+2*M_nadph_c = M_pro_L_c+M_adp_c+2*M_nadp_c+M_pi_c+M_h2o_c Species: M_atp_c
saturation_constant_array[115,91] = 1.0;	#	 Name: R_pro: M_glu_L_c+M_atp_c+2*M_h_c+2*M_nadph_c = M_pro_L_c+M_adp_c+2*M_nadp_c+M_pi_c+M_h2o_c Species: M_h_c
saturation_constant_array[115,96] = 1.0;	#	 Name: R_pro: M_glu_L_c+M_atp_c+2*M_h_c+2*M_nadph_c = M_pro_L_c+M_adp_c+2*M_nadp_c+M_pi_c+M_h2o_c Species: M_nadph_c
saturation_constant_array[116,7] = 1.0;	#	 Name: R_serABC: M_3pg_c+M_nad_c+M_glu_L_c+M_h2o_c = M_ser_L_c+M_nadh_c+M_h_c+M_akg_c+M_pi_c Species: M_3pg_c
saturation_constant_array[116,93] = 1.0;	#	 Name: R_serABC: M_3pg_c+M_nad_c+M_glu_L_c+M_h2o_c = M_ser_L_c+M_nadh_c+M_h_c+M_akg_c+M_pi_c Species: M_nad_c
saturation_constant_array[116,83] = 1.0;	#	 Name: R_serABC: M_3pg_c+M_nad_c+M_glu_L_c+M_h2o_c = M_ser_L_c+M_nadh_c+M_h_c+M_akg_c+M_pi_c Species: M_glu_L_c
saturation_constant_array[116,92] = 1.0;	#	 Name: R_serABC: M_3pg_c+M_nad_c+M_glu_L_c+M_h2o_c = M_ser_L_c+M_nadh_c+M_h_c+M_akg_c+M_pi_c Species: M_h2o_c
saturation_constant_array[117,66] = 1.0;	#	 Name: R_thr: M_asp_L_c+2*M_atp_c+2*M_nadph_c+M_h_c+M_h2o_c = M_thr_L_c+2*M_adp_c+2*M_pi_c+2*M_nadp_c Species: M_asp_L_c
saturation_constant_array[117,53] = 1.0;	#	 Name: R_thr: M_asp_L_c+2*M_atp_c+2*M_nadph_c+M_h_c+M_h2o_c = M_thr_L_c+2*M_adp_c+2*M_pi_c+2*M_nadp_c Species: M_atp_c
saturation_constant_array[117,96] = 1.0;	#	 Name: R_thr: M_asp_L_c+2*M_atp_c+2*M_nadph_c+M_h_c+M_h2o_c = M_thr_L_c+2*M_adp_c+2*M_pi_c+2*M_nadp_c Species: M_nadph_c
saturation_constant_array[117,91] = 1.0;	#	 Name: R_thr: M_asp_L_c+2*M_atp_c+2*M_nadph_c+M_h_c+M_h2o_c = M_thr_L_c+2*M_adp_c+2*M_pi_c+2*M_nadp_c Species: M_h_c
saturation_constant_array[117,92] = 1.0;	#	 Name: R_thr: M_asp_L_c+2*M_atp_c+2*M_nadph_c+M_h_c+M_h2o_c = M_thr_L_c+2*M_adp_c+2*M_pi_c+2*M_nadp_c Species: M_h2o_c
saturation_constant_array[118,35] = 1.0;	#	 Name: R_trp: M_chor_c+M_gln_L_c+M_ser_L_c+M_r5p_c+2*M_atp_c = M_trp_L_c+M_glu_L_c+M_pyr_c+M_ppi_c+2*M_h2o_c+M_co2_c+M_g3p_c+2*M_adp_c+M_h_c Species: M_chor_c
saturation_constant_array[118,84] = 1.0;	#	 Name: R_trp: M_chor_c+M_gln_L_c+M_ser_L_c+M_r5p_c+2*M_atp_c = M_trp_L_c+M_glu_L_c+M_pyr_c+M_ppi_c+2*M_h2o_c+M_co2_c+M_g3p_c+2*M_adp_c+M_h_c Species: M_gln_L_c
saturation_constant_array[118,76] = 1.0;	#	 Name: R_trp: M_chor_c+M_gln_L_c+M_ser_L_c+M_r5p_c+2*M_atp_c = M_trp_L_c+M_glu_L_c+M_pyr_c+M_ppi_c+2*M_h2o_c+M_co2_c+M_g3p_c+2*M_adp_c+M_h_c Species: M_ser_L_c
saturation_constant_array[118,16] = 1.0;	#	 Name: R_trp: M_chor_c+M_gln_L_c+M_ser_L_c+M_r5p_c+2*M_atp_c = M_trp_L_c+M_glu_L_c+M_pyr_c+M_ppi_c+2*M_h2o_c+M_co2_c+M_g3p_c+2*M_adp_c+M_h_c Species: M_r5p_c
saturation_constant_array[118,53] = 1.0;	#	 Name: R_trp: M_chor_c+M_gln_L_c+M_ser_L_c+M_r5p_c+2*M_atp_c = M_trp_L_c+M_glu_L_c+M_pyr_c+M_ppi_c+2*M_h2o_c+M_co2_c+M_g3p_c+2*M_adp_c+M_h_c Species: M_atp_c
saturation_constant_array[119,35] = 1.0;	#	 Name: R_tyr: M_chor_c+M_glu_L_c+M_nad_c = M_tyr_L_c+M_akg_c+M_nadh_c+M_co2_c Species: M_chor_c
saturation_constant_array[119,83] = 1.0;	#	 Name: R_tyr: M_chor_c+M_glu_L_c+M_nad_c = M_tyr_L_c+M_akg_c+M_nadh_c+M_co2_c Species: M_glu_L_c
saturation_constant_array[119,93] = 1.0;	#	 Name: R_tyr: M_chor_c+M_glu_L_c+M_nad_c = M_tyr_L_c+M_akg_c+M_nadh_c+M_co2_c Species: M_nad_c
saturation_constant_array[120,49] = 1.0;	#	 Name: R_val: 2*M_pyr_c+2*M_h_c+M_nadph_c+M_glu_L_c = M_val_L_c+M_co2_c+M_nadp_c+M_h2o_c+M_akg_c Species: M_pyr_c
saturation_constant_array[120,91] = 1.0;	#	 Name: R_val: 2*M_pyr_c+2*M_h_c+M_nadph_c+M_glu_L_c = M_val_L_c+M_co2_c+M_nadp_c+M_h2o_c+M_akg_c Species: M_h_c
saturation_constant_array[120,96] = 1.0;	#	 Name: R_val: 2*M_pyr_c+2*M_h_c+M_nadph_c+M_glu_L_c = M_val_L_c+M_co2_c+M_nadp_c+M_h2o_c+M_akg_c Species: M_nadph_c
saturation_constant_array[120,83] = 1.0;	#	 Name: R_val: 2*M_pyr_c+2*M_h_c+M_nadph_c+M_glu_L_c = M_val_L_c+M_co2_c+M_nadp_c+M_h2o_c+M_akg_c Species: M_glu_L_c
saturation_constant_array[126,73] = 1.0;	#	 Name: R_CAT: 15*M_ala_L_c+10*M_asn_L_c+5*M_arg_L_c+12*M_asp_L_c+12*M_glu_L_c+13*M_gln_L_c+10*M_gly_L_c+12*M_his_L_c+9*M_ile_L_c+13*M_leu_L_c+12*M_lys_L_c+9*M_met_L_c+20*M_phe_L_c+7*M_pro_L_c+10*M_ser_L_c+13*M_thr_L_c+5*M_trp_L_c+11*M_tyr_L_c+16*M_val_L_c+219*M_atp_c+438*M_gtp_c = 219*M_amp_c+438*M_gdp_c+219*M_ppi_c+438*M_pi_c+CAT Species: M_ala_L_c
saturation_constant_array[126,69] = 1.0;	#	 Name: R_CAT: 15*M_ala_L_c+10*M_asn_L_c+5*M_arg_L_c+12*M_asp_L_c+12*M_glu_L_c+13*M_gln_L_c+10*M_gly_L_c+12*M_his_L_c+9*M_ile_L_c+13*M_leu_L_c+12*M_lys_L_c+9*M_met_L_c+20*M_phe_L_c+7*M_pro_L_c+10*M_ser_L_c+13*M_thr_L_c+5*M_trp_L_c+11*M_tyr_L_c+16*M_val_L_c+219*M_atp_c+438*M_gtp_c = 219*M_amp_c+438*M_gdp_c+219*M_ppi_c+438*M_pi_c+CAT Species: M_asn_L_c
saturation_constant_array[126,43] = 1.0;	#	 Name: R_CAT: 15*M_ala_L_c+10*M_asn_L_c+5*M_arg_L_c+12*M_asp_L_c+12*M_glu_L_c+13*M_gln_L_c+10*M_gly_L_c+12*M_his_L_c+9*M_ile_L_c+13*M_leu_L_c+12*M_lys_L_c+9*M_met_L_c+20*M_phe_L_c+7*M_pro_L_c+10*M_ser_L_c+13*M_thr_L_c+5*M_trp_L_c+11*M_tyr_L_c+16*M_val_L_c+219*M_atp_c+438*M_gtp_c = 219*M_amp_c+438*M_gdp_c+219*M_ppi_c+438*M_pi_c+CAT Species: M_arg_L_c
saturation_constant_array[126,66] = 1.0;	#	 Name: R_CAT: 15*M_ala_L_c+10*M_asn_L_c+5*M_arg_L_c+12*M_asp_L_c+12*M_glu_L_c+13*M_gln_L_c+10*M_gly_L_c+12*M_his_L_c+9*M_ile_L_c+13*M_leu_L_c+12*M_lys_L_c+9*M_met_L_c+20*M_phe_L_c+7*M_pro_L_c+10*M_ser_L_c+13*M_thr_L_c+5*M_trp_L_c+11*M_tyr_L_c+16*M_val_L_c+219*M_atp_c+438*M_gtp_c = 219*M_amp_c+438*M_gdp_c+219*M_ppi_c+438*M_pi_c+CAT Species: M_asp_L_c
saturation_constant_array[126,83] = 1.0;	#	 Name: R_CAT: 15*M_ala_L_c+10*M_asn_L_c+5*M_arg_L_c+12*M_asp_L_c+12*M_glu_L_c+13*M_gln_L_c+10*M_gly_L_c+12*M_his_L_c+9*M_ile_L_c+13*M_leu_L_c+12*M_lys_L_c+9*M_met_L_c+20*M_phe_L_c+7*M_pro_L_c+10*M_ser_L_c+13*M_thr_L_c+5*M_trp_L_c+11*M_tyr_L_c+16*M_val_L_c+219*M_atp_c+438*M_gtp_c = 219*M_amp_c+438*M_gdp_c+219*M_ppi_c+438*M_pi_c+CAT Species: M_glu_L_c
saturation_constant_array[126,84] = 1.0;	#	 Name: R_CAT: 15*M_ala_L_c+10*M_asn_L_c+5*M_arg_L_c+12*M_asp_L_c+12*M_glu_L_c+13*M_gln_L_c+10*M_gly_L_c+12*M_his_L_c+9*M_ile_L_c+13*M_leu_L_c+12*M_lys_L_c+9*M_met_L_c+20*M_phe_L_c+7*M_pro_L_c+10*M_ser_L_c+13*M_thr_L_c+5*M_trp_L_c+11*M_tyr_L_c+16*M_val_L_c+219*M_atp_c+438*M_gtp_c = 219*M_amp_c+438*M_gdp_c+219*M_ppi_c+438*M_pi_c+CAT Species: M_gln_L_c
saturation_constant_array[126,67] = 1.0;	#	 Name: R_CAT: 15*M_ala_L_c+10*M_asn_L_c+5*M_arg_L_c+12*M_asp_L_c+12*M_glu_L_c+13*M_gln_L_c+10*M_gly_L_c+12*M_his_L_c+9*M_ile_L_c+13*M_leu_L_c+12*M_lys_L_c+9*M_met_L_c+20*M_phe_L_c+7*M_pro_L_c+10*M_ser_L_c+13*M_thr_L_c+5*M_trp_L_c+11*M_tyr_L_c+16*M_val_L_c+219*M_atp_c+438*M_gtp_c = 219*M_amp_c+438*M_gdp_c+219*M_ppi_c+438*M_pi_c+CAT Species: M_gly_L_c
saturation_constant_array[126,72] = 1.0;	#	 Name: R_CAT: 15*M_ala_L_c+10*M_asn_L_c+5*M_arg_L_c+12*M_asp_L_c+12*M_glu_L_c+13*M_gln_L_c+10*M_gly_L_c+12*M_his_L_c+9*M_ile_L_c+13*M_leu_L_c+12*M_lys_L_c+9*M_met_L_c+20*M_phe_L_c+7*M_pro_L_c+10*M_ser_L_c+13*M_thr_L_c+5*M_trp_L_c+11*M_tyr_L_c+16*M_val_L_c+219*M_atp_c+438*M_gtp_c = 219*M_amp_c+438*M_gdp_c+219*M_ppi_c+438*M_pi_c+CAT Species: M_his_L_c
saturation_constant_array[126,68] = 1.0;	#	 Name: R_CAT: 15*M_ala_L_c+10*M_asn_L_c+5*M_arg_L_c+12*M_asp_L_c+12*M_glu_L_c+13*M_gln_L_c+10*M_gly_L_c+12*M_his_L_c+9*M_ile_L_c+13*M_leu_L_c+12*M_lys_L_c+9*M_met_L_c+20*M_phe_L_c+7*M_pro_L_c+10*M_ser_L_c+13*M_thr_L_c+5*M_trp_L_c+11*M_tyr_L_c+16*M_val_L_c+219*M_atp_c+438*M_gtp_c = 219*M_amp_c+438*M_gdp_c+219*M_ppi_c+438*M_pi_c+CAT Species: M_ile_L_c
saturation_constant_array[126,82] = 1.0;	#	 Name: R_CAT: 15*M_ala_L_c+10*M_asn_L_c+5*M_arg_L_c+12*M_asp_L_c+12*M_glu_L_c+13*M_gln_L_c+10*M_gly_L_c+12*M_his_L_c+9*M_ile_L_c+13*M_leu_L_c+12*M_lys_L_c+9*M_met_L_c+20*M_phe_L_c+7*M_pro_L_c+10*M_ser_L_c+13*M_thr_L_c+5*M_trp_L_c+11*M_tyr_L_c+16*M_val_L_c+219*M_atp_c+438*M_gtp_c = 219*M_amp_c+438*M_gdp_c+219*M_ppi_c+438*M_pi_c+CAT Species: M_leu_L_c
saturation_constant_array[126,71] = 1.0;	#	 Name: R_CAT: 15*M_ala_L_c+10*M_asn_L_c+5*M_arg_L_c+12*M_asp_L_c+12*M_glu_L_c+13*M_gln_L_c+10*M_gly_L_c+12*M_his_L_c+9*M_ile_L_c+13*M_leu_L_c+12*M_lys_L_c+9*M_met_L_c+20*M_phe_L_c+7*M_pro_L_c+10*M_ser_L_c+13*M_thr_L_c+5*M_trp_L_c+11*M_tyr_L_c+16*M_val_L_c+219*M_atp_c+438*M_gtp_c = 219*M_amp_c+438*M_gdp_c+219*M_ppi_c+438*M_pi_c+CAT Species: M_lys_L_c
saturation_constant_array[126,81] = 1.0;	#	 Name: R_CAT: 15*M_ala_L_c+10*M_asn_L_c+5*M_arg_L_c+12*M_asp_L_c+12*M_glu_L_c+13*M_gln_L_c+10*M_gly_L_c+12*M_his_L_c+9*M_ile_L_c+13*M_leu_L_c+12*M_lys_L_c+9*M_met_L_c+20*M_phe_L_c+7*M_pro_L_c+10*M_ser_L_c+13*M_thr_L_c+5*M_trp_L_c+11*M_tyr_L_c+16*M_val_L_c+219*M_atp_c+438*M_gtp_c = 219*M_amp_c+438*M_gdp_c+219*M_ppi_c+438*M_pi_c+CAT Species: M_met_L_c
saturation_constant_array[126,74] = 1.0;	#	 Name: R_CAT: 15*M_ala_L_c+10*M_asn_L_c+5*M_arg_L_c+12*M_asp_L_c+12*M_glu_L_c+13*M_gln_L_c+10*M_gly_L_c+12*M_his_L_c+9*M_ile_L_c+13*M_leu_L_c+12*M_lys_L_c+9*M_met_L_c+20*M_phe_L_c+7*M_pro_L_c+10*M_ser_L_c+13*M_thr_L_c+5*M_trp_L_c+11*M_tyr_L_c+16*M_val_L_c+219*M_atp_c+438*M_gtp_c = 219*M_amp_c+438*M_gdp_c+219*M_ppi_c+438*M_pi_c+CAT Species: M_phe_L_c
saturation_constant_array[126,75] = 1.0;	#	 Name: R_CAT: 15*M_ala_L_c+10*M_asn_L_c+5*M_arg_L_c+12*M_asp_L_c+12*M_glu_L_c+13*M_gln_L_c+10*M_gly_L_c+12*M_his_L_c+9*M_ile_L_c+13*M_leu_L_c+12*M_lys_L_c+9*M_met_L_c+20*M_phe_L_c+7*M_pro_L_c+10*M_ser_L_c+13*M_thr_L_c+5*M_trp_L_c+11*M_tyr_L_c+16*M_val_L_c+219*M_atp_c+438*M_gtp_c = 219*M_amp_c+438*M_gdp_c+219*M_ppi_c+438*M_pi_c+CAT Species: M_pro_L_c
saturation_constant_array[126,76] = 1.0;	#	 Name: R_CAT: 15*M_ala_L_c+10*M_asn_L_c+5*M_arg_L_c+12*M_asp_L_c+12*M_glu_L_c+13*M_gln_L_c+10*M_gly_L_c+12*M_his_L_c+9*M_ile_L_c+13*M_leu_L_c+12*M_lys_L_c+9*M_met_L_c+20*M_phe_L_c+7*M_pro_L_c+10*M_ser_L_c+13*M_thr_L_c+5*M_trp_L_c+11*M_tyr_L_c+16*M_val_L_c+219*M_atp_c+438*M_gtp_c = 219*M_amp_c+438*M_gdp_c+219*M_ppi_c+438*M_pi_c+CAT Species: M_ser_L_c
saturation_constant_array[126,77] = 1.0;	#	 Name: R_CAT: 15*M_ala_L_c+10*M_asn_L_c+5*M_arg_L_c+12*M_asp_L_c+12*M_glu_L_c+13*M_gln_L_c+10*M_gly_L_c+12*M_his_L_c+9*M_ile_L_c+13*M_leu_L_c+12*M_lys_L_c+9*M_met_L_c+20*M_phe_L_c+7*M_pro_L_c+10*M_ser_L_c+13*M_thr_L_c+5*M_trp_L_c+11*M_tyr_L_c+16*M_val_L_c+219*M_atp_c+438*M_gtp_c = 219*M_amp_c+438*M_gdp_c+219*M_ppi_c+438*M_pi_c+CAT Species: M_thr_L_c
saturation_constant_array[126,78] = 1.0;	#	 Name: R_CAT: 15*M_ala_L_c+10*M_asn_L_c+5*M_arg_L_c+12*M_asp_L_c+12*M_glu_L_c+13*M_gln_L_c+10*M_gly_L_c+12*M_his_L_c+9*M_ile_L_c+13*M_leu_L_c+12*M_lys_L_c+9*M_met_L_c+20*M_phe_L_c+7*M_pro_L_c+10*M_ser_L_c+13*M_thr_L_c+5*M_trp_L_c+11*M_tyr_L_c+16*M_val_L_c+219*M_atp_c+438*M_gtp_c = 219*M_amp_c+438*M_gdp_c+219*M_ppi_c+438*M_pi_c+CAT Species: M_trp_L_c
saturation_constant_array[126,79] = 1.0;	#	 Name: R_CAT: 15*M_ala_L_c+10*M_asn_L_c+5*M_arg_L_c+12*M_asp_L_c+12*M_glu_L_c+13*M_gln_L_c+10*M_gly_L_c+12*M_his_L_c+9*M_ile_L_c+13*M_leu_L_c+12*M_lys_L_c+9*M_met_L_c+20*M_phe_L_c+7*M_pro_L_c+10*M_ser_L_c+13*M_thr_L_c+5*M_trp_L_c+11*M_tyr_L_c+16*M_val_L_c+219*M_atp_c+438*M_gtp_c = 219*M_amp_c+438*M_gdp_c+219*M_ppi_c+438*M_pi_c+CAT Species: M_tyr_L_c
saturation_constant_array[126,80] = 1.0;	#	 Name: R_CAT: 15*M_ala_L_c+10*M_asn_L_c+5*M_arg_L_c+12*M_asp_L_c+12*M_glu_L_c+13*M_gln_L_c+10*M_gly_L_c+12*M_his_L_c+9*M_ile_L_c+13*M_leu_L_c+12*M_lys_L_c+9*M_met_L_c+20*M_phe_L_c+7*M_pro_L_c+10*M_ser_L_c+13*M_thr_L_c+5*M_trp_L_c+11*M_tyr_L_c+16*M_val_L_c+219*M_atp_c+438*M_gtp_c = 219*M_amp_c+438*M_gdp_c+219*M_ppi_c+438*M_pi_c+CAT Species: M_val_L_c
saturation_constant_array[126,53] = 1.0;	#	 Name: R_CAT: 15*M_ala_L_c+10*M_asn_L_c+5*M_arg_L_c+12*M_asp_L_c+12*M_glu_L_c+13*M_gln_L_c+10*M_gly_L_c+12*M_his_L_c+9*M_ile_L_c+13*M_leu_L_c+12*M_lys_L_c+9*M_met_L_c+20*M_phe_L_c+7*M_pro_L_c+10*M_ser_L_c+13*M_thr_L_c+5*M_trp_L_c+11*M_tyr_L_c+16*M_val_L_c+219*M_atp_c+438*M_gtp_c = 219*M_amp_c+438*M_gdp_c+219*M_ppi_c+438*M_pi_c+CAT Species: M_atp_c
saturation_constant_array[126,56] = 1.0;	#	 Name: R_CAT: 15*M_ala_L_c+10*M_asn_L_c+5*M_arg_L_c+12*M_asp_L_c+12*M_glu_L_c+13*M_gln_L_c+10*M_gly_L_c+12*M_his_L_c+9*M_ile_L_c+13*M_leu_L_c+12*M_lys_L_c+9*M_met_L_c+20*M_phe_L_c+7*M_pro_L_c+10*M_ser_L_c+13*M_thr_L_c+5*M_trp_L_c+11*M_tyr_L_c+16*M_val_L_c+219*M_atp_c+438*M_gtp_c = 219*M_amp_c+438*M_gdp_c+219*M_ppi_c+438*M_pi_c+CAT Species: M_gtp_c
saturation_constant_array[127,55] = 1.0;	#	 Name: R_amp_ppi: M_amp_c+M_ppi_c+4*M_h_c = M_atp_c+M_h2o_c Species: M_amp_c
saturation_constant_array[127,31] = 1.0;	#	 Name: R_amp_ppi: M_amp_c+M_ppi_c+4*M_h_c = M_atp_c+M_h2o_c Species: M_ppi_c
saturation_constant_array[127,91] = 1.0;	#	 Name: R_amp_ppi: M_amp_c+M_ppi_c+4*M_h_c = M_atp_c+M_h2o_c Species: M_h_c
saturation_constant_array[128,55] = 1.0;	#	 Name: R_amp_pi: M_amp_c+2*M_pi_c+6*M_h_c = M_atp_c+2*M_h2o_c Species: M_amp_c
saturation_constant_array[128,88] = 1.0;	#	 Name: R_amp_pi: M_amp_c+2*M_pi_c+6*M_h_c = M_atp_c+2*M_h2o_c Species: M_pi_c
saturation_constant_array[128,91] = 1.0;	#	 Name: R_amp_pi: M_amp_c+2*M_pi_c+6*M_h_c = M_atp_c+2*M_h2o_c Species: M_h_c
saturation_constant_array[129,58] = 1.0;	#	 Name: R_gmp_ppi: M_gmp_c+M_ppi_c+4*M_h_c = M_gtp_c+M_h2o_c Species: M_gmp_c
saturation_constant_array[129,31] = 1.0;	#	 Name: R_gmp_ppi: M_gmp_c+M_ppi_c+4*M_h_c = M_gtp_c+M_h2o_c Species: M_ppi_c
saturation_constant_array[129,91] = 1.0;	#	 Name: R_gmp_ppi: M_gmp_c+M_ppi_c+4*M_h_c = M_gtp_c+M_h2o_c Species: M_h_c
saturation_constant_array[130,58] = 1.0;	#	 Name: R_gmp_pi: M_gmp_c+2*M_pi_c+6*M_h_c = M_gtp_c+2*M_h2o_c Species: M_gmp_c
saturation_constant_array[130,88] = 1.0;	#	 Name: R_gmp_pi: M_gmp_c+2*M_pi_c+6*M_h_c = M_gtp_c+2*M_h2o_c Species: M_pi_c
saturation_constant_array[130,91] = 1.0;	#	 Name: R_gmp_pi: M_gmp_c+2*M_pi_c+6*M_h_c = M_gtp_c+2*M_h2o_c Species: M_h_c
saturation_constant_array[131,64] = 1.0;	#	 Name: R_cmp_ppi: M_cmp_c+M_ppi_c+4*M_h_c = M_ctp_c+M_h2o_c Species: M_cmp_c
saturation_constant_array[131,31] = 1.0;	#	 Name: R_cmp_ppi: M_cmp_c+M_ppi_c+4*M_h_c = M_ctp_c+M_h2o_c Species: M_ppi_c
saturation_constant_array[131,91] = 1.0;	#	 Name: R_cmp_ppi: M_cmp_c+M_ppi_c+4*M_h_c = M_ctp_c+M_h2o_c Species: M_h_c
saturation_constant_array[132,64] = 1.0;	#	 Name: R_cmp_pi: M_cmp_c+2*M_pi_c+6*M_h_c = M_ctp_c+2*M_h2o_c Species: M_cmp_c
saturation_constant_array[132,88] = 1.0;	#	 Name: R_cmp_pi: M_cmp_c+2*M_pi_c+6*M_h_c = M_ctp_c+2*M_h2o_c Species: M_pi_c
saturation_constant_array[132,91] = 1.0;	#	 Name: R_cmp_pi: M_cmp_c+2*M_pi_c+6*M_h_c = M_ctp_c+2*M_h2o_c Species: M_h_c
saturation_constant_array[133,61] = 1.0;	#	 Name: R_ump_ppi: M_ump_c+M_ppi_c+4*M_h_c = M_utp_c+M_h2o_c Species: M_ump_c
saturation_constant_array[133,31] = 1.0;	#	 Name: R_ump_ppi: M_ump_c+M_ppi_c+4*M_h_c = M_utp_c+M_h2o_c Species: M_ppi_c
saturation_constant_array[133,91] = 1.0;	#	 Name: R_ump_ppi: M_ump_c+M_ppi_c+4*M_h_c = M_utp_c+M_h2o_c Species: M_h_c
saturation_constant_array[134,61] = 1.0;	#	 Name: R_ump_pi: M_ump_c+2*M_pi_c+6*M_h_c = M_utp_c+2*M_h2o_c Species: M_ump_c
saturation_constant_array[134,88] = 1.0;	#	 Name: R_ump_pi: M_ump_c+2*M_pi_c+6*M_h_c = M_utp_c+2*M_h2o_c Species: M_pi_c
saturation_constant_array[134,91] = 1.0;	#	 Name: R_ump_pi: M_ump_c+2*M_pi_c+6*M_h_c = M_utp_c+2*M_h2o_c Species: M_h_c

# Formulate control parameter array - 
control_parameter_array = zeros(17,2);
control_parameter_array[1,1] = 0.1;	 # gain => type: inhibition actor: M_pep_c target: R_pfk
control_parameter_array[1,2] = 1.0;	 # order => type: inhibition actor: M_pep_c target: R_pfk
control_parameter_array[2,1] = 0.1;	 # gain => type: activation actor: M_pep_c target: R_fdp
control_parameter_array[2,2] = 1.0;	 # order => type: activation actor: M_pep_c target: R_fdp
control_parameter_array[3,1] = 0.1;	 # gain => type: activation actor: M_fdp_c target: R_pyk
control_parameter_array[3,2] = 1.0;	 # order => type: activation actor: M_fdp_c target: R_pyk
control_parameter_array[4,1] = 0.1;	 # gain => type: inhibition actor: M_pep_c target: R_pck
control_parameter_array[4,2] = 1.0;	 # order => type: inhibition actor: M_pep_c target: R_pck
control_parameter_array[5,1] = 0.1;	 # gain => type: activation actor: M_fdp_c target: R_ppc
control_parameter_array[5,2] = 1.0;	 # order => type: activation actor: M_fdp_c target: R_ppc
control_parameter_array[6,1] = 0.1;	 # gain => type: inhibition actor: M_pyr_c target: R_pdh
control_parameter_array[6,2] = 1.0;	 # order => type: inhibition actor: M_pyr_c target: R_pdh
control_parameter_array[7,1] = 0.1;	 # gain => type: inhibition actor: M_pep_c target: R_pps
control_parameter_array[7,2] = 1.0;	 # order => type: inhibition actor: M_pep_c target: R_pps
control_parameter_array[8,1] = 0.1;	 # gain => type: inhibition actor: M_akg_c target: R_gltA
control_parameter_array[8,2] = 1.0;	 # order => type: inhibition actor: M_akg_c target: R_gltA
control_parameter_array[9,1] = 0.1;	 # gain => type: inhibition actor: M_pep_c target: R_icd
control_parameter_array[9,2] = 1.0;	 # order => type: inhibition actor: M_pep_c target: R_icd
control_parameter_array[10,1] = 0.1;	 # gain => type: inhibition actor: M_akg_c target: R_aceA
control_parameter_array[10,2] = 1.0;	 # order => type: inhibition actor: M_akg_c target: R_aceA
control_parameter_array[11,1] = 0.1;	 # gain => type: inhibition actor: M_pep_c target: R_aceA
control_parameter_array[11,2] = 1.0;	 # order => type: inhibition actor: M_pep_c target: R_aceA
control_parameter_array[12,1] = 0.1;	 # gain => type: inhibition actor: M_3pg_c target: R_aceA
control_parameter_array[12,2] = 1.0;	 # order => type: inhibition actor: M_3pg_c target: R_aceA
control_parameter_array[13,1] = 0.1;	 # gain => type: inhibition actor: M_akg_c target: R_aceB
control_parameter_array[13,2] = 1.0;	 # order => type: inhibition actor: M_akg_c target: R_aceB
control_parameter_array[14,1] = 0.1;	 # gain => type: inhibition actor: M_pep_c target: R_aceB
control_parameter_array[14,2] = 1.0;	 # order => type: inhibition actor: M_pep_c target: R_aceB
control_parameter_array[15,1] = 0.1;	 # gain => type: inhibition actor: M_3pg_c target: R_aceB
control_parameter_array[15,2] = 1.0;	 # order => type: inhibition actor: M_3pg_c target: R_aceB
control_parameter_array[16,1] = 0.1;	 # gain => type: inhibition actor: M_accoa_c target: R_maeB
control_parameter_array[16,2] = 1.0;	 # order => type: inhibition actor: M_accoa_c target: R_maeB
control_parameter_array[17,1] = 0.1;	 # gain => type: activation actor: M_pyr_c target: R_ldh_r
control_parameter_array[17,2] = 1.0;	 # order => type: activation actor: M_pyr_c target: R_ldh_r

# ---------------------------- DO NOT EDIT BELOW THIS LINE -------------------------- #
data_dictionary = Dict();
data_dictionary["STOICHIOMETRIC_MATRIX"] = S;
data_dictionary["RATE_CONSTANT_ARRAY"] = rate_constant_array;
data_dictionary["SATURATION_CONSTANT_ARRAY"] = saturation_constant_array;
data_dictionary["INITIAL_CONDITION_ARRAY"] = initial_condition_array;
data_dictionary["CONTROL_PARAMETER_ARRAY"] = control_parameter_array;
data_dictionary["EXPERIMENT_DATA_DICTIONARY"] = experimental_data_dictionary;
# ----------------------------------------------------------------------------------- #
return data_dictionary;
end
