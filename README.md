# SmartSync
 Framework für Multimedia Smartphone Synchronisation
 SWR Experimentalstudio 2024
 Maurice Oeser


#Installation & Benutzung
 Den Ordner 'SmartSync' an den gewünschten Ort kopieren. Den Maxpatch SmartSync.maxpat darin öffnen.
 'script start' startet den Node.js Server. Im node debug Fenster sollte ein grüner Haken und "Process Running" stehen.
  Ist das nicht der Fall, sollte dort eine Fehlermeldung angezeigt werden, die hoffentlich weiterhilft.
  Ist der Server online, ist er unter http://IPdesComputers:3000 über den Webbrowser erreichbar.
  Die individuelle Steuerung / Verwendung kann dann in MaxMSP nach Wunsch programmiert werden.
  Alle Samples die verwendet werden sollen müssen im Ordner public/Samples liegen. Sollten Unterordner benutzt werden muss dies in Max mit angebeben werden, also z.B: loadsound Drum/kick.mp3

 #Datei Übersicht
 Wichtige Dateien im SmartSync Framework:
 - SmartSync.maxpat - Der Haupt-Maxpatch. In diesem wird der HTTP Server gehostet. Hier kann mit dem Server aus Max heraus kommuniziert werden.

 - index.js - Das Skript das Max ausführt, in diesem wird das smart-sync-server paket geladen und eine Instanz aufgerufen. Außerdem werden die standardmäßigen Handler (also Messages aus/zu Max) initalisiert.

 - public/index.html das HTML file, welches der Server an einen Client übermittelt. Darin wird das Aussehen / Verhalten festgelegt. Die HTML Datei lädt das Skript public/js/app.js. 

 - public/js/app.js - Das Skript welches von einem Client im Browser (aka den Smartphones) ausgeführt wird. Hierin wird das Modul smart-sync-client geladen. Die beiden smart-sync Module kümmern sich automatisch um die Verbindung, Synchroniesierung etc. In diesem Skript kann sonstige Logik, die für den speziellen Usecase benötigt wird implementiert werden.
 
 - public/css/styles.css - Das globale css file zum stylen der Webapp. Das Projekt nutzt die tailwind css library für inline Styling (für den einfachen Max-Nutzer nicht relevant)


