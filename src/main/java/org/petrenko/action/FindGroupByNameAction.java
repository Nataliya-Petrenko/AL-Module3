package org.petrenko.action;

import org.petrenko.util.UserInput;

public class FindGroupByNameAction implements Action{
    @Override
    public void execute() {
        String string = UserInput.getString("Write the name of the group (in full or in part)");
        SERVICE.findGroupByName(string);
    }
}
