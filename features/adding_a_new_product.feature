Feature: Manage my products
  In order to be a happy person
  As a simple user
  I want to add my best dress to this website


Scenario: Adding a new product
   Given I am on the home page
   And I follow "Zaloguj sie"
   And I log in as a user
   When I follow "Dodaj nowa pozycje"
   And I fill in "Nazwa" with "Kiecka"
   And I fill in "Cena" with "12"
   And I fill in "Krotki opis" with "blargh"
   And I press "Zapisz zmiany"
   Then I am on the home page