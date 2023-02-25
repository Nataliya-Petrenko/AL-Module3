package org.petrenko.model;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.List;

@Getter
@Setter
@Entity
public class Student extends People{

    private LocalDateTime dateTime;

    @OneToMany(mappedBy = "student", cascade = CascadeType.PERSIST)
    private List<Assessment> assessments;

    @ManyToOne
    @JoinColumn(name = "group_id")
    private Group group;

    public Student() {
    }
    public Student(String id, String firstname, String surname, int age, LocalDateTime dateTime,
                   List<Assessment> assessments, Group group) {
        super(id, firstname, surname, age);
        this.dateTime = dateTime;
        this.assessments = assessments;
        this.group = group;
    }

    @Override
    public String toString() {
        DateTimeFormatter timeFormatter = DateTimeFormatter.ofPattern("yyyy.MM.dd HH:mm");
        return "Student{" +
                "date and time of entering = " + timeFormatter.format(dateTime) +
                ", group = " + group +
                '}';
    }
}
