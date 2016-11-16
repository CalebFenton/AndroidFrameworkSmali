.class final Lcom/android/server/NativeDaemonConnector;
.super Ljava/lang/Object;
.source "NativeDaemonConnector.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Landroid/os/Handler$Callback;
.implements Lcom/android/server/Watchdog$Monitor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/NativeDaemonConnector$Command;,
        Lcom/android/server/NativeDaemonConnector$NativeDaemonArgumentException;,
        Lcom/android/server/NativeDaemonConnector$NativeDaemonFailureException;,
        Lcom/android/server/NativeDaemonConnector$ResponseQueue;,
        Lcom/android/server/NativeDaemonConnector$SensitiveArg;
    }
.end annotation


# static fields
.field private static final DEFAULT_TIMEOUT:J = 0xea60L

.field private static final VDBG:Z = false

.field private static final WARN_EXECUTE_DELAY_MS:J = 0x1f4L


# instance fields
.field private final BUFFER_SIZE:I

.field private final TAG:Ljava/lang/String;

.field private mCallbackHandler:Landroid/os/Handler;

.field private mCallbacks:Lcom/android/server/INativeDaemonConnectorCallbacks;

.field private final mDaemonLock:Ljava/lang/Object;

.field private volatile mDebug:Z

.field private mLocalLog:Landroid/util/LocalLog;

.field private final mLooper:Landroid/os/Looper;

.field private mOutputStream:Ljava/io/OutputStream;

.field private final mResponseQueue:Lcom/android/server/NativeDaemonConnector$ResponseQueue;

.field private mSequenceNumber:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mSocket:Ljava/lang/String;

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private volatile mWarnIfHeld:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/android/server/INativeDaemonConnectorCallbacks;Ljava/lang/String;ILjava/lang/String;ILandroid/os/PowerManager$WakeLock;)V
    .locals 8
    .param p1, "callbacks"    # Lcom/android/server/INativeDaemonConnectorCallbacks;
    .param p2, "socket"    # Ljava/lang/String;
    .param p3, "responseQueueSize"    # I
    .param p4, "logTag"    # Ljava/lang/String;
    .param p5, "maxLogSize"    # I
    .param p6, "wl"    # Landroid/os/PowerManager$WakeLock;

    #@0
    .prologue
    .line 86
    invoke-static {}, Lcom/android/server/FgThread;->get()Lcom/android/server/FgThread;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Lcom/android/server/FgThread;->getLooper()Landroid/os/Looper;

    #@7
    move-result-object v7

    #@8
    move-object v0, p0

    #@9
    move-object v1, p1

    #@a
    move-object v2, p2

    #@b
    move v3, p3

    #@c
    move-object v4, p4

    #@d
    move v5, p5

    #@e
    move-object v6, p6

    #@f
    .line 85
    invoke-direct/range {v0 .. v7}, Lcom/android/server/NativeDaemonConnector;-><init>(Lcom/android/server/INativeDaemonConnectorCallbacks;Ljava/lang/String;ILjava/lang/String;ILandroid/os/PowerManager$WakeLock;Landroid/os/Looper;)V

    #@12
    .line 84
    return-void
.end method

.method constructor <init>(Lcom/android/server/INativeDaemonConnectorCallbacks;Ljava/lang/String;ILjava/lang/String;ILandroid/os/PowerManager$WakeLock;Landroid/os/Looper;)V
    .locals 3
    .param p1, "callbacks"    # Lcom/android/server/INativeDaemonConnectorCallbacks;
    .param p2, "socket"    # Ljava/lang/String;
    .param p3, "responseQueueSize"    # I
    .param p4, "logTag"    # Ljava/lang/String;
    .param p5, "maxLogSize"    # I
    .param p6, "wl"    # Landroid/os/PowerManager$WakeLock;
    .param p7, "looper"    # Landroid/os/Looper;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 61
    iput-boolean v2, p0, Lcom/android/server/NativeDaemonConnector;->mDebug:Z

    #@6
    .line 79
    new-instance v0, Ljava/lang/Object;

    #@8
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@b
    iput-object v0, p0, Lcom/android/server/NativeDaemonConnector;->mDaemonLock:Ljava/lang/Object;

    #@d
    .line 81
    const/16 v0, 0x1000

    #@f
    iput v0, p0, Lcom/android/server/NativeDaemonConnector;->BUFFER_SIZE:I

    #@11
    .line 92
    iput-object p1, p0, Lcom/android/server/NativeDaemonConnector;->mCallbacks:Lcom/android/server/INativeDaemonConnectorCallbacks;

    #@13
    .line 93
    iput-object p2, p0, Lcom/android/server/NativeDaemonConnector;->mSocket:Ljava/lang/String;

    #@15
    .line 94
    new-instance v0, Lcom/android/server/NativeDaemonConnector$ResponseQueue;

    #@17
    invoke-direct {v0, p3}, Lcom/android/server/NativeDaemonConnector$ResponseQueue;-><init>(I)V

    #@1a
    iput-object v0, p0, Lcom/android/server/NativeDaemonConnector;->mResponseQueue:Lcom/android/server/NativeDaemonConnector$ResponseQueue;

    #@1c
    .line 95
    iput-object p6, p0, Lcom/android/server/NativeDaemonConnector;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@1e
    .line 96
    iget-object v0, p0, Lcom/android/server/NativeDaemonConnector;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@20
    if-eqz v0, :cond_0

    #@22
    .line 97
    iget-object v0, p0, Lcom/android/server/NativeDaemonConnector;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@24
    const/4 v1, 0x1

    #@25
    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    #@28
    .line 99
    :cond_0
    iput-object p7, p0, Lcom/android/server/NativeDaemonConnector;->mLooper:Landroid/os/Looper;

    #@2a
    .line 100
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    #@2c
    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    #@2f
    iput-object v0, p0, Lcom/android/server/NativeDaemonConnector;->mSequenceNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    #@31
    .line 101
    if-eqz p4, :cond_1

    #@33
    .end local p4    # "logTag":Ljava/lang/String;
    :goto_0
    iput-object p4, p0, Lcom/android/server/NativeDaemonConnector;->TAG:Ljava/lang/String;

    #@35
    .line 102
    new-instance v0, Landroid/util/LocalLog;

    #@37
    invoke-direct {v0, p5}, Landroid/util/LocalLog;-><init>(I)V

    #@3a
    iput-object v0, p0, Lcom/android/server/NativeDaemonConnector;->mLocalLog:Landroid/util/LocalLog;

    #@3c
    .line 91
    return-void

    #@3d
    .line 101
    .restart local p4    # "logTag":Ljava/lang/String;
    :cond_1
    const-string/jumbo p4, "NativeDaemonConnector"

    #@40
    goto :goto_0
.end method

.method static appendEscaped(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 6
    .param p0, "builder"    # Ljava/lang/StringBuilder;
    .param p1, "arg"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    const/16 v5, 0x22

    #@3
    .line 517
    const/16 v4, 0x20

    #@5
    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(I)I

    #@8
    move-result v4

    #@9
    if-ltz v4, :cond_0

    #@b
    const/4 v1, 0x1

    #@c
    .line 518
    .local v1, "hasSpaces":Z
    :cond_0
    if-eqz v1, :cond_1

    #@e
    .line 519
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@11
    .line 522
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@14
    move-result v3

    #@15
    .line 523
    .local v3, "length":I
    const/4 v2, 0x0

    #@16
    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_4

    #@18
    .line 524
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    #@1b
    move-result v0

    #@1c
    .line 526
    .local v0, "c":C
    if-ne v0, v5, :cond_2

    #@1e
    .line 527
    const-string/jumbo v4, "\\\""

    #@21
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    .line 523
    :goto_1
    add-int/lit8 v2, v2, 0x1

    #@26
    goto :goto_0

    #@27
    .line 528
    :cond_2
    const/16 v4, 0x5c

    #@29
    if-ne v0, v4, :cond_3

    #@2b
    .line 529
    const-string/jumbo v4, "\\\\"

    #@2e
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    goto :goto_1

    #@32
    .line 531
    :cond_3
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@35
    goto :goto_1

    #@36
    .line 535
    .end local v0    # "c":C
    :cond_4
    if-eqz v1, :cond_5

    #@38
    .line 536
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@3b
    .line 516
    :cond_5
    return-void
.end method

.method private determineSocketAddress()Landroid/net/LocalSocketAddress;
    .locals 3

    #@0
    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/server/NativeDaemonConnector;->mSocket:Ljava/lang/String;

    #@2
    const-string/jumbo v1, "__test__"

    #@5
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@8
    move-result v0

    #@9
    if-eqz v0, :cond_0

    #@b
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    #@d
    if-eqz v0, :cond_0

    #@f
    .line 176
    new-instance v0, Landroid/net/LocalSocketAddress;

    #@11
    iget-object v1, p0, Lcom/android/server/NativeDaemonConnector;->mSocket:Ljava/lang/String;

    #@13
    invoke-direct {v0, v1}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;)V

    #@16
    return-object v0

    #@17
    .line 178
    :cond_0
    new-instance v0, Landroid/net/LocalSocketAddress;

    #@19
    iget-object v1, p0, Lcom/android/server/NativeDaemonConnector;->mSocket:Ljava/lang/String;

    #@1b
    sget-object v2, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    #@1d
    invoke-direct {v0, v1, v2}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    #@20
    return-object v0
