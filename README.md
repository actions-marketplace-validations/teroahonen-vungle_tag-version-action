# tag-version action

This actions wraps go library tag-version to a container. https://github.com/rleszilm/tag-version

## Inputs

## `args`

**Required** tag-version binary arguments.

```
- branch, b, false, When set the branch will be included in the version.
- docker, d, false, When set the output version will be generated in a docker compatible manner.
- increment, i, false, "When set the incremented version is returned.
- full, f, false, "When set the full semver version is returned. IE v1.2.0 instead of v1.2 for a minor version.
- revision, r, false, "When set the revision will be included in the version.
- semver, s", false, "When set the semver will be included in the version regardless of whether the version is for the master branch.
- master, m, master, Overrides the \"master\" branch of the repo.
- default-branch, B, , When set this branch will be used when one cannot be determined.
```

## `command`

**Required** `major|minor|patch` , Section of the semantic version in the format v<major>.<minor>.<patch>

## Outputs

## `version`

Version create based in inputs

## Example usage

```
uses: actions/tag-version-action@v1
with:
  command: 'minor'
  args: '-fis'
```