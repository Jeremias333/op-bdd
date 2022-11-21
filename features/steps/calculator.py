#para rodar no vscode é necessário utilizar esse try
try:
    import sys
    import os
    sys.path.append(
        os.path.abspath(
            os.path.join(
                os.path.dirname(__file__), '../..'
            )
        )
    )
except:
    raise

from behave import *
from src import calculator

@given("que eu tenho o número {a}")
def set_a(context, a):
    context.a = int(a)
    
@step("e que eu tenho o número {b}")
def set_b(context, b):
    context.b = int(b)

@then("o resultado da soma deve ser {result}")
def sum_num(context, result):
    assert context.result == int(result)

@then("o resultado da subtração deve ser {result}")
def sub_num(context, result):
    assert context.result == int(result)

@then("O resultado da multiplicação deve ser {result}")
def mult_num(context, result):
    assert context.result == int(result)

@then("O resultado da divisão deve ser {result}")
def div_num(context, result):
    assert context.result == float(result)

@then("O resultado da potenciação deve ser {result}")
def pot_num(context, result):
    assert context.result == int(result)

@when("eu somo os números")
def sum(context):
    calculadora = calculator.Calculator()
    context.result = calculadora.sum(context.a, context.b)

@when("eu subtraio os números")
def sub(context):
    calculadora = calculator.Calculator()
    context.result = calculadora.sub(context.a, context.b)

@when("eu multiplico os números")
def mult(context):
    calculadora = calculator.Calculator()
    context.result = calculadora.mult(context.a, context.b)

@when("eu divido os números")
def div(context):
    calculadora = calculator.Calculator()
    context.result = calculadora.div(context.a, context.b)

@when("eu potencio os números")
def pot(context):
    calculadora = calculator.Calculator()
    context.result = calculadora.pot(context.a, context.b)
