

log using piaac.log
tabulate iscoskil4, generate(skill)
encode isic1c, gen(indu)
reg b_q12d h_q05g gender_r yrsqual_t j_q03a skill1 skill2 skill3 earnmthppp c_q09_c i.d_q06a i.cntryid i.indu if iscoskil4 != "A" & iscoskil4 != "N" & iscoskil4 != "U" 

reg b_q12a h_q05g gender_r yrsqual_t j_q03a skill1 skill2 skill3 i.cntryid i.indu if iscoskil4 != "A" & iscoskil4 != "N" & iscoskil4 != "U" 
reg b_q12e h_q05g gender_r yrsqual_t j_q03a skill1 skill2 skill3 i.cntryid i.indu if iscoskil4 != "A" & iscoskil4 != "N" & iscoskil4 != "U" 

log close
