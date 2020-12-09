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
);