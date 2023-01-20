# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

## [1.6.3] - 2022-01-20

### Changed

- [Lambda Ruby] Torna o campo `function_name` dinâmico e obrigatório, a ser declarado no workflow da aplicação.

## [1.6.2] - 2022-01-20

### Changed

- [Lambda Ruby] Adiciona o arquivo de versão ao arquivo zip de deployment da lambda.

## [1.6.1] - 2022-01-19

### Changed

- Corrige o local do arquivo CHANGELOG.md por @danilogco

## [1.6.0] - 2022-01-11

### Added

- Adiciona workflow de release para o repositório por @danilogco #7

### Changed

- Simplifica o deployment para o heroku sem a necessidade de montar o ambiente por @danilogco #7

## [1.5.1] - 2022-12-29

### Changed

- [Heroku] Instala a versão do Ruby presente no projeto dinamicamente (arquivo .ruby-version) por @danilogco

## [1.5.0] - 2022-12-09

### Added

- Cria workflow para lambdas em Ruby 2.7 (suportado atualmente)

## [1.4.1] - 2022-12-01

### Changed

- Atualiza a versão do Ruby para v3.1.3.

## [1.4.0] - 2022-10-28

### Added

- Incluído novo template de workflow #4

## [1.3.0] - 2022-10-21

### Added

- Campos opcionais de locais do Dockefile e dos templates de deployment.

## [1.2.3] - 2022-10-19

### Changed

- Atualiza as dependências do projeto

## [1.2.2] - 2022-07-29

### Changed

- Use the self-hosted runner for the default deployment file.

## [1.2.1] - 2022-07-28

### Added

- Add app name as input - heroku deployment workflow.

## [1.2.0] - 2022-07-28

### Added

- Install and run the deployment dependencies in a docker image.

## [1.1.0] - 2022-07-26

### Added

- Workflow to deploy ruby based apps to Heroku.

## [1.0.0] - 2022-07-25

### Added

- Add initial files to the first release.
