Feature: Adding a new product
  In order to be a happy person
  As a simple user
  I want to do some things on this website


Scenario: Adding a new product as a user
   Given I am on the home page
   And I follow "Zaloguj sie"
   And I log in as a user
   And I should see "Nie mamy zadnych zapisanych przedmiotow"
   When I follow "Dodaj nowa pozycje"
   And I fill in "Nazwa" with "Bluzka"
   And I fill in "Cena" with "12"
   And I fill in "Krotki opis" with "blargh"
   And I press "Zapisz zmiany"
   Then I am on the home page
