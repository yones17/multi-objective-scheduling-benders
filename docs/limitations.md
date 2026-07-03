# Limitations

This public branch is a sanitized documentation and model-code layer derived from private thesis project material. It is not a fully reproducible computational package.

## Public Branch Scope

Raw thesis DOCX/PPTX files, private raw imports, original GAMS archive copies, and `.~gm` backup variants are intentionally not included in this public branch. The public branch keeps organized `.gms` model copies, cautious documentation, and transcribed reported-result summaries.

## Missing Solver Outputs

No standalone solver outputs, logs, `.lst`, `.gdx`, `.xlsx`, `.csv`, or verified result tables are included in this public branch. The GAMS files include `display` statements, but no separate exported result artifacts are present.

## Embedded Instances

No separate data or instance files were found. The instances appear embedded directly in the GAMS files through sets, parameters, and tables.

## Uncertain Canonical Version

The canonical model version is not yet established. Multiple files represent variants by size, method, objective handling, and solver settings.

## Backup Differences

Private raw material included `.~gm` backup files that were not always identical to their matching `.gms` files. Those backup variants are excluded from this public branch. Known private-archive differences included:

- `Ebrahimi_v2.gms` and `Ebrahimi_v2.~gm` differ in the combined objective definition.
- `Ebrahimi_v3.gms` and `Ebrahimi_v3.~gm` differ in solver time limit.
- `Ebrahimi_v4.gms` and `Ebrahimi_v4.~gm` differ in active solve statements.
- `BD2-v4.gms` and `BD2-v4.~gm` differ in embedded due-date-style values.

All such private backup differences remain `needs verification`.

## No Rerun Claims

The code was not rerun during repository cleanup. No runtime, objective value, optimality gap, convergence behavior, or performance comparison should be claimed from this repository unless produced by a future documented computational experiment.

## Documentation Scope

The current documentation is intentionally cautious. It summarizes structures visible in the code, but it does not replace a formal mathematical derivation, code validation, or independent replication.
