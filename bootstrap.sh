#!/bin/bash

# depending on your system, instructions for docker will vary
sudo apt install docker.io

# task runner
python3 -m venv .env
source .env/bin/activate
pip install -r requirements.txt
