package org.petrenko.action;

import org.petrenko.util.UserInput;

public class StudentWithAverageAssessmentMoreAction implements Action{
    @Override
    public void execute() {
        Double assessment = UserInput.getDouble("Write average assessment");
        SERVICE.studentWithAverageAssessmentMore(assessment);
    }
}
