function  plot_AI(joint_AI_instant)

yyaxis right
ax = gca;
ax.YColor = 'blue';
axis([0,51,0,1])
ClrMap = colormap('jet');

Y = joint_AI_instant';
Clr = ceil(size(ClrMap, 1) * Y);
Clr(Clr==0)=1;
for k = 1:length(Y)
    bar(k, Y(k), 'FaceColor', ClrMap(Clr(k), :));
    if k == 1
        hold on
    end
end
hold off

alpha(0.7);

end

