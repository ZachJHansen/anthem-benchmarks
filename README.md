# anthem-benchmarks
A set of ATP benchmarks generated by my fork of [Anthem](https://github.com/ZachJHansen/zanthem-next).
Please see `summary.xlsx` for an overview.

## Benchmarks
Every problem is contained in a directory with a README.md, which contains
- problem name,
- problem origin,
- `anthem` command used to generate the problem files,
- the directory name where the source files (logic programs, user guides, etc.) can be found,
- additional information about branch name, experimental features, etc.

## Problem Reasoning Types
If you want to test a classical first-order theorem prover on these problems, visit the `classical` directory. If you want to test an intuitionistic theorem prover, visit the `intuitionistic` directory.

## Problem Difficulty
Problems are grouped according to their estimated difficulty based on preliminary experiments with `vampire` invoked with 4 cores.

- Level 0 problems should be solvable by an ATP in under 1 second, without a proof outline.
- Level 1 problems should be solvable by an ATP in under 1 minute, without a proof outline.
- Level 2 problems should be solvable by an ATP in under 10 minutes without a proof outline.
- Level 3 problems should be solvable by an ATP in under 1 minute when provided a proof outline.
- Level 4 problems should be solvable by an ATP in under 10 minutes when provided a proof outline.
- Level 5 problems have not yet been solved by anyone in the `anthem` group.

Some problems make multiple appearances across the difficulty levels, depending on the command used to generate the problems. For instance, variants of the `primes` problem are much easier for `vampire` when `anthem`'s custom simplifications are used.
