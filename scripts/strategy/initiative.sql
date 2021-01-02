CREATE TABLE "initiative"
(
    "id" bigint PRIMARY KEY,
    "product_id" bigint NOT NULL,
    "name" varchar(512) DEFAULT 'Goal...',
    "description" text DEFAULT '',
    "files" text DEFAULT '',
    "parent_initiative" text,
    "goals" text default '[]',
    "process" INTEGER default 0,
    "status" integer,
    "time_frame" varchar(64) DEFAULT '',
    "color" varchar(8) DEFAULT '#5DBF40',
    "start_at" bigint,
    "end_at" bigint,
    "visible" int DEFAULT 1
);
