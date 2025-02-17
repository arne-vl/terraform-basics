# Terraform Basics Sessie
## Wat is Infrastructure as Code?

## Wat is Terraform?

## Waarom Terraform?

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
