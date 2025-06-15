import pandas as pd

from sklearn.datasets import load_iris
import pandas as pd
iris = load_iris()
df = pd.DataFrame(data=iris.data, columns=iris.feature_names)
df['target'] = iris.target

# Save the dataset to the output artifact path
df.to_csv("/tmp/tt.csv", index=False)

# validate it with pandas
df = pd.read_parquet('auto_review_data_v8_0.parquet')
print("File is a valid Parquet file (pandas read).")
