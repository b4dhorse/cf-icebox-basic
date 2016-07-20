<!---
Author: Brandon Smith
Description: This file is called from the onApplicationStart function in the Application.cfc
--->

<!--- this file is included in the Application.cfc --->
<cfset application.acceptableFileTypes = "application/msword,application/vnd.openxmlformats-officedocument.wordprocessingml.document,application/vnd.ms-excel,application/vnd.openxmlformats-officedocument.spreadsheetml.sheet,application/vnd.ms-powerpoint,application/vnd.openxmlformats-officedocument.presentationml.presentation,application/vnd.openxmlformats-officedocument.presentationml.slideshow,application/pdf,application/x-pdf,application/rtf,text/comma-separated-values,text/csv,application/csv,application/excel,application/vnd.msexcel,text/plain,text/richtext,text/tab-separated-values, 	image/gif,application/zip,image/jpeg,image/png,image/bmp" />
<cfset application.verityExtensions = ".doc, .docx, .xls, .xlsx, .txt, .rtf, .csv, .pdf" />