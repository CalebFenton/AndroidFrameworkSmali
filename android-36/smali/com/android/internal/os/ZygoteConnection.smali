.class Lcom/android/internal/os/ZygoteConnection;
.super Ljava/lang/Object;
.source "ZygoteConnection.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "Zygote"


# instance fields
.field private final blacklist abiList:Ljava/lang/String;

.field private blacklist isEof:Z

.field private final greylist mSocket:Landroid/net/LocalSocket;

.field private final greylist mSocketOutStream:Ljava/io/DataOutputStream;

.field private final greylist peer:Landroid/net/Credentials;


# direct methods
.method constructor blacklist <init>(Landroid/net/LocalSocket;Ljava/lang/String;)V
    .registers 6
    .param p1, "socket"    # Landroid/net/LocalSocket;
    .param p2, "abiList"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p1, p0, Lcom/android/internal/os/ZygoteConnection;->mSocket:Landroid/net/LocalSocket;

    .line 83
    iput-object p2, p0, Lcom/android/internal/os/ZygoteConnection;->abiList:Ljava/lang/String;

    .line 85
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-virtual {p1}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lcom/android/internal/os/ZygoteConnection;->mSocketOutStream:Ljava/io/DataOutputStream;

    .line 87
    iget-object v0, p0, Lcom/android/internal/os/ZygoteConnection;->mSocket:Landroid/net/LocalSocket;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/net/LocalSocket;->setSoTimeout(I)V

    .line 90
    :try_start_19
    iget-object v0, p0, Lcom/android/internal/os/ZygoteConnection;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v0}, Landroid/net/LocalSocket;->getPeerCredentials()Landroid/net/Credentials;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/ZygoteConnection;->peer:Landroid/net/Credentials;
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_21} :catch_36

    .line 94
    nop

    .line 96
    iget-object v0, p0, Lcom/android/internal/os/ZygoteConnection;->peer:Landroid/net/Credentials;

    invoke-virtual {v0}, Landroid/net/Credentials;->getUid()I

    move-result v0

    if-ne v0, v1, :cond_2e

    .line 99
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/os/ZygoteConnection;->isEof:Z

    .line 100
    return-void

    .line 97
    :cond_2e
    new-instance v0, Lcom/android/internal/os/ZygoteSecurityException;

    const-string v1, "Only system UID is allowed to connect to Zygote."

    invoke-direct {v0, v1}, Lcom/android/internal/os/ZygoteSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 91
    :catch_36
    move-exception v0

    .line 92
    .local v0, "ex":Ljava/io/IOException;
    const-string v1, "Zygote"

    const-string v2, "Cannot read peer credentials"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 93
    throw v0
.end method

