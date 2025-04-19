# 🧱 ArchLinux + Hyprland = GroundZerO 🌀  
Minimal. Modular. Maximale Kontrolle.
> **GroundZerO** ist ein ultraschlankes Hyprland-Setup direkt auf ArchLinux – für Performance-Fans, Tiling-Enthusiasten & Gaming-Freaks.

[![Demo-Video ansehen](https://img.youtube.com/vi/nBtTQXCSSMw/maxresdefault.jpg)](https://www.youtube.com/watch?v=nBtTQXCSSMw)

Ziel:
Ein purer, unverbastelter Arch-Kern,
kombiniert mit einer präzise geschliffenen Hyprland-Umgebung,
kein Remix, kein Fork, sondern
"Arch mit Sinn & Stil" – straight aus der Quelle, aber sofort ready für Pro-Use.

Ein ultraleichtes und modulares Hyprland-Setup für Arch Linux.
Performance steht an erster Stelle – ideal für Gamer, Power-User und Terminalfreunde.
Automatisch aktualisierbar, mit Gaming-Optimierungen, integrierter Terminalhilfe und Android-Spiegelung.

❗ Hinweis: Das Setup verwendet im Kern das JaKooLit-Hyprland-Design.  
Aktuell kann es dabei (je nach Grafikchip) zu einem Ladebalken-Bug bei der Passworteingabe kommen.  
Dieser Bug liegt am Original-Walus-Installer und wird mit einem eigenen Patch gelöst.
Der Walus install wirkt momentan etwas schwerfällig , wird noch behoben.....

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
der angekreutzt ist mit ctr + c (sehbar am x) reseten , wähle danach den Linux-Zen aus um keine zwei kernel zu installieren(optional).
Dieser Vorschritt wird später unötig da es eine eigene ArchLinux-GroundZero.iso geben wird ..... (in Arbeit)

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
lan kabel geht aber immer oder USB Weiterleitung über USB A oder UBS C über HandyHotspot etc .
Dieser aspekt wird noch Aufgebaut in sache wlan treiber finden und in kommenden updates Integriert ....
Hierbei handelt es sich lediglich um den wlan empfang , nicht um den lan anschluss selbst ....

## 🧠 Terminalhilfe aus der Cloud (in Arbeit)
Ein öffentlicher Google-Drive-Ordner mit regelmäßig aktualisierten Snippets:  
```bash
~/terminalhilfe/
```
Darin findest du:
♨️ Bash-Befehle  
♨️ Download-Snippets  
♨️ Wine / Proton / Systemtweaks  
♨️ Textdateien mit Terminalhilfen

Wird **bei jedem Groundzero-Update automatisch aktualisierbar**.

## 📂 Repo-Struktur
```bash
.
├── install.sh
├── README.md
├── LICENSE
├── script/
│   ├── corepackages.sh
│   ├── groundzerotools.sh
│   ├── hyprland.sh
│   ├── gamescript.sh
│   ├── labfactory.sh
│   ├── groundzero.sh
│   ├── rammanager.sh
│   ├── clean_groundzero.sh
│   ├── systemd/
│   │   ├── groundzero-update.service
│   │   └── groundzero-update.timer
│   └── assets/
│       └── ascii/
│           └── archlogo.txt
├── config/
│   ├── hypr/
│   ├── waybar/
│   ├── kitty/
│   └── zsh/
└── terminalhilfe/
    └── [Cloud-synchronisierte Terminal-Snippets]

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
