from fastapi import APIRouter

router=APIRouter(
    prefix='/basic',
    tags=['basic_math']

)


@router.get("/add/{x}/{y}")
def add(x,y):
    result=float(x)+float(y)
    
    return {"result":str(result)}