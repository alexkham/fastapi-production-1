from fastapi import FastAPI

app = FastAPI()


@app.get("/")
async def root():
    return {"message": "Hello to All My !!!!!???? Happy Big World 12345 67890"}

@app.get("/ask")
async def ask():
    return {"message": "How are  you today ?"}

