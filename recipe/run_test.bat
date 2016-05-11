:: Run the test suite in its own directory
::

mkdir gftests
cd gftests
if %ERRORLEVEL% GEQ 1 exit 1
nosetests -sv gridfill
set stat=%ERRORLEVEL%
cd ..
rmdir /s /q gftests
exit %stat%
