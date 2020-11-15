CREATE TABLE "product" (
  "id" bigint PRIMARY KEY,
  "name" varchar(256) NOT NULL,
  "type" int NOT NULL,
  "parent" bigint,
  "workspace_id" bigint NOT NULL,
  "description" text DEFAULT '',
  "files" text DEFAULT '',
  "created_at" bigint,
  "created_by" bigint
);