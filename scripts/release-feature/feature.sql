CREATE TABLE "feature" (
  "id" bigint PRIMARY KEY,
  "product_id" bigint NOT NULL,
  "name" varchar(256) NOT NULL,
  "state" integer NOT NULL,
  "release_id" bigint NOT NULL,
  "type" integer NOT NULL,
  "assign_to" bigint,
  "initiative_id" bigint,
  "goals" text,
  "epic_id" bigint,
  "description" text,
  "files" text,
  "requirements" text,
  "created_at" bigint,
  "created_by" bigint
);