.end method

.method private listenToSocket()V
    .locals 27
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 183
    const/16 v19, 0x0

    #@2
    .line 186
    .local v19, "socket":Landroid/net/LocalSocket;
    :try_start_0
    new-instance v20, Landroid/net/LocalSocket;

    #@4
    invoke-direct/range {v20 .. v20}, Landroid/net/LocalSocket;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@7
    .line 187
    .end local v19    # "socket":Landroid/net/LocalSocket;
    .local v20, "socket":Landroid/net/LocalSocket;
    :try_start_1
    invoke-direct/range {p0 .. p0}, Lcom/android/server/NativeDaemonConnector;->determineSocketAddress()Landroid/net/LocalSocketAddress;

    #@a
    move-result-object v5

    #@b
    .line 189
    .local v5, "address":Landroid/net/LocalSocketAddress;
    move-object/from16 v0, v20

    #@d
    invoke-virtual {v0, v5}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    #@10
    .line 191
    invoke-virtual/range {v20 .. v20}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    #@13
    move-result-object v14

    #@14
    .line 192
    .local v14, "inputStream":Ljava/io/InputStream;
    move-object/from16 v0, p0

    #@16
    iget-object v0, v0, Lcom/android/server/NativeDaemonConnector;->mDaemonLock:Ljava/lang/Object;

    #@18
    move-object/from16 v23, v0

    #@1a
    monitor-enter v23
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    #@1b
    .line 193
    :try_start_2
    invoke-virtual/range {v20 .. v20}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    #@1e
    move-result-object v22

    #@1f
    move-object/from16 v0, v22

    #@21
    move-object/from16 v1, p0

    #@23
    iput-object v0, v1, Lcom/android/server/NativeDaemonConnector;->mOutputStream:Ljava/io/OutputStream;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@25
    :try_start_3
    monitor-exit v23

    #@26
    .line 196
    move-object/from16 v0, p0

    #@28
    iget-object v0, v0, Lcom/android/server/NativeDaemonConnector;->mCallbacks:Lcom/android/server/INativeDaemonConnectorCallbacks;

    #@2a
    move-object/from16 v22, v0

    #@2c
    invoke-interface/range {v22 .. v22}, Lcom/android/server/INativeDaemonConnectorCallbacks;->onDaemonConnected()V

    #@2f
    .line 198
    const/4 v12, 0x0

    #@30
    .line 199
    .local v12, "fdList":[Ljava/io/FileDescriptor;
    const/16 v22, 0x1000

    #@32
    move/from16 v0, v22

    #@34
    new-array v6, v0, [B

    #@36
    .line 200
    .local v6, "buffer":[B
    const/16 v21, 0x0

    #@38
    .line 203
    .end local v12    # "fdList":[Ljava/io/FileDescriptor;
    .local v21, "start":I
    :goto_0
    move/from16 v0, v21

    #@3a
    rsub-int v0, v0, 0x1000

    #@3c
    move/from16 v22, v0

    #@3e
    move/from16 v0, v21

    #@40
    move/from16 v1, v22

    #@42
    invoke-virtual {v14, v6, v0, v1}, Ljava/io/InputStream;->read([BII)I

    #@45
    move-result v7

    #@46
    .line 204
    .local v7, "count":I
    if-gez v7, :cond_4

    #@48
    .line 205
    new-instance v22, Ljava/lang/StringBuilder;

    #@4a
    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    #@4d
    const-string/jumbo v23, "got "

    #@50
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v22

    #@54
    move-object/from16 v0, v22

    #@56
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@59
    move-result-object v22

    #@5a
    const-string/jumbo v23, " reading with start = "

    #@5d
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@60
    move-result-object v22

    #@61
    move-object/from16 v0, v22

    #@63
    move/from16 v1, v21

    #@65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@68
    move-result-object v22

    #@69
    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6c
    move-result-object v22

    #@6d
    move-object/from16 v0, p0

    #@6f
    move-object/from16 v1, v22

    #@71
    invoke-direct {v0, v1}, Lcom/android/server/NativeDaemonConnector;->loge(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    #@74
    .line 273
    move-object/from16 v0, p0

    #@76
    iget-object v0, v0, Lcom/android/server/NativeDaemonConnector;->mDaemonLock:Ljava/lang/Object;

    #@78
    move-object/from16 v23, v0

    #@7a
    monitor-enter v23

    #@7b
    .line 274
    :try_start_4
    move-object/from16 v0, p0

    #@7d
    iget-object v0, v0, Lcom/android/server/NativeDaemonConnector;->mOutputStream:Ljava/io/OutputStream;

    #@7f
    move-object/from16 v22, v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    #@81
    if-eqz v22, :cond_0

    #@83
    .line 276
    :try_start_5
    new-instance v22, Ljava/lang/StringBuilder;

    #@85
    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    #@88
    const-string/jumbo v24, "closing stream for "

    #@8b
    move-object/from16 v0, v22

    #@8d
    move-object/from16 v1, v24

    #@8f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@92
    move-result-object v22

    #@93
    move-object/from16 v0, p0

    #@95
    iget-object v0, v0, Lcom/android/server/NativeDaemonConnector;->mSocket:Ljava/lang/String;

    #@97
    move-object/from16 v24, v0

    #@99
    move-object/from16 v0, v22

    #@9b
    move-object/from16 v1, v24

    #@9d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a0
    move-result-object v22

    #@a1
    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a4
    move-result-object v22

    #@a5
    move-object/from16 v0, p0

    #@a7
    move-object/from16 v1, v22

    #@a9
    invoke-direct {v0, v1}, Lcom/android/server/NativeDaemonConnector;->loge(Ljava/lang/String;)V

    #@ac
    .line 277
    move-object/from16 v0, p0

    #@ae
    iget-object v0, v0, Lcom/android/server/NativeDaemonConnector;->mOutputStream:Ljava/io/OutputStream;

    #@b0
    move-object/from16 v22, v0

    #@b2
    invoke-virtual/range {v22 .. v22}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    #@b5
    .line 281
    :goto_1
    const/16 v22, 0x0

    #@b7
    :try_start_6
    move-object/from16 v0, v22

    #@b9
    move-object/from16 v1, p0

    #@bb
    iput-object v0, v1, Lcom/android/server/NativeDaemonConnector;->mOutputStream:Ljava/io/OutputStream;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    #@bd
    :cond_0
    monitor-exit v23

    #@be
    .line 286
    if-eqz v20, :cond_1

    #@c0
    .line 287
    :try_start_7
    invoke-virtual/range {v20 .. v20}, Landroid/net/LocalSocket;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    #@c3
    .line 182
    :cond_1
    :goto_2
    return-void

    #@c4
    .line 192
    .end local v6    # "buffer":[B
    .end local v7    # "count":I
    .end local v21    # "start":I
    :catchall_0
    move-exception v22

    #@c5
    :try_start_8
    monitor-exit v23

    #@c6
    throw v22
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    #@c7
    .line 269
    .end local v5    # "address":Landroid/net/LocalSocketAddress;
    .end local v14    # "inputStream":Ljava/io/InputStream;
    :catch_0
    move-exception v11

    #@c8
    .local v11, "ex":Ljava/io/IOException;
    move-object/from16 v19, v20

    #@ca
    .line 270
    .end local v20    # "socket":Landroid/net/LocalSocket;
    :goto_3
    :try_start_9
    new-instance v22, Ljava/lang/StringBuilder;

    #@cc
    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    #@cf
    const-string/jumbo v23, "Communications error: "

    #@d2
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d5
    move-result-object v22

    #@d6
    move-object/from16 v0, v22

    #@d8
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@db
    move-result-object v22

    #@dc
    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@df
    move-result-object v22

    #@e0
    move-object/from16 v0, p0

    #@e2
    move-object/from16 v1, v22

    #@e4
    invoke-direct {v0, v1}, Lcom/android/server/NativeDaemonConnector;->loge(Ljava/lang/String;)V

    #@e7
    .line 271
    throw v11
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    #@e8
    .line 272
    .end local v11    # "ex":Ljava/io/IOException;
    :catchall_1
    move-exception v22

    #@e9
    .line 273
    :goto_4
    move-object/from16 v0, p0

    #@eb
    iget-object v0, v0, Lcom/android/server/NativeDaemonConnector;->mDaemonLock:Ljava/lang/Object;

    #@ed
    move-object/from16 v23, v0

    #@ef
    monitor-enter v23

    #@f0
    .line 274
    :try_start_a
    move-object/from16 v0, p0

    #@f2
    iget-object v0, v0, Lcom/android/server/NativeDaemonConnector;->mOutputStream:Ljava/io/OutputStream;

    #@f4
    move-object/from16 v24, v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    #@f6
    if-eqz v24, :cond_2

    #@f8
    .line 276
    :try_start_b
    new-instance v24, Ljava/lang/StringBuilder;

    #@fa
    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    #@fd
    const-string/jumbo v25, "closing stream for "

    #@100
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@103
    move-result-object v24

    #@104
    move-object/from16 v0, p0

    #@106
    iget-object v0, v0, Lcom/android/server/NativeDaemonConnector;->mSocket:Ljava/lang/String;

    #@108
    move-object/from16 v25, v0

    #@10a
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10d
    move-result-object v24

    #@10e
    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@111
    move-result-object v24

    #@112
    move-object/from16 v0, p0

    #@114
    move-object/from16 v1, v24

    #@116
    invoke-direct {v0, v1}, Lcom/android/server/NativeDaemonConnector;->loge(Ljava/lang/String;)V

    #@119
    .line 277
    move-object/from16 v0, p0

    #@11b
    iget-object v0, v0, Lcom/android/server/NativeDaemonConnector;->mOutputStream:Ljava/io/OutputStream;

    #@11d
    move-object/from16 v24, v0

    #@11f
    invoke-virtual/range {v24 .. v24}, Ljava/io/OutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    #@122
    .line 281
    :goto_5
    const/16 v24, 0x0

    #@124
    :try_start_c
    move-object/from16 v0, v24

    #@126
    move-object/from16 v1, p0

    #@128
    iput-object v0, v1, Lcom/android/server/NativeDaemonConnector;->mOutputStream:Ljava/io/OutputStream;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    #@12a
    :cond_2
    monitor-exit v23

    #@12b
    .line 286
    if-eqz v19, :cond_3

    #@12d
    .line 287
    :try_start_d
    invoke-virtual/range {v19 .. v19}, Landroid/net/LocalSocket;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_5

    #@130
    .line 272
    :cond_3
    :goto_6
    throw v22

    #@131
    .line 208
    .restart local v5    # "address":Landroid/net/LocalSocketAddress;
    .restart local v6    # "buffer":[B
    .restart local v7    # "count":I
    .restart local v14    # "inputStream":Ljava/io/InputStream;
    .restart local v20    # "socket":Landroid/net/LocalSocket;
    .restart local v21    # "start":I
    :cond_4
    :try_start_e
    invoke-virtual/range {v20 .. v20}, Landroid/net/LocalSocket;->getAncillaryFileDescriptors()[Ljava/io/FileDescriptor;

    #@134
    move-result-object v12

    #@135
    .line 211
    .local v12, "fdList":[Ljava/io/FileDescriptor;
    add-int v7, v7, v21

    #@137
    .line 212
    const/16 v21, 0x0

    #@139
    .line 214
    const/4 v13, 0x0

    #@13a
    .local v13, "i":I
    :goto_7
    if-ge v13, v7, :cond_b

    #@13c
    .line 215
    aget-byte v22, v6, v13

    #@13e
    if-nez v22, :cond_8

    #@140
    .line 218
    new-instance v16, Ljava/lang/String;

    #@142
    .line 219
    sub-int v22, v13, v21

    #@144
    sget-object v23, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    #@146
    .line 218
    move-object/from16 v0, v16

    #@148
    move/from16 v1, v21

    #@14a
    move/from16 v2, v22

    #@14c
    move-object/from16 v3, v23

    #@14e
    invoke-direct {v0, v6, v1, v2, v3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_0
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    #@151
    .line 221
    .local v16, "rawEvent":Ljava/lang/String;
    const/16 v17, 0x0

    #@153
    .line 224
    .local v17, "releaseWl":Z
    :try_start_f
    move-object/from16 v0, v16

    #@155
    invoke-static {v0, v12}, Lcom/android/server/NativeDaemonEvent;->parseRawEvent(Ljava/lang/String;[Ljava/io/FileDescriptor;)Lcom/android/server/NativeDaemonEvent;

    #@158
    move-result-object v10

    #@159
    .line 226
    .local v10, "event":Lcom/android/server/NativeDaemonEvent;
    new-instance v22, Ljava/lang/StringBuilder;

    #@15b
    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    #@15e
    const-string/jumbo v23, "RCV <- {"

    #@161
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@164
    move-result-object v22

    #@165
    move-object/from16 v0, v22

    #@167
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@16a
    move-result-object v22

    #@16b
    const-string/jumbo v23, "}"

    #@16e
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@171
    move-result-object v22

    #@172
    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@175
    move-result-object v22

    #@176
    move-object/from16 v0, p0

    #@178
    move-object/from16 v1, v22

    #@17a
    invoke-direct {v0, v1}, Lcom/android/server/NativeDaemonConnector;->log(Ljava/lang/String;)V

    #@17d
    .line 228
    invoke-virtual {v10}, Lcom/android/server/NativeDaemonEvent;->isClassUnsolicited()Z

    #@180
    move-result v22

    #@181
    if-eqz v22, :cond_9

    #@183
    .line 230
    move-object/from16 v0, p0

    #@185
    iget-object v0, v0, Lcom/android/server/NativeDaemonConnector;->mCallbacks:Lcom/android/server/INativeDaemonConnectorCallbacks;

    #@187
    move-object/from16 v22, v0

    #@189
    invoke-virtual {v10}, Lcom/android/server/NativeDaemonEvent;->getCode()I

    #@18c
    move-result v23

    #@18d
    invoke-interface/range {v22 .. v23}, Lcom/android/server/INativeDaemonConnectorCallbacks;->onCheckHoldWakeLock(I)Z

    #@190
    move-result v22

    #@191
    if-eqz v22, :cond_5

    #@193
    .line 231
    move-object/from16 v0, p0

    #@195
    iget-object v0, v0, Lcom/android/server/NativeDaemonConnector;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@197
    move-object/from16 v22, v0

    #@199
    if-eqz v22, :cond_5

    #@19b
    .line 232
    move-object/from16 v0, p0

    #@19d
    iget-object v0, v0, Lcom/android/server/NativeDaemonConnector;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@19f
    move-object/from16 v22, v0

    #@1a1
    invoke-virtual/range {v22 .. v22}, Landroid/os/PowerManager$WakeLock;->acquire()V

    #@1a4
    .line 233
    const/16 v17, 0x1

    #@1a6
    .line 235
    :cond_5
    move-object/from16 v0, p0

    #@1a8
    iget-object v0, v0, Lcom/android/server/NativeDaemonConnector;->mCallbackHandler:Landroid/os/Handler;

    #@1aa
    move-object/from16 v22, v0

    #@1ac
    .line 236
    invoke-virtual {v10}, Lcom/android/server/NativeDaemonEvent;->getCode()I

    #@1af
    move-result v23

    #@1b0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/NativeDaemonConnector;->uptimeMillisInt()I

    #@1b3
    move-result v24

    #@1b4
    invoke-virtual {v10}, Lcom/android/server/NativeDaemonEvent;->getRawEvent()Ljava/lang/String;

    #@1b7
    move-result-object v25

    #@1b8
    const/16 v26, 0x0

    #@1ba
    .line 235
    move-object/from16 v0, v22

    #@1bc
    move/from16 v1, v23

    #@1be
    move/from16 v2, v24

    #@1c0
    move/from16 v3, v26

    #@1c2
    move-object/from16 v4, v25

    #@1c4
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    #@1c7
    move-result-object v15

    #@1c8
    .line 237
    .local v15, "msg":Landroid/os/Message;
    move-object/from16 v0, p0

    #@1ca
    iget-object v0, v0, Lcom/android/server/NativeDaemonConnector;->mCallbackHandler:Landroid/os/Handler;

    #@1cc
    move-object/from16 v22, v0

    #@1ce
    move-object/from16 v0, v22

    #@1d0
    invoke-virtual {v0, v15}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_f .. :try_end_f} :catch_1
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    #@1d3
    move-result v22

    #@1d4
    if-eqz v22, :cond_6

    #@1d6
    .line 238
    const/16 v17, 0x0

    #@1d8
    .line 246
    .end local v15    # "msg":Landroid/os/Message;
    :cond_6
    :goto_8
    if-eqz v17, :cond_7

    #@1da
    .line 247
    :try_start_10
    move-object/from16 v0, p0

    #@1dc
    iget-object v0, v0, Lcom/android/server/NativeDaemonConnector;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@1de
    move-object/from16 v22, v0

    #@1e0
    invoke-virtual/range {v22 .. v22}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_0
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    #@1e3
    .line 251
    .end local v10    # "event":Lcom/android/server/NativeDaemonEvent;
    :cond_7
    :goto_9
    add-int/lit8 v21, v13, 0x1

    #@1e5
    .line 214
    .end local v16    # "rawEvent":Ljava/lang/String;
    .end local v17    # "releaseWl":Z
    :cond_8
    add-int/lit8 v13, v13, 0x1

    #@1e7
    goto/16 :goto_7

    #@1e9
    .line 241
    .restart local v10    # "event":Lcom/android/server/NativeDaemonEvent;
    .restart local v16    # "rawEvent":Ljava/lang/String;
    .restart local v17    # "releaseWl":Z
    :cond_9
    :try_start_11
    move-object/from16 v0, p0

    #@1eb
    iget-object v0, v0, Lcom/android/server/NativeDaemonConnector;->mResponseQueue:Lcom/android/server/NativeDaemonConnector$ResponseQueue;

    #@1ed
    move-object/from16 v22, v0

    #@1ef
    invoke-virtual {v10}, Lcom/android/server/NativeDaemonEvent;->getCmdNumber()I

    #@1f2
    move-result v23

    #@1f3
    move-object/from16 v0, v22

    #@1f5
    move/from16 v1, v23

    #@1f7
    invoke-virtual {v0, v1, v10}, Lcom/android/server/NativeDaemonConnector$ResponseQueue;->add(ILcom/android/server/NativeDaemonEvent;)V
    :try_end_11
    .catch Ljava/lang/IllegalArgumentException; {:try_start_11 .. :try_end_11} :catch_1
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    #@1fa
    goto :goto_8

    #@1fb
    .line 243
    .end local v10    # "event":Lcom/android/server/NativeDaemonEvent;
    :catch_1
    move-exception v9

    #@1fc
    .line 244
    .local v9, "e":Ljava/lang/IllegalArgumentException;
    :try_start_12
    new-instance v22, Ljava/lang/StringBuilder;

    #@1fe
    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    #@201
    const-string/jumbo v23, "Problem parsing message "

    #@204
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@207
    move-result-object v22

    #@208
    move-object/from16 v0, v22

    #@20a
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@20d
    move-result-object v22

    #@20e
    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@211
    move-result-object v22

    #@212
    move-object/from16 v0, p0

    #@214
    move-object/from16 v1, v22

    #@216
    invoke-direct {v0, v1}, Lcom/android/server/NativeDaemonConnector;->log(Ljava/lang/String;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    #@219
    .line 246
    if-eqz v17, :cond_7

    #@21b
    .line 247
    :try_start_13
    move-object/from16 v0, p0

    #@21d
    iget-object v0, v0, Lcom/android/server/NativeDaemonConnector;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@21f
    move-object/from16 v22, v0

    #@221
    invoke-virtual/range {v22 .. v22}, Landroid/os/PowerManager$WakeLock;->release()V

    #@224
    goto :goto_9

    #@225
    .line 272
    .end local v5    # "address":Landroid/net/LocalSocketAddress;
    .end local v6    # "buffer":[B
    .end local v7    # "count":I
    .end local v9    # "e":Ljava/lang/IllegalArgumentException;
    .end local v12    # "fdList":[Ljava/io/FileDescriptor;
    .end local v13    # "i":I
    .end local v14    # "inputStream":Ljava/io/InputStream;
    .end local v16    # "rawEvent":Ljava/lang/String;
    .end local v17    # "releaseWl":Z
    .end local v21    # "start":I
    :catchall_2
    move-exception v22

    #@226
    move-object/from16 v19, v20

    #@228
    .end local v20    # "socket":Landroid/net/LocalSocket;
    .local v19, "socket":Landroid/net/LocalSocket;
    goto/16 :goto_4

    #@22a
    .line 245
    .end local v19    # "socket":Landroid/net/LocalSocket;
    .restart local v5    # "address":Landroid/net/LocalSocketAddress;
    .restart local v6    # "buffer":[B
    .restart local v7    # "count":I
    .restart local v12    # "fdList":[Ljava/io/FileDescriptor;
    .restart local v13    # "i":I
    .restart local v14    # "inputStream":Ljava/io/InputStream;
    .restart local v16    # "rawEvent":Ljava/lang/String;
    .restart local v17    # "releaseWl":Z
    .restart local v20    # "socket":Landroid/net/LocalSocket;
    .restart local v21    # "start":I
    :catchall_3
    move-exception v22

    #@22b
    .line 246
    if-eqz v17, :cond_a

    #@22d
    .line 247
    move-object/from16 v0, p0

    #@22f
    iget-object v0, v0, Lcom/android/server/NativeDaemonConnector;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@231
    move-object/from16 v23, v0

    #@233
    invoke-virtual/range {v23 .. v23}, Landroid/os/PowerManager$WakeLock;->release()V

    #@236
    .line 245
    :cond_a
    throw v22

    #@237
    .line 255
    .end local v16    # "rawEvent":Ljava/lang/String;
    .end local v17    # "releaseWl":Z
    :cond_b
    if-nez v21, :cond_c

    #@239
    .line 256
    const-string/jumbo v22, "RCV incomplete"

    #@23c
    move-object/from16 v0, p0

    #@23e
    move-object/from16 v1, v22

    #@240
    invoke-direct {v0, v1}, Lcom/android/server/NativeDaemonConnector;->log(Ljava/lang/String;)V

    #@243
    .line 261
    :cond_c
    move/from16 v0, v21

    #@245
    if-eq v0, v7, :cond_d

    #@247
    .line 262
    move/from16 v0, v21

    #@249
    rsub-int v0, v0, 0x1000

    #@24b
    move/from16 v18, v0

    #@24d
    .line 263
    .local v18, "remaining":I
    const/16 v22, 0x0

    #@24f
    move/from16 v0, v21

    #@251
    move/from16 v1, v22

    #@253
    move/from16 v2, v18

    #@255
    invoke-static {v6, v0, v6, v1, v2}, Ljava/lang/System;->arraycopy([BI[BII)V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_0
    .catchall {:try_start_13 .. :try_end_13} :catchall_2

    #@258
    .line 264
    move/from16 v21, v18

    #@25a
    goto/16 :goto_0

    #@25c
    .line 266
    .end local v18    # "remaining":I
    :cond_d
    const/16 v21, 0x0

    #@25e
    goto/16 :goto_0

    #@260
    .line 278
    .end local v12    # "fdList":[Ljava/io/FileDescriptor;
    .end local v13    # "i":I
    :catch_2
    move-exception v8

    #@261
    .line 279
    .local v8, "e":Ljava/io/IOException;
    :try_start_14
    new-instance v22, Ljava/lang/StringBuilder;

    #@263
    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    #@266
    const-string/jumbo v24, "Failed closing output stream: "

    #@269
    move-object/from16 v0, v22

    #@26b
    move-object/from16 v1, v24

    #@26d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@270
    move-result-object v22

    #@271
    move-object/from16 v0, v22

    #@273
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@276
    move-result-object v22

    #@277
    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27a
    move-result-object v22

    #@27b
    move-object/from16 v0, p0

    #@27d
    move-object/from16 v1, v22

    #@27f
    invoke-direct {v0, v1}, Lcom/android/server/NativeDaemonConnector;->loge(Ljava/lang/String;)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_4

    #@282
    goto/16 :goto_1

    #@284
    .line 273
    .end local v8    # "e":Ljava/io/IOException;
    :catchall_4
    move-exception v22

    #@285
    monitor-exit v23

    #@286
    throw v22

    #@287
    .line 289
    :catch_3
    move-exception v11

    #@288
    .line 290
    .restart local v11    # "ex":Ljava/io/IOException;
    new-instance v22, Ljava/lang/StringBuilder;

    #@28a
    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    #@28d
    const-string/jumbo v23, "Failed closing socket: "

    #@290
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@293
    move-result-object v22

    #@294
    move-object/from16 v0, v22

    #@296
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@299
    move-result-object v22

    #@29a
    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29d
    move-result-object v22

    #@29e
    move-object/from16 v0, p0

    #@2a0
    move-object/from16 v1, v22

    #@2a2
    invoke-direct {v0, v1}, Lcom/android/server/NativeDaemonConnector;->loge(Ljava/lang/String;)V

    #@2a5
    goto/16 :goto_2

    #@2a7
    .line 278
    .end local v5    # "address":Landroid/net/LocalSocketAddress;
    .end local v6    # "buffer":[B
    .end local v7    # "count":I
    .end local v11    # "ex":Ljava/io/IOException;
    .end local v14    # "inputStream":Ljava/io/InputStream;
    .end local v20    # "socket":Landroid/net/LocalSocket;
    .end local v21    # "start":I
    :catch_4
    move-exception v8

    #@2a8
    .line 279
    .restart local v8    # "e":Ljava/io/IOException;
    :try_start_15
    new-instance v24, Ljava/lang/StringBuilder;

    #@2aa
    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    #@2ad
    const-string/jumbo v25, "Failed closing output stream: "

    #@2b0
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b3
    move-result-object v24

    #@2b4
    move-object/from16 v0, v24

    #@2b6
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2b9
    move-result-object v24

    #@2ba
    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2bd
    move-result-object v24

    #@2be
    move-object/from16 v0, p0

    #@2c0
    move-object/from16 v1, v24

    #@2c2
    invoke-direct {v0, v1}, Lcom/android/server/NativeDaemonConnector;->loge(Ljava/lang/String;)V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_5

    #@2c5
    goto/16 :goto_5

    #@2c7
    .line 273
    .end local v8    # "e":Ljava/io/IOException;
    :catchall_5
    move-exception v22

    #@2c8
    monitor-exit v23

    #@2c9
    throw v22

    #@2ca
    .line 289
    :catch_5
    move-exception v11

    #@2cb
    .line 290
    .restart local v11    # "ex":Ljava/io/IOException;
    new-instance v23, Ljava/lang/StringBuilder;

    #@2cd
    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    #@2d0
    const-string/jumbo v24, "Failed closing socket: "

    #@2d3
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d6
    move-result-object v23

    #@2d7
    move-object/from16 v0, v23

    #@2d9
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2dc
    move-result-object v23

    #@2dd
    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2e0
    move-result-object v23

    #@2e1
    move-object/from16 v0, p0

    #@2e3
    move-object/from16 v1, v23

    #@2e5
    invoke-direct {v0, v1}, Lcom/android/server/NativeDaemonConnector;->loge(Ljava/lang/String;)V

    #@2e8
    goto/16 :goto_6

    #@2ea
    .line 269
    .end local v11    # "ex":Ljava/io/IOException;
    .local v19, "socket":Landroid/net/LocalSocket;
    :catch_6
    move-exception v11

    #@2eb
    .restart local v11    # "ex":Ljava/io/IOException;
    goto/16 :goto_3
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "logstring"    # Ljava/lang/String;

    #@0
    .prologue
    .line 590
    iget-boolean v0, p0, Lcom/android/server/NativeDaemonConnector;->mDebug:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Lcom/android/server/NativeDaemonConnector;->TAG:Ljava/lang/String;

    #@6
    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 591
    :cond_0
    iget-object v0, p0, Lcom/android/server/NativeDaemonConnector;->mLocalLog:Landroid/util/LocalLog;

    #@b
    invoke-virtual {v0, p1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    #@e
    .line 589
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "logstring"    # Ljava/lang/String;

    #@0
    .prologue
    .line 595
    iget-object v0, p0, Lcom/android/server/NativeDaemonConnector;->TAG:Ljava/lang/String;

    #@2
    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@5
    .line 596
    iget-object v0, p0, Lcom/android/server/NativeDaemonConnector;->mLocalLog:Landroid/util/LocalLog;

    #@7
    invoke-virtual {v0, p1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    #@a
    .line 594
    return-void
.end method

.method static varargs makeCommand(Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;ILjava/lang/String;[Ljava/lang/Object;)V
    .locals 7
    .param p0, "rawBuilder"    # Ljava/lang/StringBuilder;
    .param p1, "logBuilder"    # Ljava/lang/StringBuilder;
    .param p2, "sequenceNumber"    # I
    .param p3, "cmd"    # Ljava/lang/String;
    .param p4, "args"    # [Ljava/lang/Object;

    #@0
    .prologue
    const/16 v6, 0x20

    #@2
    const/4 v3, 0x0

    #@3
    .line 318
    invoke-virtual {p3, v3}, Ljava/lang/String;->indexOf(I)I

    #@6
    move-result v2

    #@7
    if-ltz v2, :cond_0

    #@9
    .line 319
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@b
    new-instance v3, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v4, "Unexpected command: "

    #@13
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v3

    #@17
    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v3

    #@1b
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v3

    #@1f
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@22
    throw v2

    #@23
    .line 321
    :cond_0
    invoke-virtual {p3, v6}, Ljava/lang/String;->indexOf(I)I

    #@26
    move-result v2

    #@27
    if-ltz v2, :cond_1

    #@29
    .line 322
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@2b
    const-string/jumbo v3, "Arguments must be separate from command"

    #@2e
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@31
    throw v2

    #@32
    .line 325
    :cond_1
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@35
    move-result-object v2

    #@36
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@39
    move-result-object v2

    #@3a
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    .line 326
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@40
    move-result-object v2

    #@41
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@44
    move-result-object v2

    #@45
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    .line 327
    array-length v4, p4

    #@49
    move v2, v3

    #@4a
    :goto_0
    if-ge v2, v4, :cond_4

    #@4c
    aget-object v0, p4, v2

    #@4e
    .line 328
    .local v0, "arg":Ljava/lang/Object;
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    #@51
    move-result-object v1

    #@52
    .line 329
    .local v1, "argString":Ljava/lang/String;
    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    #@55
    move-result v5

    #@56
    if-ltz v5, :cond_2

    #@58
    .line 330
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@5a
    new-instance v3, Ljava/lang/StringBuilder;

    #@5c
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@5f
    const-string/jumbo v4, "Unexpected argument: "

    #@62
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@65
    move-result-object v3

    #@66
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@69
    move-result-object v3

    #@6a
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6d
    move-result-object v3

    #@6e
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@71
    throw v2

    #@72
    .line 333
    :cond_2
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@75
    .line 334
    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@78
    .line 336
    invoke-static {p0, v1}, Lcom/android/server/NativeDaemonConnector;->appendEscaped(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    #@7b
    .line 337
    instance-of v5, v0, Lcom/android/server/NativeDaemonConnector$SensitiveArg;

    #@7d
    if-eqz v5, :cond_3

    #@7f
    .line 338
    const-string/jumbo v5, "[scrubbed]"

    #@82
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@85
    .line 327
    :goto_1
    add-int/lit8 v2, v2, 0x1

    #@87
    goto :goto_0

    #@88
    .line 340
    :cond_3
    invoke-static {p1, v1}, Lcom/android/server/NativeDaemonConnector;->appendEscaped(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    #@8b
    goto :goto_1

    #@8c
    .line 344
    .end local v0    # "arg":Ljava/lang/Object;
    .end local v1    # "argString":Ljava/lang/String;
    :cond_4
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@8f
    .line 317
    return-void
.end method

.method private uptimeMillisInt()I
    .locals 2

    #@0
    .prologue
    .line 118
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@3
    move-result-wide v0

    #@4
    long-to-int v0, v0

    #@5
    const v1, 0x7fffffff

    #@8
    and-int/2addr v0, v1

    #@9
    return v0
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 584
    iget-object v0, p0, Lcom/android/server/NativeDaemonConnector;->mLocalLog:Landroid/util/LocalLog;

    #@2
    invoke-virtual {v0, p1, p2, p3}, Landroid/util/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    #@5
    .line 585
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    #@8
    .line 586
    iget-object v0, p0, Lcom/android/server/NativeDaemonConnector;->mResponseQueue:Lcom/android/server/NativeDaemonConnector$ResponseQueue;

    #@a
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/NativeDaemonConnector$ResponseQueue;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    #@d
    .line 583
    return-void
.end method

.method public varargs execute(JLjava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    .locals 5
    .param p1, "timeoutMs"    # J
    .param p3, "cmd"    # Ljava/lang/String;
    .param p4, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/NativeDaemonConnectorException;
        }
    .end annotation

    #@0
    .prologue
    .line 401
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/NativeDaemonConnector;->executeForList(JLjava/lang/String;[Ljava/lang/Object;)[Lcom/android/server/NativeDaemonEvent;

    #@3
    move-result-object v0

    #@4
    .line 402
    .local v0, "events":[Lcom/android/server/NativeDaemonEvent;
    array-length v1, v0

    #@5
    const/4 v2, 0x1

    #@6
    if-eq v1, v2, :cond_0

    #@8
    .line 403
    new-instance v1, Lcom/android/server/NativeDaemonConnectorException;

    #@a
    .line 404
    new-instance v2, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v3, "Expected exactly one response, but received "

    #@12
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v2

    #@16
    array-length v3, v0

    #@17
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v2

    #@1b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v2

    #@1f
    .line 403
    invoke-direct {v1, v2}, Lcom/android/server/NativeDaemonConnectorException;-><init>(Ljava/lang/String;)V

    #@22
    throw v1

    #@23
    .line 406
    :cond_0
    const/4 v1, 0x0

    #@24
    aget-object v1, v0, v1

    #@26
    return-object v1
.end method

.method public execute(Lcom/android/server/NativeDaemonConnector$Command;)Lcom/android/server/NativeDaemonEvent;
    .locals 2
    .param p1, "cmd"    # Lcom/android/server/NativeDaemonConnector$Command;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/NativeDaemonConnectorException;
        }
    .end annotation

    #@0
    .prologue
    .line 381
    invoke-static {p1}, Lcom/android/server/NativeDaemonConnector$Command;->-get1(Lcom/android/server/NativeDaemonConnector$Command;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-static {p1}, Lcom/android/server/NativeDaemonConnector$Command;->-get0(Lcom/android/server/NativeDaemonConnector$Command;)Ljava/util/ArrayList;

    #@7
    move-result-object v1

    #@8
    invoke-virtual {v1}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    #@b
    move-result-object v1

    #@c
    invoke-virtual {p0, v0, v1}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    #@f
    move-result-object v0

    #@10
    return-object v0
.end method

.method public varargs execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    .locals 2
    .param p1, "cmd"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/NativeDaemonConnectorException;
        }
    .end annotation

    #@0
    .prologue
    .line 396
    const-wide/32 v0, 0xea60

    #@3
    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/android/server/NativeDaemonConnector;->execute(JLjava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method public varargs executeForList(JLjava/lang/String;[Ljava/lang/Object;)[Lcom/android/server/NativeDaemonEvent;
    .locals 19
    .param p1, "timeoutMs"    # J
    .param p3, "cmd"    # Ljava/lang/String;
    .param p4, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/NativeDaemonConnectorException;
        }
    .end annotation

    #@0
    .prologue
    .line 453
    move-object/from16 v0, p0

    #@2
    iget-object v14, v0, Lcom/android/server/NativeDaemonConnector;->mWarnIfHeld:Ljava/lang/Object;

    #@4
    if-eqz v14, :cond_0

    #@6
    move-object/from16 v0, p0

    #@8
    iget-object v14, v0, Lcom/android/server/NativeDaemonConnector;->mWarnIfHeld:Ljava/lang/Object;

    #@a
    invoke-static {v14}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    #@d
    move-result v14

    #@e
    if-eqz v14, :cond_0

    #@10
    .line 454
    move-object/from16 v0, p0

    #@12
    iget-object v14, v0, Lcom/android/server/NativeDaemonConnector;->TAG:Ljava/lang/String;

    #@14
    new-instance v15, Ljava/lang/StringBuilder;

    #@16
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@19
    const-string/jumbo v16, "Calling thread "

    #@1c
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v15

    #@20
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@23
    move-result-object v16

    #@24
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    #@27
    move-result-object v16

    #@28
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v15

    #@2c
    const-string/jumbo v16, " is holding 0x"

    #@2f
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v15

    #@33
    .line 455
    move-object/from16 v0, p0

    #@35
    iget-object v0, v0, Lcom/android/server/NativeDaemonConnector;->mWarnIfHeld:Ljava/lang/Object;

    #@37
    move-object/from16 v16, v0

    #@39
    invoke-static/range {v16 .. v16}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    #@3c
    move-result v16

    #@3d
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@40
    move-result-object v16

    #@41
    .line 454
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v15

    #@45
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@48
    move-result-object v15

    #@49
    .line 455
    new-instance v16, Ljava/lang/Throwable;

    #@4b
    invoke-direct/range {v16 .. v16}, Ljava/lang/Throwable;-><init>()V

    #@4e
    .line 454
    invoke-static/range {v14 .. v16}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@51
    .line 458
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@54
    move-result-wide v12

    #@55
    .line 460
    .local v12, "startTime":J
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    #@58
    move-result-object v6

    #@59
    .line 462
    .local v6, "events":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/NativeDaemonEvent;>;"
    new-instance v9, Ljava/lang/StringBuilder;

    #@5b
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@5e
    .line 463
    .local v9, "rawBuilder":Ljava/lang/StringBuilder;
    new-instance v7, Ljava/lang/StringBuilder;

    #@60
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@63
    .line 464
    .local v7, "logBuilder":Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    #@65
    iget-object v14, v0, Lcom/android/server/NativeDaemonConnector;->mSequenceNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    #@67
    invoke-virtual {v14}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    #@6a
    move-result v11

    #@6b
    .line 466
    .local v11, "sequenceNumber":I
    move-object/from16 v0, p3

    #@6d
    move-object/from16 v1, p4

    #@6f
    invoke-static {v9, v7, v11, v0, v1}, Lcom/android/server/NativeDaemonConnector;->makeCommand(Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;ILjava/lang/String;[Ljava/lang/Object;)V

    #@72
    .line 468
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@75
    move-result-object v10

    #@76
    .line 469
    .local v10, "rawCmd":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@79
    move-result-object v8

    #@7a
    .line 471
    .local v8, "logCmd":Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    #@7c
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    #@7f
    const-string/jumbo v15, "SND -> {"

    #@82
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@85
    move-result-object v14

    #@86
    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@89
    move-result-object v14

    #@8a
    const-string/jumbo v15, "}"

    #@8d
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@90
    move-result-object v14

    #@91
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@94
    move-result-object v14

    #@95
    move-object/from16 v0, p0

    #@97
    invoke-direct {v0, v14}, Lcom/android/server/NativeDaemonConnector;->log(Ljava/lang/String;)V

    #@9a
    .line 473
    move-object/from16 v0, p0

    #@9c
    iget-object v15, v0, Lcom/android/server/NativeDaemonConnector;->mDaemonLock:Ljava/lang/Object;

    #@9e
    monitor-enter v15

    #@9f
    .line 474
    :try_start_0
    move-object/from16 v0, p0

    #@a1
    iget-object v14, v0, Lcom/android/server/NativeDaemonConnector;->mOutputStream:Ljava/io/OutputStream;

    #@a3
    if-nez v14, :cond_1

    #@a5
    .line 475
    new-instance v14, Lcom/android/server/NativeDaemonConnectorException;

    #@a7
    const-string/jumbo v16, "missing output stream"

    #@aa
    move-object/from16 v0, v16

    #@ac
    invoke-direct {v14, v0}, Lcom/android/server/NativeDaemonConnectorException;-><init>(Ljava/lang/String;)V

    #@af
    throw v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b0
    .line 473
    :catchall_0
    move-exception v14

    #@b1
    monitor-exit v15

    #@b2
    throw v14

    #@b3
    .line 478
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    #@b5
    iget-object v14, v0, Lcom/android/server/NativeDaemonConnector;->mOutputStream:Ljava/io/OutputStream;

    #@b7
    sget-object v16, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    #@b9
    move-object/from16 v0, v16

    #@bb
    invoke-virtual {v10, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    #@be
    move-result-object v16

    #@bf
    move-object/from16 v0, v16

    #@c1
    invoke-virtual {v14, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@c4
    monitor-exit v15

    #@c5
    .line 485
    const/4 v3, 0x0

    #@c6
    .line 487
    :cond_2
    move-object/from16 v0, p0

    #@c8
    iget-object v14, v0, Lcom/android/server/NativeDaemonConnector;->mResponseQueue:Lcom/android/server/NativeDaemonConnector$ResponseQueue;

    #@ca
    move-wide/from16 v0, p1

    #@cc
    invoke-virtual {v14, v11, v0, v1, v8}, Lcom/android/server/NativeDaemonConnector$ResponseQueue;->remove(IJLjava/lang/String;)Lcom/android/server/NativeDaemonEvent;

    #@cf
    move-result-object v3

    #@d0
    .line 488
    .local v3, "event":Lcom/android/server/NativeDaemonEvent;
    if-nez v3, :cond_3

    #@d2
    .line 489
    new-instance v14, Ljava/lang/StringBuilder;

    #@d4
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    #@d7
    const-string/jumbo v15, "timed-out waiting for response to "

    #@da
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@dd
    move-result-object v14

    #@de
    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e1
    move-result-object v14

    #@e2
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e5
    move-result-object v14

    #@e6
    move-object/from16 v0, p0

    #@e8
    invoke-direct {v0, v14}, Lcom/android/server/NativeDaemonConnector;->loge(Ljava/lang/String;)V

    #@eb
    .line 490
    new-instance v14, Lcom/android/server/NativeDaemonTimeoutException;

    #@ed
    invoke-direct {v14, v8, v3}, Lcom/android/server/NativeDaemonTimeoutException;-><init>(Ljava/lang/String;Lcom/android/server/NativeDaemonEvent;)V

    #@f0
    throw v14

    #@f1
    .line 479
    .end local v3    # "event":Lcom/android/server/NativeDaemonEvent;
    :catch_0
    move-exception v2

    #@f2
    .line 480
    .local v2, "e":Ljava/io/IOException;
    :try_start_2
    new-instance v14, Lcom/android/server/NativeDaemonConnectorException;

    #@f4
    const-string/jumbo v16, "problem sending command"

    #@f7
    move-object/from16 v0, v16

    #@f9
    invoke-direct {v14, v0, v2}, Lcom/android/server/NativeDaemonConnectorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@fc
    throw v14
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@fd
    .line 493
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v3    # "event":Lcom/android/server/NativeDaemonEvent;
    :cond_3
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@100
    .line 494
    invoke-virtual {v3}, Lcom/android/server/NativeDaemonEvent;->isClassContinue()Z

    #@103
    move-result v14

    #@104
    if-nez v14, :cond_2

    #@106
    .line 496
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@109
    move-result-wide v4

    #@10a
    .line 497
    .local v4, "endTime":J
    sub-long v14, v4, v12

    #@10c
    const-wide/16 v16, 0x1f4

    #@10e
    cmp-long v14, v14, v16

    #@110
    if-lez v14, :cond_4

    #@112
    .line 498
    new-instance v14, Ljava/lang/StringBuilder;

    #@114
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    #@117
    const-string/jumbo v15, "NDC Command {"

    #@11a
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11d
    move-result-object v14

    #@11e
    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@121
    move-result-object v14

    #@122
    const-string/jumbo v15, "} took too long ("

    #@125
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@128
    move-result-object v14

    #@129
    sub-long v16, v4, v12

    #@12b
    move-wide/from16 v0, v16

    #@12d
    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@130
    move-result-object v14

    #@131
    const-string/jumbo v15, "ms)"

    #@134
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@137
    move-result-object v14

    #@138
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13b
    move-result-object v14

    #@13c
    move-object/from16 v0, p0

    #@13e
    invoke-direct {v0, v14}, Lcom/android/server/NativeDaemonConnector;->loge(Ljava/lang/String;)V

    #@141
    .line 501
    :cond_4
    invoke-virtual {v3}, Lcom/android/server/NativeDaemonEvent;->isClassClientError()Z

    #@144
    move-result v14

    #@145
    if-eqz v14, :cond_5

    #@147
    .line 502
    new-instance v14, Lcom/android/server/NativeDaemonConnector$NativeDaemonArgumentException;

    #@149
    invoke-direct {v14, v8, v3}, Lcom/android/server/NativeDaemonConnector$NativeDaemonArgumentException;-><init>(Ljava/lang/String;Lcom/android/server/NativeDaemonEvent;)V

    #@14c
    throw v14

    #@14d
    .line 504
    :cond_5
    invoke-virtual {v3}, Lcom/android/server/NativeDaemonEvent;->isClassServerError()Z

    #@150
    move-result v14

    #@151
    if-eqz v14, :cond_6

    #@153
    .line 505
    new-instance v14, Lcom/android/server/NativeDaemonConnector$NativeDaemonFailureException;

    #@155
    invoke-direct {v14, v8, v3}, Lcom/android/server/NativeDaemonConnector$NativeDaemonFailureException;-><init>(Ljava/lang/String;Lcom/android/server/NativeDaemonEvent;)V

    #@158
    throw v14

    #@159
    .line 508
    :cond_6
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    #@15c
    move-result v14

    #@15d
    new-array v14, v14, [Lcom/android/server/NativeDaemonEvent;

    #@15f
    invoke-virtual {v6, v14}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@162
    move-result-object v14

    #@163
    check-cast v14, [Lcom/android/server/NativeDaemonEvent;

    #@165
    return-object v14
.end method

.method public executeForList(Lcom/android/server/NativeDaemonConnector$Command;)[Lcom/android/server/NativeDaemonEvent;
    .locals 2
    .param p1, "cmd"    # Lcom/android/server/NativeDaemonConnector$Command;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/NativeDaemonConnectorException;
        }
    .end annotation

    #@0
    .prologue
    .line 420
    invoke-static {p1}, Lcom/android/server/NativeDaemonConnector$Command;->-get1(Lcom/android/server/NativeDaemonConnector$Command;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-static {p1}, Lcom/android/server/NativeDaemonConnector$Command;->-get0(Lcom/android/server/NativeDaemonConnector$Command;)Ljava/util/ArrayList;

    #@7
    move-result-object v1

    #@8
    invoke-virtual {v1}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    #@b
    move-result-object v1

    #@c
    invoke-virtual {p0, v0, v1}, Lcom/android/server/NativeDaemonConnector;->executeForList(Ljava/lang/String;[Ljava/lang/Object;)[Lcom/android/server/NativeDaemonEvent;

    #@f
    move-result-object v0

    #@10
    return-object v0
.end method

.method public varargs executeForList(Ljava/lang/String;[Ljava/lang/Object;)[Lcom/android/server/NativeDaemonEvent;
    .locals 2
    .param p1, "cmd"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/NativeDaemonConnectorException;
        }
    .end annotation

    #@0
    .prologue
    .line 436
    const-wide/32 v0, 0xea60

    #@3
    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/android/server/NativeDaemonConnector;->executeForList(JLjava/lang/String;[Ljava/lang/Object;)[Lcom/android/server/NativeDaemonEvent;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 14
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    const-wide/16 v12, 0x1f4

    #@2
    const/4 v11, 0x2

    #@3
    const/4 v10, 0x0

    #@4
    const/4 v9, 0x1

    #@5
    .line 146
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@7
    check-cast v2, Ljava/lang/String;

    #@9
    .line 147
    .local v2, "event":Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/server/NativeDaemonConnector;->uptimeMillisInt()I

    #@c
    move-result v4

    #@d
    .line 148
    .local v4, "start":I
    iget v3, p1, Landroid/os/Message;->arg1:I

    #@f
    .line 150
    .local v3, "sent":I
    :try_start_0
    iget-object v5, p0, Lcom/android/server/NativeDaemonConnector;->mCallbacks:Lcom/android/server/INativeDaemonConnectorCallbacks;

    #@11
    iget v6, p1, Landroid/os/Message;->what:I

    #@13
    invoke-static {v2}, Lcom/android/server/NativeDaemonEvent;->unescapeArgs(Ljava/lang/String;)[Ljava/lang/String;

    #@16
    move-result-object v7

    #@17
    invoke-interface {v5, v6, v2, v7}, Lcom/android/server/INativeDaemonConnectorCallbacks;->onEvent(ILjava/lang/String;[Ljava/lang/String;)Z

    #@1a
    move-result v5

    #@1b
    if-nez v5, :cond_0

    #@1d
    .line 151
    const-string/jumbo v5, "Unhandled event \'%s\'"

    #@20
    const/4 v6, 0x1

    #@21
    new-array v6, v6, [Ljava/lang/Object;

    #@23
    const/4 v7, 0x0

    #@24
    aput-object v2, v6, v7

    #@26
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@29
    move-result-object v5

    #@2a
    invoke-direct {p0, v5}, Lcom/android/server/NativeDaemonConnector;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2d
    .line 156
    :cond_0
    iget-object v5, p0, Lcom/android/server/NativeDaemonConnector;->mCallbacks:Lcom/android/server/INativeDaemonConnectorCallbacks;

    #@2f
    iget v6, p1, Landroid/os/Message;->what:I

    #@31
    invoke-interface {v5, v6}, Lcom/android/server/INativeDaemonConnectorCallbacks;->onCheckHoldWakeLock(I)Z

    #@34
    move-result v5

    #@35
    if-eqz v5, :cond_1

    #@37
    iget-object v5, p0, Lcom/android/server/NativeDaemonConnector;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@39
    if-eqz v5, :cond_1

    #@3b
    .line 157
    iget-object v5, p0, Lcom/android/server/NativeDaemonConnector;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@3d
    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->release()V

    #@40
    .line 159
    :cond_1
    invoke-direct {p0}, Lcom/android/server/NativeDaemonConnector;->uptimeMillisInt()I

    #@43
    move-result v1

    #@44
    .line 160
    .local v1, "end":I
    if-le v4, v3, :cond_2

    #@46
    sub-int v5, v4, v3

    #@48
    int-to-long v6, v5

    #@49
    cmp-long v5, v6, v12

    #@4b
    if-lez v5, :cond_2

    #@4d
    .line 161
    const-string/jumbo v5, "NDC event {%s} processed too late: %dms"

    #@50
    new-array v6, v11, [Ljava/lang/Object;

    #@52
    aput-object v2, v6, v10

    #@54
    sub-int v7, v4, v3

    #@56
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@59
    move-result-object v7

    #@5a
    aput-object v7, v6, v9

    #@5c
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@5f
    move-result-object v5

    #@60
    invoke-direct {p0, v5}, Lcom/android/server/NativeDaemonConnector;->loge(Ljava/lang/String;)V

    #@63
    .line 163
    :cond_2
    if-le v1, v4, :cond_3

    #@65
    sub-int v5, v1, v4

    #@67
    int-to-long v6, v5

    #@68
    cmp-long v5, v6, v12

    #@6a
    if-lez v5, :cond_3

    #@6c
    .line 164
    const-string/jumbo v5, "NDC event {%s} took too long: %dms"

    #@6f
    new-array v6, v11, [Ljava/lang/Object;

    #@71
    aput-object v2, v6, v10

    #@73
    sub-int v7, v1, v4

    #@75
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@78
    move-result-object v7

    #@79
    aput-object v7, v6, v9

    #@7b
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@7e
    move-result-object v5

    #@7f
    invoke-direct {p0, v5}, Lcom/android/server/NativeDaemonConnector;->loge(Ljava/lang/String;)V

    #@82
    .line 167
    :cond_3
    :goto_0
    return v9

    #@83
    .line 153
    .end local v1    # "end":I
    :catch_0
    move-exception v0

    #@84
    .line 154
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    #@86
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@89
    const-string/jumbo v6, "Error handling \'"

    #@8c
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8f
    move-result-object v5

    #@90
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@93
    move-result-object v5

    #@94
    const-string/jumbo v6, "\': "

    #@97
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9a
    move-result-object v5

    #@9b
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@9e
    move-result-object v5

    #@9f
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a2
    move-result-object v5

    #@a3
    invoke-direct {p0, v5}, Lcom/android/server/NativeDaemonConnector;->loge(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@a6
    .line 156
    iget-object v5, p0, Lcom/android/server/NativeDaemonConnector;->mCallbacks:Lcom/android/server/INativeDaemonConnectorCallbacks;

    #@a8
    iget v6, p1, Landroid/os/Message;->what:I

    #@aa
    invoke-interface {v5, v6}, Lcom/android/server/INativeDaemonConnectorCallbacks;->onCheckHoldWakeLock(I)Z

    #@ad
    move-result v5

    #@ae
    if-eqz v5, :cond_4

    #@b0
    iget-object v5, p0, Lcom/android/server/NativeDaemonConnector;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@b2
    if-eqz v5, :cond_4

    #@b4
    .line 157
    iget-object v5, p0, Lcom/android/server/NativeDaemonConnector;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@b6
    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->release()V

    #@b9
    .line 159
    :cond_4
    invoke-direct {p0}, Lcom/android/server/NativeDaemonConnector;->uptimeMillisInt()I

    #@bc
    move-result v1

    #@bd
    .line 160
    .restart local v1    # "end":I
    if-le v4, v3, :cond_5

    #@bf
    sub-int v5, v4, v3

    #@c1
    int-to-long v6, v5

    #@c2
    cmp-long v5, v6, v12

    #@c4
    if-lez v5, :cond_5

    #@c6
    .line 161
    const-string/jumbo v5, "NDC event {%s} processed too late: %dms"

    #@c9
    new-array v6, v11, [Ljava/lang/Object;

    #@cb
    aput-object v2, v6, v10

    #@cd
    sub-int v7, v4, v3

    #@cf
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@d2
    move-result-object v7

    #@d3
    aput-object v7, v6, v9

    #@d5
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@d8
    move-result-object v5

    #@d9
    invoke-direct {p0, v5}, Lcom/android/server/NativeDaemonConnector;->loge(Ljava/lang/String;)V

    #@dc
    .line 163
    :cond_5
    if-le v1, v4, :cond_3

    #@de
    sub-int v5, v1, v4

    #@e0
    int-to-long v6, v5

    #@e1
    cmp-long v5, v6, v12

    #@e3
    if-lez v5, :cond_3

    #@e5
    .line 164
    const-string/jumbo v5, "NDC event {%s} took too long: %dms"

    #@e8
    new-array v6, v11, [Ljava/lang/Object;

    #@ea
    aput-object v2, v6, v10

    #@ec
    sub-int v7, v1, v4

    #@ee
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@f1
    move-result-object v7

    #@f2
    aput-object v7, v6, v9

    #@f4
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@f7
    move-result-object v5

    #@f8
    invoke-direct {p0, v5}, Lcom/android/server/NativeDaemonConnector;->loge(Ljava/lang/String;)V

    #@fb
    goto :goto_0

    #@fc
    .line 155
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "end":I
    :catchall_0
    move-exception v5

    #@fd
    .line 156
    iget-object v6, p0, Lcom/android/server/NativeDaemonConnector;->mCallbacks:Lcom/android/server/INativeDaemonConnectorCallbacks;

    #@ff
    iget v7, p1, Landroid/os/Message;->what:I

    #@101
    invoke-interface {v6, v7}, Lcom/android/server/INativeDaemonConnectorCallbacks;->onCheckHoldWakeLock(I)Z

    #@104
    move-result v6

    #@105
    if-eqz v6, :cond_6

    #@107
    iget-object v6, p0, Lcom/android/server/NativeDaemonConnector;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@109
    if-eqz v6, :cond_6

    #@10b
    .line 157
    iget-object v6, p0, Lcom/android/server/NativeDaemonConnector;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@10d
    invoke-virtual {v6}, Landroid/os/PowerManager$WakeLock;->release()V

    #@110
    .line 159
    :cond_6
    invoke-direct {p0}, Lcom/android/server/NativeDaemonConnector;->uptimeMillisInt()I

    #@113
    move-result v1

    #@114
    .line 160
    .restart local v1    # "end":I
    if-le v4, v3, :cond_7

    #@116
    sub-int v6, v4, v3

    #@118
    int-to-long v6, v6

    #@119
    cmp-long v6, v6, v12

    #@11b
    if-lez v6, :cond_7

    #@11d
    .line 161
    const-string/jumbo v6, "NDC event {%s} processed too late: %dms"

    #@120
    new-array v7, v11, [Ljava/lang/Object;

    #@122
    aput-object v2, v7, v10

    #@124
    sub-int v8, v4, v3

    #@126
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@129
    move-result-object v8

    #@12a
    aput-object v8, v7, v9

    #@12c
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@12f
    move-result-object v6

    #@130
    invoke-direct {p0, v6}, Lcom/android/server/NativeDaemonConnector;->loge(Ljava/lang/String;)V

    #@133
    .line 163
    :cond_7
    if-le v1, v4, :cond_8

    #@135
    sub-int v6, v1, v4

    #@137
    int-to-long v6, v6

    #@138
    cmp-long v6, v6, v12

    #@13a
    if-lez v6, :cond_8

    #@13c
    .line 164
    const-string/jumbo v6, "NDC event {%s} took too long: %dms"

    #@13f
    new-array v7, v11, [Ljava/lang/Object;

    #@141
    aput-object v2, v7, v10

    #@143
    sub-int v8, v1, v4

    #@145
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@148
    move-result-object v8

    #@149
    aput-object v8, v7, v9

    #@14b
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@14e
    move-result-object v6

    #@14f
    invoke-direct {p0, v6}, Lcom/android/server/NativeDaemonConnector;->loge(Ljava/lang/String;)V

    #@152
    .line 155
    :cond_8
    throw v5
.end method

.method public monitor()V
    .locals 1

    #@0
    .prologue
    .line 580
    iget-object v0, p0, Lcom/android/server/NativeDaemonConnector;->mDaemonLock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    monitor-exit v0

    #@4
    .line 579
    return-void
.end method

.method public run()V
    .locals 4

    #@0
    .prologue
    .line 132
    new-instance v1, Landroid/os/Handler;

    #@2
    iget-object v2, p0, Lcom/android/server/NativeDaemonConnector;->mLooper:Landroid/os/Looper;

    #@4
    invoke-direct {v1, v2, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    #@7
    iput-object v1, p0, Lcom/android/server/NativeDaemonConnector;->mCallbackHandler:Landroid/os/Handler;

    #@9
    .line 136
    :goto_0
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/NativeDaemonConnector;->listenToSocket()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@c
    goto :goto_0

    #@d
    .line 137
    :catch_0
    move-exception v0

    #@e
    .line 138
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    const-string/jumbo v2, "Error in NativeDaemonConnector: "

    #@16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v1

    #@1e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v1

    #@22
    invoke-direct {p0, v1}, Lcom/android/server/NativeDaemonConnector;->loge(Ljava/lang/String;)V

    #@25
    .line 139
    const-wide/16 v2, 0x1388

    #@27
    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    #@2a
    goto :goto_0
.end method

.method public setDebug(Z)V
    .locals 0
    .param p1, "debug"    # Z

    #@0
    .prologue
    .line 110
    iput-boolean p1, p0, Lcom/android/server/NativeDaemonConnector;->mDebug:Z

    #@2
    .line 109
    return-void
.end method

.method public setWarnIfHeld(Ljava/lang/Object;)V
    .locals 1
    .param p1, "warnIfHeld"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/server/NativeDaemonConnector;->mWarnIfHeld:Ljava/lang/Object;

    #@2
    if-nez v0, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    :goto_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    #@8
    .line 127
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@b
    move-result-object v0

    #@c
    iput-object v0, p0, Lcom/android/server/NativeDaemonConnector;->mWarnIfHeld:Ljava/lang/Object;

    #@e
    .line 125
    return-void

    #@f
    .line 126
    :cond_0
    const/4 v0, 0x0

    #@10
    goto :goto_0
.end method

.method public waitForCallbacks()V
    .locals 4

    #@0
    .prologue
    .line 353
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@3
    move-result-object v2

    #@4
    iget-object v3, p0, Lcom/android/server/NativeDaemonConnector;->mLooper:Landroid/os/Looper;

    #@6
    invoke-virtual {v3}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    #@9
    move-result-object v3

    #@a
    if-ne v2, v3, :cond_0

    #@c
    .line 354
    new-instance v2, Ljava/lang/IllegalStateException;

    #@e
    const-string/jumbo v3, "Must not call this method on callback thread"

    #@11
    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@14
    throw v2

    #@15
    .line 357
    :cond_0
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    #@17
    const/4 v2, 0x1

    #@18
    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    #@1b
    .line 358
    .local v1, "latch":Ljava/util/concurrent/CountDownLatch;
    iget-object v2, p0, Lcom/android/server/NativeDaemonConnector;->mCallbackHandler:Landroid/os/Handler;

    #@1d
    new-instance v3, Lcom/android/server/NativeDaemonConnector$1;

    #@1f
    invoke-direct {v3, p0, v1}, Lcom/android/server/NativeDaemonConnector$1;-><init>(Lcom/android/server/NativeDaemonConnector;Ljava/util/concurrent/CountDownLatch;)V

    #@22
    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@25
    .line 365
    :try_start_0
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    #@28
    .line 352
    :goto_0
    return-void

    #@29
    .line 366
    :catch_0
    move-exception v0

    #@2a
    .line 367
    .local v0, "e":Ljava/lang/InterruptedException;
    iget-object v2, p0, Lcom/android/server/NativeDaemonConnector;->TAG:Ljava/lang/String;

    #@2c
    const-string/jumbo v3, "Interrupted while waiting for unsolicited response handling"

    #@2f
    invoke-static {v2, v3, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@32
    goto :goto_0
.end method
