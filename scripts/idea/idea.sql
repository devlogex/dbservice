CREATE TABLE "idea" (
  "id" bigint PRIMARY KEY,
  "name" varchar(128),
  "product_id" bigint,
  "workspace_id" bigint,
  "content" text,
  "files" text DEFAULT '',
  "state" integer,
  "vote" text,
  "created_at" bigint,
  "created_by" bigint
);
