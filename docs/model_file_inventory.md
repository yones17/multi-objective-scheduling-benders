# Model File Inventory

The table below describes the public GAMS files retained in this branch. `Organized public copy` means the file was copied into the public repository structure without mathematical refactoring, validation, or rerunning.

Private raw material included additional backup and experimental variants, including `.~gm` files. Those files are intentionally excluded from this public branch to avoid publishing confusing or uncertain backup artifacts. Their differences remain a `needs verification` item for any future private reproducibility audit.

| File | Family | Instance size observed | Organized public copy | Status | Notes |
|---|---|---:|---|---|---|
| `BD2.gms` | Benders | 7 jobs, 2 machines | `model/cleaned_gams/benders/BD2.gms` | needs verification | Benders variant retained as public `.gms` file. |
| `BD2-v2.gms` | Benders | 7 jobs, 2 machines | `model/cleaned_gams/benders/BD2-v2.gms` | needs verification | Variant of `BD2`; canonical status not verified. |
| `BD2-v3.gms` | Benders | 20 jobs, 5 machines | `model/cleaned_gams/benders/BD2-v3.gms` | needs verification | Larger Benders variant. |
| `BD2-v4.gms` | Benders | 15 jobs, 4 machines | `model/cleaned_gams/benders/BD2-v4.gms` | needs verification | Benders variant; private backup differences need verification. |
| `Ebrahimi_v2.gms` | Direct MIP baseline | 7 jobs, 2 machines | `model/cleaned_gams/milp_baseline/Ebrahimi_v2.gms` | needs verification | Solves combined objective `z3`; private backup differed in `z3` formula. |
| `Ebrahimi_v3.gms` | Direct MIP baseline | 11 jobs, 3 machines | `model/cleaned_gams/milp_baseline/Ebrahimi_v3.gms` | needs verification | Direct MIP baseline variant; private backup differed in solver time limit. |
| `Ebrahimi_v4.gms` | Direct MIP baseline | 15 jobs, 4 machines | `model/cleaned_gams/milp_baseline/Ebrahimi_v4.gms` | needs verification | Actively solves `z1`, `z2`, and `z3`. |
| `Ebrahimi_v5.gms` | Direct MIP baseline | 20 jobs, 5 machines | `model/cleaned_gams/milp_baseline/Ebrahimi_v5.gms` | needs verification | Larger direct MIP variant; solves `z1`, `z2`, and `z3`. |

No `.lst`, `.gdx`, `.xlsx`, `.csv`, solver log, or standalone verified result table is included in this public branch. Instances appear embedded in the public GAMS sources rather than stored in separate data files.
