.class public Lgov/nist/core/InternalErrorHandler;
.super Ljava/lang/Object;
.source "InternalErrorHandler.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static handleException(Ljava/lang/Exception;)V
    .locals 3
    .param p0, "ex"    # Ljava/lang/Exception;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    #@0
    .prologue
    .line 43
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@2
    new-instance v1, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    const-string/jumbo v2, "Unexpected internal error FIXME!! "

    #@a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    move-result-object v1

    #@e
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    #@11
    move-result-object v2

    #@12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@1d
    .line 44
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    #@20
    .line 45
    new-instance v0, Ljava/lang/RuntimeException;

    #@22
    new-instance v1, Ljava/lang/StringBuilder;

    #@24
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@27
    const-string/jumbo v2, "Unexpected internal error FIXME!! "

    #@2a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v1

    #@2e
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    #@31
    move-result-object v2

    #@32
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v1

    #@36
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@39
    move-result-object v1

    #@3a
    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@3d
    throw v0
.end method

.method public static handleException(Ljava/lang/Exception;Lgov/nist/core/StackLogger;)V
    .locals 3
    .param p0, "ex"    # Ljava/lang/Exception;
    .param p1, "stackLogger"    # Lgov/nist/core/StackLogger;

    #@0
    .prologue
    .line 52
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@2
    new-instance v1, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    const-string/jumbo v2, "Unexpected internal error FIXME!! "

    #@a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    move-result-object v1

    #@e
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    #@11
    move-result-object v2

    #@12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@1d
    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    #@1f
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@22
    const-string/jumbo v1, "UNEXPECTED INTERNAL ERROR FIXME "

    #@25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v0

    #@29
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    #@2c
    move-result-object v1

    #@2d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v0

    #@31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@34
    move-result-object v0

    #@35
    invoke-interface {p1, v0}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;)V

    #@38
    .line 54
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    #@3b
    .line 55
    invoke-interface {p1, p0}, Lgov/nist/core/StackLogger;->logException(Ljava/lang/Throwable;)V

    #@3e
    .line 56
    new-instance v0, Ljava/lang/RuntimeException;

    #@40
    new-instance v1, Ljava/lang/StringBuilder;

    #@42
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@45
    const-string/jumbo v2, "Unexpected internal error FIXME!! "

    #@48
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v1

    #@4c
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    #@4f
    move-result-object v2

    #@50
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v1

    #@54
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@57
    move-result-object v1

    #@58
    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@5b
    throw v0
.end method

.method public static handleException(Ljava/lang/String;)V
    .locals 2
    .param p0, "emsg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 64
    new-instance v0, Ljava/lang/Exception;

    #@2
    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    #@5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    #@8
    .line 65
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@a
    const-string/jumbo v1, "Unexepcted INTERNAL ERROR FIXME!!"

    #@d
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@10
    .line 66
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@12
    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@15
    .line 67
    new-instance v0, Ljava/lang/RuntimeException;

    #@17
    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@1a
    throw v0
.end method

.method public static handleException(Ljava/lang/String;Lgov/nist/core/StackLogger;)V
    .locals 1
    .param p0, "emsg"    # Ljava/lang/String;
    .param p1, "stackLogger"    # Lgov/nist/core/StackLogger;

    #@0
    .prologue
    .line 72
    invoke-interface {p1}, Lgov/nist/core/StackLogger;->logStackTrace()V

    #@3
    .line 73
    const-string/jumbo v0, "Unexepcted INTERNAL ERROR FIXME!!"

    #@6
    invoke-interface {p1, v0}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;)V

    #@9
    .line 74
    invoke-interface {p1, p0}, Lgov/nist/core/StackLogger;->logFatalError(Ljava/lang/String;)V

    #@c
    .line 75
    new-instance v0, Ljava/lang/RuntimeException;

    #@e
    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@11
    throw v0
.end method
