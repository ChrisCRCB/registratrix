BEGIN;

--
-- ACTION CREATE TABLE
--
CREATE TABLE "organisations" (
    "id" bigserial PRIMARY KEY,
    "name" text NOT NULL,
    "createdAt" timestamp without time zone NOT NULL
);


--
-- MIGRATION VERSION FOR registratrix
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('registratrix', '20240906123654874', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240906123654874', "timestamp" = now();

--
-- MIGRATION VERSION FOR serverpod
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('serverpod', '20240516151843329', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240516151843329', "timestamp" = now();


COMMIT;
