CREATE TABLE "history" (
  "id" bigint PRIMARY KEY,
  "updated_at" bigint NOT NULL,
  "updated_by" bigint,
  "action" VARCHAR(64),
  "object_id" bigint,
  "user_id" bigint,
  "content" text
);