package org.petrenko.action;

public class CountStudentsInEachGroupAction implements Action{
    @Override
    public void execute() {
        SERVICE.countStudentsInEachGroup();
    }
}
