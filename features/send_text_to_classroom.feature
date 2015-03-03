Feature: Send a text to all members of a classroom

  As an administrator
  so that teachers can notify one class at a time
  I would like to send texts to all members of a classroom

  Background: there are students and classrooms in the database

  Given the following classrooms exist:
  | Classroom |
  | Room A    |
  | Room B    |

  Given the following students exist:
  | Student_Name | Parent_Name | Phone_Number | Email                      | Classroom |
  | Khoa Nguyen  | Jason Liu   | 2532363623   | teamfirealarm@gmail.com    | Room A    |
  | Lady         | Ralf        | 2532363623   | teamfirealarm@gmail.com    | Room A    |
  | Rachel       | Papa        | 2532363623   | potato@gmail.com           | Room B    |

  Given I am logged in as admin
  And I am on the classroom page

  Scenario: Send text to all students within a classroom
  When I follow "Room A"
  And I follow "Send Message"
  Then I should see "Khoa Nguyen, Lady"
  And I press "Send!"
  Then I should see "Messages sent successfully."