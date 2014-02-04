# fswatch-makefile

Example CSS and Javascript build system using a [Makefile](http://wwwint.sis.pitt.edu/~mbsclass/tutorial/advanced/makefile/whatis.htm).

A simple alternative to other build systems such as [Grunt](http://gruntjs.com), [Gulp](http://gulpjs.com), and [Guard](http://guardgem.org). 

This example compiles javascript and CSS dependencies into single minified files.

The example assumes dependencies [fswatch](https://github.com/alandipert/fswatch) and [yuicompressor](http://yui.github.io/yuicompressor/) are installed, but you could tailor it however you want. Both can be installed with [Homebrew](http://brew.sh).

### Quickstart

Run the following to get started:

	git clone https://github.com/pwenzel/fswatch-makefile.git
	cd fswatch-makefile
	brew install yuicompressor fswatch
	make

Open `index.html` in your web browser.

Then review the `Makefile` for more info.

### Usage

Automatically compile CSS and Javascript files when changed:

	make watch

Compile CSS and Javascript files:

	make

Compile your CSS files:

	make css

Compile your Javascript files:

	make js

Optimize/minifiy Javascript and CSS files:

	make optimize

### More Resources

* [Website Builds Using Make](http://nefariousdesigns.co.uk/website-builds-using-make.html)
* [How to use Makefiles in your web projects](http://oxy.fi/2013/02/03/how-to-use-makefiles-in-your-web-projects/)
* [Simple deployments made easy using rsync with a Makefile](http://blog.ianty.com/general-development/simple-deployments-made-easy-using-rsync-with-a-makefile/)