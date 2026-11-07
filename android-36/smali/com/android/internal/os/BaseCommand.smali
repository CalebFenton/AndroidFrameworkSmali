.class public abstract Lcom/android/internal/os/BaseCommand;
.super Ljava/lang/Object;
.source "BaseCommand.java"


# static fields
.field public static final blacklist FATAL_ERROR_CODE:Ljava/lang/String; = "Error type 1"

.field public static final blacklist NO_CLASS_ERROR_CODE:Ljava/lang/String; = "Error type 3"

.field public static final blacklist NO_SYSTEM_ERROR_CODE:Ljava/lang/String; = "Error type 2"


# instance fields
.field protected final greylist-max-r mArgs:Lcom/android/modules/utils/BasicShellCommandHandler;

.field private blacklist mRawArgs:[Ljava/lang/String;


# direct methods
.method public constructor greylist-max-r <init>()V
    .registers 2

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Lcom/android/internal/os/BaseCommand$1;

    invoke-direct {v0, p0}, Lcom/android/internal/os/BaseCommand$1;-><init>(Lcom/android/internal/os/BaseCommand;)V

    iput-object v0, p0, Lcom/android/internal/os/BaseCommand;->mArgs:Lcom/android/modules/utils/BasicShellCommandHandler;

    .line 47
    return-void
.end method


# virtual methods
.method public blacklist getRawArgs()[Ljava/lang/String;
    .registers 2

    .line 144
    iget-object v0, p0, Lcom/android/internal/os/BaseCommand;->mRawArgs:[Ljava/lang/String;

    return-object v0
.end method

.method public blacklist nextArg()Ljava/lang/String;
    .registers 2

    .line 121
    iget-object v0, p0, Lcom/android/internal/os/BaseCommand;->mArgs:Lcom/android/modules/utils/BasicShellCommandHandler;

    invoke-virtual {v0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextArg()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist nextArgRequired()Ljava/lang/String;
    .registers 2

    .line 137
    iget-object v0, p0, Lcom/android/internal/os/BaseCommand;->mArgs:Lcom/android/modules/utils/BasicShellCommandHandler;

    invoke-virtual {v0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist nextOption()Ljava/lang/String;
    .registers 2

    .line 113
    iget-object v0, p0, Lcom/android/internal/os/BaseCommand;->mArgs:Lcom/android/modules/utils/BasicShellCommandHandler;

    invoke-virtual {v0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextOption()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract blacklist onRun()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract blacklist onShowUsage(Ljava/io/PrintStream;)V
.end method

.method public blacklist peekNextArg()Ljava/lang/String;
    .registers 2

    .line 129
    iget-object v0, p0, Lcom/android/internal/os/BaseCommand;->mArgs:Lcom/android/modules/utils/BasicShellCommandHandler;

    invoke-virtual {v0}, Lcom/android/modules/utils/BasicShellCommandHandler;->peekNextArg()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist run([Ljava/lang/String;)V
    .registers 10
    .param p1, "args"    # [Ljava/lang/String;

    .line 53
    array-length v0, p1

    const/4 v1, 0x1

    if-ge v0, v1, :cond_a

    .line 54
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p0, v0}, Lcom/android/internal/os/BaseCommand;->onShowUsage(Ljava/io/PrintStream;)V

    .line 55
    return-void

    .line 58
    :cond_a
    iput-object p1, p0, Lcom/android/internal/os/BaseCommand;->mRawArgs:[Ljava/lang/String;

    .line 59
    iget-object v1, p0, Lcom/android/internal/os/BaseCommand;->mArgs:Lcom/android/modules/utils/BasicShellCommandHandler;

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v6, p1

    .end local p1    # "args":[Ljava/lang/String;
    .local v6, "args":[Ljava/lang/String;
    invoke-virtual/range {v1 .. v7}, Lcom/android/modules/utils/BasicShellCommandHandler;->init(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;I)V

    .line 61
    const/4 p1, 0x1

    .line 63
    .local p1, "status":I
    :try_start_18
    invoke-virtual {p0}, Lcom/android/internal/os/BaseCommand;->onRun()V
    :try_end_1b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_18 .. :try_end_1b} :catch_30
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_1b} :catch_29
    .catchall {:try_start_18 .. :try_end_1b} :catchall_27

    .line 64
    const/4 p1, 0x0

    .line 73
    :goto_1c
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->flush()V

    .line 74
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->flush()V

    .line 75
    goto :goto_59

    .line 73
    :catchall_27
    move-exception v0

    goto :goto_5f

    .line 70
    :catch_29
    move-exception v0

    .line 71
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2a
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, v1}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintStream;)V

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_1c

    .line 65
    :catch_30
    move-exception v0

    .line 66
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p0, v1}, Lcom/android/internal/os/BaseCommand;->onShowUsage(Ljava/io/PrintStream;)V

    .line 67
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1}, Ljava/io/PrintStream;->println()V

    .line 68
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_57
    .catchall {:try_start_2a .. :try_end_57} :catchall_27

    .line 69
    const/4 p1, 0x0

    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    goto :goto_1c

    .line 76
    :goto_59
    if-eqz p1, :cond_5e

    .line 77
    invoke-static {p1}, Ljava/lang/System;->exit(I)V

    .line 79
    :cond_5e
    return-void

    .line 73
    :goto_5f
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1}, Ljava/io/PrintStream;->flush()V

    .line 74
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1}, Ljava/io/PrintStream;->flush()V

    .line 75
    throw v0
.end method

.method public blacklist showError(Ljava/lang/String;)V
    .registers 3
    .param p1, "message"    # Ljava/lang/String;

    .line 93
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p0, v0}, Lcom/android/internal/os/BaseCommand;->onShowUsage(Ljava/io/PrintStream;)V

    .line 94
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->println()V

    .line 95
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 96
    return-void
.end method

.method public blacklist showUsage()V
    .registers 2

    .line 85
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p0, v0}, Lcom/android/internal/os/BaseCommand;->onShowUsage(Ljava/io/PrintStream;)V

    .line 86
    return-void
.end method
