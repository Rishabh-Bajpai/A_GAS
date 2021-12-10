angle_values=-50:100; %create a vector for storing angle values (-50 to 100 is the range of angle values)
distribution_CP_knee=[]; %create a matrix for storing the PDF values of CP knee angle profiles
distribution_normal_knee=[]; %create a matrix for storing the PDF values of TD knee angle profiles
mean_CP_knee=[];sd_CP_knee=[];mean_normal_knee=[];sd_normal_knee=[]; %strore mean and sd of CP/TD knee angle profile

% f1=figure;

for gait_event = 1:51
    %Generate distributions for each gait cycle instance
    distribution_CP_knee = [distribution_CP_knee; normpdf(angle_values,mean(kneeSagittal_CP(:,gait_event)),std(kneeSagittal_CP(:,gait_event)))];
    distribution_normal_knee = [distribution_normal_knee; normpdf(angle_values,kneeSagittal_normal_mean(gait_event),kneeSagittal_normal_mean(gait_event)-kneeSagittal_normal_mean_sd1(gait_event))];
    mean_CP_knee = [mean_CP_knee; mean(kneeSagittal_CP(:,gait_event))]; sd_CP_knee = [sd_CP_knee; std(kneeSagittal_CP(:,gait_event))];
    mean_normal_knee = [mean_normal_knee ; kneeSagittal_normal_mean(gait_event)]; sd_normal_knee = [sd_normal_knee; kneeSagittal_normal_mean(gait_event)-kneeSagittal_normal_mean_sd1(gait_event)];

%     pause(0.1);
%     clf(f1,'reset');
%     %figure;
%     plot(angle_values,distribution_CP_knee(gait_event,:));
%     hold on;
%     plot(angle_values,distribution_normal_knee(gait_event,:));
%     title("Gait cycle instant "+(num2str(gait_event))+"/51");
   
end

distribution_CP_hipS=[];
distribution_normal_hipS=[];
mean_CP_hipS=[]; mean_normal_hipS=[]; sd_CP_hipS=[]; sd_normal_hipS=[];
for gait_event = 1:51
    distribution_CP_hipS = [distribution_CP_hipS; normpdf(angle_values,mean(hipSagittal_CP(:,gait_event)),std(hipSagittal_CP(:,gait_event)))];
    distribution_normal_hipS = [distribution_normal_hipS; normpdf(angle_values,hipSagittal_normal_mean(gait_event),hipSagittal_normal_mean(gait_event)-hipSagittal_normal_mean_sd1(gait_event))];
    mean_CP_hipS = [mean_CP_hipS; mean(hipSagittal_CP(:,gait_event))]; sd_CP_hipS = [sd_CP_hipS; std(hipSagittal_CP(:,gait_event))];
    mean_normal_hipS = [mean_normal_hipS ; hipSagittal_normal_mean(gait_event)]; sd_normal_hipS = [sd_normal_hipS; hipSagittal_normal_mean(gait_event)-hipSagittal_normal_mean_sd1(gait_event)];
%     pause(0.1);
%     clf(f1,'reset');
%     figure;
%     plot(angle_values,distribution_CP_hipS(gait_event,:));
%     hold on;
%     plot(angle_values,distribution_normal_hipS(gait_event,:));
   
end


distribution_CP_hipC=[];
distribution_normal_hipC=[];
mean_CP_hipC=[]; mean_normal_hipC=[]; sd_CP_hipC=[]; sd_normal_hipC=[];
for gait_event = 1:51
    distribution_CP_hipC = [distribution_CP_hipC; normpdf(angle_values,mean(hipCoronal_CP(:,gait_event)),std(hipCoronal_CP(:,gait_event)))];
    distribution_normal_hipC = [distribution_normal_hipC; normpdf(angle_values,hipCoronal_normal_mean(gait_event),hipCoronal_normal_mean(gait_event)-hipCoronal_normal_mean_sd1(gait_event))];
    mean_CP_hipC = [mean_CP_hipC; mean(hipCoronal_CP(:,gait_event))]; sd_CP_hipC = [sd_CP_hipC; std(hipCoronal_CP(:,gait_event))];
    mean_normal_hipC = [mean_normal_hipC ; hipCoronal_normal_mean(gait_event)]; sd_normal_hipC = [sd_normal_hipC; hipCoronal_normal_mean(gait_event)-hipCoronal_normal_mean_sd1(gait_event)];
