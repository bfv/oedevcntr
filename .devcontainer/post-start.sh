#!/bin/bash

# post-start script pose a security risk if. Use with caution. 
# See https://aka.ms/vscode-remote/containers/security for details.

echo "post start script executing"

echo "git update-index --skip-worktree .vscode/mcp.json"
git update-index --skip-worktree .vscode/mcp.json

echo "post start script executed"
