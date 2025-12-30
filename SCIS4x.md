# SCIS — Structured, Contract-Driven, Deterministic Software Framework (v4.x)

## One-Sentence Definition (LLM-Safe)

**SCIS** is a deterministic, map-authoritative software framework in which all structure, behavior, metrics, tools, and evolution are **explicitly declared**, **ID-addressable**, **role-bounded**, and **phase-locked**, enabling humans and LLMs to design, build, support, reconstruct, and evolve software **without inference, scanning, or loss of intent**.

## Absolute Non-Negotiables

If **any** of these rules is violated, SCIS is **not** being followed.

1. **Maps are the source of truth.** Code is never authoritative.
2. Nothing may be **created**, **modified**, **accessed**, or **depended on** unless it is declared in maps.
3. No **inference**, **scanning**, or “reasonable assumptions.”
4. Every measurable thing emits **declared metrics** with **explicit roles**.
5. Metrics may **only** influence actions permitted by their role.
6. **Lifecycle stages**, **phases**, and **subphases** are distinct and **non-interchangeable**.
7. All change is **append-only**, **traceable**, and **reversible**.
8. **LLMs suggest only.** Humans commit. **SCIS enforces.**

## Core Mental Model

SCIS treats software as:

- **Maps** (authoritative structure)
- **Contracts** (behavioral truth)
- **Logic** (deterministic intent)
- **Dependencies** (explicit edges)
- **Metrics** (role-aware signals)
- **Evolution history** (append-only)

> Code is an **implementation artifact** that **must conform** to all declared structure.  
> If something exists but is **not declared and measured**, SCIS treats it as **nonexistent**.

## Why SCIS Exists

SCIS addresses systemic failures in modern and LLM-assisted software development:

- Lost intent due to context limits
- Hallucinated structure and implicit assumptions
- Unsafe file, tool, API, or database access
- Non-deterministic edits and hidden side effects
- Fragile legacy systems with unknown behavior
- Support dependent on folklore and reproduction

**SCIS forces explicit declaration and measurement before action.**

## Lifecycle Concepts (Non-Interchangeable)

SCIS uses **three separate lifecycle concepts**. They are **never** synonyms.

### 1. Stages — Program Construction Only

Stages govern how programs are **created** or **reconstructed**.

- Sequential and **completion-gated**
- Apply **only** during program creation
- **Not** encoded in filenames
- End after **Stage 5**

| Stage | Name                  | Goal                                                                 | Key Actions                                      | Placeholder Strategy              | Completion Indicator                     |
|-------|-----------------------|----------------------------------------------------------------------|--------------------------------------------------|------------------------------------|------------------------------------------|
| 0     | Foundation Mapping    | Define what the program will be (high-level maps and summaries)      | Create Program Summary, Program Map, File Map, Section Summaries | None — pure planning              | All Stage 0 map files exist and reviewed |
| 1     | Universal A0 Backbone | Create shared A0 files common to all projects                        | Run bootstrap for registries, schemas, contracts | Minimal (e.g., `{{A0_PURPOSE}}`)  | All A0 files created                     |
| 2     | File Skeleton         | Create empty files for everything listed in the File Map             | Batch create files from Stage 0 File Map         | None or basic header placeholders | All expected files exist                 |
| 3     | Placeholder Seeding   | Insert structured, sequenced placeholders into headers and content  | Bulk insert via transform tool                   | Heavy use — grouped (HEADER_, CONTENT_, DEP_) | All files have expected placeholders     |
| 4     | Map Population        | Fill registries/maps and resolve related placeholders               | Declare components/non-components, update maps   | Targeted replacement (e.g., all `{{COMP_*}}`) | Maps complete, no undeclared references  |
| 5     | Content Filling       | Populate actual logic, declarations, and content in dependency order | Progressive filling using transform/declare tools| Final replacement of content placeholders | No incomplete sections, 0 unresolved `{{}}` |

Once **Stage 5** completes, stages no longer apply.

### 2. Phases (p#) — Permanent Structural Lifecycle

Phases are **permanent structural partitions** inside a program.

- Every file belongs to **exactly one phase**
- Phases persist for the **life of the program**
- Phases enforce **determinism** and **access control**
- Encoded in filenames as `p#`

**Illustrative phase intent:**

- `p0` — summaries and maps
- `p1` — contracts and schemas
- `p2` — logic
- `p3` — implementation
- `p4` — validation
- `p5` — evolution

### 3. Subphases (s#) — Structural Grouping Only

Subphases exist **only** to partition structure within a phase.

They are used to:

- Break large phases into manageable groups
- Prevent long file-number sequences
- Cluster related files deterministically
- Enable scoped reasoning and partial loading

Subphases:

- Have **no lifecycle meaning**
- Do **not** imply order, priority, or maturity
- Are **purely structural**

## Repository & Naming Model (Deterministic)

### Mandatory Filename Schema

**Example:**

**Semantics:**

- `ProgramID` — owning program
- `p#` — phase (structural lifecycle)
- `s#` — subphase (structural grouping)
- `f#` — sequential within `(ProgramID, p#, s#)`

### Program Namespace Rules

- `A0` — Reserved for **control-plane** and **inter-program** artifacts (not a program)
- `A1–A9` — First set of programs
- `B1–B9` — Second set of programs
- `C1–C9`, etc. — Additional program sets

**LLMs must never invent program IDs or reinterpret A0.**

### Forbidden Naming Behavior (Hard Errors)

LLMs must **never**:

- Invent a `.scis` file extension
- Rename files to “simplify” structure
- Omit `p#`, `s#`, or `f#`
- Treat `A0` as a program
- Create files outside declared ProgramIDs
- Introduce alternative naming schemes

File extensions must be **domain-appropriate** only (`.md`, `.yaml`, `.json`, `.ts`, etc.).

## Maps (Authoritative Backbone)

Maps define:

- Files and sections
- Components (**CA**) and Non-Components (**NCA**)
- Contracts and logic
- Dependencies
- Tools, databases, APIs
- Metrics and their roles

**Runtime and code must conform to maps.**

## Components vs Non-Components

### Components (CA)

Contracted behavioral units with declared:

- Purpose
- Inputs / outputs
- Constraints
- Dependencies
- Logic

**Mandatory metrics** include: usage, violations, latency, determinism variance, dependency failures.

### Non-Components (NCA)

Configs, schemas, datasets, assets, helpers, templates.  
**Still declared. Still measured.**  
Nothing is “just config.”

## Core Principles Summary

- **Maps-First**
- **Everything Declared**
- **Deterministic Stages**
- **Append-Only History**
- **Contracts Over Code (NCCF)**
- **ID-First Referencing**
- **Measured by Default**

## Bottom Line (Invariant)

> If it **exists**, it is **declared**.  
> If it is **declared**, it is **measured**.  
> If it is **measured**, its **authority** is known.  
> If its **authority** is known, it is **safe to act**.  
> If it is **safe to act**, it is **evolvable**.

---

This version preserves all your content while using:

- Clear heading hierarchy
- Bold/italic emphasis for key rules
- Tables for lifecycle stages
- Blockquotes for memorable invariants
- Bullet lists for scannability

You can copy-paste it directly into a `README.md` file. Let me know if you'd like adjustments (e.g. more compact version, added badges, sections collapsed with `<details>`, etc.).
