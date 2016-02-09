.class final Ljava/lang/ProcessManager;
.super Ljava/lang/Object;
.source "ProcessManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/lang/ProcessManager$ProcessImpl;,
        Ljava/lang/ProcessManager$ProcessReference;,
        Ljava/lang/ProcessManager$ProcessReferenceQueue;,
        Ljava/lang/ProcessManager$ProcessInputStream;,
        Ljava/lang/ProcessManager$ProcessOutputStream;
    }
.end annotation


# static fields
.field private static final instance:Ljava/lang/ProcessManager;


# instance fields
.field private final processReferences:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/ProcessManager$ProcessReference;",
            ">;"
        }
    .end annotation
.end field

.field private final referenceQueue:Ljava/lang/ProcessManager$ProcessReferenceQueue;


# direct methods
.method static synthetic -wrap0(Ljava/lang/ProcessManager;)V
    .locals 0

    #@0
    invoke-direct {p0}, Ljava/lang/ProcessManager;->watchChildren()V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 335
    new-instance v0, Ljava/lang/ProcessManager;

    #@2
    invoke-direct {v0}, Ljava/lang/ProcessManager;-><init>()V

    #@5
    sput-object v0, Ljava/lang/ProcessManager;->instance:Ljava/lang/ProcessManager;

    #@7
    .line 40
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    #@0
    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 49
    new-instance v1, Ljava/util/HashMap;

    #@5
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    #@8
    .line 48
    iput-object v1, p0, Ljava/lang/ProcessManager;->processReferences:Ljava/util/Map;

    #@a
    .line 52
    new-instance v1, Ljava/lang/ProcessManager$ProcessReferenceQueue;

    #@c
    invoke-direct {v1}, Ljava/lang/ProcessManager$ProcessReferenceQueue;-><init>()V

    #@f
    iput-object v1, p0, Ljava/lang/ProcessManager;->referenceQueue:Ljava/lang/ProcessManager$ProcessReferenceQueue;

    #@11
    .line 56
    new-instance v0, Ljava/lang/ProcessManager$1;

    #@13
    const-class v1, Ljava/lang/ProcessManager;

    #@15
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@18
    move-result-object v1

    #@19
    invoke-direct {v0, p0, v1}, Ljava/lang/ProcessManager$1;-><init>(Ljava/lang/ProcessManager;Ljava/lang/String;)V

    #@1c
    .line 61
    .local v0, "reaperThread":Ljava/lang/Thread;
    const/4 v1, 0x1

    #@1d
    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    #@20
    .line 62
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    #@23
    .line 54
    return-void
.end method

