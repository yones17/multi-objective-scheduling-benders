# Reproducibility Plan

This document describes future steps for turning the public documentation and model-code layer into a more reproducible research repository. Reproducibility has not yet been achieved. The current public branch is a sanitized documentation/code branch, not a validated computational package.

## Current Repository Evidence

The public branch currently contains:

- organized, non-refactored public copies of selected `.gms` files under `model/cleaned_gams/`;
- documentation describing the observed model families, limitations, and file inventory;
- reported thesis/presentation result values under `results/reported_from_thesis/`.

The reported values in `results/reported_from_thesis/` are transcribed summaries from thesis and presentation materials reviewed during private extraction. They are not independently reproduced from raw solver outputs. The raw thesis DOCX/PPTX files and private backup artifacts should be retained separately outside this public branch.

## What Is Currently Preserved

This public branch preserves:

- selected organized `.gms` model files for Benders and direct MIP variants;
- extracted English documentation;
- cautiously transcribed reported-result summaries;
- limitations and reproducibility-planning notes.

Private raw materials should be retained separately for auditability. The public GAMS copies are organized copies, not mathematically refactored, corrected, validated, or rerun versions.

## What Is Not Yet Reproducible

The repository does not yet include:

- standalone GAMS `.lst` files;
- GAMS `.gdx` files;
- CPLEX/GAMS raw solver logs;
- exported raw result tables;
- a documented rerun environment;
- a verified mapping from each thesis experiment to a specific canonical GAMS file;
- machine-readable instance files separated from the GAMS source.

The thesis and presentation report computational results, but those results have not yet been independently reproduced.

## Identify Canonical GAMS Files

Future work should identify which GAMS file is canonical for each model and experiment.

Planned steps:

1. Compare the `BD2*.gms` files with the thesis-reported Benders experiments.
2. Compare the `Ebrahimi*.gms` files with the thesis-reported direct MIP/CPLEX experiments.
3. Resolve differences between retained public `.gms` files and private backup variants, where available.
4. Record each file's role as one of:
   - canonical candidate;
   - backup or experimental variant;
   - obsolete or superseded variant;
   - needs verification.
5. Document unresolved differences without deleting raw files.

## Extract Embedded Instances

The imported GAMS files appear to embed instance data directly in source code. No separate data files were found.

Planned steps:

1. Extract job sets, machine sets, processing-time tables, precedence matrices, cost matrices, release data, due-date data, and availability-window data from the GAMS files.
2. Store extracted instances in a structured format such as CSV, JSON, or GDX-derived tables.
3. Preserve a source trace from each extracted instance back to the exact GAMS file and line range.
4. Mark any ambiguous instance field as `needs verification`.
5. Keep private raw materials unchanged during extraction.

## Rerun Selected Instances

Future reruns should be performed only after canonical files and instance mappings are identified.

Planned steps:

1. Record the GAMS version, CPLEX version, operating system, solver options, and hardware used for reruns.
2. Start with the smallest reported case study before attempting larger experiments.
3. Rerun selected direct MIP/CPLEX and Benders files without changing mathematical logic.
4. Save solver status, model status, objective values, runtimes, and termination reason.
5. Treat any mismatch with thesis-reported values as `needs investigation`, not as an error in the thesis or code until verified.

## Archive Raw Solver Outputs

Future reproducible runs should archive raw computational artifacts.

Planned outputs:

- `.lst` files;
- `.gdx` files, where generated;
- solver logs;
- structured result tables;
- run metadata;
- checksums for input files and output artifacts.

These files should be stored under `results/raw/` and summarized under `results/processed/` only after the run procedure is documented.

## Compare Reruns Against Thesis-Reported Values

Reported thesis/presentation values should remain separate from rerun outputs.

Planned comparison workflow:

1. Keep thesis-reported values under `results/reported_from_thesis/`.
2. Store rerun outputs under `results/raw/`.
3. Store processed comparison tables under `results/processed/`.
4. Compare objective values, runtimes, status codes, and termination behavior.
5. Label every comparison row as one of:
   - matches reported thesis value;
   - differs from reported thesis value;
   - not comparable;
   - needs verification.

No future comparison should claim reproducibility unless the raw run artifacts and environment metadata are available.

## Sanitized Public Repository Plan

This public branch intentionally excludes raw thesis Word and PowerPoint files. Private raw materials remain useful for audit and future extraction but should not be required for ordinary public review.

Future public-release steps:

1. Extract academically useful content into English documentation.
2. Preserve source references to thesis sections, pages, tables, figures, and slides.
3. Keep raw thesis DOCX/PPTX files outside the public branch, while preserving source references in summaries.
4. Keep GAMS source files only if they are appropriate to publish.
5. Replace raw thesis files with concise summaries, reported-result tables, and reproducibility notes.
6. Include a clear statement that reported thesis results are not independently reproduced unless rerun artifacts are later added.

This plan is intentionally conservative. It prioritizes traceability, preservation, and defensible claims over rapid cleanup.
