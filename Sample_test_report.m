joint_AI_knee_rater=0; joint_AI_hipS_rater=0; joint_AI_hipC_rater=0; joint_AI_hipT_rater=0; joint_AI_ankle_rater=0;
joint_AI_footT_rater=0; joint_AI_pelvicS_rater=0;joint_AI_pelvicC_rater=0;joint_AI_pelvicT_rater=0;
if (meta_data_CP(sample_index,3)+meta_data_CP(sample_index,4))>0
    joint_AI_knee_rater=1;
end    
if (meta_data_CP(sample_index,2))>0
    joint_AI_hipS_rater=1;
end
if (meta_data_CP(sample_index,8))>0
    joint_AI_hipC_rater=1;
end
if (meta_data_CP(sample_index,10))>0
    joint_AI_hipT_rater=1;
end
if (meta_data_CP(sample_index,5)+meta_data_CP(sample_index,6))>0
    joint_AI_ankle_rater=1;
end
   
if (meta_data_CP(sample_index,1))>0
    joint_AI_pelvicS_rater=1;
end
if (meta_data_CP(sample_index,2))>0
    joint_AI_pelvicC_rater=1;
end
if (meta_data_CP(sample_index,9))>0
    joint_AI_pelvicT_rater=1;
end

if (meta_data_CP(sample_index,11))>0
    joint_AI_footT_rater=1;
end