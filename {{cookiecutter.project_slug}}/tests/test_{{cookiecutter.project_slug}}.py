import pytest


class Test{{ cookiecutter.project_slug|title }}:
    """Tests for `{{ cookiecutter.project_slug }}` package."""

    @pytest.fixture
    def pytest_fixture(self):
        pass

    def test_000_something(self, pytest_fixture):
        """Test something."""
