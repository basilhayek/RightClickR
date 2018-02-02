The Windows batch file and registry entry in this repository are intended to make it easier to load an Excel workbook into R.

# Motivation
I found myself getting rusty in R because it was easier to double-click an XLS file than to fire up R and load the file there. Once installed, you will be able to right-click on an Excel file to have an R file generated that will automatically load the contents of each spreadsheet in a workbook into a data.frame.

# Installation
1. Ensure you have the [R XLSX package](https://cran.r-project.org/web/packages/xlsx/index.html) installed
2. Change line 17 in the batch file to reflect the path to your installation of R
3. Change line 6 in the registry file to reflect the path of where the batch file is located (note double-escaped backslahes)

# License
MIT License
