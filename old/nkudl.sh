# ladda ner sidan.
wget -r -np -k http://www.nku.nu/
cd www.nku.nu
# byt filnamn och fixa encoding
for f in `find . -name '*.php'`; do iconv -f ISO-8859-1 -t UTF-8//TRANSLIT $f > `echo $f | sed s/\.php$/\.html/` && rm $f; done
# byt referenser
for f in `find . -type f`; do LC_ALL=C sed -i '' 's/\.php/\.html/g' $f; done
