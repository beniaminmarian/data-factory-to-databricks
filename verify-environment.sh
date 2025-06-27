#!/bin/bash

echo "=== DevOps Environment Verification ==="
echo "Date: $(date)"
echo "User: $(whoami)"
echo "OS: $(uname -a)"
echo ""

echo "=== Core Tools ==="
echo "Git: $(git --version 2>/dev/null || echo 'NOT INSTALLED')"
echo "Azure CLI: $(az --version 2>/dev/null | head -1 || echo 'NOT INSTALLED')"
echo "Node.js: $(node --version 2>/dev/null || echo 'NOT INSTALLED')"
echo "Python: $(python3 --version 2>/dev/null || echo 'NOT INSTALLED')"
echo ""

echo "=== Azure Connection ==="
az account show --query '{name:name, id:id, tenantId:tenantId}' -o table 2>/dev/null || echo "Not logged in to Azure"
echo ""

echo "=== Directory Structure ==="
echo "Projects directory:"
tree ~/projects -L 2 2>/dev/null || echo "Tree not available, using ls:"
ls -la ~/projects/ 2>/dev/null || echo "Projects directory not found"
echo ""

echo "=== Template Repository ==="
if [ -d "$HOME/projects/learning/templates/data-factory-to-databricks" ]; then
    echo "✅ Template repository cloned"
    ls $HOME/projects/learning/templates/data-factory-to-databricks/
else
    echo "❌ Template repository not found"
fi
echo ""

echo "=== VS Code Integration ==="
echo "VS Code WSL integration: Check bottom-left corner shows 'WSL: Ubuntu'"
echo "Required extensions:"
echo "- WSL"
echo "- Azure Tools" 
echo "- Azure Resource Manager (ARM) Tools"
echo "- GitLens"
echo "- YAML"
echo ""

echo "=== Summary ==="
echo "✅ Environment ready if all tools show versions above"
echo "✅ Azure connection shows your subscription"
echo "✅ Template repository is available"
echo "❌ Fix any items marked as 'NOT INSTALLED' or 'not found'"
