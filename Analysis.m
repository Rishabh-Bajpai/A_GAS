rng(1);
Read_data; % Run this line if you have raw dataset of healthy and CP patients else run " load('load_data.mat'); "

Compute_distributions;
Compare_distributions;

% Sample test AI
sample_class=1;
sample_index=100;  
Sample_test_AI;
Sample_test_report; % rater's scores, 1 is for abnormality and 0 is for normal pattern
