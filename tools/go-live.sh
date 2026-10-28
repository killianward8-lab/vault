#!/bin/bash
# Puts Killian's Vault online: makes the GitHub repo killianward8-lab/vault, pushes, turns on GitHub Pages.
set -e
cd "$(dirname "$0")/.."
gh repo create killianward8-lab/vault --public --description "Killian's Poppy Vault: prompts, videos, answers and boards for clients" --source . --push
gh api -X POST repos/killianward8-lab/vault/pages -f "source[branch]=$(git branch --show-current)" -f "source[path]=/" >/dev/null
echo "Live in about a minute: https://killianward8-lab.github.io/vault/"
