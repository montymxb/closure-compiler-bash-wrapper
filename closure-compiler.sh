## Closure compiler path, please update this as needed for you own system
CC_PATH="/closure-compiler/compiler.jar"

if [ $# -eq 0 ]; then
  echo "Please include the file path(s) for the file(s) that you would like to compress." 1>&2
  exit 1
fi

for file in "$@";
do
if [ -f "$file" ]; then
      java -jar "$CC_PATH" --js "$file" --js_output_file "${file%%.*}-min.js"
      if (( $? )); then
          echo "$file was not able to be minified"
          exit 1
      else
          echo "$file was minified to ${file%%.*}-min.js"
      fi
  else
      echo "Unable to find the javascript file '$file'."
fi
done;
exit 0
