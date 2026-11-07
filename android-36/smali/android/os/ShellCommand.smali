.class public abstract Landroid/os/ShellCommand;
.super Lcom/android/modules/utils/BasicShellCommandHandler;
.source "ShellCommand.java"


# instance fields
.field private greylist-max-o mResultReceiver:Landroid/os/ResultReceiver;

.field private greylist-max-o mShellCallback:Landroid/os/ShellCallback;


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Lcom/android/modules/utils/BasicShellCommandHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public greylist-max-o adoptResultReceiver()Landroid/os/ResultReceiver;
    .registers 3

    .line 53
    iget-object v0, p0, Landroid/os/ShellCommand;->mResultReceiver:Landroid/os/ResultReceiver;

    .line 54
    .local v0, "rr":Landroid/os/ResultReceiver;
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/os/ShellCommand;->mResultReceiver:Landroid/os/ResultReceiver;

    .line 55
    return-object v0
.end method

.method public greylist-max-o exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I
    .registers 12
    .param p1, "target"    # Landroid/os/Binder;
    .param p2, "in"    # Ljava/io/FileDescriptor;
    .param p3, "out"    # Ljava/io/FileDescriptor;
    .param p4, "err"    # Ljava/io/FileDescriptor;
    .param p5, "args"    # [Ljava/lang/String;
    .param p6, "callback"    # Landroid/os/ShellCallback;
    .param p7, "resultReceiver"    # Landroid/os/ResultReceiver;

    .line 36
    iput-object p6, p0, Landroid/os/ShellCommand;->mShellCallback:Landroid/os/ShellCallback;

    .line 37
    iput-object p7, p0, Landroid/os/ShellCommand;->mResultReceiver:Landroid/os/ResultReceiver;

    .line 38
    invoke-super/range {p0 .. p5}, Lcom/android/modules/utils/BasicShellCommandHandler;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;)I

    move-result v0

    .line 40
    move-object v1, p5

    move-object p5, p4

    move-object p4, p3

    move-object p3, p2

    move-object p2, p1

    move-object p1, p0

    .end local p1    # "target":Landroid/os/Binder;
    .local v0, "result":I
    .local v1, "args":[Ljava/lang/String;
    .local p2, "target":Landroid/os/Binder;
    .local p3, "in":Ljava/io/FileDescriptor;
    .local p4, "out":Ljava/io/FileDescriptor;
    .local p5, "err":Ljava/io/FileDescriptor;
    iget-object v2, p1, Landroid/os/ShellCommand;->mResultReceiver:Landroid/os/ResultReceiver;

    if-eqz v2, :cond_18

    .line 41
    iget-object v2, p1, Landroid/os/ShellCommand;->mResultReceiver:Landroid/os/ResultReceiver;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 44
    :cond_18
    return v0
.end method

.method public greylist-max-o getShellCallback()Landroid/os/ShellCallback;
    .registers 2

    .line 104
    iget-object v0, p0, Landroid/os/ShellCommand;->mShellCallback:Landroid/os/ShellCallback;

    return-object v0
.end method

.method public greylist-max-o handleDefaultCommands(Ljava/lang/String;)I
    .registers 7
    .param p1, "cmd"    # Ljava/lang/String;

    .line 86
    const-string v0, "dump"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 87
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getAllArgs()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    new-array v0, v0, [Ljava/lang/String;

    .line 88
    .local v0, "newArgs":[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getAllArgs()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getAllArgs()[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    sub-int/2addr v3, v1

    const/4 v4, 0x0

    invoke-static {v2, v1, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 89
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getTarget()Landroid/os/Binder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Landroid/os/Binder;->doDump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 90
    return v4

    .line 92
    .end local v0    # "newArgs":[Ljava/lang/String;
    :cond_2f
    invoke-super {p0, p1}, Lcom/android/modules/utils/BasicShellCommandHandler;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public greylist-max-o openFileForSystem(Ljava/lang/String;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .registers 7
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "mode"    # Ljava/lang/String;

    .line 65
    :try_start_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getShellCallback()Landroid/os/ShellCallback;

    move-result-object v0

    const-string/jumbo v1, "u:r:system_server:s0"

    invoke-virtual {v0, p1, v1, p2}, Landroid/os/ShellCallback;->openFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0
    :try_end_b
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_b} :catch_f

    .line 67
    .local v0, "pfd":Landroid/os/ParcelFileDescriptor;
    if-eqz v0, :cond_e

    .line 69
    return-object v0

    .line 74
    .end local v0    # "pfd":Landroid/os/ParcelFileDescriptor;
    :cond_e
    goto :goto_2e

    .line 71
    :catch_f
    move-exception v0

    .line 73
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failure opening file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 76
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_2e
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: Unable to open file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 78
    const-string v0, "/data/local/tmp/"

    .line 79
    .local v0, "suggestedPath":Ljava/lang/String;
    if-eqz p1, :cond_52

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6c

    .line 80
    :cond_52
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Consider using a file under "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 82
    :cond_6c
    const/4 v1, 0x0

    return-object v1
.end method

.method public greylist-max-r peekNextArg()Ljava/lang/String;
    .registers 2

    .line 97
    invoke-super {p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->peekNextArg()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
