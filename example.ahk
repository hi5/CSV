#NoEnv
#SingleInstance, force

; A basic example illustrating some functions to get an idea of how to use CSV
; Consult the library (csv.ahk) for all available functions and required parameters
; and the results of each function

; Creating an example CSV file
FileDelete, ExampleCSVFile.csv
FileAppend,
(
Year,Make,Model,Description,Price
1997,Ford,E350,"ac, abs, moon",3000.00
1999,Chevy,"Venture ""Extended Edition""","",4900.00
1999,Chevy,"Venture ""Extended Edition, Very Large""",,5000.00
1996,Jeep,Grand Cherokee,"MUST SELL! air, moon roof, loaded",4799.00
), ExampleCSVFile.csv

; load a CSV file using CSV_Load(FileName, CSV_Identifier, Delimiter)
; "data" is the CSV_Identifier we are using to refer to the file we've loaded, you can give it any name you'd like
CSV_Load("ExampleCSVFile.csv","data")

; Display how many rows we have using CSV_TotalRows()
MsgBox % "There are " CSV_TotalRows("data") " rows in this CSV file."

; Assign this to a variable like so:
Rows:=CSV_TotalRows("data")

; Reading a Cell using CSV_ReadCell(), should show "E350"
MsgBox % "Contents of Cell in row number 2, and column 3: " CSV_ReadCell("data",2,3)

; Assign this to a variable like so:
Model:=CSV_ReadCell("data",2,3)

; ModifyReading a Cell using CSV_ModifyCell()
CSV_ModifyCell("data", "Mustang",2,3) ; change E350 to Mustang

MsgBox % "Contents of Cell in row number 2, and column 3: " CSV_ReadCell("data",2,3)

; Search for a cell containing "find" with CSV_Search()
MsgBox % CSV_Search("data", "large") ; row 4, cell 3 e.g. 4,3

; Assign this to a variable like so:
Result:=CSV_Search("data", "large")

; Note: if you want to use the result of CSV_Search() later on you need to split the result into a ROW and COLUMN
Result:=StrSplit(Result,",") ; Result[1]=Row, Result[2]=Column
MsgBox % CSV_ReadCell("data",Result[1],Result[2])

; Find all cells containing "find" with CSV_Search() using a loop

Loop, % Rows
	{
	 found:=CSV_Search("data","moon",A_Index)
	 if found=0
		break
	 Results .= found "`n"
	}

MsgBox % Results

; Save the modified CSV data to a file using CSV_Save()
CSV_Save("ExampleCSVFile.csv","data")

; Sample script on how to add a column to be able to write new data to a CSV
; https://www.autohotkey.com/boards/viewtopic.php?p=242250#p242250

; When using this CSV library the script will remain persistent (remain active in memory)
; so you need close the script when you are done to free the memory
ExitApp
