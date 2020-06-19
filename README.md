# ScholarshipOwl Helm Charts Repository
Helm charts repository.

To use it run:
```bash
helm repo add sowl https://scholarshipowl.github.io/charts
```

## How to publish new chart.
Create new chart in the root directory.
```bash
helm create helloworld
```

## How to update chart version
Make changes to the chart and bump the chart version in `Chart.yaml`

Then you need to package chart and regenerate index and do commit.

```bash
helm package helloworld --destination ./docs
helm repo index docs --url https://scholarshipowl.github.io/charts
```

Or run
```bash
./package.sh helloworld
```