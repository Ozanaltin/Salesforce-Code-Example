# Task to Calls Relationship Counter

This repository contains an Apex class that counts how many child custom objects named `Calls__c` are related to a parent `Task` object in Salesforce. The custom field `Calls__c` on the `Task` object is updated with the count of related child records.

## Structure
- `TaskCallsCounter.cls` - The main class with the logic for counting related `Calls` and updating the `Task` object.
- `TaskCallsCounterTest.cls` - The test class to validate the functionality.
- `Call__c.object` - Placeholder for the Call custom object metadata (to be replaced with your actual object metadata).
- `Task.object` - Placeholder for the Task object metadata (to be replaced with your actual object metadata).

## Usage
- Use `countRelatedCalls` to retrieve the number of Calls associated with a specific Task.
- Use `updateTaskWithCallCount` to update the custom field `Calls__c` on the Task object with the count.
