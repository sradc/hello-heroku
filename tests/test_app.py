import pytest

from src.app import app, HELLO_WORLD_MARKUP


@pytest.fixture
def client():
    """See:
    https://flask.palletsprojects.com/en/2.0.x/testing/#the-testing-skeleton
    """
    with app.test_client() as client:
        yield client


def test_index_route(client):
    response = client.get("/")
    assert response.data.decode("utf-8") == HELLO_WORLD_MARKUP, (
        "Unexpected reponse data:"
        f"\n{response.data.decode('utf-8') = }"
        f"\n{HELLO_WORLD_MARKUP = }"
    )
    print("response", type(response.data))
