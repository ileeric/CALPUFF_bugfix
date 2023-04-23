call "c:\Program Files (x86)\Intel\Composer XE\bin\ifortvars.bat" ia32
ifort calpuff.for    /compile_only /traceback /Od /check:format  /Qprec-div- /QaxSSE2 /traceback 2> compile-calpuff-ifort.log
ifort calutils.for   /compile_only /traceback /Od /check:format  /Qprec-div- /QaxSSE2 /traceback 2> compile-calutils-ifort.log
ifort coordlib.for   /compile_only /traceback /Od /check:format  /Qprec-div- /QaxSSE2 /traceback 2> compile-coordlib-ifort.log
ifort /exe:calpuff.exe  /Od /check:format  /Qprec-div- /QaxSSE2 /traceback calpuff.obj 
