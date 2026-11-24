<#
.SYNOPSIS
    Cài đặt bộ 3 Agent Skills (don-xin-nghi-hoc, email-giang-vien, lam-slide-thuyet-trinh)
    toàn cục (Global) hoặc cục bộ (Workspace) cho Antigravity (Gemini) và Claude Code.

.DESCRIPTION
    Tác giả: Nguyễn Tuấn Khang (MSSV: 077206003397 - Trường ĐH Giao thông Vận tải TP.HCM - UTH)
    Script này tự động sao chép 3 skills độc lập vào:
    1. Toàn cục Antigravity: ~/.gemini/config/skills/
    2. Toàn cục Claude Code: ~/.claude/skills/
    3. Cục bộ trong dự án hiện tại: .agents/skills/ và .claude/skills/
#>

param(
    [ValidateSet("All", "Global", "Workspace")]
    [string]$Scope = "All"
)

$ErrorActionPreference = "Stop"
$RepoRoot = Split-Path -Parent $MyInvocation.MyCommand.Path
$SourceSkillsDir = Join-Path $RepoRoot "skills"

$Skills = @(
    "don-xin-nghi-hoc",
    "email-giang-vien",
    "lam-slide-thuyet-trinh"
)

function Copy-SkillsToTarget {
    param([string]$TargetBaseDir, [string]$Label)
    try {
        if (-not (Test-Path $TargetBaseDir)) {
            New-Item -ItemType Directory -Path $TargetBaseDir -Force | Out-Null
        }
        foreach ($skill in $Skills) {
            $src = Join-Path $SourceSkillsDir $skill
            $dst = Join-Path $TargetBaseDir $skill
            if (Test-Path $dst) {
                Remove-Item -Path $dst -Recurse -Force
            }
            Copy-Item -Path $src -Destination $dst -Recurse -Force
            Write-Host "  [+] Đã cài '$skill' -> $dst" -ForegroundColor Green
        }
        Write-Host "[OK] Hoàn tất cài đặt cho $Label ($TargetBaseDir)`n" -ForegroundColor Cyan
    } catch {
        Write-Host "[!] Không thể ghi vào $TargetBaseDir ($($_.Exception.Message))" -ForegroundColor Yellow
    }
}

Write-Host "============================================================" -ForegroundColor Magenta
Write-Host "   CÀI ĐẶT BỘ 3 AGENT SKILLS - NGUYỄN TUẤN KHANG (UTH)     " -ForegroundColor Magenta
Write-Host "============================================================`n" -ForegroundColor Magenta

if ($Scope -eq "All" -or $Scope -eq "Global") {
    $GeminiGlobalSkills = Join-Path $HOME ".gemini\config\skills"
    Copy-SkillsToTarget -TargetBaseDir $GeminiGlobalSkills -Label "Antigravity Global (~/.gemini/config/skills)"

    $ClaudeGlobalSkills = Join-Path $HOME ".claude\skills"
    Copy-SkillsToTarget -TargetBaseDir $ClaudeGlobalSkills -Label "Claude Code Global (~/.claude/skills)"
}

if ($Scope -eq "All" -or $Scope -eq "Workspace") {
    $WorkspaceAgentSkills = Join-Path $RepoRoot ".agents\skills"
    Copy-SkillsToTarget -TargetBaseDir $WorkspaceAgentSkills -Label "Antigravity Workspace (.agents/skills)"

    $WorkspaceClaudeSkills = Join-Path $RepoRoot ".claude\skills"
    Copy-SkillsToTarget -TargetBaseDir $WorkspaceClaudeSkills -Label "Claude Code Workspace (.claude/skills)"
}

Write-Host "Tất cả 3 skill đã sẵn sàng sử dụng mà không bị xung đột!" -ForegroundColor Green
