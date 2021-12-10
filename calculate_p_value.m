function p_value = calculate_p_value(mean_CP,sd_CP,mean_normal,sd_normal,n,m)

dis_CP=[]; dis_normal=[];
for i = 1:51
    dis_CP= [dis_CP;(normrnd(mean_CP(i),sd_CP(i),1,n))];
    dis_normal= [dis_normal;(normrnd(mean_normal(i),sd_normal(i),1,m))];
end

[h,p_value]=ttest2(dis_CP',dis_normal');


end

