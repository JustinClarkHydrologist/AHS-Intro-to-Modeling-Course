BEGIN OPTIONS
    #
    #INPUT_CHECK    #COMMENT OUT TO ALLOW NORMAL RUN
    #FASTFORWARD 507
    #
    # If a time step fails to meet the solver's convergence criteria, do not stop the simulation.
    NO_FAILED_CONVERGENCE_STOP
    #
    # Has the same effect as including the "COMPACT BUDGET" in the Output Control (OC) package
    COMPACT BUDGET 
    #
    # Overrides all the package Cell-By-Cell (CBC) unit numbers and sets them to 9. Note that NOCBC is identical to " CBC_UNIT 0 "
    CBC_UNIT  70
    #
    #  Override Output Control (OC) for when the all package flows are written to the cell-by-cell file (CBC)
 ###NOCBC                # Disable CBC writing
    CBC_EVERY_TIMESTEP     # Writes CBC every Time Step
    #
    # Specify the starting calendar date for the simulation. (Jan 1st, 2010 at midnight)
    #   Date format could also be specified as 1/1/2010
    START_DATE  2000-01-01
    #
    # Default is to print every the iteration count every 10 solver iterations to command prompt
    # Due to the speed of the model, the progress will be impossible to see, it is disabled.
    NO_SHOWPROGRESS # Disables "Solver Iter" printing; useful if redirecting cmd output to a file.
 ###SHOWPROGRESS [NPRT] # Prints every 10 or NPRT iterations HCLOSE and RCLOSE; NPRT < 0 only prints the solver iter # every |NPRT| iterations; OneWater default is "SHOWPROGRESS -10"
    #
    # Output Files ----------------------------------------------------------------------------------------------------------------------------------
    #   Generic_Output is a place holder for the output file location.
    #   The file name that is commented to the right is the recommended name.
    #   Example use:
    #               BUDGETDB   ./output/package_flow_budget.txt
    #
    # Print the budget information in a column based format for all packages in a single file.
    BUDGETDB                ./output/VolumetricBudget.txt 
    PRINT_HEAD   NPER       ./output/Head_NPER.txt 
    CUMULATIVE_HEAD_CHANGE  ./output/CumHCHG.txt  
    #
    #
    STOPERROR 200.
    #
    # MIN_SOLVER_ITER  15
    ITERATION_INFO  ./output/Iter_Info.txt  BUFFER 4
    #DAMPEN_START  20  0.5               # ITER TO DAMP, DAMP FACTOR
    # MAX_RELATIVE_VOLUME_ERROR 1.0
    PRINT_CONVERGENCE         1   -5 ./output/Convergence.txt     BUFFER 16 # NTERM OUTER_START  FILE
    PRINT_FLOW_RESIDUAL       1    0 ./output/ConvergenceFlow.txt BUFFER 16 # NTERM OUTER_START  FILE
    PRINT_RELATIVE_VOL_ERROR  1    0 ./output/ConvergenceVol.txt  BUFFER 16 # NTERM OUTER_START  FILE
    #
    PERCENTERROR  5
    #ADVANCED_DAMPING  0.05  400
    #MAX_RELATIVE_VOLUME_ERROR 0.025 # DEFAULT VALUE WHEN NOT DECLAIRED = 0.025
    #MIN_SOLVER_ITER 30
END OPTIONS
CONSTANT        1 # IBOUND Lay1
CONSTANT        1 # IBOUND Lay2
CONSTANT        1 # IBOUND Lay3
CONSTANT        1 # IBOUND Lay4
CONSTANT        1 # IBOUND Lay5
CONSTANT        1 # IBOUND Lay6
CONSTANT        1 # IBOUND Lay7
-9999             # HNOFLO
OPEN/CLOSE ./Data_Model_Arrays/HEAD_STRT_L1.txt 1.0 (FREE) -1	layer 1
OPEN/CLOSE ./Data_Model_Arrays/HEAD_STRT_L2.txt 1.0 (FREE) -1	layer 2
OPEN/CLOSE ./Data_Model_Arrays/HEAD_STRT_L3.txt 1.0 (FREE) -1	layer 3
OPEN/CLOSE ./Data_Model_Arrays/HEAD_STRT_L4.txt 1.0 (FREE) -1	layer 4
OPEN/CLOSE ./Data_Model_Arrays/HEAD_STRT_L5.txt 1.0 (FREE) -1	layer 5
OPEN/CLOSE ./Data_Model_Arrays/HEAD_STRT_L6.txt 1.0 (FREE) -1	layer 6
OPEN/CLOSE ./Data_Model_Arrays/HEAD_STRT_L7.txt 1.0 (FREE) -1	layer 7