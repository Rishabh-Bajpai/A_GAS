function [sample_knee,sample_hipS,sample_hipC,sample_hipT,sample_ankle,sample_pelvicS,sample_pelvicC,sample_pelvicT, sample_footT] = Create_sample(sample_class,sample_index,kneeSagittal_CP,hipSagittal_CP,hipCoronal_CP,hipTransverse_CP,ankleSagittal_CP,pelvicSagittal_CP,pelvicCoronal_CP,pelvicTransverse_CP,footTransverse_CP,kneeSagittal_normal_mean_sd1,hipSagittal_normal_mean_sd1,hipCoronal_normal_mean_sd1,hipTransverse_normal_mean_sd1,ankleSagittal_normal_mean_sd1,pelvicSagittal_normal_mean_sd1,pelvicCoronal_normal_mean_sd1,pelvicTransverse_normal_mean_sd1,footTransverse_normal_mean_sd1)

    if sample_class == 1
        sample_knee=kneeSagittal_CP(sample_index,:);
        sample_hipS=hipSagittal_CP(sample_index,:);
        sample_hipC=hipCoronal_CP(sample_index,:);
        sample_hipT=hipTransverse_CP(sample_index,:);
        sample_ankle=ankleSagittal_CP(sample_index,:);
        sample_pelvicS=pelvicSagittal_CP(sample_index,:);
        sample_pelvicC=pelvicCoronal_CP(sample_index,:);
        sample_pelvicT=pelvicTransverse_CP(sample_index,:);
        sample_footT=footTransverse_CP(sample_index,:);
    else
        sample_knee=kneeSagittal_normal_mean_sd1;
        sample_hipS=hipSagittal_normal_mean_sd1;
        sample_hipC=hipCoronal_normal_mean_sd1;
        sample_hipT=hipTransverse_normal_mean_sd1;
        sample_ankle=ankleSagittal_normal_mean_sd1;        
        sample_pelvicS=pelvicSagittal_normal_mean_sd1;
        sample_pelvicC=pelvicCoronal_normal_mean_sd1;
        sample_pelvicT=pelvicTransverse_normal_mean_sd1;
        sample_footT=footTransverse_normal_mean_sd1;
    end
end

