# Multi-Objective Scheduling with Benders Decomposition

This repository presents a sanitized public documentation and model-code layer for a multi-objective scheduling study involving parallel-machine scheduling and a Benders decomposition implementation in GAMS.

The repository is intended as a careful academic portfolio artifact. It includes organized public copies of selected GAMS model files and documentation of what can and cannot be claimed from the available files. Raw thesis DOCX/PPTX files and private backup artifacts are intentionally excluded from this public branch. The code has not been rerun as part of this cleanup, and no new computational results are claimed here.

## Repository Structure

- `model/cleaned_gams/benders/`: organized public copies of `BD2*.gms` Benders-related files.
- `model/cleaned_gams/milp_baseline/`: organized public copies of `Ebrahimi*.gms` direct MIP baseline files.
- `docs/`: cautious documentation of the problem, model structure, file inventory, and limitations.
- `instances/`: notes about instance availability. No separate instance files were found.
- `results/`: placeholder structure for future verified outputs. No standalone verified computational results are included yet.

The GAMS files in `model/cleaned_gams/` are organized public copies. They are not mathematically refactored, validated, or rerun versions.

## Running the GAMS Files in Principle

The model files are GAMS sources. In principle, a user with GAMS and a compatible solver such as CPLEX can run an individual file from a terminal or GAMS IDE, for example:

```text
gams model/cleaned_gams/benders/BD2.gms
```

This command is illustrative only. The files were not rerun during this repository cleanup. Solver availability, GAMS version, working directory, time limits, and model variant selection all need verification before reporting any computational results.

## Current Evidence

The included GAMS files contain embedded instance data directly in the source code, including job sets, machine sets, processing-time tables, precedence tables, and cost/value matrices. No separate `.csv`, `.xlsx`, `.gdx`, or instance data files are included in this public branch.

Some reported thesis/presentation values have been transcribed under `results/reported_from_thesis/`. These are reported values only and have not been independently reproduced. The raw thesis DOCX/PPTX files used during private extraction are not included in this public branch. No standalone raw solver outputs, logs, `.lst`, `.gdx`, `.xlsx`, `.csv`, or exported result artifacts are included yet.

## Skills Demonstrated

- Mixed-integer programming model construction in GAMS.
- Multi-objective scheduling formulation.
- Benders-style decomposition using master, feasibility-check, and subproblem models.
- Academic model organization and reproducibility-aware documentation.
- Careful separation of raw source material from organized working copies.

## Limitations

The canonical model version is not yet verified. Private raw material included additional backup and experimental variants, including `.~gm` files, but those confusing backup artifacts are excluded from this public branch. Remaining public model files are still marked as `needs verification` where appropriate in `docs/model_file_inventory.md`.

No performance claims, runtimes, optimality gaps, objective values, or comparisons are made in this repository unless supported by future verified runs or explicitly reviewed thesis result artifacts.
