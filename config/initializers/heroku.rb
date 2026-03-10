# Configuração específica para Heroku
if ENV['HEROKU_APP_NAME'].present?
  Rails.application.config.hosts << ENV['HEROKU_APP_NAME'] + '.herokuapp.com'
end
