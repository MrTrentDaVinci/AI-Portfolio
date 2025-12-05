
SCIS v4.0 — Complete Improvements Summary (All Versions → Unified)
Summary & Coordination Intelligence System — Canonical Specification v4.0
This document unifies every improvement from SCIS v1 → v4, forming a stable, complete, modern specification for LLM-driven software development at scale.
SCIS v4.0 is a deterministic, map-first, phase-driven orchestration system designed for AI-assisted multi-program development. It eliminates ambiguity, enforces structural clarity, and supports optional dynamic resources (DBs, assets) without compromising the flat-file architecture.

1. Global Naming Rule (Finalized in v3.4 → v4.0)
✔ SCIS filenames contain no words, no descriptors
✔ Only this format is allowed:
A#p#s#f#.<ext>

Where:
A# = program / global system (A0)


p# = phase (p0–p7, p41, p99, etc.)


s# = section (0–9)


f# = file sequence


<ext> = md, json, py, ts, go, sql, db, etc.


This guarantees perfect parseability and prevents the LLM from ever guessing filenames.

2. Mandatory Component Numbering (Introduced v3.1, enforced v4.0)
Every code file (s0–s4) must include:
✔ Mandatory SCIS Header
# File: A#p#s#f#.ext
# Purpose: <one exact sentence>
# Phase created: P#
# Components: CA#p#s#f#.#, ...
# NonComponents: NCA#p#s#f#.#, ...

✔ In-Code Identifiers
Components (functions, classes, exported modules):
 CA#p#s#f#.#


Non-components (helpers, constants):
 NCA#p#s#f#.#


This creates global unique IDs for every entity.

3. The Minimal NCCF Schema (v3.4 → v4.0)
Located in A0p0s0f4.json.
Final NCCF fields:
component_id
title
phase_declared
purpose
inputs
outputs
dependencies
constraints

Optimized for:
Token efficiency


LLM reasoning


Automated verification



4. Dependency System Overhaul (Completed in v3.6)
4.1 Program-Level Dependency Maps
Every program A# includes:
A#p0s0f4.json

Contains only internal dependency relationships, not global ones.
4.2 A0-Level Global Dependency Map
A0p0s0f6.json

Contains:
External dependencies


Cross-program dependencies


System-level relationships


No program-internal dependencies appear here.
This clean split prevents dependency confusion and is now mandatory in v4.0.

5. Global MEM + Section MEM System (Final Form in v4.0)
✔ Section MEMs
Any section may include a MEM file:
A#p#s#f#.json

(Most often f5, but not required.)
✔ Global MEM (A0p0s0f10.json)
Now includes:
Program list


All section-level MEM references


All program dependency maps


Pointer to A0 global dependency map


Optional DB definitions


NCCF reference


Token-efficient summaries


Global MEM is now the entry point for LLM reasoning in large projects.

6. Optional Database System (Fully Integrated in v4.0)
SCIS now supports optional databases as long as they follow strict mapping rules.
✔ Every database requires:
A .db file (or pointer):
 A#p#s#f#.db


A JSON explainer file:
 A#p#s#f#.json


✔ Allowed DB types:
Component progress/state DB


Test result DB


Build artifact DB


Semantic index / vector DB


Asset DB (images, embeddings, audio, PDFs)


✔ Everything must be mapped:
Program map


Section map


Global MEM


✔ Optional JSON/SQL scripts allowed:
A#p#s#f#.sql
A#p#s#f#.json  // explains script behavior

LLMs may generate DB scripts but must not run them automatically.

7. Full Multimodal Support (Assets, Embeddings, Binaries)
v4.0 allows multimodal workflows through DB-backed resources:
images


audio


PDFs


OCR results


vector embeddings


diagrams


binaries/artifacts


All handled via .db + .json pairing and declared in maps.

8. Enhanced LLM Operating Principles (Finalized in v4.0)
LLMs must:
✔ Never guess
filenames


components


schemas


ports


endpoints


DB tables


✔ Always consult
Section maps


Program maps


A0 maps


Global MEM


NCCF


✔ Stay in the active phase
Never read or write future phases


Never modify past-phase files


Never generate unsolicited files


✔ Obey map-first ordering
Maps → Contracts → MEMs → Code

9. Improved Phase Model (Clarified and Socialized in v4.0)
Phases (P0–P7, P99) remain unchanged but v4.0 includes:
explicit sub-phase syntax (P4.1 → p41)


deterministic phase-locking behavior


Pre-build and post-build reports per phase


Updated development masters


Clear separation of maps vs. code generation boundaries



10. Expansion of A0 File Registry (v4.0 Final Set)
Required global files:
File
Purpose
A0p0s0f0.md
Global system summary
A0p0s0f1.md
Global folder map
A0p0s0f2.md
Architecture overview
A0p0s0f3.md
Program/section index
A0p0s0f4.json
NCCF schema
A0p0s0f5.json
Graph schema definition
A0p0s0f6.json
Global dependency graph
A0p0s0f7.md
Phase Complete Map master
A0p0s0f8.md
Linter rules (human)
A0p0s0f9.json
Linter rules (machine)
A0p0s0f10.json
Global MEM (section+DB index)

These are now canonical for v4.0.

11. Optional Runtime DB for Progress Tracking
(Upgraded from v3.6 into a formal feature)
SCIS v4.0 supports:
task tracking


component status


“to-do vs done”


timestamps


human approvals


automated agent history


All inside a Progress DB, mapped like any SCIS resource.
This enables long-running agent workflows with persistent memory.

12. Automation / Tooling Enhancements (v4.0)
With all maps, MEMs, DB explainers, and component numbers in place, v4.0 supports:
auto-diagramming


auto impact analysis


auto dependency tracing


auto documentation


auto test generation


multi-agent orchestration


All without any heuristic inference.

13. Stabilization & Scalability Improvements
Final v4.0 design supports:
multi-program mega-repos


multimodal data


10k+ components


multi-agent LLM workflows


deterministic reproducibility


zero-ambiguity coordination


token-efficient retrieval


This marks SCIS v4.0 as the first fully deterministic LLM development framework suitable for enterprise work.

14. Core Principles (v4.0 Final)
1. Maps-first, always
2. No guessing, no inference
3. Everything fully declared
4. Flat, parseable folder
5. Deterministic phase progression
6. File headers and component IDs
7. Optional DBs only when mapped
8. Global MEM as system entry point
9. NCCF minimality
10. Multi-program correctness guaranteed
These principles form the backbone of SCIS v4.0.



