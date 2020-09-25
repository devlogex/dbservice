CREATE TABLE "requirement" (
  "id" bigint PRIMARY KEY,
  "feature_id" bigint NOT NULL,
  "name" varchar(256) NOT NULL,
  "state" integer NOT NULL,
  "assign_to" bigint NOT NULL,
  "description" text,
  "files" text,
  "created_at" bigint,
  "created_by" bigint
);