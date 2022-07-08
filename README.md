# PR Auto Assign

![codeql](https://github.com/cam3ron2/pr-auto-assign/actions/workflows/codeql-analysis.yml/badge.svg)

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
      - uses: cam3ron2/pr-auto-assign@master
        with:
          reviewers: "MyOrg/some-people,myUsername,someOtherUser"
```

### Required Enviroment Variables

- GITHUB_TOKEN: A Github personal access token that can update the assignee and reviewers of a PR.

### Inputs

- reviewers: A comma separated list of users, teams, or both to assign as reviewers.
