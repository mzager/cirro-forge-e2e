#!/usr/bin/env python3
# `counts.csv` is produced by the cell above: forge connects steps by
# matching output filenames to input filenames, not by cell order.
import pandas as pd

df = pd.read_csv("counts.csv")
df["cpm"] = df["count"] / df["count"].sum() * 1e6
df.to_csv("normalised.csv", index=False)
