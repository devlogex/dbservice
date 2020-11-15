CREATE TABLE "release" (
  "id" bigint PRIMARY KEY,
  "product_id" bigint NOT NULL,
  "name" varchar(256) NOT NULL,
  "state" integer NOT NULL,
  "owner" bigint NOT NULL,
  "initiatives" text,
  "goals" text,
  "days_to_release" integer DEFAULT 0,
  "release_date" bigint,
  "start_on" bigint,
  "end_on" bigint,
  "develop_start_on" bigint,
  "theme" text,
  "files" text,
  "created_at" bigint,
  "created_by" bigint
);