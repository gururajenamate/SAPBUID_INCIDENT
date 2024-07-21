using { sap.custom.incidents as my } from '../db/schema';
service ProcessorService { 
    entity Incidents as projection on my.Incidents;
    @readonly
    entity Customers as projection on my.Customers;
}
extend projection ProcessorService.Customers with {
  firstName || ' ' || lastName as name: String //add new property with name and combine both the values and it will display
}

// annotate ProcessorService.Incidents with @odata.draft.enabled; 
// annotate ProcessorService with @(requires: 'support');