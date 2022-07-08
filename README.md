# PR Auto Assign

![codeql](https://github.com/cam3ron2/pr-auto-assign/actions/workflows/codeql-analysis.yml/badge.svg)
![tests](https://github.com/cam3ron2/pr-auto-assign/actions/workflows/auto-assign.yml/badge.svg)
![build](https://github.com/cam3ron2/pr-auto-assign/actions/workflows/build-release.yml/badge.svg)
[![Go Report Card](https://goreportcard.com/badge/github.com/danielqsj/kafka_exporter)](https://goreportcard.com/report/github.com/danielqsj/kafka_exporter)
[![Language](https://img.shields.io/badge/language-Go-red.svg)](https://github.com/danielqsj/kafka-exporter)
[![GitHub release](https://img.shields.io/badge/release-1.2.0-green.svg)](https://github.com/alibaba/derrick/releases)
[![License](https://img.shields.io/badge/license-Apache%202-4EB1BA.svg)](https://www.apache.org/licenses/LICENSE-2.0.html)

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
      - uses: cam3ron2/pr-auto-assign@master
        with:
          reviewers: "MyOrg/some-people,myUsername,someOtherUser"
```

### Required Enviroment Variables

- GITHUB_TOKEN: A Github personal access token that can update the assignee and reviewers of a PR.

### Inputs

- reviewers: A comma separated list of users, teams, or both to assign as reviewers.
