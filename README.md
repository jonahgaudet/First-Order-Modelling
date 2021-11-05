Project: Lab1

This project uses MATLAB and Simulink to model First Order Differential equations as the first lab assignment for SYSC 3600: Systems and Simulations at Carleton University.

The first order equation used in the lab is as follows:
      dy(t)/dt + 1/tau * y(t) = k * x(t)

All models use the form mentioned above. The project contains separate models for:
- Basic first order model
- Input-delayed model
- Initial condition models
- Composite input models

In all cases, there exists scripts to run these models with case studies set within the scripts. All scripts can be run at once using 'runPlots.m'. 

Photos of the resultant graphs (when run from a script) will be saved in the "<Model type>_Plots" folders within the Scripts folder. To store the graphs in a different location within the project file, go to each function and change the save location. Note that the folder must exist for this to work.
- saveas(gcf, "Scripts\FOM_Plots\" + saveName, "png")
