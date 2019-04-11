#!/bin/bash

AUTH_TOKEN=$(gcloud auth application-default print-access-token)
AUTH_HEADER="Authorization: Bearer ${AUTH_TOKEN}"

BASE_URL="https://spanner.googleapis.com"

# Listing instance configs for the a project
curl -H "${AUTH_HEADER}" "${BASE_URL}/v1/projects/jgm-cloud-cxx/instanceConfigs"
