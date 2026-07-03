# Problem Description

This project concerns a multi-objective scheduling problem for unrelated parallel machines, with a cloud-computing-inspired interpretation in which jobs or tasks are assigned and sequenced across heterogeneous processing resources.

The available GAMS files indicate a finite set of jobs, a finite set of machines, processing times indexed by job and machine, precedence relations among jobs, and additional cost/value terms associated with machine transitions or precedence-linked task interactions. The exact final thesis terminology should be verified against the thesis documents before being used in formal publication or admissions material.

At a high level, the model family appears to address:

- assignment of jobs to machines and sequence positions;
- completion-time and tardiness-related quantities;
- precedence constraints among selected jobs;
- machine-dependent processing costs or transfer/interference costs;
- multiple objective components represented in the code as `z1`, `z2`, and `z3`.

The repository documentation intentionally avoids unsupported numerical claims. The code was not rerun during cleanup, and no standalone solver output files were found.
