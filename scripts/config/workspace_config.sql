CREATE TABLE "workspace_config" (
  "id" bigint PRIMARY KEY,
  "workspace_id" bigint,
  "package_id" bigint,
  "config" text NOT NULL,
  "state" int NOT NULL,
  "created_at" bigint,
  "created_by" bigint,
  "updated_at" bigint,
  "updated_by" bigint
);