#!/bin/bash
VALUE=$(printenv VIRTUAL_ENV)
export UV_PROJECT_ENVIRONMENT="$VALUE"
uv pip install hatchling
uv cache clean
uv lock --locked --offline
