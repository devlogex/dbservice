CREATE TABLE "model" (
  "id" bigint PRIMARY KEY,
  "workspace_id" bigint NOT NULL,
  "name" varchar(128) NOT NULL DEFAULT 'Model Name',
  "type" int NOT NULL,
  "time_frame" varchar(64) NOT NULL DEFAULT '',
  "buz_type" varchar(64) NOT NULL DEFAULT 'Business',
  "description" text NOT NULL DEFAULT '',
  "files" varchar(512) NOT NULL DEFAULT ''
);
