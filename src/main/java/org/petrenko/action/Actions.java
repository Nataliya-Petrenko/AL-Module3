package org.petrenko.action;

import lombok.Getter;

@Getter
public enum Actions {
    CREATE_RANDOM_STUDENT(" Create random student", new CreateRandomStudentAction()),
    FIND_GROUP_BY_NAME(" Find group by name", new FindGroupByNameAction()),
    COUNT_STUDENTS_IN_EACH_GROUP(" Count students in each group", new CountStudentsInEachGroupAction()),
    AVERAGE_ASS_EACH_GROUP(" Average assessment each group", new AverageAssEachGroupAction()),
    STUDENT_WITH_AVERAGE_ASSESSMENT_MORE(" Student with average assessment more than the given",
            new StudentWithAverageAssessmentMoreAction()),
    FIND_TEACHER_BY_NAME_OR_SURNAME(" Find teacher by name or surname", new FindTeacherByNameOrSurnameAction()),
    SUBJECT_WITH_WORSE_AND_BEST_ASS(" Subject with the worse and the best average assessment",
            new SubjectWithWorseAndBestAssAction()),
    EXIT(" Exit", new ExitAction());

    private final String name;
    private final Action action;

    Actions(final String name, final Action action) {
        this.name = name;
        this.action = action;
    }

    public void execute() {
        action.execute();
    }

}
