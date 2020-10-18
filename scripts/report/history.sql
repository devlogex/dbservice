CREATE TABLE "history" (
  "id" bigint PRIMARY KEY,
  "updated_at" bigint NOT NULL,
  "updated_by" bigint NOT NULL,
  "action" VARCHAR(64) NOT NULL,
  "object_id" bigint NOT NULL,
  "user_id" bigint NOT NULL,
  "content" text NOT NULL,
  "type" INTEGER NOT NULL
);