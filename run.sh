#!/bin/bash
echo "$(dirname "$0")"
poetry run python whisper-dictation.py
