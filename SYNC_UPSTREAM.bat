@echo off
echo 🔄 Sincronizando com o Sapo original (swimapps)...
git fetch upstream main
echo.
echo 🔎 Diferencas encontradas:
git log main..upstream/main --oneline --graph --decorate
echo.
echo 💡 Use: git checkout upstream/main -- [nome_do_apk] para copiar um arquivo novo.
echo ⚠️ NUNCA de merge completo para nao perder seus arquivos .json customizados!
pause
