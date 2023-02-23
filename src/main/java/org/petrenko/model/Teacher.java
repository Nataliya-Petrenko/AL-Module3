package org.petrenko.model;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;

@Getter
@Setter
@Entity
public class Teacher extends People {

    @OneToOne(cascade = CascadeType.PERSIST)
    @JoinColumn(name = "subject_id")
    private Subject subject;

    @Override
    public String toString() {
        return "Teacher{" +
                "firstname: " + super.getFirstname() +
                ", surname: " + super.getSurname() +
                ", age: " + super.getAge() +
                ", subject=" + subject +
                '}';
    }
}
