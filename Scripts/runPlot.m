function [output] = runPlot(k, tau, modelName, saveName)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
output = sim(modelName);
plot(output.time, output.y)
hold on
plot(output.time, output.x)
hold off
title("Step response of a first-order system where k = " + k + " and tau = " + tau)
xlabel("Time (t)")
ylabel("x(t) and y(t)")
saveas(gcf, "Scripts\FOM_Plots\" + saveName, "png")
end