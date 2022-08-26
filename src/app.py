from . import config


def run() -> None:
    print(f"CONFIG -> {config.load()}")
