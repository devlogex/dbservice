CREATE TABLE "position" (
  "id" bigint PRIMARY KEY,
  "product_id" bigint NOT NULL,
  "name" varchar(128) NOT NULL DEFAULT 'Position Name',
  "buz_type" varchar(64) NOT NULL DEFAULT 'Business',
  "time_frame" varchar(64) NOT NULL DEFAULT '',
  "description" text NOT NULL DEFAULT '',
  "files" varchar(512) NOT NULL DEFAULT ''
);
