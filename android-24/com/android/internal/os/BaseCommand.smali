.class public abstract Lcom/android/internal/os/BaseCommand;
.super Ljava/lang/Object;
.source "BaseCommand.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/BaseCommand$1;
    }
.end annotation


# static fields
.field public static final FATAL_ERROR_CODE:Ljava/lang/String; = "Error type 1"

.field public static final NO_CLASS_ERROR_CODE:Ljava/lang/String; = "Error type 3"

.field public static final NO_SYSTEM_ERROR_CODE:Ljava/lang/String; = "Error type 2"


# instance fields
.field protected final mArgs:Landroid/os/ShellCommand;


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 26
    new-instance v0, Lcom/android/internal/os/BaseCommand$1;

    #@5
    invoke-direct {v0, p0}, Lcom/android/internal/os/BaseCommand$1;-><init>(Lcom/android/internal/os/BaseCommand;)V

    #@8
    iput-object v0, p0, Lcom/android/internal/os/BaseCommand;->mArgs:Landroid/os/ShellCommand;

    #@a
    .line 24
    return-void
.end method


# virtual methods
.method public nextArg()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/internal/os/BaseCommand;->mArgs:Landroid/os/ShellCommand;

    #@2
    invoke-virtual {v0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public nextArgRequired()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/internal/os/BaseCommand;->mArgs:Landroid/os/ShellCommand;

    #@2
    invoke-virtual {v0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public nextOption()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/internal/os/BaseCommand;->mArgs:Landroid/os/ShellCommand;

    #@2
    invoke-virtual {v0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public abstract onRun()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract onShowUsage(Ljava/io/PrintStream;)V
.end method

.method public run([Ljava/lang/String;)V
    .locals 10
    .param p1, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    const/4 v9, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 43
    array-length v0, p1

    #@3
    if-ge v0, v9, :cond_0

    #@5
    .line 44
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@7
    invoke-virtual {p0, v0}, Lcom/android/internal/os/BaseCommand;->onShowUsage(Ljava/io/PrintStream;)V

    #@a
    .line 45
    return-void

    #@b
    .line 48
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BaseCommand;->mArgs:Landroid/os/ShellCommand;

    #@d
    const/4 v6, 0x0

    #@e
    move-object v2, v1

    #@f
    move-object v3, v1

    #@10
    move-object v4, v1

    #@11
    move-object v5, p1

    #@12
    invoke-virtual/range {v0 .. v6}, Landroid/os/ShellCommand;->init(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;I)V

    #@15
    .line 51
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/os/BaseCommand;->onRun()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@18
    .line 42
    :goto_0
    return-void

    #@19
    .line 56
    :catch_0
    move-exception v7

    #@1a
    .line 57
    .local v7, "e":Ljava/lang/Exception;
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@1c
    invoke-virtual {v7, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    #@1f
    .line 58
    invoke-static {v9}, Ljava/lang/System;->exit(I)V

    #@22
    goto :goto_0

    #@23
    .line 52
    .end local v7    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v8

    #@24
    .line 53
    .local v8, "e":Ljava/lang/IllegalArgumentException;
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@26
    invoke-virtual {p0, v0}, Lcom/android/internal/os/BaseCommand;->onShowUsage(Ljava/io/PrintStream;)V

    #@29
    .line 54
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@2b
    invoke-virtual {v0}, Ljava/io/PrintStream;->println()V

    #@2e
    .line 55
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@30
    new-instance v1, Ljava/lang/StringBuilder;

    #@32
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@35
    const-string/jumbo v2, "Error: "

    #@38
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v1

    #@3c
    invoke-virtual {v8}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    #@3f
    move-result-object v2

    #@40
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v1

    #@44
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@47
    move-result-object v1

    #@48
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@4b
    goto :goto_0
.end method

.method public showError(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    #@0
    .prologue
    .line 74
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@2
    invoke-virtual {p0, v0}, Lcom/android/internal/os/BaseCommand;->onShowUsage(Ljava/io/PrintStream;)V

    #@5
    .line 75
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@7
    invoke-virtual {v0}, Ljava/io/PrintStream;->println()V

    #@a
    .line 76
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@c
    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@f
    .line 73
    return-void
.end method

.method public showUsage()V
    .locals 1

    #@0
    .prologue
    .line 66
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@2
    invoke-virtual {p0, v0}, Lcom/android/internal/os/BaseCommand;->onShowUsage(Ljava/io/PrintStream;)V

    #@5
    .line 65
    return-void
.end method
