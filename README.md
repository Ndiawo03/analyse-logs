# Projet 06 – Analyseur de logs système (Linux + Windows)

Ce projet a pour but de détecter et afficher les erreurs critiques enregistrées dans les journaux système, à la fois sous Linux (avec Bash) et sous Windows (avec PowerShell).

---

## Partie 1 – Analyse de logs sous Linux

**Fichier :** `analyse-linux.sh`

### Script :
```bash
#!/bin/bash
echo "========== ERREURS CRITIQUES (Linux) =========="
journalctl -p 3 -xb | grep "ERROR" | tail -n 10
```

#Objectif :
Afficher les 10 dernières erreurs critiques du journal système (journalctl) en filtrant uniquement celles qui contiennent le mot ERROR.

##Partie 2 – Analyse de logs sous Windows

#Script :
Get-WinEvent -LogName System | Where-Object { $_.LevelDisplayName -eq "Error" } | Select-Object -First 3

#Objectif :
Afficher les 3 dernières erreurs critiques du journal système Windows, en filtrant par le niveau "Error".

##Technologies utilisées

Linux : Bash, journalctl, grep, tail

Windows : PowerShell, Get-WinEvent, Where-Object

##Résultat

Ce projet permet de vérifier rapidement l’état de santé d’un système, qu’il soit sous Linux ou sous Windows.
Chaque script peut être exécuté directement dans un terminal pour obtenir une synthèse des erreurs critiques récentes.
