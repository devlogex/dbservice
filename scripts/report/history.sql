CREATE TABLE "history" (
  "id" bigint PRIMARY KEY,
  "updated_at" bigint NOT NULL,
  "updated_by" bigint NOT NULL,
  "action" integer NOT NULL,
  "object_id" bigint NOT NULL,
  "content" text NOT NULL
);