%     pause(0.1);
%     clf(f1,'reset');
%     figure;
%     plot(angle_values,distribution_CP_hipC(gait_event,:));
%     hold on;
%     plot(angle_values,distribution_normal_hipC(gait_event,:));
   
end


distribution_CP_hipT=[];
distribution_normal_hipT=[];
mean_CP_hipT=[]; mean_normal_hipT=[]; sd_CP_hipT=[]; sd_normal_hipT=[];
for gait_event = 1:51
    distribution_CP_hipT = [distribution_CP_hipT; normpdf(angle_values,mean(hipTransverse_CP(:,gait_event)),std(hipTransverse_CP(:,gait_event)))];
    distribution_normal_hipT = [distribution_normal_hipT; normpdf(angle_values,hipTransverse_normal_mean(gait_event),hipTransverse_normal_mean(gait_event)-hipTransverse_normal_mean_sd1(gait_event))];
    mean_CP_hipT = [mean_CP_hipT; mean(hipTransverse_CP(:,gait_event))]; sd_CP_hipT = [sd_CP_hipT; std(hipTransverse_CP(:,gait_event))];
    mean_normal_hipT = [mean_normal_hipT ; hipTransverse_normal_mean(gait_event)]; sd_normal_hipT = [sd_normal_hipT; hipTransverse_normal_mean(gait_event)-hipTransverse_normal_mean_sd1(gait_event)];
%     pause(0.1);
%     clf(f1,'reset');
%     figure;
%     plot(angle_values,distribution_CP_hipT(gait_event,:));
%     hold on;
%     plot(angle_values,distribution_normal_hipT(gait_event,:));
   
end



distribution_CP_ankle=[];
distribution_normal_ankle=[];
mean_CP_ankle=[]; mean_normal_ankle=[]; sd_CP_ankle=[]; sd_normal_ankle=[];
for gait_event = 1:51
    distribution_CP_ankle = [distribution_CP_ankle; normpdf(angle_values,mean(ankleSagittal_CP(:,gait_event)),std(ankleSagittal_CP(:,gait_event)))];
    distribution_normal_ankle = [distribution_normal_ankle; normpdf(angle_values,ankleSagittal_normal_mean(gait_event),ankleSagittal_normal_mean(gait_event)-ankleSagittal_normal_mean_sd1(gait_event))];
    mean_CP_ankle = [mean_CP_ankle; mean(ankleSagittal_CP(:,gait_event))]; sd_CP_ankle = [sd_CP_ankle; std(ankleSagittal_CP(:,gait_event))];
    mean_normal_ankle = [mean_normal_ankle ; ankleSagittal_normal_mean(gait_event)]; sd_normal_ankle = [sd_normal_ankle; ankleSagittal_normal_mean(gait_event)-ankleSagittal_normal_mean_sd1(gait_event)];
%     pause(0.1);
%     clf(f1,'reset');
%     figure;
%     plot(angle_values,distribution_CP_ankle(gait_event,:));
%     hold on;
%     plot(angle_values,distribution_normal_ankle(gait_event,:));
   
end


%f1=figure;
distribution_CP_pelvicS=[];
distribution_normal_pelvicS=[];
mean_CP_pelvicS=[]; mean_normal_pelvicS=[]; sd_CP_pelvicS=[]; sd_normal_pelvicS=[];
for gait_event = 1:51
    distribution_CP_pelvicS = [distribution_CP_pelvicS; normpdf(angle_values,mean(pelvicSagittal_CP(:,gait_event)),std(pelvicSagittal_CP(:,gait_event)))];
    distribution_normal_pelvicS = [distribution_normal_pelvicS; normpdf(angle_values,pelvicSagittal_normal_mean(gait_event),pelvicSagittal_normal_mean(gait_event)-pelvicSagittal_normal_mean_sd1(gait_event))];
    mean_CP_pelvicS = [mean_CP_pelvicS; mean(pelvicSagittal_CP(:,gait_event))]; sd_CP_pelvicS = [sd_CP_pelvicS; std(pelvicSagittal_CP(:,gait_event))];
    mean_normal_pelvicS = [mean_normal_pelvicS ; pelvicSagittal_normal_mean(gait_event)]; sd_normal_pelvicS = [sd_normal_pelvicS; pelvicSagittal_normal_mean(gait_event)-pelvicSagittal_normal_mean_sd1(gait_event)];
%     pause(0.1);
%     clf(f1,'reset');
%     plot(angle_values,distribution_CP_hipS(gait_event,:));
%     hold on;
%     plot(angle_values,distribution_normal_hipS(gait_event,:));
   
