import re
from pathlib import Path
from collections import defaultdict


def generate_nocite():
  
  base_dir = Path(".")

  # Regex pattern to match \abx@aux@cite{...}{key}
  cite_pattern = re.compile(r'\\abx@aux@cite\{[^}]*\}\{([^}]+)\}')

  # Dict to store: {filepath: [keys]}
  citations_by_file = defaultdict(set)

  for aux_file in base_dir.rglob("*.aux"):
    if "bibliography" in aux_file.as_posix().lower(): 
    # or use aux_file.name.lower() for filename match
      continue

    with aux_file.open(encoding="utf-8") as f:
      for line in f:
        match = cite_pattern.search(line)
        if match:
          key = match.group(1)
          citations_by_file[aux_file.relative_to(base_dir)].add(key)

  # Write to nocite_with_files.tex
  with open("bibliography/nocite.tex", "w", encoding="utf-8") as out:
    for filepath in sorted(citations_by_file):
      out.write(f"% From: {filepath}\n")
      for key in sorted(citations_by_file[filepath]):
        out.write(f"\\nocite{{{key}}}\n")
      out.write("\n")

if __name__=='__main__':

  generate_nocite()