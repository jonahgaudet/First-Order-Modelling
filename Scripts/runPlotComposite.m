function [output] = runPlotComposite(delay1, delay2, modelName, saveName)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
output = sim(modelName);
plot(output.time, output.y)
hold on
plot(output.time, output.x)
hold off
title("Step response of a first-order system with delays of " + delay1 + " and " + delay2)
xlabel("Time (t)")
ylabel("x(t) and y(t)")
saveas(gcf, "Scripts\FOM_Composite_Plots\" + saveName, "png")
end