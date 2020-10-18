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