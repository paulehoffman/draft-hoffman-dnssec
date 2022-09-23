all: draft-ietf-dnsop-dnssec-bcp.txt draft-ietf-dnsop-dnssec-bcp.html

.PRECIOUS: %.xml

%.txt: %.xml
	xml2rfc --text $<
	
%.html: %.xml
	xml2rfc --html $<

%.xml: %.mkd
	kramdown-rfc $< >$@.new
	mv $@.new $@
