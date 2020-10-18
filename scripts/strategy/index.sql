CREATE TABLE "competitor"
(
    "id" bigint PRIMARY KEY,
    "product_id" bigint NOT NULL,
    "name" varchar(64) NOT NULL DEFAULT 'Name...',
    "image" text,
    "color" varchar(8) NOT NULL DEFAULT '0173CF',
    "score" text,
    "url" text,
    "content" text
);

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

CREATE TABLE "layout" (
  "id" bigint PRIMARY KEY,
  "parent_id" bigint NOT NULL,
  "type" varchar(64) NOT NULL,
  "layout" text NOT NULL DEFAULT ''
);

CREATE TABLE "model" (
  "id" bigint PRIMARY KEY,
  "product_id" bigint NOT NULL,
  "name" varchar(128) NOT NULL DEFAULT 'Model Name',
  "type" int NOT NULL,
  "time_frame" varchar(64) NOT NULL DEFAULT '',
  "buz_type" varchar(64) NOT NULL DEFAULT 'Business',
  "description" text NOT NULL DEFAULT '',
  "files" varchar(512) NOT NULL DEFAULT ''
);

CREATE TABLE "model_component" (
  "id" bigint PRIMARY KEY,
  "name" varchar(64) NOT NULL DEFAULT 'Name...',
  "model_id" bigint NOT NULL,
  "color" varchar(8) NOT NULL DEFAULT 'f5f6fa',
  "description" text NOT NULL DEFAULT 'Description...',
  "files" varchar(512) NOT NULL DEFAULT ''
);

CREATE TABLE "personas"
(
    "id" bigint PRIMARY KEY,
    "product_id" bigint NOT NULL,
    "name" varchar(64) NOT NULL DEFAULT 'Name...',
    "image" text,
    "color" varchar(8) NOT NULL DEFAULT 'f5f6fa',
    "content" text
);

CREATE TABLE "position" (
  "id" bigint PRIMARY KEY,
  "product_id" bigint NOT NULL,
  "name" varchar(128) NOT NULL DEFAULT 'Position Name',
  "buz_type" varchar(64) NOT NULL DEFAULT 'Business',
  "time_frame" varchar(64) NOT NULL DEFAULT '',
  "description" text NOT NULL DEFAULT '',
  "files" varchar(512) NOT NULL DEFAULT ''
);

CREATE TABLE "position_component" (
  "id" bigint PRIMARY KEY,
  "name" varchar(64) NOT NULL DEFAULT 'Name...',
  "position_id" bigint NOT NULL,
  "color" varchar(8) NOT NULL DEFAULT 'f5f6fa',
  "description" text NOT NULL DEFAULT 'Description...',
  "files" varchar(512) NOT NULL DEFAULT ''
);

CREATE TABLE "vision" (
  "id" bigint PRIMARY KEY,
  "product_id" bigint NOT NULL UNIQUE,
  "description" text NOT NULL DEFAULT '',
  "files" varchar(512) NOT NULL DEFAULT ''
);

CREATE TABLE "vision_component" (
  "id" bigint PRIMARY KEY,
  "name" varchar(64) NOT NULL DEFAULT 'Strategy...',
  "vision_id" bigint NOT NULL,
  "summary" text NOT NULL DEFAULT 'Summary...',
  "color" varchar(8) NOT NULL DEFAULT 'f5f6fa',
  "description" text NOT NULL DEFAULT 'Description...',
  "files" varchar(512) NOT NULL DEFAULT ''
);

