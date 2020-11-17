#include<File.au3>
#include<Array.au3>

Global $directory = "D:\Documents\Downloads" ;sciezka, skad pobierane sa pliki
Global $files_msi = _FileListToArray($directory, "*.msi", 0, True) ;zmiennna, ktora jest inicjowana plikami z rozszerzeniem *.msi z danego folderu
Global $path = "D:\Kacper\Studia\Wprowadzenie do informatyki\II" ;folder, w ktorym instalowany jest program

;instalacja programow
For $i = 1 To UBound($files_msi) - 1 Step + 1
   ShellExecuteWait($files_msi[$i])
Next

;usuwanie plikow instalacyjnych
For $i = 1 To UBound($files_msi) - 1 Step + 1
   FileDelete($files_msi[$i])
Next