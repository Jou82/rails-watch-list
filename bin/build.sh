#!/bin/bash
# Instalar dependências
bundle install
# Precompilar assets (ignorando erros)
bundle exec rails assets:precompile 2>/dev/null || true
