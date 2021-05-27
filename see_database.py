import pandas as pd

df = pd.read_sql('Group_1_groupdb_backup.sql')
print(df.head)