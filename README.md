# closure-compiler-bash-wrapper
A bash script wrapper for the closure-compiler tool

Based off of an older yuijs bash wrapper, this script allows you to use closure compiler with ease on a variable amount of js files, including wildcards. Allowing you to compress just one, two or a whole folder if you wish.

# Installation
<ol>
<li>
Download the <a href="https://dl.google.com/closure-compiler/compiler-latest.zip">closure-compiler</a> tool to start. Place it wherever you like, but in this example we'll just put it in <strong>/</strong>
</li>
<li>
Unzip and move the contents to <strong>/closure-compiler</strong>
</li>
<li>
Place the <strong>closure-compiler.sh</strong> file from this example in the <strong>/closure-compiler</strong> folder as well.
</li>
<li>
Set up a bash alias to <strong>closure-compiler.sh</strong> in your <strong>~/.bash_profile</strong>. It would look a little something like this<br/>
<strong>alias closure-compiler='/closure-compiler/closure-compiler.sh'</strong>
</li>
<li>
Update the 
<strong>CC_PATH</strong> variable at the top of closure-compiler.sh if you used a directory other than <strong>/closure-compiler</strong>
</li>
<li>
You can invoke the closure-compiler wrapper from the terminal via <strong>closure-compiler [args]</strong>
</li>
</ol>

# Using

You can invoke the wrapper in a number of ways:

```

# single file

closure-compiler file.js 

#creates file-min.js

```

```

# multiple files

closure-compiler file1.js file2.js file3.js 

#creates file1-min.js file2-min.js file3-min.js

```

```

# wildcard, compiles all files ending in .js in the current folder

closure-compiler *.js

# creates [ORIGINAL_NAME]-min.js

```

```

# wildcard in a folder

closure-compiler js-files/*.js

# creates js-files/[ORIGINAL_NAME]-min.js

```

This is a brief usage coverage, feel free to add parameters to multiple folders or files in manner that makes sense to you.

# License
<a href="LICENSE">MIT License</a>

# Contact
If you have any problems open up an issue or reach me at <ben@axolsoft.com>.<br/><br/>In most cases feel free to hack away at this little script to make it suite your needs!
