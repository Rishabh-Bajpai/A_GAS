function [joint_AI,instant_weight,instant_probability,joint_AI_instant] = joint_AI_sample(sample,normal_mean,p_value,angle_values,distribution_CP,distribution_normal,plots)
%     figure;
%     plot(sample);
%     hold on
%     plot(normal_mean);
    instant_weight=1+(0.25-1)*1.5.^(-1./p_value);
    instant_probability=[];
    for instant_index=1:51
        instant_probability(instant_index)=bayes_probability_ratio(sample(instant_index),distribution_CP(instant_index,:), distribution_normal(instant_index,:), angle_values);
    end
    joint_AI_instant=(instant_weight.*instant_probability);
    joint_AI=sum((instant_weight.*instant_probability))./sum(instant_weight);
    if plots==1
        figure;
        plot(instant_probability);
        
        hold on
        plot(instant_weight);
        plot(joint_AI_instant,'o');
        legend("Instant probability","Instant weight","AI Instant")
    end

end

