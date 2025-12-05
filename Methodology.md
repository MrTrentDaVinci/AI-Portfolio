# How I Approach Complex Problems

## Step 1: Identify the Problem and its factors
Before solving, I have to understand the problem:
- Ask questions of LLMs (more then one) to understand the problem and its constraints.
- Spitball some ideas to see if more constraints come up.
- As ideas begin to develop keep things practical by addressing the concerns.

Example: "Debugging is slow" → Real problem: "Codebase structure is not organized uniformly"

## Step 2: Design the Framework
What systematic approach eliminates the bottleneck and address possible future concerns?
- Not: "Write better documentation" (doesn't scale)
- Yes: "Automated structure mapping" (scales infinitely)

## Step 3: Validate the Concept
Does this solve the core problem or just shift complexity?
- Test with simplified version first
- Check if it breaks at scale
- Ensure it's actually usable by others

## Step 4: Implement via LLM Orchestration
I use LLMs as implementation partners:
- Design the system architecture myself
- Use LLMs to generate implementation code
- Validate outputs through multi-system checking

## Step 5: Systematic Iteration
- Multi-agent validation catches edge cases
- Audit trails enable debugging
- Progressive refinement based on real use

## Core Principles
1. **Organization > Optimization**: Better structure beats faster code
2. **Systematic > Ad-hoc**: Repeatable processes scale, heroics don't
3. **Multi-system validation**: Consensus beats single-point checking
4. **Make it navigable**: If humans can't understand it, automation won't help
