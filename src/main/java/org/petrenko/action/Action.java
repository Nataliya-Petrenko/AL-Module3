package org.petrenko.action;

import org.petrenko.service.Service;

public interface Action {
    Service SERVICE = Service.getInstance();

    void execute();
}
