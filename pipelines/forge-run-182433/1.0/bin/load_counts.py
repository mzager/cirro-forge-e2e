#!/usr/bin/env python3
# Each annotated cell becomes one step of the pipeline, run in its own
# container. Steps share files, never variables — so every cell imports
# what it needs and reads its inputs from disk.
import pandas as pd

counts = pd.DataFrame({"gene": ["A", "B", "C"], "count": [10, 32, 7]})
counts.to_csv("counts.csv", index=False)
