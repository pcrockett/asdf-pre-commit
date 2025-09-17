# asdf-pre-commit

[![Build Status](https://github.com/pcrockett/asdf-pre-commit/workflows/ASDF%20CI/badge.svg)](https://github.com/pcrockett/asdf-pre-commit/actions)

[pre-commit][2] plugin for the [asdf][1] version manager.

This is a fork of
[jonathanmorley/asdf-pre-commit](https://github.com/jonathanmorley/asdf-pre-commit).
Main changes include:

* removed support for python 2 and particularly old versions of pre-commit
* removed installation by pip; _only_ uses pre-commit's zipapp from GitHub releases
* got it working with the newer Golang-version of asdf

## Requirements

This plugin should work on Linux and Mac operating systems. See
[`bin/help.deps`](bin/help.deps) for required tools.

## Installing

```
asdf plugin add pre-commit https://github.com/pcrockett/asdf-pre-commit.git
```

[1]: https://asdf-vm.com/
[2]: https://pre-commit.com/
