.class final Ljava/lang/UNIXProcess;
.super Ljava/lang/Process;
.source "UNIXProcess.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/lang/UNIXProcess$ProcessPipeOutputStream;,
        Ljava/lang/UNIXProcess$ProcessPipeInputStream;,
        Ljava/lang/UNIXProcess$ProcessReaperThreadFactory;
    }
.end annotation


# static fields
.field private static final blacklist processReaperExecutor:Ljava/util/concurrent/Executor;


# instance fields
.field private blacklist exitcode:I

.field private blacklist hasExited:Z

.field private final greylist pid:I

.field private blacklist stderr:Ljava/io/InputStream;

.field private blacklist stdin:Ljava/io/OutputStream;

.field private blacklist stdout:Ljava/io/InputStream;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetpid(Ljava/lang/UNIXProcess;)I
    .registers 1

    iget p0, p0, Ljava/lang/UNIXProcess;->pid:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mwaitForProcessExit(Ljava/lang/UNIXProcess;I)I
    .registers 2

    invoke-direct {p0, p1}, Ljava/lang/UNIXProcess;->waitForProcessExit(I)I

    move-result p0

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 118
    new-instance v0, Ljava/lang/UNIXProcess$1;

    invoke-direct {v0}, Ljava/lang/UNIXProcess$1;-><init>()V

    .line 119
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    sput-object v0, Ljava/lang/UNIXProcess;->processReaperExecutor:Ljava/util/concurrent/Executor;

    .line 256
    invoke-static {}, Ljava/lang/UNIXProcess;->initIDs()V

    .line 257
    return-void
.end method

