PHONY: css js version

cssfiles = 'assets/css/normalize.css' 'assets/css/app.css'
jsfiles = 'assets/js/jquery.js' 'assets/js/jquery.cookie.js' 'assets/js/app.js'
timestamp = `$(date +%s)`

css: $(cssfiles)
	@echo Built all.css

js: $(jsfiles)
	@echo Built all.js

$(cssfiles): 
	@cat $@ >> assets/all.css

$(jsfiles): 
	@cat $@ >> assets/all.js

watch:
	@echo Watching for changes...
	@fswatch assets/css:/assets/js "echo changed && make clean && make" 

optimize: css js version
	@yuicompressor assets/all.css -o assets/all.css
	@yuicompressor assets/all.js -o assets/all.js
	@echo Optimized

version:
	@echo `date +%s` > version

clean:
	@rm -f assets/all.css assets/all.js version