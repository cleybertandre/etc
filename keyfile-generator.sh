#! /bin/bash
for n in {1..1000}; do
	rnd=$(< /dev/urandom tr -dc "\/[:alnum:]=" | head -c45)
	echo -e "<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<KeyFile>\n\t<Meta>\n\t\t<Version>1.00</Version>\n\t</Meta>\n\t<Key>\n\t\t<Data>$rnd</Data>\n\t</Key>\n</KeyFile>" > keyfiles/$n.key
done
