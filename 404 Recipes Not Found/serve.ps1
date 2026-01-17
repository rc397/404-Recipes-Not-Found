param(
  [int]$Port = 8000
)

$ErrorActionPreference = 'Stop'

$docs = Join-Path $PSScriptRoot 'docs'
if (-not (Test-Path $docs)) {
  throw "Docs folder not found: $docs"
}

Write-Host "Serving $docs on http://localhost:$Port" -ForegroundColor Green
Write-Host "Press Ctrl+C to stop." -ForegroundColor DarkGray

# Prefer Python if available (most common)
$py = Get-Command python -ErrorAction SilentlyContinue
if ($py) {
  Push-Location $docs
  try {
    python -m http.server $Port
  } finally {
    Pop-Location
  }
  exit 0
}

$py3 = Get-Command py -ErrorAction SilentlyContinue
if ($py3) {
  Push-Location $docs
  try {
    py -m http.server $Port
  } finally {
    Pop-Location
  }
  exit 0
}

Write-Host "Python not found. You can still open docs\\index.html directly in a browser." -ForegroundColor Yellow
Write-Host "Optional: install Python from https://python.org to use serve.ps1" -ForegroundColor Yellow
