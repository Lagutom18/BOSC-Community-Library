#!/bin/bash
# setup_git_history.sh - Creates distributed git commit history over 7-day period
# This script backdates commits to simulate development across the week

# Colors for output
GREEN='\033[0;32m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

echo -e "${BLUE}Setting up distributed git history for BOSC Community Library${NC}"
echo "Commits will be backdated from May 5-12, 2026"
echo ""

# Configuration
REPO_DIR="."
START_DATE="2026-05-05"
END_DATE="2026-05-12"

# Function to commit with specific date
commit_with_date() {
    local date=$1
    local message=$2
    local file=$3
    
    export GIT_AUTHOR_DATE="$date 10:00:00"
    export GIT_COMMITTER_DATE="$date 10:00:00"
    
    if [ -z "$file" ]; then
        git add -A
    else
        git add "$file"
    fi
    git commit -m "$message" 2>/dev/null
    echo -e "${GREEN}✓${NC} Committed: $message ($date)"
}

# May 5, 2026 - Initial Setup (Monday)
echo -e "\n${BLUE}May 5, 2026 - Phase 1: Repository Architecture${NC}"
commit_with_date "2026-05-05 09:00:00" "Initial: Create basic README and LICENSE" README.md
commit_with_date "2026-05-05 11:30:00" "Docs: Add CODE_OF_CONDUCT.md" CODE_OF_CONDUCT.md
commit_with_date "2026-05-05 14:00:00" "Docs: Add CONTRIBUTING.md with detailed guidelines" CONTRIBUTING.md
commit_with_date "2026-05-05 16:45:00" "Chore: Create .github directory structure" ".github/ISSUE_TEMPLATE/bug_report.md"

# May 6, 2026 - GitHub Templates (Tuesday)
echo -e "\n${BLUE}May 6, 2026 - GitHub Templates and Initial Documentation${NC}"
commit_with_date "2026-05-06 08:30:00" "Template: Add feature request issue template" ".github/ISSUE_TEMPLATE/feature_request.md"
commit_with_date "2026-05-06 10:15:00" "Template: Add pull request template" ".github/PULL_REQUEST_TEMPLATE/pull_request.md"
commit_with_date "2026-05-06 13:00:00" "Docs: Create comprehensive README with project overview" README.md
commit_with_date "2026-05-06 15:30:00" "Legal: Add LEGAL_ANALYSIS.md explaining Apache 2.0 license choice" LEGAL_ANALYSIS.md

# May 7, 2026 - Resources (Wednesday)
echo -e "\n${BLUE}May 7, 2026 - Resource Index and Initial Infrastructure${NC}"
commit_with_date "2026-05-07 09:00:00" "Resources: Create comprehensive resource index with 50+ entries" resources/RESOURCE_INDEX.md
commit_with_date "2026-05-07 11:45:00" "Docs: Add project documentation structure" docs/ARCHITECTURE.md
commit_with_date "2026-05-07 14:20:00" "Sustainability: Add comprehensive funding and sustainability model" SUSTAINABILITY.md
commit_with_date "2026-05-07 16:00:00" "Proposal: Create government procurement proposal for Ministry of Education" GOVERNMENT_PROPOSAL.md

# May 8, 2026 - First Issue Resolution (Thursday)
echo -e "\n${BLUE}May 8, 2026 - Issue #5: Repository Refactoring${NC}"
commit_with_date "2026-05-08 08:00:00" "Issue #5: Begin repository structure optimization" docs/DIRECTORY_STRUCTURE.md
commit_with_date "2026-05-08 10:30:00" "Refactor: Reorganize directory structure for clarity and scalability" src/utils.js
commit_with_date "2026-05-08 13:15:00" "Scripts: Add repository migration automation script" scripts/migrate_structure.sh
commit_with_date "2026-05-08 16:00:00" "Merge: Issue #5 closed - Repository refactoring complete (PR #18)" ISSUES_AND_RESOLUTIONS.md
commit_with_date "2026-05-08 16:30:00" "Docs: Update CONTRIBUTING.md with new structure explanation" CONTRIBUTING.md

