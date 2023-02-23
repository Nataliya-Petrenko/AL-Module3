package org.petrenko.model;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;
import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;
import java.util.LinkedHashSet;
import java.util.Set;

@ToString
@Getter
@Setter
@Entity
@Table (name = "name_group")
public class Group {
    @Id
    @GeneratedValue(strategy = javax.persistence.GenerationType.AUTO, generator = "UUID")
    @GenericGenerator(name = "UUID", strategy = "org.hibernate.id.UUIDGenerator")
    private String id;
    private String name;
    @OneToMany(mappedBy = "group", cascade = CascadeType.PERSIST)
    @ToString.Exclude
    private Set<Student> students = new LinkedHashSet<>();
}
