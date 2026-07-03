# Assignment and Schedule Tables Reported in Thesis

This document inventories and cautiously transcribes case-study assignment and schedule material reported in the thesis. These values are reported in the thesis, not independently verified. They are not raw solver outputs and do not establish reproducibility.

Every extracted value in this document should be read with the status: `reported in thesis, not independently verified`.

Primary source:

- `Mr. Ebrahimi-thesis.docx`, Chapter 4 case-study section, Tables 4-2 through 4-7, pages 78-81.

## Purpose of the Case-Study Section

Chapter 4 presents a small case study to illustrate the model and compare the reported GAMS model output with a manually discussed Gantt-chart-style solution. The thesis reports assignment, timing, and objective-value lines for this case study.

This document records only what is clearly readable from the thesis extraction. It does not claim that the case study has been rerun or verified from raw GAMS/CPLEX outputs.

## Inventory of Case-Study Tables

| Thesis item | Reported source location | Content type | Extraction status | Status |
|---|---|---|---|---|
| Table 4-2 | `Mr. Ebrahimi-thesis.docx`, page 78 | Precedence function | Table structure visible, but row/column labels and values are not safely readable from plain-text extraction | reported in thesis, not independently verified; needs verification |
| Table 4-3 | `Mr. Ebrahimi-thesis.docx`, page 78 | Processing times, due dates, and job release data | Numeric values are partly readable; job labels are blank in extraction | reported in thesis, not independently verified; needs verification |
| Table 4-4 | `Mr. Ebrahimi-thesis.docx`, page 79 | Data-transfer volumes | Numeric values are partly readable; row/column labels are blank in extraction | reported in thesis, not independently verified; needs verification |
| Table 4-5 | `Mr. Ebrahimi-thesis.docx`, page 79 | Processing costs, transfer costs, and machine availability | Numeric values are partly readable; machine labels are blank in extraction | reported in thesis, not independently verified; needs verification |
| Table 4-6 | `Mr. Ebrahimi-thesis.docx`, page 80 | Assignment of jobs to machines and positions | Assignment entries are readable | reported in thesis, not independently verified |
| Table 4-7 | `Mr. Ebrahimi-thesis.docx`, page 81 | Start/end intervals by machine and position | Timing intervals are readable | reported in thesis, not independently verified |

## Table 4-2: Precedence Function

The thesis identifies Table 4-2 as the precedence function for the case-study jobs.

Plain-text extraction did not preserve enough row labels, column labels, or precedence values to transcribe the table safely. This table should be manually verified against the original DOCX/PDF rendering before being converted into a structured data artifact.

Status: `reported in thesis, not independently verified; needs verification`.

## Table 4-3: Processing Times, Due Dates, and Release Data

The following values are readable from the extracted table, but job labels are not safely readable. Rows are therefore identified only by extracted row order, not by inferred job names.

| Extracted row | Release/availability | Due date | Processing time on machine 2 | Processing time on machine 1 | Job label | Status |
|---:|---|---|---:|---:|---|---|
| 1 | `-` | 17 | 5 | 4 | needs verification | reported in thesis, not independently verified |
| 2 | `-` | 20 | 3 | 6 | needs verification | reported in thesis, not independently verified |
| 3 | `-` | `-` | 4 | 4 | needs verification | reported in thesis, not independently verified |
| 4 | `-` | `-` | 6 | 4 | needs verification | reported in thesis, not independently verified |
| 5 | `-` | `-` | 2 | 7 | needs verification | reported in thesis, not independently verified |
| 6 | `-` | `-` | 8 | 3 | needs verification | reported in thesis, not independently verified |
| 7 | `-` | `-` | 1 | 2 | needs verification | reported in thesis, not independently verified |

The meaning of `-` is transcribed as shown and needs verification before use as structured data.

## Table 4-4: Data-Transfer Volumes

The thesis identifies Table 4-4 as the data-transfer volume table for the case-study jobs.

Some numeric entries are readable, but row and column labels were not safely extracted. The following partial transcription preserves only the visible values by row order.

| Extracted row | Extracted value A | Extracted value B | Label/status | Status |
|---:|---|---|---|---|
| 1 | `-` | 10 | row/column labels need verification | reported in thesis, not independently verified |
| 2 | `-` | 20 | row/column labels need verification | reported in thesis, not independently verified |
| 3 | 20 | `-` | row/column labels need verification | reported in thesis, not independently verified |
| 4 | 15 | `-` | row/column labels need verification | reported in thesis, not independently verified |
| 5 | 20 | `-` | row/column labels need verification | reported in thesis, not independently verified |

