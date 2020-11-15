CREATE TABLE "vision" (
  "id" bigint PRIMARY KEY,
  "product_id" bigint NOT NULL UNIQUE,
  "description" text NOT NULL DEFAULT '',
  "files" text NOT NULL DEFAULT ''
);
