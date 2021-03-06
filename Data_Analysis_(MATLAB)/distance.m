% distance.m
% Plot Distance vs Time Plot of Each Broken DiscBot from the Center of the Cluster 
% Additionally Display the 95% Confidence Interval for the Average DiscBot

hold on

labels = cell(nb,1);
for i = 1:nb
    % Plot Each of the Broken DiscBots
    plot(t, sqrt( (r(:,i) - x_centers(1:nr)).^2 + (r(:,i+1) - y_centers(1:nr)).^2 ))
end

% Plot the 95% Confidence Interval:
plot(t, mean(rbar)*ones(nr),'g-')   % Average DiscBot Distance from Center
plot(t, rConf*ones(nr),'g--')       % +2*sigma 
plot(t, rConf2*ones(nr),'g--')      % -2*sigma


title('Distance Traveled by Broken DiscBots')
xlabel('Time (sec)')
ylabel('Distance (mm)')
legend(labels{:},'Average Distance', '+2 Standard Dev', '-2 Standard Dev')

hold off