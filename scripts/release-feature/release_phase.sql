CREATE TABLE "release_phase" (
  "id" bigint PRIMARY KEY,
  "release_id" bigint NOT NULL,
  "name" varchar(256) NOT NULL,
  "type" integer NOT NULL,
  "color" varchar(8),
  "date" varchar(64),
  "description" text,
  "files" text
);