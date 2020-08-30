# invoke SourceDir generated makefile for hello.pem3
hello.pem3: .libraries,hello.pem3
.libraries,hello.pem3: package/cfg/hello_pem3.xdl
	$(MAKE) -f C:\Users\Jasper\workspace_v9\CC1350_Blink1_GPIO_toggle/src/makefile.libs

clean::
	$(MAKE) -f C:\Users\Jasper\workspace_v9\CC1350_Blink1_GPIO_toggle/src/makefile.libs clean

