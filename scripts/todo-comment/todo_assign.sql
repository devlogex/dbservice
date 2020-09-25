CREATE TABLE "todo_assign" (
  "id" bigint PRIMARY KEY,
  "todo_id" bigint NOT NULL,
  "user_id" bigint NOT NULL,
  "workspace_id" bigint NOT NULL,
  "type" integer NOT NULL,
  "state" integer NOT NULL
);