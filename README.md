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


## Show-ScriptMenuGui options

Paramètre | Qu'est-ce que c'est ?

`-csvPath` | Chemin du fichier CSV qui définit le menu. Voir [CSV reference](#csv-reference), ci-dessous.
`-windowTitle` *(facultatif)* | Titre personnalisé pour la fenêtre du menu
`-buttonForegroundColor` *(facultatif)* | Couleur d'avant-plan (texte) du bouton personnalisé. Les codes hexadécimaux (par exemple, `#C00077`) et les noms de couleur (par exemple, `Azure`) sont valides. Voir [.NET Color Class](https://docs.microsoft.com/en-us/dotnet/api/system.windows.media.colors).
`-buttonBackgroundColor` *(facultatif)* | Couleur de fond du bouton personnalisé
`-iconPath` *(facultatif)* | Chemin du fichier .ico à utiliser dans le menu
`-hideConsole` *(facultatif)* | Masquer la console PowerShell à partir de laquelle le menu est appelé. **Note : ** Cela signifie que vous ne pourrez pas voir les erreurs dues aux clics sur les boutons. Si les choses ne fonctionnent pas, vous devriez arrêter d'utiliser cette fonction en premier.
`-noExit` *(facultatif)* | Démarrer toutes les instances PowerShell avec `-NoExit` *("Ne sort pas après l'exécution des commandes de démarrage.")*. **Note:** Vous pouvez définir `-NoExit` sur des éléments de menu individuels en utilisant la colonne *Arguments*. Voir
