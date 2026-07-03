# Thesis Content Summary

This document summarizes thesis content in clear English for future repository documentation. It is based on the imported thesis document and presentation, and it avoids long verbatim translation. The summary is descriptive only. It does not claim that computational results have been independently reproduced.

## Sources Reviewed

- `Mr. Ebrahimi-thesis.docx`
  - thesis title and abstract/keyword area;
  - table of contents;
  - Chapter 1: general research context, motivation, objectives, and research questions;
  - Chapter 3: model development;
  - Chapter 4: solution approach and reported computational analysis;
  - Chapter 5: conclusions and future work.
- `thesis pw.pptx`
  - slides 2-8: topic, introduction, and objectives;
  - slides 9-15: proposed model overview;
  - slides 16-20: solution method and reported analysis;
  - slides 21-22: conclusions and future-work themes.

Page and slide references are based on the thesis table of contents and extracted presentation slide numbers. Some terminology remains `needs verification` because Persian-to-English technical phrasing may have multiple defensible translations.

## Thesis Topic and Academic Context

The thesis studies a multi-objective scheduling problem involving unrelated parallel machines. The presentation gives the English title as: "Solving the scheduling problem of multi-objective parallel machines with Benders decomposition algorithm" (`thesis pw.pptx`, slide 2).

Suggested English title, `needs verification`: "Multi-Objective Unrelated Parallel Machine Scheduling Using Benders Decomposition".

The academic context combines:

- operations research;
- mixed-integer programming;
- parallel-machine scheduling;
- cloud-computing-inspired resource allocation;
- multi-objective optimization;
- Benders decomposition.

The thesis positions scheduling as a resource-allocation problem in which jobs must be assigned to machines and sequenced over time. It also connects the scheduling setting to cloud computing, where virtual machines may differ in processing characteristics and may be unavailable during some time intervals.

## Research Motivation

The thesis motivation is that many scheduling studies assume machines are continuously available, while practical systems may include downtime, maintenance, failures, or pre-planned unavailability. The thesis also motivates the work through cloud-computing resource allocation, where task scheduling, resource use, job dependencies, and service timing can all matter.

The thesis states that limited prior work has considered multi-objective unrelated parallel-machine scheduling with the specific combination of cloud-style task dependencies, machine unavailability, and a Benders decomposition solution method. This research-positioning claim should be treated as thesis-reported context and `needs verification` against the cited literature before being reused in formal publication.

Primary source locations:

- `Mr. Ebrahimi-thesis.docx`, Chapter 1, sections 1-1 through 1-4.
- `thesis pw.pptx`, slides 4-8.

## Problem Setting

At a high level, the problem considers jobs or tasks assigned to unrelated parallel machines. Processing times can depend on the job-machine combination. Jobs may have precedence relationships, and some data-transfer or communication cost may occur when related jobs are processed on different machines.

The thesis also discusses:

- release or availability times for jobs;
- due dates for selected jobs;
- machine unavailability intervals;
- assignment of jobs to machine positions;
- objective components related to delay/tardiness and processing/communication cost.

Terminology such as "main jobs," "sub-jobs," "cloud machines," "virtual machines," and "positions" should be standardized later. This terminology is `needs verification` before final public documentation.

Primary source locations:

- `Mr. Ebrahimi-thesis.docx`, Chapter 3, sections 3-2 and 3-3.
- `Mr. Ebrahimi-thesis.docx`, Table 3-1, page 63.
- `thesis pw.pptx`, slides 9-15.

## High-Level Methodology

The thesis develops a mixed-integer programming formulation and discusses a Benders decomposition approach. The observed GAMS files also show two broad model families:

- direct MIP baseline models using `Ebrahimi*.gms`;
- Benders-style models using `BD2*.gms`.

The thesis/presentation report a comparison between CPLEX and Benders for several generated problem sizes, but those values are currently documented only as reported thesis/presentation values. They are not independently reproduced from raw solver outputs in this repository.

The Benders method is described at a high level as splitting a difficult mixed-integer model into a master problem and subproblem structure, adding cuts iteratively until stopping criteria are met. The exact mathematical decomposition and its relation to each GAMS file remain `needs verification`.

Primary source locations:

- `Mr. Ebrahimi-thesis.docx`, Chapter 4, sections 4-1 and 4-2.
- `Mr. Ebrahimi-thesis.docx`, Figures 4-1 and 4-2, pages 71 and 77.
- `thesis pw.pptx`, slide 16.

## High-Level Thesis Structure

The thesis table of contents indicates the following structure:

- Chapter 1: research overview, problem statement, importance, objectives, questions, and thesis structure.
- Chapter 2: background definitions and literature review for scheduling, parallel machines, cloud computing, Benders decomposition, mixed-integer programming, and multi-objective optimization.
- Chapter 3: mathematical modeling of the proposed scheduling problem.
- Chapter 4: solution approach, case study, reported computational comparison, and sensitivity analysis.
- Chapter 5: summary, concluding remarks, and future-work suggestions.

Primary source:

- `Mr. Ebrahimi-thesis.docx`, table of contents.

## Reported Analysis Areas

The thesis includes reported computational and sensitivity-analysis material. These are thesis-reported items only and are not independently reproduced in this repository.

Reported areas include:

- a small case study;
- assignment and schedule tables;
- objective values reported near the case-study solution;
- a Benders convergence figure;
- a CPLEX-vs-Benders comparison table;
- sensitivity analysis for processing times, due dates, machine availability windows, data-transfer volume, and objective weights.

Detailed numerical extraction is intentionally not included in this summary. Reported values are documented separately under `results/reported_from_thesis/`.

Primary source locations:

- `Mr. Ebrahimi-thesis.docx`, Chapter 4, sections 4-3 through 4-5.
- `Mr. Ebrahimi-thesis.docx`, Tables 4-6 through 4-8, pages 80-82.
- `Mr. Ebrahimi-thesis.docx`, Figures 4-4 through 4-14, pages 81-89.
- `thesis pw.pptx`, slides 17-21.

## Future-Work Themes

The thesis and presentation suggest several future research directions. In cautious English summary, these include:

- comparing the model with metaheuristic approaches;
- testing the model on real-world instances;
- considering uncertainty in machine availability, processing time, or job availability;
- adding data-transfer speed constraints;
- extending the cloud-computing setting with richer infrastructure factors such as location, failure costs, bandwidth, and resource use;
- considering additional objectives such as machine idle time;
- allowing machines to process only subsets of jobs;
- adding sequence-dependent setup times;
- exploring acceleration strategies for Benders decomposition.

These future-work items are summarized from thesis and presentation materials and should not be treated as completed work.

Primary source locations:

- `Mr. Ebrahimi-thesis.docx`, Chapter 5, section 5-4.
- `thesis pw.pptx`, slide 22.

## Verification Boundary

This summary is an extraction aid. It does not replace:

- a formal translation of the thesis;
- a validated mathematical formulation;
- a canonical model-file selection;
- rerun solver outputs;
- independent reproduction of reported results.

Any public-facing version should keep this boundary explicit unless future reproducibility work provides raw computational artifacts.
