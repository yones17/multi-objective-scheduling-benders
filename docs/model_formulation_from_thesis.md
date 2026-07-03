# Model Formulation From Thesis

This document summarizes the mathematical formulation described in the thesis, with limited consistency checks against the imported GAMS files. It is an extraction aid, not a validated formulation. The GAMS files were not modified or rerun, and the formulation has not been independently reproduced from solver outputs.

Primary sources:

- `Mr. Ebrahimi-thesis.docx`, Chapter 3, especially sections 3-2, 3-3, and 3-4.
- `Mr. Ebrahimi-thesis.docx`, Table 3-1, page 63.
- `Mr. Ebrahimi-thesis.docx`, Table 3-2, page 67.
- `thesis pw.pptx`, slides 9-15.

Some mathematical symbols and equations appear in Word equation objects or slide objects that are not fully reliable in plain-text extraction. Where the exact symbol or equation could not be checked safely, this document uses high-level descriptions and marks the item as `needs verification`.

## Purpose of the Mathematical Model

The thesis presents a mixed-integer scheduling model for assigning and sequencing jobs on unrelated parallel machines in a cloud-computing-inspired setting. The model treats virtual machines as parallel machines with different processing characteristics. The purpose is to schedule jobs while considering precedence relationships, due dates, machine availability, processing cost, and communication or data-transfer cost.

The thesis describes the problem as a multi-objective mixed-integer model. The two main objective components described in Chapter 3 are:

- minimizing total job delay or tardiness;
- minimizing execution and communication/data-transfer costs.

This summary does not claim that the formulation has been validated, solved, or reproduced.

## Assumptions Described in the Thesis

The thesis states or implies the following assumptions in Chapter 3:

- Jobs are real-time, non-preemptive jobs.
- Each main job may include multiple sub-jobs.
- Relationships between main jobs and sub-jobs are allowed.
- A job cannot be processed until its required predecessor or related sub-jobs have been completed.
- Jobs may be unavailable at time zero, so release or availability times may be considered.
- Each job or sub-job must be processed by one machine.
- The thesis discusses non-preemptive processing and notes that interrupted processing would not simply resume; the exact operational interpretation needs verification.
- Machines are modeled as cloud or virtual machines with different speeds and execution costs.
- Each machine can process at most one job at a time.
- Each machine has ordered positions to which jobs can be assigned.
- Machines may be initially unavailable and may also have a planned secondary unavailability interval.
- Communication cost between machines is described as symmetric.
- Communication cost is zero when related jobs are processed on the same machine.

These assumptions are summarized from `Mr. Ebrahimi-thesis.docx`, Chapter 3, section 3-3. The exact technical wording should be verified against the original Persian thesis before formal publication.

## Sets and Indices

Table 3-1 gives the model naming conventions for indices, sets, parameters, and variables. Plain-text DOCX extraction preserved the descriptions, but not all mathematical symbols.

The formulation described in the thesis uses indices for:

- jobs;
- machines;
- positions on each machine.

The formulation uses sets for:

- all jobs;
- all machines;
- machine positions.

The imported GAMS files use symbol names consistent with this structure, including job index `i`, machine index `j`, and position index `k`. This GAMS observation is a consistency check only; the canonical thesis notation remains `needs verification` where equation-object symbols were not extracted reliably.

## Parameters

Table 3-1 and the surrounding Chapter 3 text describe parameters for:

- job release or availability time;
- job processing time on each machine;
- job due date;
- initial machine availability or release time;
- secondary machine unavailability interval;
- a large positive constant;
- predecessor relationships among jobs;
- execution cost on each machine;
- data-transfer cost between pairs of machines;
- data volume transferred between related jobs.

The imported GAMS files use parameter/table names that appear consistent with this list, including:

- `P(i,j)` for processing time by job and machine;
- `pre(i,o)` for precedence relationships;
- `cjl(j,l)` for machine-to-machine communication or transfer cost;
- `V(i,o)` for data volume or value associated with related jobs;
- due-date, release-time, machine-cost, and availability-style parameters.

The exact mapping between every thesis parameter and every GAMS symbol is `needs verification`, especially because there are multiple GAMS variants and backup files.

## Decision Variables

Table 3-1 describes binary and continuous decision variables. Plain-text extraction preserved the descriptions but not all symbols.

The thesis formulation includes a binary assignment variable described as equal to 1 when a job is assigned to a specific machine and position, and 0 otherwise.

It also includes a binary variable described as indicating whether a position occurs during a machine unavailability period. The exact role of this variable in the unavailability constraints is `needs verification`.

The formulation includes continuous or non-binary variables for:

- completion time of each job;
- start time of each position on each machine.

The imported GAMS files use variables that appear consistent with these descriptions, including `X(i,j,k)`, `y(j,k)`, `C(i)`, and `st(j,k)`. These names are reported as observed GAMS structure, not as a verified final thesis notation.

## Linearization Variable

