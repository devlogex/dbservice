CREATE TABLE "release_layout" (
  "id" bigint PRIMARY KEY,
  "release_id" bigint,
  "product_id" bigint,
  "type" varchar(64),
  "layout" text
);