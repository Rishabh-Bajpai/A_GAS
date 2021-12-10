function [p] = bayes_probability_ratio(angle,distribution_1, distribution_2, angle_values)
%distribution_1 is abnormal
lower_index=floor(angle);
upper_index=ceil(angle);
lower_probability_distribution1=distribution_1(angle_values==lower_index);
upper_probability_distribution1=distribution_1(angle_values==upper_index);
lower_probability_distribution2=distribution_2(angle_values==lower_index);
upper_probability_distribution2=distribution_2(angle_values==upper_index);
probability_distribution1=lower_probability_distribution1+upper_probability_distribution1;
probability_distribution2=lower_probability_distribution2+upper_probability_distribution2;

if (probability_distribution1)==0
    p=0;
    %fprintf("probability_distribution2=0");
elseif ((probability_distribution1 < probability_distribution2))
    p=0;
    %fprintf(">1");
else
    p=1-(probability_distribution2/probability_distribution1);
    %p=1-(probability_distribution2/probability_distribution1)^20;
end


end

