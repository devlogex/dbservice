CREATE TABLE "workspace" (
  "id" bigint PRIMARY KEY,
  "state" int NOT NULL,
  "config_id" bigint,
  "owner_id" bigint NOT NULL,
  "domain" varchar(256) NOT NULL UNIQUE,
  "created_at" bigint,
  "created_by" bigint,
  "updated_at" bigint,
  "updated_by" bigint
);