[joint_AI_knee,instant_weight_knee,instant_probability_knee,joint_AI_instant_knee] = joint_AI_sample(sample_knee,kneeSagittal_normal_mean,p_value_knee,angle_values,distribution_CP_knee,distribution_normal_knee,plots);
[joint_AI_hipS,instant_weight_hipS,instant_probability_hipS,joint_AI_instant_hipS] = joint_AI_sample(sample_hipS,hipSagittal_normal_mean,p_value_hipS,angle_values,distribution_CP_hipS,distribution_normal_hipS,plots);
[joint_AI_hipC,instant_weight_hipC,instant_probability_hipC,joint_AI_instant_hipC] = joint_AI_sample(sample_hipC,hipCoronal_normal_mean,p_value_hipC,angle_values,distribution_CP_hipC,distribution_normal_hipC,plots);
[joint_AI_hipT,instant_weight_hipT,instant_probability_hipT,joint_AI_instant_hipT] = joint_AI_sample(sample_hipT,hipTransverse_normal_mean,p_value_hipT,angle_values,distribution_CP_hipT,distribution_normal_hipT,plots);
[joint_AI_ankle,instant_weight_ankle,instant_probability_ankle,joint_AI_instant_ankle] = joint_AI_sample(sample_ankle,ankleSagittal_normal_mean,p_value_ankle,angle_values,distribution_CP_ankle,distribution_normal_ankle,plots);
[joint_AI_pelvicS,instant_weight_pelvicS,instant_probability_pelvicS,joint_AI_instant_pelvicS] = joint_AI_sample(sample_pelvicS,pelvicSagittal_normal_mean,p_value_pelvicS,angle_values,distribution_CP_pelvicS,distribution_normal_pelvicS,plots);
[joint_AI_pelvicC,instant_weight_pelvicC,instant_probability_pelvicC,joint_AI_instant_pelvicC] = joint_AI_sample(sample_pelvicC,pelvicCoronal_normal_mean,p_value_pelvicC,angle_values,distribution_CP_pelvicC,distribution_normal_pelvicC,plots);
[joint_AI_pelvicT,instant_weight_pelvicT,instant_probability_pelvicT,joint_AI_instant_pelvicT] = joint_AI_sample(sample_hipT,pelvicTransverse_normal_mean,p_value_pelvicT,angle_values,distribution_CP_pelvicT,distribution_normal_pelvicT,plots);
[joint_AI_footT,instant_weight_footT,instant_probability_footT,joint_AI_instant_footT] = joint_AI_sample(sample_footT,footTransverse_normal_mean,p_value_footT,angle_values,distribution_CP_footT,distribution_normal_footT,plots);
