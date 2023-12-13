
CREATE TABLE category (
	"category_id" VARCHAR(4) NOT NULL,
	"category" VARCHAR NOT NULL,
	PRIMARY KEY("category_id")
);

CREATE TABLE subcategory (
	"subcategory_id" VARCHAR(10) NOT NULL,
	"subcategory" VARCHAR NOT NULL,
	PRIMARY KEY("subcategory_id")
);

CREATE TABLE contacts (
	"contact_id" INT NOT NULL,
	"first_name" VARCHAR NOT NULL,
	"last_name" VARCHAR NOT NULL,
	"email" VARCHAR NOT NULL,
	PRIMARY KEY("contact_id")
);

CREATE TABLE campaign(
	"cf_id" INT NOT NULL,
	"contact_id" INT NOT NULL,
	"company_name" VARCHAR NOT NULL,
	"description" TEXT NOT NULL,
	"goal" NUMERIC NOT NULL,
	"pledged" NUMERIC NOT NULL,
	"outcome" VARCHAR NOT NULL,
	"backers_count" INT NOT NULL,
	"country" VARCHAR NOT NULL,
	"currency" VARCHAR NOT NULL,
	"launched_date" DATE NOT NULL,
	"end_date" DATE NOT NULL,
	"category_id" VARCHAR(4) NOT NULL,
	"subcategory_id" VARCHAR(10) NOT NULL,
	PRIMARY KEY("cf_id"),
	FOREIGN KEY("category_id") REFERENCES category("category_id"),
	FOREIGN KEY("subcategory_id") REFERENCES subcategory("subcategory_id"),
	FOREIGN KEY("contact_id") REFERENCES contacts("contact_id")
);

SELECT * FROM campaign;
SELECT * FROM contacts;
SELECT * FROM category;
SELECT * FROM subcategory;