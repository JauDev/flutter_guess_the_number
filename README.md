# Guess‑The‑Number

Una app minimalista 🎯 *Endevina‑el‑número* escrita amb **Flutter 3.22** que mostra una interfície polida, arquitectura neta (MVVM amb Provider) i bones pràctiques de gestió d’estat.

---

## ✨ Característiques

| UI / UX | Arquitectura | Extres |
|---------|--------------|--------|
| • Botons d’icona arrodonits (reinicia i marques) fixats a les cantonades | • Patró **MVVM** amb `ChangeNotifier` + **Provider** | • Puntuacions guardades a memòria (top‑5 rànquing) |
| • Paleta clara i tema personalitzat (`AppColors`) | • Separació clara de carpetes `models/`, `controllers/`, `views/`, `widgets/`, `themes/` | • Dates internacionalitzades amb **intl** |
| • Slider animat i botó de feedback | • Model `Game` immutable amb lògica del joc | • Disseny responsive (notch i pantalles altes) |

---

## 📂 Estructura del projecte

```text
lib/
 ├─ controllers/      # ViewModels (ChangeNotifier)
 │    └── view_model.dart
 ├─ models/           # Entitats de negoci
 │    ├── game.dart
 │    └── mark.dart
 ├─ themes/           # Colors i estils globals
 │    └── app_colors.dart
 ├─ views/            # Pantalles / grans widgets de presentació
 │    ├── background_view.dart
 │    ├── content_view.dart
 │    └── marks_view.dart
 ├─ widgets/          # Components purs i reutilitzables
 │    ├── number_view.dart
 │    ├── rounded_view.dart
 │    └── slider_widget.dart
 └── main.dart        # Entrada de l’app
```

---

## 🚀 Posada en marxa

1. **Clona** el repositori o descarrega el ZIP.
2. Verifica que tens Flutter ≥ 3.22 (`flutter doctor`).
3. Instal·la les dependències:
   ```bash
   flutter pub get
   ```
4. Executa en un dispositiu o emulador:
   ```bash
   flutter run
   ```
   > Hot‑restart / hot‑reload totalment compatibles.

---

## 🔧 Configuració ràpida

| Fitxer | Què pots tocar |
|--------|---------------|
| `themes/app_colors.dart` | Colors primari i de fons |
| `models/game.dart` | Regles del joc: mín/max, fórmula de puntuació |
| `controllers/view_model.dart` | Estratègia de persistència (substituir memòria per emmagatzematge local, per ex.) |

---

## 📝 Notes de llançament

Consulta `RELEASE_NOTES_ca.md` per als canvis detallats de cada versió.

---

## 📜 Llicència

[MIT](LICENSE) — lliure d’usar, modificar i distribuir.

> Iconografia de Material Icons. Tots els altres recursos són de domini públic o creats per a aquesta demostració.
