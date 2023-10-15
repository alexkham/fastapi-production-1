from fastapi import FastAPI
from router import basic_math

app = FastAPI()
app.include_router(basic_math.router)


@app.get("/")
async def root():
    return {"message": "Hello to All My !!!!!???? Happy Big World 12345 67890 honey"}

@app.get("/ask")
async def ask():
    return {"message": "How are  you today ?"}

