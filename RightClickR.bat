@echo off
set RCR_RFILE=%~n1.R
set RCR_FILEPATH=%1
set RCR_PATH=%~p1
set RCR_NEWPATH=%RCR_FILEPATH:\=/%
if exist %RCR_PATH%%RCR_RFILE% goto launchR
echo library(xlsx) > %RCR_RFILE%
echo rcr_file ^<- '%RCR_NEWPATH%' >> %RCR_RFILE%
echo rcr_wb ^<- loadWorkbook(rcr_file) >> %RCR_RFILE%
echo rcr_sheets ^<- getSheets(rcr_wb) >> %RCR_RFILE%
echo for (rcr_s in 1:length(rcr_sheets)) { >> %RCR_RFILE%
echo   rcr_data ^<- read.xlsx(rcr_file,rcr_s) >> %RCR_RFILE%
echo   assign(paste("xlsx.",names(rcr_sheets[rcr_s]),sep=""),rcr_data) >> %RCR_RFILE%
echo } >> %RCR_RFILE%
echo remove(rcr_data) >> %RCR_RFILE%
:launchR
start C:\Progra~1\RStudio\bin\rstudio.exe %RCR_PATH%%RCR_RFILE%
:exit