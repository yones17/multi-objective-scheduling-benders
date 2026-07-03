# Sensitivity Analysis Details Reported in Thesis

This document expands the sensitivity-analysis inventory with cautious qualitative details from the thesis and presentation. These are reported thesis/presentation interpretations only. They have not been independently reproduced from raw solver outputs, rerun logs, `.lst` files, `.gdx` files, or exported result tables.

Every sensitivity item in this document should be read with the status: `reported in thesis/presentation, not independently verified`.

Primary sources:

- `Mr. Ebrahimi-thesis.docx`, Chapter 4 sensitivity-analysis section, Figures 4-5 through 4-14, pages 83-89.
- `thesis pw.pptx`, slides 19-21.
- `results/reported_from_thesis/sensitivity_analysis_inventory.md` for the existing high-level inventory.

## Purpose of the Sensitivity-Analysis Section

The thesis uses sensitivity analysis to discuss how the case-study model behavior changes when selected input parameters are varied. The thesis frames the analysis around changes in the two objective components. These findings are reported interpretations from the thesis and presentation, not independently verified computational results.

No chart-level numeric values are extracted in this file. The figures and slides require manual visual verification before any data points, slopes, percentages, or exact objective values are transcribed.

## Sensitivity Category Inventory

| Category | Thesis figures | Presentation source | Extraction status | Status |
|---|---|---|---|---|
| Processing time | Figures 4-5 and 4-6, pages 83-84 | Not separately identified in extracted slide text | Qualitative thesis text is readable; chart-level numeric values need verification | reported in thesis/presentation, not independently verified |
| Due dates | Figures 4-7 and 4-8, page 85 | Not separately identified in extracted slide text | Qualitative thesis text is readable; chart-level numeric values need verification | reported in thesis/presentation, not independently verified |
| Machine availability windows | Figures 4-9 and 4-10, pages 86-87 | Not separately identified in extracted slide text | Qualitative thesis text is readable; chart-level numeric values need verification | reported in thesis/presentation, not independently verified |
| Data-transfer volume | Figures 4-11 and 4-12, page 88 | Not separately identified in extracted slide text | Qualitative thesis text is readable; chart-level numeric values need verification | reported in thesis/presentation, not independently verified |
| Objective weights | Figures 4-13 and 4-14, page 89 | `thesis pw.pptx`, slides 19-20 | Qualitative thesis text is readable; slide 20 labels/chart details need verification | reported in thesis/presentation, not independently verified |

The interpretation bullets below are cautious qualitative paraphrases of thesis/presentation discussion. They are not independently reproduced findings, and no chart-level numeric values are extracted here.

## Processing-Time Sensitivity

Sources:

- `Mr. Ebrahimi-thesis.docx`, Figure 4-5, page 83.
- `Mr. Ebrahimi-thesis.docx`, Figure 4-6, page 84.

Reported thesis interpretation:

- The thesis reports that increasing processing times affects both objective components.
- It reports that, with due dates held fixed, increased processing times are associated with increased delay/tardiness-related behavior.
- It reports that increased processing times are also associated with increased processing-cost-related behavior.
- It also reports that if due dates were increased together with processing times, the first objective could remain unchanged while the cost-related objective could still change.
- The thesis reports that reducing processing times can reduce the second objective and may reduce the first objective until all jobs complete before their due dates.

Status: `reported in thesis/presentation, not independently verified`.

Chart-level numeric values: `needs verification`.

## Due-Date Sensitivity

Sources:

- `Mr. Ebrahimi-thesis.docx`, Figure 4-7, page 85.
- `Mr. Ebrahimi-thesis.docx`, Figure 4-8, page 85.

Reported thesis interpretation:

- The thesis reports that changing due dates has a notable effect on the delay/tardiness-related objective.
- It reports that increasing due dates can reduce the delay/tardiness-related objective until that component reaches zero.
- It reports that decreasing due dates can increase the delay/tardiness-related objective.
- It reports that due-date changes may not directly affect the processing-cost component, but may affect transfer cost indirectly if the sequence or machine assignment of related jobs changes.

Status: `reported in thesis/presentation, not independently verified`.

Chart-level numeric values: `needs verification`.

## Machine Availability-Window Sensitivity

