Feature: Untitled

Scenario: Ingreso a la aplicacion
    Given Ingreso a la aplicacion
    Then Veo una imagen
    And Veo un campo para ingresar la palabra
    And Veo un boton para reiniciar el juego

Scenario: Ingreso palabra correcta
    Given Ingreso a la aplicacion
    When Veo la imagen "duck"
    And Ingreso la palabra "duck"
    Then Veo el mensaje "OK"

Scenario: Ingreso palabra incorrecta
    Given Ingreso a la aplicacion
    When Veo la imagen "duck"
    And Ingreso la palabra "dog"
    Then Veo el mensaje "WTF MAN"

Scenario: Reinicio el juego
    Given Ingreso a la aplicacion
    When Hago click en reiniciar juego
    Then El juego termina y vuelve a comenzar

Scenario: Aumento mi puntaje
    Given Ingreso a la aplicacion
    And Veo la imagen "duck"
    When Ingreso la palabra "duck"
    Then Mi puntaje aumenta

Scenario: Decremento mi puntaje
    Given Ingreso a la aplicacion
    And Veo la imagen "duck"
    When Ingreso la palabra "dog"
    Then Mi puntaje decrece

Scenario: Reiniciar el juego
    Given Ingreso a la aplicacion
    And Visito "/setearPuntaje"
    And Mi puntaje es "1"
    When Presiono "Reiniciar"
    Then Mi puntaje es "0"

