CREATE TABLE "position" (
  "id" bigint PRIMARY KEY,
  "product_id" bigint NOT NULL,
  "name" varchar(128) DEFAULT 'Position Name',
  "buz_type" varchar(64) DEFAULT 'Business',
  "time_frame" varchar(64) DEFAULT '',
  "description" text DEFAULT '',
  "files" text DEFAULT ''
);
