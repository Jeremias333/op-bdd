Feature: Calculadora
    Calculadora com 5 funções básicas: adição, subtração, multiplicação, divisão e potenciação.

    Scenario Outline: somar dois números
        Soma dois números e apresenta resultado
        Given que eu tenho o número <a>
        And e que eu tenho o número <b>
        When eu somo os números
        Then o resultado da soma deve ser <result>
    
    Examples:
        | a | b  | result    |
        | 1 | 10 | 11        |
        | 2 | 24 | 26        |
        | 3 | 3  | 6         |
        | 4 | 42 | 46        |

    Scenario Outline: subtrair dois números
        Subtrai dois números e apresenta resultado
        Given que eu tenho o número <a>
        And e que eu tenho o número <b>
        When eu subtraio os números
        Then o resultado da subtração deve ser <result>

    Examples:
        | a | b  | result    |
        | 1 | 10 | -9        |
        | 2 | 24 | -22       |
        | 3 | 3  | 0         |
        | 4 | 42 | -38       |

    Scenario Outline: multiplicar dois números
        Multiplica dois números e apresenta resultado
        Given que eu tenho o número <a>
        And e que eu tenho o número <b>
        When eu multiplico os números
        Then o resultado da multiplicação deve ser <result>

    Examples:
        | a | b  | result    |
        | 1 | 10 | 10        |
        | 2 | 24 | 48        |
        | 3 | 3  | 9         |
        | 4 | 42 | 168       |
    

    Scenario Outline: dividir dois números
        Divide dois números e apresenta resultado
        Given que eu tenho o número <a>
        And e que eu tenho o número <b>
        When eu divido os números
        Then o resultado da divisão deve ser <result>

    Examples:
        | a  | b  | result    |
        | 1  | 10 | 0.1       |
        | 24 | 2  | 12        |
        | 3  | 3  | 1         |
        | 4  | 2  | 2         | 
    

    Scenario Outline: potenciar dois números
        Potencia dois números e apresenta resultado
        Given que eu tenho o número <a>
        And e que eu tenho o número <b>
        When eu potencio os números
        Then o resultado da potenciação deve ser <result>

    Examples:
        | a | b  | result    |
        | 1 | 10 | 1         |
        | 2 | 24 | 16777216  |
        | 3 | 3  | 27        |
        | 1 | 1  | 1         |


