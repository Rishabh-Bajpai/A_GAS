value=100.-[23.04,55.3,62.9,75.4,39.3,16.0,48.6,44.4,66.6]; % please refer to A-GAS original paper for selection of the weights values 
joint_weight=  (value-min(value))./(max(value)-min(value))*(0.5)+0.5;%range 1 to 0.5
clear value;
[sample_knee,sample_hipS,sample_hipC,sample_hipT,sample_ankle,sample_pelvicS,sample_pelvicC,sample_pelvicT, sample_footT] = Create_sample(sample_class,sample_index,kneeSagittal_CP,hipSagittal_CP,hipCoronal_CP,hipTransverse_CP,ankleSagittal_CP,pelvicSagittal_CP,pelvicCoronal_CP,pelvicTransverse_CP,footTransverse_CP,kneeSagittal_normal_mean_sd1,hipSagittal_normal_mean_sd1,hipCoronal_normal_mean_sd1,hipTransverse_normal_mean_sd1,ankleSagittal_normal_mean_sd1,pelvicSagittal_normal_mean_sd1,pelvicCoronal_normal_mean_sd1,pelvicTransverse_normal_mean_sd1,footTransverse_normal_mean_sd1);
%For normal
%[sample_knee,sample_hipS,sample_hipC,sample_hipT,sample_ankle,sample_pelvicS,sample_pelvicC,sample_pelvicT, sample_footT] = deal(mean_normal_knee - sd_normal_knee,mean_normal_hipS - sd_normal_hipS,mean_normal_hipC - sd_normal_hipC,mean_normal_hipT - sd_normal_hipT,mean_normal_ankle - sd_normal_ankle,mean_normal_pelvicS - sd_normal_pelvicS,mean_normal_pelvicC - sd_normal_pelvicC,mean_normal_pelvicT - sd_normal_pelvicT, mean_normal_footT - sd_normal_footT);
Calculate_joint_AI;
Sample_plot; 
sample_AI=sum((joint_weight.*[joint_AI_knee,joint_AI_hipS,joint_AI_hipC,joint_AI_hipT,joint_AI_ankle,joint_AI_pelvicS,joint_AI_pelvicC,joint_AI_pelvicT,joint_AI_footT]))./3.7053; %3.7053 is sum(joint_weight)
sample_AI