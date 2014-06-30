!SLIDE left

# Usage

Mixcoatl ships with 53 utilities, grouped roughly into categories:

1. List (general form: `dcm-list-<something>`)
   * Example `dcm-list-accounts`
2. Create (general form: `dcm-create-<something>`)
   * Example `dcm-create-billing-code`
3. Describe (general form: `dcm-describe-<something> <ID>`)
   * Example `dcm-describe-server 4099`
4. Delete (general form: `dcm-delete-<something> <ID>`)
   * Example `dcm-delete-server 4099`

Other forms include `attach`, `update`, `start`, `stop`, depending on the resource type.
