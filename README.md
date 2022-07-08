# Tutorial basico de rspec

1. Agregar al Gemfile
```Ruby 
gem 'rspec'
gem 'rspec-rails'
```
2. Ejecutar _'bundle install'_

3. Una vez instalado ejecutar 
```ruby
rails g rspec:install
```
4. En el directorio _'spec'_ se ubican los tests

5. Para ejecutar cada uno de los tests:
```ruby
rspec <ubicancion del archivo>
```