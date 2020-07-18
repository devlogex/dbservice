CREATE TABLE "goal"
(
    "id" bigint PRIMARY KEY,
    "product_id" bigint NOT NULL,
    "name" varchar(512) NOT NULL DEFAULT 'Goal...',
    "description" text NOT NULL DEFAULT '',
    "files" varchar(512) NOT NULL DEFAULT '',
    "parent_goal" text,
    "status" integer,
    "time_frame" varchar(64) NOT NULL DEFAULT '',
    "color" varchar(8) NOT NULL DEFAULT '#5DBF40',
    "metric" text,
    "metric_description" text,
    "metric_file" text
);
