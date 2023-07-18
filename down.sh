#! /usr/bin/env  bash

for f in ./*.yml; do
  echo "Deleting $f..."
  kubectl delete -f "$f"
done

echo "Done!"
