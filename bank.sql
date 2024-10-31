CREATE TABLE "accounts" (
                            "id" int PRIMARY KEY,
                            "owner" varchar NOT NULL,
                            "balance" bigint NOT NULL,
                            "currency" varchar NOT NULL,
                            "created_at" timestamptz NOT NULL DEFAULT 'now()'
);

CREATE TABLE "entries" (
                           "id" bigserial PRIMARY KEY,
                           "account_id" bigint,
                           "amount" bigint NOT NULL,
                           "created_at" timestamptz NOT NULL DEFAULT 'now()'
);

CREATE TABLE "transactions" (
                                "id" bigserial PRIMARY KEY,
                                "amount" bigint NOT NULL,
                                "from_account_id" bigint,
                                "to_accound_id" bigint,
                                "created_at" timestamptz NOT NULL DEFAULT 'now()'
);

CREATE INDEX ON "accounts" ("owner");

CREATE INDEX ON "entries" ("account_id");

CREATE INDEX ON "transactions" ("from_account_id");

CREATE INDEX ON "transactions" ("to_accound_id");

CREATE INDEX ON "transactions" ("from_account_id", "to_accound_id");

COMMENT ON COLUMN "entries"."amount" IS 'can be negative or positive';

COMMENT ON COLUMN "transactions"."amount" IS 'must be positive';

ALTER TABLE "entries" ADD FOREIGN KEY ("account_id") REFERENCES "accounts" ("id");

ALTER TABLE "transactions" ADD FOREIGN KEY ("from_account_id") REFERENCES "accounts" ("id");

ALTER TABLE "transactions" ADD FOREIGN KEY ("to_accound_id") REFERENCES "accounts" ("id");
