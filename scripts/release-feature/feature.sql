CREATE TABLE "feature" (
  "id" bigint PRIMARY KEY,
  "product_id" bigint NOT NULL,
  "name" varchar(256) NOT NULL,
  "state" integer NOT NULL,
  "release_id" bigint NOT NULL,
  "type" integer NOT NULL,
  "assign_to" bigint,
  "initiatives" text,
  "goals" text,
  "epic_id" bigint,
  "start_on" bigint,
  "end_on" bigint,
  "description" text,
  "files" text,
  "requirements" text,
  "created_at" bigint,
  "created_by" bigint
);