.method private blacklist handleAbiListQuery()V
    .registers 4

    .line 319
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/os/ZygoteConnection;->abiList:Ljava/lang/String;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 320
    .local v0, "abiListBytes":[B
    iget-object v1, p0, Lcom/android/internal/os/ZygoteConnection;->mSocketOutStream:Ljava/io/DataOutputStream;

    array-length v2, v0

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 321
    iget-object v1, p0, Lcom/android/internal/os/ZygoteConnection;->mSocketOutStream:Ljava/io/DataOutputStream;

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->write([B)V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_13} :catch_15

    .line 324
    .end local v0    # "abiListBytes":[B
    nop

    .line 325
    return-void

    .line 322
    :catch_15
    move-exception v0

    .line 323
    .local v0, "ioe":Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Error writing to command socket"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private blacklist handleApiDenylistExemptions(Lcom/android/internal/os/ZygoteServer;[Ljava/lang/String;)Ljava/lang/Runnable;
    .registers 4
    .param p1, "zygoteServer"    # Lcom/android/internal/os/ZygoteServer;
    .param p2, "exemptions"    # [Ljava/lang/String;

    .line 413
    new-instance v0, Lcom/android/internal/os/ZygoteConnection$$ExternalSyntheticLambda1;

    invoke-direct {v0, p2}, Lcom/android/internal/os/ZygoteConnection$$ExternalSyntheticLambda1;-><init>([Ljava/lang/String;)V

    invoke-direct {p0, p1, v0}, Lcom/android/internal/os/ZygoteConnection;->stateChangeWithUsapPoolReset(Lcom/android/internal/os/ZygoteServer;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v0

    return-object v0
.end method

.method private blacklist handleBootCompleted()V
    .registers 4

    .line 340
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/os/ZygoteConnection;->mSocketOutStream:Ljava/io/DataOutputStream;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_6} :catch_b

    .line 343
    nop

    .line 345
    invoke-static {}, Ldalvik/system/VMRuntime;->bootCompleted()V

    .line 346
    return-void

    .line 341
    :catch_b
    move-exception v0

    .line 342
    .local v0, "ioe":Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Error writing to command socket"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private blacklist handleChildProc(Lcom/android/internal/os/ZygoteArguments;Ljava/io/FileDescriptor;Z)Ljava/lang/Runnable;
    .registers 11
    .param p1, "parsedArgs"    # Lcom/android/internal/os/ZygoteArguments;
    .param p2, "pipeFd"    # Ljava/io/FileDescriptor;
    .param p3, "isZygote"    # Z

    .line 512
    invoke-virtual {p0}, Lcom/android/internal/os/ZygoteConnection;->closeSocket()V

    .line 514
    const-string v0, "Zygote"

    invoke-static {p1, v0}, Lcom/android/internal/os/Zygote;->setAppProcessName(Lcom/android/internal/os/ZygoteArguments;Ljava/lang/String;)V

    .line 517
    const-wide/16 v0, 0x40

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 518
    iget-object v0, p1, Lcom/android/internal/os/ZygoteArguments;->mInvokeWith:Ljava/lang/String;

    if-nez v0, :cond_26

    .line 527
    if-nez p3, :cond_1f

    .line 528
    iget v0, p1, Lcom/android/internal/os/ZygoteArguments;->mTargetSdkVersion:I

    iget-object v1, p1, Lcom/android/internal/os/ZygoteArguments;->mDisabledCompatChanges:[J

    iget-object v2, p1, Lcom/android/internal/os/ZygoteArguments;->mRemainingArgs:[Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/android/internal/os/ZygoteInit;->zygoteInit(I[J[Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Runnable;

    move-result-object v0

    return-object v0

    .line 532
    :cond_1f
    iget-object v0, p1, Lcom/android/internal/os/ZygoteArguments;->mRemainingArgs:[Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/os/ZygoteInit;->childZygoteInit([Ljava/lang/String;)Ljava/lang/Runnable;

    move-result-object v0

    return-object v0

    .line 519
    :cond_26
    iget-object v1, p1, Lcom/android/internal/os/ZygoteArguments;->mInvokeWith:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/internal/os/ZygoteArguments;->mNiceName:Ljava/lang/String;

    iget v3, p1, Lcom/android/internal/os/ZygoteArguments;->mTargetSdkVersion:I

    .line 521
    invoke-static {}, Ldalvik/system/VMRuntime;->getCurrentInstructionSet()Ljava/lang/String;

    move-result-object v4

    iget-object v6, p1, Lcom/android/internal/os/ZygoteArguments;->mRemainingArgs:[Ljava/lang/String;

    .line 519
    move-object v5, p2

    .end local p2    # "pipeFd":Ljava/io/FileDescriptor;
    .local v5, "pipeFd":Ljava/io/FileDescriptor;
    invoke-static/range {v1 .. v6}, Lcom/android/internal/os/WrapperInit;->execApplication(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/io/FileDescriptor;[Ljava/lang/String;)V

    .line 525
    new-instance p2, Ljava/lang/IllegalStateException;

    const-string v0, "WrapperInit.execApplication unexpectedly returned"

    invoke-direct {p2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private blacklist handleHiddenApiAccessLogSampleRate(Lcom/android/internal/os/ZygoteServer;II)Ljava/lang/Runnable;
    .registers 5
    .param p1, "zygoteServer"    # Lcom/android/internal/os/ZygoteServer;
    .param p2, "samplingRate"    # I
    .param p3, "statsdSamplingRate"    # I

    .line 449
    new-instance v0, Lcom/android/internal/os/ZygoteConnection$$ExternalSyntheticLambda0;

    invoke-direct {v0, p2, p3}, Lcom/android/internal/os/ZygoteConnection$$ExternalSyntheticLambda0;-><init>(II)V

    invoke-direct {p0, p1, v0}, Lcom/android/internal/os/ZygoteConnection;->stateChangeWithUsapPoolReset(Lcom/android/internal/os/ZygoteServer;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v0

    return-object v0
.end method

.method private blacklist handleParentProc(ILjava/io/FileDescriptor;)V
    .registers 25
    .param p1, "pid"    # I
    .param p2, "pipeFd"    # Ljava/io/FileDescriptor;

    .line 546
    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    const-string v4, "Error reading pid from wrapped process, child may have died"

    const-string v5, "Zygote"

    if-lez v2, :cond_f

    .line 547
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/os/ZygoteConnection;->setChildPgid(I)V

    .line 550
    :cond_f
    const/4 v6, 0x0

    .line 551
    .local v6, "usingWrapper":Z
    if-eqz v3, :cond_10e

    if-lez v2, :cond_10e

    .line 552
    const/4 v7, -0x1

    .line 556
    .local v7, "innerPid":I
    const/4 v0, 0x4

    .line 558
    .local v0, "BYTES_REQUIRED":I
    const/4 v8, 0x1

    :try_start_17
    new-array v9, v8, [Landroid/system/StructPollfd;

    new-instance v10, Landroid/system/StructPollfd;

    invoke-direct {v10}, Landroid/system/StructPollfd;-><init>()V

    const/4 v11, 0x0

    aput-object v10, v9, v11

    .line 562
    .local v9, "fds":[Landroid/system/StructPollfd;
    const/4 v10, 0x4

    new-array v10, v10, [B

    .line 564
    .local v10, "data":[B
    const/16 v12, 0x4e20

    .line 565
    .local v12, "remainingSleepTime":I
    const/4 v13, 0x0

    .line 566
    .local v13, "dataIndex":I
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v14

    .line 568
    .local v14, "startTime":J
    :goto_2b
    array-length v8, v10

    if-ge v13, v8, :cond_95

    if-lez v12, :cond_95

    .line 569
    aget-object v8, v9, v11

    iput-object v3, v8, Landroid/system/StructPollfd;->fd:Ljava/io/FileDescriptor;

    .line 570
    aget-object v8, v9, v11

    move/from16 v16, v11

    sget v11, Landroid/system/OsConstants;->POLLIN:I

    int-to-short v11, v11

    iput-short v11, v8, Landroid/system/StructPollfd;->events:S

    .line 571
    aget-object v8, v9, v16

    move/from16 v11, v16

    iput-short v11, v8, Landroid/system/StructPollfd;->revents:S

    .line 572
    aget-object v8, v9, v11

    const/4 v11, 0x0

    iput-object v11, v8, Landroid/system/StructPollfd;->userData:Ljava/lang/Object;

    .line 574
    invoke-static {v9, v12}, Landroid/system/Os;->poll([Landroid/system/StructPollfd;I)I

    move-result v8

    .line 575
    .local v8, "res":I
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v17

    .line 576
    .local v17, "endTime":J
    sget-object v11, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_52} :catch_be

    move/from16 v19, v6

    move/from16 v20, v7

    .end local v6    # "usingWrapper":Z
    .end local v7    # "innerPid":I
    .local v19, "usingWrapper":Z
    .local v20, "innerPid":I
    sub-long v6, v17, v14

    move/from16 v21, v0

    .end local v0    # "BYTES_REQUIRED":I
    .local v21, "BYTES_REQUIRED":I
    :try_start_5a
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 577
    invoke-virtual {v11, v6, v7, v0}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v6

    long-to-int v0, v6

    .line 580
    .local v0, "elapsedTimeMs":I
    rsub-int v12, v0, 0x4e20

    .line 582
    if-lez v8, :cond_81

    .line 583
    const/16 v16, 0x0

    aget-object v6, v9, v16

    iget-short v6, v6, Landroid/system/StructPollfd;->revents:S

    sget v7, Landroid/system/OsConstants;->POLLIN:I

    and-int/2addr v6, v7

    if-eqz v6, :cond_9b

    .line 585
    const/4 v6, 0x1

    invoke-static {v3, v10, v13, v6}, Landroid/system/Os;->read(Ljava/io/FileDescriptor;[BII)I

    move-result v7

    .line 586
    .local v7, "readBytes":I
    if-ltz v7, :cond_79

    .line 589
    add-int/2addr v13, v7

    .line 590
    .end local v7    # "readBytes":I
    goto :goto_8b

    .line 587
    .restart local v7    # "readBytes":I
    :cond_79
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v11, "Some error"

    invoke-direct {v6, v11}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local v19    # "usingWrapper":Z
    .end local v20    # "innerPid":I
    .end local p0    # "this":Lcom/android/internal/os/ZygoteConnection;
    .end local p1    # "pid":I
    .end local p2    # "pipeFd":Ljava/io/FileDescriptor;
    throw v6

    .line 594
    .end local v7    # "readBytes":I
    .restart local v19    # "usingWrapper":Z
    .restart local v20    # "innerPid":I
    .restart local p0    # "this":Lcom/android/internal/os/ZygoteConnection;
    .restart local p1    # "pid":I
    .restart local p2    # "pipeFd":Ljava/io/FileDescriptor;
    :cond_81
    const/4 v6, 0x1

    const/16 v16, 0x0

    if-nez v8, :cond_8b

    .line 595
    const-string v7, "Timed out waiting for child."

    invoke-static {v5, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    .end local v0    # "elapsedTimeMs":I
    .end local v8    # "res":I
    .end local v17    # "endTime":J
    :cond_8b
    :goto_8b
    move v8, v6

    move/from16 v11, v16

    move/from16 v6, v19

    move/from16 v7, v20

    move/from16 v0, v21

    goto :goto_2b

    .line 568
    .end local v19    # "usingWrapper":Z
    .end local v20    # "innerPid":I
    .end local v21    # "BYTES_REQUIRED":I
    .local v0, "BYTES_REQUIRED":I
    .restart local v6    # "usingWrapper":Z
    .local v7, "innerPid":I
    :cond_95
    move/from16 v21, v0

    move/from16 v19, v6

    move/from16 v20, v7

    .line 599
    .end local v0    # "BYTES_REQUIRED":I
    .end local v6    # "usingWrapper":Z
    .end local v7    # "innerPid":I
    .restart local v19    # "usingWrapper":Z
    .restart local v20    # "innerPid":I
    .restart local v21    # "BYTES_REQUIRED":I
    :cond_9b
    array-length v0, v10

    if-ne v13, v0, :cond_ae

    .line 600
    new-instance v0, Ljava/io/DataInputStream;

    new-instance v6, Ljava/io/ByteArrayInputStream;

    invoke-direct {v6, v10}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v6}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 601
    .local v0, "is":Ljava/io/DataInputStream;
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v6
    :try_end_ac
    .catch Ljava/lang/Exception; {:try_start_5a .. :try_end_ac} :catch_ba

    move v7, v6

    .end local v20    # "innerPid":I
    .restart local v7    # "innerPid":I
    goto :goto_b0

    .line 599
    .end local v0    # "is":Ljava/io/DataInputStream;
    .end local v7    # "innerPid":I
    .restart local v20    # "innerPid":I
    :cond_ae
    move/from16 v7, v20

    .line 604
    .end local v20    # "innerPid":I
    .restart local v7    # "innerPid":I
    :goto_b0
    const/4 v0, -0x1

    if-ne v7, v0, :cond_b9

    .line 605
    :try_start_b3
    invoke-static {v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b6
    .catch Ljava/lang/Exception; {:try_start_b3 .. :try_end_b6} :catch_b7

    goto :goto_b9

    .line 607
    .end local v9    # "fds":[Landroid/system/StructPollfd;
    .end local v10    # "data":[B
    .end local v12    # "remainingSleepTime":I
    .end local v13    # "dataIndex":I
    .end local v14    # "startTime":J
    .end local v21    # "BYTES_REQUIRED":I
    :catch_b7
    move-exception v0

    goto :goto_c3

    .line 609
    :cond_b9
    :goto_b9
    goto :goto_c6

    .line 607
    .end local v7    # "innerPid":I
    .restart local v20    # "innerPid":I
    :catch_ba
    move-exception v0

    move/from16 v7, v20

    goto :goto_c3

    .end local v19    # "usingWrapper":Z
    .end local v20    # "innerPid":I
    .restart local v6    # "usingWrapper":Z
    .restart local v7    # "innerPid":I
    :catch_be
    move-exception v0

    move/from16 v19, v6

    move/from16 v20, v7

    .line 608
    .end local v6    # "usingWrapper":Z
    .local v0, "ex":Ljava/lang/Exception;
    .restart local v19    # "usingWrapper":Z
    :goto_c3
    invoke-static {v5, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 613
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_c6
    if-lez v7, :cond_110

    .line 614
    move v0, v7

    .line 615
    .local v0, "parentPid":I
    :goto_c9
    if-lez v0, :cond_d2

    if-eq v0, v2, :cond_d2

    .line 616
    invoke-static {v0}, Landroid/os/Process;->getParentPid(I)I

    move-result v0

    goto :goto_c9

    .line 618
    :cond_d2
    if-lez v0, :cond_ed

    .line 619
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Wrapped process has pid "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    move v2, v7

    .line 621
    .end local p1    # "pid":I
    .local v2, "pid":I
    const/4 v6, 0x1

    .end local v19    # "usingWrapper":Z
    .restart local v6    # "usingWrapper":Z
    goto :goto_112

    .line 623
    .end local v2    # "pid":I
    .end local v6    # "usingWrapper":Z
    .restart local v19    # "usingWrapper":Z
    .restart local p1    # "pid":I
    :cond_ed
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Wrapped process reported a pid that is not a child of the process that we forked: childPid="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " innerPid="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_110

    .line 551
    .end local v0    # "parentPid":I
    .end local v7    # "innerPid":I
    .end local v19    # "usingWrapper":Z
    .restart local v6    # "usingWrapper":Z
    :cond_10e
    move/from16 v19, v6

    .line 631
    .end local v6    # "usingWrapper":Z
    .restart local v19    # "usingWrapper":Z
    :cond_110
    :goto_110
    move/from16 v6, v19

    .end local v19    # "usingWrapper":Z
    .end local p1    # "pid":I
    .restart local v2    # "pid":I
    .restart local v6    # "usingWrapper":Z
    :goto_112
    :try_start_112
    iget-object v0, v1, Lcom/android/internal/os/ZygoteConnection;->mSocketOutStream:Ljava/io/DataOutputStream;

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 632
    iget-object v0, v1, Lcom/android/internal/os/ZygoteConnection;->mSocketOutStream:Ljava/io/DataOutputStream;

    invoke-virtual {v0, v6}, Ljava/io/DataOutputStream;->writeBoolean(Z)V
    :try_end_11c
    .catch Ljava/io/IOException; {:try_start_112 .. :try_end_11c} :catch_11e

    .line 635
    nop

    .line 636
    return-void

    .line 633
    :catch_11e
    move-exception v0

    .line 634
    .local v0, "ex":Ljava/io/IOException;
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Error writing to command socket"

    invoke-direct {v4, v5, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method private blacklist handlePidQuery()V
    .registers 5

    .line 329
    :try_start_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 330
    .local v0, "pidString":Ljava/lang/String;
    sget-object v1, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    .line 331
    .local v1, "pidStringBytes":[B
    iget-object v2, p0, Lcom/android/internal/os/ZygoteConnection;->mSocketOutStream:Ljava/io/DataOutputStream;

    array-length v3, v1

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 332
    iget-object v2, p0, Lcom/android/internal/os/ZygoteConnection;->mSocketOutStream:Ljava/io/DataOutputStream;

    invoke-virtual {v2, v1}, Ljava/io/DataOutputStream;->write([B)V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_19} :catch_1b

    .line 335
    .end local v0    # "pidString":Ljava/lang/String;
    .end local v1    # "pidStringBytes":[B
    nop

    .line 336
    return-void

    .line 333
    :catch_1b
    move-exception v0

    .line 334
    .local v0, "ioe":Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Error writing to command socket"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private blacklist handlePreload()V
    .registers 4

    .line 356
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/os/ZygoteConnection;->isPreloadComplete()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 357
    iget-object v0, p0, Lcom/android/internal/os/ZygoteConnection;->mSocketOutStream:Ljava/io/DataOutputStream;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    goto :goto_16

    .line 359
    :cond_d
    invoke-virtual {p0}, Lcom/android/internal/os/ZygoteConnection;->preload()V

    .line 360
    iget-object v0, p0, Lcom/android/internal/os/ZygoteConnection;->mSocketOutStream:Ljava/io/DataOutputStream;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_16} :catch_18

    .line 364
    :goto_16
    nop

    .line 365
    return-void

    .line 362
    :catch_18
    move-exception v0

    .line 363
    .local v0, "ioe":Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Error writing to command socket"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private blacklist handleUsapPoolStatusChange(Lcom/android/internal/os/ZygoteServer;Z)Ljava/lang/Runnable;
    .registers 6
    .param p1, "zygoteServer"    # Lcom/android/internal/os/ZygoteServer;
    .param p2, "newStatus"    # Z

    .line 419
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/os/ZygoteConnection;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {p1, p2, v0}, Lcom/android/internal/os/ZygoteServer;->setUsapPoolStatus(ZLandroid/net/LocalSocket;)Ljava/lang/Runnable;

    move-result-object v0

    .line 421
    .local v0, "fpResult":Ljava/lang/Runnable;
    if-nez v0, :cond_f

    .line 422
    iget-object v1, p0, Lcom/android/internal/os/ZygoteConnection;->mSocketOutStream:Ljava/io/DataOutputStream;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    goto :goto_12

    .line 424
    :cond_f
    invoke-virtual {p1}, Lcom/android/internal/os/ZygoteServer;->setForkChild()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_12} :catch_13

    .line 427
    :goto_12
    return-object v0

    .line 428
    .end local v0    # "fpResult":Ljava/lang/Runnable;
    :catch_13
    move-exception v0

    .line 429
    .local v0, "ioe":Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Error writing to command socket"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method static synthetic blacklist lambda$handleApiDenylistExemptions$0([Ljava/lang/String;)V
    .registers 1
    .param p0, "exemptions"    # [Ljava/lang/String;

    .line 414
    invoke-static {p0}, Lcom/android/internal/os/ZygoteInit;->setApiDenylistExemptions([Ljava/lang/String;)V

    return-void
.end method

.method static synthetic blacklist lambda$handleHiddenApiAccessLogSampleRate$1(II)V
    .registers 4
    .param p0, "samplingRate"    # I
    .param p1, "statsdSamplingRate"    # I

    .line 450
    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 451
    .local v0, "maxSamplingRate":I
    invoke-static {v0}, Lcom/android/internal/os/ZygoteInit;->setHiddenApiAccessLogSampleRate(I)V

    .line 452
    invoke-static {p0, p1}, Lcom/android/internal/os/StatsdHiddenApiUsageLogger;->setHiddenApiAccessLogSampleRates(II)V

    .line 454
    invoke-static {}, Lcom/android/internal/os/StatsdHiddenApiUsageLogger;->getInstance()Lcom/android/internal/os/StatsdHiddenApiUsageLogger;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/os/ZygoteInit;->setHiddenApiUsageLogger(Ldalvik/system/VMRuntime$HiddenApiUsageLogger;)V

    .line 455
    return-void
.end method

.method private blacklist setChildPgid(I)V
    .registers 5
    .param p1, "pid"    # I

    .line 641
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/os/ZygoteConnection;->peer:Landroid/net/Credentials;

    invoke-virtual {v0}, Landroid/net/Credentials;->getPid()I

    move-result v0

    invoke-static {v0}, Landroid/system/Os;->getpgid(I)I

    move-result v0

    invoke-static {p1, v0}, Landroid/system/Os;->setpgid(II)V
    :try_end_d
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_d} :catch_e

    .line 649
    goto :goto_16

    .line 642
    :catch_e
    move-exception v0

    .line 647
    .local v0, "ex":Landroid/system/ErrnoException;
    const-string v1, "Zygote"

    const-string v2, "Zygote: setpgid failed. This is normal if peer is not in our session"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    .end local v0    # "ex":Landroid/system/ErrnoException;
    :goto_16
    return-void
.end method

.method private blacklist stateChangeWithUsapPoolReset(Lcom/android/internal/os/ZygoteServer;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .registers 7
    .param p1, "zygoteServer"    # Lcom/android/internal/os/ZygoteServer;
    .param p2, "stateChangeCode"    # Ljava/lang/Runnable;

    .line 370
    :try_start_0
    invoke-virtual {p1}, Lcom/android/internal/os/ZygoteServer;->isUsapPoolEnabled()Z

    move-result v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_4} :catch_3e

    const-string v1, "Zygote"

    if-eqz v0, :cond_10

    .line 371
    :try_start_8
    const-string v0, "Emptying USAP Pool due to state change."

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    invoke-static {}, Lcom/android/internal/os/Zygote;->emptyUsapPool()V

    .line 375
    :cond_10
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    .line 377
    invoke-virtual {p1}, Lcom/android/internal/os/ZygoteServer;->isUsapPoolEnabled()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_37

    .line 378
    iget-object v0, p0, Lcom/android/internal/os/ZygoteConnection;->mSocket:Landroid/net/LocalSocket;

    .line 380
    invoke-virtual {v0}, Landroid/net/LocalSocket;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v0

    filled-new-array {v0}, [I

    move-result-object v0

    .line 379
    invoke-virtual {p1, v0, v2}, Lcom/android/internal/os/ZygoteServer;->fillUsapPool([IZ)Ljava/lang/Runnable;

    move-result-object v0

    .line 382
    .local v0, "fpResult":Ljava/lang/Runnable;
    if-eqz v0, :cond_32

    .line 383
    invoke-virtual {p1}, Lcom/android/internal/os/ZygoteServer;->setForkChild()V

    .line 384
    return-object v0

    .line 386
    :cond_32
    const-string v3, "Finished refilling USAP Pool after state change."

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    .end local v0    # "fpResult":Ljava/lang/Runnable;
    :cond_37
    iget-object v0, p0, Lcom/android/internal/os/ZygoteConnection;->mSocketOutStream:Ljava/io/DataOutputStream;

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_3c} :catch_3e

    .line 392
    const/4 v0, 0x0

    return-object v0

    .line 393
    :catch_3e
    move-exception v0

    .line 394
    .local v0, "ioe":Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Error writing to command socket"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method protected blacklist canPreloadApp()Z
    .registers 2

    .line 471
    const/4 v0, 0x0

    return v0
.end method

.method greylist closeSocket()V
    .registers 4

    .line 484
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/os/ZygoteConnection;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v0}, Landroid/net/LocalSocket;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_6

    .line 488
    goto :goto_e

    .line 485
    :catch_6
    move-exception v0

    .line 486
    .local v0, "ex":Ljava/io/IOException;
    const-string v1, "Zygote"

    const-string v2, "Exception while closing command socket in parent"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 489
    .end local v0    # "ex":Ljava/io/IOException;
    :goto_e
    return-void
.end method

.method blacklist getFileDescriptor()Ljava/io/FileDescriptor;
    .registers 2

    .line 108
    iget-object v0, p0, Lcom/android/internal/os/ZygoteConnection;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v0}, Landroid/net/LocalSocket;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method protected blacklist getSocketOutputStream()Ljava/io/DataOutputStream;
    .registers 2

    .line 467
    iget-object v0, p0, Lcom/android/internal/os/ZygoteConnection;->mSocketOutStream:Ljava/io/DataOutputStream;

    return-object v0
.end method

.method protected blacklist handlePreloadApp(Landroid/content/pm/ApplicationInfo;)V
    .registers 4
    .param p1, "aInfo"    # Landroid/content/pm/ApplicationInfo;

    .line 475
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Zygote does not support app preloading"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method blacklist isClosedByPeer()Z
    .registers 2

    .line 492
    iget-boolean v0, p0, Lcom/android/internal/os/ZygoteConnection;->isEof:Z

    return v0
.end method

.method protected blacklist isPreloadComplete()Z
    .registers 2

    .line 463
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->isPreloadComplete()Z

    move-result v0

    return v0
.end method

.method protected blacklist preload()V
    .registers 1

    .line 459
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->lazyPreload()V

    .line 460
    return-void
.end method

.method blacklist processCommand(Lcom/android/internal/os/ZygoteServer;Z)Ljava/lang/Runnable;
    .registers 32
    .param p1, "zygoteServer"    # Lcom/android/internal/os/ZygoteServer;
    .param p2, "multipleOK"    # Z

    .line 123
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    new-instance v0, Lcom/android/internal/os/ZygoteCommandBuffer;

    iget-object v3, v1, Lcom/android/internal/os/ZygoteConnection;->mSocket:Landroid/net/LocalSocket;

    invoke-direct {v0, v3}, Lcom/android/internal/os/ZygoteCommandBuffer;-><init>(Landroid/net/LocalSocket;)V

    move-object v3, v0

    .line 126
    .local v3, "argBuffer":Lcom/android/internal/os/ZygoteCommandBuffer;
    :goto_c
    :try_start_c
    invoke-static {v3}, Lcom/android/internal/os/ZygoteArguments;->getInstance(Lcom/android/internal/os/ZygoteCommandBuffer;)Lcom/android/internal/os/ZygoteArguments;

    move-result-object v0
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_10} :catch_25b
    .catchall {:try_start_c .. :try_end_10} :catchall_258

    move-object v4, v0

    .line 130
    .local v4, "parsedArgs":Lcom/android/internal/os/ZygoteArguments;
    nop

    .line 131
    const/4 v0, 0x1

    const/4 v5, 0x0

    if-nez v4, :cond_1d

    .line 132
    :try_start_16
    iput-boolean v0, v1, Lcom/android/internal/os/ZygoteConnection;->isEof:Z
    :try_end_18
    .catchall {:try_start_16 .. :try_end_18} :catchall_258

    .line 133
    nop

    .line 299
    invoke-virtual {v3}, Lcom/android/internal/os/ZygoteCommandBuffer;->close()V

    .line 133
    return-object v5

    .line 137
    :cond_1d
    const/4 v6, 0x0

    .line 138
    .local v6, "childPipeFd":Ljava/io/FileDescriptor;
    const/4 v7, 0x0

    .line 140
    .local v7, "serverPipeFd":Ljava/io/FileDescriptor;
    :try_start_1f
    iget-boolean v8, v4, Lcom/android/internal/os/ZygoteArguments;->mBootCompleted:Z

    if-eqz v8, :cond_2b

    .line 141
    invoke-direct {v1}, Lcom/android/internal/os/ZygoteConnection;->handleBootCompleted()V
    :try_end_26
    .catchall {:try_start_1f .. :try_end_26} :catchall_258

    .line 142
    nop

    .line 299
    invoke-virtual {v3}, Lcom/android/internal/os/ZygoteCommandBuffer;->close()V

    .line 142
    return-object v5

    .line 145
    :cond_2b
    :try_start_2b
    iget-boolean v8, v4, Lcom/android/internal/os/ZygoteArguments;->mAbiListQuery:Z

    if-eqz v8, :cond_37

    .line 146
    invoke-direct {v1}, Lcom/android/internal/os/ZygoteConnection;->handleAbiListQuery()V
    :try_end_32
    .catchall {:try_start_2b .. :try_end_32} :catchall_258

    .line 147
    nop

    .line 299
    invoke-virtual {v3}, Lcom/android/internal/os/ZygoteCommandBuffer;->close()V

    .line 147
    return-object v5

    .line 150
    :cond_37
    :try_start_37
    iget-boolean v8, v4, Lcom/android/internal/os/ZygoteArguments;->mPidQuery:Z

    if-eqz v8, :cond_43

    .line 151
    invoke-direct {v1}, Lcom/android/internal/os/ZygoteConnection;->handlePidQuery()V
    :try_end_3e
    .catchall {:try_start_37 .. :try_end_3e} :catchall_258

    .line 152
    nop

    .line 299
    invoke-virtual {v3}, Lcom/android/internal/os/ZygoteCommandBuffer;->close()V

    .line 152
    return-object v5

    .line 155
    :cond_43
    :try_start_43
    iget-boolean v8, v4, Lcom/android/internal/os/ZygoteArguments;->mUsapPoolStatusSpecified:Z

    const/4 v9, -0x1

    if-nez v8, :cond_225

    iget-object v8, v4, Lcom/android/internal/os/ZygoteArguments;->mApiDenylistExemptions:[Ljava/lang/String;

    if-nez v8, :cond_225

    iget v8, v4, Lcom/android/internal/os/ZygoteArguments;->mHiddenApiAccessLogSampleRate:I

    if-ne v8, v9, :cond_225

    iget v8, v4, Lcom/android/internal/os/ZygoteArguments;->mHiddenApiAccessStatslogSampleRate:I

    if-eq v8, v9, :cond_56

    .line 160
    goto/16 :goto_225

    .line 163
    :cond_56
    iget-boolean v8, v4, Lcom/android/internal/os/ZygoteArguments;->mPreloadDefault:Z

    if-eqz v8, :cond_62

    .line 164
    invoke-direct {v1}, Lcom/android/internal/os/ZygoteConnection;->handlePreload()V
    :try_end_5d
    .catchall {:try_start_43 .. :try_end_5d} :catchall_258

    .line 165
    nop

    .line 299
    invoke-virtual {v3}, Lcom/android/internal/os/ZygoteCommandBuffer;->close()V

    .line 165
    return-object v5

    .line 168
    :cond_62
    :try_start_62
    invoke-virtual {v1}, Lcom/android/internal/os/ZygoteConnection;->canPreloadApp()Z

    move-result v8

    const/4 v10, 0x0

    if-eqz v8, :cond_9f

    iget-object v8, v4, Lcom/android/internal/os/ZygoteArguments;->mPreloadApp:Ljava/lang/String;

    if-eqz v8, :cond_9f

    .line 169
    invoke-static {}, Ljava/util/Base64;->getDecoder()Ljava/util/Base64$Decoder;

    move-result-object v0

    iget-object v8, v4, Lcom/android/internal/os/ZygoteArguments;->mPreloadApp:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/util/Base64$Decoder;->decode(Ljava/lang/String;)[B

    move-result-object v0

    .line 170
    .local v0, "rawParcelData":[B
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v8

    .line 171
    .local v8, "appInfoParcel":Landroid/os/Parcel;
    array-length v9, v0

    invoke-virtual {v8, v0, v10, v9}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 172
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 173
    sget-object v9, Landroid/content/pm/ApplicationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 174
    invoke-interface {v9, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ApplicationInfo;

    .line 175
    .local v9, "appInfo":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v8}, Landroid/os/Parcel;->recycle()V

    .line 176
    if-eqz v9, :cond_97

    .line 177
    invoke-virtual {v1, v9}, Lcom/android/internal/os/ZygoteConnection;->handlePreloadApp(Landroid/content/pm/ApplicationInfo;)V
    :try_end_92
    .catchall {:try_start_62 .. :try_end_92} :catchall_258

    .line 181
    nop

    .line 299
    invoke-virtual {v3}, Lcom/android/internal/os/ZygoteCommandBuffer;->close()V

    .line 181
    return-object v5

    .line 179
    :cond_97
    :try_start_97
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v10, "Failed to deserialize --preload-app"

    invoke-direct {v5, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v3    # "argBuffer":Lcom/android/internal/os/ZygoteCommandBuffer;
    .end local p0    # "this":Lcom/android/internal/os/ZygoteConnection;
    .end local p1    # "zygoteServer":Lcom/android/internal/os/ZygoteServer;
    .end local p2    # "multipleOK":Z
    throw v5

    .line 184
    .end local v0    # "rawParcelData":[B
    .end local v8    # "appInfoParcel":Landroid/os/Parcel;
    .end local v9    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v3    # "argBuffer":Lcom/android/internal/os/ZygoteCommandBuffer;
    .restart local p0    # "this":Lcom/android/internal/os/ZygoteConnection;
    .restart local p1    # "zygoteServer":Lcom/android/internal/os/ZygoteServer;
    .restart local p2    # "multipleOK":Z
    :cond_9f
    iget-wide v11, v4, Lcom/android/internal/os/ZygoteArguments;->mPermittedCapabilities:J

    const-wide/16 v13, 0x0

    cmp-long v8, v11, v13

    if-nez v8, :cond_1f6

    iget-wide v11, v4, Lcom/android/internal/os/ZygoteArguments;->mEffectiveCapabilities:J

    cmp-long v8, v11, v13

    if-nez v8, :cond_1f6

    .line 192
    iget-object v8, v1, Lcom/android/internal/os/ZygoteConnection;->peer:Landroid/net/Credentials;

    invoke-static {v4, v8}, Lcom/android/internal/os/Zygote;->applyUidSecurityPolicy(Lcom/android/internal/os/ZygoteArguments;Landroid/net/Credentials;)V

    .line 193
    iget-object v8, v1, Lcom/android/internal/os/ZygoteConnection;->peer:Landroid/net/Credentials;

    invoke-static {v4, v8}, Lcom/android/internal/os/Zygote;->applyInvokeWithSecurityPolicy(Lcom/android/internal/os/ZygoteArguments;Landroid/net/Credentials;)V

    .line 195
    invoke-static {v4}, Lcom/android/internal/os/Zygote;->applyDebuggerSystemProperty(Lcom/android/internal/os/ZygoteArguments;)V

    .line 196
    invoke-static {v4}, Lcom/android/internal/os/Zygote;->applyInvokeWithSystemProperty(Lcom/android/internal/os/ZygoteArguments;)V

    .line 198
    const/4 v8, 0x0

    .line 200
    .local v8, "rlimits":[[I
    iget-object v11, v4, Lcom/android/internal/os/ZygoteArguments;->mRLimits:Ljava/util/ArrayList;

    if-eqz v11, :cond_cd

    .line 201
    iget-object v11, v4, Lcom/android/internal/os/ZygoteArguments;->mRLimits:Ljava/util/ArrayList;

    sget-object v12, Lcom/android/internal/os/Zygote;->INT_ARRAY_2D:[[I

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [[I

    move-object v8, v11

    .line 204
    :cond_cd
    const/4 v11, 0x0

    .line 206
    .local v11, "fdsToIgnore":[I
    iget-object v12, v4, Lcom/android/internal/os/ZygoteArguments;->mInvokeWith:Ljava/lang/String;
    :try_end_d0
    .catchall {:try_start_97 .. :try_end_d0} :catchall_258

    if-eqz v12, :cond_fb

    .line 208
    :try_start_d2
    sget v12, Landroid/system/OsConstants;->O_CLOEXEC:I

    invoke-static {v12}, Landroid/system/Os;->pipe2(I)[Ljava/io/FileDescriptor;

    move-result-object v12

    .line 209
    .local v12, "pipeFds":[Ljava/io/FileDescriptor;
    aget-object v13, v12, v0

    move-object v6, v13

    .line 210
    aget-object v13, v12, v10

    move-object v7, v13

    .line 211
    sget v13, Landroid/system/OsConstants;->F_SETFD:I

    invoke-static {v6, v13, v10}, Landroid/system/Os;->fcntlInt(Ljava/io/FileDescriptor;II)I

    .line 212
    invoke-virtual {v6}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v13

    invoke-virtual {v7}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v14

    filled-new-array {v13, v14}, [I

    move-result-object v13
    :try_end_ef
    .catch Landroid/system/ErrnoException; {:try_start_d2 .. :try_end_ef} :catch_f2
    .catchall {:try_start_d2 .. :try_end_ef} :catchall_258

    move-object v11, v13

    .line 216
    .end local v12    # "pipeFds":[Ljava/io/FileDescriptor;
    move-object v15, v11

    goto :goto_fc

    .line 213
    :catch_f2
    move-exception v0

    .line 214
    .local v0, "errnoEx":Landroid/system/ErrnoException;
    :try_start_f3
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v9, "Unable to set up pipe for invoke-with"

    invoke-direct {v5, v9, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v3    # "argBuffer":Lcom/android/internal/os/ZygoteCommandBuffer;
    .end local p0    # "this":Lcom/android/internal/os/ZygoteConnection;
    .end local p1    # "zygoteServer":Lcom/android/internal/os/ZygoteServer;
    .end local p2    # "multipleOK":Z
    throw v5

    .line 206
    .end local v0    # "errnoEx":Landroid/system/ErrnoException;
    .restart local v3    # "argBuffer":Lcom/android/internal/os/ZygoteCommandBuffer;
    .restart local p0    # "this":Lcom/android/internal/os/ZygoteConnection;
    .restart local p1    # "zygoteServer":Lcom/android/internal/os/ZygoteServer;
    .restart local p2    # "multipleOK":Z
    :cond_fb
    move-object v15, v11

    .line 231
    .end local v11    # "fdsToIgnore":[I
    .local v15, "fdsToIgnore":[I
    :goto_fc
    filled-new-array {v9, v9}, [I

    move-result-object v14

    .line 233
    .local v14, "fdsToClose":[I
    iget-object v9, v1, Lcom/android/internal/os/ZygoteConnection;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v9}, Landroid/net/LocalSocket;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v9

    move-object/from16 v25, v9

    .line 235
    .local v25, "fd":Ljava/io/FileDescriptor;
    if-eqz v25, :cond_110

    .line 236
    invoke-virtual/range {v25 .. v25}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v9

    aput v9, v14, v10

    .line 239
    :cond_110
    invoke-virtual {v2}, Lcom/android/internal/os/ZygoteServer;->getZygoteSocketFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v9

    move-object/from16 v26, v9

    .line 241
    .local v26, "zygoteFd":Ljava/io/FileDescriptor;
    if-eqz v26, :cond_11e

    .line 242
    invoke-virtual/range {v26 .. v26}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v9

    aput v9, v14, v0

    .line 245
    :cond_11e
    iget-object v0, v4, Lcom/android/internal/os/ZygoteArguments;->mInvokeWith:Ljava/lang/String;

    if-nez v0, :cond_15c

    iget-boolean v0, v4, Lcom/android/internal/os/ZygoteArguments;->mStartChildZygote:Z

    if-nez v0, :cond_15c

    if-eqz p2, :cond_15c

    iget-object v0, v1, Lcom/android/internal/os/ZygoteConnection;->peer:Landroid/net/Credentials;

    .line 246
    invoke-virtual {v0}, Landroid/net/Credentials;->getUid()I

    move-result v0

    const/16 v9, 0x3e8

    if-eq v0, v9, :cond_133

    goto :goto_15c

    .line 282
    :cond_133
    invoke-static {}, Ldalvik/system/ZygoteHooks;->preFork()V

    .line 283
    nop

    .line 284
    invoke-virtual {v2}, Lcom/android/internal/os/ZygoteServer;->getZygoteSocketFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    iget-object v5, v1, Lcom/android/internal/os/ZygoteConnection;->peer:Landroid/net/Credentials;

    .line 285
    invoke-virtual {v5}, Landroid/net/Credentials;->getUid()I

    move-result v5

    iget-object v9, v1, Lcom/android/internal/os/ZygoteConnection;->peer:Landroid/net/Credentials;

    invoke-static {v9}, Lcom/android/internal/os/Zygote;->minChildUid(Landroid/net/Credentials;)I

    move-result v9

    iget-object v10, v4, Lcom/android/internal/os/ZygoteArguments;->mNiceName:Ljava/lang/String;

    .line 283
    invoke-static {v3, v0, v5, v9, v10}, Lcom/android/internal/os/Zygote;->forkSimpleApps(Lcom/android/internal/os/ZygoteCommandBuffer;Ljava/io/FileDescriptor;IILjava/lang/String;)Ljava/lang/Runnable;

    move-result-object v0

    .line 286
    .local v0, "result":Ljava/lang/Runnable;
    if-nez v0, :cond_154

    .line 289
    invoke-static {}, Ldalvik/system/ZygoteHooks;->postForkCommon()V

    .line 291
    goto/16 :goto_c

    .line 294
    :cond_154
    invoke-virtual {v2}, Lcom/android/internal/os/ZygoteServer;->setForkChild()V
    :try_end_157
    .catchall {:try_start_f3 .. :try_end_157} :catchall_258

    .line 295
    nop

    .line 299
    invoke-virtual {v3}, Lcom/android/internal/os/ZygoteCommandBuffer;->close()V

    .line 295
    return-object v0

    .line 248
    .end local v0    # "result":Ljava/lang/Runnable;
    :cond_15c
    :goto_15c
    move-object v9, v6

    .end local v6    # "childPipeFd":Ljava/io/FileDescriptor;
    .local v9, "childPipeFd":Ljava/io/FileDescriptor;
    :try_start_15d
    iget v6, v4, Lcom/android/internal/os/ZygoteArguments;->mUid:I

    move-object v10, v7

    .end local v7    # "serverPipeFd":Ljava/io/FileDescriptor;
    .local v10, "serverPipeFd":Ljava/io/FileDescriptor;
    iget v7, v4, Lcom/android/internal/os/ZygoteArguments;->mGid:I

    move-object v11, v10

    move-object v10, v8

    .end local v8    # "rlimits":[[I
    .local v10, "rlimits":[[I
    .local v11, "serverPipeFd":Ljava/io/FileDescriptor;
    iget-object v8, v4, Lcom/android/internal/os/ZygoteArguments;->mGids:[I

    move-object v12, v9

    .end local v9    # "childPipeFd":Ljava/io/FileDescriptor;
    .local v12, "childPipeFd":Ljava/io/FileDescriptor;
    iget v9, v4, Lcom/android/internal/os/ZygoteArguments;->mRuntimeFlags:I

    move-object v13, v11

    .end local v11    # "serverPipeFd":Ljava/io/FileDescriptor;
    .local v13, "serverPipeFd":Ljava/io/FileDescriptor;
    iget v11, v4, Lcom/android/internal/os/ZygoteArguments;->mMountExternal:I

    move-object/from16 v16, v12

    .end local v12    # "childPipeFd":Ljava/io/FileDescriptor;
    .local v16, "childPipeFd":Ljava/io/FileDescriptor;
    iget-object v12, v4, Lcom/android/internal/os/ZygoteArguments;->mSeInfo:Ljava/lang/String;

    move-object/from16 v17, v13

    .end local v13    # "serverPipeFd":Ljava/io/FileDescriptor;
    .local v17, "serverPipeFd":Ljava/io/FileDescriptor;
    iget-object v13, v4, Lcom/android/internal/os/ZygoteArguments;->mNiceName:Ljava/lang/String;

    iget-boolean v0, v4, Lcom/android/internal/os/ZygoteArguments;->mStartChildZygote:Z

    move-object/from16 v27, v5

    iget-object v5, v4, Lcom/android/internal/os/ZygoteArguments;->mInstructionSet:Ljava/lang/String;

    move/from16 v18, v0

    iget-object v0, v4, Lcom/android/internal/os/ZygoteArguments;->mAppDataDir:Ljava/lang/String;

    move-object/from16 v19, v0

    iget-boolean v0, v4, Lcom/android/internal/os/ZygoteArguments;->mIsTopApp:Z

    move/from16 v20, v0

    iget-object v0, v4, Lcom/android/internal/os/ZygoteArguments;->mPkgDataInfoList:[Ljava/lang/String;

    move-object/from16 v21, v0

    iget-object v0, v4, Lcom/android/internal/os/ZygoteArguments;->mAllowlistedDataInfoList:[Ljava/lang/String;

    move-object/from16 v22, v0

    iget-boolean v0, v4, Lcom/android/internal/os/ZygoteArguments;->mBindMountAppDataDirs:Z

    move/from16 v23, v0

    iget-boolean v0, v4, Lcom/android/internal/os/ZygoteArguments;->mBindMountAppStorageDirs:Z

    move/from16 v24, v0

    iget-boolean v0, v4, Lcom/android/internal/os/ZygoteArguments;->mBindMountSyspropOverrides:Z

    move-object/from16 v28, v17

    move-object/from16 v17, v5

    move-object/from16 v5, v16

    move/from16 v16, v18

    move-object/from16 v18, v19

    move/from16 v19, v20

    move-object/from16 v20, v21

    move-object/from16 v21, v22

    move/from16 v22, v23

    move/from16 v23, v24

    move/from16 v24, v0

    .end local v16    # "childPipeFd":Ljava/io/FileDescriptor;
    .end local v17    # "serverPipeFd":Ljava/io/FileDescriptor;
    .local v5, "childPipeFd":Ljava/io/FileDescriptor;
    .local v28, "serverPipeFd":Ljava/io/FileDescriptor;
    invoke-static/range {v6 .. v24}, Lcom/android/internal/os/Zygote;->forkAndSpecialize(II[II[[IILjava/lang/String;Ljava/lang/String;[I[IZLjava/lang/String;Ljava/lang/String;Z[Ljava/lang/String;[Ljava/lang/String;ZZZ)I

    move-result v0
    :try_end_1b0
    .catchall {:try_start_15d .. :try_end_1b0} :catchall_258

    move v6, v0

    .line 259
    .local v6, "pid":I
    if-nez v6, :cond_1d3

    .line 261
    :try_start_1b3
    invoke-virtual {v2}, Lcom/android/internal/os/ZygoteServer;->setForkChild()V

    .line 263
    invoke-virtual {v2}, Lcom/android/internal/os/ZygoteServer;->closeServerSocket()V

    .line 264
    invoke-static/range {v28 .. v28}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V
    :try_end_1bc
    .catchall {:try_start_1b3 .. :try_end_1bc} :catchall_1cf

    .line 265
    const/4 v7, 0x0

    .line 267
    .end local v28    # "serverPipeFd":Ljava/io/FileDescriptor;
    .restart local v7    # "serverPipeFd":Ljava/io/FileDescriptor;
    :try_start_1bd
    iget-boolean v0, v4, Lcom/android/internal/os/ZygoteArguments;->mStartChildZygote:Z

    invoke-direct {v1, v4, v5, v0}, Lcom/android/internal/os/ZygoteConnection;->handleChildProc(Lcom/android/internal/os/ZygoteArguments;Ljava/io/FileDescriptor;Z)Ljava/lang/Runnable;

    move-result-object v0
    :try_end_1c3
    .catchall {:try_start_1bd .. :try_end_1c3} :catchall_1cd

    .line 278
    :try_start_1c3
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    .line 279
    invoke-static {v7}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V
    :try_end_1c9
    .catchall {:try_start_1c3 .. :try_end_1c9} :catchall_258

    .line 299
    invoke-virtual {v3}, Lcom/android/internal/os/ZygoteCommandBuffer;->close()V

    .line 267
    return-object v0

    .line 278
    :catchall_1cd
    move-exception v0

    goto :goto_1ee

    .end local v7    # "serverPipeFd":Ljava/io/FileDescriptor;
    .restart local v28    # "serverPipeFd":Ljava/io/FileDescriptor;
    :catchall_1cf
    move-exception v0

    move-object/from16 v7, v28

    goto :goto_1ee

    .line 272
    :cond_1d3
    :try_start_1d3
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V
    :try_end_1d6
    .catchall {:try_start_1d3 .. :try_end_1d6} :catchall_1ea

    .line 273
    const/4 v5, 0x0

    .line 274
    move-object/from16 v13, v28

    .end local v28    # "serverPipeFd":Ljava/io/FileDescriptor;
    .restart local v13    # "serverPipeFd":Ljava/io/FileDescriptor;
    :try_start_1d9
    invoke-direct {v1, v6, v13}, Lcom/android/internal/os/ZygoteConnection;->handleParentProc(ILjava/io/FileDescriptor;)V
    :try_end_1dc
    .catchall {:try_start_1d9 .. :try_end_1dc} :catchall_1e7

    .line 275
    nop

    .line 278
    :try_start_1dd
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    .line 279
    invoke-static {v13}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V
    :try_end_1e3
    .catchall {:try_start_1dd .. :try_end_1e3} :catchall_258

    .line 299
    invoke-virtual {v3}, Lcom/android/internal/os/ZygoteCommandBuffer;->close()V

    .line 275
    return-object v27

    .line 278
    :catchall_1e7
    move-exception v0

    move-object v7, v13

    goto :goto_1ee

    .end local v13    # "serverPipeFd":Ljava/io/FileDescriptor;
    .restart local v28    # "serverPipeFd":Ljava/io/FileDescriptor;
    :catchall_1ea
    move-exception v0

    move-object/from16 v13, v28

    move-object v7, v13

    .end local v28    # "serverPipeFd":Ljava/io/FileDescriptor;
    .restart local v7    # "serverPipeFd":Ljava/io/FileDescriptor;
    :goto_1ee
    :try_start_1ee
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    .line 279
    invoke-static {v7}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    .line 280
    nop

    .end local v3    # "argBuffer":Lcom/android/internal/os/ZygoteCommandBuffer;
    .end local p0    # "this":Lcom/android/internal/os/ZygoteConnection;
    .end local p1    # "zygoteServer":Lcom/android/internal/os/ZygoteServer;
    .end local p2    # "multipleOK":Z
    throw v0

    .line 186
    .end local v5    # "childPipeFd":Ljava/io/FileDescriptor;
    .end local v10    # "rlimits":[[I
    .end local v14    # "fdsToClose":[I
    .end local v15    # "fdsToIgnore":[I
    .end local v25    # "fd":Ljava/io/FileDescriptor;
    .end local v26    # "zygoteFd":Ljava/io/FileDescriptor;
    .restart local v3    # "argBuffer":Lcom/android/internal/os/ZygoteCommandBuffer;
    .local v6, "childPipeFd":Ljava/io/FileDescriptor;
    .restart local p0    # "this":Lcom/android/internal/os/ZygoteConnection;
    .restart local p1    # "zygoteServer":Lcom/android/internal/os/ZygoteServer;
    .restart local p2    # "multipleOK":Z
    :cond_1f6
    new-instance v0, Lcom/android/internal/os/ZygoteSecurityException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Client may not specify capabilities: permitted=0x"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v8, v4, Lcom/android/internal/os/ZygoteArguments;->mPermittedCapabilities:J

    .line 187
    invoke-static {v8, v9}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, ", effective=0x"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v8, v4, Lcom/android/internal/os/ZygoteArguments;->mEffectiveCapabilities:J

    .line 189
    invoke-static {v8, v9}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/android/internal/os/ZygoteSecurityException;-><init>(Ljava/lang/String;)V

    .end local v3    # "argBuffer":Lcom/android/internal/os/ZygoteCommandBuffer;
    .end local p0    # "this":Lcom/android/internal/os/ZygoteConnection;
    .end local p1    # "zygoteServer":Lcom/android/internal/os/ZygoteServer;
    .end local p2    # "multipleOK":Z
    throw v0
    :try_end_225
    .catchall {:try_start_1ee .. :try_end_225} :catchall_258

    .line 299
    .end local v6    # "childPipeFd":Ljava/io/FileDescriptor;
    .end local v7    # "serverPipeFd":Ljava/io/FileDescriptor;
    .restart local v3    # "argBuffer":Lcom/android/internal/os/ZygoteCommandBuffer;
    .restart local p0    # "this":Lcom/android/internal/os/ZygoteConnection;
    .restart local p1    # "zygoteServer":Lcom/android/internal/os/ZygoteServer;
    .restart local p2    # "multipleOK":Z
    :cond_225
    :goto_225
    invoke-virtual {v3}, Lcom/android/internal/os/ZygoteCommandBuffer;->close()V

    .line 301
    .end local v3    # "argBuffer":Lcom/android/internal/os/ZygoteCommandBuffer;
    iget-boolean v0, v4, Lcom/android/internal/os/ZygoteArguments;->mUsapPoolStatusSpecified:Z

    if-eqz v0, :cond_233

    .line 302
    iget-boolean v0, v4, Lcom/android/internal/os/ZygoteArguments;->mUsapPoolEnabled:Z

    invoke-direct {v1, v2, v0}, Lcom/android/internal/os/ZygoteConnection;->handleUsapPoolStatusChange(Lcom/android/internal/os/ZygoteServer;Z)Ljava/lang/Runnable;

    move-result-object v0

    return-object v0

    .line 304
    :cond_233
    iget-object v0, v4, Lcom/android/internal/os/ZygoteArguments;->mApiDenylistExemptions:[Ljava/lang/String;

    if-eqz v0, :cond_23e

    .line 305
    iget-object v0, v4, Lcom/android/internal/os/ZygoteArguments;->mApiDenylistExemptions:[Ljava/lang/String;

    invoke-direct {v1, v2, v0}, Lcom/android/internal/os/ZygoteConnection;->handleApiDenylistExemptions(Lcom/android/internal/os/ZygoteServer;[Ljava/lang/String;)Ljava/lang/Runnable;

    move-result-object v0

    return-object v0

    .line 308
    :cond_23e
    iget v0, v4, Lcom/android/internal/os/ZygoteArguments;->mHiddenApiAccessLogSampleRate:I

    if-ne v0, v9, :cond_24f

    iget v0, v4, Lcom/android/internal/os/ZygoteArguments;->mHiddenApiAccessStatslogSampleRate:I

    if-eq v0, v9, :cond_247

    goto :goto_24f

    .line 314
    :cond_247
    new-instance v0, Ljava/lang/AssertionError;

    const-string v3, "Shouldn\'t get here"

    invoke-direct {v0, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 310
    :cond_24f
    :goto_24f
    iget v0, v4, Lcom/android/internal/os/ZygoteArguments;->mHiddenApiAccessLogSampleRate:I

    iget v3, v4, Lcom/android/internal/os/ZygoteArguments;->mHiddenApiAccessStatslogSampleRate:I

    invoke-direct {v1, v2, v0, v3}, Lcom/android/internal/os/ZygoteConnection;->handleHiddenApiAccessLogSampleRate(Lcom/android/internal/os/ZygoteServer;II)Ljava/lang/Runnable;

    move-result-object v0

    return-object v0

    .line 123
    .end local v4    # "parsedArgs":Lcom/android/internal/os/ZygoteArguments;
    .restart local v3    # "argBuffer":Lcom/android/internal/os/ZygoteCommandBuffer;
    :catchall_258
    move-exception v0

    move-object v4, v0

    goto :goto_264

    .line 128
    :catch_25b
    move-exception v0

    .line 129
    .local v0, "ex":Ljava/io/IOException;
    :try_start_25c
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "IOException on command socket"

    invoke-direct {v4, v5, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v3    # "argBuffer":Lcom/android/internal/os/ZygoteCommandBuffer;
    .end local p0    # "this":Lcom/android/internal/os/ZygoteConnection;
    .end local p1    # "zygoteServer":Lcom/android/internal/os/ZygoteServer;
    .end local p2    # "multipleOK":Z
    throw v4
    :try_end_264
    .catchall {:try_start_25c .. :try_end_264} :catchall_258

    .line 123
    .end local v0    # "ex":Ljava/io/IOException;
    .restart local v3    # "argBuffer":Lcom/android/internal/os/ZygoteCommandBuffer;
    .restart local p0    # "this":Lcom/android/internal/os/ZygoteConnection;
    .restart local p1    # "zygoteServer":Lcom/android/internal/os/ZygoteServer;
    .restart local p2    # "multipleOK":Z
    :goto_264
    :try_start_264
    invoke-virtual {v3}, Lcom/android/internal/os/ZygoteCommandBuffer;->close()V
    :try_end_267
    .catchall {:try_start_264 .. :try_end_267} :catchall_268

    goto :goto_26c

    :catchall_268
    move-exception v0

    invoke-virtual {v4, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_26c
    throw v4
.end method
