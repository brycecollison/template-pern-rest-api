CREATE TABLE "firms" (
  "id" SERIAL UNIQUE PRIMARY KEY,
  "name" varchar(100),
  "website" varchar(100),
  "location" varchar(100),
  "notes" text,
  "relationship" varchar(50),
  "met_date" date,
  "min_check" integer NOT NULL,
  "max_check" integer NOT NULL,
  "prefers_lead" boolean NOT NULL,
  "stages" text[] NOT NULL,
  "sectors" text[] NOT NULL,
  "blacklist" text[],
  "need_rev" boolean,
  "prefers_early_intros" boolean NOT NULL,
  "special_requirements" text[],
  "ownership_target_low" int,
  "ownership_target_high" int,
  "investor_id" integer NOT NULL
);

CREATE TABLE "investors" (
  "id" SERIAL UNIQUE PRIMARY KEY,
  "first_name" varchar(50) NOT NULL,
  "last_name" varchar(50) NOT NULL,
  "email" varchar(100) UNIQUE NOT NULL,
  "linkedin" varchar(100) UNIQUE,
  "firm_id" integer NOT NULL
);

CREATE TABLE "companies" (
  "id" SERIAL UNIQUE PRIMARY KEY,
  "founder_id" integer NOT NULL,
  "sectors" text[] NOT NULL,
  "program" varchar(100),
  "founded_date" date NOT NULL,
  "raising" boolean NOT NULL,
  "amount" integer,
  "pre" integer,
  "left_in_round" integer
);

CREATE TABLE "founders" (
  "id" SERIAL UNIQUE PRIMARY KEY,
  "first_name" varchar(100),
  "last_name" varchar(100),
  "email" text NOT NULL,
  "phone" text,
  "company_ids" text[]
);

CREATE TABLE "introductions" (
  "id" SERIAL UNIQUE PRIMARY KEY,
  "investor_id" integer,
  "company_id" integer,
  "date" date NOT NULL,
  "status" varchar(50) NOT NULL
);

CREATE TABLE "users" (
  "id" SERIAL UNIQUE PRIMARY KEY,
  "username" varchar(50) UNIQUE,
  "password" text,
  "is_admin" boolean
);

ALTER TABLE "firms" ADD FOREIGN KEY ("investor_id") REFERENCES "investors" ("id");

ALTER TABLE "investors" ADD FOREIGN KEY ("firm_id") REFERENCES "firms" ("id");

ALTER TABLE "companies" ADD FOREIGN KEY ("founder_id") REFERENCES "founders" ("id");

ALTER TABLE "introductions" ADD FOREIGN KEY ("investor_id") REFERENCES "firms" ("id");

ALTER TABLE "introductions" ADD FOREIGN KEY ("company_id") REFERENCES "companies" ("id");
