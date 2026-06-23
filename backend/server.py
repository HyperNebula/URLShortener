from fastapi import FastAPI
from pydantic import BaseModel

app = FastAPI()


class UrlLink(BaseModel):
    url_str: str


@app.post("/api/addLink")
def read_link(url_link: UrlLink):
    url_link_dict = url_link.model_dump()

    print(url_link_dict)

    return {"Hello": "World"}


# @app.get("/items/{item_id}")
# def read_item(item_id: int, q: str | None = None):
#   return {"item_id": item_id, "q": q}
