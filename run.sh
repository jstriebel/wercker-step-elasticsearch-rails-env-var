#!/usr/bin/env bash

main() {
  if [ -z "$ELASTICSEARCH_PORT_9200_TCP_ADDR" ]; then
    warn "ELASTICSEARCH_PORT_9200_TCP_ADDR env var for the elasticsearch service is not set"
    return
  fi

  if [ -z "$ELASTICSEARCH_PORT_9200_TCP_PORT" ]; then
    warn "ELASTICSEARCH_PORT_9200_TCP_PORT env var for the elasticsearch service is not set"
    return
  fi

  info "detected elasticsearch, setting ELASTICSEARCH_URL env var for elasticsearch-rails"

  export ELASTICSEARCH_URL="${ELASTICSEARCH_PORT_9200_TCP_ADDR}:${ELASTICSEARCH_PORT_9200_TCP_PORT}"
}

main;
