
all: etc/foods etc/ohhla-index.json
	mkdir -p public/gen
	cp etc/* public/gen

clean:
	rm -f etc/*
	rm -f public/gen/*

etc/foods: etc/terms
	scripts/parse-food-word-list etc/terms | uniq > etc/foods

etc/terms:
	curl http://www.linguasorb.com/spanish/food-word-list > etc/terms

etc/ohhla-index.json:
	scripts/ohhla-index > etc/ohhla-index.json
