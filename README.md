# AHS-Intro-to-Modeling-Course
This is the page for the data resources that students can use for the Arizona Hydrological Society (AHS) Introduction to Groundwater Modeling Course - Updated for 2025 Course.

File repository includes:
1. A file that has instructions that shows users how to use Windows Command Prompt and Command Line Scripts (to be completed before class)
2. Example MODFLOW files (4 examples in "Examples" directory)
3. A file with helpful links for groundwater modelers
4. A quick guide on how MODFLOW works (below)

This repository has a collection of usable groundwater models that are example files for instructors to use to teach groundwater modeling with MODFLOW.

Here is some basic guidance on how MODFLOW files work:
MODFLOW Files are text files that are used as the input files for a simulation of water moving through porous media.

These files are the basic files that are commonly used for MODFLOW:

--INPUT FILES--
Initialization Files
>Name File - The first input file loaded. This file has the names information about the packages called by MODFLOW
>

>Basic Package - The basic model setup information, like active area and starting head values for each model cell
>

>Discretization Package - The spatial geometry of the model and the temporal range of the model 
>

Flow Package Files - 
>Layer Property Flow Package - The most commonly used flow package
>Upstream Weighting Flow Package - Allows for Upstream Spatial Weighting
>Block Centered Flow Package - Classic input for MODFLOW

Stress Packages
>Recharge Package
>

>Stream Flow Package
>

>Constant Head Package
>

>Evapotranspiration Package
>

>Well Package
>

>Multi Node Well Package
>

--OUTPUT FILES--
>List file - Text file output reporting model run details including input and output file, solver iterations, and modeled budget
>

>Head file - 
>

>Budget file - 
>

>Drawdown file - 
>

>Concentration file - 
>

