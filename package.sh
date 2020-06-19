#!/bin/bash


if [ ! $# == 1  ]
then
  echo "This script will package the chart and regenerate index of the specified chart."
  echo "Usage: $0 chartname"

  exit 1;
fi

DESTINATION_FOLDER=docs
CHART_FOLDER=$1
CHART_URL=https://scholarshipowl.github.io/charts/

helm package $CHART_FOLDER --destination $DESTINATION_FOLDER
helm repo index $DESTINATION_FOLDER --url $CHART_URL