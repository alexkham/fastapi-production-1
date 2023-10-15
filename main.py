from fastapi import FastAPI
import routers
from routers import basic




app = FastAPI()
app.include_router(routers.basic.router)


@app.get("/")
async def root():
    return {"message": "Hello to All My !!!!!???? Happy Big World 12345 67890 honey"}

@app.get("/ask")
async def ask():
    return {"message": "How are  you today Ah??"}

