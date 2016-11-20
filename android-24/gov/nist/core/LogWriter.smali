.class public Lgov/nist/core/LogWriter;
.super Ljava/lang/Object;
.source "LogWriter.java"

# interfaces
.implements Lgov/nist/core/StackLogger;


# static fields
.field private static final TAG:Ljava/lang/String; = "SIP_STACK"


# instance fields
.field private mEnabled:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 37
    const/4 v0, 0x1

    #@4
    iput-boolean v0, p0, Lgov/nist/core/LogWriter;->mEnabled:Z

    #@6
    .line 34
    return-void
.end method


# virtual methods
.method public disableLogging()V
    .locals 1

    #@0
    .prologue
    .line 84
    const/4 v0, 0x0

    #@1
    iput-boolean v0, p0, Lgov/nist/core/LogWriter;->mEnabled:Z

    #@3
    .line 83
    return-void
.end method

.method public enableLogging()V
    .locals 1

    #@0
    .prologue
    .line 88
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Lgov/nist/core/LogWriter;->mEnabled:Z

    #@3
    .line 87
    return-void
.end method

.method public getLineCount()I
    .locals 1

    #@0
    .prologue
    .line 48
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getLoggerName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 98
    const-string/jumbo v0, "Android SIP Logger"

    #@3
    return-object v0
.end method

.method public isLoggingEnabled()Z
    .locals 1

    #@0
    .prologue
    .line 67
    iget-boolean v0, p0, Lgov/nist/core/LogWriter;->mEnabled:Z

    #@2
    return v0
.end method

.method public isLoggingEnabled(I)Z
    .locals 1
    .param p1, "logLevel"    # I

    #@0
    .prologue
    .line 71
    iget-boolean v0, p0, Lgov/nist/core/LogWriter;->mEnabled:Z

    #@2
    return v0
.end method

.method public logDebug(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    #@0
    .prologue
    .line 54
    return-void
.end method

.method public logError(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    #@0
    .prologue
    .line 63
    return-void
.end method

.method public logError(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "ex"    # Ljava/lang/Exception;

    #@0
    .prologue
    .line 73
    return-void
.end method

.method public logException(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "ex"    # Ljava/lang/Throwable;

    #@0
    .prologue
    .line 51
    return-void
.end method

.method public logFatalError(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    #@0
    .prologue
    .line 60
    return-void
.end method

.method public logInfo(Ljava/lang/String;)V
    .locals 0
    .param p1, "string"    # Ljava/lang/String;

    #@0
    .prologue
    .line 79
    return-void
.end method

.method public logStackTrace()V
    .locals 0

    #@0
    .prologue
    .line 39
    return-void
.end method

.method public logStackTrace(I)V
    .locals 0
    .param p1, "traceLevel"    # I

    #@0
    .prologue
    .line 43
    return-void
.end method

.method public logTrace(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    #@0
    .prologue
    .line 57
    return-void
.end method

.method public logWarning(Ljava/lang/String;)V
    .locals 0
    .param p1, "string"    # Ljava/lang/String;

    #@0
    .prologue
    .line 76
    return-void
.end method

.method public setBuildTimeStamp(Ljava/lang/String;)V
    .locals 0
    .param p1, "buildTimeStamp"    # Ljava/lang/String;

    #@0
    .prologue
    .line 91
    return-void
.end method

.method public setStackProperties(Ljava/util/Properties;)V
    .locals 0
    .param p1, "stackProperties"    # Ljava/util/Properties;

    #@0
    .prologue
    .line 94
    return-void
.end method
