#!/bin/bash
cd "$(dirname "$0")"
IP=$(ipconfig getifaddr en0 2>/dev/null || ipconfig getifaddr en1)
echo ""
echo "  Computer:  http://localhost:8000"
echo "  Phone:     http://$IP:8000   (same Wi-Fi)"
echo ""
echo "  Press Ctrl+C to stop."
python3 -m http.server 8000 --bind 0.0.0.0
