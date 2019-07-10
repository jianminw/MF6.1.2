# MF6.1.2

This project is based off of the tire model written in Chapter 4 of Tyre and Vehicle Dynamics, 3rd Edition by Hans Pacejka. The full text of the book is available in digital form through CMU Library. 

Four sections of the model are used here: Longitudinal Force (Pure Longitudinal Slip), Lateral Force (Pure Side Slip), Longitudinal Force (Combined Slip), Lateral Force (Combined Slip). 

# Usage

The main intended uses for this model are:
1. Creating a tire model from testing data, using parameter estimation. 
2. Importing to another project such as a lapsim for use as a tire model. 

# Notes on Parameter Estimation

Due to the number of variables present in the model, it is recommended to run parameter estimation in batches. The four sections of the model can be estimated independently, with the appropriate data. 
It is also recommended that the data be split into lower resolution pieces (sampling one data point out of 10 or something similar) for faster convergence and also leaving data for model verification. 

A typical parameter estimation scheme would be:
1. Trim data to only have pure longitudinal slip runs. 
2. Run parameter estimation with only parameters in Longitudinal Force (Pure Longitudinal Slip). 
3. Trim data to only have pure side slip runs. 
4. Run parameter estimation with only parameters in Lateral Force (Pure Side Slip). 
5. Using all data, run parameter estimation with only parameters in Longitudinal Force (Combined Slip). 
6. Using all data, run parameter estimation with only parameters in Lateral Force (Combined Slip). 

The order between longitudinal forces and lateral forces does not matter; it is simply important to the pure slip cases are dealt with before moving on to the combined slip cases. 

# Examples

A number of files serve as examples as to how parameter estimation can be done. 

combineddata.m - An example of how combined slip data can be trimmed for parameter estimation. 

purelatdata.m - An example of how pure side slip data can be isolated and trimmed for parameter estimation. 

purelongdata.m - An example of how pure longitudinal slip data can be isolated and trimmed for parameter estimation. 

combined_lat_spesession.mat - a save file of a parameter estimation run to estimate parameters in Lateral Force (Combined Slip)

combined_long_spesession.mat - a save file of a parameter estimation run to estimate parameters in Longitudinal Force (Combined Slip)

pure_lat_spesession.mat - a save file of a parameter estimation run to estimate parameters in Lateral Force (Pure Side Slip)

pure_long_spesession.mat - a save file of a parameter estimation run to estimate parameters in Longitudinal Force (Pure Longitudinal Slip). 
