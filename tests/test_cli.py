import subprocess, os
from subprocess import CompletedProcess

import pytest


@pytest.fixture
def python_env_dir():
    python_env_dir =  "/home/wiseupdata/.cache/pypoetry/virtualenvs/myproject-pOhCNLdi-py3.10/bin/python"
    return python_env_dir

def test_cli(python_env_dir):
    
    result  = subprocess.run([f"{python_env_dir}", "-m", "myproject.cli", "test"], capture_output=True, text=True)

    assert result.returncode == 0
    assert "test" in result.stdout

if __name__ == "__main__":
    pytest.main(["-v", "test_cli.py"])

