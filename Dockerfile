Pular para o conteúdo principal
Google Sala de Aula
Sala de Aula
PROGRAMAÇÃO CLIENT-SIDE
AI-APW-04-T-25-10495
Início
Agenda
Gemini
Minhas inscrições
Pendentes
B
BANCO DE DADOS
AI-APW-04-T-25-10495
L
LINUX - SOFTWARE LIVRE PARA TESTES DE INVASÃO
APSOFWTI1T - 14H AS 16H
D
DESENVOLVIMENTO DE SISTEMA WEB
AI-APW-04-T-25-10495
P
PROGRAMAÇÃO CLIENT-SIDE
AI-APW-04-T-25-10495
P
PLANEJAMENTO E ORGANIZAÇÃO DO TRABALHO
AI-APW-04-T-25-10495
T
TRANSFORMAÇÃO DIGITAL NO SETOR INDUSTRIAL
AI-APW-04-T-25-10495
R
RACIOCÍNIO LÓGICO E ANÁLISE DE DADOS
AI-APW-04-T-25-10495
A
APERFEIÇOAMENTO EM SERVIÇOS DE COMPUTAÇÃO EM NUVEM
APHCLOUD8N
R
RELAÇÕES SOCIOPROFISSIONAIS, CIDADANIA E ÉTICA
AI-APW-04-T-25-10495
S
SAÚDE E SEGURANÇA DO TRABALHO
AI-APW-04-T-25-10495
P
Projetos AI-APW-04-T-25
Turmas arquivadas
Configurações
Detalhes do material
book
Tutorial Deploy
MARCEL PHILIPPE SOUZA SANTOS
•
14:52 (editado: 16:08)
DicasDeploy.docx
Microsoft Word

vhost.txt
Texto

Variaveis de Ambiente.txt
Texto

Dokerfile.txt
Texto

Comentários da turma

Adicionar comentário para a turma...

FROM php:8.3-apache

# Define a imagem base do PHP 8.3 com Apache

RUN apt-get update && apt-get install -y \
    git \
    curl \
    zip \
    unzip \
    libpq-dev \
    libzip-dev \
    && docker-php-ext-install pdo pdo_pgsql zip

# Instala dependências necessárias para Projeto e PostgreSQL

COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

# Copia o Composer para dentro do container

WORKDIR /var/www/html

# Define a pasta principal da aplicação

COPY . .

# Copia todos os arquivos do projeto para dentro do container

RUN composer install --no-dev --optimize-autoloader

# Instala as dependências do Projeto em modo produção

RUN cp .env.example .env

# Cria automaticamente o arquivo .env

RUN php artisan key:generate

# Gera automaticamente a APP_KEY do Projeto

RUN chown -R www-data:www-data /var/www/html/storage
RUN chown -R www-data:www-data /var/www/html/bootstrap/cache

# Define permissões necessárias para cache, logs e sessões

RUN a2enmod rewrite

# Ativa o módulo rewrite do Apache necessário para as rotas do Projeto

COPY .docker/vhost.conf /etc/apache2/sites-available/000-default.conf

# Copia a configuração personalizada do Apache

EXPOSE 80

# Libera a porta 80 para acesso da aplicação
Dokerfile.txt
Página 5 de 6 Página 4 de 6 Página 3 de 6