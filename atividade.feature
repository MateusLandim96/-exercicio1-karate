
Feature: Controle de Pets no PetShop
    Como um cliente do PetShop
    Desejo gerenciar os Pets
    Para ter controle das informações registradas na plataforma

    Scenario: Deve ser possivel cadastrar pet por id
        Given url "https://petstore.swagger.io/v2"
        Given path "pet"
        And path "151515"
        And form field name = "ursula" 
        And form field status = "available"
        When method post 
        Then status 200

    Scenario: Consulta de pets com status Available 
        Given url "https://petstore.swagger.io/v2"
        And path "pet/findByStatus"   
        And param status = ["available", "pending"]
        When method get
        Then status 200
        