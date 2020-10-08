CREATE TABLE "watcher" (
  "id" bigint PRIMARY KEY,
  "user_id" bigint NOT NULL,
  "object_id" bigint NOT NULL
);