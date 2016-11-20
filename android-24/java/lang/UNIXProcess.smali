.class final Ljava/lang/UNIXProcess;
.super Ljava/lang/Process;
.source "UNIXProcess.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/lang/UNIXProcess$1;,
        Ljava/lang/UNIXProcess$ProcessPipeInputStream;,
        Ljava/lang/UNIXProcess$ProcessPipeOutputStream;,
        Ljava/lang/UNIXProcess$ProcessReaperThreadFactory;
    }
.end annotation


# static fields
.field private static final processReaperExecutor:Ljava/util/concurrent/Executor;


# instance fields
.field private exitcode:I

.field private hasExited:Z

.field private final pid:I

.field private stderr:Ljava/io/InputStream;

.field private stdin:Ljava/io/OutputStream;

.field private stdout:Ljava/io/InputStream;


# direct methods
.method static synthetic -get0(Ljava/lang/UNIXProcess;)I
    .locals 1

    #@0
    iget v0, p0, Ljava/lang/UNIXProcess;->pid:I

    #@2
    return v0
.end method

.method static synthetic -wrap0(Ljava/lang/UNIXProcess;I)I
    .locals 1
    .param p1, "pid"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Ljava/lang/UNIXProcess;->waitForProcessExit(I)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 119
    new-instance v0, Ljava/lang/UNIXProcess$1;

    #@2
    invoke-direct {v0}, Ljava/lang/UNIXProcess$1;-><init>()V

    #@5
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Ljava/util/concurrent/Executor;

    #@b
    .line 118
    sput-object v0, Ljava/lang/UNIXProcess;->processReaperExecutor:Ljava/util/concurrent/Executor;

    #@d
    .line 256
    invoke-static {}, Ljava/lang/UNIXProcess;->initIDs()V

    #@10
    .line 55
    return-void
.end method

