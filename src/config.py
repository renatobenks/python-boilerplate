import os
from typing import TypedDict
from pathlib import Path
from dotenv import load_dotenv

Config = TypedDict("Config", {
    "ENVIRONMENT": str,
    "GOOGLE_DRIVE_API": str,
})


def load() -> Config:
    environment = os.getenv("ENV")
    env_file = Path(f".env.{environment}")

    assert environment and env_file.exists(), "Unknown env type from the `ENV` variable"

    load_dotenv(dotenv_path=env_file)

    return {
        "ENVIRONMENT": environment,
        "GOOGLE_DRIVE_API": os.getenv("GOOGLE_DRIVE_API")
    }
