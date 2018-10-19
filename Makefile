start:
	docker start cs-flash-cards

stop:
	docker stop cs-flash-cards

build:
	docker build . -t cs-flash-cards	
	docker run -d -p 8000:8000 --name cs-flash-cards cs-flash-cards

backup:
	docker cp cs-flash-cards:src/db/cards.db cards-marian.db
