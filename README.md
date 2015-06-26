# elasticsearch-rails env var

This [wercker step](http://devcenter.wercker.com/docs/steps/index.html) sets ELASTICSEARCH_URL env var for [elasticsearch-rails](https://github.com/elastic/elasticsearch-rails/).

## Example

```yml
box: ruby
services:
  - elasticsearch
build:
  steps:
    - elasticsearch-rails-env-var
```

## Details

You should use this along with the elasticsearch service.
Have a look at the [services documentation](http://devcenter.wercker.com/docs/services/index.html) for more information.

This step uses ELASTICSEARCH_URL env var according to [this](https://github.com/elastic/elasticsearch-rails/issues/119).

## License

MIT License (MIT)
