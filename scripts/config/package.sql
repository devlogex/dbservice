CREATE TABLE "package" (
  "id" bigint PRIMARY KEY,
  "max_product" int NOT NULL,
  "max_member" int NOT NULL,
  "price" NUMERIC(19,4) NOT NULL,
  "period_validity" bigint NOT NULL,
  "created_at" bigint,
  "created_by" bigint,
  "updated_at" bigint,
  "updated_by" bigint,
  "state" int NOT NULL
);