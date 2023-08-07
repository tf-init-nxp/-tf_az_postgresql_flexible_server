<!-- BEGIN_TF_DOCS -->
# tf_az_postgresql_flexible_server

## Contributing
If you want to contribute to this repository, feel free to use our [pre-commit](https://pre-commit.com/) git hook configuration
which will help you automatically update and format some files for you by enforcing our Terraform code module best-practices.

## Usage


## Providers

| Name | Version |
|------|---------|
| azurerm | >= 2.59.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_postgresql_flexible_server.postgresql_flexible_server](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/postgresql_flexible_server) | resource |
| [azurerm_postgresql_flexible_server_configuration.postgresql_flexible_config](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/postgresql_flexible_server_configuration) | resource |
| [azurerm_postgresql_flexible_server_database.postgresql_flexible_db](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/postgresql_flexible_server_database) | resource |
| [azurerm_postgresql_flexible_server_firewall_rule.firewall_rules](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/postgresql_flexible_server_firewall_rule) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| administrator\_login | PostgreSQL administrator login. | `string` | `"postgresql"` | no |
| administrator\_password | PostgreSQL administrator password. Strong Password : https://docs.microsoft.com/en-us/sql/relational-databases/security/strong-passwords?view=sql-server-2017. | `string` | n/a | yes |
| allowed\_cidrs | Map of authorized cidrs. | `map(string)` | <pre>{<br>  "DevOps": "94.216.106.0/32"<br>}</pre> | no |
| backup\_retention\_days | Backup retention days for the PostgreSQL Flexible Server (Between 7 and 35 days). | `number` | `7` | no |
| databases | Map of databases configurations with database name as key and following available configuration option:<br>   *  (optional) charset: Valid PostgreSQL charset : https://www.postgresql.org/docs/current/multibyte.html#CHARSET-TABLE<br>   *  (optional) collation: Valid PostgreSQL collation : http://www.postgresql.cn/docs/13/collation.html - be careful about https://docs.microsoft.com/en-us/windows/win32/intl/locale-names?redirectedfrom=MSDN | <pre>map(object({<br>    charset   = optional(string, "UTF8")<br>    collation = optional(string, "en_US.UTF8")<br>  }))</pre> | <pre>{<br>  "database1": {<br>    "charset": "UTF8",<br>    "collation": "en_US.UTF8"<br>  },<br>  "database2": {<br>    "charset": "UTF8",<br>    "collation": "en_US.UTF8"<br>  }<br>}</pre> | no |
| delegated\_subnet\_id | Id of the subnet to create the PostgreSQL Flexible Server. (Should not have any resource deployed in) | `string` | `null` | no |
| environment | Name of application's environnement. | `string` | n/a | yes |
| extra\_tags | Map of custom tags. | `map(string)` | `{}` | no |
| geo\_redundant\_backup\_enabled | Enable Geo Redundant Backup for the PostgreSQL Flexible Server. | `bool` | `false` | no |
| location | Azure location. | `string` | `"westeurope"` | no |
| maintenance\_window | Map of maintenance window configuration. | `map(number)` | `null` | no |
| postgresql\_configurations | PostgreSQL configurations to enable. | `map(string)` | `{}` | no |
| postgresql\_server\_name | The name which should be used for this PostgreSQL Flexible Server. Changing this forces a new PostgreSQL Flexible Server to be created. | `string` | n/a | yes |
| postgresql\_version | Version of PostgreSQL Flexible Server. Possible values are : https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/postgresql_flexible_server#version. | `number` | `14` | no |
| private\_dns\_zone\_id | ID of the private DNS zone to create the PostgreSQL Flexible Server. | `string` | `null` | no |
| project\_name | Project name which this resource belongs. | `string` | n/a | yes |
| resource\_group\_name | Name of the application ressource group, herited from infra module. | `string` | n/a | yes |
| size | Size for PostgreSQL Flexible server sku : https://docs.microsoft.com/en-us/azure/postgresql/flexible-server/concepts-compute-storage. | `string` | `"D2ds_v4"` | no |
| standby\_zone | Specify availability-zone to enable high\_availability and create standby PostgreSQL Flexible Server. (Null to disable high-availability) | `number` | `null` | no |
| storage\_mb | Storage allowed for PostgresSQL Flexible server. Possible values : https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/postgresql_flexible_server#storage_mb. | `number` | `32768` | no |
| tier | Tier for PostgreSQL Flexible server sku : https://docs.microsoft.com/en-us/azure/postgresql/flexible-server/concepts-compute-storage. Possible values are: GeneralPurpose, Burstable, MemoryOptimized. | `string` | `"GeneralPurpose"` | no |
| zone | Specify availability-zone for PostgreSQL Flexible main Server. | `number` | `1` | no |

## Outputs

| Name | Description |
|------|-------------|
| postgresql\_flexible\_administrator\_login | Administrator login for PostgreSQL Flexible server. |
| postgresql\_flexible\_administrator\_password | Administrator password for PostgreSQL Flexible server. |
| postgresql\_flexible\_configurations | The map of all postgresql configurations set. |
| postgresql\_flexible\_database\_ids | The map of all database resource ids. |
| postgresql\_flexible\_databases\_names | Map of databases names. |
| postgresql\_flexible\_firewall\_rules | Map of PostgreSQL created rules. |
| postgresql\_flexible\_fqdn | FQDN of the PostgreSQL server. |
| postgresql\_flexible\_server\_id | PostgreSQL server ID. |
<!-- END_TF_DOCS -->