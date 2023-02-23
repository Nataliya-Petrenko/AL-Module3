package org.petrenko.service;

import org.petrenko.builder.StudentBuilder;
import org.petrenko.model.Group;
import org.petrenko.model.Student;
import org.petrenko.model.Teacher;
import org.petrenko.repository.*;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.time.LocalDateTime;
import java.util.*;

public class Service {
    private static Service instance;
    private final GroupRepository groupRepository;
    private final StudentRepository studentRepository;
    private final TeacherRepository teacherRepository;
    private final SubjectRepository subjectRepository;

    private final Random random = new Random();

    private static final Logger LOGGER = LoggerFactory.getLogger(Service.class);

    public Service(final GroupRepository groupRepository,
                   final StudentRepository studentRepository,
                   final TeacherRepository teacherRepository,
                   final SubjectRepository subjectRepository) {
        this.groupRepository = groupRepository;
        this.studentRepository = studentRepository;
        this.teacherRepository = teacherRepository;
        this.subjectRepository = subjectRepository;
    }

    public static Service getInstance() {
        if (instance == null) {
            instance = new Service(GroupRepository.getInstance(),
                    StudentRepository.getInstance(),
                    TeacherRepository.getInstance(),
                    SubjectRepository.getInstance());
            LOGGER.info("Service and repositories were created\n");
        }
        return instance;
    }

    public Student createAndSaveRandomStudent() {
        Student student = createRandomStudent();
        studentRepository.save(student);
        LOGGER.info("Create and save to BD random student: {}\n", student);
        return student;
    }

    public Student createRandomStudent() {
        StudentBuilder builder = new StudentBuilder();
        return builder
                .withDateTime(LocalDateTime.now())
                .withFirstname("Name" + randomNumber())
                .withSurname("Surname" + randomNumber())
                .withAge(randomNumber())
                .withGroup(randomGroup())
                .build();
    }

    private Group randomGroup() {
        return groupRepository.getAll().stream().findAny().get();
    }

    private int randomNumber() {
        return random.nextInt(16, 99);
    }

    public void findGroupByName(String group) {
        if (group == null) {
            return;
        }
        List<Group> groupByName = groupRepository.findGroupByName(group);
        groupByName.forEach(g -> LOGGER.info("Groups which name include: {} - {}", group, g));
        System.out.println();
    }

    public void countStudentsInEachGroup() {
        Map<String, Long> map = groupRepository.countStudentsInEachGroup();
        map.keySet()
                .forEach(k ->
                        LOGGER.info("Group: {}, count students: {}", k, map.get(k)));
        System.out.println();
    }

    public void averageAssEachGroup() {
        Map<String, Double> map = groupRepository.averageAssEachGroup();
        map.keySet()
                .forEach(k ->
                        LOGGER.info("Group: {}, average assessment: {}", k, map.get(k)));
        System.out.println();
    }

    public void studentWithAverageAssessmentMore(double assessment) {
        if (assessment < 0) {
            return;
        }
        Map<Student, Double> map = studentRepository.studentWithAverageAssessmentMore(assessment);
        map.keySet()
                .forEach(k ->
                        LOGGER.info("Student: {}, average assessment: {}", k, map.get(k)));
        System.out.println();
    }

    public void findTeacherByNameOrSurname(String name) {
        if (name == null) {
            return;
        }
        List<Teacher> teachers = teacherRepository.findTeacherByNameOrSurname(name);
        teachers.forEach(g -> LOGGER.info("Teachers which firstname or surname include: {} - {}", name, g));
        System.out.println();
    }

    public void subjectWithWorseAndBestAss() {
        Map<String, Double> map = subjectRepository.subjectWithWorseAndBestAss();
        map.keySet()
                .forEach(k ->
                        LOGGER.info("Subject: {}, average assessment: {}", k, map.get(k)));
        System.out.println();
    }

}
