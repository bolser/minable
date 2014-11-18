@disable-bundler
Feature: Update minable files

  Scenario: Updating updates an existing minable install
    Given minable is already installed
    When I write to "minable/_all.scss" with:
      """
      foobar
      """
    And I run `bundle exec minable update`
    Then the output should contain "Minable files updated."
    And the file "minable/_all.scss" should not contain "foobar"

  Scenario: Updating with a --path option
    Given I install minable to "custom_path"
    When I write to "custom_path/minable/_all.scss" with:
      """
      foobar
      """
    And I run `bundle exec minable update`
    Then the output should contain "No existing minable installation. Doing nothing."

    When I run `bundle exec minable update --path custom_path`
    Then the output should contain "Minable files updated."
    And the file "custom_path/minable/_all.scss" should not contain "foobar"

  Scenario: Updating does not generate a new minable install
    And I run `bundle exec minable update`
    Then minable should not have been generated
    And the output should contain "No existing minable installation. Doing nothing."
