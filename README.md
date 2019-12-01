# Python Tools Sample

[![CircleCI](https://circleci.com/gh/kaeawc/python-tools-sample/tree/master.svg?style=svg)](https://circleci.com/gh/kaeawc/python-tools-sample/tree/master)

[![codecov](https://codecov.io/gh/kaeawc/python-tools-sample/branch/master/graph/badge.svg)](https://codecov.io/gh/kaeawc/python-tools-sample)

This is a repository of how to use code analysis with continuous integration services to show that the code being written adheres to team code style and tests passing. The goal of these tools is to minimize or reduce tech debt while providing automated checks so that developers can focus on harder and more interesting problems.

# Running code analysis locally

We have a `Makefile` that allows you to do lint, unit test, and coverage reporting on the sample codebase.

# CircleCI

Circle currently does checks on every commit to kick off lint, unit test, and coverage reporting

# CodeCov

This is a web service that shows how coverage is changing per commit in both lines and complexity. It comments on pull requests about how the changes are effecting overall codebase coverage and where the biggest impacts are.
