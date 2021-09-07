set nocompatible
if !WINDOWS()
	set shell=/bin/sh
	if ANDROID()
		set shell=/system/bin/sh
	endif
endif
