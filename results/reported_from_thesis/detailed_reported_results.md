# Detailed Reported Results From Thesis

This document inventories computational-result information reported in the thesis document and presentation. These are reported values only. They have not been independently reproduced from raw GAMS/CPLEX solver outputs, rerun logs, `.lst` files, `.gdx` files, or exported result tables.

Every value in this document should be read with the status: `reported in thesis/presentation, not independently verified`.

Primary sources:

- `Mr. Ebrahimi-thesis.docx`, Chapter 4, especially Figure 4-4, page 81, and Table 4-8, page 82.
- `thesis pw.pptx`, slides 17-18.

## Purpose of the Reported Computational Comparison

Chapter 4 presents the computational comparison as part of the thesis evaluation of the proposed Benders decomposition approach for the scheduling model developed in Chapter 3. The thesis text states that several instance sizes were generated and solved using a direct CPLEX approach and the Benders algorithm.

This repository does not currently include the raw solver artifacts needed to verify those reported comparisons. The comparison should therefore be cited only as thesis-reported computational evidence, not as independently reproduced repository evidence.

## Reported Software and Hardware Settings

The following settings are reported in `Mr. Ebrahimi-thesis.docx`, Chapter 4, text around Table 4-8, and in `thesis pw.pptx`, slide 17.

| Item | Reported value | Source | Status |
|---|---|---|---|
| GAMS version | 28.2.0 | `Mr. Ebrahimi-thesis.docx`, Chapter 4, page 82; `thesis pw.pptx`, slide 17 | reported in thesis/presentation, not independently verified |
| CPLEX version | 12.9.0.0 | `Mr. Ebrahimi-thesis.docx`, Chapter 4, text before Table 4-8 | reported in thesis/presentation, not independently verified |
| Processor | Core i7 | `Mr. Ebrahimi-thesis.docx`, Chapter 4, page 82; `thesis pw.pptx`, slide 17 | reported in thesis/presentation, not independently verified |
| Memory | 16 GB | `Mr. Ebrahimi-thesis.docx`, Chapter 4, page 82; `thesis pw.pptx`, slide 17 | reported in thesis/presentation, not independently verified |
| Benders iteration stopping criterion | Stop when iterations reach 200 | `Mr. Ebrahimi-thesis.docx`, Chapter 4, page 82; `thesis pw.pptx`, slide 17 | reported in thesis/presentation, not independently verified |
| Benders relative-gap stopping criterion | Stop when the relative gap between Benders lower and upper bounds is below 0.3% | `Mr. Ebrahimi-thesis.docx`, Chapter 4, page 82; `thesis pw.pptx`, slide 17 | reported in thesis/presentation, not independently verified |

The repository does not include an executable environment record, solver option file, run script, raw GAMS listing file, raw CPLEX log, or machine-readable run metadata for these reported settings.

## CPLEX-vs-Benders Comparison Table

The CPLEX-vs-Benders comparison from `Mr. Ebrahimi-thesis.docx`, Table 4-8, page 82, and `thesis pw.pptx`, slide 17, has already been transcribed in:

- `results/reported_from_thesis/cplex_vs_benders_comparison.md`

That file is the canonical repository location for the transcribed comparison table. It includes:

- problem number;
- number of machines;
- number of positions;
- number of main jobs;
- number of sub-jobs;
- reported CPLEX time;
- reported CPLEX objective;
- reported Benders time;
- reported Benders objective;
- a status column marking values as `reported, not independently verified`.

All rows in that table are reported thesis/presentation values only and are not independently verified from raw solver outputs.

## Cautious Note on Problem 5

In Table 4-8, the CPLEX objective value for Problem 5 is shown as `-`. This repository transcribes the dash as shown in the thesis table and marks it as `needs verification`.

Possible interpretations, such as no objective being produced, a timeout, an omitted value, or a formatting issue, should not be asserted without checking the original solver output or additional thesis context. No raw solver output is currently included in the repository to resolve this item.

## Reported Convergence Information

The thesis references Figure 4-4 as the Benders convergence plot for the case-study problem. The surrounding Chapter 4 text reports that the upper and lower bounds became equal with zero gap at iteration 19. Slide 18 is titled as Benders algorithm convergence.

| Item | Reported value or description | Source | Status |
|---|---|---|---|
| Case-study convergence figure | Benders upper and lower bounds are plotted for the case-study problem | `Mr. Ebrahimi-thesis.docx`, Figure 4-4, page 81; `thesis pw.pptx`, slide 18 | reported in thesis/presentation, not independently verified |
| Reported convergence iteration | Iteration 19 | `Mr. Ebrahimi-thesis.docx`, Chapter 4 text after Table 4-8 | reported in thesis/presentation, not independently verified |
| Reported convergence gap | Zero gap between upper and lower bounds | `Mr. Ebrahimi-thesis.docx`, Chapter 4 text after Table 4-8 | reported in thesis/presentation, not independently verified |

This document does not extract numeric chart data from Figure 4-4 or slide 18. Chart-level values require separate visual/manual verification and should remain `needs verification` until reviewed carefully.

## Verification Boundary

These records are thesis-reported values and presentation-reported values. They are not independently reproduced computational results.

The repository currently does not include:

- standalone GAMS `.lst` files;
- `.gdx` files;
- raw CPLEX logs;
- raw GAMS logs;
- exported result tables;
- run scripts;
- solver option files;
- environment metadata sufficient to reproduce the reported computational comparison.

No claim of reproducibility should be made from these reported values alone.

## Items Requiring Verification

The following items should be verified before they are used as final reproducible results:

- exact mapping between each Table 4-8 problem and a canonical GAMS file;
- whether the direct CPLEX runs used exactly the imported `Ebrahimi*.gms` files or another thesis-era variant;
- whether the Benders runs used exactly the imported `BD2*.gms` files or another thesis-era variant;
- solver options, time limits, optimality tolerances, and any stopping settings beyond the reported Benders criteria;
- the meaning of the `-` entry for the Problem 5 CPLEX objective;
- raw objective values, model statuses, solver statuses, and termination reasons from original or rerun `.lst`/log files;
- exact data behind Figure 4-4 and slide 18 convergence plots;
- whether the reported times are wall-clock time, CPU time, GAMS elapsed time, or another timing measure;
- whether the thesis/presentation comparison table has formatting or transcription issues in the original source.

Future work should archive raw solver artifacts under `results/raw/`, convert verified outputs into structured files under `results/processed/`, and compare those rerun outputs against the thesis-reported values without overclaiming.
