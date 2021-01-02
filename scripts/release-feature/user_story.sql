CREATE TABLE "user_story" (
  "id" bigint PRIMARY KEY,
  "product_id" bigint NOT NULL,
  "name" varchar(256) NOT NULL,
  "state" integer NOT NULL,
  "personas" text DEFAULT '[]',
  "steps" text,
  "epics" text,
  "releases" text,
  "length" integer default 10,
  "created_at" bigint,
  "created_by" bigint
);