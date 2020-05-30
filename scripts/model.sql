CREATE TABLE "model" (
  "id" bigint PRIMARY KEY,
  "workspace_id" bigint NOT NULL,
  "name" varchar(128) NOT NULL DEFAULT ,
  "type" varchar(64) NOT NULL DEFAULT 'Business',
  "time_frame" varchar(64) NOT NULL DEFAULT '',
  "description" text NOT NULL DEFAULT '',
  "files" varchar(512) NOT NULL DEFAULT ''
);