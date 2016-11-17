.class public Lgov/nist/core/Debug;
.super Ljava/lang/Object;
.source "Debug.java"


# static fields
.field public static debug:Z

.field public static parserDebug:Z

.field static stackLogger:Lgov/nist/core/StackLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 37
    sput-boolean v0, Lgov/nist/core/Debug;->debug:Z

    #@3
    .line 38
    sput-boolean v0, Lgov/nist/core/Debug;->parserDebug:Z

    #@5
    .line 35
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static logError(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "ex"    # Ljava/lang/Exception;

    #@0
    .prologue
    .line 57
    sget-boolean v0, Lgov/nist/core/Debug;->parserDebug:Z

    #@2
    if-nez v0, :cond_0

    #@4
    sget-boolean v0, Lgov/nist/core/Debug;->debug:Z

    #@6
    if-eqz v0, :cond_1

    #@8
    :cond_0
    sget-object v0, Lgov/nist/core/Debug;->stackLogger:Lgov/nist/core/StackLogger;

    #@a
    if-eqz v0, :cond_1

    #@c
    .line 58
    sget-object v0, Lgov/nist/core/Debug;->stackLogger:Lgov/nist/core/StackLogger;

    #@e
    invoke-interface {v0, p0, p1}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;Ljava/lang/Exception;)V

    #@11
    .line 56
    :cond_1
    return-void
.end method

.method public static printStackTrace(Ljava/lang/Exception;)V
    .locals 2
    .param p0, "ex"    # Ljava/lang/Exception;

    #@0
    .prologue
    .line 51
    sget-boolean v0, Lgov/nist/core/Debug;->parserDebug:Z

    #@2
    if-nez v0, :cond_0

    #@4
    sget-boolean v0, Lgov/nist/core/Debug;->debug:Z

    #@6
    if-eqz v0, :cond_1

    #@8
    :cond_0
    sget-object v0, Lgov/nist/core/Debug;->stackLogger:Lgov/nist/core/StackLogger;

    #@a
    if-eqz v0, :cond_1

    #@c
    .line 52
    sget-object v0, Lgov/nist/core/Debug;->stackLogger:Lgov/nist/core/StackLogger;

    #@e
    const-string/jumbo v1, "Stack Trace"

    #@11
    invoke-interface {v0, v1, p0}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;Ljava/lang/Exception;)V

    #@14
    .line 50
    :cond_1
    return-void
.end method

.method public static println(Ljava/lang/String;)V
    .locals 3
    .param p0, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 47
    sget-boolean v0, Lgov/nist/core/Debug;->parserDebug:Z

    #@2
    if-nez v0, :cond_0

    #@4
    sget-boolean v0, Lgov/nist/core/Debug;->debug:Z

    #@6
    if-eqz v0, :cond_1

    #@8
    :cond_0
    sget-object v0, Lgov/nist/core/Debug;->stackLogger:Lgov/nist/core/StackLogger;

    #@a
    if-eqz v0, :cond_1

    #@c
    .line 48
    sget-object v0, Lgov/nist/core/Debug;->stackLogger:Lgov/nist/core/StackLogger;

    #@e
    new-instance v1, Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    const-string/jumbo v2, "\n"

    #@1a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v1

    #@1e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v1

    #@22
    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@25
    .line 46
    :cond_1
    return-void
.end method

.method public static setStackLogger(Lgov/nist/core/StackLogger;)V
    .locals 0
    .param p0, "stackLogger"    # Lgov/nist/core/StackLogger;

    #@0
    .prologue
    .line 43
    sput-object p0, Lgov/nist/core/Debug;->stackLogger:Lgov/nist/core/StackLogger;

    #@2
    .line 42
    return-void
.end method
