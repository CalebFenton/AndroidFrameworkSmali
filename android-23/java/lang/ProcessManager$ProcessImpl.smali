.class Ljava/lang/ProcessManager$ProcessImpl;
.super Ljava/lang/Process;
.source "ProcessManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/ProcessManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ProcessImpl"
.end annotation


# instance fields
.field private final errorStream:Ljava/io/InputStream;

.field private exitValue:Ljava/lang/Integer;

.field private final exitValueMutex:Ljava/lang/Object;

.field private final inputStream:Ljava/io/InputStream;

.field private final outputStream:Ljava/io/OutputStream;

.field private final pid:I


# direct methods
.method static synthetic -get0(Ljava/lang/ProcessManager$ProcessImpl;)I
    .locals 1

    #@0
    iget v0, p0, Ljava/lang/ProcessManager$ProcessImpl;->pid:I

    #@2
    return v0
.end method

.method constructor <init>(ILjava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;)V
    .locals 2
    .param p1, "pid"    # I
    .param p2, "in"    # Ljava/io/FileDescriptor;
    .param p3, "out"    # Ljava/io/FileDescriptor;
    .param p4, "err"    # Ljava/io/FileDescriptor;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 247
    invoke-direct {p0}, Ljava/lang/Process;-><init>()V

    #@4
    .line 244
    iput-object v1, p0, Ljava/lang/ProcessManager$ProcessImpl;->exitValue:Ljava/lang/Integer;

    #@6
    .line 245
    new-instance v0, Ljava/lang/Object;

    #@8
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@b
    iput-object v0, p0, Ljava/lang/ProcessManager$ProcessImpl;->exitValueMutex:Ljava/lang/Object;

    #@d
    .line 248
    iput p1, p0, Ljava/lang/ProcessManager$ProcessImpl;->pid:I

    #@f
    .line 250
    new-instance v0, Ljava/lang/ProcessManager$ProcessInputStream;

    #@11
    invoke-direct {v0, p4, v1}, Ljava/lang/ProcessManager$ProcessInputStream;-><init>(Ljava/io/FileDescriptor;Ljava/lang/ProcessManager$ProcessInputStream;)V

    #@14
    iput-object v0, p0, Ljava/lang/ProcessManager$ProcessImpl;->errorStream:Ljava/io/InputStream;

    #@16
    .line 251
    new-instance v0, Ljava/lang/ProcessManager$ProcessInputStream;

    #@18
    invoke-direct {v0, p2, v1}, Ljava/lang/ProcessManager$ProcessInputStream;-><init>(Ljava/io/FileDescriptor;Ljava/lang/ProcessManager$ProcessInputStream;)V

    #@1b
    iput-object v0, p0, Ljava/lang/ProcessManager$ProcessImpl;->inputStream:Ljava/io/InputStream;

    #@1d
    .line 252
    new-instance v0, Ljava/lang/ProcessManager$ProcessOutputStream;

    #@1f
    invoke-direct {v0, p3, v1}, Ljava/lang/ProcessManager$ProcessOutputStream;-><init>(Ljava/io/FileDescriptor;Ljava/lang/ProcessManager$ProcessOutputStream;)V

    #@22
    iput-object v0, p0, Ljava/lang/ProcessManager$ProcessImpl;->outputStream:Ljava/io/OutputStream;

    #@24
    .line 247
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 5

    #@0
    .prologue
    .line 257
    iget-object v2, p0, Ljava/lang/ProcessManager$ProcessImpl;->exitValueMutex:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 258
    :try_start_0
    iget-object v1, p0, Ljava/lang/ProcessManager$ProcessImpl;->exitValue:Ljava/lang/Integer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    if-nez v1, :cond_0

    #@7
    .line 260
    :try_start_1
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@9
    iget v3, p0, Ljava/lang/ProcessManager$ProcessImpl;->pid:I

    #@b
    sget v4, Landroid/system/OsConstants;->SIGKILL:I

    #@d
    invoke-interface {v1, v3, v4}, Llibcore/io/Os;->kill(II)V
    :try_end_1
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@10
    :cond_0
    :goto_0
    monitor-exit v2

    #@11
    .line 267
    iget-object v1, p0, Ljava/lang/ProcessManager$ProcessImpl;->inputStream:Ljava/io/InputStream;

    #@13
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@16
    .line 268
    iget-object v1, p0, Ljava/lang/ProcessManager$ProcessImpl;->errorStream:Ljava/io/InputStream;

    #@18
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@1b
    .line 269
    iget-object v1, p0, Ljava/lang/ProcessManager$ProcessImpl;->outputStream:Ljava/io/OutputStream;

    #@1d
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@20
    .line 255
    return-void

    #@21
    .line 261
    :catch_0
    move-exception v0

    #@22
    .line 262
    .local v0, "e":Landroid/system/ErrnoException;
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    #@24
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@27
    const-string/jumbo v3, "Failed to destroy process "

    #@2a
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v1

    #@2e
    iget v3, p0, Ljava/lang/ProcessManager$ProcessImpl;->pid:I

    #@30
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@33
    move-result-object v1

    #@34
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@37
    move-result-object v1

    #@38
    invoke-static {v1, v0}, Ljava/lang/System;->logI(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@3b
    goto :goto_0

    #@3c
    .line 257
    .end local v0    # "e":Landroid/system/ErrnoException;
    :catchall_0
    move-exception v1

    #@3d
    monitor-exit v2

    #@3e
    throw v1
.end method

.method public exitValue()I
    .locals 4

    #@0
    .prologue
    .line 273
    iget-object v1, p0, Ljava/lang/ProcessManager$ProcessImpl;->exitValueMutex:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 274
    :try_start_0
    iget-object v0, p0, Ljava/lang/ProcessManager$ProcessImpl;->exitValue:Ljava/lang/Integer;

    #@5
    if-nez v0, :cond_0

    #@7
    .line 275
    new-instance v0, Ljava/lang/IllegalThreadStateException;

    #@9
    new-instance v2, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string/jumbo v3, "Process has not yet terminated: "

    #@11
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v2

    #@15
    iget v3, p0, Ljava/lang/ProcessManager$ProcessImpl;->pid:I

    #@17
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v2

    #@1b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v2

    #@1f
    invoke-direct {v0, v2}, Ljava/lang/IllegalThreadStateException;-><init>(Ljava/lang/String;)V

    #@22
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@23
    .line 273
    :catchall_0
    move-exception v0

    #@24
    monitor-exit v1

    #@25
    throw v0

    #@26
    .line 277
    :cond_0
    :try_start_1
    iget-object v0, p0, Ljava/lang/ProcessManager$ProcessImpl;->exitValue:Ljava/lang/Integer;

    #@28
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2b
    move-result v0

    #@2c
    monitor-exit v1

    #@2d
    return v0
.end method

.method public getErrorStream()Ljava/io/InputStream;
    .locals 1

    #@0
    .prologue
    .line 282
    iget-object v0, p0, Ljava/lang/ProcessManager$ProcessImpl;->errorStream:Ljava/io/InputStream;

    #@2
    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1

    #@0
    .prologue
    .line 286
    iget-object v0, p0, Ljava/lang/ProcessManager$ProcessImpl;->inputStream:Ljava/io/InputStream;

    #@2
    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1

    #@0
    .prologue
    .line 290
    iget-object v0, p0, Ljava/lang/ProcessManager$ProcessImpl;->outputStream:Ljava/io/OutputStream;

    #@2
    return-object v0
.end method

.method setExitValue(I)V
    .locals 2
    .param p1, "exitValue"    # I

    #@0
    .prologue
    .line 303
    iget-object v1, p0, Ljava/lang/ProcessManager$ProcessImpl;->exitValueMutex:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 304
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Ljava/lang/ProcessManager$ProcessImpl;->exitValue:Ljava/lang/Integer;

    #@9
    .line 305
    iget-object v0, p0, Ljava/lang/ProcessManager$ProcessImpl;->exitValueMutex:Ljava/lang/Object;

    #@b
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    monitor-exit v1

    #@f
    .line 302
    return-void

    #@10
    .line 303
    :catchall_0
    move-exception v0

    #@11
    monitor-exit v1

    #@12
    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 311
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "Process[pid="

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget v1, p0, Ljava/lang/ProcessManager$ProcessImpl;->pid:I

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    const-string/jumbo v1, "]"

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object v0

    #@1d
    return-object v0
.end method

.method public waitFor()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    #@0
    .prologue
    .line 294
    iget-object v1, p0, Ljava/lang/ProcessManager$ProcessImpl;->exitValueMutex:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 295
    :goto_0
    :try_start_0
    iget-object v0, p0, Ljava/lang/ProcessManager$ProcessImpl;->exitValue:Ljava/lang/Integer;

    #@5
    if-nez v0, :cond_0

    #@7
    .line 296
    iget-object v0, p0, Ljava/lang/ProcessManager$ProcessImpl;->exitValueMutex:Ljava/lang/Object;

    #@9
    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    goto :goto_0

    #@d
    .line 294
    :catchall_0
    move-exception v0

    #@e
    monitor-exit v1

    #@f
    throw v0

    #@10
    .line 298
    :cond_0
    :try_start_1
    iget-object v0, p0, Ljava/lang/ProcessManager$ProcessImpl;->exitValue:Ljava/lang/Integer;

    #@12
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@15
    move-result v0

    #@16
    monitor-exit v1

    #@17
    return v0
.end method
