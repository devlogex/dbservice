CREATE TABLE "epic" (
  "id" bigint PRIMARY KEY,
  "product_id" bigint NOT NULL,
  "name" varchar(256) NOT NULL,
  "state" integer NOT NULL,
  "release_id" bigint NOT NULL,
  "assign_to" bigint,
  "initiatives" text,
  "goals" text,
  "description" text,
  "files" text,
  "created_at" bigint,
  "created_by" bigint
);