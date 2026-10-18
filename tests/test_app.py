import sys
from pathlib import Path
sys.path.insert(0, str(Path(__file__).parents[1] / "app"))
from app import app

def test_health():
    client = app.test_client()
    response = client.get("/health")
    assert response.status_code == 200
    assert response.text == "ok"
