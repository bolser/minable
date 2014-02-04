@disable-bundler
Feature: Install minable files

  Scenario: Minable generates a new minable installation
    When I run `bundle exec minable install`
    Then the sass directories should have been generated
    And the following directories should exist:
      | minable     |
    And the master minable partial should have been generated
    And the output should contain "Minable files installed to minable/"

  Scenario: Generating does not overwrite an existing minable directory
    Given minable is already installed
    When I run `bundle exec minable install`
    Then the output should contain "Minable files already installed, doing nothing."

  Scenario: Install Minable into a custom path
    When I run `bundle exec minable install --path=custom_path`
    Then the sass directories with "custom_path" prefix should have been generated
    And the following directories should exist:
      | custom_path/minable     |
    And the master minable partial should have been generated within "custom_path" directory
    And the output should contain "Minable files installed to custom_path/minable/"

  Scenario: Forcing install of minable
    Given minable is already installed
    When I run `bundle exec minable install --force`
    Then the output from "bundle exec minable install --force" should contain "Minable files installed to minable/"
    And the output should not contain "Minable files already installed, doing nothing."
