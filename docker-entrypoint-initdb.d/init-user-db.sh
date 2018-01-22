psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" <<-EOSQL
    -- gitlab
    CREATE USER gitlab PASSWORD 'gitlab';
    CREATE DATABASE gitlab;
    GRANT ALL PRIVILEGES ON DATABASE gitlab TO gitlab;
    -- Mattermost
    -- https://github.com/mattermost/mattermost-docker
    CREATE USER mattermost PASSWORD 'mattermost';
    CREATE DATABASE mattermost;
    GRANT ALL PRIVILEGES ON DATABASE mattermost TO mattermost;
EOSQL