CREATE TABLE "package_code" (
  "id" bigint PRIMARY KEY,
  "package_id" bigint NOT NULL,
  "expire_time" bigint NOT NULL,
  "price" NUMERIC(19,4) NOT NULL,
  "created_at" bigint,
  "created_by" bigint,
  "updated_at" bigint,
  "updated_by" bigint,
  "state" int NOT NULL
);CREATE TABLE "product" (
  "id" bigint PRIMARY KEY,
  "name" varchar(256) NOT NULL,
  "type" int NOT NULL,
  "parent" bigint,
  "workspace_id" bigint NOT NULL,
  "description" text DEFAULT '',
  "files" text DEFAULT '',
  "created_at" bigint,
  "created_by" bigint
);CREATE TABLE "user_config" (
  "id" bigint PRIMARY KEY,
  "user_id" bigint NOT NULL,
  "workspace_id" bigint NOT NULL,
  "workspace_permissions" text NOT NULL,
  "product_permissions" text NOT NULL,
  "state" int NOT NULL,
  "created_at" bigint,
  "created_by" bigint,
  "updated_at" bigint,
  "updated_by" bigint,
  CONSTRAINT user_info UNIQUE(user_id,workspace_id)
);CREATE TABLE "user_profile" (
  "id" bigint PRIMARY KEY,
  "email" varchar(256) NOT NULL UNIQUE,
  "password" varchar(256),
  "role" varchar(256) NOT NULL,
  "avatar" text,
  "first_name" varchar(256) NOT NULL,
  "last_name" varchar(256) NOT NULL,
  "company_name" varchar(256),
  "domain" varchar(256) UNIQUE,
  "state" int NOT NULL,
  "created_at" bigint,
  "created_by" bigint,
  "updated_at" bigint,
  "updated_by" bigint
);