end


distribution_CP_pelvicC=[];
distribution_normal_pelvicC=[];
mean_CP_pelvicC=[]; mean_normal_pelvicC=[]; sd_CP_pelvicC=[]; sd_normal_pelvicC=[];
for gait_event = 1:51
    distribution_CP_pelvicC = [distribution_CP_pelvicC; normpdf(angle_values,mean(pelvicCoronal_CP(:,gait_event)),std(pelvicCoronal_CP(:,gait_event)))];
    distribution_normal_pelvicC = [distribution_normal_pelvicC; normpdf(angle_values,pelvicCoronal_normal_mean(gait_event),pelvicCoronal_normal_mean(gait_event)-pelvicCoronal_normal_mean_sd1(gait_event))];
    mean_CP_pelvicC = [mean_CP_pelvicC; mean(pelvicCoronal_CP(:,gait_event))]; sd_CP_pelvicC = [sd_CP_pelvicC; std(pelvicCoronal_CP(:,gait_event))];
    mean_normal_pelvicC = [mean_normal_pelvicC ; pelvicCoronal_normal_mean(gait_event)]; sd_normal_pelvicC = [sd_normal_pelvicC; pelvicCoronal_normal_mean(gait_event)-pelvicCoronal_normal_mean_sd1(gait_event)];
%     pause(0.1);
%     clf(f1,'reset');
%     plot(angle_values,distribution_CP_hipC(gait_event,:));
%     hold on;
%     plot(angle_values,distribution_normal_hipC(gait_event,:));
   
end


distribution_CP_pelvicT=[];
distribution_normal_pelvicT=[];
mean_CP_pelvicT=[]; mean_normal_pelvicT=[]; sd_CP_pelvicT=[]; sd_normal_pelvicT=[];
for gait_event = 1:51
    distribution_CP_pelvicT = [distribution_CP_pelvicT; normpdf(angle_values,mean(pelvicTransverse_CP(:,gait_event)),std(pelvicTransverse_CP(:,gait_event)))];
    distribution_normal_pelvicT = [distribution_normal_pelvicT; normpdf(angle_values,pelvicTransverse_normal_mean(gait_event),pelvicTransverse_normal_mean(gait_event)-pelvicTransverse_normal_mean_sd1(gait_event))];
    mean_CP_pelvicT = [mean_CP_pelvicT; mean(pelvicTransverse_CP(:,gait_event))]; sd_CP_pelvicT = [sd_CP_pelvicT; std(pelvicTransverse_CP(:,gait_event))];
    mean_normal_pelvicT = [mean_normal_pelvicT ; pelvicTransverse_normal_mean(gait_event)]; sd_normal_pelvicT = [sd_normal_pelvicT; pelvicTransverse_normal_mean(gait_event)-pelvicTransverse_normal_mean_sd1(gait_event)];
%     pause(0.1);
%     clf(f1,'reset');
%     plot(angle_values,distribution_CP_hipT(gait_event,:));
%     hold on;
%     plot(angle_values,distribution_normal_hipT(gait_event,:));
   
end


distribution_CP_footT=[];
distribution_normal_footT=[];
mean_CP_footT=[]; mean_normal_footT=[]; sd_CP_footT=[]; sd_normal_footT=[];
for gait_event = 1:51
    distribution_CP_footT = [distribution_CP_footT; normpdf(angle_values,mean(footTransverse_CP(:,gait_event)),std(footTransverse_CP(:,gait_event)))];
    distribution_normal_footT = [distribution_normal_footT; normpdf(angle_values,footTransverse_normal_mean(gait_event),footTransverse_normal_mean(gait_event)-footTransverse_normal_mean_sd1(gait_event))];
    mean_CP_footT = [mean_CP_footT; mean(footTransverse_CP(:,gait_event))]; sd_CP_footT = [sd_CP_footT; std(footTransverse_CP(:,gait_event))];
    mean_normal_footT = [mean_normal_footT ; footTransverse_normal_mean(gait_event)]; sd_normal_footT = [sd_normal_footT; footTransverse_normal_mean(gait_event)-footTransverse_normal_mean_sd1(gait_event)];
%     pause(0.1);
%     clf(f1,'reset');
%     plot(angle_values,distribution_CP_hipT(gait_event,:));
%     hold on;
%     plot(angle_values,distribution_normal_hipT(gait_event,:));
   
end

