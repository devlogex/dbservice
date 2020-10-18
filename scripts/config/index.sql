CREATE TABLE "package" (
  "id" bigint PRIMARY KEY,
  "max_product" int NOT NULL,
  "max_member" int NOT NULL,
  "price" NUMERIC(19,4) NOT NULL,
  "period_validity" bigint NOT NULL,
  "name" VARCHAR(256),
  "description" text,
  "created_at" bigint,
  "created_by" bigint,
  "updated_at" bigint,
  "updated_by" bigint,
  "state" int NOT NULL
);

CREATE TABLE "package_code" (
  "id" bigint PRIMARY KEY,
  "package_id" bigint NOT NULL,
  "expire_time" bigint NOT NULL,
  "created_at" bigint,
  "created_by" bigint UNIQUE,
  "updated_at" bigint,
  "updated_by" bigint,
  "state" int NOT NULL
);

CREATE TABLE "permission" (
  "id" bigint PRIMARY KEY,
  "name" bigint UNIQUE NOT NULL,
  "permissions" text NOT NULL
);

CREATE TABLE "product" (
  "id" bigint PRIMARY KEY,
  "name" varchar(256) NOT NULL,
  "type" int NOT NULL,
  "parent" bigint,
  "workspace_id" bigint NOT NULL,
  "created_at" bigint,
  "created_by" bigint
);


CREATE TABLE "user_config" (
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
);

CREATE TABLE "user_profile" (
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

CREATE TABLE "workspace" (
  "id" bigint PRIMARY KEY,
  "state" int NOT NULL,
  "config_id" bigint,
  "owner_id" bigint NOT NULL,
  "domain" varchar(256) NOT NULL UNIQUE,
  "created_at" bigint,
  "created_by" bigint,
  "updated_at" bigint,
  "updated_by" bigint
);

CREATE TABLE "workspace_config" (
  "id" bigint PRIMARY KEY,
  "workspace_id" bigint,
  "package_id" bigint,
  "config" text NOT NULL,
  "state" int NOT NULL,
  "created_at" bigint,
  "created_by" bigint,
  "updated_at" bigint,
  "updated_by" bigint
);