INSERT INTO user_profile(id, email, password, role, first_name, last_name, company_name, domain, state)
VALUES (
  1,
  'admin@gmail.com',
  'admin',
  'SYSTEM_ADMIN',
  'admin',
  'admin',
  'admin',
  'admin',
  0
);CREATE TABLE "workspace" (
  "id" bigint PRIMARY KEY,
  "state" int NOT NULL,
  "config_id" bigint,
  "owner_id" bigint NOT NULL,
  "domain" varchar(256) NOT NULL UNIQUE,
  "created_at" bigint,
  "created_by" bigint,
  "updated_at" bigint,
  "updated_by" bigint
);CREATE TABLE "workspace_config" (
  "id" bigint PRIMARY KEY,
  "workspace_id" bigint,
  "package_id" bigint,
  "config" text NOT NULL,
  "state" int NOT NULL,
  "created_at" bigint,
  "created_by" bigint,
  "updated_at" bigint,
  "updated_by" bigint
);CREATE TABLE "idea" (
  "id" bigint PRIMARY KEY,
  "name" varchar(128),
  "product_id" bigint,
  "workspace_id" bigint,
  "content" text,
  "files" text DEFAULT '',
  "state" integer,
  "vote" text,
  "created_at" bigint,
  "created_by" bigint
);
CREATE TABLE "epic" (
  "id" bigint PRIMARY KEY,
  "product_id" bigint NOT NULL,
  "name" varchar(256) NOT NULL,
  "state" integer NOT NULL,
  "start_on" bigint,
  "end_on" bigint,
  "release_id" bigint NOT NULL,
  "assign_to" bigint,
  "initiatives" text,
  "goals" text,
  "description" text,
  "files" text,
  "created_at" bigint,
  "created_by" bigint
);CREATE TABLE "feature" (
  "id" bigint PRIMARY KEY,
  "product_id" bigint NOT NULL,
  "name" varchar(256) NOT NULL,
  "state" integer NOT NULL,
  "release_id" bigint NOT NULL,
  "type" integer NOT NULL,
  "assign_to" bigint,
  "initiative_id" bigint,
  "goals" text,
  "epic_id" bigint,
  "start_on" bigint,
  "end_on" bigint,
  "description" text,
  "files" text,
  "requirements" text,
  "process" integer default 0,
  "is_complete" integer default 0,
  "created_at" bigint,
  "created_by" bigint
);CREATE TABLE "release" (
  "id" bigint PRIMARY KEY,
  "product_id" bigint NOT NULL,
  "name" varchar(256) NOT NULL,
  "state" integer NOT NULL,
  "owner" bigint,
  "initiatives" text,
  "goals" text,
  "days_to_release" integer DEFAULT 0,
  "release_date" bigint,
  "start_on" bigint,
  "end_on" bigint,
  "develop_start_on" bigint,
  "process" integer default 0,
  "pending_features" integer default 0,
  "completed_features" integer default 0,
  "theme" text,
  "files" text,
  "type" varchar(64),
  "created_at" bigint,
  "created_by" bigint
);CREATE TABLE "release_layout" (
  "id" bigint PRIMARY KEY,
  "release_id" bigint,
  "product_id" bigint,
  "type" varchar(64),
  "layout" text
);CREATE TABLE "release_phase" (
  "id" bigint PRIMARY KEY,
  "release_id" bigint NOT NULL,
  "name" varchar(256) NOT NULL,
  "type" integer NOT NULL,
  "color" varchar(8),
  "date" varchar(64),
  "description" text,
  "files" text
);CREATE TABLE "requirement" (
  "id" bigint PRIMARY KEY,
  "feature_id" bigint NOT NULL,
  "name" varchar(256) NOT NULL,
  "state" integer NOT NULL,
  "assign_to" bigint,
  "description" text,
  "files" text,
  "created_at" bigint,
  "created_by" bigint
);CREATE TABLE "user_story" (
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
);CREATE TABLE "history" (
  "id" bigint PRIMARY KEY,
  "updated_at" bigint NOT NULL,
  "updated_by" bigint,
  "action" VARCHAR(64),
  "object_id" bigint,
  "user_id" bigint,
  "content" text
);CREATE TABLE "watcher" (
  "id" bigint PRIMARY KEY,
  "object_id" bigint,
  "user_id" bigint,
  UNIQUE(user_id, object_id)
);CREATE TABLE "competitor"
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
CREATE TABLE "layout" (
  "id" bigint PRIMARY KEY,
  "parent_id" bigint NOT NULL,
  "type" varchar(64) NOT NULL,
  "layout" text NOT NULL DEFAULT ''
);
CREATE TABLE "model" (
  "id" bigint PRIMARY KEY,
  "product_id" bigint NOT NULL,
  "name" varchar(128) DEFAULT 'Model Name',
  "type" int NOT NULL,
  "time_frame" varchar(64) DEFAULT '',
  "buz_type" varchar(64) DEFAULT 'Business',
  "description" text DEFAULT '',
  "files" text DEFAULT ''
);
CREATE TABLE "model_component" (
  "id" bigint PRIMARY KEY,
  "name" varchar(64) NOT NULL DEFAULT 'Name...',
  "model_id" bigint NOT NULL,
  "color" varchar(8) NOT NULL DEFAULT 'f5f6fa',
  "description" text DEFAULT 'Description...',
  "files" text DEFAULT ''
);
CREATE TABLE "personas"
(
    "id" bigint PRIMARY KEY,
    "product_id" bigint NOT NULL,
    "name" varchar(64) DEFAULT 'Name...',
    "image" text,
    "color" varchar(8) DEFAULT 'f5f6fa',
    "content" text
);
CREATE TABLE "position" (
  "id" bigint PRIMARY KEY,
  "product_id" bigint NOT NULL,
  "name" varchar(128) DEFAULT 'Position Name',
  "buz_type" varchar(64) DEFAULT 'Business',
  "time_frame" varchar(64) DEFAULT '',
  "description" text DEFAULT '',
  "files" text DEFAULT ''
);
CREATE TABLE "position_component" (
  "id" bigint PRIMARY KEY,
  "name" varchar(64) DEFAULT 'Name...',
  "position_id" bigint NOT NULL,
  "color" varchar(8) DEFAULT 'f5f6fa',
  "description" text DEFAULT 'Description...',
  "files" text DEFAULT ''
);
CREATE TABLE "vision" (
  "id" bigint PRIMARY KEY,
  "product_id" bigint NOT NULL UNIQUE,
  "description" text DEFAULT '',
  "files" text DEFAULT ''
);
CREATE TABLE "vision_component" (
  "id" bigint PRIMARY KEY,
  "name" varchar(64) DEFAULT 'Strategy...',
  "vision_id" bigint NOT NULL,
  "summary" text DEFAULT 'Summary...',
  "color" varchar(8) DEFAULT 'f5f6fa',
  "description" text DEFAULT 'Description...',
  "files" text DEFAULT ''
);
CREATE TABLE "comment" (
  "id" bigint PRIMARY KEY,
  "belong_id" bigint NOT NULL,
  "workspace_id" bigint NOT NULL,
  "content" text,
  "files" text,
  "created_at" bigint,
  "created_by" bigint
);CREATE TABLE "todo" (
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
);CREATE TABLE "todo_assign" (
  "id" bigint PRIMARY KEY,
  "todo_id" bigint NOT NULL,
  "user_id" bigint NOT NULL,
  "workspace_id" bigint NOT NULL,
  "type" integer NOT NULL,
  "state" integer NOT NULL,
  "verified_at" bigint
);