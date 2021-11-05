function [output] = runPlotDelay(k, tau, delay, modelName, saveName)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
output = sim(modelName);
plot(output.time, output.y)
hold on
plot(output.time, output.x)
hold off
title("Step response of a first-order system: k = " + k + ", tau = " + tau + ", with delay of " + delay)
xlabel("Time (t)")
ylabel("x(t) and y(t)")
saveas(gcf, "Scripts\FOM_Delay_Plots\" + saveName, "png")
end