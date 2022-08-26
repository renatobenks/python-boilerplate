from . import app, config


def load_config_mock():
    return {
        "CONFIG": "some_config"
    }

class TestWhenTheAppIsRunning:
    def test_loads_config_app(self, mocker, monkeypatch) -> None:
        monkeypatch.setattr(config, "load", load_config_mock)
        load_config = mocker.spy(config, "load")

        app.run()

        load_config.assert_called_once()
