#!/usr/bin/env bash
# ============================================================================
# Cài đặt bộ 3 Agent Skills (don-xin-nghi-hoc, email-giang-vien, lam-slide-thuyet-trinh)
# Tác giả: Nguyễn Tuấn Khang (MSSV: 077206003397 - UTH)
# ============================================================================

set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
SOURCE_DIR="$SCRIPT_DIR/skills"
SKILLS=("don-xin-nghi-hoc" "email-giang-vien" "lam-slide-thuyet-trinh")

install_to() {
    local target_dir="$1"
    local label="$2"
    mkdir -p "$target_dir"
    for skill in "${SKILLS[@]}"; do
        rm -rf "$target_dir/$skill"
        cp -R "$SOURCE_DIR/$skill" "$target_dir/$skill"
        echo "  [+] Đã cài '$skill' -> $target_dir/$skill"
    done
    echo "[OK] Hoàn tất cài đặt cho $label ($target_dir)"
    echo ""
}

echo "============================================================"
echo "   CÀI ĐẶT BỘ 3 AGENT SKILLS - NGUYỄN TUẤN KHANG (UTH)     "
echo "============================================================"

install_to "$HOME/.gemini/config/skills" "Antigravity Global (~/.gemini/config/skills)"
install_to "$HOME/.claude/skills" "Claude Code Global (~/.claude/skills)"
install_to "$SCRIPT_DIR/.agents/skills" "Antigravity Workspace (.agents/skills)"
install_to "$SCRIPT_DIR/.claude/skills" "Claude Code Workspace (.claude/skills)"

echo "Tất cả 3 skill đã sẵn sàng sử dụng!"
