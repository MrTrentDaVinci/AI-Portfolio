** SCIS — Structured, Contract-Driven, Deterministic Software Framework (v4.x)
One-Sentence Definition (LLM-Safe)
SCIS is a deterministic, map-authoritative software framework in which all structure, behavior, metrics, tools, and evolution are explicitly declared, ID-addressable, role-bounded, and phase-locked, enabling humans and LLMs to design, build, support, reconstruct, and evolve software without inference, scanning, or loss of intent.

Absolute Non-Negotiables
If any rule below is violated, SCIS is not being followed.
Maps are the source of truth. Code is never authoritative.
Nothing may be created, modified, accessed, or depended on unless it is declared in maps.
No inference, scanning, or “reasonable assumptions.”
Every measurable thing emits declared metrics with explicit roles.
Metrics may only influence actions permitted by their role.
Lifecycle stages, phases, and subphases are distinct and non-interchangeable.
All change is append-only, traceable, and reversible.
LLMs suggest only. Humans commit. SCIS enforces.

Core Mental Model
SCIS treats software as:
Maps (authoritative structure)
Contracts (behavioral truth)
Logic (deterministic intent)
Dependencies (explicit edges)
Metrics (role-aware signals)
Evolution history (append-only)
Code is an implementation artifact that must conform to all declared structure.
If something exists but is not declared and measured, SCIS treats it as nonexistent.

Why SCIS Exists
SCIS addresses systemic failures in modern and LLM-assisted software development:
Lost intent due to context limits
Hallucinated structure and implicit assumptions
Unsafe file, tool, API, or database access
Non-deterministic edits and hidden side effects
Fragile legacy systems with unknown behavior
Support dependent on folklore and reproduction
SCIS forces explicit declaration and measurement before action.

Lifecycle Concepts (Non-Interchangeable)
SCIS uses three separate lifecycle concepts.
They are never synonyms.
1. Stages — Program Construction Only
Stages govern how programs are created or reconstructed.
Sequential and completion-gated
Apply only during program creation
Not encoded in filenames
End after Stage 5
Stage
Name
0
Foundation Mapping
1
Universal A0 Backbone
2
File Skeleton
3
Placeholder Seeding
4
Map Population
5
Content Filling

Once Stage 5 completes, stages no longer apply.

