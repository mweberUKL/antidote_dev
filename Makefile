build:
	docker build -t mweber/antidote:dev .
rebuild:
	docker build -t mweber/antidote:dev --no-cache .
