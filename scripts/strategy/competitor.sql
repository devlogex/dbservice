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
