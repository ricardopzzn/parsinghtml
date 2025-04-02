# ParsingHTML

Uma ferramenta em Bash para análise de domínios e extração de hosts. O objetivo principal do `parsinghtml` é receber um domínio como entrada e listar todos os hosts associados a ele, incluindo subdomínios.

## Funcionalidades

O script opera em duas etapas principais:
1. **Filtragem de Subdomínios**: Identifica e extrai todos os subdomínios relacionados ao domínio fornecido.
2. **Extração de Hosts**: A partir dos subdomínios encontrados, coleta todos os hosts associados.

## Público-Alvo

Esta ferramenta foi desenvolvida para:
- Profissionais de **Cybersegurança** que precisam mapear domínios e hosts para análises de segurança.
- Entusiastas da área que desejam explorar e aprender mais sobre estrutura de domínios e redes.

## Pré-requisitos

- Sistema operacional compatível com Bash (Linux, macOS, ou WSL no Windows).
- Ferramentas adicionais (se aplicável, como `curl`, `grep`, etc.) - especifique dependências no seu código.

## Como Usar

1. Clone ou baixe este repositório:
   ```bash
   git clone https://github.com/ricardopzzn/parsinghtml.git
2. Navegue até o diretório:

   cd parsinghtml
3. Execute o script com um domínio como argumento:

   ./parsinghtml.sh exemplo.com

4. O resultado será exibido no terminal com a lista de subdomínios e hosts.

   Subdomínios encontrados:
- blog.exemplo.com
- loja.exemplo.com

Hosts associados:
- blog.exemplo.com -> 192.168.1.10
- loja.exemplo.com -> 192.168.1.20

  Aviso Legal
O autor não se responsabiliza pelo uso indevido desta ferramenta ou por qualquer aplicação para fins ilícitos.
Use com responsabilidade e respeite as leis e políticas aplicáveis.


### Notas
- Substitua `<URL_DO_REPOSITORIO>` pelo link real do seu repositório, caso exista.
- Se o seu script tiver dependências específicas (como ferramentas ou bibliotecas), adicione uma seção "Dependências" listando-as.
- Ajuste o "Exemplo de Saída" conforme o formato real do seu script.
- Se quiser uma licença diferente ou nenhuma, edite a seção "Licença" conforme necessário.

Se precisar de ajustes ou mais detalhes, é só avisar!

