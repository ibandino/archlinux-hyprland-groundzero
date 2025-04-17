# 🧱 ArchLinux Hyprland Groundzero

[![Demo-Video ansehen](https://img.youtube.com/vi/nBtTQXCSSMw/maxresdefault.jpg)](https://www.youtube.com/watch?v=nBtTQXCSSMw)

Ein ultraleichtes und modulares Hyprland-Setup für ArchLinux.  
Performance steht an erster Stelle – ideal für Gamer, Power-User und Terminalfreunde.  
Automatisch aktualisierbar, mit Gaming-Optimierungen und einer integrierten Terminalhilfe und AndroidSpiegel.

die grundinstallations kann über den schnellstart weg bei spiegelserver problemen oder auch installations probleme einfach wiederohlt werden , die installierten packete werden geskippt .
beim JaKooLit Hyprland kann es aufgrund von Walus einen Balken lade balken bugg geben wo man nach gefühlt sein passwort eingeben muss .... an dem Bugg bin ich nicht schuld , ist fest verdrahtet mit dem JaKooLit projekt um updates aus erster hand zu gewährleisten ..... 

Das GroundZero setup ist ein vollumfängliches grundstarter set und hat alles ONBOARD was ein gamer oder auch workarround benötigt ..... alles wird grundsätzlich mit den arch paket quellen oder yay aktualisiert ....

Der fokus hier liegt in der art und weise wie man seinen Desktop steuern kann , durch ein druck aus Super + H wird einem auch angezeigt was Keyboard First bedeutet und wie man es kontrolliert ...

Einen Schnelleren und besseren Desktop werdet ihr nicht mal bei Gnome finden .... Hyprland ist allen weit veraus ..... seht GroundZero als cleaninstall anlaufstelle , genau dafür wurde es erstellt .

schnell und einsatzbereit mit allem was benötigt wird 

## 👣 Grundinstallation ArchLinux Iso , Minimal Install 
```
https://archlinux.org/download/
```
Tipp : Bei dem Kernel auswahl kannst du den standart linux Kernel
der angekreutzt ist mit ctr + c (oder x) reseten , wähle danach den Linux-Zen aus um keine zwei kernel zu installieren(optional)


## ⚡ Schnellstart (2 Wege)
### 🌀 Via `curl`:
```bash
bash <(curl -s https://raw.githubusercontent.com/ibandino/archlinux-hyprland-groundzero/main/install.sh)
```

### 💻 Via `git clone` :
```bash
git clone https://github.com/ibandino/archlinux-hyprland-groundzero.git
cd archlinux-hyprland-groundzero
chmod +x install.sh
./install.sh
```
Tipp: Installier nach dem archinstall im tty login danach erst - sudo pacman -S git - und dann geh den github weg ,
das script ist modular aufgebaut und arbeitet sich bis zum hyrpland desktop punktuell durch ...
Die wlan broadcam treiber sind nicht enthalten , da es zuviele verschiedene modelle gibt (dies manual selbst installieren),
lan kabel geht aber immer .

## 🔧 Komponenten
Die `install.sh` führt folgende Schritte aus:
```bash
# 1. Tools und Basics
./script/groundzerotools.sh

# 2.Original Hyprland JaKooLit Setup (Wayland, EWW, Themes etc.)
./script/hyprland.sh

# 3. Gaming Tuning + Extras
./script/gamescript.sh

# 4. Labfactory (Platzhalter)
./script/labfactory.sh

```
## 📁 Terminalhilfe aus Google Drive
Ein öffentlicher Google Drive Ordner wird regelmäßig synchronisiert:
```bash
~/terminalhilfe/
```

Darin findest du:
✅ Bash-Befehle  
✅ Download-Snippets  
✅ Wine / Proton / Systemtweaks  
✅ Textdateien mit Terminalhilfen

Wird **bei jedem Groundzero-Update automatisch aktualisiert**.

## 📂 Repo-Struktur
```bash
.
├── install.sh
└── script/
    ├── groundzerotools.sh
    ├── hyprland.sh <-- beim walus install hat jakoolit ein grafik bug , ein install balken verdeckt das sudo passwort(JaKooLit Mini bugg)
    ├── gamescript.sh
    ├── labfactory.sh
    ├── groundzero.sh
(betaphase)
    └── systemd/
        ├── groundzero-update.service
        └── groundzero-update.timer
```

## 🧩 Modular und erweiterbar
Du kannst jede Komponente einzeln anpassen, ersetzen oder erweitern.  
Die Architektur bleibt trotzdem sauber und wartbar.

## 📢 Feedback willkommen!
Fragen, Bugs oder Erweiterungsideen?  
→ Issue aufmachen oder direkt forken & verbessern.

> 🫡 Willkommen in der Groundzero-Zone.
> <img src="https://github.com/user-attachments/assets/4f9540f5-c56c-42e6-879a-d3145e49210b" alt="Logo" width="100"/>


# LabFactory
Dient als test Werzeug für neue Elemente , ganz ähnlich dem Fedora Prinzip Von Redhat ....
Was gut ist wird fest integriert , was sich für irrelevant herausstellt geht wieder weg ......
Das Lab bekommt auch noch seinen eigenen abgestimmten Gui der alle paar wochen aufploppt und die User selbst Befragt welche Optionen sinnvoll sinn und welche eher nicht , quasi Online wahlen die über die funktionen entscheiden und zwar beim user selbst
