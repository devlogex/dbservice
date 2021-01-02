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
);