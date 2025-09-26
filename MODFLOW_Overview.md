MODFLOW Overview & File Structure Guidance Document

MODFLOW simulates groundwater flow by solving finite-difference or finite-volume equations in a series of 3D model blocks.

There have been many releases of MODFLOW. Selecting a version of MODFLOW is important.

These are the Versions of MODFLOW that the class will cover:

MODFLOW-USG

MODFLOW-One Water

MODFLOW-NWT

MODFLOW-6

A typical MODFLOW model includes input files that define the model setup, and output files that record results.

The input and most output files are simple text files that can be opened with any text editor.

Some output files can be generated in binary file format that cannot be read with a text editor.

Methods for reading those files will be covered in the course.

 --- Input Files ---

Here’s a breakdown of common MODFLOW input file types and their roles. Not all models use all of these; the exact set depends on your packages and model configuration.

Package - File	Purpose / What It Defines

Name File	- The "master file listing which packages and files the model should use. The name file references the other input files and defines the output files. The name file usually has the ".nam" file extension.

Basic (BAS)	- Defines the active/inactive cells, initial heads

Discretization (DIS / DISU)	- Spatial grid layout and time-stepping structure (stress periods)

Flow Packages	Define how groundwater moves between cells-

• LPF (Layer-Property Flow)

• UPW (Upstream Weighting)

• BCF (Block-Centered Flow)

Stress Period / Boundary Condition Packages -	These define external forcing or boundary conditions over time:

• Recharge (RCH) - Simulates the recharge water to the groundwater system.

• Stream (STR) - Simulates streams in a model. 

• Streamflow Routing (SFR) - Updated simulation of streams in a model. The flow in a stream is routed to downstream streams or lakes. SFR allows for stream-aquifer interactions, including the simulation of unsaturated flow and more options for computing stream depth and diversions

• Well (WEL) - Simulates well pumping or recharge.

• Constant-Head Boundary (CHD) - Simulates the interaction with the groundwater system at with a specified head boundary condition.

• General‐Head Boundary (GHB) - Simulates head-dependent flux boundaries. In the GHB package the flux is always proportional to the difference in head.

• Evapotranspiration (EVT) - Simulates evapotranspiration as head-dependent flux out of the model distributed over the top of the model.

• Multi-Node Well (MNW) - Simulates wells that span multiple layers (vertical wells) or multiple model cells (horizontal wells)


Other Common Input Packages-

• Solver (e.g. PCG, Newton, SMS)

• Output control (OC)

• Observations, constraints, etc.

 --- Output Files ---

These files record the results of the simulation and help you interpret model behavior.

Output File	- Contents / Use
List File (.lst)	- A text summary of the model run: package summaries, solver iterations, water-budget summary, warnings/errors.
Head File (.hds or .head)	- The computed hydraulic head values for model cells at each time step.
Budget File (.cbc or .bgt)	- Flow terms (e.g. inter-cell flows, inflow/outflow, storage change) for each time step / stress period.
Drawdown File	(.ddn) - The change in head relative to baseline or initial conditions.
Concentration / Transport File (.con or .ucn) - Concentrations of chemical species over time.
