import pandas as pd

# read CSV file
df = pd.read_csv("input.csv")

# increase ages by 2
df["age"] = df["age"] + 2

# save as a new csv
df.to_csv("output.csv", index=False)

print("✅ Transformation completed! 'output.csv' file is created.")
