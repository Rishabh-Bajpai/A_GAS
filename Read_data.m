% Load dataset of Cerebral Palsy Children
fprintf(" Reading CP gait dataset \n");
meta_data_CP=[];hipSagittal_CP=[]; hipCoronal_CP=[]; hipTransverse_CP=[]; ankleSagittal_CP=[]; kneeSagittal_CP=[];pelvicSagittal_CP=[];pelvicCoronal_CP=[];pelvicTransverse_CP=[];footTransverse_CP=[];
for page_index=1:10
%load data from excel file
    data_CP=xlsread("C:\F\OneDrive - IIT Delhi\Backup\phd\PhD_research\Important_documents\A-GAS\dataset\2\Stratifiedfoldkinematicparametersandcurves.xlsx",page_index);
    %Remove extra coloum 
    meta_data_CP =[meta_data_CP;data_CP(:,6:16)]; %leave for now
    hipSagittal_CP = [hipSagittal_CP;data_CP(:,386:386+50)];
    hipCoronal_CP = [hipCoronal_CP;data_CP(:,488:488+50)];
    hipTransverse_CP = [hipTransverse_CP;data_CP(:,539:539+50)];
    kneeSagittal_CP = [kneeSagittal_CP;data_CP(:,590:590+50)];
    ankleSagittal_CP = [ankleSagittal_CP;data_CP(:,692:692+50)];
    pelvicSagittal_CP = [pelvicSagittal_CP;data_CP(:,182:182+50)];
    pelvicCoronal_CP = [pelvicCoronal_CP;data_CP(:,284:284+50)];
    pelvicTransverse_CP = [pelvicTransverse_CP;data_CP(:,335:335+50)];
    footTransverse_CP = [footTransverse_CP;data_CP(:,794:794+50)];
    fprintf(int2str(page_index*10)+"%% ");
end

%Plot sample data of CP subject 
%plot(hipsagittal2(1,:)); figure; plot(hipCoronal2(1,:)); figure; plot(hipTransverse2(1,:)); figure; plot(kneesagittal2(1,:)); figure; plot(anklesagittal2(1,:)); pause; close all;


fprintf(" Reading normal gait dataset \n");
%load data from excel file
Full_data_normal = xlsread("C:\F\OneDrive - IIT Delhi\Backup\phd\PhD_research\Important_documents\A-GAS\dataset\3\mmc3bhbjhbjhb.xlsx",2);

%Remove extra coloum 
%meta_data_2 =meta_data_1(:,2:end); %leave for now
hipSagittal_normal_mean = resample(Full_data_normal(304:304+100,3),1,2);
hipCoronal_normal_mean = resample(Full_data_normal(405:405+100,3),1,2);
hipTransverse_normal_mean =resample(Full_data_normal(506:506+100,3),1,2);
kneeSagittal_normal_mean = resample(Full_data_normal(607:607+100,3),1,2);
ankleSagittal_normal_mean = resample(Full_data_normal(708:708+100,3),1,2); ankleSagittal_normal_mean=ankleSagittal_normal_mean+22.5; %correct baseline offset in dataset (if any)
pelvicSagittal_normal_mean = resample(Full_data_normal(1:1+100,3),1,2); pelvicSagittal_normal_mean=pelvicSagittal_normal_mean+20.8; %correct baseline offset in dataset (if any)
pelvicCoronal_normal_mean = resample(Full_data_normal(102:102+100,3),1,2);
pelvicTransverse_normal_mean =resample(Full_data_normal(203:203+100,3),1,2);
footTransverse_normal_mean =resample(Full_data_normal(1314:1314+100,3),1,2); footTransverse_normal_mean=footTransverse_normal_mean+6.6; %correct baseline offset in dataset (if any)

hipSagittal_normal_mean_sd1 = resample(Full_data_normal(304:304+100,2),1,2);
hipCoronal_normal_mean_sd1 = resample(Full_data_normal(405:405+100,2),1,2);
hipTransverse_normal_mean_sd1 = resample(Full_data_normal(506:506+100,2),1,2);
kneeSagittal_normal_mean_sd1 = resample(Full_data_normal(607:607+100,2),1,2);
ankleSagittal_normal_mean_sd1 = resample(Full_data_normal(708:708+100,2),1,2); ankleSagittal_normal_mean_sd1=ankleSagittal_normal_mean_sd1+22.5; %correct baseline offset in the dataset (if any)
pelvicSagittal_normal_mean_sd1 = resample(Full_data_normal(1:1+100,2),1,2); pelvicSagittal_normal_mean_sd1=pelvicSagittal_normal_mean_sd1+20.8; %correct baseline offset in the dataset (if any)
pelvicCoronal_normal_mean_sd1 = resample(Full_data_normal(102:102+100,2),1,2);
pelvicTransverse_normal_mean_sd1 = resample(Full_data_normal(203:203+100,2),1,2);
footTransverse_normal_mean_sd1 = resample(Full_data_normal(1314:1314+100,2),1,2);footTransverse_normal_mean_sd1=footTransverse_normal_mean_sd1+6.6; %correct baseline offset in the dataset (if any)


hipSagittal_normal_mean_sd2 = resample(Full_data_normal(304:304+100,4),1,2);
hipCoronal_normal_mean_sd2 = resample(Full_data_normal(405:405+100,4),1,2);
hipTransverse_normal_mean_sd2 = resample(Full_data_normal(506:506+100,4),1,2);
kneeSagittal_normal_mean_sd2 = resample(Full_data_normal(607:607+100,4),1,2);
ankleSagittal_normal_mean_sd2 = resample(Full_data_normal(708:708+100,4),1,2); ankleSagittal_normal_mean_sd2=ankleSagittal_normal_mean_sd2+22.5; %correct baseline offset in the dataset (if any)
pelvicSagittal_normal_mean_sd2 = resample(Full_data_normal(1:1+100,4),1,2); pelvicSagittal_normal_mean_sd2=pelvicSagittal_normal_mean_sd2+20.8; %correct baseline offset in the dataset (if any)
pelvicCoronal_normal_mean_sd2 = resample(Full_data_normal(102:102+100,4),1,2);
pelvicTransverse_normal_mean_sd2 = resample(Full_data_normal(203:203+100,4),1,2);
footTransverse_normal_mean_sd2 = resample(Full_data_normal(1314:1314+100,4),1,2); footTransverse_normal_mean_sd2=footTransverse_normal_mean_sd2+6.6; %correct baseline offset in the dataset (if any)

%Plot sample data of normal subject 
%plot(hipsagittal3_mean); figure; plot(hipCoronal3_mean); figure; plot(hipTransverse3_mean); figure; plot(kneesagittal3_mean); figure; plot(anklesagittal3_mean); pause; close all;

% Delete extra variables to conserve RAM
clear Full_data_CP;clear Full_data_normal; clear data_CP; clear page_index;



