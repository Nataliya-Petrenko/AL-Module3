package org.petrenko.builder;

import org.petrenko.model.Assessment;
import org.petrenko.model.Group;
import org.petrenko.model.Student;

import java.time.LocalDateTime;
import java.util.List;

public class StudentBuilder {
    private String id;
    private LocalDateTime dateTime;
    private String firstname;
    private String surname;
    private int age;
    private Group group;
    private List<Assessment> assessments;

    public StudentBuilder withId(String id) {
        this.id = id;
        return this;
    }

    public StudentBuilder withDateTime(LocalDateTime dateTime) {
        this.dateTime = dateTime;
        return this;
    }

    public StudentBuilder withFirstname(String firstname) {
        this.firstname = firstname;
        return this;
    }

    public StudentBuilder withSurname(String surname) {
        this.surname = surname;
        return this;
    }

    public StudentBuilder withAge(int age) {
        this.age = age;
        return this;
    }

    public StudentBuilder withGroup(Group group) {
        this.group = group;
        return this;
    }

    public StudentBuilder withAssessments(List<Assessment> assessments) {
        this.assessments = assessments;
        return this;
    }

    public Student build() {
        return new Student(id, firstname, surname, age, dateTime, assessments, group);
    }
}
