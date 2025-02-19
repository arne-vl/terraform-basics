# Terraform Basics Sessie
## Wat is Infrastructure as Code?
IaC geeft je de mogelijkheid om infrastructuur te beheren met configuratiebestanden, in plaats van een grafische interface.

### Voordelen
#### Consistentie en herhaalbaarheid
IaC zorgt ervoor dat infrastructuurconfiguraties cosisten en herhaalbaar zijn, zo worden fouten door handmatige configuratie vermeden.

#### Versiebeheer
De configuratiebestanden kunnen worden beheerd met versiebeheertools zoals Git, zo kunnen wijzigingen makkelijk worden doorgevoerd / teruggedraaid.

#### Automatisering en efficiëntie
IaC maakt het mogelijk om infrastructuur automatisch te provisioneren en te beheren, dit bespaart tijd en moeite.

## Wat is Terraform?
Terraform is een IaC tool die je helpt om je infrastructuur te beheren door middel van code. Je schrijft configuratiebestanden om servers, databases en andere resources te maken en te beheren, ongeacht de cloudprovider.

## Waarom Terraform?
### Multi-cloud
Sommige IaC tools zijn specifiek voor 1 cloud omgeving, kijk bijvoorbeeld naar Bicep. Terraform heeft deze beperking niet, aangezien Terraform met API’s communiceert kan letterlijk alles wat een API heeft geconfigureerd worden met Terraform.

### Declaratief
Terraform's configuratietaal is declaratief, wat betekent dat het de gewenste eindtoestand van je infrastructuur beschrijft. In tegenstelling tot procedurele programmeertalen, die stapsgewijze instructies vereisen, berekenen Terraform-providers automatisch de afhankelijkheden tussen resources om ze in de juiste volgorde te creëren of te vernietigen.

### Sterke Community
Terraform is open-source en heeft een grote community. Als je een platform hebt dat nog niet ondersteund wordt, kan je hier zelf een provider voor maken en delen met de wereld. Terraform maakt ook gebruik van modules, deelbare stukken code die je rechtstreeks van GitHub of de Terraform Registry kan gebruiken. Dit kan er dus voor zorgen dat je voor de oplossing die jij wil maken, je misschien het zware werk zelfs niet meer moet doen!

## Hoe werkt Terraform?
### Providers
Plugins die Terraform in staat stellen om te communiceren met AWS, Azure, Google Cloud en meer dan 3000 andere platformen. Ze vertalen Terraform-configuraties naar API calls om resources aan te maken en te beheren.

### State file
Essentieel onderdeel van Terraform, het is een JSON-bestand dat de huidige staat van je infrastructuur bijhoudt. Dit bestand helpt Terraform om te bepalen welke wijzigingen nodig zijn om de gewenste configuratie te bereiken. Het state-bestand wordt standaard lokaal opgeslagen, maar kan ook op een externe locatie worden bewaard voor betere samenwerking en beveiliging.

### Resources, variabelen, outputs
#### Resources
De fundamentele bouwstenen van je infrastructuur, zoals virtuele machines, databases en netwerken.

#### Variabelen
Variabelen zorgen ervoor dat je je code can parametriseren, zo kan je dezelfde configuratie makkelijk hergebruiken zonder de broncode te wijzigen.

#### Outputs
Worden gebruikt om waarden door te geven aan andere configuraties of om belangrijke informatie te printen na terraform apply.

### Modules
Modules zijn groepering en van meerdere resources die samen gebruikt kunnen worden (bv. Een storage account met “bronze”, “silver” en “gold” blob containers). Ze helpen je om je configuraties te organiseren, herbruikbare componenten te maken en best practices te implementeren. Een module bestaat uit een verzameling .tf-bestanden in een directory. Je kunt modules lokaal maken of modules gebruiken die zijn gepubliceerd in de Terraform Registry / GitHub.

## Hands-on: Terraform & Azure
De code in deze repository maakt een Azure resource group, een storage account met LRS-replicatie, en een privé blobcontainer aan, waarbij de namen dynamisch worden gegenereerd met de variabele {var.naam}.

1. `terraform init`
   - Initialiseer de werkmap en download de benodigde providers en modules.

2. `terraform validate`
   - Controleer of je configuratiebestanden geldig zijn en geen syntaxfouten bevatten.
   - Niet verplicht, maar kan helpen om fouten op te sporen.

3. `terraform fmt`
   - Formatteer de configuratiebestanden volgens de aanbevolen stijl (dit kan zowel voor als na `validate`).
   - Niet verplicht, maar verbetert de leesbaarheid enorm.

4. `terraform plan`
   - Genereer een uitvoeringsplan om te zien welke wijzigingen er aan de infrastructuur worden aangebracht.
   - Niet verplicht. Bij `apply` wordt je altijd om goedkeuring gevraagd voordat de wijzigingen worden doorgevoerd.

5. `terraform apply`
   - Pas de gegenereerde wijzigingen toe op de infrastructuur.
