CREATE TABLE "model" (
  "id" bigint PRIMARY KEY,
  "product_id" bigint NOT NULL,
  "name" varchar(128) DEFAULT 'Model Name',
  "type" int NOT NULL,
  "time_frame" varchar(64) DEFAULT '',
  "buz_type" varchar(64) DEFAULT 'Business',
  "description" text DEFAULT '',
  "files" text DEFAULT ''
);
