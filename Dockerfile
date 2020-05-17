FROM flokkr/base:37
ADD https://dl.min.io/server/minio/release/linux-amd64/minio /usr/bin/minio
ADD https://dl.min.io/client/mc/release/linux-amd64/mc /usr/bin/mc
RUN chmod +x /usr/bin/minio && chmod +x /usr/bin/mc
