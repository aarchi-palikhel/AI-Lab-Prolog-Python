# AI Lab Programs - BIM Course

This repository contains practical programs implemented as part of the Artificial Intelligence (AI) subject in the BIM course. The work covers core AI areas including uninformed and informed search, intelligent agents, constraint satisfaction, graph representation, and logic programming in Prolog.

## Course Coverage

The implemented labs demonstrate:
- State-space search (BFS, DFS, A*)
- Problem solving (Water Jug, N-Queens)
- Intelligent agent behavior (Simple Reflex Agent)
- Knowledge representation and inference with Prolog rules
- Graph modeling and conversion between representations

## Programs Implemented

| File | Description | AI Topic |
|---|---|---|
| `BFS.py` | Breadth-First Search traversal of a graph using a queue. | Uninformed Search |
| `DFS.py` | Depth-First Search traversal of a graph using a stack-based approach. | Uninformed Search |
| `astar_algorithm.py` | A* search on a weighted graph using heuristic evaluation. | Informed Search |
| `N_Queens_Problem.py` | Solves the N-Queens puzzle using backtracking. | Constraint Satisfaction |
| `Simple_Reflex_Vacuum_Agent.py` | Simulates a simple reflex vacuum agent for environment cleaning actions. | Intelligent Agents |
| `graph_to_edges.py` | Converts an adjacency-list graph into an edge list. | Graph Representation |
| `graph_weighted_edges.py` | Converts a weighted adjacency list into weighted edge tuples. | Weighted Graph Representation |
| `Basic_Prolog.pl` | Basic Prolog facts and recursive rules (family, list operations, factorial, Fibonacci, Tower of Hanoi). | Logic Programming |
| `student_exam_rules.pl` | Rule-based student knowledge base (study, pass, happy, did not study). | Rule-Based Inference |
| `preference_rules.pl` | Preference/likes facts and rule inheritance across persons. | Knowledge Representation |
| `genealogy_rules.pl` | Family relation rules over a sample genealogy dataset. | Knowledge Representation |
| `prolog_family_relationships.pl` | Extended relation inference (father, mother, grandparent, sibling, uncle, aunt). | Knowledge Representation |
| `directed_graph_paths.pl` | Recursive path-finding rules in directed graphs. | Logical Inference on Graphs |
| `water_jug_solver.pl` | DFS-based solver for the two-jug water jug problem. | State Space Search |

## Academic Purpose

These programs are designed for learning and demonstration in AI lab sessions. They emphasize fundamental AI concepts and representation methods commonly taught in undergraduate BIM coursework.

## Running the Programs

- Python files (`.py`) can be run directly in a Python environment.
- Prolog files (`.pl`) can be loaded in a Prolog interpreter and queried using their defined predicates.

Example query focus areas:
- Search path generation (BFS/DFS/A*)
- Constraint-safe queen placement (N-Queens)
- Family and preference inference in Prolog
- Reachability in directed graphs
- Goal-state discovery in the water jug problem
