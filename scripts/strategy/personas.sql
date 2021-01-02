CREATE TABLE "personas"
(
    "id" bigint PRIMARY KEY,
    "product_id" bigint NOT NULL,
    "name" varchar(64) DEFAULT 'Name...',
    "image" text,
    "color" varchar(8) DEFAULT 'f5f6fa',
    "content" text
);
