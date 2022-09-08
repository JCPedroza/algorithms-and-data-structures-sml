# SML Algorithms and Data Structures

[![license MIT][0]][1]
[![linux build & tests][2]][3]

Algorithms and data structures implemented in Standard ML.

## SML Implementations

- [Poly/ML][30] <- Runs on Raspberry Pi!
- [SML/NJ][32]
- [MLton][31]
- [Moscow ML][33]
- [MLKit][34]

## Online SML

- [SOSML][40]
- [SML IDE (MLKit)][41]
- [Tutorialspoint SML/NJ][42]

## Style and Conventions

- [Naming conventions][50]
- [Style guide][51]

## Usage

Before running a script, you might need to set its executable permission. In
linux you can use `chmod`:

```bash
chmod +x <path-to-script>
```

### PolyML

Visit the [PolyML GitHub repository][31] for information about how to
install PolyML in your system.

Here are some options:

```bash
apt install polyml  # Debian / Ubuntu
brew install polyml # OS X and brew
```

#### Running Files

You can run specific sml files, including test files, from the file's
directory, with:

```bash
poly --script <file-name>.sml
```

#### Running All Unit Tests

To run all unit tests, you can use the bash script:

```bash
./scripts/bash/test-poly.sh
```

Or you can use this command in unixy systems:

```bash
find . -name "*.spec.sml" -execdir poly --script \{\} +;
```

## Contributing

[![contributors][120]][121]
[![commit activity][122]][123]
[![issues][124]][125]
[![issues closed][126]][127]
[![issues pr][128]][129]
[![issues pr closed][130]][131]

Code reviews, pull requests, issues, and discussions are always welcome!

This project is intended to be a safe, welcoming space for collaboration.
Everyone interacting in this project's codebases, issue trackers, chat rooms
and mailing lists is expected to follow the [code of conduct][35].

You can see the full contribution guidelines, workflows, and examples in the
`CONTRIBUTING.md` document of this repository, or [here online][36].

## License

This repository is available as open source under the terms of the
[MIT License][2], that you can see in the LICENSE.md document of
this repository.

## General SML Resources

- [SML Help][104]
- [Standard ML Family GitHub Project][100]
- [Programming Languages Part A at Coursera (functional programming taught in SML)][101]
- [Elements of ML Programming free online book][108]
- [ML for the Working Programmer free online book][109]
- [SML at Reddit][105]
- [Programming at Reddit][106]
- [Functional Programming at Reddit][107]
- [SML at Wikipedia][102]
- [ML at Wikipedia][103]

## Similar Resources

- [OCaml][151]
- [Haskell][152]
- [Python][153]
- [Complete list of languages][150]

---

[![total lines][70]][71] [![code size][72]][73] [![repo size][74]][75]

[0]: https://badgen.net/github/license/JCPedroza/algorithms-and-data-structures-ts
[1]: https://en.wikipedia.org/wiki/MIT_License
[2]: https://github.com/JCPedroza/algorithms-and-data-structures-sml/actions/workflows/linux.yml/badge.svg
[3]: https://github.com/JCPedroza/algorithms-and-data-structures-sml/actions/workflows/linux.yml

[30]: https://github.com/MLton/mlton
[31]: https://github.com/polyml/polyml
[32]: https://www.smlnj.org/
[33]: https://github.com/kfl/mosml
[34]: https://github.com/melsman/mlkit
[35]: https://github.com/JCPedroza/algorithms-and-data-structures-sml/blob/main/CODE_OF_CONDUCT.md
[36]: https://github.com/JCPedroza/algorithms-and-data-structures-sml/blob/main/CONTRIBUTING.md

[40]: https://sosml.org/
[41]: https://diku-dk.github.io/sml-ide/
[42]: https://www.tutorialspoint.com/execute_smlnj_online.php

[50]: https://thebreakfastpost.com/2016/06/11/naming-conventions-in-standard-ml/
[51]: https://www.cs.cornell.edu/courses/cs312/2008sp/handouts/style.htm

[70]: https://img.shields.io/tokei/lines/github/jcpedroza/algorithms-and-data-structures-sml
[71]: https://img.shields.io/tokei/lines/github/jcpedroza/algorithms-and-data-structures-sml
[72]: https://img.shields.io/github/languages/code-size/jcpedroza/algorithms-and-data-structures-sml
[73]: https://img.shields.io/github/languages/code-size/jcpedroza/algorithms-and-data-structures-sml
[74]: https://img.shields.io/github/repo-size/jcpedroza/algorithms-and-data-structures-sml
[75]: https://img.shields.io/github/repo-size/jcpedroza/algorithms-and-data-structures-sml

[100]: https://smlfamily.github.io/
[101]: https://www.coursera.org/learn/programming-languages
[102]: https://en.wikipedia.org/wiki/SML
[103]: https://en.wikipedia.org/wiki/ML_(programming_language)
[104]: https://smlhelp.github.io
[105]: https://www.reddit.com/r/sml/
[106]: https://www.reddit.com/r/programming/
[107]: https://www.reddit.com/r/functionalprogramming/
[108]: http://infolab.stanford.edu/~ullman/emlp.html
[109]: https://www.cl.cam.ac.uk/~lp15/MLbook/pub-details.html

[120]: https://img.shields.io/github/contributors/JCPedroza/algorithms-and-data-structures-sml
[121]: https://github.com/JCPedroza/algorithms-and-data-structures-sml/graphs/contributors
[122]: https://img.shields.io/github/commit-activity/m/JCPedroza/algorithms-and-data-structures-sml
[123]: https://github.com/JCPedroza/algorithms-and-data-structures-sml/graphs/commit-activity
[124]: https://img.shields.io/github/issues-raw/JCPedroza/algorithms-and-data-structures-sml
[125]: https://github.com/JCPedroza/algorithms-and-data-structures-sml/issues
[126]: https://img.shields.io/github/issues-closed-raw/JCPedroza/algorithms-and-data-structures-sml
[127]: https://github.com/JCPedroza/algorithms-and-data-structures-sml/issues
[128]: https://img.shields.io/github/issues-pr-raw/JCPedroza/algorithms-and-data-structures-sml
[129]: https://github.com/JCPedroza/algorithms-and-data-structures-sml/pulls
[130]: https://img.shields.io/github/issues-pr-closed-raw/JCPedroza/algorithms-and-data-structures-sml
[131]: https://github.com/JCPedroza/algorithms-and-data-structures-sml/pulls

[150]: https://github.com/jcpedroza/algorithms-and-data-structures
[151]: https://github.com/jcpedroza/algorithms-and-data-structures-ml
[152]: https://github.com/jcpedroza/algorithms-and-data-structures-hs
[153]: https://github.com/jcpedroza/algorithms-and-data-structures-py
