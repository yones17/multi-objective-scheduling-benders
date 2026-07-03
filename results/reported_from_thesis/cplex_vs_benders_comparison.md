# CPLEX vs Benders Comparison Reported in Thesis

Sources:

- `Mr. Ebrahimi-thesis.docx`, Table 4-8, page 82.
- `thesis pw.pptx`, slide 17.

The table below transcribes reported values from the thesis document and presentation. These values are not independently verified from raw solver outputs or rerun logs.

| Problem | Machines | Positions | Main jobs | Sub-jobs | CPLEX time | CPLEX objective | Benders time | Benders objective | Status |
|---:|---:|---:|---:|---:|---|---:|---|---:|---|
| 1 | 2 | 14 | 2 | 5 | 00:00:05 | 2552 | 00:01:20 | 2552 | reported, not independently verified |
| 2 | 3 | 21 | 3 | 8 | 00:04:07 | 3633 | 00:04:54 | 3633 | reported, not independently verified |
| 3 | 3 | 28 | 3 | 9 | 00:35:34 | 4254 | 00:47:12 | 4254 | reported, not independently verified |
| 4 | 4 | 35 | 5 | 10 | 03:00:49 | 4960 | 01:13:23 | 4960 | reported, not independently verified |
| 5 | 5 | 42 | 7 | 13 | 03:01:01 | `-` | 02:03:32 | 6700 | reported, not independently verified; CPLEX objective needs verification |

Notes:

- The `-` entry for the Problem 5 CPLEX objective is transcribed as shown and needs verification.
- This table presents reported values only. It does not claim that the results are independently reproduced.
- No raw `.lst`, `.gdx`, solver logs, or exported CPLEX/GAMS output files are currently included for these rows.
