## ProgramBuilder – Deterministic Code Generation Pipeline  
Version 6.0  

## What problem it solves  
ProgramBuilder is designed to break past the limits of direct LLM code generation: high token usage, non-deterministic outputs, and difficulty scaling to complex, multi-file systems. It lets the LLM do only the high-level mapping once, then uses a local, deterministic pipeline to build the entire program, keeping LLM usage low while complexity can grow arbitrarily large.  

## One-paragraph summary  
ProgramBuilder takes four LLM-generated “maps” (Files, Components, Dependencies, Data Models) in Markdown and runs them through a 13-matrix local pipeline that parses, validates, completes requirements, chooses templates or blocks, assembles code, generates database schemas, creates documentation maps, and builds a visual link registry. The result is a complete, SCIS-labeled project (code, SQL, maps, manifest, link registry, README) produced deterministically: the same maps always yield the same output. It is effectively a compiler from LLM system maps to a production-ready codebase.  

## Core problem & motivation  
- Direct LLM codegen does not scale well: large multi-file apps require huge prompts, repeated regeneration, and careful hand-holding to keep structure consistent.  
- Outputs are fragile: small prompt changes or model updates can radically alter code, making it hard to reproduce or audit.  
- Teams want AI help for architecture and boilerplate, but still need predictable, repeatable, reviewable builds.  
ProgramBuilder reframes the LLM’s job: instead of “write all the code,” the model produces compact, structured maps, and a local matrix pipeline handles everything from there.  

## How the pipeline works (high level)  
- **Input stage – LLM maps**  
  - File Map: all files and their sections.  
  - Component Map: components, types, and purposes.  
  - Dependency Map: internal/external dependencies.  
  - Data Model Map (optional): entities, fields, relationships.  

- **Analysis & validation stage**  
  - Map Parser Matrix: turns maps into an internal Development Summary (files, components, dependency graph, data models).  
  - Early Validation Matrix: fast failure for missing maps, broken references, naming issues, and obvious inconsistencies.  
  - Map Validator Matrix: deeper checks for circular dependencies, SCIS rules, and cross-map consistency.  
  - Component Assignment Matrix: assigns SCIS file numbers and component IDs, updating all references.  

- **Implementation design stage**  
  - Implementation Requirements Analyzer Matrix: 5-phase pass that extracts explicit requirements, infers missing ones, detects gaps, applies defaults, and verifies that each component is “implementation-complete.”  
  - RGB Matching Matrix: matches each component to either a full template (Tier 4) or a composition rule for blocks (Tier 3).  

- **Template vs. block paths**  
  - Template path: directly fills a pre-defined RGB template and proceeds to assembly.  
  - Block path:  
    - Block Selection Matrix: chooses specific blocks (validation, storage, logging, response, etc.) and determines execution order.  
    - Composition Validator Matrix: checks that the block sequence respects composition rules and constraints.  
    - Block Assembly Matrix: stitches blocks into final methods/functions, wiring parameters, variables, imports, and comments.  

- **Finalization stage**  
  - Assembly Matrix: builds complete SCIS-compliant files with headers, imports, and dependencies.  
  - Code Validator Matrix: validates syntax, SCIS compliance, imports, RGB usage, and basic security patterns.  
  - Database Generator Matrix (optional): turns the Data Model Map into SQL schemas, ORM models, and migrations.  
  - Map Maker Matrix: regenerates File, Component, Dependency, and Data Model maps reflecting the final build.  
  - Visual Integration Matrix: builds a Link Registry describing UI elements, handlers, backend operations, and DB operations, plus their relationships.  
  - Output Generation: writes the SCIS folder tree, manifest, link registry, build report, and README.  

## Guarantees and behavior  
- **Determinism**:  
  - Same maps → same RGB matches → same block selections → same output files.  
  - All decisions (inference, defaults, matches) are logged for auditability.  

- **Completeness**:  
  - Requirements Analyzer ensures that storage, validation, logging, error handling, IDs, timestamps, and responses are specified or sensibly defaulted.  
  - Block path guarantees that all required block categories are present and valid before code is approved.  

- **Correctness & safety**:  
  - Syntax validation via parsing, SCIS header checks, import validation, and composition-rule enforcement.  
  - Early critical errors stop the pipeline in <1 second with structured feedback suitable for sending back to the LLM or user.  

- **Efficiency**:  
  - Fast path (template-based) runs in roughly a few seconds for a multi-file program.  
  - Complex block-based path with database generation adds modest overhead but remains interactive.  
  - Only the initial maps come from the LLM; all downstream work is local, cacheable, and repeatable.  

## Portfolio positioning  
| Dimension | What ProgramBuilder Demonstrates |
|----------|----------------------------------|
| Problem framing | Clear articulation of LLM cost/non-determinism/scale limits and a concrete solution pattern. |
| Systems design | A 13-matrix, ~50+ phase pipeline with explicit stages, agents, and decision points. |
| AI integration | Uses LLM once for structured maps, then replaces further prompting with deterministic local logic. |
| Software engineering | SCIS-based file/ID system, dependency graphs, code and DB generation, validation, and packaging. |
| DX & ops | Fast failure, rich error feedback, synchronized documentation maps, and visual link registry for debugging. |
