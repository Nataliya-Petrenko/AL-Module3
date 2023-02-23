package org.petrenko.action;

import org.petrenko.util.UserInput;

public class FindTeacherByNameOrSurnameAction implements Action{
    @Override
    public void execute() {
        String string = UserInput.getString("Write the name or the surname of the teacher (in full or in part)");
        SERVICE.findTeacherByNameOrSurname(string);
    }
}