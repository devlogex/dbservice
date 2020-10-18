CREATE TABLE "epic" (
  "id" bigint PRIMARY KEY,
  "product_id" bigint NOT NULL,
  "name" varchar(256) NOT NULL,
  "state" integer NOT NULL,
  "release_id" bigint NOT NULL,
  "assign_to" bigint,
  "initiative_id" bigint,
  "goals" text,
  "description" text,
  "files" text,
  "created_at" bigint,
  "created_by" bigint
);
CREATE TABLE "feature" (
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
  "description" text,
  "files" text,
  "requirements" text,
  "created_at" bigint,
  "created_by" bigint
);
CREATE TABLE "release" (
  "id" bigint PRIMARY KEY,
  "product_id" bigint NOT NULL,
  "name" varchar(256) NOT NULL,
  "state" integer NOT NULL,
  "owner" bigint NOT NULL,
  "initiative_id" bigint,
  "goals" text,
  "days_to_release" integer,
  "release_date" bigint,
  "start_on" bigint,
  "end_on" bigint,
  "develop_start_on" bigint,
  "theme" text,
  "files" text,
  "created_at" bigint,
  "created_by" bigint
);
CREATE TABLE "release_phase" (
  "id" bigint PRIMARY KEY,
  "release_id" bigint NOT NULL,
  "name" varchar(256) NOT NULL,
  "type" integer NOT NULL,
  "color" varchar(8),
  "date" varchar(64),
  "description" text,
  "files" text
);
CREATE TABLE "requirement" (
  "id" bigint PRIMARY KEY,
  "feature_id" bigint NOT NULL,
  "name" varchar(256) NOT NULL,
  "state" integer NOT NULL,
  "assign_to" bigint,
  "description" text,
  "files" text,
  "created_at" bigint,
  "created_by" bigint
);