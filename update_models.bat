@echo off
chcp 65001 > nul
echo models フォルダ内の .usdz ファイルをスキャンして一覧を更新しています...
powershell -NoProfile -Command "$files = Get-ChildItem -Path '.\models\*.usdz' | Select-Object -ExpandProperty Name; $json = ConvertTo-Json -InputObject @($files) -Compress; 'window.CUSTOM_MODELS = ' + $json + ';' | Set-Content -Path '.\models\models_list.js' -Encoding UTF8"
echo 更新が完了しました！models\models_list.js に反映されました。
pause
