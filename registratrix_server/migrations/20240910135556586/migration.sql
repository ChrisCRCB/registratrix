BEGIN;

--
-- ACTION CREATE TABLE
--
CREATE TABLE "organisation_members" (
    "id" bigserial PRIMARY KEY,
    "organisationId" bigint NOT NULL,
    "userInfoId" bigint NOT NULL,
    "canAddEvents" boolean NOT NULL DEFAULT false,
    "canDeleteEvents" boolean NOT NULL DEFAULT false
);

--
-- ACTION ALTER TABLE
--
ALTER TABLE "organisations" ALTER COLUMN "createdAt" SET DEFAULT CURRENT_TIMESTAMP;
--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "organisation_members"
    ADD CONSTRAINT "organisation_members_fk_0"
    FOREIGN KEY("organisationId")
    REFERENCES "organisations"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "organisation_members"
    ADD CONSTRAINT "organisation_members_fk_1"
    FOREIGN KEY("userInfoId")
    REFERENCES "serverpod_user_info"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;


--
-- MIGRATION VERSION FOR registratrix
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('registratrix', '20240910135556586', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240910135556586', "timestamp" = now();

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
