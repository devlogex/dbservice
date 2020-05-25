CREATE TABLE "vision" (
  "id" bigint PRIMARY KEY,
  "workspace_id" bigint NOT NULL UNIQUE,
  "description" text NOT NULL DEFAULT '',
  "files" varchar(512) NOT NULL DEFAULT ''
);