Sources:

- `Mr. Ebrahimi-thesis.docx`, Figure 4-9, page 86.
- `Mr. Ebrahimi-thesis.docx`, Figure 4-10, page 87.

Reported thesis interpretation:

- The thesis reports that changing machine unavailability windows has behavior similar to due-date sensitivity.
- It reports that when machine availability is more restricted, jobs may complete later relative to due dates, affecting the delay/tardiness-related objective.
- It reports that when the unavailable interval is reduced, machines have more available processing time, which can reduce the delay/tardiness-related objective.
- It reports that processing costs may remain unchanged under availability-window changes, while transfer costs may change through altered assignments or sequencing.

Status: `reported in thesis/presentation, not independently verified`.

Chart-level numeric values: `needs verification`.

## Data-Transfer-Volume Sensitivity

Sources:

- `Mr. Ebrahimi-thesis.docx`, Figure 4-11, page 88.
- `Mr. Ebrahimi-thesis.docx`, Figure 4-12, page 88.

Reported thesis interpretation:

- The thesis reports that data-transfer volume can affect both objective components because of precedence-related relationships between jobs.
- It reports that when transfer volume is increased, the model may avoid transfers by assigning related jobs to the same machine, which can affect completion timing.
- It reports that when transfer volume is reduced, jobs may move more freely between machines, which can affect resource use and completion timing.
- The thesis states that after some point, further reduction of transfer volume may have little or no additional effect.

Status: `reported in thesis/presentation, not independently verified`.

Chart-level numeric values: `needs verification`.

## Objective-Weight Sensitivity

Sources:

- `Mr. Ebrahimi-thesis.docx`, Figure 4-13, page 89.
- `Mr. Ebrahimi-thesis.docx`, Figure 4-14, page 89.
- `thesis pw.pptx`, slides 19-20.

Reported thesis interpretation:

- The thesis reports that objective weights are used so the two objective functions can be compared or placed in competition.
- It reports that assigning more weight to the delay/tardiness-related objective makes the model emphasize reducing that component, while cost-related values may increase.
- It reports that assigning more weight to the cost-related objective makes the model emphasize reducing cost, while the delay/tardiness-related component may increase.
- It reports that cost cannot decrease indefinitely because processing cost remains even if transfer cost is reduced.
- The thesis frames this analysis as supporting the need to choose a balanced strategy between the two objective components.

Status: `reported in thesis/presentation, not independently verified`.

Chart-level numeric values: `needs verification`.

Slide notes:

- Slide 19 is titled as sensitivity analysis of objective-function values with respect to different weights.
- Slide 20 appears to contain related visual material, but extracted slide text does not preserve enough labels or chart details for safe transcription. Slide 20 chart details are `needs verification`.
- Slide 21 includes broader conclusion text that refers to the sensitivity analysis. These statements should be treated as thesis-reported interpretation, not independently verified conclusions.

## Verification Boundary

This document summarizes thesis-reported and presentation-reported sensitivity interpretations. It does not claim that:

- the GAMS models were rerun;
- raw solver outputs or logs are included;
- chart values were independently extracted or reproduced;
- sensitivity findings are verified by repository artifacts;
- causal claims have been independently established.

No raw `.lst`, `.gdx`, solver log, or exported result table is currently included for the sensitivity analyses.

## Items Requiring Verification

The following items should be verified before these sensitivity analyses are treated as reproducible results:

- exact chart data behind Figures 4-5 through 4-14;
- exact x-axis and y-axis labels in each figure;
- exact parameter-change levels used in each sensitivity analysis;
- exact objective values plotted in each chart;
- whether the figures are based on the same case-study instance documented in Tables 4-2 through 4-7;
- whether each analysis was run with the direct MIP model, the Benders implementation, or another thesis-era file;
- whether slide 20 contains additional labels or values not captured by plain-text extraction;
- whether slide 21's broad conclusion text should be quoted, paraphrased, or omitted in future public documentation;
- raw solver outputs, run settings, model statuses, solver statuses, and logs for each sensitivity run.

Future work should manually verify the rendered figures and slides, extract chart data only when it can be traced to the source, and compare any extracted values against rerun outputs before making reproducibility claims.