.method constructor <init>([B[BI[BI[B[IZ)V
    .locals 2
    .param p1, "prog"    # [B
    .param p2, "argBlock"    # [B
    .param p3, "argc"    # I
    .param p4, "envBlock"    # [B
    .param p5, "envc"    # I
    .param p6, "dir"    # [B
    .param p7, "fds"    # [I
    .param p8, "redirectErrorStream"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 125
    invoke-direct {p0}, Ljava/lang/Process;-><init>()V

    #@3
    .line 133
    invoke-direct/range {p0 .. p8}, Ljava/lang/UNIXProcess;->forkAndExec([B[BI[BI[B[IZ)I

    #@6
    move-result v1

    #@7
    iput v1, p0, Ljava/lang/UNIXProcess;->pid:I

    #@9
    .line 141
    :try_start_0
    new-instance v1, Ljava/lang/UNIXProcess$2;

    #@b
    invoke-direct {v1, p0, p7}, Ljava/lang/UNIXProcess$2;-><init>(Ljava/lang/UNIXProcess;[I)V

    #@e
    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/security/PrivilegedActionException; {:try_start_0 .. :try_end_0} :catch_0

    #@11
    .line 131
    return-void

    #@12
    .line 146
    :catch_0
    move-exception v0

    #@13
    .line 147
    .local v0, "ex":Ljava/security/PrivilegedActionException;
    invoke-virtual {v0}, Ljava/security/PrivilegedActionException;->getException()Ljava/lang/Exception;

    #@16
    move-result-object v1

    #@17
    check-cast v1, Ljava/io/IOException;

    #@19
    throw v1
.end method

.method private static native destroyProcess(I)V
.end method

.method private native forkAndExec([B[BI[BI[B[IZ)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native initIDs()V
.end method

.method static newFileDescriptor(I)Ljava/io/FileDescriptor;
    .locals 1
    .param p0, "fd"    # I

    #@0
    .prologue
    .line 152
    new-instance v0, Ljava/io/FileDescriptor;

    #@2
    invoke-direct {v0}, Ljava/io/FileDescriptor;-><init>()V

    #@5
    .line 153
    .local v0, "fileDescriptor":Ljava/io/FileDescriptor;
    invoke-virtual {v0, p0}, Ljava/io/FileDescriptor;->setInt$(I)V

    #@8
    .line 154
    return-object v0
.end method

.method private native waitForProcessExit(I)I
.end method


# virtual methods
.method public destroy()V
    .locals 2

    #@0
    .prologue
    .line 228
    monitor-enter p0

    #@1
    .line 229
    :try_start_0
    iget-boolean v1, p0, Ljava/lang/UNIXProcess;->hasExited:Z

    #@3
    if-nez v1, :cond_0

    #@5
    .line 230
    iget v1, p0, Ljava/lang/UNIXProcess;->pid:I

    #@7
    invoke-static {v1}, Ljava/lang/UNIXProcess;->destroyProcess(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a
    :cond_0
    monitor-exit p0

    #@b
    .line 232
    :try_start_1
    iget-object v1, p0, Ljava/lang/UNIXProcess;->stdin:Ljava/io/OutputStream;

    #@d
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    #@10
    .line 233
    :goto_0
    :try_start_2
    iget-object v1, p0, Ljava/lang/UNIXProcess;->stdout:Ljava/io/InputStream;

    #@12
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    #@15
    .line 234
    :goto_1
    :try_start_3
    iget-object v1, p0, Ljava/lang/UNIXProcess;->stderr:Ljava/io/InputStream;

    #@17
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    #@1a
    .line 221
    :goto_2
    return-void

    #@1b
    .line 228
    :catchall_0
    move-exception v1

    #@1c
    monitor-exit p0

    #@1d
    throw v1

    #@1e
    .line 234
    :catch_0
    move-exception v0

    #@1f
    .local v0, "ignored":Ljava/io/IOException;
    goto :goto_2

    #@20
    .line 233
    .end local v0    # "ignored":Ljava/io/IOException;
    :catch_1
    move-exception v0

    #@21
    .restart local v0    # "ignored":Ljava/io/IOException;
    goto :goto_1

    #@22
    .line 232
    .end local v0    # "ignored":Ljava/io/IOException;
    :catch_2
    move-exception v0

    #@23
    .restart local v0    # "ignored":Ljava/io/IOException;
    goto :goto_0
.end method

.method public declared-synchronized exitValue()I
    .locals 2

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 214
    :try_start_0
    iget-boolean v0, p0, Ljava/lang/UNIXProcess;->hasExited:Z

    #@3
    if-nez v0, :cond_0

    #@5
    .line 215
    new-instance v0, Ljava/lang/IllegalThreadStateException;

    #@7
    const-string/jumbo v1, "process hasn\'t exited"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/IllegalThreadStateException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    :catchall_0
    move-exception v0

    #@f
    monitor-exit p0

    #@10
    throw v0

    #@11
    .line 217
    :cond_0
    :try_start_1
    iget v0, p0, Ljava/lang/UNIXProcess;->exitcode:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@13
    monitor-exit p0

    #@14
    return v0
.end method

.method public getErrorStream()Ljava/io/InputStream;
    .locals 1

    #@0
    .prologue
    .line 203
    iget-object v0, p0, Ljava/lang/UNIXProcess;->stderr:Ljava/io/InputStream;

    #@2
    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1

    #@0
    .prologue
    .line 199
    iget-object v0, p0, Ljava/lang/UNIXProcess;->stdout:Ljava/io/InputStream;

    #@2
    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1

    #@0
    .prologue
    .line 195
    iget-object v0, p0, Ljava/lang/UNIXProcess;->stdin:Ljava/io/OutputStream;

    #@2
    return-object v0
.end method

.method initStreams([I)V
    .locals 5
    .param p1, "fds"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x2

    #@1
    const/4 v3, 0x1

    #@2
    const/4 v1, 0x0

    #@3
    const/4 v2, -0x1

    #@4
    .line 158
    aget v0, p1, v1

    #@6
    if-ne v0, v2, :cond_0

    #@8
    .line 159
    sget-object v0, Ljava/lang/ProcessBuilder$NullOutputStream;->INSTANCE:Ljava/lang/ProcessBuilder$NullOutputStream;

    #@a
    .line 158
    :goto_0
    iput-object v0, p0, Ljava/lang/UNIXProcess;->stdin:Ljava/io/OutputStream;

    #@c
    .line 162
    aget v0, p1, v3

    #@e
    if-ne v0, v2, :cond_1

    #@10
    .line 163
    sget-object v0, Ljava/lang/ProcessBuilder$NullInputStream;->INSTANCE:Ljava/lang/ProcessBuilder$NullInputStream;

    #@12
    .line 162
    :goto_1
    iput-object v0, p0, Ljava/lang/UNIXProcess;->stdout:Ljava/io/InputStream;

    #@14
    .line 166
    aget v0, p1, v4

    #@16
    if-ne v0, v2, :cond_2

    #@18
    .line 167
    sget-object v0, Ljava/lang/ProcessBuilder$NullInputStream;->INSTANCE:Ljava/lang/ProcessBuilder$NullInputStream;

    #@1a
    .line 166
    :goto_2
    iput-object v0, p0, Ljava/lang/UNIXProcess;->stderr:Ljava/io/InputStream;

    #@1c
    .line 170
    sget-object v0, Ljava/lang/UNIXProcess;->processReaperExecutor:Ljava/util/concurrent/Executor;

    #@1e
    new-instance v1, Ljava/lang/UNIXProcess$3;

    #@20
    invoke-direct {v1, p0}, Ljava/lang/UNIXProcess$3;-><init>(Ljava/lang/UNIXProcess;)V

    #@23
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    #@26
    .line 157
    return-void

    #@27
    .line 160
    :cond_0
    new-instance v0, Ljava/lang/UNIXProcess$ProcessPipeOutputStream;

    #@29
    aget v1, p1, v1

    #@2b
    invoke-direct {v0, v1}, Ljava/lang/UNIXProcess$ProcessPipeOutputStream;-><init>(I)V

    #@2e
    goto :goto_0

    #@2f
    .line 164
    :cond_1
    new-instance v0, Ljava/lang/UNIXProcess$ProcessPipeInputStream;

    #@31
    aget v1, p1, v3

    #@33
    invoke-direct {v0, v1}, Ljava/lang/UNIXProcess$ProcessPipeInputStream;-><init>(I)V

    #@36
    goto :goto_1

    #@37
    .line 168
    :cond_2
    new-instance v0, Ljava/lang/UNIXProcess$ProcessPipeInputStream;

    #@39
    aget v1, p1, v4

    #@3b
    invoke-direct {v0, v1}, Ljava/lang/UNIXProcess$ProcessPipeInputStream;-><init>(I)V

    #@3e
    goto :goto_2
.end method

.method processExited(I)V
    .locals 1
    .param p1, "exitcode"    # I

    #@0
    .prologue
    .line 178
    monitor-enter p0

    #@1
    .line 179
    :try_start_0
    iput p1, p0, Ljava/lang/UNIXProcess;->exitcode:I

    #@3
    .line 180
    const/4 v0, 0x1

    #@4
    iput-boolean v0, p0, Ljava/lang/UNIXProcess;->hasExited:Z

    #@6
    .line 181
    invoke-virtual {p0}, Ljava/lang/UNIXProcess;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    monitor-exit p0

    #@a
    .line 184
    iget-object v0, p0, Ljava/lang/UNIXProcess;->stdout:Ljava/io/InputStream;

    #@c
    instance-of v0, v0, Ljava/lang/UNIXProcess$ProcessPipeInputStream;

    #@e
    if-eqz v0, :cond_0

    #@10
    .line 185
    iget-object v0, p0, Ljava/lang/UNIXProcess;->stdout:Ljava/io/InputStream;

    #@12
    check-cast v0, Ljava/lang/UNIXProcess$ProcessPipeInputStream;

    #@14
    invoke-virtual {v0}, Ljava/lang/UNIXProcess$ProcessPipeInputStream;->processExited()V

    #@17
    .line 187
    :cond_0
    iget-object v0, p0, Ljava/lang/UNIXProcess;->stderr:Ljava/io/InputStream;

    #@19
    instance-of v0, v0, Ljava/lang/UNIXProcess$ProcessPipeInputStream;

    #@1b
    if-eqz v0, :cond_1

    #@1d
    .line 188
    iget-object v0, p0, Ljava/lang/UNIXProcess;->stderr:Ljava/io/InputStream;

    #@1f
    check-cast v0, Ljava/lang/UNIXProcess$ProcessPipeInputStream;

    #@21
    invoke-virtual {v0}, Ljava/lang/UNIXProcess$ProcessPipeInputStream;->processExited()V

    #@24
    .line 190
    :cond_1
    iget-object v0, p0, Ljava/lang/UNIXProcess;->stdin:Ljava/io/OutputStream;

    #@26
    instance-of v0, v0, Ljava/lang/UNIXProcess$ProcessPipeOutputStream;

    #@28
    if-eqz v0, :cond_2

    #@2a
    .line 191
    iget-object v0, p0, Ljava/lang/UNIXProcess;->stdin:Ljava/io/OutputStream;

    #@2c
    check-cast v0, Ljava/lang/UNIXProcess$ProcessPipeOutputStream;

    #@2e
    invoke-virtual {v0}, Ljava/lang/UNIXProcess$ProcessPipeOutputStream;->processExited()V

    #@31
    .line 177
    :cond_2
    return-void

    #@32
    .line 178
    :catchall_0
    move-exception v0

    #@33
    monitor-exit p0

    #@34
    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 239
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    const-string/jumbo v1, "Process[pid="

    #@5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@8
    .line 240
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget v1, p0, Ljava/lang/UNIXProcess;->pid:I

    #@a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@d
    .line 241
    iget-boolean v1, p0, Ljava/lang/UNIXProcess;->hasExited:Z

    #@f
    if-eqz v1, :cond_0

    #@11
    .line 242
    const-string/jumbo v1, " ,hasExited=true, exitcode="

    #@14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    .line 243
    iget v1, p0, Ljava/lang/UNIXProcess;->exitcode:I

    #@19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1c
    .line 244
    const-string/jumbo v1, "]"

    #@1f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    .line 249
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25
    move-result-object v1

    #@26
    return-object v1

    #@27
    .line 246
    :cond_0
    const-string/jumbo v1, ", hasExited=false]"

    #@2a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    goto :goto_0
.end method

.method public declared-synchronized waitFor()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 207
    :goto_0
    :try_start_0
    iget-boolean v0, p0, Ljava/lang/UNIXProcess;->hasExited:Z

    #@3
    if-nez v0, :cond_0

    #@5
    .line 208
    invoke-virtual {p0}, Ljava/lang/UNIXProcess;->wait()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    goto :goto_0

    #@9
    :catchall_0
    move-exception v0

    #@a
    monitor-exit p0

    #@b
    throw v0

    #@c
    .line 210
    :cond_0
    :try_start_1
    iget v0, p0, Ljava/lang/UNIXProcess;->exitcode:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@e
    monitor-exit p0

    #@f
    return v0
.end method