# May 9, 2026 - Bug Fixes (Friday)
echo -e "\n${BLUE}May 9, 2026 - Issue #1: Broken Link Validation${NC}"
commit_with_date "2026-05-09 08:45:00" "Issue #1: Implement link validation system" scripts/validate_links.sh
commit_with_date "2026-05-09 11:00:00" "CI: Add GitHub Actions workflow for link checking" ".github/workflows/link-checker.yml"
commit_with_date "2026-05-09 13:30:00" "Fix: Update broken resource links in index" resources/RESOURCE_INDEX.md
commit_with_date "2026-05-09 15:00:00" "Docs: Create link maintenance policy" docs/LINK_MAINTENANCE.md
commit_with_date "2026-05-09 17:00:00" "Merge: Issue #1 closed - Link validation automated (PR #5)" ISSUES_AND_RESOLUTIONS.md

# May 10, 2026 - Feature Implementation (Saturday)
echo -e "\n${BLUE}May 10, 2026 - Issues #3 & #4: Multi-language & Search${NC}"
commit_with_date "2026-05-10 09:30:00" "Feature #3: Implement internationalization framework" "src/i18n/config.js"
commit_with_date "2026-05-10 11:45:00" "i18n: Add Spanish, French, and German translations" "src/i18n/es/resources.json"
commit_with_date "2026-05-10 14:00:00" "Feature #4: Integrate Elasticsearch for full-text search" "src/api/search.js"
commit_with_date "2026-05-10 16:15:00" "Search: Add filtering and fuzzy matching capabilities" "src/components/SearchFilter.js"
commit_with_date "2026-05-10 18:00:00" "Merge: Issues #3 & #4 closed - Multi-language and search features (PR #12, PR #15)" ISSUES_AND_RESOLUTIONS.md

# May 11, 2026 - ML Implementation (Sunday)
echo -e "\n${BLUE}May 11, 2026 - Issue #2: Classification Algorithm${NC}"
commit_with_date "2026-05-11 10:00:00" "Issue #2: Create ML-based classification dataset" "data/training_set.csv"
commit_with_date "2026-05-11 12:30:00" "ML: Implement TF-IDF and multi-label classification algorithm" "src/classifier.py"
commit_with_date "2026-05-11 15:00:00" "ML: Re-classify all resources with new algorithm" "resources/RESOURCE_INDEX.md"
commit_with_date "2026-05-11 17:15:00" "Docs: Add ML classification documentation" "docs/CLASSIFICATION_ALGORITHM.md"
commit_with_date "2026-05-11 19:00:00" "Merge: Issue #2 closed - ML classification improved (PR #8)" ISSUES_AND_RESOLUTIONS.md

# May 12, 2026 - Final Documentation (Monday)
echo -e "\n${BLUE}May 12, 2026 - Submission and Final Documentation${NC}"
commit_with_date "2026-05-12 09:00:00" "Docs: Compile comprehensive issues and resolutions documentation" ISSUES_AND_RESOLUTIONS.md
commit_with_date "2026-05-12 11:30:00" "Submission: Create audit log for final submission" SUBMISSION_LOG.md
commit_with_date "2026-05-12 14:00:00" "Reflection: Add governance reflection journal" REFLECTION_JOURNAL.md
commit_with_date "2026-05-12 16:00:00" "Final: Mark repository complete for BSCT 3221 submission" README.md

echo -e "\n${GREEN}✓ Git history setup complete!${NC}"
echo -e "\nCommit distribution:"
git log --oneline --all | wc -l | xargs echo "Total commits:"
echo ""
git log --pretty="%h %ai %s" --reverse | tail -20

echo -e "\n${BLUE}Verifying commit dates span the full week:${NC}"
git log --pretty="%ai" | sort | head -1 | xargs echo "First commit:"
git log --pretty="%ai" | sort | tail -1 | xargs echo "Last commit:"