2. Phases (p#) — Permanent Structural Lifecycle
Phases are permanent structural partitions inside a program.
Every file belongs to exactly one phase
Phases persist for the life of the program
Phases enforce determinism and access control
Encoded in filenames as p#
Illustrative phase intent:
p0 — summaries and maps
p1 — contracts and schemas
p2 — logic
p3 — implementation
p4 — validation
p5 — evolution

3. Subphases (s#) — Structural Grouping Only
s# stands for subphase.
Subphases exist only to partition structure within a phase.
They are used to:
Break large phases into manageable groups
Prevent long file-number sequences
Cluster related files deterministically
Enable scoped reasoning and partial loading
Subphases:
Have no lifecycle meaning
Do not imply order, priority, or maturity
Are purely structural

Program Namespace Rules
Program IDs (A#, B#, C#, …)
A0
Reserved for control-plane and inter-program artifacts.
Applies to the entire repository.
A0 is not a program.
A1–A9
First set of programs.
B1–B9
Second set of programs.
C1–C9, etc.
Additional program sets.
A# always refers to the program that exists in that namespace.
LLMs must never invent program IDs or reinterpret A0.

Repository & Naming Model (Deterministic)
Mandatory Filename Schema
<ProgramID>#p<Phase>#s<Subphase>#f<FileNumber>.<ext>

Example:
A1#p2#s1#f3.md

Semantics:
ProgramID — owning program
p# — phase (structural lifecycle)
s# — subphase (structural grouping)
f# — sequential within (ProgramID, p#, s#)

Explicit Purpose of p#s#
The p#s# system exists to:
Prevent extremely long file-number sequences
Group related files deterministically
Support large programs without ambiguity
Enable partial context loading
It does not indicate priority, versioning, or execution order.

Forbidden Naming Behavior (Hard Errors)
LLMs must never:
Invent a .scis file extension
Rename files to “simplify” structure
Omit p#, s#, or f#
Treat A0 as a program
Create files outside declared ProgramIDs
Introduce alternative naming schemes
File extensions must be domain-appropriate only (.md, .yaml, .json, .ts, etc.).
Authority comes from maps and IDs, not file type.

Maps (Authoritative Backbone)
Maps define:
Files and sections
Components (CA) and Non-Components (NCA)
Contracts and logic
Dependencies
Tools, databases, APIs
Metrics and their roles
Runtime and code must conform to maps.

Components & Non-Components
Components (CA)
Contracted behavioral units with declared:
Purpose
Inputs / outputs
Constraints
Dependencies
Logic
Mandatory metrics include usage, violations, latency, determinism variance, and dependency failures.

Non-Components (NCA)
Configs, schemas, datasets, assets, helpers, templates.
Still declared. Still measured.
Nothing is “just config.”

Contracts Over Code (NCCF)
Behavior is defined in contracts.
Code implements contracts.
Contract drift is a guardrail violation.

Logic Determinization
Logic is declared before code, versioned, append-only, and explanatory.
Ambiguous behavior is measurable and forbidden.

Metrics System (Role-Aware)
Metrics are first-class artifacts.
Roles:
Diagnostic
Evolutionary
Guardrail
Validation
Reporting
Unauthorized metric influence is a SCIS violation.

Control Plane (A0)
A0 governs:
Schemas
Registries
Shared contracts
Tool permissions
Metric roles
LLM behavior constraints

Tools, Databases, APIs
Tools operate only on declared resources
Databases via declared schemas
Assets indexed, never scanned
APIs accessed via MCP contracts

Roles & Authority
LLMs: suggest, generate, validate
Humans: approve, commit, run
SCIS: enforce determinism and structure

Bottom Line (Invariant)
If it exists, it is declared.
If it is declared, it is measured.
If it is measured, its authority is known.
If its authority is known, it is safe to act.
If it is safe to act, it is evolvable.










SCIS — Structured, Contract-Driven, Deterministic Software Framework (v4.x)

One-Sentence Definition  
SCIS is a deterministic, map-first software framework in which all structure, behavior, metrics, and evolution are explicitly declared, role-bounded, and phase-locked, enabling humans and LLMs to design, build, support, reconstruct, and evolve software safely over time without guessing, scanning, or loss of intent.

Core Concept  
Software is treated as maps, contracts, logic, dependencies, metrics, and controlled evolution.  
Code is an implementation artifact, never the source of truth.  
Every declared element—component (CA) or non-component (NCA)—is:

* ID-addressable
* Contract-bound where applicable
* Instrumented with declared, role-aware metrics

Nothing exists in SCIS without being observable, and no metric exists without a declared role.  
Determinism is enforced by preventing hallucinations, unsafe edits, structural drift, silent failures, and unauthorized metric influence.

Why It Exists  
SCIS addresses systemic failures in modern software and LLM-assisted development:

* Lost intent due to context window limits
* Hallucinated structures and implicit assumptions
* Unsafe file, tool, API, or database access
* Non-deterministic edits and hidden side effects
* Fragile legacy systems with unknown behavior
* Support processes dependent on logs, folklore, and reproduction

SCIS forces explicit declaration and continuous, role-bounded measurement of all knowledge required before action.

Core Principles (With Role-Aware Metrics)

Maps-First  
LLMs and humans operate on authoritative maps, not inferred structure.  
Metrics (Diagnostic, Reporting): Map coverage ratio; undeclared reference rate.

Everything Declared  
All files, components, NCAs, tools, databases, APIs, logic, dependencies, and metrics are explicitly declared.  
Metrics (Guardrail): Declaration completeness index; implicit knowledge incidents.

Deterministic Stages  
Clear lifecycle stages with enforced stage gates; no future-stage access.  
Metrics (Guardrail): Stage violation count; out-of-stage access attempts.

Append-Only History  
All changes—maps, logic, contracts, metrics—are logged, reversible, and traceable.  
Metrics (Diagnostic, Reporting): Change traceability depth; rollback frequency.

Contracts Over Code  
Behavior is defined by contracts (NCCF); code implements them.  
Metrics (Guardrail): Contract compliance rate; contract-to-code drift.

ID-First Referencing  
Maps and metrics use immutable IDs; names are secondary.  
Metrics (Diagnostic): ID collision rate; name-based ambiguity incidents.

Measured by Default  
Every CA and NCA that can change, be accessed, fail, or be depended on must emit declared metrics with explicit roles.  
Metrics (Guardrail): Metric coverage completeness; unclassified failure rate.

Repository Model  
Flat-file, ID-encoded structure: A#p#s#f#.<ext>  
Phase × Section grid enforces structural determinism.  
Metrics:

* Naming compliance rate (Guardrail)
* Orphan file count (Diagnostic)
* Phase-section grid completeness (Guardrail)

Control Plane (A0)  
The control plane governs schemas, rules, tools, metric roles, and LLM behavior.  
Includes phases for:

* New program construction
* Legacy reconstruction
* Shared utilities and resources

Metrics:

* Rule enforcement success rate (Guardrail)
* Schema drift incidents (Guardrail)
* Metric role compliance (Guardrail)

Programs (A1+)  
Programs are self-contained, language-agnostic, and independently evolving.  
Each program instance is fully observable.  
Metrics:

* Program isolation score (Guardrail)
* Rebuild determinism (Validation)
* Cross-program dependency violations (Guardrail)

Maps (Authoritative Backbone)  
Maps define files, CAs, NCAs, dependencies, logic, tools, databases, APIs, and metrics.  
Runtime and code must conform to maps.  
Metrics:

* Map freshness (Diagnostic)
* Map-to-runtime drift (Guardrail)
* Stale or unused map entries (Evolutionary)

Components & NCCF

Components (CA)  
Contracted units with explicit purpose, inputs, outputs, constraints, and dependencies.  
Mandatory Metrics:

* Usage frequency (Reporting)
* Input/output violations (Guardrail)
* Constraint boundary pressure (Evolutionary)
* Latency and SLA breaches (Guardrail)
* Dependency failures (Diagnostic)
* Determinism variance (Validation)

Non-Components (NCA)  
Configs, schemas, datasets, assets, helpers, and templates.  
Mandatory Metrics:

* Access frequency (Reporting)
* Read/write ratio (Diagnostic)
* Mutation history (Diagnostic)
* Promotion signals (Evolutionary)

Nothing is “just config.”

Logic Determinization  
Behavior is declared in logic before code, versioned, append-only, and explanatory.  
Metrics:

* Logic-first ratio (Guardrail)
* Logic coverage of runtime behavior (Validation)
* Behavioral ambiguity count (Diagnostic)

Metrics System (Role-Aware)  
Metrics are first-class SCIS artifacts, not logs or tooling side effects.

Metric Roles

* Diagnostic: Localize failures and change surfaces
* Evolutionary: Guide improvement proposals
* Guardrail: Prevent regressions and unsafe behavior
* Validation: Prove explicit claims or hypotheses
* Reporting: Communicate system health

Enforcement Rules

* Every metric is declared with a role
* Metrics are ID-addressable, phase-bound, and append-only
* Guardrail metrics may gate stages and force rollback
* Validation metrics may expire
* Reporting metrics never gate or trigger actions
* A metric may not influence actions outside its declared role

Unauthorized metric influence is a SCIS violation.

Legacy Reconstruction  
Legacy systems are rebuilt deterministically from partial signals.  
Metrics:

* Unknown behavior residue (Diagnostic)
* Reconstruction accuracy (Validation)
* Human clarification frequency (Reporting)

Tools & Utilities  
Tools are deterministic, scope-restricted, and operate only on declared resources.  
Metrics:

* Tool usage frequency (Reporting)
* Scope violations (Guardrail)
* Determinism score (Validation)

Databases, Assets, MCP

* Databases via declared schemas only
* Assets indexed, never scanned
* APIs accessed via MCP contracts

Metrics:

* Raw DB access attempts (Guardrail)
* Asset index completeness (Guardrail)
* API contract violations (Guardrail)

MEM System (Memory Without Context Explosion)  
Canonical, token-efficient knowledge layer.  
Metrics:

* Recall accuracy (Validation)
* Staleness incidents (Diagnostic)
* Token compression ratio (Reporting)

Evolution & Upgrades  
All evolution is declared, measured, reversible, and history-preserving.  
Metrics:

* Upgrade reversibility time (Guardrail)
* Structural change density (Evolutionary)
* Regression correlation (Guardrail)

Roles

* LLMs: Suggest, generate, validate
* Humans: Approve, commit, run
* SCIS: Enforce structure, determinism, and metric roles

Metrics:

* Suggestion acceptance rate (Reporting)
* Human review latency (Reporting)
* Automation vs approval ratio (Reporting)

Workflow  
GitHub-centric; LLMs are read-only.  
Humans apply changes locally.  
Small reference files minimize context load.  
Metrics:

* Context load per task (Diagnostic)
* Read-only compliance (Guardrail)
* Support resolution time (Reporting)

Bottom Line  
SCIS is a system where:  
If it exists, it is declared.  
If it is declared, it is measured.  
If it is measured, its authority is known.  
If its authority is known, it is safe to act.  
If it is safe to act, it is evolvable.

Stage
Name
Goal
Key Actions
Placeholder Strategy
Completion Indicator
0
Foundation Mapping
Define what the program will be (high-level maps and summaries)
Create Program Summary, Program Map, File Map, Section Summaries
None — pure planning
All Stage 0 map files exist and reviewed
1
Universal A0 Backbone
Create shared A0 files common to all projects
Run bootstrap for registries, schemas, contracts (empty)
Minimal (e.g., {{A0_PURPOSE}})
All A0 files created
2
File Skeleton
Create empty files for everything listed in the File Map
Batch create files from Stage 0 File Map
None or basic header placeholders
All expected files exist
3
Placeholder Seeding
Insert structured, sequenced placeholders into headers and content
Bulk insert via transform tool
Heavy use — grouped (HEADER_, CONTENT_, DEP_)
All files have expected placeholders
4
Map Population
Fill registries/maps and resolve related placeholders
Declare components/non-components, update maps, replace map-related {{}}
Targeted replacement (e.g., all {{COMP_*}})
Maps complete, no undeclared references
5
Content Filling
Populate actual logic, declarations, and content in dependency order
Progressive filling using transform/declare tools
Final replacement of content placeholders
No incomplete sections, 0 unresolved {{}}


