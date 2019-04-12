Feature: Untitled

Scenario: Ingreso a la aplicacion
    Given Ingreso a la aplicacion
    Then Veo una imagen

Scenario: Ingreso palabra correcta
    Given Ingreso a la aplicacion
    When Veo la imagen "duck"
    And Ingreso la palabra "duck"
    Then Veo el mensaje "Correcto!"

Scenario: Ingreso palabra incorrecta
    Given Ingreso a la aplicacion
    When Veo la imagen "duck"
    And Ingreso la palabra "dog"
    Then Veo el mensaje "Intenta de nuevo"

Scenario: Reinicio el juego
    Given Ingreso a la aplicacion
    When Hago click en reiniciar juego
    Then El juego termina y vuelve a comenzar