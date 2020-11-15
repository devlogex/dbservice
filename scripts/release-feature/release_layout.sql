CREATE TABLE "release_layout" (
  "id" bigint PRIMARY KEY,
  "release_id" bigint UNIQUE,
  "product_id" bigint,
  "layout" text
);