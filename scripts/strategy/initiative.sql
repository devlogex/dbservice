CREATE TABLE "initiative"
(
    "id" bigint PRIMARY KEY,
    "product_id" bigint NOT NULL,
    "name" varchar(512) NOT NULL DEFAULT 'Goal...',
    "description" text NOT NULL DEFAULT '',
    "files" varchar(512) NOT NULL DEFAULT '',
    "parent_initiative" text,
    "status" integer,
    "time_frame" varchar(64) NOT NULL DEFAULT '',
    "color" varchar(8) NOT NULL DEFAULT '#5DBF40',
    "start_at" bigint,
    "end_at" bigint,
    "visible" int DEFAULT 1
);
