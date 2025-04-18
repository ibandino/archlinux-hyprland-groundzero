# 🧱 ArchLinux Hyprland GroundZerO

[![Demo-Video ansehen](https://img.youtube.com/vi/nBtTQXCSSMw/maxresdefault.jpg)](https://www.youtube.com/watch?v=nBtTQXCSSMw)

Ein ultraleichtes und modulares Hyprland-Setup für Arch Linux.
Performance steht an erster Stelle – ideal für Gamer, Power-User und Terminalfreunde.
Automatisch aktualisierbar, mit Gaming-Optimierungen, integrierter Terminalhilfe und Android-Spiegelung.

Die Grundinstallation kann über den Schnellstart jederzeit wiederholt werden – bei Spiegelserver-Problemen oder Installationsfehlern werden bereits installierte Pakete dabei automatisch übersprungen.

Beim JaKooLit-Hyprland kann es durch Walus zu einem Ladebalken-Bug kommen, bei dem man sein Passwort "gefühlt blind" eingeben muss. Für diesen Bug bin ich nicht verantwortlich – er ist fest im JaKooLit-Projekt verdrahtet, um Updates aus erster Hand zu gewährleisten.

Das GroundZero-Setup ist ein vollwertiges Starter-Kit und bringt alles mit, was ein Gamer oder Workaround-Nutzer braucht.
Alle Pakete werden grundsätzlich über die Arch-Repos oder mit yay aktuell gehalten.

Der Fokus liegt klar auf der Art, wie man seinen Desktop steuert:
Mit Super + H wird erklärt, was „Keyboard First“ bedeutet – und wie du volle Kontrolle bekommst.

Einen schnelleren und besseren Desktop findest du nicht mal bei GNOME.
Hyprland ist allen weit voraus.
GroundZero ist deine Clean-Install-Anlaufstelle – genau dafür wurde es entwickelt.

→ Schnell, einsatzbereit, und mit allem ausgestattet, was du brauchst.
## 👣 Grundinstallation ArchLinux Iso , Minimal Install 
```
https://archlinux.org/download/
```
Tipp : Bei dem Kernel auswahl kannst du den standart linux Kernel
der angekreutzt ist mit ctr + c (oder x) reseten , wähle danach den Linux-Zen aus um keine zwei kernel zu installieren(optional)


## ⚡ Schnellstart 
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
♨️ Bash-Befehle  
♨️ Download-Snippets  
♨️ Wine / Proton / Systemtweaks  
♨️ Textdateien mit Terminalhilfen

Wird **bei jedem Groundzero-Update automatisch aktualisiert**.

## 📂 Repo-Struktur
```bash
.
├── install.sh
└── script/
    ├── groundzerotools.sh
    ├── hyprland.sh <-- beim walus install hat jakoolit ein grafik bug , ein install balken verdeckt das sudo passwort, es ist ersichtlich wenn walus 20 minuten nicht weiter updaten wo die eingabe ist(JaKooLit Mini bugg) - immer noch vom hersteller abhängig den bug zu debuggen
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
Das Lab bekommt auch noch seinen eigenen abgestimmten Gui der alle paar wochen aufploppt und die User selbst Befragt welche Optionen sinnvoll sinn und welche eher nicht , quasi Online wahlen die über die funktionen entscheiden und zwar beim user selbst . 

Diese „Wahlfunktion“ wird schließlich so eingebaut, dass – sobald der User online geht und sein Rechner hochfährt – ein GroundZero-Update zur Verfügung steht.
Dieses kann angenommen oder abgelehnt werden. Bereits bearbeitete Configs, wie etwa .zshrc und andere, werden im Backend automatisch gespeichert – entweder im Home-Verzeichnis oder bei den jeweiligen Komponenten – und stehen dort jederzeit griffbereit zur Verfügung.

Die Wahlzyklen werden sich höchstwahrscheinlich immer zwischen zwei Zuständen bewegen:
Update → Wahlperiode → Down oder direkt Update.

✅ Garantiert werden Umfragen stattfinden – jedoch ohne jegliche Werbung.

♨️ Nur über den Weg der Akzeptanz legitimer Rückfragen und offener Feedback-Optionen kann man als Gemeinschaft wirklich Standards setzen.
Ich halte das für einen guten und respektvollen Weg, der nicht ausgenutzt werden sollte.
