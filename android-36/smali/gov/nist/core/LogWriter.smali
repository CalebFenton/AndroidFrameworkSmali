.class public Lgov/nist/core/LogWriter;
.super Ljava/lang/Object;
.source "LogWriter.java"

# interfaces
.implements Lgov/nist/core/StackLogger;


# static fields
.field private static final greylist TAG:Ljava/lang/String; = "SIP_STACK"


# instance fields
.field private greylist mEnabled:Z


# direct methods
.method public constructor greylist <init>()V
    .registers 2

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x1

    iput-boolean v0, p0, Lgov/nist/core/LogWriter;->mEnabled:Z

    return-void
.end method


# virtual methods
.method public greylist disableLogging()V
    .registers 2

    .line 84
    const/4 v0, 0x0

    iput-boolean v0, p0, Lgov/nist/core/LogWriter;->mEnabled:Z

    .line 85
    return-void
.end method

.method public greylist enableLogging()V
    .registers 2

    .line 88
    const/4 v0, 0x1

    iput-boolean v0, p0, Lgov/nist/core/LogWriter;->mEnabled:Z

    .line 89
    return-void
.end method

.method public greylist getLineCount()I
    .registers 2

    .line 48
    const/4 v0, 0x0

    return v0
.end method

.method public greylist getLoggerName()Ljava/lang/String;
    .registers 2

    .line 98
    const-string v0, "Android SIP Logger"

    return-object v0
.end method

.method public greylist isLoggingEnabled()Z
    .registers 2

    .line 67
    iget-boolean v0, p0, Lgov/nist/core/LogWriter;->mEnabled:Z

    return v0
.end method

.method public greylist isLoggingEnabled(I)Z
    .registers 3
    .param p1, "logLevel"    # I

    .line 71
    iget-boolean v0, p0, Lgov/nist/core/LogWriter;->mEnabled:Z

    return v0
.end method

.method public greylist logDebug(Ljava/lang/String;)V
    .registers 2
    .param p1, "message"    # Ljava/lang/String;

    .line 56
    return-void
.end method

.method public greylist logError(Ljava/lang/String;)V
    .registers 2
    .param p1, "message"    # Ljava/lang/String;

    .line 65
    return-void
.end method

.method public greylist logError(Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 3
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "ex"    # Ljava/lang/Exception;

    .line 75
    return-void
.end method

.method public greylist logException(Ljava/lang/Throwable;)V
    .registers 2
    .param p1, "ex"    # Ljava/lang/Throwable;

    .line 53
    return-void
.end method

.method public greylist logFatalError(Ljava/lang/String;)V
    .registers 2
    .param p1, "message"    # Ljava/lang/String;

    .line 62
    return-void
.end method

.method public greylist logInfo(Ljava/lang/String;)V
    .registers 2
    .param p1, "string"    # Ljava/lang/String;

    .line 81
    return-void
.end method

.method public greylist logStackTrace()V
    .registers 1

    .line 41
    return-void
.end method

.method public greylist logStackTrace(I)V
    .registers 2
    .param p1, "traceLevel"    # I

    .line 45
    return-void
.end method

.method public greylist logTrace(Ljava/lang/String;)V
    .registers 2
    .param p1, "message"    # Ljava/lang/String;

    .line 59
    return-void
.end method

.method public greylist logWarning(Ljava/lang/String;)V
    .registers 2
    .param p1, "string"    # Ljava/lang/String;

    .line 78
    return-void
.end method

.method public greylist setBuildTimeStamp(Ljava/lang/String;)V
    .registers 2
    .param p1, "buildTimeStamp"    # Ljava/lang/String;

    .line 92
    return-void
.end method

.method public greylist setStackProperties(Ljava/util/Properties;)V
    .registers 2
    .param p1, "stackProperties"    # Ljava/util/Properties;

    .line 95
    return-void
.end method
