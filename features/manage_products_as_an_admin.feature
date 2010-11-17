Feature: Manage products as an admin
  In order to use my superpowers
  As an admin
  I want to do something special on this website

@wip
Scenario: Adding a new category
   Given I am on the home page
   And I follow "Zaloguj sie"
   And I log in as an admin
   And I should see "Nie mamy zadnych zapisanych przedmiotow"
   When I follow "Jestem adminem, poka panel"
   Then I follow "Dodaj nowa kategorie"
   And I fill in "Nazwa" with "im awesome"
   And I press "Stworz"
   Then I am on the home page