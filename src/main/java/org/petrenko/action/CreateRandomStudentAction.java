package org.petrenko.action;

public class CreateRandomStudentAction implements Action{
    @Override
    public void execute() {
        SERVICE.createAndSaveRandomStudent();
    }
}
