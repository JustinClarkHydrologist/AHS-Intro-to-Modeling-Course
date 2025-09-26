# AHS-Intro-to-Modeling-Course

This repository contains data, example models, and instructional materials for the Arizona Hydrological Society (AHS) Introduction to Building and Running Groundwater Models (2025). It is intended as a resource for students participating in the workshop and others interested in groundwater modeling with MODFLOW.

Repository Contents

| Item                                | Description                                                                                                       |
| ----------------------------------- | ----------------------------------------------------------------------------------------------------------------- |
| `README.md`                         | This file: overview and usage instructions                                                                        |
| `PreCourse_Instructions/`           | Instructions (e.g. using Windows Command Prompt, command-line scripts) that students should complete before class |
| `Examples/`                         | Four (or more) example MODFLOW model setups to be used during the workshop                                        |
| `Helpful_Links/`                    | A curated list of external resources, tutorials, software, reference documents                                    |
| `QuickGuide_MODFLOW.pdf` (or `.md`) | A short reference showing how MODFLOW works (packages, I/O, workflow)                                             |



This is the page for the data resources that students can use for the Arizona Hydrological Society (AHS) Introduction to Groundwater Modeling Course - Updated for 2025 Course.

The file repository includes:
1. A file that has instructions showing users how to use Windows Command Prompt and Command Line Scripts (to be completed before class)
2. 4 folders with example MODFLOW files (in "Examples" directory)
3. A file with helpful links for groundwater modelers
4. A quick guide on how MODFLOW works (below)

This repository has a collection of usable groundwater models that are example files for instructors to use to teach groundwater modeling with MODFLOW.

Here is some basic guidance on how MODFLOW works:

MODFLOW is run using at least 5 text files that are used as the input files for a simulation of water moving through porous media.

These files are some of the basic files that are commonly used for MODFLOW:

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

