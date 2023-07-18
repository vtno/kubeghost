#! /usr/bin/env  bash

for f in ./*.yml; do
  echo "Applying $f..."
  kubectl apply -f "$f" --namespace=default
done

echo "Done!"
