@echo off
set local

set command=%1
set project_path=%~dp0
set project_path=%project_path:~0,-1%

if %command% EQU build (
  @rem iverilog -o %project_path%\dist\objects\%2.o -i %project_path%\src %project_path%\test\%2_test.v
  iverilog -o %project_path%\dist\objects\%2.o %project_path%\test\%2_test.v
  vvp %project_path%\dist\objects\%2.o 

) else if %command% EQU clean-all (
  del /Q %project_path%\dist\objects\*
  del /Q %project_path%\dist\vcds\*.vcd
  del /Q %project_path%\dist\*.vcd

) else if %command% EQU clean (
  del /Q %project_path%\dist\objects\%2.o
  del /Q %project_path%\dist\vcds\%2.vcd

) else if %command% EQU run (
  gtkwave %project_path%\dist\vcds\%2.vcd

) else (
  echo "FUCK"
)

endlocal
