# 🛠️ Guia de Infraestrutura: EXAuto Unified

Este repositório (`centralexauto`) serve como a central de comando para o seu aplicativo. Ele é o servidor que o APK instalado no carro consulta.

## 📁 Estrutura de Arquivos

1. **`exauto-unified.json`**: O arquivo mais importante. Ele controla a versão do app principal.
2. **`manifests/`**: Contém as "receitas" para cada patch (Gestos, Ar Condicionado, etc.).
3. **`apks/`**: Onde devem ser colocados os arquivos `.apk` reais.

## 🔄 Lógica de Atualização Modular

O EXAuto Unified não é um app monobloco. Ele funciona em camadas:
* **Camada 1 (App):** O APK que geramos no Android Studio.
* **Camada 2 (Drivers):** Patches como `ca_fix.apk` que corrigem funções do carro.
* **Camada 3 (Extras):** Aplicativos de terceiros otimizados (Waze, Disney, etc.).

### Como adicionar um novo app do Sapo ao seu repo:
1. Baixe o APK do repositório do Sapo.
2. Coloque na sua pasta `apks/`.
3. Crie um JSON em `manifests/` com o link apontando para o seu GitHub.

## 🤝 Sincronização com o Sapo (Upstream)

Para ver o que o autor original mudou sem quebrar o seu:
1. Use a branch `upstream-track` para dar `git pull` do repositório `swimapps`.
2. Compare os arquivos.
3. Copie apenas os APKs novos para a sua branch `main`.
4. **NUNCA** copie os arquivos `.json` da raiz do Sapo para a sua `main`, pois eles farão o seu app tentar baixar o APK dele, causando erro de assinatura.
