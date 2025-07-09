#!/bin/bash

echo "🚀 Script para subir K-FLOW PUCP a GitHub Pages"
echo "================================================"
echo ""

echo "📋 Pasos a seguir:"
echo ""
echo "1. Ve a https://github.com/new"
echo "2. Crea un nuevo repositorio con el nombre: kpucp"
echo "3. NO marques 'Initialize this repository with a README'"
echo "4. NO agregues .gitignore ni license (ya los tenemos)"
echo "5. Haz clic en 'Create repository'"
echo ""
echo "6. Copia la URL del repositorio (algo como: https://github.com/tu-usuario/kpucp.git)"
echo ""

read -p "📝 Pega aquí la URL de tu repositorio GitHub: " REPO_URL

if [ -z "$REPO_URL" ]; then
    echo "❌ Error: Necesitas proporcionar la URL del repositorio"
    exit 1
fi

echo ""
echo "🔗 Configurando remote origin..."
git remote remove origin 2>/dev/null || true
git remote add origin "$REPO_URL"

echo ""
echo "📤 Subiendo código a GitHub..."
git push -u origin main

echo ""
echo "🏷️ Creando tag de release..."
git tag -a v1.0.0 -m "🎉 Primera versión completa de la landing page K-FLOW PUCP"
git push --tags

echo ""
echo "✅ ¡Código subido exitosamente!"
echo ""
echo "📋 Ahora necesitas habilitar GitHub Pages:"
echo "1. Ve a tu repositorio en GitHub"
echo "2. Haz clic en 'Settings' (Configuración)"
echo "3. En el menú lateral, busca 'Pages'"
echo "4. En 'Source', selecciona 'GitHub Actions'"
echo "5. ¡El deploy se ejecutará automáticamente!"
echo ""
echo "🌐 Tu sitio estará disponible en:"
echo "   https://tu-usuario.github.io/kpucp/"
echo ""
echo "⏰ El primer deploy puede tardar unos minutos..."
