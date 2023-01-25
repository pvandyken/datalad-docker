FROM python:3.11-alpine
# COPY --from=build /app /usr/local
ARG DATALAD_VERSION
RUN apk add git git-annex && \
    pip install datalad$([ -z $DATALAD_VERSION ] || echo "==$DATALAD_VERSION")

ENTRYPOINT ["datalad"]
