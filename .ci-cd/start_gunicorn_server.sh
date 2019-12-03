#!/usr/bin/env bash
ENV_PATH = .env/prod.env
pyenv activate ananda-store
pip install -r requirements.txt
gunicorn --bind 0.0.0.0:8000 ananda_store.wsgi
