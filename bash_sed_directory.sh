# useful to find a file of a certain type, then run search and replace on it.
find . -type f -exec bash -c '[[ "$( file -bi "$1" )" == */html* ]]' bash {} \; -exec sed -i -e "s/bootstrap.bundle.min.js/boostrap.bundle.js/g" {} \;

# alternatively (from https://unix.stackexchange.com/questions/483871/how-to-find-files-by-file-type):
find . -type f -exec bash -c '
    for pathname do
        [[ "$( file -bi "$pathname" )" != */x-shellscript* ]] && continue

        # some code here that acts on "$pathname"

    done' bash {} +
