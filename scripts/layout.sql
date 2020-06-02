CREATE TABLE "layout" (
  "id" bigint PRIMARY KEY,
  "parent_id" bigint NOT NULL,
  "type" varchar(64) NOT NULL,
  "layout" text NOT NULL DEFAULT ''
);
