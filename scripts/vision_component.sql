CREATE TABLE "vision_component" (
  "id" bigint PRIMARY KEY,
  "name" varchar(64) NOT NULL DEFAULT 'Strategy...',
  "vision_id" bigint NOT NULL,
  "summary" text NOT NULL DEFAULT 'Summary...',
  "color" varchar(8) NOT NULL DEFAULT 'f5f6fa',
  "description" text NOT NULL DEFAULT 'Description...',
  "files" varchar(512) NOT NULL DEFAULT ''
);
