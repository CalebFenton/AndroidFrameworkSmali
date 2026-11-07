.class public interface abstract Lgov/nist/core/StackLogger;
.super Ljava/lang/Object;
.source "StackLogger.java"

# interfaces
.implements Lgov/nist/core/LogLevels;


# virtual methods
.method public abstract greylist disableLogging()V
.end method

.method public abstract greylist enableLogging()V
.end method

.method public abstract greylist getLineCount()I
.end method

.method public abstract greylist getLoggerName()Ljava/lang/String;
.end method

.method public abstract greylist isLoggingEnabled()Z
.end method

.method public abstract greylist isLoggingEnabled(I)Z
.end method

.method public abstract greylist logDebug(Ljava/lang/String;)V
.end method

.method public abstract greylist logError(Ljava/lang/String;)V
.end method

.method public abstract greylist logError(Ljava/lang/String;Ljava/lang/Exception;)V
.end method

.method public abstract greylist logException(Ljava/lang/Throwable;)V
.end method

.method public abstract greylist logFatalError(Ljava/lang/String;)V
.end method

.method public abstract greylist logInfo(Ljava/lang/String;)V
.end method

.method public abstract greylist logStackTrace()V
.end method

.method public abstract greylist logStackTrace(I)V
.end method

.method public abstract greylist logTrace(Ljava/lang/String;)V
.end method

.method public abstract greylist logWarning(Ljava/lang/String;)V
.end method

.method public abstract greylist setBuildTimeStamp(Ljava/lang/String;)V
.end method

.method public abstract greylist setStackProperties(Ljava/util/Properties;)V
.end method
