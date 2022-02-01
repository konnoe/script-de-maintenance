
$pathToUse = "C:\Users\$env:username\Desktop"

#type de ficier a metre dans le type video

$video = @(
'3g2','3gp','3gpp','asf','avi','divx','f4v',
'flv','h264','ifo','m2ts','m4v','mkv','mod','mov',
'mp4','mpeg','mpg','mswmm','mts','mxf','ogv','rm',
'srt','swf','ts','vep','vob','webm','wlmp','wmv'
)

#type de fichier a metre dans le type spreadsheets

$spreadsheets = @(
'csv','ods','xls','xlsx'
)

#type de fichier a metre dans le type image 

$images = @(
'arw','bmp','cr2','crw','dcm','dds','djvu','djvu',
'dmg','dng','fpx','gif','ico','ithmb','jp2','jpeg',
'jpg','nef','nrw','orf','pcd','pict','png','psd',
'sfw','tga','tif','tiff','webp','xcf'
)

#type de fichier a metre dans le type presentation

$presentations = @(
'key','odp','pps','ppsx''ppt','pptm','pptx'
)

#type de fichier a metre dans le type document

$docs = @(
'chm','doc','docm','docx','dot','dotx','eml','eps',
'hwp','log','m3u','odt','pages','pdf','pub','rtf',
'sxw','txt','wpd',' wps','xml','xps'
)

#type de fichier a metre dans le type modelisation

$cadFiles = @(
'dwg','dxf'
)

#type de fichier a metre dans le type racourcie

$misc = @(
'bin','cda','dat','dll','exe','isc',
'img','inf','ipa','kmz','lnk','pes',
'ps','rem','torrent','ttf','vcf'
)

#type de fichier a metre dans le type livre 

$ebooks = @(
'azw','azw3','epub','fb2''lit','lrf','mbp','mobi',
'opf','prc'
)

#type de fichier a metre dans le type internet

$web = @(
'css','htm','html','js','json','php'
)

#type de fichier a metre dans le type fichier compressed

$arcs = @(
'7z','apk','bz2','cbr','gz','gzip','jar','rar',
'tar','tgz','zip','war'
)

#type de fichier a metre dans le type scripts

$scripts = @(
'bat','cmd','vb','vbs','vbe','js',
'jse','ws','wsf','wsc','wsh','ps1',
'ps1xml','ps2','ps2xml','psc1','psc2','sql'
)

$files = Get-ChildItem -Path $pathToUse

Foreach ($x in $files){
if($docs.Contains($x.Extension.TrimStart('.').ToLower())){
New-Item -ItemType Directory -Path $pathToUse -Name "Documents" -ErrorAction Ignore
Move-Item -Path $x.FullName -Destination $pathToUse/"Documents"
}
elseif($spreadsheets.Contains($x.Extension.TrimStart('.').ToLower())){
New-Item -ItemType Directory -Path $pathToUse -Name "Spreadsheets" -ErrorAction Ignore
Move-Item -Path $x.FullName -Destination $pathToUse/"Spreadsheets"
}
elseif($images.Contains($x.Extension.TrimStart('.').ToLower())){
New-Item -ItemType Directory -Path $pathToUse -Name "Images" -ErrorAction Ignore
Move-Item -Path $x.FullName -Destination $pathToUse/"Images"
}
elseif($presentations.Contains($x.Extension.TrimStart('.').ToLower())){
New-Item -ItemType Directory -Path $pathToUse -Name "Presentations" -ErrorAction Ignore
Move-Item -Path $x.FullName -Destination $pathToUse/"Presentations"
}
elseif($video.Contains($x.Extension.TrimStart('.').ToLower())){
New-Item -ItemType Directory -Path $pathToUse -Name "Videos" -ErrorAction Ignore
Move-Item -Path $x.FullName -Destination $pathToUse/"Videos"
}
elseif($cadFiles.Contains($x.Extension.TrimStart('.').ToLower())){
New-Item -ItemType Directory -Path $pathToUse -Name "CAD Files" -ErrorAction Ignore
Move-Item -Path $x.FullName -Destination $pathToUse/"CAD Files"
}
elseif($misc.Contains($x.Extension.TrimStart('.').ToLower())){
New-Item -ItemType Directory -Path $pathToUse -Name "Misc" -ErrorAction Ignore
Move-Item -Path $x.FullName -Destination $pathToUse/"Misc"
}
elseif($ebooks.Contains($x.Extension.TrimStart('.').ToLower())){
New-Item -ItemType Directory -Path $pathToUse -Name "E-Books" -ErrorAction Ignore
Move-Item -Path $x.FullName -Destination $pathToUse/"E-Books"
}
elseif($web.Contains($x.Extension.TrimStart('.').ToLower())){
New-Item -ItemType Directory -Path $pathToUse -Name "Web" -ErrorAction Ignore
Move-Item -Path $x.FullName -Destination $pathToUse/"Web"
}
elseif($arcs.Contains($x.Extension.TrimStart('.').ToLower())){
New-Item -ItemType Directory -Path $pathToUse -Name "Archives" -ErrorAction Ignore
Move-Item -Path $x.FullName -Destination $pathToUse/"Archives"
}
elseif($scripts.Contains($x.Extension.TrimStart('.').ToLower())){
New-Item -ItemType Directory -Path $pathToUse -Name "Scripts" -ErrorAction Ignore
Move-Item -Path $x.FullName -Destination $pathToUse/"Scripts"
}
elseif($x.Directory){
New-Item -ItemType Directory -Path $pathToUse -Name "Other - misc" -ErrorAction Ignore
Move-Item -Path $x.FullName -Destination $pathToUse/"Other - misc"
}
else{
Write-Host $x
}
}
