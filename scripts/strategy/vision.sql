CREATE TABLE "vision" (
  "id" bigint PRIMARY KEY,
  "product_id" bigint NOT NULL UNIQUE,
  "description" text DEFAULT '',
  "files" text DEFAULT ''
);
