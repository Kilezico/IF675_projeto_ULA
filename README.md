# Projeto ULA - IF675
Projeto da primeira unidade da cadeira de Sistemas Digitais (IF675) do curso de Engenharia da Computação.

## Descrição
  O projeto consiste em fazer uma ULA no nível de abstração de portas lógicas. Para isso, usamos o programa
Intel Quartus Prime 20.1 para desenvolver os diagramas de portas lógicas 

## Projeto
O projeto da ULA precisa ser acoplado a um decodificador binário para display de sete
segmentos que também será desenvolvido. Este projeto da primeira unidade deve ser
desenvolvido totalmente baseado em portas lógicas. Além disso, o projeto deve estar
pronto para baixar na placa de prototipação Altera DE2-115, inclusive com as pinagens configuradas.

A unidade lógica e aritmética deverá ser capaz de executar as seguintes operações,
que serão selecionadas a partir dos códigos da tabela abaixo:
| $S_2$ | $S_1$ | $S_0$| Operação |
| --- | --- | --- | --- |
| 0 | 0 | 0 | F = A + B |
| 0 | 0 | 1 | F = A - B |
| 0 | 1 | 0 | F = Complemento a 2 de B |
| 0 | 1 | 1 | F = A = B |
| 1 | 0 | 0 | F = A > B |
| 1 | 0 | 1 | F = A < B |
| 1 | 1 | 0 | F = A AND B |
| 1 | 1 | 1 | F = A XOR B |

Entradas:
- Dois vetores de 5 bits (A e B), onde um bit é o sinal e o resto é o módulo.
- Um vetor de 3 bits que servirá de seletor para as diversas operações disponíveis.
