#!/bin/bash

echo ""
echo "╔══════════════════════════════════════════════════════╗"
echo "║        STOCK MANAGER - COMPILATION APK              ║"
echo "║     Matériaux de Construction (FCFA)                ║"
echo "╚══════════════════════════════════════════════════════╝"
echo ""

# Couleurs
GREEN='\033[0;32m'
RED='\033[0;31m'
YELLOW='\033[1;33m'
NC='\033[0m'

# Vérifier Flutter
if ! command -v flutter &> /dev/null; then
    echo -e "${RED}[ERREUR] Flutter n'est pas installé.${NC}"
    echo ""
    echo "Installation Flutter :"
    echo "  Mac    → https://flutter.dev/docs/get-started/install/macos"
    echo "  Linux  → https://flutter.dev/docs/get-started/install/linux"
    echo ""
    echo "Ou via snap (Ubuntu) : sudo snap install flutter --classic"
    exit 1
fi

echo -e "${GREEN}[OK] Flutter détecté !${NC}"

# Vérifier Java
if ! command -v java &> /dev/null; then
    echo -e "${RED}[ERREUR] Java n'est pas installé.${NC}"
    echo "Installe Java : sudo apt install openjdk-17-jdk (Ubuntu)"
    exit 1
fi

echo -e "${GREEN}[OK] Java détecté !${NC}"
echo ""

# Se placer dans le dossier du script
cd "$(dirname "$0")"
echo "[INFO] Dossier : $(pwd)"
echo ""

# Étapes
echo "[1/4] Nettoyage..."
flutter clean > /dev/null 2>&1
echo -e "${GREEN}[OK]${NC}"

echo "[2/4] Installation des dépendances..."
flutter pub get
if [ $? -ne 0 ]; then
    echo -e "${RED}[ERREUR] Échec des dépendances${NC}"
    exit 1
fi
echo -e "${GREEN}[OK]${NC}"

echo "[3/4] Licences Android..."
yes | flutter doctor --android-licenses > /dev/null 2>&1

echo "[4/4] Compilation APK (5-10 minutes)..."
flutter build apk --release

if [ $? -ne 0 ]; then
    echo -e "${RED}[ERREUR] Compilation échouée. Lance : flutter doctor${NC}"
    exit 1
fi

echo ""
echo "╔══════════════════════════════════════════════════════╗"
echo "║            ✅ COMPILATION RÉUSSIE !                  ║"
echo "╚══════════════════════════════════════════════════════╝"
echo ""
echo -e "${GREEN}APK : build/app/outputs/flutter-apk/app-release.apk${NC}"
echo ""
echo "Installer sur téléphone :"
echo "  Via USB  : flutter install"
echo "  Manuel   : copie l'APK sur le téléphone et clique dessus"
echo ""
echo -e "${YELLOW}IDENTIFIANTS :  admin / admin123${NC}"
echo ""
