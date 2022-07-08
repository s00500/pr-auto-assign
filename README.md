# PR Auto Assign

![codeql](https://github.com/cam3ron2/pr-auto-assign/actions/workflows/codeql-analysis.yml/badge.svg)
[![tests](https://github.com/cam3ron2/pr-auto-assign/actions/workflows/auto-assign.yml/badge.svg)](https://github.com/cam3ron2/pr-auto-assign/actions/workflows/auto-assign.yml)
[![build](https://github.com/cam3ron2/pr-auto-assign/actions/workflows/build-release.yml/badge.svg)](https://github.com/cam3ron2/pr-auto-assign/actions/workflows/build-release.yml)
![downloads](https://img.shields.io/github/downloads/cam3ron2/pr-auto-assign/latest/total)
![License](https://img.shields.io/github/license/cam3ron2/pr-auto-assign)
![Language](https://img.shields.io/badge/language-Go-blue.svg)
[![Go Report Card](https://goreportcard.com/badge/github.com/cam3ron2/pr-auto-assign)](https://goreportcard.com/report/github.com/cam3ron2/pr-auto-assign)

A Github action that will automatically assign a PR to its creator, and assign review to specified users, teams, or a combination of both.

## Usage

```yaml
name: Auto Assign
on: [pull_request]

env:
  GITHUB_TOKEN: ${{ secrets.GH_TOKEN }}

jobs:
  auto_assign:
    name: Auto Assign PR
    runs-on: ubuntu-latest
    steps:
      - name: Checkout the repository
        uses: actions/checkout@v3
      - uses: cam3ron2/pr-auto-assign@latest
        with:
          reviewers: "MyOrg/some-people,myUsername,someOtherUser"
```

### Required Enviroment Variables

- GITHUB_TOKEN: A Github personal access token that can update the assignee and reviewers of a PR.

### Inputs

- reviewers: A comma separated list of users, teams, or both to assign as reviewers.
