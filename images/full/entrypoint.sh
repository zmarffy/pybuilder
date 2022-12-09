#!/bin/sh

if [ -n "$GH_TOKEN" ]; then
    gh auth setup-git
fi

exec "$@"