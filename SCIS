## SCIS v3.4 — Summary & Coordination Intelligence System
Canonical Multi-Program Orchestration Framework for LLM-Aligned Development
 Version: 3.4
 Updated: Dependency Architecture • MEM System • NCCF Schema • Filename Rules

## 1. Overview
SCIS is a phase-driven, contract-first orchestration system for structuring entire software projects—across multiple programs—so that LLMs, tools, and humans interpret the repository the same way.
Its goals are:
Fully parseable, deterministic project structure

Zero guessing and zero hallucination

Predictable program evolution through phases

Explicit component contracts and dependency mapping

Consistent reasoning for multi-agent LLM workflows

All files follow the strict naming pattern:
A#p#s#f#.ext

Everything is stored in one flat folder.
 LLMs must rely on SCIS maps, never inference.

## 2. Universal Naming Rule (New in v3.4)
Filenames contain no descriptive words.
 Only the core SCIS pattern is allowed.
Example:
❌ A0p0s0f10.mem.json
✔ A0p0s0f10.json

All meaning is expressed within mandatory SCIS file headers.

## 3. Phases and Subphases (Complete Table)
SCIS uses strict development phases P0–P7 + P99, plus optional subphases such as P4.1 → written p41.
Primary Phase Table
Phase
Name
Primary Goal
Ends When
Main Artifacts
P0
Concept
Establish vision for the system/folder
A0p0s0f0.md accepted
A0 system summary
P1
Architecture & Design
Programs, interfaces, data flow determined
All maps + contracts complete
A0 + A# design files
P2
Full Specification
All future work fully described
Phase Complete Maps (PCMs) finished
A#p0s0f5…fn.md
P3
Skeleton & Bootstrap
Repo runs; entry points exist
“Hello world” executes
Entry points + initial skeleton
P4
Core Implementation
Main logic implemented
End-to-end core flows work
s0–s3 code
P5
Polish & Integration
Final UX/dev polish; perf tuning
Feature-complete
Code + docs
P6
Testing & Hardening
QA, security, load testing
All tests pass
s4 tests, reports
P7
Release
Deployment, publishing
System shipped
A0p0s0f6.md + artifacts
P99
Hotfix / Debug
Emergency fixes
Bug resolved
A0p0s0f5.md + patches

Used for large programs needing multiple implementation waves.

## 4. Section System (s0–s9)
Each file belongs to a section:
s#
Purpose
Typical Extensions
Phase Use
s0
Core logic / orchestration
.py .ts .go
P3–P5
s1
Init, config, entry points
.py .json .env
P3+
s2
Component logic
code
P4–P5
s3
Utilities & validation
code
P4–P6
s4
Tests
.test.* .json
P6
s5
Reports / summaries
.md .json .txt
All
s6
Fix specs
.json
P99
s7
Logs
.txt .json
Runtime
s8
Documentation
.md
P5–P7
s9
Reserved
any
System

## 5. Minimal NCCF (Normalized Component Contract Format)
Defined globally in:
 A0p0s0f4.json
To reduce token load, the SCIS v3.4 NCCF uses exactly these fields:
component_id
title
phase_declared
purpose
inputs
outputs
dependencies
constraints

All components across all programs follow this schema.

## 6. Dependency System (Fully Redesigned in v3.4)
6.1 Every Program Has Its Own Dependency Map
Example:
A2p0s0f4.json   ← dependencies within program A2
A3p0s0f4.json   ← dependencies within program A3

Each covers only local component dependencies inside that program.
6.2 A0 Contains the Global Dependency Map
A0p0s0f6.json now includes:
Cross-program dependencies

External/API/infrastructure dependencies

Any A0 internal dependencies

A0 no longer stores program-level internal dependencies.
This separation prevents conflicts and improves tool automation.

## 7. MEM System (Section-Level + Global)
7.1 Section MEM Files (Flexible Naming)
Sections may include MEM files such as:
A2p4s0f5.json
A2p4s1f2.json
A2p4s2f7.json

SCIS does not assume that section MEM files must be f5.
7.2 Global MEM (A0p0s0f10.json)
The Global MEM now contains:
Program list

All section maps

Full index of all section MEM files (no guessing)

Reference to A0 dependency map

References to all A# dependency maps

Compact summaries for cross-program reasoning

NCCF schema reference

This is the master entry point for LLM reasoning across the entire system.

## 8. A0 File Registry (Strict, No Descriptive Filenames)
File
Purpose
A0p0s0f0.md
System Summary
A0p0s0f1.md
Global Folder Map
A0p0s0f2.md
Global Architecture Overview
A0p0s0f3.md
Global Program & Section Index
A0p0s0f4.json
NCCF Schema
A0p0s0f5.md
Human Dependency Notes
A0p0s0f6.json
Global Dependency Map
A0p0s0f7.md
Phase Complete Map (PCM Master)
A0p0s0f8.md
Linter Rules (human)
A0p0s0f9.json
Linter Rules (machine)
A0p0s0f10.json
Global MEM
A0p0s0f11.md
Reserved

All meaning is expressed in mandatory headers within each file.

## 9. Per-Program Requirements (A1, A2, A3…)
File pattern
Phase
Purpose
A#p0s0f2.md
P1
Complete file structure map for the program
Any code file (s0–s3)
P3+
Must include SCIS mandatory file header
Components
P4+
Must follow CA#p#s#f#.# naming
Non-components
P4+
Must follow NCA#p#s#f#.# naming

## 10. Mandatory Code File Header
Every code file begins with:
# File: A#p#s#f#.ext
# Purpose: <one-sentence exact purpose>
# Phase created: P#
# Components: CA#p#s#f#.# …
# NonComponents: NCA#p#s#f#.# …

This enables full automatic parsing for LLMs and tools.

## 11. SCIS Official Workflow (v3.4)
For phase N (P4–P7):
LLM reads:
A#pNs0f0.md (PreBuild)
Phase Complete Map
A0 files (contracts, maps, NCCF)
Code is generated with mandatory headers + CA/NCA numbering
New file purposes added to File Map (A#p0s0f2.md)
Build report generated (A#pNs0f1.md)
Development Masters updated

## 12. LLM Operating Principles (Strict)
LLMs must:
Stay within current phase
Never invent files or components
Never guess filenames
Use maps first, code second
Reference section maps for allowed components
Reference Global MEM when present
Follow the NCCF schema
Obey all numbering rules

SCIS provides structure—LLMs must respect it.

## 13. Benefits of SCIS v3.4
Zero guessing: Perfect clarity for humans and LLMs
Full determinism: Every file is interpretable by name alone
Scalable: Works for single apps or large multi-program systems
Tool-friendly: Automated analyzers and linters can parse everything
LLM-safe: Eliminates hallucination around structure, components, and dependencies
Backward compatible: Extends SCIS 3.x with no breaking changes
