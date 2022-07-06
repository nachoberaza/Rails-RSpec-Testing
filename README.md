# Practica RSpec

1. Agregar al Gemfile
```ruby 
gem 'rspec', '~> 3.10'
```
2. Ejecutar _'bundle install'_

3. Una vez instalado ejecutar 
```sh
rspec --init
```
4. En el directorio _'spec'_ se ubican los tests

5. Para ejecutar cada uno de los tests:
```sh
rspec <ubicancion del archivo>
```
6. De manera alternativa se puede generar un ejecutable con todos los tests
```sh
bundle binstubs rspec-core
```
### Matchers

Implementacion de matchers para la validacion de de condiciones tales como el 
```ruby
expect <...>.to raise_exception(StandardError)

expect <...>.to be_truthly
```


### Custom Matchers
Implementacion de un custom matcher para la validacion personalizada de objetos tales como 
```ruby
module CustomMatcher
  class OurCustomMatcher
    def initialize(target)
      @target = target
    end

    def matches?(value)
      value == @target
    end

    def failure_message
      "Our matcher failed to match"
    end
  end

  def self.custom_matcher(target)
    OurCustomMatcher.new(target)
  end
end
```

Con su implementacion en los tests

```ruby
it 'has a total of 32 pieces' do
  board = Board.new
  expect(board.total_pieces).to CustomMatcher.custom_matcher(32)
end
```
