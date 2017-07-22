# CSV - AutoHotkey library for working with CSV Files

This CSV library was developed by trueski and Kdoske - the original source can be found here http://www.autohotkey.com/forum/viewtopic.php?p=329126#329126 and https://autohotkey.com/board/topic/51681-csv-library-lib/
(archived forum links, the code posted there is no longer valid due to errors caused by upgrading the forum software.)

This version includes bugfixes from:

* http://www.autohotkey.com/forum/viewtopic.php?p=400669#400669 and other(s)
* http://www.autohotkey.com/board/topic/51681-csv-library-lib/page-4#entry596685

and incorporated in this library are:

* Format4CSV by Rhys - https://autohotkey.com/board/topic/24859-function-convert-string-for-csv-format4csv-beta-1/
* Delimiter Seperated Values by DerRaphael - https://autohotkey.com/board/topic/30102-how-can-i-parse-a-csv-file-with-multi-line-values/#entry191846

## CSV Functions

* CSV_Load(FileName, CSV_Identifier, Delimiter) ; Load CSV file into memory, must complete first.
* CSV_TotalRows(CSV_Identifier) ; Return total number of rows
* CSV_TotalCols(CSV_Identifier) ; Return total number of columns
* CSV_Delimiter(CSV_Identifier) ; Return the delimiter used
* CSV_FileName(CSV_Identifier) ; Return the filename
* CSV_Path(CSV_Identifier) ; Return the path
* CSV_FileNamePath(CSV_Identifier) ; Return the filename with the full path
* CSV_Save(FileName, CSV_Identifier, OverWrite?) ; Save CSV file
* CSV_DeleteRow(CSV_Identifier, RowNumber) ; Delete a row
* CSV_AddRow(CSV_Identifier, "Cell1,Cell2...") ; Add a row
* CSV_DeleteColumn(CSV_Identifier, ColNumber) ; Delete a column
* CSV_AddColumn(CSV_Identifier, "Cell1,Cell2...") ; Add a column
* CSV_ModifyCell(CSV_Identifier, NewValue,Row, Col) ; Modify an existing cell
* CSV_ModifyRow(CSV_Identifier, "NewValue1,NewValue2...", RowNumber) ; Modify an existing row
* CSV_ModifyColumn(CSV_Identifier, "NewValue1,NewValue2...", ColNumber)) ; Modify an existing column
* CSV_Search(CSV_Identifier, SearchText, Instance) ; Search for text within
* CSV_SearchRow(CSV_Identifier, SearchText, RowNumber, Instance) ; Search for text within a cell within a specific row
* CSV_SearchColumn(CSV_Identifier, SearchText, ColNumber, Instance) ; Search for text within a cell within a specific column
* CSV_MatchCell(CSV_Identifier, SearchText, Instance) ; Search for a cell containing exactly the data specified
* CSV_MatchCellColumn(CSV_Identifier, SearchText, ColNumber, Instance=1) ; Search for a cell containing exactly the data specified in a specific column
* CSV_MatchCellRow(CSV_Identifier, SearchText, RowNumber, Instance=1) ; Search for a cell containing exactly the data specified in a specific row
* CSV_MatchRow(CSV_Identifier, "SearchText1,SearchText2", Instance) ; Search for a row containing exactly the data specified
* CSV_MatchCol(CSV_Identifier, "SearchText1, SearchText2", Instance) ; Search for a column containing exactly the data specified
* CSV_ReadCell(CSV_Identifier, Row, Column) ; Read data from the specified cell
* CSV_ReadRow(CSV_Identifier, RowNumber) ; Read data from the specified row
* CSV_ReadCol(CSV_Identifier, ColNumber) ; Read data from the specified column
* CSV_LVLoad(CSV_Identifier, Gui, x, y, w, h, header, Sort?, RowIdentification?, AutoAdjustCol?) ; Load data into a listview in the specified gui window, listviewname variablewill equal "CSV_Identifier"
* CSV_LVSave(FileName, CSV_Identifier, Delimiter, OverWrite?, Gui) ; Save the specified listview as a CSV file, CSV_Identifier is the ListView's associated variable name.

### AutoHotkey forum discussion

https://autohotkey.com/boards/viewtopic.php?f=6&t=34853
