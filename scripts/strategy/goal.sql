CREATE TABLE "goal"
(
    "id" bigint PRIMARY KEY,
    "product_id" bigint NOT NULL,
    "name" varchar(512) DEFAULT 'Goal...',
    "description" text DEFAULT '',
    "files" text,
    "parent_goal" text,
    "initiatives" text default '[]',
    "process" INTEGER default 0,
    "status" integer,
    "time_frame" varchar(64) DEFAULT '',
    "color" varchar(8) DEFAULT '#5DBF40',
    "metric" text,
    "metric_description" text,
    "metric_file" text
);
