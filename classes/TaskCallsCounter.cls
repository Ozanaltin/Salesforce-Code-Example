public class TaskCallsCounter {
    
    // This method accepts the Task Id and returns the count of related Calls (child records)
    public static Integer countRelatedCalls(Id taskId) {
        // Query to count the related child records (Calls__c) based on the Task Id
        Integer callCount = [SELECT COUNT() FROM Call__c WHERE Task__c = :taskId];
        
        // Return the number of related Calls
        return callCount;
    }

    // Method to update the Task's Calls__c field with the count of related Calls
    public static void updateTaskWithCallCount(Id taskId) {
        Integer callCount = countRelatedCalls(taskId);
        
        Task taskToUpdate = [SELECT Id, Calls__c FROM Task WHERE Id = :taskId];
        taskToUpdate.Calls__c = callCount;
        
        update taskToUpdate;
    }
}
