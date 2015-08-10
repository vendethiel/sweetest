MAINFILE = index.js
OUTPUTFILE = output.js

SJS_MODULES = -m contracts-js/macros \
							-m es6-macros \
							-m sparkler/macros

build: $(MAINFILE) $(OUTPUTFILE)

$(OUTPUTFILE):
	sjs $(SJS_MODULES) -o output.js $(MAINFILE)

re: clean $(OUTPUTFILE)

clean:
	rm -f $(OUTPUTFILE)

try: re
	node $(OUTPUTFILE)
