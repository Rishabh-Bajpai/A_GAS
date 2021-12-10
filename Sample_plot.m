figure;
subplot(3,3,1); plot(sample_knee,"LineWidth",2,'color','r'); hold on; plot(kneeSagittal_normal_mean,"LineWidth",2,'color','b'); xlabel("Gait cycle instant. With sample Joint AI = "+(num2str(joint_AI_knee))); plot_AI(joint_AI_instant_knee); %ylabel("Angle"); 
subplot(3,3,2);plot(sample_hipS,"LineWidth",2,'color','r'); hold on; plot(hipSagittal_normal_mean,"LineWidth",2,'color','b'); xlabel("Gait cycle instant. With sample Joint AI = "+ (num2str(joint_AI_hipS))); plot_AI(joint_AI_instant_hipS);%ylabel("Probabilities (Modified bayes law)");
subplot(3,3,3);plot(sample_hipC,"LineWidth",2,'color','r'); hold on; plot(hipCoronal_normal_mean,"LineWidth",2,'color','b'); xlabel("Gait cycle instant. With sample Joint AI = "+ (num2str(joint_AI_hipC))); plot_AI(joint_AI_instant_hipC);%ylabel("Probabilities (Modified bayes law)");
subplot(3,3,4);plot(sample_hipT,"LineWidth",2,'color','r'); hold on; plot(hipTransverse_normal_mean,"LineWidth",2,'color','b'); xlabel("Gait cycle instant. With sample Joint AI = "+ (num2str(joint_AI_hipT))); plot_AI(joint_AI_instant_hipT);%ylabel("Probabilities (Modified bayes law)");
subplot(3,3,5);plot(sample_ankle,"LineWidth",2,'color','r'); hold on; plot(ankleSagittal_normal_mean,"LineWidth",2,'color','b'); xlabel("Gait cycle instant. With sample Joint AI = "+ (num2str(joint_AI_ankle))); plot_AI(joint_AI_instant_ankle);%ylabel("Probabilities (Modified bayes law)");
subplot(3,3,6);plot(sample_pelvicS,"LineWidth",2,'color','r'); hold on; plot(pelvicSagittal_normal_mean,"LineWidth",2,'color','b'); xlabel("Gait cycle instant. With sample Joint AI = "+ (num2str(joint_AI_pelvicS))); plot_AI(joint_AI_instant_pelvicS);%ylabel("Probabilities (Modified bayes law)");
subplot(3,3,7);plot(sample_pelvicC,"LineWidth",2,'color','r'); hold on; plot(pelvicCoronal_normal_mean,"LineWidth",2,'color','b'); xlabel("Gait cycle instant. With sample Joint AI = "+ (num2str(joint_AI_pelvicC))); plot_AI(joint_AI_instant_pelvicC);%ylabel("Probabilities (Modified bayes law)");
subplot(3,3,8);plot(sample_pelvicT,"LineWidth",2,'color','r'); hold on; plot(pelvicTransverse_normal_mean,"LineWidth",2,'color','b'); xlabel("Gait cycle instant. With sample Joint AI = "+ (num2str(joint_AI_pelvicT))); plot_AI(joint_AI_instant_pelvicT);%ylabel("Probabilities (Modified bayes law)");
subplot(3,3,9);plot(sample_footT,"LineWidth",2,'color','r'); hold on; plot(footTransverse_normal_mean,"LineWidth",2,'color','b'); xlabel("Gait cycle instant. With sample Joint AI = "+ (num2str(joint_AI_footT))); plot_AI(joint_AI_instant_footT);%ylabel("Probabilities (Modified bayes law)");