.method private cleanUp()V
    .locals 4

    #@0
    .prologue
    .line 71
    :goto_0
    iget-object v1, p0, Ljava/lang/ProcessManager;->referenceQueue:Ljava/lang/ProcessManager$ProcessReferenceQueue;

    #@2
    invoke-virtual {v1}, Ljava/lang/ProcessManager$ProcessReferenceQueue;->poll()Ljava/lang/ProcessManager$ProcessReference;

    #@5
    move-result-object v0

    #@6
    .local v0, "reference":Ljava/lang/ProcessManager$ProcessReference;
    if-eqz v0, :cond_0

    #@8
    .line 72
    iget-object v2, p0, Ljava/lang/ProcessManager;->processReferences:Ljava/util/Map;

    #@a
    monitor-enter v2

    #@b
    .line 73
    :try_start_0
    iget-object v1, p0, Ljava/lang/ProcessManager;->processReferences:Ljava/util/Map;

    #@d
    iget v3, v0, Ljava/lang/ProcessManager$ProcessReference;->processId:I

    #@f
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@12
    move-result-object v3

    #@13
    invoke-interface {v1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@16
    monitor-exit v2

    #@17
    goto :goto_0

    #@18
    .line 72
    :catchall_0
    move-exception v1

    #@19
    monitor-exit v2

    #@1a
    throw v1

    #@1b
    .line 69
    :cond_0
    return-void
.end method

.method private static native exec([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Z)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public static getInstance()Ljava/lang/ProcessManager;
    .locals 1

    #@0
    .prologue
    .line 339
    sget-object v0, Ljava/lang/ProcessManager;->instance:Ljava/lang/ProcessManager;

    #@2
    return-object v0
.end method

.method private onExit(II)V
    .locals 5
    .param p1, "pid"    # I
    .param p2, "exitValue"    # I

    #@0
    .prologue
    .line 121
    const/4 v1, 0x0

    #@1
    .line 122
    .local v1, "processReference":Ljava/lang/ProcessManager$ProcessReference;
    iget-object v3, p0, Ljava/lang/ProcessManager;->processReferences:Ljava/util/Map;

    #@3
    monitor-enter v3

    #@4
    .line 123
    :try_start_0
    invoke-direct {p0}, Ljava/lang/ProcessManager;->cleanUp()V

    #@7
    .line 124
    iget-object v2, p0, Ljava/lang/ProcessManager;->processReferences:Ljava/util/Map;

    #@9
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@c
    move-result-object v4

    #@d
    invoke-interface {v2, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@10
    move-result-object v1

    #@11
    .end local v1    # "processReference":Ljava/lang/ProcessManager$ProcessReference;
    check-cast v1, Ljava/lang/ProcessManager$ProcessReference;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    .local v1, "processReference":Ljava/lang/ProcessManager$ProcessReference;
    monitor-exit v3

    #@14
    .line 126
    if-eqz v1, :cond_0

    #@16
    .line 127
    invoke-virtual {v1}, Ljava/lang/ProcessManager$ProcessReference;->get()Ljava/lang/Object;

    #@19
    move-result-object v0

    #@1a
    check-cast v0, Ljava/lang/ProcessManager$ProcessImpl;

    #@1c
    .line 128
    .local v0, "process":Ljava/lang/ProcessManager$ProcessImpl;
    if-eqz v0, :cond_0

    #@1e
    .line 129
    invoke-virtual {v0, p2}, Ljava/lang/ProcessManager$ProcessImpl;->setExitValue(I)V

    #@21
    .line 120
    .end local v0    # "process":Ljava/lang/ProcessManager$ProcessImpl;
    :cond_0
    return-void

    #@22
    .line 122
    .end local v1    # "processReference":Ljava/lang/ProcessManager$ProcessReference;
    :catchall_0
    move-exception v2

    #@23
    monitor-exit v3

    #@24
    throw v2
.end method

.method private waitForMoreChildren()V
    .locals 4

    #@0
    .prologue
    .line 135
    iget-object v2, p0, Ljava/lang/ProcessManager;->processReferences:Ljava/util/Map;

    #@2
    monitor-enter v2

    #@3
    .line 136
    :try_start_0
    iget-object v1, p0, Ljava/lang/ProcessManager;->processReferences:Ljava/util/Map;

    #@5
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    move-result v1

    #@9
    if-eqz v1, :cond_0

    #@b
    .line 140
    :try_start_1
    iget-object v1, p0, Ljava/lang/ProcessManager;->processReferences:Ljava/util/Map;

    #@d
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@10
    :cond_0
    monitor-exit v2

    #@11
    .line 134
    return-void

    #@12
    .line 141
    :catch_0
    move-exception v0

    #@13
    .line 143
    .local v0, "ex":Ljava/lang/InterruptedException;
    :try_start_2
    new-instance v1, Ljava/lang/AssertionError;

    #@15
    const-string/jumbo v3, "unexpected interrupt"

    #@18
    invoke-direct {v1, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@1b
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@1c
    .line 135
    .end local v0    # "ex":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    #@1d
    monitor-exit v2

    #@1e
    throw v1
.end method

.method private watchChildren()V
    .locals 7

    #@0
    .prologue
    .line 82
    new-instance v3, Landroid/util/MutableInt;

    #@2
    const/4 v4, -0x1

    #@3
    invoke-direct {v3, v4}, Landroid/util/MutableInt;-><init>(I)V

    #@6
    .line 86
    .local v3, "status":Landroid/util/MutableInt;
    :goto_0
    :try_start_0
    sget-object v4, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@8
    const/4 v5, 0x0

    #@9
    const/4 v6, 0x0

    #@a
    invoke-interface {v4, v5, v3, v6}, Llibcore/io/Os;->waitpid(ILandroid/util/MutableInt;I)I

    #@d
    move-result v2

    #@e
    .line 90
    .local v2, "pid":I
    iget v4, v3, Landroid/util/MutableInt;->value:I

    #@10
    invoke-static {v4}, Landroid/system/OsConstants;->WIFEXITED(I)Z

    #@13
    move-result v4

    #@14
    if-eqz v4, :cond_0

    #@16
    .line 91
    iget v4, v3, Landroid/util/MutableInt;->value:I

    #@18
    invoke-static {v4}, Landroid/system/OsConstants;->WEXITSTATUS(I)I

    #@1b
    move-result v1

    #@1c
    .line 100
    .local v1, "exitValue":I
    :goto_1
    invoke-direct {p0, v2, v1}, Ljava/lang/ProcessManager;->onExit(II)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    #@1f
    goto :goto_0

    #@20
    .line 101
    .end local v1    # "exitValue":I
    .end local v2    # "pid":I
    :catch_0
    move-exception v0

    #@21
    .line 102
    .local v0, "errnoException":Landroid/system/ErrnoException;
    iget v4, v0, Landroid/system/ErrnoException;->errno:I

    #@23
    sget v5, Landroid/system/OsConstants;->ECHILD:I

    #@25
    if-ne v4, v5, :cond_3

    #@27
    .line 105
    invoke-direct {p0}, Ljava/lang/ProcessManager;->waitForMoreChildren()V

    #@2a
    goto :goto_0

    #@2b
    .line 92
    .end local v0    # "errnoException":Landroid/system/ErrnoException;
    .restart local v2    # "pid":I
    :cond_0
    :try_start_1
    iget v4, v3, Landroid/util/MutableInt;->value:I

    #@2d
    invoke-static {v4}, Landroid/system/OsConstants;->WIFSIGNALED(I)Z

    #@30
    move-result v4

    #@31
    if-eqz v4, :cond_1

    #@33
    .line 93
    iget v4, v3, Landroid/util/MutableInt;->value:I

    #@35
    invoke-static {v4}, Landroid/system/OsConstants;->WTERMSIG(I)I

    #@38
    move-result v1

    #@39
    .restart local v1    # "exitValue":I
    goto :goto_1

    #@3a
    .line 94
    .end local v1    # "exitValue":I
    :cond_1
    iget v4, v3, Landroid/util/MutableInt;->value:I

    #@3c
    invoke-static {v4}, Landroid/system/OsConstants;->WIFSTOPPED(I)Z

    #@3f
    move-result v4

    #@40
    if-eqz v4, :cond_2

    #@42
    .line 95
    iget v4, v3, Landroid/util/MutableInt;->value:I

    #@44
    invoke-static {v4}, Landroid/system/OsConstants;->WSTOPSIG(I)I

    #@47
    move-result v1

    #@48
    .restart local v1    # "exitValue":I
    goto :goto_1

    #@49
    .line 97
    .end local v1    # "exitValue":I
    :cond_2
    new-instance v4, Ljava/lang/AssertionError;

    #@4b
    new-instance v5, Ljava/lang/StringBuilder;

    #@4d
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@50
    const-string/jumbo v6, "unexpected status from waitpid: "

    #@53
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v5

    #@57
    iget v6, v3, Landroid/util/MutableInt;->value:I

    #@59
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v5

    #@5d
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@60
    move-result-object v5

    #@61
    invoke-direct {v4, v5}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@64
    throw v4
    :try_end_1
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_1} :catch_0

    #@65
    .line 108
    .end local v2    # "pid":I
    .restart local v0    # "errnoException":Landroid/system/ErrnoException;
    :cond_3
    new-instance v4, Ljava/lang/AssertionError;

    #@67
    invoke-direct {v4, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@6a
    throw v4
.end method


# virtual methods
.method public exec([Ljava/lang/String;[Ljava/lang/String;Ljava/io/File;Z)Ljava/lang/Process;
    .locals 16
    .param p1, "taintedCommand"    # [Ljava/lang/String;
    .param p2, "taintedEnvironment"    # [Ljava/lang/String;
    .param p3, "workingDirectory"    # Ljava/io/File;
    .param p4, "redirectErrorStream"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 170
    if-nez p1, :cond_0

    #@2
    .line 171
    new-instance v7, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v14, "taintedCommand == null"

    #@7
    invoke-direct {v7, v14}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v7

    #@b
    .line 173
    :cond_0
    move-object/from16 v0, p1

    #@d
    array-length v7, v0

    #@e
    if-nez v7, :cond_1

    #@10
    .line 174
    new-instance v7, Ljava/lang/IndexOutOfBoundsException;

    #@12
    const-string/jumbo v14, "taintedCommand.length == 0"

    #@15
    invoke-direct {v7, v14}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@18
    throw v7

    #@19
    .line 178
    :cond_1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@1c
    move-result-object v1

    #@1d
    check-cast v1, [Ljava/lang/String;

    #@1f
    .line 179
    .local v1, "command":[Ljava/lang/String;
    if-eqz p2, :cond_2

    #@21
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@24
    move-result-object v2

    #@25
    check-cast v2, [Ljava/lang/String;

    #@27
    .line 182
    :goto_0
    const/4 v9, 0x0

    #@28
    .local v9, "i":I
    :goto_1
    array-length v7, v1

    #@29
    if-ge v9, v7, :cond_4

    #@2b
    .line 183
    aget-object v7, v1, v9

    #@2d
    if-nez v7, :cond_3

    #@2f
    .line 184
    new-instance v7, Ljava/lang/NullPointerException;

    #@31
    new-instance v14, Ljava/lang/StringBuilder;

    #@33
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    #@36
    const-string/jumbo v15, "taintedCommand["

    #@39
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v14

    #@3d
    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@40
    move-result-object v14

    #@41
    const-string/jumbo v15, "] == null"

    #@44
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v14

    #@48
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4b
    move-result-object v14

    #@4c
    invoke-direct {v7, v14}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@4f
    throw v7

    #@50
    .line 179
    .end local v9    # "i":I
    :cond_2
    const/4 v2, 0x0

    #@51
    .local v2, "environment":[Ljava/lang/String;
    goto :goto_0

    #@52
    .line 182
    .end local v2    # "environment":[Ljava/lang/String;
    .restart local v9    # "i":I
    :cond_3
    add-int/lit8 v9, v9, 0x1

    #@54
    goto :goto_1

    #@55
    .line 188
    :cond_4
    if-eqz v2, :cond_6

    #@57
    .line 189
    const/4 v9, 0x0

    #@58
    :goto_2
    array-length v7, v2

    #@59
    if-ge v9, v7, :cond_6

    #@5b
    .line 190
    aget-object v7, v2, v9

    #@5d
    if-nez v7, :cond_5

    #@5f
    .line 191
    new-instance v7, Ljava/lang/NullPointerException;

    #@61
    new-instance v14, Ljava/lang/StringBuilder;

    #@63
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    #@66
    const-string/jumbo v15, "taintedEnvironment["

    #@69
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6c
    move-result-object v14

    #@6d
    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@70
    move-result-object v14

    #@71
    const-string/jumbo v15, "] == null"

    #@74
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@77
    move-result-object v14

    #@78
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7b
    move-result-object v14

    #@7c
    invoke-direct {v7, v14}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@7f
    throw v7

    #@80
    .line 189
    :cond_5
    add-int/lit8 v9, v9, 0x1

    #@82
    goto :goto_2

    #@83
    .line 196
    :cond_6
    new-instance v4, Ljava/io/FileDescriptor;

    #@85
    invoke-direct {v4}, Ljava/io/FileDescriptor;-><init>()V

    #@88
    .line 197
    .local v4, "in":Ljava/io/FileDescriptor;
    new-instance v5, Ljava/io/FileDescriptor;

    #@8a
    invoke-direct {v5}, Ljava/io/FileDescriptor;-><init>()V

    #@8d
    .line 198
    .local v5, "out":Ljava/io/FileDescriptor;
    new-instance v6, Ljava/io/FileDescriptor;

    #@8f
    invoke-direct {v6}, Ljava/io/FileDescriptor;-><init>()V

    #@92
    .line 200
    .local v6, "err":Ljava/io/FileDescriptor;
    if-nez p3, :cond_7

    #@94
    .line 201
    const/4 v3, 0x0

    #@95
    .line 206
    :goto_3
    move-object/from16 v0, p0

    #@97
    iget-object v14, v0, Ljava/lang/ProcessManager;->processReferences:Ljava/util/Map;

    #@99
    monitor-enter v14

    #@9a
    move/from16 v7, p4

    #@9c
    .line 209
    :try_start_0
    invoke-static/range {v1 .. v7}, Ljava/lang/ProcessManager;->exec([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Z)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9f
    move-result v10

    #@a0
    .line 218
    .local v10, "pid":I
    :try_start_1
    new-instance v11, Ljava/lang/ProcessManager$ProcessImpl;

    #@a2
    invoke-direct {v11, v10, v4, v5, v6}, Ljava/lang/ProcessManager$ProcessImpl;-><init>(ILjava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;)V

    #@a5
    .line 219
    .local v11, "process":Ljava/lang/ProcessManager$ProcessImpl;
    new-instance v12, Ljava/lang/ProcessManager$ProcessReference;

    #@a7
    move-object/from16 v0, p0

    #@a9
    iget-object v7, v0, Ljava/lang/ProcessManager;->referenceQueue:Ljava/lang/ProcessManager$ProcessReferenceQueue;

    #@ab
    invoke-direct {v12, v11, v7}, Ljava/lang/ProcessManager$ProcessReference;-><init>(Ljava/lang/ProcessManager$ProcessImpl;Ljava/lang/ProcessManager$ProcessReferenceQueue;)V

    #@ae
    .line 220
    .local v12, "processReference":Ljava/lang/ProcessManager$ProcessReference;
    move-object/from16 v0, p0

    #@b0
    iget-object v7, v0, Ljava/lang/ProcessManager;->processReferences:Ljava/util/Map;

    #@b2
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@b5
    move-result-object v15

    #@b6
    invoke-interface {v7, v15, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@b9
    .line 226
    move-object/from16 v0, p0

    #@bb
    iget-object v7, v0, Ljava/lang/ProcessManager;->processReferences:Ljava/util/Map;

    #@bd
    invoke-virtual {v7}, Ljava/lang/Object;->notifyAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@c0
    monitor-exit v14

    #@c1
    .line 228
    return-object v11

    #@c2
    .line 202
    .end local v10    # "pid":I
    .end local v11    # "process":Ljava/lang/ProcessManager$ProcessImpl;
    .end local v12    # "processReference":Ljava/lang/ProcessManager$ProcessReference;
    :cond_7
    invoke-virtual/range {p3 .. p3}, Ljava/io/File;->getPath()Ljava/lang/String;

    #@c5
    move-result-object v3

    #@c6
    .local v3, "workingPath":Ljava/lang/String;
    goto :goto_3

    #@c7
    .line 210
    .end local v3    # "workingPath":Ljava/lang/String;
    :catch_0
    move-exception v8

    #@c8
    .line 211
    .local v8, "e":Ljava/io/IOException;
    :try_start_2
    new-instance v13, Ljava/io/IOException;

    #@ca
    new-instance v7, Ljava/lang/StringBuilder;

    #@cc
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@cf
    const-string/jumbo v15, "Error running exec(). Command: "

    #@d2
    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d5
    move-result-object v7

    #@d6
    .line 212
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    #@d9
    move-result-object v15

    #@da
    .line 211
    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@dd
    move-result-object v7

    #@de
    .line 213
    const-string/jumbo v15, " Working Directory: "

    #@e1
    .line 211
    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e4
    move-result-object v7

    #@e5
    move-object/from16 v0, p3

    #@e7
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@ea
    move-result-object v7

    #@eb
    .line 214
    const-string/jumbo v15, " Environment: "

    #@ee
    .line 211
    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f1
    move-result-object v7

    #@f2
    .line 214
    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    #@f5
    move-result-object v15

    #@f6
    .line 211
    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f9
    move-result-object v7

    #@fa
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@fd
    move-result-object v7

    #@fe
    invoke-direct {v13, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@101
    .line 215
    .local v13, "wrapper":Ljava/io/IOException;
    invoke-virtual {v13, v8}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    #@104
    .line 216
    throw v13
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@105
    .line 206
    .end local v8    # "e":Ljava/io/IOException;
    .end local v13    # "wrapper":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    #@106
    monitor-exit v14

    #@107
    throw v7
.end method
