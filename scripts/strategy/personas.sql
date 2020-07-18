CREATE TABLE "personas"
(
    "id" bigint PRIMARY KEY,
    "product_id" bigint NOT NULL,
    "name" varchar(64) NOT NULL DEFAULT 'Name...',
    "image" text,
    "color" varchar(8) NOT NULL DEFAULT 'f5f6fa',
    "content" text
);
