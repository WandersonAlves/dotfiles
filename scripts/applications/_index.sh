for f in *.sh; do
  sh "$f" || break  # execute successfully or break
  # Or more explicitly: if this execution fails, then stop the `for`:
  # if ! bash "$f"; then break; fi
done