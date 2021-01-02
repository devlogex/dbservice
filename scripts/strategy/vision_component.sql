CREATE TABLE "vision_component" (
  "id" bigint PRIMARY KEY,
  "name" varchar(64) DEFAULT 'Strategy...',
  "vision_id" bigint NOT NULL,
  "summary" text DEFAULT 'Summary...',
  "color" varchar(8) DEFAULT 'f5f6fa',
  "description" text DEFAULT 'Description...',
  "files" text DEFAULT ''
);