Chapter 3, section 3-4 states that the second objective contains a product of two integer variables, making the model nonlinear. The thesis then introduces an additional binary variable and constraints to linearize that product.

Table 3-2 describes this linearization variable as equal to 1 when one job assigned to a machine-position combination is a predecessor of another job assigned to another machine-position combination, and 0 otherwise. Plain-text extraction did not preserve the full symbolic notation.

The imported GAMS files use an auxiliary binary variable `A(i,j,o,l,k,kp)` in expressions involving precedence, assignment, transfer cost, and data volume. This appears consistent with the linearization described in the thesis, but the exact one-to-one notation mapping is `needs verification`.

## Objective Components

Chapter 3 describes two objective functions:

- The first objective is described as a delay/tardiness-related component involving job completion times and due dates. The exact mathematical expression and whether the best English term is delay, tardiness, or lateness remains `needs verification`.
- Objective 2 minimizes execution and communication costs. The thesis text describes one part as total processing or execution cost, and another part as data-transfer cost when related jobs are processed on different machines.

The imported direct MIP GAMS files define objective variables `z1`, `z2`, and `z3`. Source inspection suggests:

- `z1` corresponds to the total delay or tardiness component.
- `z2` corresponds to processing plus communication/data-transfer cost.
- `z3` is a combined objective used in at least some GAMS variants.

The exact thesis definition of `z3` is `needs verification`. In the observed GAMS files, most `.gms` files define `z3` as a sum of `z1` and `z2`, while at least one backup variant uses a weighted expression. This difference should be resolved before treating any file as canonical.

No numerical objective values are added in this document.

## High-Level Constraint Groups

Because exact equation extraction from the DOCX is not fully reliable, this section summarizes the constraint groups described in Chapter 3 rather than rewriting equations.

The thesis describes constraint groups for:

- assigning each job to exactly one machine-position combination;
- ensuring each machine position receives at most one job;
- enforcing initial machine unavailability, so the first used position on a machine starts after the machine becomes available;
- enforcing job release or availability times;
- sequencing positions on the same machine so a later position starts after the previous assigned job has completed;
- handling planned machine unavailability windows, including constraints that place processing before or after an unavailable interval;
- defining or bounding job completion times from assigned position start times and processing durations;
- enforcing precedence relationships between jobs;
- filling machine positions in order to avoid scattered assignment across positions;
- enforcing sign, binary, or domain restrictions;
- linearizing the product of assignment-related binary variables used in the communication-cost component.

The thesis notes that some constraints are adapted from prior literature. Specific citation mapping for each constraint group should be verified before reuse in academic writing.

## Relationship to Observed GAMS Files

The observed GAMS files appear to implement variants of the thesis formulation:

- `Ebrahimi*.gms` files appear to be direct MIP or CPLEX-oriented model variants.
- `BD2*.gms` files appear to implement a Benders-style decomposition variant of related model logic.
- The GAMS files embed instance data directly in the source files.
- Multiple instance sizes and backup variants exist.
- Private raw material included some `.gms` and `.~gm` variants that differed in objective definitions, solver settings, or embedded data. The `.~gm` backup variants are excluded from this public branch.

These are observed repository facts from file inspection. They do not prove that any specific GAMS file is the canonical implementation of Chapter 3. The final canonical mapping between thesis formulation, slides, and GAMS variants remains `needs verification`.

## Uncertain Points / Needs Verification

The following points should be verified before this formulation is used as final documentation:

- exact English translation of the thesis title and model terminology;
- exact symbols in Table 3-1 and Table 3-2, because some equation-object symbols were not extracted as plain text;
- exact mathematical expressions for all objectives and constraints;
- whether delay, tardiness, or lateness is the best English term for the first objective;
- exact treatment of due dates for main jobs versus sub-jobs;
- exact role of release times and machine initial availability in every model variant;
- exact meaning and notation of the machine secondary unavailability interval;
- exact definition of the communication/data-transfer volume parameter;
- exact definition of `z3` in the thesis and which GAMS variant implements it canonically;
- whether the Benders files use the same formulation, a reformulated version, or an experimental variant;
- whether slides 9-15 contain formula details that differ from the thesis text or GAMS source.

## Notes for Future Validation

Future validation should proceed conservatively:

1. Extract Table 3-1 and Table 3-2 with equation-object-aware tooling or manual review.
2. Transcribe the Chapter 3 objective functions and constraints into a separate checked formulation document.
3. Map every thesis symbol to the corresponding GAMS symbol, if present.
4. Compare direct MIP and Benders GAMS variants to identify the canonical implementation.
5. Extract embedded instances from GAMS files into separate data artifacts.
6. Rerun selected instances in a documented GAMS/CPLEX environment.
7. Archive `.lst`, `.gdx`, solver logs, and structured result tables.
8. Compare rerun outputs against thesis-reported values without claiming reproduction until raw artifacts and environment metadata are available.

Until these steps are complete, this document should be treated as a cautious thesis-content extraction rather than a final mathematical specification.
