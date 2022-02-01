# script-de-maintenance
<br><br>
[![PSGallery Version](https://img.shields.io/powershellgallery/v/PSScriptMenuGui.png?style=for-the-badge&logo=powershell&label=PowerShell%20Gallery)](https://www.powershellgallery.com/packages/PSScriptMenuGui/) [![PSGallery Downloads](https://img.shields.io/powershellgallery/dt/PSScriptMenuGui.png?style=for-the-badge&label=Downloads)](https://www.powershellgallery.com/packages/PSScriptMenuGui/) [![PSGallery Platform](https://img.shields.io/powershellgallery/p/PSScriptMenuGui.png?style=for-the-badge&label=Platform)](https://www.powershellgallery.com/packages/PSScriptMenuGui/)

Avez-vous des scripts favoris qui tombent dans l'oubli ?

Votre organisation dispose-t-elle de scripts qui seraient utiles au personnel de première ligne qui n'est pas à l'aise avec la ligne de commande ?

Ce module utilise un fichier CSV pour créer un menu graphique de scripts PowerShell.

Il est facile à personnaliser et rapide à lancer.

Vous pouvez également ajouter des programmes et des fichiers Windows au menu.

Il suffit de quelques minutes pour l'installer et - *clic ! clic !* - vous êtes parti !

## Compatibilité

Testé avec **PowerShell 5.1 x64** et **PowerShell 7 x64** sur Windows 10.


## Utilisation de base
<pre><code>
Show-ScriptMenuGui -csvPath '.\example_data.csv' -Verbose
<code><pre>
