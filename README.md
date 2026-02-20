# 📦 STOCK MANAGER v1.0
## Application Android — Gestion de Stock
### Matériaux de Plomberie · Plafonnage · Carrelage

---

## 🔑 IDENTIFIANTS DE CONNEXION

| Identifiant | Mot de passe | Rôle |
|-------------|--------------|------|
| `admin` | `admin123` | Administrateur |

> ⚠️ Changez le mot de passe après la première connexion dans Paramètres.

---

## 📱 FONCTIONNALITÉS

- **Tableau de bord** : CA, bénéfice, alertes stock
- **Entrées** : arrivages de marchandises avec historique
- **Sorties/Ventes** : comptant, crédit, mixte + annulation + facture PDF
- **Produits** : 3 catégories (Plomberie, Plafonnage, Carrelage)
- **Clients & Crédits** : suivi + remboursements
- **Rapports** : par période + export PDF
- **Paramètres** : gestion utilisateurs Admin/Employé
- **100% hors ligne** : base SQLite locale

---

## 🚀 INSTALLATION — 3 ÉTAPES

### Étape 1 — Prérequis (une seule fois)

Installe ces 3 outils sur ton PC :

| Outil | Lien | Pourquoi |
|-------|------|----------|
| Flutter SDK | https://flutter.dev/docs/get-started/install/windows | Framework mobile |
| Android Studio | https://developer.android.com/studio | SDK Android |
| Java JDK 17 | https://adoptium.net/ | Compilation |

### Étape 2 — Compiler l'APK

**Windows** → Double-clique sur **`INSTALLER_WINDOWS.bat`**

**Mac/Linux** → Dans le terminal :
```bash
chmod +x installer_mac_linux.sh && ./installer_mac_linux.sh
```

L'APK sera ici : `build/app/outputs/flutter-apk/app-release.apk`

### Étape 3 — Installer sur Android

1. Copie l'APK sur ton téléphone (USB, WhatsApp, Drive...)
2. Sur le téléphone : **Paramètres → Sécurité → Sources inconnues → Activer**
3. Ouvre l'APK → **Installer**

---

## 🔧 COMMANDES MANUELLES

```bash
flutter pub get          # Installer dépendances
flutter build apk --release   # Compiler APK
flutter install          # Installer via USB
flutter doctor           # Diagnostiquer
```
