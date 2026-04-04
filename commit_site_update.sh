#!/bin/bash
# ─────────────────────────────────────────────────────
# briancronin.ai Site Update — Multi-signal + Transactions
# Run this from the brian-cronin-site root directory
# ─────────────────────────────────────────────────────

set -e

echo "🏈 Updating the showcase site..."
echo ""

git add portfolio-agents.html

git commit -m "$(cat <<'EOF'
Update portfolio-agents.html — multi-signal sentiment, transactions, multi-account

- Macro Scanner card: now lists VADER NLP, Alpha Vantage AI, Fear & Greed outputs
- Security Scanner card: mentions 60/40 VADER/keyword blend and signal disagreements
- Architecture diagram: SnapTrade expanded (holdings, balances, transactions, orders,
  performance), added Alpha Vantage, VADER NLP, CNN Fear & Greed as data sources
- Dashboard preview: added Transactions tab with summary cards, filters, sortable table
- Features grid: added Transaction History, Multi-Account Selector, Multi-Signal Sentiment
- Tech stack: added Multi-Signal Sentiment card, updated Finnhub+SnapTrade description

Co-Authored-By: Claude Opus 4.6 <noreply@anthropic.com>
EOF
)"

echo "✅ Site commit done"
echo ""

echo "🚀 Pushing to origin..."
git push

echo ""
echo "════════════════════════════════════════════════"
echo "  briancronin.ai updated and pushed!"
echo "════════════════════════════════════════════════"
