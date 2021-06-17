# INTERVIEW

## Consulta de CEP

## Instalação

Necessário o docker instalado na máquina e corretamente configurado

1. para buildar a imagem

```sh
make docker
```

2. para criar o banxco dados

```sh
make migrate
```

3. para rodar o seed do banco

```sh
make seed
```

4. Url de consulta
   Buscar CEP

```
http://localhost:9292/ceps/CEP
```

    Listar CEPS

```
http://localhost:9292/ceps/CEP
```

## Login para autenticação

para acessar o sistema

```
http://localhost:9292/
login:teste@teste.com
password:123123123
```
