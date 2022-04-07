all: draft-ietf-dnsop-dnssec-bcp.txt

.PRECIOUS: %.xml

%.txt: %.xml
	xml2rfc $<

%.xml: %.mkd
	kramdown-rfc $< >$@.new
	mv $@.new $@
