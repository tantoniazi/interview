# TIWS-RAILS-OLD
## Desenvolvimento da plataforma em ruby on rails



## Instalação

Necessário o docker instalado na máquina e corretamente configurado

1) para buildar a imagem

```sh
make dev
```

2) para criar o banxco dados

```sh
make create
```

3) para rodar o migrate do banco

```sh
make migrate
```
4) para rodar o seed do banco

```sh
make seed
```
5) para popular a tabela de provider

```sh
make import-provider
```

6) para popular a tabela de cervejasr

```sh
make import-beer
```


## Docker
para rodar os crawlers é necessário acessar o docker e rodar os comandos 

```sh
docker exec -i tiws-web bash
rake crawler:brosbeer
rake crawler:cervejabox
rake crawler:clubedomalte
rake crawler:emporiodacerveja_
rake crawler:hoppi
rake crawler:thebeerplanet
```

## Acessar

para acessar o sistema
```
http://localhost:9292/
login:tbf@tbf.com
password:password
```
