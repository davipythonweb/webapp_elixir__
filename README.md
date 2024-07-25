# webapp_elixir__
Estudando Elixir

## elixir e phoenix framework

`Elixir==1.15.7`

`Erlang\OTP 26`

`Phoenix==1.7.14`

### instalação elixir
* sudo apt install elixir
#### instalação framework phoenix
* mix local.hex
* mix archive.install hex phx_new 1.5.9


* Official website: https://www.phoenixframework.org/
* Guides: https://hexdocs.pm/phoenix/overview.html
* Docs: https://hexdocs.pm/phoenix
* Forum: https://elixirforum.com/c/phoenix-forum
* Source: https://github.com/phoenixframework/phoenix


##### comandos
* iex ==> abrie terminal interativo elixir
* mix pnx.new (nome do app) obs: tirar algumas coisas: --no-html, --no-ecto, --no-webpack
* iex -S mix.phx.server ==> rodar app e abrie o iex
* mix phx.server ==> rodar app
* arquivo dev.exs ==> variaveis de ambiente
* mix deps.get ==> instalar dependencias


###### comando usado para criação sem o pacote web e sem o gerenciador ecto
* mix phx.new phoenix2 --no-webpack --no-ecto 


###### algumas informações * importantes

* REST ==> trasferencia de estado representacional, ou seja, é uma estrutura de informação que é passada atravez de um protocolo, uma camada.

* RESTful ==> é a aplicação que implementa a estrutura ou arquitetura REST.

* A arquitetura REST é baseada nos verbos, que estão abaixo ==>

###### VERBOS HTTP
* POST ==> envia informações atraves do http, envia pelo body da requisição 
* GET ==> só envia dados, descritos atraves do path, pelo query params que defini atravez do (?) para enviar ao servidor.
* PUT ==> é utilizado para atualizar a informação, uma entidade
* DELETE  ==> é responsavel por deletar uma informação, é utilizaado apenas query params(parametros no path, para metros visiveis, publicos)
* PATCH  ==> atualiza especificamente um  unico campo, nao é tao utilizado.