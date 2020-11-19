#include <File.au3>
#include <Array.au3>

Main()

Func Main()
   Local $isEmpty = $CmdLine[0] == 0
   Local $directory = Not $isEmpty ? $CmdLine[1] : ShellExecute(@UserProfileDir & "\Downloads") ;sciezka, skad pobierane sa pliki, jako argument
   Local $files_msi = _FileListToArray($directory, "*.msi", 0, True) ;zmiennna, ktora jest inicjowana plikami z rozszerzeniem *.msi z danego folderu

   Install($files_msi)
   ;Delete($files_msi)
EndFunc

;instalacja programow
Func Install($files)
   For $i = 1 To UBound($files) - 1 Step + 1
	  ShellExecuteWait($files[$i])
   Next
EndFunc

;usuwanie plikow instalacyjnych
Func Delete($files)
   For $i = 1 To UBound($files) - 1 Step + 1
	  FileDelete($files[$i])
   Next
EndFunc