package org.petrenko.util;

import lombok.SneakyThrows;
import org.petrenko.action.Actions;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.io.BufferedReader;
import java.io.InputStreamReader;

public class UserInput {
    private static final Logger LOGGER = LoggerFactory.getLogger(UserInput.class);
    private static final BufferedReader READER = new BufferedReader(new InputStreamReader(System.in));

    @SneakyThrows
    public static int getInt(final String question) {
        String line;
        do {
            LOGGER.info(question);
            line = READER.readLine();
        } while (!checkLineIsDigit(line));
        int userInput = Integer.parseInt(line);
        LOGGER.info("User input: {}\n", userInput);
        return userInput;
    }

    @SneakyThrows
    public static Double getDouble(final String question) {
        String line;
        do {
            LOGGER.info(question);
            line = READER.readLine();
        } while (!checkLineIsDigit(line));
        double userInput = Double.parseDouble(line);
        LOGGER.info("User input: {}\n", userInput);
        return userInput;
    }

    @SneakyThrows
    public static String getString(final String question) {
        LOGGER.info(question);
        String userInput = READER.readLine();
        LOGGER.info("User input: {}\n", userInput);
        return userInput;
    }

    public static int menu(final String[] names) {
        final Actions[] values = Actions.values();
        int userChoice;
        do {
            printNames(names);
            userChoice = getInt("Write what you want to do:");
        } while (userChoice < 0 || userChoice >= values.length);
        return userChoice;
    }

    private static void printNames(final String[] names) {
        LOGGER.info("Menu");
        for (int i = 0; i < names.length; i++) {
            LOGGER.info("{} {}", i, names[i]);
        }
    }

    private static boolean checkLineIsDigit(final String line) {
        char[] lineChars = line.toCharArray();
        for (char letter : lineChars) {
            if (!Character.isDigit(letter)) {
                return false;
            }
        }
        return true;
    }

}
