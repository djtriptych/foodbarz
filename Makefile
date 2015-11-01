
all: etc/foods

clean:
	rm -f etc/foods
	rm -f etc/terms

etc/foods: etc/terms
	scripts/parse-food-word-list etc/terms | uniq > etc/foods

etc/terms:
	curl http://www.linguasorb.com/spanish/food-word-list > etc/terms

etc/ohhla-index:
	scripts/ohhla-index