This table should not be used as a complete data-transfer matrix until manually verified.

## Table 4-5: Costs and Machine Availability

The thesis identifies Table 4-5 as reporting processing cost, data-transfer cost, and machine unavailability information.

The following entries are readable, but the final machine labels were blank in plain-text extraction. The rows are therefore identified by extracted row order.

| Extracted row | Transfer cost to column 1 | Transfer cost to column 2 | Initial machine unavailability | Machine unavailability interval | Processing cost for machine | Machine label | Status |
|---:|---|---|---:|---|---:|---|---|
| 1 | 10 | `-` | 1 | `(10-12)` | 100 | needs verification | reported in thesis, not independently verified |
| 2 | `-` | 10 | 2 | `(5-17)` | 150 | needs verification | reported in thesis, not independently verified |

Column direction and machine labels require manual verification because RTL/Persian table layout may affect interpretation.

## Table 4-6: Assignment of Jobs to Machines

The following assignment entries are readable from Table 4-6. The job and machine labels are translated into cautious ASCII English labels to avoid corrupted Persian/RTL rendering in this Markdown file. The original Persian labels and the position order still require manual verification against the rendered thesis table.

| Inferred machine label | Position 1 | Position 2 | Position 3 | Position 4 | Status |
|---|---|---|---|---|---|
| Machine 1 (inferred; needs verification) | Job 4 (inferred; needs verification) | Job 3 (inferred; needs verification) | Job 6 (inferred; needs verification) | Job 1 (inferred; needs verification) | reported in thesis, not independently verified; translated labels need verification |
| Machine 2 (inferred; needs verification) | Job 7 (inferred; needs verification) | Job 5 (inferred; needs verification) | Job 2 (inferred; needs verification) | `-` | reported in thesis, not independently verified; translated labels need verification |

Note: the source table is right-to-left. The position order above follows the extracted headers interpreted as first through fourth position. This ordering should be manually verified against the rendered thesis table.

## Table 4-7: Start and End Times by Position

The following timing intervals are readable from Table 4-7. Machine labels are translated into cautious ASCII English labels to avoid corrupted Persian/RTL rendering in this Markdown file.

| Inferred machine label | Position 1 interval | Position 2 interval | Position 3 interval | Position 4 interval | Status |
|---|---|---|---|---|---|
| Machine 1 (inferred; needs verification) | `(1-5)` | `(5-9)` | `(12-15)` | `(15-19)` | reported in thesis, not independently verified; translated labels need verification |
| Machine 2 (inferred; needs verification) | `(2-3)` | `(3-5)` | `(17-20)` | `-` | reported in thesis, not independently verified; translated labels need verification |

Note: the source table is right-to-left. The position order above follows the extracted headers interpreted as first through fourth position. This ordering should be manually verified against the rendered thesis table.

## Reported Objective Lines Near Table 4-7

The following objective-value lines are clearly readable in the thesis text near the case-study model output discussion:

| Reported line | Source | Status |
|---|---|---|
| `z1.L = 2.000` | `Mr. Ebrahimi-thesis.docx`, Chapter 4 text near Tables 4-6 and 4-7 | reported in thesis, not independently verified |
| `z2.L = 2550.000` | `Mr. Ebrahimi-thesis.docx`, Chapter 4 text near Tables 4-6 and 4-7 | reported in thesis, not independently verified |

These lines are reported thesis values only. They have not been verified against raw solver output.

## Needs Verification

The following issues should be resolved before converting these case-study tables into reproducible data artifacts:

- Table 4-2 precedence-function labels and values were not safely extracted.
- Table 4-3 job labels were blank in extraction.
- Table 4-4 row and column labels were blank in extraction.
- Table 4-5 machine labels and transfer-cost column direction require manual verification.
- Tables 4-6 and 4-7 are right-to-left source tables, so position order should be checked against the rendered thesis document.
- The meaning of `-` entries should be verified before encoding them as missing, zero, not applicable, or another value.
- The objective lines should be checked against raw solver output if `.lst`, `.gdx`, logs, or rerun artifacts become available.

## Verification Boundary

This document transcribes thesis-reported case-study material only. It does not claim that:

- the GAMS files were rerun;
- these values are raw solver outputs;
- the assignments or times are independently reproduced;
- the reported objective lines are verified by repository artifacts;
- the case-study tables are complete machine-readable instances.

Future work should manually verify the rendered thesis tables, map each row and column to canonical job and machine identifiers, extract the corresponding GAMS instance data, rerun the relevant model, and archive raw solver artifacts before making reproducibility claims.
