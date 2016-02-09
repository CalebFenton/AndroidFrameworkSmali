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
        Lcom/android/server/NativeDaemonConnector$SensitiveArg;,
        Lcom/android/server/NativeDaemonConnector$NativeDaemonArgumentException;,
        Lcom/android/server/NativeDaemonConnector$NativeDaemonFailureException;,
        Lcom/android/server/NativeDaemonConnector$Command;,
        Lcom/android/server/NativeDaemonConnector$ResponseQueue;
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
    .line 83
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
    .line 82
    invoke-direct/range {v0 .. v7}, Lcom/android/server/NativeDaemonConnector;-><init>(Lcom/android/server/INativeDaemonConnectorCallbacks;Ljava/lang/String;ILjava/lang/String;ILandroid/os/PowerManager$WakeLock;Landroid/os/Looper;)V

    #@12
    .line 81
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
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 59
    iput-boolean v2, p0, Lcom/android/server/NativeDaemonConnector;->mDebug:Z

    #@6
    .line 76
    new-instance v0, Ljava/lang/Object;

    #@8
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@b
    iput-object v0, p0, Lcom/android/server/NativeDaemonConnector;->mDaemonLock:Ljava/lang/Object;

    #@d
    .line 78
    const/16 v0, 0x1000

    #@f
    iput v0, p0, Lcom/android/server/NativeDaemonConnector;->BUFFER_SIZE:I

    #@11
    .line 89
    iput-object p1, p0, Lcom/android/server/NativeDaemonConnector;->mCallbacks:Lcom/android/server/INativeDaemonConnectorCallbacks;

    #@13
    .line 90
    iput-object p2, p0, Lcom/android/server/NativeDaemonConnector;->mSocket:Ljava/lang/String;

    #@15
    .line 91
    new-instance v0, Lcom/android/server/NativeDaemonConnector$ResponseQueue;

    #@17
    invoke-direct {v0, p3}, Lcom/android/server/NativeDaemonConnector$ResponseQueue;-><init>(I)V

    #@1a
    iput-object v0, p0, Lcom/android/server/NativeDaemonConnector;->mResponseQueue:Lcom/android/server/NativeDaemonConnector$ResponseQueue;

    #@1c
    .line 92
    iput-object p6, p0, Lcom/android/server/NativeDaemonConnector;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@1e
    .line 93
    iget-object v0, p0, Lcom/android/server/NativeDaemonConnector;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@20
    if-eqz v0, :cond_0

    #@22
    .line 94
    iget-object v0, p0, Lcom/android/server/NativeDaemonConnector;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@24
    const/4 v1, 0x1

    #@25
    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    #@28
    .line 96
    :cond_0
    iput-object p7, p0, Lcom/android/server/NativeDaemonConnector;->mLooper:Landroid/os/Looper;

    #@2a
    .line 97
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    #@2c
    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    #@2f
    iput-object v0, p0, Lcom/android/server/NativeDaemonConnector;->mSequenceNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    #@31
    .line 98
    if-eqz p4, :cond_1

    #@33
    .end local p4    # "logTag":Ljava/lang/String;
    :goto_0
    iput-object p4, p0, Lcom/android/server/NativeDaemonConnector;->TAG:Ljava/lang/String;

    #@35
    .line 99
    new-instance v0, Landroid/util/LocalLog;

    #@37
    invoke-direct {v0, p5}, Landroid/util/LocalLog;-><init>(I)V

    #@3a
    iput-object v0, p0, Lcom/android/server/NativeDaemonConnector;->mLocalLog:Landroid/util/LocalLog;

    #@3c
    .line 88
    return-void

    #@3d
    .line 98
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
    const/16 v5, 0x22

    #@2
    .line 456
    const/16 v4, 0x20

    #@4
    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(I)I

    #@7
    move-result v4

    #@8
    if-ltz v4, :cond_1

    #@a
    const/4 v1, 0x1

    #@b
    .line 457
    .local v1, "hasSpaces":Z
    :goto_0
    if-eqz v1, :cond_0

    #@d
    .line 458
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@10
    .line 461
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@13
    move-result v3

    #@14
    .line 462
    .local v3, "length":I
    const/4 v2, 0x0

    #@15
    .local v2, "i":I
    :goto_1
    if-ge v2, v3, :cond_4

    #@17
    .line 463
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    #@1a
    move-result v0

    #@1b
    .line 465
    .local v0, "c":C
    if-ne v0, v5, :cond_2

    #@1d
    .line 466
    const-string/jumbo v4, "\\\""

    #@20
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    .line 462
    :goto_2
    add-int/lit8 v2, v2, 0x1

    #@25
    goto :goto_1

    #@26
    .line 456
    .end local v0    # "c":C
    .end local v1    # "hasSpaces":Z
    .end local v2    # "i":I
    .end local v3    # "length":I
    :cond_1
    const/4 v1, 0x0

    #@27
    .restart local v1    # "hasSpaces":Z
    goto :goto_0

    #@28
    .line 467
    .restart local v0    # "c":C
    .restart local v2    # "i":I
    .restart local v3    # "length":I
    :cond_2
    const/16 v4, 0x5c

    #@2a
    if-ne v0, v4, :cond_3

    #@2c
    .line 468
    const-string/jumbo v4, "\\\\"

    #@2f
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    goto :goto_2

    #@33
    .line 470
    :cond_3
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@36
    goto :goto_2

    #@37
    .line 474
    .end local v0    # "c":C
    :cond_4
    if-eqz v1, :cond_5

    #@39
    .line 475
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@3c
    .line 455
    :cond_5
    return-void
.end method

