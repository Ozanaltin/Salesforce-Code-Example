@isTest
public class TaskCallsCounterTest {
    
    @isTest
    static void testCountRelatedCalls() {
        // Creating a Task record
        Task task = new Task(Name = 'Test Task');
        insert task;

        // Creating child Call records related to the Task
        Call__c call1 = new Call__c(Name = 'Call 1', Task__c = task.Id);
        Call__c call2 = new Call__c(Name = 'Call 2', Task__c = task.Id);
        insert new List<Call__c>{call1, call2};

        // Call the method and check if the count is correct
        Integer count = TaskCallsCounter.countRelatedCalls(task.Id);
        System.assertEquals(2, count);

        // Check that the updateTaskWithCallCount method properly updates the Task's Calls__c field
        TaskCallsCounter.updateTaskWithCallCount(task.Id);
        Task updatedTask = [SELECT Calls__c FROM Task WHERE Id = :task.Id];
        System.assertEquals(2, updatedTask.Calls__c);
    }
}
