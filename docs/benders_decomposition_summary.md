# Benders Decomposition Summary

The `BD2*.gms` files implement an observed Benders-style decomposition structure in GAMS. This summary is based on source inspection only; the files were not rerun.

## Observed Model Blocks

The Benders files define three named model blocks:

- `MP`: master problem, solved as a MIP.
- `FCP`: feasibility-check problem, solved as an LP.
- `SP`: subproblem, solved as an LP.

The files include an iteration set such as `iter /0*200/`, lower/upper bound tracking, and conditional logic for adding feasibility or optimality-related cuts.

## Observed Solve Flow

Within the loop, the code solves:

1. `MP` using MIP minimization of `Z_MP`;
2. `FCP` using LP minimization of `Z_FCP`;
3. `SP` using LP minimization of `Z_SP`, when the feasibility check allows it.

The decomposition logic appears to use the master problem for assignment/ordering decisions and the subproblem for timing or continuous scheduling quantities. This interpretation needs verification before formal use.

## Caution

No standalone `.lst`, `.gdx`, solver log, exported table, or verified result file was found. Therefore this repository does not claim convergence behavior, runtime, objective values, optimality gaps, or computational performance.
