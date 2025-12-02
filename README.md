# Script_criacao_tabelas_seed
**DESAFIO: Script de criação de tabelas e seed**

Com base na (1) visão geral do sistema, (2) especificação textual do esquema e (3) modelo de
instância fornecidos, você deve:
- Criar as tabelas correspondentes ao esquema e fazer o seed no banco de banco de dados
com base no modelo de instâncias fornecido.

**VISÃO GERAL DO SISTEMA:** 
Deseja-se fazer um sistema para registrar a produção de vinhos nas
vinícolas. Uma vinícola pode produzir muitos vinhos e um vinho é produzido por uma única vinícola.
Cada vinícola está situada em uma região. Por outro lado, em uma região, podem estar situadas
várias vinícolas.
A partir do esquema textual e do modelo de instância, faça o script.sql com os comandos DDL para
criar as tabelas correspondentes ao esquema fornecido. Na sequência, faça os comandos DML para
inclusão dos registros nas tabelas, com base no modelo de instâncias.

**ESPECIFICAÇÃO TEXTUAL DO ESQUEMA**

tb_regiao (id, nome, localidade_s, localidade_w, descricao)
tb_vinicola (id, nome, descricao, fone, email, regiao_id)
regiao_id referencia tb_regiao

tb_tipo_vinho (id, nome)

tb_vinho (id, nome, tipo_id, preco, vinicola_id)
tipo_id referencia tb_tipo_vinho
vinicola_id referencia tb_vinicola

**INSTÂNCIA**

<img width="665" height="153" alt="image" src="https://github.com/user-attachments/assets/a29e3510-9d6d-49a5-b9b4-ec04bee4721e" />
<img width="662" height="219" alt="image" src="https://github.com/user-attachments/assets/b8fcccae-26ee-4d47-9b01-0eed8d4fc5c2" />
<img width="664" height="207" alt="image" src="https://github.com/user-attachments/assets/f54e13ba-9607-44b0-8371-fbd51544204c" />
<img width="660" height="270" alt="image" src="https://github.com/user-attachments/assets/0038a218-a1f6-4274-be5d-dc3c2bab0350" />