.method private determineSocketAddress()Landroid/net/LocalSocketAddress;
    .locals 3

    #@0
    .prologue
    .line 146
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
    .line 147
    new-instance v0, Landroid/net/LocalSocketAddress;

    #@11
    iget-object v1, p0, Lcom/android/server/NativeDaemonConnector;->mSocket:Ljava/lang/String;

    #@13
    invoke-direct {v0, v1}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;)V

    #@16
    return-object v0

    #@17
    .line 149
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
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 154
    const/4 v15, 0x0

    #@1
    .line 157
    .local v15, "socket":Landroid/net/LocalSocket;
    :try_start_0
    new-instance v16, Landroid/net/LocalSocket;

    #@3
    invoke-direct/range {v16 .. v16}, Landroid/net/LocalSocket;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@6
    .line 158
    .end local v15    # "socket":Landroid/net/LocalSocket;
    .local v16, "socket":Landroid/net/LocalSocket;
    :try_start_1
    invoke-direct/range {p0 .. p0}, Lcom/android/server/NativeDaemonConnector;->determineSocketAddress()Landroid/net/LocalSocketAddress;

    #@9
    move-result-object v3

    #@a
    .line 160
    .local v3, "address":Landroid/net/LocalSocketAddress;
    move-object/from16 v0, v16

    #@c
    invoke-virtual {v0, v3}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    #@f
    .line 162
    invoke-virtual/range {v16 .. v16}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    #@12
    move-result-object v11

    #@13
    .line 163
    .local v11, "inputStream":Ljava/io/InputStream;
    move-object/from16 v0, p0

    #@15
    iget-object v0, v0, Lcom/android/server/NativeDaemonConnector;->mDaemonLock:Ljava/lang/Object;

    #@17
    move-object/from16 v19, v0

    #@19
    monitor-enter v19
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    #@1a
    .line 164
    :try_start_2
    invoke-virtual/range {v16 .. v16}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    #@1d
    move-result-object v18

    #@1e
    move-object/from16 v0, v18

    #@20
    move-object/from16 v1, p0

    #@22
    iput-object v0, v1, Lcom/android/server/NativeDaemonConnector;->mOutputStream:Ljava/io/OutputStream;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@24
    :try_start_3
    monitor-exit v19

    #@25
    .line 167
    move-object/from16 v0, p0

    #@27
    iget-object v0, v0, Lcom/android/server/NativeDaemonConnector;->mCallbacks:Lcom/android/server/INativeDaemonConnectorCallbacks;

    #@29
    move-object/from16 v18, v0

    #@2b
    invoke-interface/range {v18 .. v18}, Lcom/android/server/INativeDaemonConnectorCallbacks;->onDaemonConnected()V

    #@2e
    .line 169
    const/16 v18, 0x1000

    #@30
    move/from16 v0, v18

    #@32
    new-array v4, v0, [B

    #@34
    .line 170
    .local v4, "buffer":[B
    const/16 v17, 0x0

    #@36
    .line 173
    .local v17, "start":I
    :goto_0
    move/from16 v0, v17

    #@38
    rsub-int v0, v0, 0x1000

    #@3a
    move/from16 v18, v0

    #@3c
    move/from16 v0, v17

    #@3e
    move/from16 v1, v18

    #@40
    invoke-virtual {v11, v4, v0, v1}, Ljava/io/InputStream;->read([BII)I

    #@43
    move-result v5

    #@44
    .line 174
    .local v5, "count":I
    if-gez v5, :cond_4

    #@46
    .line 175
    new-instance v18, Ljava/lang/StringBuilder;

    #@48
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    #@4b
    const-string/jumbo v19, "got "

    #@4e
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v18

    #@52
    move-object/from16 v0, v18

    #@54
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@57
    move-result-object v18

    #@58
    const-string/jumbo v19, " reading with start = "

    #@5b
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v18

    #@5f
    move-object/from16 v0, v18

    #@61
    move/from16 v1, v17

    #@63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@66
    move-result-object v18

    #@67
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6a
    move-result-object v18

    #@6b
    move-object/from16 v0, p0

    #@6d
    move-object/from16 v1, v18

    #@6f
    invoke-direct {v0, v1}, Lcom/android/server/NativeDaemonConnector;->loge(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    #@72
    .line 241
    move-object/from16 v0, p0

    #@74
    iget-object v0, v0, Lcom/android/server/NativeDaemonConnector;->mDaemonLock:Ljava/lang/Object;

    #@76
    move-object/from16 v19, v0

    #@78
    monitor-enter v19

    #@79
    .line 242
    :try_start_4
    move-object/from16 v0, p0

    #@7b
    iget-object v0, v0, Lcom/android/server/NativeDaemonConnector;->mOutputStream:Ljava/io/OutputStream;

    #@7d
    move-object/from16 v18, v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    #@7f
    if-eqz v18, :cond_0

    #@81
    .line 244
    :try_start_5
    new-instance v18, Ljava/lang/StringBuilder;

    #@83
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    #@86
    const-string/jumbo v20, "closing stream for "

    #@89
    move-object/from16 v0, v18

    #@8b
    move-object/from16 v1, v20

    #@8d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@90
    move-result-object v18

    #@91
    move-object/from16 v0, p0

    #@93
    iget-object v0, v0, Lcom/android/server/NativeDaemonConnector;->mSocket:Ljava/lang/String;

    #@95
    move-object/from16 v20, v0

    #@97
    move-object/from16 v0, v18

    #@99
    move-object/from16 v1, v20

    #@9b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9e
    move-result-object v18

    #@9f
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a2
    move-result-object v18

    #@a3
    move-object/from16 v0, p0

    #@a5
    move-object/from16 v1, v18

    #@a7
    invoke-direct {v0, v1}, Lcom/android/server/NativeDaemonConnector;->loge(Ljava/lang/String;)V

    #@aa
    .line 245
    move-object/from16 v0, p0

    #@ac
    iget-object v0, v0, Lcom/android/server/NativeDaemonConnector;->mOutputStream:Ljava/io/OutputStream;

    #@ae
    move-object/from16 v18, v0

    #@b0
    invoke-virtual/range {v18 .. v18}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    #@b3
    .line 249
    :goto_1
    const/16 v18, 0x0

    #@b5
    :try_start_6
    move-object/from16 v0, v18

    #@b7
    move-object/from16 v1, p0

    #@b9
    iput-object v0, v1, Lcom/android/server/NativeDaemonConnector;->mOutputStream:Ljava/io/OutputStream;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    #@bb
    :cond_0
    monitor-exit v19

    #@bc
    .line 254
    if-eqz v16, :cond_1

    #@be
    .line 255
    :try_start_7
    invoke-virtual/range {v16 .. v16}, Landroid/net/LocalSocket;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    #@c1
    .line 153
    :cond_1
    :goto_2
    return-void

    #@c2
    .line 163
    .end local v4    # "buffer":[B
    .end local v5    # "count":I
    .end local v17    # "start":I
    :catchall_0
    move-exception v18

    #@c3
    :try_start_8
    monitor-exit v19

    #@c4
    throw v18
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    #@c5
    .line 237
    .end local v3    # "address":Landroid/net/LocalSocketAddress;
    .end local v11    # "inputStream":Ljava/io/InputStream;
    :catch_0
    move-exception v9

    #@c6
    .local v9, "ex":Ljava/io/IOException;
    move-object/from16 v15, v16

    #@c8
    .line 238
    .end local v16    # "socket":Landroid/net/LocalSocket;
    :goto_3
    :try_start_9
    new-instance v18, Ljava/lang/StringBuilder;

    #@ca
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    #@cd
    const-string/jumbo v19, "Communications error: "

    #@d0
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d3
    move-result-object v18

    #@d4
    move-object/from16 v0, v18

    #@d6
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@d9
    move-result-object v18

    #@da
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@dd
    move-result-object v18

    #@de
    move-object/from16 v0, p0

    #@e0
    move-object/from16 v1, v18

    #@e2
    invoke-direct {v0, v1}, Lcom/android/server/NativeDaemonConnector;->loge(Ljava/lang/String;)V

    #@e5
    .line 239
    throw v9
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    #@e6
    .line 240
    .end local v9    # "ex":Ljava/io/IOException;
    :catchall_1
    move-exception v18

    #@e7
    .line 241
    :goto_4
    move-object/from16 v0, p0

    #@e9
    iget-object v0, v0, Lcom/android/server/NativeDaemonConnector;->mDaemonLock:Ljava/lang/Object;

    #@eb
    move-object/from16 v19, v0

    #@ed
    monitor-enter v19

    #@ee
    .line 242
    :try_start_a
    move-object/from16 v0, p0

    #@f0
    iget-object v0, v0, Lcom/android/server/NativeDaemonConnector;->mOutputStream:Ljava/io/OutputStream;

    #@f2
    move-object/from16 v20, v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    #@f4
    if-eqz v20, :cond_2

    #@f6
    .line 244
    :try_start_b
    new-instance v20, Ljava/lang/StringBuilder;

    #@f8
    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    #@fb
    const-string/jumbo v21, "closing stream for "

    #@fe
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@101
    move-result-object v20

    #@102
    move-object/from16 v0, p0

    #@104
    iget-object v0, v0, Lcom/android/server/NativeDaemonConnector;->mSocket:Ljava/lang/String;

    #@106
    move-object/from16 v21, v0

    #@108
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10b
    move-result-object v20

    #@10c
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@10f
    move-result-object v20

    #@110
    move-object/from16 v0, p0

    #@112
    move-object/from16 v1, v20

    #@114
    invoke-direct {v0, v1}, Lcom/android/server/NativeDaemonConnector;->loge(Ljava/lang/String;)V

    #@117
    .line 245
    move-object/from16 v0, p0

    #@119
    iget-object v0, v0, Lcom/android/server/NativeDaemonConnector;->mOutputStream:Ljava/io/OutputStream;

    #@11b
    move-object/from16 v20, v0

    #@11d
    invoke-virtual/range {v20 .. v20}, Ljava/io/OutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    #@120
    .line 249
    :goto_5
    const/16 v20, 0x0

    #@122
    :try_start_c
    move-object/from16 v0, v20

    #@124
    move-object/from16 v1, p0

    #@126
    iput-object v0, v1, Lcom/android/server/NativeDaemonConnector;->mOutputStream:Ljava/io/OutputStream;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    #@128
    :cond_2
    monitor-exit v19

    #@129
    .line 254
    if-eqz v15, :cond_3

    #@12b
    .line 255
    :try_start_d
    invoke-virtual {v15}, Landroid/net/LocalSocket;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_5

    #@12e
    .line 240
    :cond_3
    :goto_6
    throw v18

    #@12f
    .line 180
    .restart local v3    # "address":Landroid/net/LocalSocketAddress;
    .restart local v4    # "buffer":[B
    .restart local v5    # "count":I
    .restart local v11    # "inputStream":Ljava/io/InputStream;
    .restart local v16    # "socket":Landroid/net/LocalSocket;
    .restart local v17    # "start":I
    :cond_4
    add-int v5, v5, v17

    #@131
    .line 181
    const/16 v17, 0x0

    #@133
    .line 183
    const/4 v10, 0x0

    #@134
    .local v10, "i":I
    :goto_7
    if-ge v10, v5, :cond_b

    #@136
    .line 184
    :try_start_e
    aget-byte v18, v4, v10

    #@138
    if-nez v18, :cond_8

    #@13a
    .line 187
    new-instance v12, Ljava/lang/String;

    #@13c
    .line 188
    sub-int v18, v10, v17

    #@13e
    sget-object v19, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    #@140
    .line 187
    move/from16 v0, v17

    #@142
    move/from16 v1, v18

    #@144
    move-object/from16 v2, v19

    #@146
    invoke-direct {v12, v4, v0, v1, v2}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_0
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    #@149
    .line 190
    .local v12, "rawEvent":Ljava/lang/String;
    const/4 v13, 0x0

    #@14a
    .line 192
    .local v13, "releaseWl":Z
    :try_start_f
    invoke-static {v12}, Lcom/android/server/NativeDaemonEvent;->parseRawEvent(Ljava/lang/String;)Lcom/android/server/NativeDaemonEvent;

    #@14d
    move-result-object v8

    #@14e
    .line 195
    .local v8, "event":Lcom/android/server/NativeDaemonEvent;
    new-instance v18, Ljava/lang/StringBuilder;

    #@150
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    #@153
    const-string/jumbo v19, "RCV <- {"

    #@156
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@159
    move-result-object v18

    #@15a
    move-object/from16 v0, v18

    #@15c
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@15f
    move-result-object v18

    #@160
    const-string/jumbo v19, "}"

    #@163
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@166
    move-result-object v18

    #@167
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@16a
    move-result-object v18

    #@16b
    move-object/from16 v0, p0

    #@16d
    move-object/from16 v1, v18

    #@16f
    invoke-direct {v0, v1}, Lcom/android/server/NativeDaemonConnector;->log(Ljava/lang/String;)V

    #@172
    .line 197
    invoke-virtual {v8}, Lcom/android/server/NativeDaemonEvent;->isClassUnsolicited()Z

    #@175
    move-result v18

    #@176
    if-eqz v18, :cond_9

    #@178
    .line 199
    move-object/from16 v0, p0

    #@17a
    iget-object v0, v0, Lcom/android/server/NativeDaemonConnector;->mCallbacks:Lcom/android/server/INativeDaemonConnectorCallbacks;

    #@17c
    move-object/from16 v18, v0

    #@17e
    invoke-virtual {v8}, Lcom/android/server/NativeDaemonEvent;->getCode()I

    #@181
    move-result v19

    #@182
    invoke-interface/range {v18 .. v19}, Lcom/android/server/INativeDaemonConnectorCallbacks;->onCheckHoldWakeLock(I)Z

    #@185
    move-result v18

    #@186
    if-eqz v18, :cond_5

    #@188
    .line 200
    move-object/from16 v0, p0

    #@18a
    iget-object v0, v0, Lcom/android/server/NativeDaemonConnector;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@18c
    move-object/from16 v18, v0

    #@18e
    if-eqz v18, :cond_5

    #@190
    .line 201
    move-object/from16 v0, p0

    #@192
    iget-object v0, v0, Lcom/android/server/NativeDaemonConnector;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@194
    move-object/from16 v18, v0

    #@196
    invoke-virtual/range {v18 .. v18}, Landroid/os/PowerManager$WakeLock;->acquire()V

    #@199
    .line 202
    const/4 v13, 0x1

    #@19a
    .line 204
    :cond_5
    move-object/from16 v0, p0

    #@19c
    iget-object v0, v0, Lcom/android/server/NativeDaemonConnector;->mCallbackHandler:Landroid/os/Handler;

    #@19e
    move-object/from16 v18, v0

    #@1a0
    move-object/from16 v0, p0

    #@1a2
    iget-object v0, v0, Lcom/android/server/NativeDaemonConnector;->mCallbackHandler:Landroid/os/Handler;

    #@1a4
    move-object/from16 v19, v0

    #@1a6
    .line 205
    invoke-virtual {v8}, Lcom/android/server/NativeDaemonEvent;->getCode()I

    #@1a9
    move-result v20

    #@1aa
    invoke-virtual {v8}, Lcom/android/server/NativeDaemonEvent;->getRawEvent()Ljava/lang/String;

    #@1ad
    move-result-object v21

    #@1ae
    .line 204
    invoke-virtual/range {v19 .. v21}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@1b1
    move-result-object v19

    #@1b2
    invoke-virtual/range {v18 .. v19}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_f .. :try_end_f} :catch_1
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    #@1b5
    move-result v18

    #@1b6
    if-eqz v18, :cond_6

    #@1b8
    .line 206
    const/4 v13, 0x0

    #@1b9
    .line 214
    :cond_6
    :goto_8
    if-eqz v13, :cond_7

    #@1bb
    .line 215
    :try_start_10
    move-object/from16 v0, p0

    #@1bd
    iget-object v0, v0, Lcom/android/server/NativeDaemonConnector;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@1bf
    move-object/from16 v18, v0

    #@1c1
    invoke-virtual/range {v18 .. v18}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_0
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    #@1c4
    .line 219
    .end local v8    # "event":Lcom/android/server/NativeDaemonEvent;
    :cond_7
    :goto_9
    add-int/lit8 v17, v10, 0x1

    #@1c6
    .line 183
    .end local v12    # "rawEvent":Ljava/lang/String;
    .end local v13    # "releaseWl":Z
    :cond_8
    add-int/lit8 v10, v10, 0x1

    #@1c8
    goto/16 :goto_7

    #@1ca
    .line 209
    .restart local v8    # "event":Lcom/android/server/NativeDaemonEvent;
    .restart local v12    # "rawEvent":Ljava/lang/String;
    .restart local v13    # "releaseWl":Z
    :cond_9
    :try_start_11
    move-object/from16 v0, p0

    #@1cc
    iget-object v0, v0, Lcom/android/server/NativeDaemonConnector;->mResponseQueue:Lcom/android/server/NativeDaemonConnector$ResponseQueue;

    #@1ce
    move-object/from16 v18, v0

    #@1d0
    invoke-virtual {v8}, Lcom/android/server/NativeDaemonEvent;->getCmdNumber()I

    #@1d3
    move-result v19

    #@1d4
    move-object/from16 v0, v18

    #@1d6
    move/from16 v1, v19

    #@1d8
    invoke-virtual {v0, v1, v8}, Lcom/android/server/NativeDaemonConnector$ResponseQueue;->add(ILcom/android/server/NativeDaemonEvent;)V
    :try_end_11
    .catch Ljava/lang/IllegalArgumentException; {:try_start_11 .. :try_end_11} :catch_1
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    #@1db
    goto :goto_8

    #@1dc
    .line 211
    .end local v8    # "event":Lcom/android/server/NativeDaemonEvent;
    :catch_1
    move-exception v7

    #@1dd
    .line 212
    .local v7, "e":Ljava/lang/IllegalArgumentException;
    :try_start_12
    new-instance v18, Ljava/lang/StringBuilder;

    #@1df
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    #@1e2
    const-string/jumbo v19, "Problem parsing message "

    #@1e5
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e8
    move-result-object v18

    #@1e9
    move-object/from16 v0, v18

    #@1eb
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1ee
    move-result-object v18

    #@1ef
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f2
    move-result-object v18

    #@1f3
    move-object/from16 v0, p0

    #@1f5
    move-object/from16 v1, v18

    #@1f7
    invoke-direct {v0, v1}, Lcom/android/server/NativeDaemonConnector;->log(Ljava/lang/String;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    #@1fa
    .line 214
    if-eqz v13, :cond_7

    #@1fc
    .line 215
    :try_start_13
    move-object/from16 v0, p0

    #@1fe
    iget-object v0, v0, Lcom/android/server/NativeDaemonConnector;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@200
    move-object/from16 v18, v0

    #@202
    invoke-virtual/range {v18 .. v18}, Landroid/os/PowerManager$WakeLock;->acquire()V

    #@205
    goto :goto_9

    #@206
    .line 240
    .end local v3    # "address":Landroid/net/LocalSocketAddress;
    .end local v4    # "buffer":[B
    .end local v5    # "count":I
    .end local v7    # "e":Ljava/lang/IllegalArgumentException;
    .end local v10    # "i":I
    .end local v11    # "inputStream":Ljava/io/InputStream;
    .end local v12    # "rawEvent":Ljava/lang/String;
    .end local v13    # "releaseWl":Z
    .end local v17    # "start":I
    :catchall_2
    move-exception v18

    #@207
    move-object/from16 v15, v16

    #@209
    .end local v16    # "socket":Landroid/net/LocalSocket;
    .local v15, "socket":Landroid/net/LocalSocket;
    goto/16 :goto_4

    #@20b
    .line 213
    .end local v15    # "socket":Landroid/net/LocalSocket;
    .restart local v3    # "address":Landroid/net/LocalSocketAddress;
    .restart local v4    # "buffer":[B
    .restart local v5    # "count":I
    .restart local v10    # "i":I
    .restart local v11    # "inputStream":Ljava/io/InputStream;
    .restart local v12    # "rawEvent":Ljava/lang/String;
    .restart local v13    # "releaseWl":Z
    .restart local v16    # "socket":Landroid/net/LocalSocket;
    .restart local v17    # "start":I
    :catchall_3
    move-exception v18

    #@20c
    .line 214
    if-eqz v13, :cond_a

    #@20e
    .line 215
    move-object/from16 v0, p0

    #@210
    iget-object v0, v0, Lcom/android/server/NativeDaemonConnector;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@212
    move-object/from16 v19, v0

    #@214
    invoke-virtual/range {v19 .. v19}, Landroid/os/PowerManager$WakeLock;->acquire()V

    #@217
    .line 213
    :cond_a
    throw v18

    #@218
    .line 223
    .end local v12    # "rawEvent":Ljava/lang/String;
    .end local v13    # "releaseWl":Z
    :cond_b
    if-nez v17, :cond_c

    #@21a
    .line 224
    const-string/jumbo v18, "RCV incomplete"

    #@21d
    move-object/from16 v0, p0

    #@21f
    move-object/from16 v1, v18

    #@221
    invoke-direct {v0, v1}, Lcom/android/server/NativeDaemonConnector;->log(Ljava/lang/String;)V

    #@224
    .line 229
    :cond_c
    move/from16 v0, v17

    #@226
    if-eq v0, v5, :cond_d

    #@228
    .line 230
    move/from16 v0, v17

    #@22a
    rsub-int v14, v0, 0x1000

    #@22c
    .line 231
    .local v14, "remaining":I
    const/16 v18, 0x0

    #@22e
    move/from16 v0, v17

    #@230
    move/from16 v1, v18

    #@232
    invoke-static {v4, v0, v4, v1, v14}, Ljava/lang/System;->arraycopy([BI[BII)V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_0
    .catchall {:try_start_13 .. :try_end_13} :catchall_2

    #@235
    .line 232
    move/from16 v17, v14

    #@237
    goto/16 :goto_0

    #@239
    .line 234
    .end local v14    # "remaining":I
    :cond_d
    const/16 v17, 0x0

    #@23b
    goto/16 :goto_0

    #@23d
    .line 246
    .end local v10    # "i":I
    :catch_2
    move-exception v6

    #@23e
    .line 247
    .local v6, "e":Ljava/io/IOException;
    :try_start_14
    new-instance v18, Ljava/lang/StringBuilder;

    #@240
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    #@243
    const-string/jumbo v20, "Failed closing output stream: "

    #@246
    move-object/from16 v0, v18

    #@248
    move-object/from16 v1, v20

    #@24a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24d
    move-result-object v18

    #@24e
    move-object/from16 v0, v18

    #@250
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@253
    move-result-object v18

    #@254
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@257
    move-result-object v18

    #@258
    move-object/from16 v0, p0

    #@25a
    move-object/from16 v1, v18

    #@25c
    invoke-direct {v0, v1}, Lcom/android/server/NativeDaemonConnector;->loge(Ljava/lang/String;)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_4

    #@25f
    goto/16 :goto_1

    #@261
    .line 241
    .end local v6    # "e":Ljava/io/IOException;
    :catchall_4
    move-exception v18

    #@262
    monitor-exit v19

    #@263
    throw v18

    #@264
    .line 257
    :catch_3
    move-exception v9

    #@265
    .line 258
    .restart local v9    # "ex":Ljava/io/IOException;
    new-instance v18, Ljava/lang/StringBuilder;

    #@267
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    #@26a
    const-string/jumbo v19, "Failed closing socket: "

    #@26d
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@270
    move-result-object v18

    #@271
    move-object/from16 v0, v18

    #@273
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@276
    move-result-object v18

    #@277
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27a
    move-result-object v18

    #@27b
    move-object/from16 v0, p0

    #@27d
    move-object/from16 v1, v18

    #@27f
    invoke-direct {v0, v1}, Lcom/android/server/NativeDaemonConnector;->loge(Ljava/lang/String;)V

    #@282
    goto/16 :goto_2

    #@284
    .line 246
    .end local v3    # "address":Landroid/net/LocalSocketAddress;
    .end local v4    # "buffer":[B
    .end local v5    # "count":I
    .end local v9    # "ex":Ljava/io/IOException;
    .end local v11    # "inputStream":Ljava/io/InputStream;
    .end local v16    # "socket":Landroid/net/LocalSocket;
    .end local v17    # "start":I
    :catch_4
    move-exception v6

    #@285
    .line 247
    .restart local v6    # "e":Ljava/io/IOException;
    :try_start_15
    new-instance v20, Ljava/lang/StringBuilder;

    #@287
    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    #@28a
    const-string/jumbo v21, "Failed closing output stream: "

    #@28d
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@290
    move-result-object v20

    #@291
    move-object/from16 v0, v20

    #@293
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@296
    move-result-object v20

    #@297
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29a
    move-result-object v20

    #@29b
    move-object/from16 v0, p0

    #@29d
    move-object/from16 v1, v20

    #@29f
    invoke-direct {v0, v1}, Lcom/android/server/NativeDaemonConnector;->loge(Ljava/lang/String;)V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_5

    #@2a2
    goto/16 :goto_5

    #@2a4
    .line 241
    .end local v6    # "e":Ljava/io/IOException;
    :catchall_5
    move-exception v18

    #@2a5
    monitor-exit v19

    #@2a6
    throw v18

    #@2a7
    .line 257
    :catch_5
    move-exception v9

    #@2a8
    .line 258
    .restart local v9    # "ex":Ljava/io/IOException;
    new-instance v19, Ljava/lang/StringBuilder;

    #@2aa
    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    #@2ad
    const-string/jumbo v20, "Failed closing socket: "

    #@2b0
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b3
    move-result-object v19

    #@2b4
    move-object/from16 v0, v19

    #@2b6
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2b9
    move-result-object v19

    #@2ba
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2bd
    move-result-object v19

    #@2be
    move-object/from16 v0, p0

    #@2c0
    move-object/from16 v1, v19

    #@2c2
    invoke-direct {v0, v1}, Lcom/android/server/NativeDaemonConnector;->loge(Ljava/lang/String;)V

    #@2c5
    goto/16 :goto_6

    #@2c7
    .line 237
    .end local v9    # "ex":Ljava/io/IOException;
    .local v15, "socket":Landroid/net/LocalSocket;
    :catch_6
    move-exception v9

    #@2c8
    .restart local v9    # "ex":Ljava/io/IOException;
    goto/16 :goto_3
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "logstring"    # Ljava/lang/String;

    #@0
    .prologue
    .line 529
    iget-boolean v0, p0, Lcom/android/server/NativeDaemonConnector;->mDebug:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Lcom/android/server/NativeDaemonConnector;->TAG:Ljava/lang/String;

    #@6
    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 530
    :cond_0
    iget-object v0, p0, Lcom/android/server/NativeDaemonConnector;->mLocalLog:Landroid/util/LocalLog;

    #@b
    invoke-virtual {v0, p1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    #@e
    .line 528
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "logstring"    # Ljava/lang/String;

    #@0
    .prologue
    .line 534
    iget-object v0, p0, Lcom/android/server/NativeDaemonConnector;->TAG:Ljava/lang/String;

    #@2
    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@5
    .line 535
    iget-object v0, p0, Lcom/android/server/NativeDaemonConnector;->mLocalLog:Landroid/util/LocalLog;

    #@7
    invoke-virtual {v0, p1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    #@a
    .line 533
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
    .line 286
    invoke-virtual {p3, v3}, Ljava/lang/String;->indexOf(I)I

    #@6
    move-result v2

    #@7
    if-ltz v2, :cond_0

    #@9
    .line 287
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
    .line 289
    :cond_0
    invoke-virtual {p3, v6}, Ljava/lang/String;->indexOf(I)I

    #@26
    move-result v2

    #@27
    if-ltz v2, :cond_1

    #@29
    .line 290
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@2b
    const-string/jumbo v3, "Arguments must be separate from command"

    #@2e
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@31
    throw v2

    #@32
    .line 293
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
    .line 294
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
    .line 295
    array-length v4, p4

    #@49
    move v2, v3

    #@4a
    :goto_0
    if-ge v2, v4, :cond_4

    #@4c
    aget-object v0, p4, v2

    #@4e
    .line 296
    .local v0, "arg":Ljava/lang/Object;
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    #@51
    move-result-object v1

    #@52
    .line 297
    .local v1, "argString":Ljava/lang/String;
    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    #@55
    move-result v5

    #@56
    if-ltz v5, :cond_2

    #@58
    .line 298
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
    .line 301
    :cond_2
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@75
    .line 302
    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@78
    .line 304
    invoke-static {p0, v1}, Lcom/android/server/NativeDaemonConnector;->appendEscaped(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    #@7b
    .line 305
    instance-of v5, v0, Lcom/android/server/NativeDaemonConnector$SensitiveArg;

    #@7d
    if-eqz v5, :cond_3

    #@7f
    .line 306
    const-string/jumbo v5, "[scrubbed]"

    #@82
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@85
    .line 295
    :goto_1
    add-int/lit8 v2, v2, 0x1

    #@87
    goto :goto_0

    #@88
    .line 308
    :cond_3
    invoke-static {p1, v1}, Lcom/android/server/NativeDaemonConnector;->appendEscaped(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    #@8b
    goto :goto_1

    #@8c
    .line 312
    .end local v0    # "arg":Ljava/lang/Object;
    .end local v1    # "argString":Ljava/lang/String;
    :cond_4
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@8f
    .line 285
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 523
    iget-object v0, p0, Lcom/android/server/NativeDaemonConnector;->mLocalLog:Landroid/util/LocalLog;

    #@2
    invoke-virtual {v0, p1, p2, p3}, Landroid/util/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    #@5
    .line 524
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    #@8
    .line 525
    iget-object v0, p0, Lcom/android/server/NativeDaemonConnector;->mResponseQueue:Lcom/android/server/NativeDaemonConnector$ResponseQueue;

    #@a
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/NativeDaemonConnector$ResponseQueue;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    #@d
    .line 522
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
    .line 345
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/NativeDaemonConnector;->executeForList(JLjava/lang/String;[Ljava/lang/Object;)[Lcom/android/server/NativeDaemonEvent;

    #@3
    move-result-object v0

    #@4
    .line 346
    .local v0, "events":[Lcom/android/server/NativeDaemonEvent;
    array-length v1, v0

    #@5
    const/4 v2, 0x1

    #@6
    if-eq v1, v2, :cond_0

    #@8
    .line 347
    new-instance v1, Lcom/android/server/NativeDaemonConnectorException;

    #@a
    .line 348
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
    .line 347
    invoke-direct {v1, v2}, Lcom/android/server/NativeDaemonConnectorException;-><init>(Ljava/lang/String;)V

    #@22
    throw v1

    #@23
    .line 350
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
    .line 325
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
    .line 340
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
    .line 397
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@3
    move-result-wide v12

    #@4
    .line 399
    .local v12, "startTime":J
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    #@7
    move-result-object v6

    #@8
    .line 401
    .local v6, "events":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/NativeDaemonEvent;>;"
    new-instance v9, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    .line 402
    .local v9, "rawBuilder":Ljava/lang/StringBuilder;
    new-instance v7, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    .line 403
    .local v7, "logBuilder":Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    #@14
    iget-object v14, v0, Lcom/android/server/NativeDaemonConnector;->mSequenceNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    #@16
    invoke-virtual {v14}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    #@19
    move-result v11

    #@1a
    .line 405
    .local v11, "sequenceNumber":I
    move-object/from16 v0, p3

    #@1c
    move-object/from16 v1, p4

    #@1e
    invoke-static {v9, v7, v11, v0, v1}, Lcom/android/server/NativeDaemonConnector;->makeCommand(Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;ILjava/lang/String;[Ljava/lang/Object;)V

    #@21
    .line 407
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v10

    #@25
    .line 408
    .local v10, "rawCmd":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28
    move-result-object v8

    #@29
    .line 410
    .local v8, "logCmd":Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    #@2b
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    #@2e
    const-string/jumbo v15, "SND -> {"

    #@31
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v14

    #@35
    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v14

    #@39
    const-string/jumbo v15, "}"

    #@3c
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v14

    #@40
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@43
    move-result-object v14

    #@44
    move-object/from16 v0, p0

    #@46
    invoke-direct {v0, v14}, Lcom/android/server/NativeDaemonConnector;->log(Ljava/lang/String;)V

    #@49
    .line 412
    move-object/from16 v0, p0

    #@4b
    iget-object v15, v0, Lcom/android/server/NativeDaemonConnector;->mDaemonLock:Ljava/lang/Object;

    #@4d
    monitor-enter v15

    #@4e
    .line 413
    :try_start_0
    move-object/from16 v0, p0

    #@50
    iget-object v14, v0, Lcom/android/server/NativeDaemonConnector;->mOutputStream:Ljava/io/OutputStream;

    #@52
    if-nez v14, :cond_0

    #@54
    .line 414
    new-instance v14, Lcom/android/server/NativeDaemonConnectorException;

    #@56
    const-string/jumbo v16, "missing output stream"

    #@59
    move-object/from16 v0, v16

    #@5b
    invoke-direct {v14, v0}, Lcom/android/server/NativeDaemonConnectorException;-><init>(Ljava/lang/String;)V

    #@5e
    throw v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5f
    .line 412
    :catchall_0
    move-exception v14

    #@60
    monitor-exit v15

    #@61
    throw v14

    #@62
    .line 417
    :cond_0
    :try_start_1
    move-object/from16 v0, p0

    #@64
    iget-object v14, v0, Lcom/android/server/NativeDaemonConnector;->mOutputStream:Ljava/io/OutputStream;

    #@66
    sget-object v16, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    #@68
    move-object/from16 v0, v16

    #@6a
    invoke-virtual {v10, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    #@6d
    move-result-object v16

    #@6e
    move-object/from16 v0, v16

    #@70
    invoke-virtual {v14, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@73
    monitor-exit v15

    #@74
    .line 424
    const/4 v3, 0x0

    #@75
    .line 426
    :cond_1
    move-object/from16 v0, p0

    #@77
    iget-object v14, v0, Lcom/android/server/NativeDaemonConnector;->mResponseQueue:Lcom/android/server/NativeDaemonConnector$ResponseQueue;

    #@79
    move-wide/from16 v0, p1

    #@7b
    invoke-virtual {v14, v11, v0, v1, v8}, Lcom/android/server/NativeDaemonConnector$ResponseQueue;->remove(IJLjava/lang/String;)Lcom/android/server/NativeDaemonEvent;

    #@7e
    move-result-object v3

    #@7f
    .line 427
    .local v3, "event":Lcom/android/server/NativeDaemonEvent;
    if-nez v3, :cond_2

    #@81
    .line 428
    new-instance v14, Ljava/lang/StringBuilder;

    #@83
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    #@86
    const-string/jumbo v15, "timed-out waiting for response to "

    #@89
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8c
    move-result-object v14

    #@8d
    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@90
    move-result-object v14

    #@91
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@94
    move-result-object v14

    #@95
    move-object/from16 v0, p0

    #@97
    invoke-direct {v0, v14}, Lcom/android/server/NativeDaemonConnector;->loge(Ljava/lang/String;)V

    #@9a
    .line 429
    new-instance v14, Lcom/android/server/NativeDaemonTimeoutException;

    #@9c
    invoke-direct {v14, v8, v3}, Lcom/android/server/NativeDaemonTimeoutException;-><init>(Ljava/lang/String;Lcom/android/server/NativeDaemonEvent;)V

    #@9f
    throw v14

    #@a0
    .line 418
    .end local v3    # "event":Lcom/android/server/NativeDaemonEvent;
    :catch_0
    move-exception v2

    #@a1
    .line 419
    .local v2, "e":Ljava/io/IOException;
    :try_start_2
    new-instance v14, Lcom/android/server/NativeDaemonConnectorException;

    #@a3
    const-string/jumbo v16, "problem sending command"

    #@a6
    move-object/from16 v0, v16

    #@a8
    invoke-direct {v14, v0, v2}, Lcom/android/server/NativeDaemonConnectorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@ab
    throw v14
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@ac
    .line 432
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v3    # "event":Lcom/android/server/NativeDaemonEvent;
    :cond_2
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@af
    .line 433
    invoke-virtual {v3}, Lcom/android/server/NativeDaemonEvent;->isClassContinue()Z

    #@b2
    move-result v14

    #@b3
    if-nez v14, :cond_1

    #@b5
    .line 435
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@b8
    move-result-wide v4

    #@b9
    .line 436
    .local v4, "endTime":J
    sub-long v14, v4, v12

    #@bb
    const-wide/16 v16, 0x1f4

    #@bd
    cmp-long v14, v14, v16

    #@bf
    if-lez v14, :cond_3

    #@c1
    .line 437
    new-instance v14, Ljava/lang/StringBuilder;

    #@c3
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    #@c6
    const-string/jumbo v15, "NDC Command {"

    #@c9
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cc
    move-result-object v14

    #@cd
    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d0
    move-result-object v14

    #@d1
    const-string/jumbo v15, "} took too long ("

    #@d4
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d7
    move-result-object v14

    #@d8
    sub-long v16, v4, v12

    #@da
    move-wide/from16 v0, v16

    #@dc
    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@df
    move-result-object v14

    #@e0
    const-string/jumbo v15, "ms)"

    #@e3
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e6
    move-result-object v14

    #@e7
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ea
    move-result-object v14

    #@eb
    move-object/from16 v0, p0

    #@ed
    invoke-direct {v0, v14}, Lcom/android/server/NativeDaemonConnector;->loge(Ljava/lang/String;)V

    #@f0
    .line 440
    :cond_3
    invoke-virtual {v3}, Lcom/android/server/NativeDaemonEvent;->isClassClientError()Z

    #@f3
    move-result v14

    #@f4
    if-eqz v14, :cond_4

    #@f6
    .line 441
    new-instance v14, Lcom/android/server/NativeDaemonConnector$NativeDaemonArgumentException;

    #@f8
    invoke-direct {v14, v8, v3}, Lcom/android/server/NativeDaemonConnector$NativeDaemonArgumentException;-><init>(Ljava/lang/String;Lcom/android/server/NativeDaemonEvent;)V

    #@fb
    throw v14

    #@fc
    .line 443
    :cond_4
    invoke-virtual {v3}, Lcom/android/server/NativeDaemonEvent;->isClassServerError()Z

    #@ff
    move-result v14

    #@100
    if-eqz v14, :cond_5

    #@102
    .line 444
    new-instance v14, Lcom/android/server/NativeDaemonConnector$NativeDaemonFailureException;

    #@104
    invoke-direct {v14, v8, v3}, Lcom/android/server/NativeDaemonConnector$NativeDaemonFailureException;-><init>(Ljava/lang/String;Lcom/android/server/NativeDaemonEvent;)V

    #@107
    throw v14

    #@108
    .line 447
    :cond_5
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    #@10b
    move-result v14

    #@10c
    new-array v14, v14, [Lcom/android/server/NativeDaemonEvent;

    #@10e
    invoke-virtual {v6, v14}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@111
    move-result-object v14

    #@112
    check-cast v14, [Lcom/android/server/NativeDaemonEvent;

    #@114
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
    .line 364
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
    .line 380
    const-wide/32 v0, 0xea60

    #@3
    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/android/server/NativeDaemonConnector;->executeForList(JLjava/lang/String;[Ljava/lang/Object;)[Lcom/android/server/NativeDaemonEvent;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    .line 126
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@3
    check-cast v1, Ljava/lang/String;

    #@5
    .line 128
    .local v1, "event":Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lcom/android/server/NativeDaemonConnector;->mCallbacks:Lcom/android/server/INativeDaemonConnectorCallbacks;

    #@7
    iget v3, p1, Landroid/os/Message;->what:I

    #@9
    invoke-static {v1}, Lcom/android/server/NativeDaemonEvent;->unescapeArgs(Ljava/lang/String;)[Ljava/lang/String;

    #@c
    move-result-object v4

    #@d
    invoke-interface {v2, v3, v1, v4}, Lcom/android/server/INativeDaemonConnectorCallbacks;->onEvent(ILjava/lang/String;[Ljava/lang/String;)Z

    #@10
    move-result v2

    #@11
    if-nez v2, :cond_0

    #@13
    .line 129
    const-string/jumbo v2, "Unhandled event \'%s\'"

    #@16
    const/4 v3, 0x1

    #@17
    new-array v3, v3, [Ljava/lang/Object;

    #@19
    const/4 v4, 0x0

    #@1a
    aput-object v1, v3, v4

    #@1c
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@1f
    move-result-object v2

    #@20
    invoke-direct {p0, v2}, Lcom/android/server/NativeDaemonConnector;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@23
    .line 134
    :cond_0
    iget-object v2, p0, Lcom/android/server/NativeDaemonConnector;->mCallbacks:Lcom/android/server/INativeDaemonConnectorCallbacks;

    #@25
    iget v3, p1, Landroid/os/Message;->what:I

    #@27
    invoke-interface {v2, v3}, Lcom/android/server/INativeDaemonConnectorCallbacks;->onCheckHoldWakeLock(I)Z

    #@2a
    move-result v2

    #@2b
    if-eqz v2, :cond_1

    #@2d
    iget-object v2, p0, Lcom/android/server/NativeDaemonConnector;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@2f
    if-eqz v2, :cond_1

    #@31
    .line 135
    iget-object v2, p0, Lcom/android/server/NativeDaemonConnector;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@33
    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    #@36
    .line 138
    :cond_1
    :goto_0
    return v5

    #@37
    .line 131
    :catch_0
    move-exception v0

    #@38
    .line 132
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    #@3a
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@3d
    const-string/jumbo v3, "Error handling \'"

    #@40
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v2

    #@44
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v2

    #@48
    const-string/jumbo v3, "\': "

    #@4b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v2

    #@4f
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v2

    #@53
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@56
    move-result-object v2

    #@57
    invoke-direct {p0, v2}, Lcom/android/server/NativeDaemonConnector;->loge(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@5a
    .line 134
    iget-object v2, p0, Lcom/android/server/NativeDaemonConnector;->mCallbacks:Lcom/android/server/INativeDaemonConnectorCallbacks;

    #@5c
    iget v3, p1, Landroid/os/Message;->what:I

    #@5e
    invoke-interface {v2, v3}, Lcom/android/server/INativeDaemonConnectorCallbacks;->onCheckHoldWakeLock(I)Z

    #@61
    move-result v2

    #@62
    if-eqz v2, :cond_1

    #@64
    iget-object v2, p0, Lcom/android/server/NativeDaemonConnector;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@66
    if-eqz v2, :cond_1

    #@68
    .line 135
    iget-object v2, p0, Lcom/android/server/NativeDaemonConnector;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@6a
    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    #@6d
    goto :goto_0

    #@6e
    .line 133
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    #@6f
    .line 134
    iget-object v3, p0, Lcom/android/server/NativeDaemonConnector;->mCallbacks:Lcom/android/server/INativeDaemonConnectorCallbacks;

    #@71
    iget v4, p1, Landroid/os/Message;->what:I

    #@73
    invoke-interface {v3, v4}, Lcom/android/server/INativeDaemonConnectorCallbacks;->onCheckHoldWakeLock(I)Z

    #@76
    move-result v3

    #@77
    if-eqz v3, :cond_2

    #@79
    iget-object v3, p0, Lcom/android/server/NativeDaemonConnector;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@7b
    if-eqz v3, :cond_2

    #@7d
    .line 135
    iget-object v3, p0, Lcom/android/server/NativeDaemonConnector;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@7f
    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    #@82
    .line 133
    :cond_2
    throw v2
.end method

.method public monitor()V
    .locals 1

    #@0
    .prologue
    .line 519
    iget-object v0, p0, Lcom/android/server/NativeDaemonConnector;->mDaemonLock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    monitor-exit v0

    #@4
    .line 518
    return-void
.end method

.method public run()V
    .locals 4

    #@0
    .prologue
    .line 112
    new-instance v1, Landroid/os/Handler;

    #@2
    iget-object v2, p0, Lcom/android/server/NativeDaemonConnector;->mLooper:Landroid/os/Looper;

    #@4
    invoke-direct {v1, v2, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    #@7
    iput-object v1, p0, Lcom/android/server/NativeDaemonConnector;->mCallbackHandler:Landroid/os/Handler;

    #@9
    .line 116
    :goto_0
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/NativeDaemonConnector;->listenToSocket()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@c
    goto :goto_0

    #@d
    .line 117
    :catch_0
    move-exception v0

    #@e
    .line 118
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
    .line 119
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
    .line 107
    iput-boolean p1, p0, Lcom/android/server/NativeDaemonConnector;->mDebug:Z

    #@2
    .line 106
    return-void
.end method
