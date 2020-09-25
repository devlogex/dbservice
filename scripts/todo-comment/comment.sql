CREATE TABLE "comment" (
  "id" bigint PRIMARY KEY,
  "belong_id" bigint NOT NULL,
  "workspace_id" bigint NOT NULL,
  "content" text,
  "files" text,
  "created_at" bigint,
  "created_by" bigint
);