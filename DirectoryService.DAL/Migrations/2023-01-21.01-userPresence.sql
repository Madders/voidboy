CREATE TABLE userPresence
(
    id            UUID PRIMARY KEY REFERENCES users (id) ON DELETE CASCADE,
    createdAt     TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updatedAt     TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
    domainId      UUID REFERENCES domains ON DELETE CASCADE,
    publicKey     TEXT      DEFAULT NULL,
    path          TEXT      DEFAULT '',
    lastHeartbeat TIMESTAMP DEFAULT NULL
);

CREATE TRIGGER userPresence_updated_at
    BEFORE UPDATE
    ON userPresence
    FOR EACH ROW
    EXECUTE PROCEDURE updated_at_timestamp();