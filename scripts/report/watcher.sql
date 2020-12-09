CREATE TABLE "watcher" (
  "id" bigint PRIMARY KEY,
  "object_id" bigint,
  "user_id" bigint,
  UNIQUE(user_id, object_id)
);