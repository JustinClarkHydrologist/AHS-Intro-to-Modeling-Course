# AHS-Intro-to-Modeling-Course

Developed by Justin Clark with contributions from Randy Hanson

This repository contains data, example models, and instructional materials for the Arizona Hydrological Society (AHS) Introduction to Building and Running Groundwater Models (2025). It is intended as a resource for students participating in the workshop and others interested in groundwater modeling with MODFLOW.

Repository Contents

| Item                                         | Description                                                                                                       |
| -------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- |
| `README.md`                                  | This file: Github repository overview and usage instructions                                                      |
| `Running_Command_Prompt_2026.txt`            | Instructions for using Windows Command Prompt and command-line scripts, students should complete before class     |
| `Examples/`                                  | Example MODFLOW model files set up to be used during the workshop                                                 |
| `ProgramFiles/`                              | MODFLOW Program Windows executable files                                                                          |
| `Model_Files_and_Other_Resources_2026.md`    | A curated list of external resources, tutorials, software, reference documents                                    |
| `MODFLOW_Overview.md`                        | A short reference showing how MODFLOW works (packages, I/O, workflow)                                             |

Here is some basic guidance on how MODFLOW works:

MODFLOW is run using at least 5 text files as the input files for a simulation of water moving through porous media.

The text files are formatted in a way that the MODFLOW program can read them easily.

A simulation is initiated using Command Prompt, command-line scripts, or using a Graphical User Interface (GUI).

We will discuss the use of GUIs for MODFLOW but will not use them for the examples in the workshop.

As the simulation runs output files are generated.

The output files always contains a log reporting the process MODFLOW took during the simulation. 

Other output files that can be optionally generated include data such as water levels, budgets, and concentrations over time. 

The `MODFLOW_Overview.md` file will give you some other details on the input and output files commonly used in MODFLOW. 


*As noted above this repository has a collection of usable example groundwater models, these also serve as example files for instructors to use to teach groundwater modeling with MODFLOW.
