import pandas as pd

df_contributors = pd.read_json("../../data/contributors.json")
df_contributors = df_contributors.sort_values("first_commit")
md_contributors = df_contributors.to_markdown(index=False)
n, _ = df_contributors.shape

with open("contributors.md", "w") as file:
    file.write(f"# Contributors\n")
    file.write(f"We have {n} contributors.\n\n")
    file.write(md_contributors)
