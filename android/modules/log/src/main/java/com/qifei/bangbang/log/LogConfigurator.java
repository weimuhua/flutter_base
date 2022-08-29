package com.qifei.bangbang.log;

import ch.qos.logback.classic.Level;
import ch.qos.logback.classic.LoggerContext;
import ch.qos.logback.classic.android.LogcatAppender;
import ch.qos.logback.classic.encoder.PatternLayoutEncoder;
import ch.qos.logback.classic.spi.ILoggingEvent;
import ch.qos.logback.core.Appender;
import ch.qos.logback.core.Context;
import ch.qos.logback.core.rolling.RollingFileAppender;
import ch.qos.logback.core.rolling.SizeAndTimeBasedRollingPolicy;
import ch.qos.logback.core.util.FileSize;
import ch.qos.logback.core.util.StatusPrinter;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class LogConfigurator {
    private static final long DEFAULT_MAX_FILE_SIZE = 1024 * 1024; // 1 MB

    public static void configureLogback(String logDir, boolean finalRelease) {
        if (finalRelease) {
            configureFinalRelease(logDir);
        } else {
            configureNormal(logDir);
        }
    }

    private static void configureNormal(String logDir) {
        LoggerContext lc = (LoggerContext) LoggerFactory.getILoggerFactory();
        lc.stop();

        ch.qos.logback.classic.Logger root = (ch.qos.logback.classic.Logger) LoggerFactory
                .getLogger(Logger.ROOT_LOGGER_NAME);
        root.setLevel(Level.DEBUG);
        root.addAppender(configLogcatAppender(lc));
        root.addAppender(configBuglyAppender(lc));
        root.addAppender(configFileAppender(lc, logDir));
        StatusPrinter.print(lc);
    }

    public static void configureFinalRelease(String logDir) {
        LoggerContext lc = (LoggerContext) LoggerFactory.getILoggerFactory();
        lc.stop();

        ch.qos.logback.classic.Logger root = (ch.qos.logback.classic.Logger) LoggerFactory
                .getLogger(Logger.ROOT_LOGGER_NAME);
        root.setLevel(Level.INFO);
        root.addAppender(configBuglyAppender(lc));
        root.addAppender(configFileAppender(lc, logDir));
        StatusPrinter.print(lc);
    }

    private static Appender<ILoggingEvent> configFileAppender(Context lc, String logDir) {
        RollingFileAppender<ILoggingEvent> rollingFileAppender = new RollingFileAppender<>();
        rollingFileAppender.setAppend(true);
        rollingFileAppender.setContext(lc);
        rollingFileAppender.setFile(logDir + "/log.txt");

        SizeAndTimeBasedRollingPolicy<ILoggingEvent> rollingPolicy =
                new SizeAndTimeBasedRollingPolicy<>();
        rollingPolicy.setFileNamePattern(logDir + "/" + "log_%d{yyyyMMdd}.%i.txt");
        rollingPolicy.setMaxHistory(30);
        rollingPolicy.setTotalSizeCap(new FileSize(10 * DEFAULT_MAX_FILE_SIZE));
        rollingPolicy.setParent(rollingFileAppender);
        rollingPolicy.setContext(lc);
        rollingPolicy.setMaxFileSize(new FileSize(DEFAULT_MAX_FILE_SIZE));
        rollingPolicy.start();

        // setup FileAppender
        PatternLayoutEncoder encoder = new PatternLayoutEncoder();
        encoder.setContext(lc);
        encoder.setPattern("%d{yyyyMMdd-}%d{HH:mm:ss.SSS} [%thread] %-5level %logger{36} - %msg%n");
        encoder.start();

        rollingFileAppender.setRollingPolicy(rollingPolicy);
        rollingFileAppender.setEncoder(encoder);
        rollingFileAppender.start();
        return rollingFileAppender;
    }

    private static Appender<ILoggingEvent> configLogcatAppender(Context lc) {
        // setup LogcatAppender
        PatternLayoutEncoder encoder2 = new PatternLayoutEncoder();
        encoder2.setContext(lc);
        encoder2.setPattern("[%thread] %msg%n");
        encoder2.start();

        LogcatAppender logcatAppender = new LogcatAppender();
        logcatAppender.setContext(lc);
        logcatAppender.setEncoder(encoder2);
        logcatAppender.start();
        return logcatAppender;
    }

    private static Appender<ILoggingEvent> configBuglyAppender(Context lc) {
        // setup BuglyAppender
        PatternLayoutEncoder encoder2 = new PatternLayoutEncoder();
        encoder2.setContext(lc);
        encoder2.setPattern("[%thread] %msg%n");
        encoder2.start();

        BuglyAppender logcatAppender = new BuglyAppender();
        logcatAppender.setContext(lc);
        logcatAppender.setEncoder(encoder2);
        logcatAppender.start();
        return logcatAppender;
    }
}
