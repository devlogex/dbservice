CREATE TABLE "position_component" (
  "id" bigint PRIMARY KEY,
  "name" varchar(64) DEFAULT 'Name...',
  "position_id" bigint NOT NULL,
  "color" varchar(8) DEFAULT 'f5f6fa',
  "description" text DEFAULT 'Description...',
  "files" text DEFAULT ''
);
