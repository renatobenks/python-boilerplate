import os
from pathlib import Path
from dotenv import load_dotenv

load_dotenv(dotenv_path=Path("..") / ".env")

ENVIRONMENT = os.getenv("ENVIRONMENT")
