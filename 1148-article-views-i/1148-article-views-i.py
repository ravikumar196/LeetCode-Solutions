import pandas as pd

def article_views(views: pd.DataFrame) -> pd.DataFrame:
    df = views[views["author_id"] == views["viewer_id"]]
    return (
        df[["author_id"]]
        .rename(columns={"author_id": "id"})   # rename column
        .drop_duplicates()                     # unique values
        .sort_values(by="id")                  # ascending order
        .reset_index(drop=True)                # clean index
    )
