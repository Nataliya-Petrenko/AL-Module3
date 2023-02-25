package org.petrenko.action;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class ExitAction implements Action{
    private static final Logger LOGGER = LoggerFactory.getLogger(ExitAction.class);

    @Override
    public void execute() {
        LOGGER.info("The program has finished working");
        System.exit(0);
    }
}
