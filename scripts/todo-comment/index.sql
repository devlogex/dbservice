CREATE TABLE "comment" (
  "id" bigint PRIMARY KEY,
  "belong_id" bigint NOT NULL,
  "workspace_id" bigint NOT NULL,
  "content" text,
  "files" text,
  "created_at" bigint,
  "created_by" bigint
);

CREATE TABLE "todo" (
  "id" bigint PRIMARY KEY,
  "belong_id" bigint NOT NULL,
  "workspace_id" bigint NOT NULL,
  "name" varchar(256),
  "type" integer NOT NULL,
  "description" text,
  "files" text,
  "due_date" bigint NOT NULL,
  "state" integer NOT NULL,
  "completed_at" bigint,
  "created_at" bigint NOT NULL,
  "created_by" bigint NOT NULL
);

CREATE TABLE "todo_assign" (
  "id" bigint PRIMARY KEY,
  "todo_id" bigint NOT NULL,
  "user_id" bigint NOT NULL,
  "workspace_id" bigint NOT NULL,
  "type" integer NOT NULL,
  "state" integer NOT NULL,
  "verified_at" bigint
);