import os
from fastapi import FastAPI
from fastapi.middleware.cors import CORSMiddleware
from Controller.create_avatar_controller import CreateAvatarController
from dotenv import load_dotenv

load_dotenv()

app = FastAPI()
main_controller = CreateAvatarController()

app.include_router(main_controller.router)
origins = [
    "*"
]
app.add_middleware(
    CORSMiddleware,
    allow_origins=origins,
    allow_credentials=True,
    allow_methods=["*"],
    allow_headers=["*"],
)


@app.get("/")
async def health():
    return {"message": "Hello World"}
