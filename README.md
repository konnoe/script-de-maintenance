# script-de-maintenance
<br><br>
[![PSGallery Version](https://img.shields.io/powershellgallery/v/PSScriptMenuGui.png?style=for-the-badge&logo=powershell&label=PowerShell%20Gallery)](https://www.powershellgallery.com/packages/PSScriptMenuGui/) [![PSGallery Downloads](https://img.shields.io/powershellgallery/dt/PSScriptMenuGui.png?style=for-the-badge&label=Downloads)](https://www.powershellgallery.com/packages/PSScriptMenuGui/) [![PSGallery Platform](https://img.shields.io/powershellgallery/p/PSScriptMenuGui.png?style=for-the-badge&label=Platform)](https://www.powershellgallery.com/packages/PSScriptMenuGui/)

Avez-vous des scripts favoris qui tombent dans l'oubli ?

Votre organisation dispose-t-elle de scripts qui seraient utiles au personnel de première ligne qui n'est pas à l'aise avec la ligne de commande ?

Ce module utilise un fichier CSV pour créer un menu graphique de scripts PowerShell.

Il est facile à personnaliser et rapide à lancer.

Vous pouvez également ajouter des programmes et des fichiers Windows au menu.

Il suffit de quelques minutes pour l'installer et - *clic ! clic !* - vous êtes partis !

## Compatibilité

Testé avec **PowerShell 5.1 x64** et **PowerShell 7 x64** sur Windows 10.


## Utilisation de base
<pre><code>
Show-ScriptMenuGui -csvPath '.\example_data.csv' -Verbose

</code></pre>

## Show-ScriptMenuGui options

Paramètre | Qu'est-ce que c'est ?

<pre><code>
`-csvPath` 
</code></pre> 
Chemin du fichier CSV qui définit le menu. Voir [CSV reference](#csv-reference), ci-dessous.

<code><pre>
`-windowTitle`
</code></pre> 
*(facultatif)* | Titre personnalisé pour la fenêtre du menu

<code><pre>
`-buttonForegroundColor`
</code></pre>
*(facultatif)* | Couleur d'avant-plan (texte) du bouton personnalisé. Les codes hexadécimaux (par exemple, `#C00077`) et les noms de couleur (par exemple, `Azure`) sont valides. Voir [.NET Color Class](https://docs.microsoft.com/en-us/dotnet/api/system.windows.media.colors).

<code><pre>
`-buttonBackgroundColor`
</code></pre> 
*(facultatif)* | Couleur de fond du bouton personnalisé

<code><pre>
`-iconPath`
</code></pre>
*(facultatif)* | Chemin du fichier .ico à utiliser dans le menu


<code><pre>
`-hideConsole`
</code></pre>
*(facultatif)* | Masquer la console PowerShell à partir de laquelle le menu est appelé. **Note : ** Cela signifie que vous ne pourrez pas voir les erreurs dues aux clics sur les boutons. Si les choses ne fonctionnent pas, vous devriez arrêter d'utiliser cette fonction en premier.


<code><pre>
`-noExit`
</code></pre>
*(facultatif)* | Démarrer toutes les instances PowerShell avec `-NoExit` *("Ne sort pas après l'exécution des commandes de démarrage.")*. **Note:** Vous pouvez définir `-NoExit` sur des éléments de menu individuels en utilisant la colonne *Arguments*. Voir [CSV reference](#csv-reference).

## CSV reference

Ce tableau indique comment mettre en page le fichier CSV pour votre menu.

La première ligne de votre CSV doit contenir les en-têtes de colonne. Chaque ligne suivante définit un élément de menu.

En-tête de colonne | Qu'est-ce que c'est ?
:--- |:---
Section *(facultatif)* | Texte pour l'en-tête
Méthode | Que se passe-t-il lorsque vous cliquez sur le bouton ? Options valides : `cmd` \| `powershell_file` \| `powershell_inline` \| `pwsh_file` \| `pwsh_inline`
Commande | Chemin d'accès au script/exécutable cible (`cmd` ou `_file`méthodes) ***ou*** Commandes PowerShell (`_inline` méthodes)
Arguments *(facultatif)* | Arguments à passer à l'exécutable cible (`cmd` méthodes)
Nom | Texte pour le bouton
Description *(facultatif)* | Texte pour la description 

#### Quelques exemples

Section | Méthode | Commande | Arguments | Nom | Description
:---|:---|:---|:---|:---|:---
la base | `cmd` | taskmgr.exe |  | Example 2:<LineBreak />gestionnaire de tache | 
la base | `cmd` | cleanmgr.exe | example_text_file | Example 3:<LineBreak />cleanmgr | 
la base auto | `powershell_file` | .\cleanmgr_auto.ps1 |  | Example 4:<LineBreak />cleanmgr auto | 
la base auto | `cmd` | .\netoyage_des_fichier_temporaire.bat |  | Example 5:<LineBreak />fichier temporaire | 
la base auto | `powershell_file` | .\rangement_du_bureau_auto.ps1 |  | Example 8:<LineBreak />rangement du bureau auto | 
demarrage | `powershell_file` | .\fichier_au_demarage.ps1 |  | Example 7:<LineBreak />fichier au demarrage | 

voir ['script_listing.csv'](PSScriptMenuGui\examples\csv/script_listing.csv) pour d'autres exemples au format CSV.

### Conseils

- Les chemins relatifs, les chemins de réseau et les chemins dans votre environnement devraient fonctionner.
- `<LineBreak />` est prise en charge dans les champs de texte.
-  Vous pouvez ajouter plusieurs `_inline` des commandes en les séparant par un point-virgule (`;`)
-  Excel fait un bon éditeur !
-  Mais attention aux tournures d'Excel, par exemple. `-NoExit` dans une formule. La meilleure solution est de préfixer avec un espace.



