.method constructor blacklist <init>([B[BI[BI[B[IZ)V
    .registers 12
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

    .line 131
    invoke-direct {p0}, Ljava/lang/Process;-><init>()V

    .line 133
    invoke-direct/range {p0 .. p8}, Ljava/lang/UNIXProcess;->forkAndExec([B[BI[BI[B[IZ)I

    move-result v0

    move v1, p8

    move-object p8, p7

    move-object p7, p6

    move p6, p5

    move-object p5, p4

    move p4, p3

    move-object p3, p2

    move-object p2, p1

    move-object p1, p0

    .end local p1    # "prog":[B
    .local v1, "redirectErrorStream":Z
    .local p2, "prog":[B
    .local p3, "argBlock":[B
    .local p4, "argc":I
    .local p5, "envBlock":[B
    .local p6, "envc":I
    .local p7, "dir":[B
    .local p8, "fds":[I
    iput v0, p1, Ljava/lang/UNIXProcess;->pid:I

    .line 141
    :try_start_12
    new-instance v0, Ljava/lang/UNIXProcess$2;

    invoke-direct {v0, p0, p8}, Ljava/lang/UNIXProcess$2;-><init>(Ljava/lang/UNIXProcess;[I)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;
    :try_end_1a
    .catch Ljava/security/PrivilegedActionException; {:try_start_12 .. :try_end_1a} :catch_1c

    .line 148
    nop

    .line 149
    return-void

    .line 146
    :catch_1c
    move-exception v0

    .line 147
    .local v0, "ex":Ljava/security/PrivilegedActionException;
    invoke-virtual {v0}, Ljava/security/PrivilegedActionException;->getException()Ljava/lang/Exception;

    move-result-object v2

    check-cast v2, Ljava/io/IOException;

    throw v2
.end method

.method private static native blacklist destroyProcess(I)V
.end method

.method private native blacklist forkAndExec([B[BI[BI[B[IZ)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native blacklist initIDs()V
.end method

.method static blacklist newFileDescriptor(I)Ljava/io/FileDescriptor;
    .registers 2
    .param p0, "fd"    # I

    .line 152
    new-instance v0, Ljava/io/FileDescriptor;

    invoke-direct {v0}, Ljava/io/FileDescriptor;-><init>()V

    .line 153
    .local v0, "fileDescriptor":Ljava/io/FileDescriptor;
    invoke-virtual {v0, p0}, Ljava/io/FileDescriptor;->setInt$(I)V

    .line 154
    return-object v0
.end method

.method private native blacklist waitForProcessExit(I)I
.end method


# virtual methods
.method public whitelist test-api destroy()V
    .registers 2

    .line 228
    monitor-enter p0

    .line 229
    :try_start_1
    iget-boolean v0, p0, Ljava/lang/UNIXProcess;->hasExited:Z

    if-nez v0, :cond_a

    .line 230
    iget v0, p0, Ljava/lang/UNIXProcess;->pid:I

    invoke-static {v0}, Ljava/lang/UNIXProcess;->destroyProcess(I)V

    .line 231
    :cond_a
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_21

    .line 232
    :try_start_b
    iget-object v0, p0, Ljava/lang/UNIXProcess;->stdin:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_10} :catch_11

    goto :goto_12

    :catch_11
    move-exception v0

    .line 233
    :goto_12
    :try_start_12
    iget-object v0, p0, Ljava/lang/UNIXProcess;->stdout:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_17} :catch_18

    goto :goto_19

    :catch_18
    move-exception v0

    .line 234
    :goto_19
    :try_start_19
    iget-object v0, p0, Ljava/lang/UNIXProcess;->stderr:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_1e} :catch_1f

    goto :goto_20

    :catch_1f
    move-exception v0

    .line 235
    :goto_20
    return-void

    .line 231
    :catchall_21
    move-exception v0

    :try_start_22
    monitor-exit p0
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    throw v0
.end method

.method public declared-synchronized whitelist test-api exitValue()I
    .registers 3

    monitor-enter p0

    .line 214
    :try_start_1
    iget-boolean v0, p0, Ljava/lang/UNIXProcess;->hasExited:Z

    if-eqz v0, :cond_9

    .line 217
    iget v0, p0, Ljava/lang/UNIXProcess;->exitcode:I
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_11

    monitor-exit p0

    return v0

    .line 215
    .end local p0    # "this":Ljava/lang/UNIXProcess;
    :cond_9
    :try_start_9
    new-instance v0, Ljava/lang/IllegalThreadStateException;

    const-string v1, "process hasn\'t exited"

    invoke-direct {v0, v1}, Ljava/lang/IllegalThreadStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 213
    :catchall_11
    move-exception v0

    monitor-exit p0
    :try_end_13
    .catchall {:try_start_9 .. :try_end_13} :catchall_11

    throw v0
.end method

.method public whitelist test-api getErrorStream()Ljava/io/InputStream;
    .registers 2

    .line 203
    iget-object v0, p0, Ljava/lang/UNIXProcess;->stderr:Ljava/io/InputStream;

    return-object v0
.end method

.method public whitelist test-api getInputStream()Ljava/io/InputStream;
    .registers 2

    .line 199
    iget-object v0, p0, Ljava/lang/UNIXProcess;->stdout:Ljava/io/InputStream;

    return-object v0
.end method

.method public whitelist test-api getOutputStream()Ljava/io/OutputStream;
    .registers 2

    .line 195
    iget-object v0, p0, Ljava/lang/UNIXProcess;->stdin:Ljava/io/OutputStream;

    return-object v0
.end method

.method blacklist initStreams([I)V
    .registers 5
    .param p1, "fds"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 158
    const/4 v0, 0x0

    aget v1, p1, v0

    const/4 v2, -0x1

    if-ne v1, v2, :cond_9

    .line 159
    sget-object v0, Ljava/lang/ProcessBuilder$NullOutputStream;->INSTANCE:Ljava/lang/ProcessBuilder$NullOutputStream;

    goto :goto_11

    .line 160
    :cond_9
    new-instance v1, Ljava/lang/UNIXProcess$ProcessPipeOutputStream;

    aget v0, p1, v0

    invoke-direct {v1, v0}, Ljava/lang/UNIXProcess$ProcessPipeOutputStream;-><init>(I)V

    move-object v0, v1

    :goto_11
    iput-object v0, p0, Ljava/lang/UNIXProcess;->stdin:Ljava/io/OutputStream;

    .line 162
    const/4 v0, 0x1

    aget v1, p1, v0

    if-ne v1, v2, :cond_1b

    .line 163
    sget-object v0, Ljava/lang/ProcessBuilder$NullInputStream;->INSTANCE:Ljava/lang/ProcessBuilder$NullInputStream;

    goto :goto_23

    .line 164
    :cond_1b
    new-instance v1, Ljava/lang/UNIXProcess$ProcessPipeInputStream;

    aget v0, p1, v0

    invoke-direct {v1, v0}, Ljava/lang/UNIXProcess$ProcessPipeInputStream;-><init>(I)V

    move-object v0, v1

    :goto_23
    iput-object v0, p0, Ljava/lang/UNIXProcess;->stdout:Ljava/io/InputStream;

    .line 166
    const/4 v0, 0x2

    aget v1, p1, v0

    if-ne v1, v2, :cond_2d

    .line 167
    sget-object v0, Ljava/lang/ProcessBuilder$NullInputStream;->INSTANCE:Ljava/lang/ProcessBuilder$NullInputStream;

    goto :goto_35

    .line 168
    :cond_2d
    new-instance v1, Ljava/lang/UNIXProcess$ProcessPipeInputStream;

    aget v0, p1, v0

    invoke-direct {v1, v0}, Ljava/lang/UNIXProcess$ProcessPipeInputStream;-><init>(I)V

    move-object v0, v1

    :goto_35
    iput-object v0, p0, Ljava/lang/UNIXProcess;->stderr:Ljava/io/InputStream;

    .line 170
    sget-object v0, Ljava/lang/UNIXProcess;->processReaperExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Ljava/lang/UNIXProcess$3;

    invoke-direct {v1, p0}, Ljava/lang/UNIXProcess$3;-><init>(Ljava/lang/UNIXProcess;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 175
    return-void
.end method

.method blacklist processExited(I)V
    .registers 3
    .param p1, "exitcode"    # I

    .line 178
    monitor-enter p0

    .line 179
    :try_start_1
    iput p1, p0, Ljava/lang/UNIXProcess;->exitcode:I

    .line 180
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/lang/UNIXProcess;->hasExited:Z

    .line 181
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 182
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_32

    .line 184
    iget-object v0, p0, Ljava/lang/UNIXProcess;->stdout:Ljava/io/InputStream;

    instance-of v0, v0, Ljava/lang/UNIXProcess$ProcessPipeInputStream;

    if-eqz v0, :cond_17

    .line 185
    iget-object v0, p0, Ljava/lang/UNIXProcess;->stdout:Ljava/io/InputStream;

    check-cast v0, Ljava/lang/UNIXProcess$ProcessPipeInputStream;

    invoke-virtual {v0}, Ljava/lang/UNIXProcess$ProcessPipeInputStream;->processExited()V

    .line 187
    :cond_17
    iget-object v0, p0, Ljava/lang/UNIXProcess;->stderr:Ljava/io/InputStream;

    instance-of v0, v0, Ljava/lang/UNIXProcess$ProcessPipeInputStream;

    if-eqz v0, :cond_24

    .line 188
    iget-object v0, p0, Ljava/lang/UNIXProcess;->stderr:Ljava/io/InputStream;

    check-cast v0, Ljava/lang/UNIXProcess$ProcessPipeInputStream;

    invoke-virtual {v0}, Ljava/lang/UNIXProcess$ProcessPipeInputStream;->processExited()V

    .line 190
    :cond_24
    iget-object v0, p0, Ljava/lang/UNIXProcess;->stdin:Ljava/io/OutputStream;

    instance-of v0, v0, Ljava/lang/UNIXProcess$ProcessPipeOutputStream;

    if-eqz v0, :cond_31

    .line 191
    iget-object v0, p0, Ljava/lang/UNIXProcess;->stdin:Ljava/io/OutputStream;

    check-cast v0, Ljava/lang/UNIXProcess$ProcessPipeOutputStream;

    invoke-virtual {v0}, Ljava/lang/UNIXProcess$ProcessPipeOutputStream;->processExited()V

    .line 192
    :cond_31
    return-void

    .line 182
    :catchall_32
    move-exception v0

    :try_start_33
    monitor-exit p0
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_32

    throw v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 239
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Process[pid="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 240
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget v1, p0, Ljava/lang/UNIXProcess;->pid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 241
    iget-boolean v1, p0, Ljava/lang/UNIXProcess;->hasExited:Z

    if-eqz v1, :cond_20

    .line 242
    const-string v1, " ,hasExited=true, exitcode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    iget v1, p0, Ljava/lang/UNIXProcess;->exitcode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 244
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_25

    .line 246
    :cond_20
    const-string v1, ", hasExited=false]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    :goto_25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public declared-synchronized whitelist test-api waitFor()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    monitor-enter p0

    .line 207
    nop

    :goto_2
    :try_start_2
    iget-boolean v0, p0, Ljava/lang/UNIXProcess;->hasExited:Z

    if-nez v0, :cond_a

    .line 208
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    goto :goto_2

    .line 210
    .end local p0    # "this":Ljava/lang/UNIXProcess;
    :cond_a
    iget v0, p0, Ljava/lang/UNIXProcess;->exitcode:I
    :try_end_c
    .catchall {:try_start_2 .. :try_end_c} :catchall_e

    monitor-exit p0

    return v0

    .line 206
    :catchall_e
    move-exception v0

    :try_start_f
    monitor-exit p0
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_e

    throw v0
.end method
