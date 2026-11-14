#!/bin/bash
# Mac / Linux 用：models フォルダ内の .usdz ファイルを自動一覧化
cd "$(dirname "$0")"
echo "window.CUSTOM_MODELS = [" > ./models/models_list.js
for f in ./models/*.usdz; do
  [ -e "$f" ] || continue
  fname=$(basename "$f")
  echo "  "$fname"," >> ./models/models_list.js
done
echo "];" >> ./models/models_list.js
echo "models/models_list.js を更新しました。"
