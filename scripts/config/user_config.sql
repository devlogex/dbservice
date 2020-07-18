CREATE TABLE "user_config" (
  "id" bigint PRIMARY KEY,
  "user_id" bigint NOT NULL,
  "workspace_id" bigint NOT NULL,
  "permissions" text NOT NULL,
  "state" int NOT NULL,
  "created_at" bigint,
  "created_by" bigint,
  "updated_at" bigint,
  "updated_by" bigint
);