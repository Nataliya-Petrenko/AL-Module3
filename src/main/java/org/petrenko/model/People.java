package org.petrenko.model;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;
import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;

@ToString
@Getter
@Setter
@Entity
@Inheritance(strategy = InheritanceType.JOINED)
public abstract class People {
    @Id
    @GeneratedValue(strategy = javax.persistence.GenerationType.AUTO, generator = "UUID")
    @GenericGenerator(name = "UUID", strategy = "org.hibernate.id.UUIDGenerator")
    private String id;

    private String firstname;

    private String surname;

    private int age;

    public People() {
    }

    public People(String id, String firstname, String surname, int age) {
        this.id = id;
        this.firstname = firstname;
        this.surname = surname;
        this.age = age;
    }
}
