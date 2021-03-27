mkdir SkipFirstHour
copy info.json SkipFirstHour\info.json
copy LICENSE SkipFirstHour\LICENSE
copy control.lua SkipFirstHour\control.lua
copy config.lua SkipFirstHour\config.lua

tar -c -a -f SkipFirstHour.zip SkipFirstHour
	
rmdir /S /Q SkipFirstHour
