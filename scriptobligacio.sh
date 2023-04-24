#!/bin/bash

if [ $# -ne 2 ]; then
  echo "ERROR: Aquest script requereix dos arguments."
  exit 1
fi

echo "Els dos arguments són: $1 i $2."
