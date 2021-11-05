function [output] = runPlotIC(k, tau, delay, IC, modelName, saveName)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
output = sim(modelName);
plot(output.time, output.y)
hold on
plot(output.time, output.x)
hold off
title("Step response of a first-order system with k = " + k + ", tau = " + tau + ", delay = " + delay + " and IC of " + IC)
xlabel("Time (t)")
ylabel("x(t) and y(t)")
saveas(gcf, "Scripts\FOM_IC_Plots\" + saveName, "png")
end