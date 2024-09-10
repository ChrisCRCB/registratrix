BEGIN;

--
-- ACTION ALTER TABLE
--
ALTER TABLE "organisation_members" ADD COLUMN "canEditOrganisation" boolean NOT NULL DEFAULT false;

--
-- MIGRATION VERSION FOR registratrix
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('registratrix', '20240910144903583', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240910144903583', "timestamp" = now();

--
-- MIGRATION VERSION FOR serverpod
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('serverpod', '20240516151843329', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240516151843329', "timestamp" = now();

--
-- MIGRATION VERSION FOR serverpod_auth
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('serverpod_auth', '20240520102713718', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240520102713718', "timestamp" = now();


COMMIT;
