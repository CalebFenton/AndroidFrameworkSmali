.class public Lcom/android/internal/os/ZygoteInit;
.super Ljava/lang/Object;
.source "ZygoteInit.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/ZygoteInit$MethodAndArgsCaller;
    }
.end annotation


# static fields
.field private static final ABI_LIST_ARG:Ljava/lang/String; = "--abi-list="

.field private static final ANDROID_SOCKET_PREFIX:Ljava/lang/String; = "ANDROID_SOCKET_"

.field private static final LOG_BOOT_PROGRESS_PRELOAD_END:I = 0xbd6

.field private static final LOG_BOOT_PROGRESS_PRELOAD_START:I = 0xbcc

.field private static final PRELOADED_CLASSES:Ljava/lang/String; = "/system/etc/preloaded-classes"

.field private static final PRELOAD_GC_THRESHOLD:I = 0xc350

.field private static final PRELOAD_RESOURCES:Z = true

.field private static final PROPERTY_DISABLE_OPENGL_PRELOADING:Ljava/lang/String; = "ro.zygote.disable_gl_preload"

.field private static final ROOT_GID:I = 0x0

.field private static final ROOT_UID:I = 0x0

.field private static final SOCKET_NAME_ARG:Ljava/lang/String; = "--socket-name="

.field private static final TAG:Ljava/lang/String; = "Zygote"

.field private static final UNPRIVILEGED_GID:I = 0x270f

.field private static final UNPRIVILEGED_UID:I = 0x270f

.field private static mResources:Landroid/content/res/Resources;

.field private static sServerSocket:Landroid/net/LocalServerSocket;


# direct methods
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 703
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private static acceptCommandPeer(Ljava/lang/String;)Lcom/android/internal/os/ZygoteConnection;
    .locals 3
    .param p0, "abiList"    # Ljava/lang/String;

    #@0
    .prologue
    .line 135
    :try_start_0
    new-instance v1, Lcom/android/internal/os/ZygoteConnection;

    #@2
    sget-object v2, Lcom/android/internal/os/ZygoteInit;->sServerSocket:Landroid/net/LocalServerSocket;

    #@4
    invoke-virtual {v2}, Landroid/net/LocalServerSocket;->accept()Landroid/net/LocalSocket;

    #@7
    move-result-object v2

    #@8
    invoke-direct {v1, v2, p0}, Lcom/android/internal/os/ZygoteConnection;-><init>(Landroid/net/LocalSocket;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    return-object v1

    #@c
    .line 136
    :catch_0
    move-exception v0

    #@d
    .line 137
    .local v0, "ex":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    #@f
    .line 138
    const-string/jumbo v2, "IOException during accept()"

    #@12
    .line 137
    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@15
    throw v1
.end method

.method static closeServerSocket()V
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 148
    :try_start_0
    sget-object v3, Lcom/android/internal/os/ZygoteInit;->sServerSocket:Landroid/net/LocalServerSocket;

    #@3
    if-eqz v3, :cond_0

    #@5
    .line 149
    sget-object v3, Lcom/android/internal/os/ZygoteInit;->sServerSocket:Landroid/net/LocalServerSocket;

    #@7
    invoke-virtual {v3}, Landroid/net/LocalServerSocket;->getFileDescriptor()Ljava/io/FileDescriptor;

    #@a
    move-result-object v2

    #@b
    .line 150
    .local v2, "fd":Ljava/io/FileDescriptor;
    sget-object v3, Lcom/android/internal/os/ZygoteInit;->sServerSocket:Landroid/net/LocalServerSocket;

    #@d
    invoke-virtual {v3}, Landroid/net/LocalServerSocket;->close()V

    #@10
    .line 151
    if-eqz v2, :cond_0

    #@12
    .line 152
    invoke-static {v2}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    #@15
    .line 161
    :cond_0
    :goto_0
    sput-object v5, Lcom/android/internal/os/ZygoteInit;->sServerSocket:Landroid/net/LocalServerSocket;

    #@17
    .line 146
    return-void

    #@18
    .line 157
    :catch_0
    move-exception v0

    #@19
    .line 158
    .local v0, "ex":Landroid/system/ErrnoException;
    const-string/jumbo v3, "Zygote"

    #@1c
    const-string/jumbo v4, "Zygote:  error closing descriptor"

    #@1f
    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@22
    goto :goto_0

    #@23
    .line 155
    .end local v0    # "ex":Landroid/system/ErrnoException;
    :catch_1
    move-exception v1

    #@24
    .line 156
    .local v1, "ex":Ljava/io/IOException;
    const-string/jumbo v3, "Zygote"

    #@27
    const-string/jumbo v4, "Zygote:  error closing sockets"

    #@2a
    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@2d
    goto :goto_0
.end method

.method static gcAndFinalize()V
    .locals 1

    #@0
    .prologue
    .line 402
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    #@3
    move-result-object v0

    #@4
    .line 407
    .local v0, "runtime":Ldalvik/system/VMRuntime;
    invoke-static {}, Ljava/lang/System;->gc()V

    #@7
    .line 408
    invoke-virtual {v0}, Ldalvik/system/VMRuntime;->runFinalizationSync()V

    #@a
    .line 409
    invoke-static {}, Ljava/lang/System;->gc()V

    #@d
    .line 401
    return-void
.end method

.method static getServerSocketFileDescriptor()Ljava/io/FileDescriptor;
    .locals 1

    #@0
    .prologue
    .line 171
    sget-object v0, Lcom/android/internal/os/ZygoteInit;->sServerSocket:Landroid/net/LocalServerSocket;

    #@2
    invoke-virtual {v0}, Landroid/net/LocalServerSocket;->getFileDescriptor()Ljava/io/FileDescriptor;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method private static handleSystemServerProcess(Lcom/android/internal/os/ZygoteConnection$Arguments;)V
    .locals 9
    .param p0, "parsedArgs"    # Lcom/android/internal/os/ZygoteConnection$Arguments;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/os/ZygoteInit$MethodAndArgsCaller;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/4 v4, 0x0

    #@2
    .line 419
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->closeServerSocket()V

    #@5
    .line 422
    sget v0, Landroid/system/OsConstants;->S_IRWXG:I

    #@7
    sget v1, Landroid/system/OsConstants;->S_IRWXO:I

    #@9
    or-int/2addr v0, v1

    #@a
    invoke-static {v0}, Landroid/system/Os;->umask(I)I

    #@d
    .line 424
    iget-object v0, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->niceName:Ljava/lang/String;

    #@f
    if-eqz v0, :cond_0

    #@11
    .line 425
    iget-object v0, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->niceName:Ljava/lang/String;

    #@13
    invoke-static {v0}, Landroid/os/Process;->setArgV0(Ljava/lang/String;)V

    #@16
    .line 428
    :cond_0
    const-string/jumbo v0, "SYSTEMSERVERCLASSPATH"

    #@19
    invoke-static {v0}, Landroid/system/Os;->getenv(Ljava/lang/String;)Ljava/lang/String;

    #@1c
    move-result-object v8

    #@1d
    .line 429
    .local v8, "systemServerClasspath":Ljava/lang/String;
    if-eqz v8, :cond_1

    #@1f
    .line 430
    invoke-static {v8}, Lcom/android/internal/os/ZygoteInit;->performSystemServerDexOpt(Ljava/lang/String;)V

    #@22
    .line 433
    :cond_1
    iget-object v0, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->invokeWith:Ljava/lang/String;

    #@24
    if-eqz v0, :cond_3

    #@26
    .line 434
    iget-object v5, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->remainingArgs:[Ljava/lang/String;

    #@28
    .line 438
    .local v5, "args":[Ljava/lang/String;
    if-eqz v8, :cond_2

    #@2a
    .line 439
    array-length v0, v5

    #@2b
    add-int/lit8 v0, v0, 0x2

    #@2d
    new-array v6, v0, [Ljava/lang/String;

    #@2f
    .line 440
    .local v6, "amendedArgs":[Ljava/lang/String;
    const-string/jumbo v0, "-cp"

    #@32
    aput-object v0, v6, v3

    #@34
    .line 441
    const/4 v0, 0x1

    #@35
    aput-object v8, v6, v0

    #@37
    .line 442
    iget-object v0, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->remainingArgs:[Ljava/lang/String;

    #@39
    iget-object v1, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->remainingArgs:[Ljava/lang/String;

    #@3b
    array-length v1, v1

    #@3c
    const/4 v2, 0x2

    #@3d
    invoke-static {v0, v3, v6, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@40
    .line 445
    .end local v6    # "amendedArgs":[Ljava/lang/String;
    :cond_2
    iget-object v0, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->invokeWith:Ljava/lang/String;

    #@42
    .line 446
    iget-object v1, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->niceName:Ljava/lang/String;

    #@44
    iget v2, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->targetSdkVersion:I

    #@46
    .line 447
    invoke-static {}, Ldalvik/system/VMRuntime;->getCurrentInstructionSet()Ljava/lang/String;

    #@49
    move-result-object v3

    #@4a
    .line 445
    invoke-static/range {v0 .. v5}, Lcom/android/internal/os/WrapperInit;->execApplication(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/io/FileDescriptor;[Ljava/lang/String;)V

    #@4d
    .line 417
    .end local v5    # "args":[Ljava/lang/String;
    :goto_0
    return-void

    #@4e
    .line 449
    :cond_3
    const/4 v7, 0x0

    #@4f
    .line 450
    .local v7, "cl":Ljava/lang/ClassLoader;
    if-eqz v8, :cond_4

    #@51
    .line 451
    new-instance v7, Ldalvik/system/PathClassLoader;

    #@53
    .end local v7    # "cl":Ljava/lang/ClassLoader;
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    #@56
    move-result-object v0

    #@57
    invoke-direct {v7, v8, v0}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    #@5a
    .line 452
    .local v7, "cl":Ljava/lang/ClassLoader;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@5d
    move-result-object v0

    #@5e
    invoke-virtual {v0, v7}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    #@61
    .line 458
    .end local v7    # "cl":Ljava/lang/ClassLoader;
    :cond_4
    iget v0, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->targetSdkVersion:I

    #@63
    iget-object v1, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->remainingArgs:[Ljava/lang/String;

    #@65
    invoke-static {v0, v1, v7}, Lcom/android/internal/os/RuntimeInit;->zygoteInit(I[Ljava/lang/String;Ljava/lang/ClassLoader;)V

    #@68
    goto :goto_0
.end method

.method private static hasSecondZygote(Ljava/lang/String;)Z
    .locals 1
    .param p0, "abiList"    # Ljava/lang/String;

    #@0
    .prologue
    .line 632
    const-string/jumbo v0, "ro.product.cpu.abilist"

    #@3
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a
    move-result v0

    #@b
    if-eqz v0, :cond_0

    #@d
    const/4 v0, 0x0

    #@e
    :goto_0
    return v0

    #@f
    :cond_0
    const/4 v0, 0x1

    #@10
    goto :goto_0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 9
    .param p0, "argv"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 567
    :try_start_0
    invoke-static {}, Lcom/android/internal/os/RuntimeInit;->enableDdms()V

    #@3
    .line 569
    invoke-static {}, Lcom/android/internal/os/SamplingProfilerIntegration;->start()V

    #@6
    .line 571
    const/4 v5, 0x0

    #@7
    .line 572
    .local v5, "startSystemServer":Z
    const-string/jumbo v4, "zygote"

    #@a
    .line 573
    .local v4, "socketName":Ljava/lang/String;
    const/4 v0, 0x0

    #@b
    .line 574
    .local v0, "abiList":Ljava/lang/String;
    const/4 v3, 0x1

    #@c
    .end local v0    # "abiList":Ljava/lang/String;
    .local v3, "i":I
    :goto_0
    array-length v6, p0

    #@d
    if-ge v3, v6, :cond_3

    #@f
    .line 575
    const-string/jumbo v6, "start-system-server"

    #@12
    aget-object v7, p0, v3

    #@14
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@17
    move-result v6

    #@18
    if-eqz v6, :cond_0

    #@1a
    .line 576
    const/4 v5, 0x1

    #@1b
    .line 574
    :goto_1
    add-int/lit8 v3, v3, 0x1

    #@1d
    goto :goto_0

    #@1e
    .line 577
    :cond_0
    aget-object v6, p0, v3

    #@20
    const-string/jumbo v7, "--abi-list="

    #@23
    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@26
    move-result v6

    #@27
    if-eqz v6, :cond_1

    #@29
    .line 578
    aget-object v6, p0, v3

    #@2b
    const-string/jumbo v7, "--abi-list="

    #@2e
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    #@31
    move-result v7

    #@32
    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@35
    move-result-object v0

    #@36
    .local v0, "abiList":Ljava/lang/String;
    goto :goto_1

    #@37
    .line 579
    .end local v0    # "abiList":Ljava/lang/String;
    :cond_1
    aget-object v6, p0, v3

    #@39
    const-string/jumbo v7, "--socket-name="

    #@3c
    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@3f
    move-result v6

    #@40
    if-eqz v6, :cond_2

    #@42
    .line 580
    aget-object v6, p0, v3

    #@44
    const-string/jumbo v7, "--socket-name="

    #@47
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    #@4a
    move-result v7

    #@4b
    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@4e
    move-result-object v4

    #@4f
    goto :goto_1

    #@50
    .line 582
    :cond_2
    new-instance v6, Ljava/lang/RuntimeException;

    #@52
    new-instance v7, Ljava/lang/StringBuilder;

    #@54
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@57
    const-string/jumbo v8, "Unknown command line argument: "

    #@5a
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v7

    #@5e
    aget-object v8, p0, v3

    #@60
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@63
    move-result-object v7

    #@64
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@67
    move-result-object v7

    #@68
    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@6b
    throw v6
    :try_end_0
    .catch Lcom/android/internal/os/ZygoteInit$MethodAndArgsCaller; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    #@6c
    .line 615
    .end local v3    # "i":I
    .end local v4    # "socketName":Ljava/lang/String;
    .end local v5    # "startSystemServer":Z
    :catch_0
    move-exception v1

    #@6d
    .line 616
    .local v1, "caller":Lcom/android/internal/os/ZygoteInit$MethodAndArgsCaller;
    invoke-virtual {v1}, Lcom/android/internal/os/ZygoteInit$MethodAndArgsCaller;->run()V

    #@70
    .line 565
    .end local v1    # "caller":Lcom/android/internal/os/ZygoteInit$MethodAndArgsCaller;
    :goto_2
    return-void

    #@71
    .line 586
    .restart local v3    # "i":I
    .restart local v4    # "socketName":Ljava/lang/String;
    .restart local v5    # "startSystemServer":Z
    :cond_3
    if-nez v0, :cond_4

    #@73
    .line 587
    :try_start_1
    new-instance v6, Ljava/lang/RuntimeException;

    #@75
    const-string/jumbo v7, "No ABI list supplied."

    #@78
    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@7b
    throw v6
    :try_end_1
    .catch Lcom/android/internal/os/ZygoteInit$MethodAndArgsCaller; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    #@7c
    .line 617
    .end local v3    # "i":I
    .end local v4    # "socketName":Ljava/lang/String;
    .end local v5    # "startSystemServer":Z
    :catch_1
    move-exception v2

    #@7d
    .line 618
    .local v2, "ex":Ljava/lang/RuntimeException;
    const-string/jumbo v6, "Zygote"

    #@80
    const-string/jumbo v7, "Zygote died with exception"

    #@83
    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@86
    .line 619
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->closeServerSocket()V

    #@89
    .line 620
    throw v2

    #@8a
    .line 590
    .end local v2    # "ex":Ljava/lang/RuntimeException;
    .restart local v3    # "i":I
    .restart local v4    # "socketName":Ljava/lang/String;
    .restart local v5    # "startSystemServer":Z
    :cond_4
    :try_start_2
    invoke-static {v4}, Lcom/android/internal/os/ZygoteInit;->registerZygoteSocket(Ljava/lang/String;)V

    #@8d
    .line 592
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@90
    move-result-wide v6

    #@91
    .line 591
    const/16 v8, 0xbcc

    #@93
    invoke-static {v8, v6, v7}, Landroid/util/EventLog;->writeEvent(IJ)I

    #@96
    .line 593
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->preload()V

    #@99
    .line 595
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@9c
    move-result-wide v6

    #@9d
    .line 594
    const/16 v8, 0xbd6

    #@9f
    invoke-static {v8, v6, v7}, Landroid/util/EventLog;->writeEvent(IJ)I

    #@a2
    .line 598
    invoke-static {}, Lcom/android/internal/os/SamplingProfilerIntegration;->writeZygoteSnapshot()V

    #@a5
    .line 601
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->gcAndFinalize()V

    #@a8
    .line 605
    const/4 v6, 0x0

    #@a9
    invoke-static {v6}, Landroid/os/Trace;->setTracingEnabled(Z)V

    #@ac
    .line 607
    if-eqz v5, :cond_5

    #@ae
    .line 608
    invoke-static {v0, v4}, Lcom/android/internal/os/ZygoteInit;->startSystemServer(Ljava/lang/String;Ljava/lang/String;)Z

    #@b1
    .line 611
    :cond_5
    const-string/jumbo v6, "Zygote"

    #@b4
    const-string/jumbo v7, "Accepting command socket connections"

    #@b7
    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@ba
    .line 612
    invoke-static {v0}, Lcom/android/internal/os/ZygoteInit;->runSelectLoop(Ljava/lang/String;)V

    #@bd
    .line 614
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->closeServerSocket()V
    :try_end_2
    .catch Lcom/android/internal/os/ZygoteInit$MethodAndArgsCaller; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    #@c0
    goto :goto_2
.end method

.method private static performSystemServerDexOpt(Ljava/lang/String;)V
    .locals 10
    .param p0, "classPath"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 469
    const-string/jumbo v3, ":"

    #@4
    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@7
    move-result-object v6

    #@8
    .line 470
    .local v6, "classPathElements":[Ljava/lang/String;
    new-instance v0, Lcom/android/internal/os/InstallerConnection;

    #@a
    invoke-direct {v0}, Lcom/android/internal/os/InstallerConnection;-><init>()V

    #@d
    .line 471
    .local v0, "installer":Lcom/android/internal/os/InstallerConnection;
    invoke-virtual {v0}, Lcom/android/internal/os/InstallerConnection;->waitForConnection()V

    #@10
    .line 472
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    #@13
    move-result-object v3

    #@14
    invoke-virtual {v3}, Ldalvik/system/VMRuntime;->vmInstructionSet()Ljava/lang/String;

    #@17
    move-result-object v4

    #@18
    .line 475
    .local v4, "instructionSet":Ljava/lang/String;
    :try_start_0
    array-length v9, v6

    #@19
    move v8, v2

    #@1a
    :goto_0
    if-ge v8, v9, :cond_1

    #@1c
    aget-object v1, v6, v8

    #@1e
    .line 477
    .local v1, "classPathElement":Ljava/lang/String;
    const-string/jumbo v2, "*"

    #@21
    const/4 v3, 0x0

    #@22
    .line 476
    invoke-static {v1, v2, v4, v3}, Ldalvik/system/DexFile;->getDexOptNeeded(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I

    #@25
    move-result v5

    #@26
    .line 478
    .local v5, "dexoptNeeded":I
    if-eqz v5, :cond_0

    #@28
    .line 479
    const/16 v2, 0x3e8

    #@2a
    const/4 v3, 0x0

    #@2b
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/os/InstallerConnection;->dexopt(Ljava/lang/String;IZLjava/lang/String;I)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2e
    .line 475
    :cond_0
    add-int/lit8 v2, v8, 0x1

    #@30
    move v8, v2

    #@31
    goto :goto_0

    #@32
    .line 486
    .end local v1    # "classPathElement":Ljava/lang/String;
    .end local v5    # "dexoptNeeded":I
    :cond_1
    invoke-virtual {v0}, Lcom/android/internal/os/InstallerConnection;->disconnect()V

    #@35
    .line 468
    return-void

    #@36
    .line 483
    :catch_0
    move-exception v7

    #@37
    .line 484
    .local v7, "ioe":Ljava/io/IOException;
    :try_start_1
    new-instance v2, Ljava/lang/RuntimeException;

    #@39
    const-string/jumbo v3, "Error starting system_server"

    #@3c
    invoke-direct {v2, v3, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@3f
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@40
    .line 485
    .end local v7    # "ioe":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    #@41
    .line 486
    invoke-virtual {v0}, Lcom/android/internal/os/InstallerConnection;->disconnect()V

    #@44
    .line 485
    throw v2
.end method

.method private static varargs posixCapabilitiesAsBits([I)J
    .locals 8
    .param p0, "capabilities"    # [I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 555
    const-wide/16 v2, 0x0

    #@3
    .line 556
    .local v2, "result":J
    array-length v4, p0

    #@4
    :goto_0
    if-ge v1, v4, :cond_2

    #@6
    aget v0, p0, v1

    #@8
    .line 557
    .local v0, "capability":I
    if-ltz v0, :cond_0

    #@a
    sget v5, Landroid/system/OsConstants;->CAP_LAST_CAP:I

    #@c
    if-le v0, v5, :cond_1

    #@e
    .line 558
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@10
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@13
    move-result-object v4

    #@14
    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@17
    throw v1

    #@18
    .line 560
    :cond_1
    const-wide/16 v6, 0x1

    #@1a
    shl-long/2addr v6, v0

    #@1b
    or-long/2addr v2, v6

    #@1c
    .line 556
    add-int/lit8 v1, v1, 0x1

    #@1e
    goto :goto_0

    #@1f
    .line 562
    .end local v0    # "capability":I
    :cond_2
    return-wide v2
.end method

.method static preload()V
    .locals 2

    #@0
    .prologue
    .line 181
    const-string/jumbo v0, "Zygote"

    #@3
    const-string/jumbo v1, "begin preload"

    #@6
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 182
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->preloadClasses()V

    #@c
    .line 183
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->preloadResources()V

    #@f
    .line 184
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->preloadOpenGL()V

    #@12
    .line 185
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->preloadSharedLibraries()V

    #@15
    .line 186
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->preloadTextResources()V

    #@18
    .line 189
    invoke-static {}, Landroid/webkit/WebViewFactory;->prepareWebViewInZygote()V

    #@1b
    .line 190
    const-string/jumbo v0, "Zygote"

    #@1e
    const-string/jumbo v1, "end preload"

    #@21
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@24
    .line 180
    return-void
.end method

.method private static preloadClasses()V
    .locals 26

    #@0
    .prologue
    .line 218
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    #@3
    move-result-object v17

    #@4
    .line 222
    .local v17, "runtime":Ldalvik/system/VMRuntime;
    :try_start_0
    new-instance v13, Ljava/io/FileInputStream;

    #@6
    const-string/jumbo v21, "/system/etc/preloaded-classes"

    #@9
    move-object/from16 v0, v21

    #@b
    invoke-direct {v13, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@e
    .line 228
    .local v13, "is":Ljava/io/InputStream;
    const-string/jumbo v21, "Zygote"

    #@11
    const-string/jumbo v22, "Preloading classes..."

    #@14
    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@17
    .line 229
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@1a
    move-result-wide v18

    #@1b
    .line 232
    .local v18, "startTime":J
    invoke-static {}, Landroid/system/Os;->getuid()I

    #@1e
    move-result v16

    #@1f
    .line 233
    .local v16, "reuid":I
    invoke-static {}, Landroid/system/Os;->getgid()I

    #@22
    move-result v15

    #@23
    .line 238
    .local v15, "regid":I
    const/4 v7, 0x0

    #@24
    .line 239
    .local v7, "droppedPriviliges":Z
    if-nez v16, :cond_0

    #@26
    if-nez v15, :cond_0

    #@28
    .line 241
    const/16 v21, 0x0

    #@2a
    const/16 v22, 0x270f

    #@2c
    :try_start_1
    invoke-static/range {v21 .. v22}, Landroid/system/Os;->setregid(II)V

    #@2f
    .line 242
    const/16 v21, 0x0

    #@31
    const/16 v22, 0x270f

    #@33
    invoke-static/range {v21 .. v22}, Landroid/system/Os;->setreuid(II)V
    :try_end_1
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_1} :catch_1

    #@36
    .line 247
    const/4 v7, 0x1

    #@37
    .line 252
    :cond_0
    invoke-virtual/range {v17 .. v17}, Ldalvik/system/VMRuntime;->getTargetHeapUtilization()F

    #@3a
    move-result v6

    #@3b
    .line 253
    .local v6, "defaultUtilization":F
    const v21, 0x3f4ccccd    # 0.8f

    #@3e
    move-object/from16 v0, v17

    #@40
    move/from16 v1, v21

    #@42
    invoke-virtual {v0, v1}, Ldalvik/system/VMRuntime;->setTargetHeapUtilization(F)F

    #@45
    .line 257
    :try_start_2
    new-instance v4, Ljava/io/BufferedReader;

    #@47
    new-instance v21, Ljava/io/InputStreamReader;

    #@49
    move-object/from16 v0, v21

    #@4b
    invoke-direct {v0, v13}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    #@4e
    const/16 v22, 0x100

    #@50
    move-object/from16 v0, v21

    #@52
    move/from16 v1, v22

    #@54
    invoke-direct {v4, v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    #@57
    .line 259
    .local v4, "br":Ljava/io/BufferedReader;
    const/4 v5, 0x0

    #@58
    .line 261
    .local v5, "count":I
    :cond_1
    :goto_0
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    #@5b
    move-result-object v14

    #@5c
    .local v14, "line":Ljava/lang/String;
    if-eqz v14, :cond_6

    #@5e
    .line 263
    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@61
    move-result-object v14

    #@62
    .line 264
    const-string/jumbo v21, "#"

    #@65
    move-object/from16 v0, v21

    #@67
    invoke-virtual {v14, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@6a
    move-result v21

    #@6b
    if-nez v21, :cond_1

    #@6d
    const-string/jumbo v21, ""

    #@70
    move-object/from16 v0, v21

    #@72
    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@75
    move-result v21

    #@76
    if-nez v21, :cond_1

    #@78
    .line 277
    const/16 v21, 0x1

    #@7a
    const/16 v22, 0x0

    #@7c
    :try_start_3
    move/from16 v0, v21

    #@7e
    move-object/from16 v1, v22

    #@80
    invoke-static {v14, v0, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@83
    .line 278
    add-int/lit8 v5, v5, 0x1

    #@85
    goto :goto_0

    #@86
    .line 223
    .end local v4    # "br":Ljava/io/BufferedReader;
    .end local v5    # "count":I
    .end local v6    # "defaultUtilization":F
    .end local v7    # "droppedPriviliges":Z
    .end local v13    # "is":Ljava/io/InputStream;
    .end local v14    # "line":Ljava/lang/String;
    .end local v15    # "regid":I
    .end local v16    # "reuid":I
    .end local v18    # "startTime":J
    :catch_0
    move-exception v8

    #@87
    .line 224
    .local v8, "e":Ljava/io/FileNotFoundException;
    const-string/jumbo v21, "Zygote"

    #@8a
    const-string/jumbo v22, "Couldn\'t find /system/etc/preloaded-classes."

    #@8d
    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@90
    .line 225
    return-void

    #@91
    .line 243
    .end local v8    # "e":Ljava/io/FileNotFoundException;
    .restart local v7    # "droppedPriviliges":Z
    .restart local v13    # "is":Ljava/io/InputStream;
    .restart local v15    # "regid":I
    .restart local v16    # "reuid":I
    .restart local v18    # "startTime":J
    :catch_1
    move-exception v12

    #@92
    .line 244
    .local v12, "ex":Landroid/system/ErrnoException;
    new-instance v21, Ljava/lang/RuntimeException;

    #@94
    const-string/jumbo v22, "Failed to drop root"

    #@97
    move-object/from16 v0, v21

    #@99
    move-object/from16 v1, v22

    #@9b
    invoke-direct {v0, v1, v12}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@9e
    throw v21

    #@9f
    .line 283
    .end local v12    # "ex":Landroid/system/ErrnoException;
    .restart local v4    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "count":I
    .restart local v6    # "defaultUtilization":F
    .restart local v14    # "line":Ljava/lang/String;
    :catch_2
    move-exception v20

    #@a0
    .line 284
    .local v20, "t":Ljava/lang/Throwable;
    :try_start_4
    const-string/jumbo v21, "Zygote"

    #@a3
    new-instance v22, Ljava/lang/StringBuilder;

    #@a5
    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    #@a8
    const-string/jumbo v23, "Error preloading "

    #@ab
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ae
    move-result-object v22

    #@af
    move-object/from16 v0, v22

    #@b1
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b4
    move-result-object v22

    #@b5
    const-string/jumbo v23, "."

    #@b8
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bb
    move-result-object v22

    #@bc
    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@bf
    move-result-object v22

    #@c0
    move-object/from16 v0, v21

    #@c2
    move-object/from16 v1, v22

    #@c4
    move-object/from16 v2, v20

    #@c6
    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@c9
    .line 285
    move-object/from16 v0, v20

    #@cb
    instance-of v0, v0, Ljava/lang/Error;

    #@cd
    move/from16 v21, v0

    #@cf
    if-eqz v21, :cond_3

    #@d1
    .line 286
    check-cast v20, Ljava/lang/Error;

    #@d3
    .end local v20    # "t":Ljava/lang/Throwable;
    throw v20
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@d4
    .line 297
    .end local v4    # "br":Ljava/io/BufferedReader;
    .end local v5    # "count":I
    .end local v14    # "line":Ljava/lang/String;
    :catch_3
    move-exception v9

    #@d5
    .line 298
    .local v9, "e":Ljava/io/IOException;
    :try_start_5
    const-string/jumbo v21, "Zygote"

    #@d8
    const-string/jumbo v22, "Error reading /system/etc/preloaded-classes."

    #@db
    move-object/from16 v0, v21

    #@dd
    move-object/from16 v1, v22

    #@df
    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@e2
    .line 300
    invoke-static {v13}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@e5
    .line 302
    move-object/from16 v0, v17

    #@e7
    invoke-virtual {v0, v6}, Ldalvik/system/VMRuntime;->setTargetHeapUtilization(F)F

    #@ea
    .line 305
    invoke-virtual/range {v17 .. v17}, Ldalvik/system/VMRuntime;->preloadDexCaches()V

    #@ed
    .line 308
    if-eqz v7, :cond_2

    #@ef
    .line 310
    const/16 v21, 0x0

    #@f1
    const/16 v22, 0x0

    #@f3
    :try_start_6
    invoke-static/range {v21 .. v22}, Landroid/system/Os;->setreuid(II)V

    #@f6
    .line 311
    const/16 v21, 0x0

    #@f8
    const/16 v22, 0x0

    #@fa
    invoke-static/range {v21 .. v22}, Landroid/system/Os;->setregid(II)V
    :try_end_6
    .catch Landroid/system/ErrnoException; {:try_start_6 .. :try_end_6} :catch_7

    #@fd
    .line 217
    .end local v9    # "e":Ljava/io/IOException;
    :cond_2
    :goto_1
    return-void

    #@fe
    .line 288
    .restart local v4    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "count":I
    .restart local v14    # "line":Ljava/lang/String;
    .restart local v20    # "t":Ljava/lang/Throwable;
    :cond_3
    :try_start_7
    move-object/from16 v0, v20

    #@100
    instance-of v0, v0, Ljava/lang/RuntimeException;

    #@102
    move/from16 v21, v0

    #@104
    if-eqz v21, :cond_5

    #@106
    .line 289
    check-cast v20, Ljava/lang/RuntimeException;

    #@108
    .end local v20    # "t":Ljava/lang/Throwable;
    throw v20
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    #@109
    .line 299
    .end local v4    # "br":Ljava/io/BufferedReader;
    .end local v5    # "count":I
    .end local v14    # "line":Ljava/lang/String;
    :catchall_0
    move-exception v21

    #@10a
    .line 300
    invoke-static {v13}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@10d
    .line 302
    move-object/from16 v0, v17

    #@10f
    invoke-virtual {v0, v6}, Ldalvik/system/VMRuntime;->setTargetHeapUtilization(F)F

    #@112
    .line 305
    invoke-virtual/range {v17 .. v17}, Ldalvik/system/VMRuntime;->preloadDexCaches()V

    #@115
    .line 308
    if-eqz v7, :cond_4

    #@117
    .line 310
    const/16 v22, 0x0

    #@119
    const/16 v23, 0x0

    #@11b
    :try_start_8
    invoke-static/range {v22 .. v23}, Landroid/system/Os;->setreuid(II)V

    #@11e
    .line 311
    const/16 v22, 0x0

    #@120
    const/16 v23, 0x0

    #@122
    invoke-static/range {v22 .. v23}, Landroid/system/Os;->setregid(II)V
    :try_end_8
    .catch Landroid/system/ErrnoException; {:try_start_8 .. :try_end_8} :catch_8

    #@125
    .line 299
    :cond_4
    throw v21

    #@126
    .line 291
    .restart local v4    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "count":I
    .restart local v14    # "line":Ljava/lang/String;
    .restart local v20    # "t":Ljava/lang/Throwable;
    :cond_5
    :try_start_9
    new-instance v21, Ljava/lang/RuntimeException;

    #@128
    move-object/from16 v0, v21

    #@12a
    move-object/from16 v1, v20

    #@12c
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@12f
    throw v21

    #@130
    .line 281
    .end local v20    # "t":Ljava/lang/Throwable;
    :catch_4
    move-exception v11

    #@131
    .line 282
    .local v11, "e":Ljava/lang/UnsatisfiedLinkError;
    const-string/jumbo v21, "Zygote"

    #@134
    new-instance v22, Ljava/lang/StringBuilder;

    #@136
    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    #@139
    const-string/jumbo v23, "Problem preloading "

    #@13c
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13f
    move-result-object v22

    #@140
    move-object/from16 v0, v22

    #@142
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@145
    move-result-object v22

    #@146
    const-string/jumbo v23, ": "

    #@149
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14c
    move-result-object v22

    #@14d
    move-object/from16 v0, v22

    #@14f
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@152
    move-result-object v22

    #@153
    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@156
    move-result-object v22

    #@157
    invoke-static/range {v21 .. v22}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@15a
    goto/16 :goto_0

    #@15c
    .line 279
    .end local v11    # "e":Ljava/lang/UnsatisfiedLinkError;
    :catch_5
    move-exception v10

    #@15d
    .line 280
    .local v10, "e":Ljava/lang/ClassNotFoundException;
    const-string/jumbo v21, "Zygote"

    #@160
    new-instance v22, Ljava/lang/StringBuilder;

    #@162
    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    #@165
    const-string/jumbo v23, "Class not found for preloading: "

    #@168
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16b
    move-result-object v22

    #@16c
    move-object/from16 v0, v22

    #@16e
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@171
    move-result-object v22

    #@172
    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@175
    move-result-object v22

    #@176
    invoke-static/range {v21 .. v22}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@179
    goto/16 :goto_0

    #@17b
    .line 295
    .end local v10    # "e":Ljava/lang/ClassNotFoundException;
    :cond_6
    const-string/jumbo v21, "Zygote"

    #@17e
    new-instance v22, Ljava/lang/StringBuilder;

    #@180
    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    #@183
    const-string/jumbo v23, "...preloaded "

    #@186
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@189
    move-result-object v22

    #@18a
    move-object/from16 v0, v22

    #@18c
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@18f
    move-result-object v22

    #@190
    const-string/jumbo v23, " classes in "

    #@193
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@196
    move-result-object v22

    #@197
    .line 296
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@19a
    move-result-wide v24

    #@19b
    sub-long v24, v24, v18

    #@19d
    .line 295
    move-object/from16 v0, v22

    #@19f
    move-wide/from16 v1, v24

    #@1a1
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@1a4
    move-result-object v22

    #@1a5
    .line 296
    const-string/jumbo v23, "ms."

    #@1a8
    .line 295
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1ab
    move-result-object v22

    #@1ac
    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1af
    move-result-object v22

    #@1b0
    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    #@1b3
    .line 300
    invoke-static {v13}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@1b6
    .line 302
    move-object/from16 v0, v17

    #@1b8
    invoke-virtual {v0, v6}, Ldalvik/system/VMRuntime;->setTargetHeapUtilization(F)F

    #@1bb
    .line 305
    invoke-virtual/range {v17 .. v17}, Ldalvik/system/VMRuntime;->preloadDexCaches()V

    #@1be
    .line 308
    if-eqz v7, :cond_2

    #@1c0
    .line 310
    const/16 v21, 0x0

    #@1c2
    const/16 v22, 0x0

    #@1c4
    :try_start_a
    invoke-static/range {v21 .. v22}, Landroid/system/Os;->setreuid(II)V

    #@1c7
    .line 311
    const/16 v21, 0x0

    #@1c9
    const/16 v22, 0x0

    #@1cb
    invoke-static/range {v21 .. v22}, Landroid/system/Os;->setregid(II)V
    :try_end_a
    .catch Landroid/system/ErrnoException; {:try_start_a .. :try_end_a} :catch_6

    #@1ce
    goto/16 :goto_1

    #@1d0
    .line 312
    :catch_6
    move-exception v12

    #@1d1
    .line 313
    .restart local v12    # "ex":Landroid/system/ErrnoException;
    new-instance v21, Ljava/lang/RuntimeException;

    #@1d3
    const-string/jumbo v22, "Failed to restore root"

    #@1d6
    move-object/from16 v0, v21

    #@1d8
    move-object/from16 v1, v22

    #@1da
    invoke-direct {v0, v1, v12}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@1dd
    throw v21

    #@1de
    .line 312
    .end local v4    # "br":Ljava/io/BufferedReader;
    .end local v5    # "count":I
    .end local v12    # "ex":Landroid/system/ErrnoException;
    .end local v14    # "line":Ljava/lang/String;
    .restart local v9    # "e":Ljava/io/IOException;
    :catch_7
    move-exception v12

    #@1df
    .line 313
    .restart local v12    # "ex":Landroid/system/ErrnoException;
    new-instance v21, Ljava/lang/RuntimeException;

    #@1e1
    const-string/jumbo v22, "Failed to restore root"

    #@1e4
    move-object/from16 v0, v21

    #@1e6
    move-object/from16 v1, v22

    #@1e8
    invoke-direct {v0, v1, v12}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@1eb
    throw v21

    #@1ec
    .line 312
    .end local v9    # "e":Ljava/io/IOException;
    .end local v12    # "ex":Landroid/system/ErrnoException;
    :catch_8
    move-exception v12

    #@1ed
    .line 313
    .restart local v12    # "ex":Landroid/system/ErrnoException;
    new-instance v21, Ljava/lang/RuntimeException;

    #@1ef
    const-string/jumbo v22, "Failed to restore root"

    #@1f2
    move-object/from16 v0, v21

    #@1f4
    move-object/from16 v1, v22

    #@1f6
    invoke-direct {v0, v1, v12}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@1f9
    throw v21
.end method

.method private static preloadColorStateLists(Ldalvik/system/VMRuntime;Landroid/content/res/TypedArray;)I
    .locals 6
    .param p0, "runtime"    # Ldalvik/system/VMRuntime;
    .param p1, "ar"    # Landroid/content/res/TypedArray;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    const/4 v4, 0x0

    #@2
    .line 358
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->length()I

    #@5
    move-result v0

    #@6
    .line 359
    .local v0, "N":I
    const/4 v1, 0x0

    #@7
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    #@9
    .line 360
    invoke-virtual {p1, v1, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@c
    move-result v2

    #@d
    .line 364
    .local v2, "id":I
    if-eqz v2, :cond_0

    #@f
    .line 365
    sget-object v3, Lcom/android/internal/os/ZygoteInit;->mResources:Landroid/content/res/Resources;

    #@11
    invoke-virtual {v3, v2, v5}, Landroid/content/res/Resources;->getColorStateList(ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    #@14
    move-result-object v3

    #@15
    if-nez v3, :cond_0

    #@17
    .line 366
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@19
    .line 367
    new-instance v4, Ljava/lang/StringBuilder;

    #@1b
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@1e
    const-string/jumbo v5, "Unable to find preloaded color resource #0x"

    #@21
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v4

    #@25
    .line 368
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@28
    move-result-object v5

    #@29
    .line 367
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v4

    #@2d
    .line 369
    const-string/jumbo v5, " ("

    #@30
    .line 367
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v4

    #@34
    .line 369
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@37
    move-result-object v5

    #@38
    .line 367
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v4

    #@3c
    .line 369
    const-string/jumbo v5, ")"

    #@3f
    .line 367
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v4

    #@43
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@46
    move-result-object v4

    #@47
    .line 366
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@4a
    throw v3

    #@4b
    .line 359
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@4d
    goto :goto_0

    #@4e
    .line 373
    .end local v2    # "id":I
    :cond_1
    return v0
.end method

.method private static preloadDrawables(Ldalvik/system/VMRuntime;Landroid/content/res/TypedArray;)I
    .locals 6
    .param p0, "runtime"    # Ldalvik/system/VMRuntime;
    .param p1, "ar"    # Landroid/content/res/TypedArray;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    const/4 v4, 0x0

    #@2
    .line 378
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->length()I

    #@5
    move-result v0

    #@6
    .line 379
    .local v0, "N":I
    const/4 v1, 0x0

    #@7
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    #@9
    .line 380
    invoke-virtual {p1, v1, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@c
    move-result v2

    #@d
    .line 384
    .local v2, "id":I
    if-eqz v2, :cond_0

    #@f
    .line 385
    sget-object v3, Lcom/android/internal/os/ZygoteInit;->mResources:Landroid/content/res/Resources;

    #@11
    invoke-virtual {v3, v2, v5}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    #@14
    move-result-object v3

    #@15
    if-nez v3, :cond_0

    #@17
    .line 386
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@19
    .line 387
    new-instance v4, Ljava/lang/StringBuilder;

    #@1b
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@1e
    const-string/jumbo v5, "Unable to find preloaded drawable resource #0x"

    #@21
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v4

    #@25
    .line 388
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@28
    move-result-object v5

    #@29
    .line 387
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v4

    #@2d
    .line 389
    const-string/jumbo v5, " ("

    #@30
    .line 387
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v4

    #@34
    .line 389
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@37
    move-result-object v5

    #@38
    .line 387
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v4

    #@3c
    .line 389
    const-string/jumbo v5, ")"

    #@3f
    .line 387
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v4

    #@43
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@46
    move-result-object v4

    #@47
    .line 386
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@4a
    throw v3

    #@4b
    .line 379
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@4d
    goto :goto_0

    #@4e
    .line 393
    .end local v2    # "id":I
    :cond_1
    return v0
.end method

.method private static preloadOpenGL()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 201
    const-string/jumbo v0, "ro.zygote.disable_gl_preload"

    #@4
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    #@7
    move-result v0

    #@8
    if-nez v0, :cond_0

    #@a
    .line 202
    invoke-static {v1}, Landroid/opengl/EGL14;->eglGetDisplay(I)Landroid/opengl/EGLDisplay;

    #@d
    .line 200
    :cond_0
    return-void
.end method

.method private static preloadResources()V
    .locals 10

    #@0
    .prologue
    .line 327
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    #@3
    move-result-object v3

    #@4
    .line 330
    .local v3, "runtime":Ldalvik/system/VMRuntime;
    :try_start_0
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    #@7
    move-result-object v6

    #@8
    sput-object v6, Lcom/android/internal/os/ZygoteInit;->mResources:Landroid/content/res/Resources;

    #@a
    .line 331
    sget-object v6, Lcom/android/internal/os/ZygoteInit;->mResources:Landroid/content/res/Resources;

    #@c
    invoke-virtual {v6}, Landroid/content/res/Resources;->startPreloading()V

    #@f
    .line 333
    const-string/jumbo v6, "Zygote"

    #@12
    const-string/jumbo v7, "Preloading resources..."

    #@15
    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@18
    .line 335
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@1b
    move-result-wide v4

    #@1c
    .line 336
    .local v4, "startTime":J
    sget-object v6, Lcom/android/internal/os/ZygoteInit;->mResources:Landroid/content/res/Resources;

    #@1e
    .line 337
    const v7, 0x1070006

    #@21
    .line 336
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    #@24
    move-result-object v1

    #@25
    .line 338
    .local v1, "ar":Landroid/content/res/TypedArray;
    invoke-static {v3, v1}, Lcom/android/internal/os/ZygoteInit;->preloadDrawables(Ldalvik/system/VMRuntime;Landroid/content/res/TypedArray;)I

    #@28
    move-result v0

    #@29
    .line 339
    .local v0, "N":I
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    #@2c
    .line 340
    const-string/jumbo v6, "Zygote"

    #@2f
    new-instance v7, Ljava/lang/StringBuilder;

    #@31
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@34
    const-string/jumbo v8, "...preloaded "

    #@37
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v7

    #@3b
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v7

    #@3f
    const-string/jumbo v8, " resources in "

    #@42
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v7

    #@46
    .line 341
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@49
    move-result-wide v8

    #@4a
    sub-long/2addr v8, v4

    #@4b
    .line 340
    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v7

    #@4f
    .line 341
    const-string/jumbo v8, "ms."

    #@52
    .line 340
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55
    move-result-object v7

    #@56
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@59
    move-result-object v7

    #@5a
    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@5d
    .line 343
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@60
    move-result-wide v4

    #@61
    .line 344
    sget-object v6, Lcom/android/internal/os/ZygoteInit;->mResources:Landroid/content/res/Resources;

    #@63
    .line 345
    const v7, 0x1070007

    #@66
    .line 344
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    #@69
    move-result-object v1

    #@6a
    .line 346
    invoke-static {v3, v1}, Lcom/android/internal/os/ZygoteInit;->preloadColorStateLists(Ldalvik/system/VMRuntime;Landroid/content/res/TypedArray;)I

    #@6d
    move-result v0

    #@6e
    .line 347
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    #@71
    .line 348
    const-string/jumbo v6, "Zygote"

    #@74
    new-instance v7, Ljava/lang/StringBuilder;

    #@76
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@79
    const-string/jumbo v8, "...preloaded "

    #@7c
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7f
    move-result-object v7

    #@80
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@83
    move-result-object v7

    #@84
    const-string/jumbo v8, " resources in "

    #@87
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8a
    move-result-object v7

    #@8b
    .line 349
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@8e
    move-result-wide v8

    #@8f
    sub-long/2addr v8, v4

    #@90
    .line 348
    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@93
    move-result-object v7

    #@94
    .line 349
    const-string/jumbo v8, "ms."

    #@97
    .line 348
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9a
    move-result-object v7

    #@9b
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9e
    move-result-object v7

    #@9f
    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@a2
    .line 351
    sget-object v6, Lcom/android/internal/os/ZygoteInit;->mResources:Landroid/content/res/Resources;

    #@a4
    invoke-virtual {v6}, Landroid/content/res/Resources;->finishPreloading()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    #@a7
    .line 326
    .end local v0    # "N":I
    .end local v1    # "ar":Landroid/content/res/TypedArray;
    .end local v4    # "startTime":J
    :goto_0
    return-void

    #@a8
    .line 352
    :catch_0
    move-exception v2

    #@a9
    .line 353
    .local v2, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v6, "Zygote"

    #@ac
    const-string/jumbo v7, "Failure preloading resources"

    #@af
    invoke-static {v6, v7, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@b2
    goto :goto_0
.end method

.method private static preloadSharedLibraries()V
    .locals 2

    #@0
    .prologue
    .line 194
    const-string/jumbo v0, "Zygote"

    #@3
    const-string/jumbo v1, "Preloading shared libraries..."

    #@6
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 195
    const-string/jumbo v0, "android"

    #@c
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    #@f
    .line 196
    const-string/jumbo v0, "compiler_rt"

    #@12
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    #@15
    .line 197
    const-string/jumbo v0, "jnigraphics"

    #@18
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    #@1b
    .line 193
    return-void
.end method

.method private static preloadTextResources()V
    .locals 0

    #@0
    .prologue
    .line 207
    invoke-static {}, Landroid/text/Hyphenator;->init()V

    #@3
    .line 206
    return-void
.end method

.method private static registerZygoteSocket(Ljava/lang/String;)V
    .locals 9
    .param p0, "socketName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 108
    sget-object v6, Lcom/android/internal/os/ZygoteInit;->sServerSocket:Landroid/net/LocalServerSocket;

    #@2
    if-nez v6, :cond_0

    #@4
    .line 110
    new-instance v6, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    const-string/jumbo v7, "ANDROID_SOCKET_"

    #@c
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v6

    #@10
    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v6

    #@14
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17
    move-result-object v5

    #@18
    .line 112
    .local v5, "fullSocketName":Ljava/lang/String;
    :try_start_0
    invoke-static {v5}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    #@1b
    move-result-object v0

    #@1c
    .line 113
    .local v0, "env":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    #@1f
    move-result v4

    #@20
    .line 119
    .local v4, "fileDesc":I
    :try_start_1
    new-instance v3, Ljava/io/FileDescriptor;

    #@22
    invoke-direct {v3}, Ljava/io/FileDescriptor;-><init>()V

    #@25
    .line 120
    .local v3, "fd":Ljava/io/FileDescriptor;
    invoke-virtual {v3, v4}, Ljava/io/FileDescriptor;->setInt$(I)V

    #@28
    .line 121
    new-instance v6, Landroid/net/LocalServerSocket;

    #@2a
    invoke-direct {v6, v3}, Landroid/net/LocalServerSocket;-><init>(Ljava/io/FileDescriptor;)V

    #@2d
    sput-object v6, Lcom/android/internal/os/ZygoteInit;->sServerSocket:Landroid/net/LocalServerSocket;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    #@2f
    .line 107
    .end local v0    # "env":Ljava/lang/String;
    .end local v3    # "fd":Ljava/io/FileDescriptor;
    .end local v4    # "fileDesc":I
    .end local v5    # "fullSocketName":Ljava/lang/String;
    :cond_0
    return-void

    #@30
    .line 114
    .restart local v5    # "fullSocketName":Ljava/lang/String;
    :catch_0
    move-exception v2

    #@31
    .line 115
    .local v2, "ex":Ljava/lang/RuntimeException;
    new-instance v6, Ljava/lang/RuntimeException;

    #@33
    new-instance v7, Ljava/lang/StringBuilder;

    #@35
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@38
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v7

    #@3c
    const-string/jumbo v8, " unset or invalid"

    #@3f
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v7

    #@43
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@46
    move-result-object v7

    #@47
    invoke-direct {v6, v7, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@4a
    throw v6

    #@4b
    .line 122
    .end local v2    # "ex":Ljava/lang/RuntimeException;
    .restart local v0    # "env":Ljava/lang/String;
    .restart local v4    # "fileDesc":I
    :catch_1
    move-exception v1

    #@4c
    .line 123
    .local v1, "ex":Ljava/io/IOException;
    new-instance v6, Ljava/lang/RuntimeException;

    #@4e
    .line 124
    new-instance v7, Ljava/lang/StringBuilder;

    #@50
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@53
    const-string/jumbo v8, "Error binding to local socket \'"

    #@56
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v7

    #@5a
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v7

    #@5e
    const-string/jumbo v8, "\'"

    #@61
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@64
    move-result-object v7

    #@65
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@68
    move-result-object v7

    #@69
    .line 123
    invoke-direct {v6, v7, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@6c
    throw v6
.end method

.method private static runSelectLoop(Ljava/lang/String;)V
    .locals 9
    .param p0, "abiList"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/os/ZygoteInit$MethodAndArgsCaller;
        }
    .end annotation

    #@0
    .prologue
    .line 663
    new-instance v2, Ljava/util/ArrayList;

    #@2
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 664
    .local v2, "fds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/FileDescriptor;>;"
    new-instance v5, Ljava/util/ArrayList;

    #@7
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    #@a
    .line 666
    .local v5, "peers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/os/ZygoteConnection;>;"
    sget-object v7, Lcom/android/internal/os/ZygoteInit;->sServerSocket:Landroid/net/LocalServerSocket;

    #@c
    invoke-virtual {v7}, Landroid/net/LocalServerSocket;->getFileDescriptor()Ljava/io/FileDescriptor;

    #@f
    move-result-object v7

    #@10
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@13
    .line 667
    const/4 v7, 0x0

    #@14
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@17
    .line 670
    :cond_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@1a
    move-result v7

    #@1b
    new-array v6, v7, [Landroid/system/StructPollfd;

    #@1d
    .line 671
    .local v6, "pollFds":[Landroid/system/StructPollfd;
    const/4 v3, 0x0

    #@1e
    .local v3, "i":I
    :goto_0
    array-length v7, v6

    #@1f
    if-ge v3, v7, :cond_1

    #@21
    .line 672
    new-instance v7, Landroid/system/StructPollfd;

    #@23
    invoke-direct {v7}, Landroid/system/StructPollfd;-><init>()V

    #@26
    aput-object v7, v6, v3

    #@28
    .line 673
    aget-object v8, v6, v3

    #@2a
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@2d
    move-result-object v7

    #@2e
    check-cast v7, Ljava/io/FileDescriptor;

    #@30
    iput-object v7, v8, Landroid/system/StructPollfd;->fd:Ljava/io/FileDescriptor;

    #@32
    .line 674
    aget-object v7, v6, v3

    #@34
    sget v8, Landroid/system/OsConstants;->POLLIN:I

    #@36
    int-to-short v8, v8

    #@37
    iput-short v8, v7, Landroid/system/StructPollfd;->events:S

    #@39
    .line 671
    add-int/lit8 v3, v3, 0x1

    #@3b
    goto :goto_0

    #@3c
    .line 677
    :cond_1
    const/4 v7, -0x1

    #@3d
    :try_start_0
    invoke-static {v6, v7}, Landroid/system/Os;->poll([Landroid/system/StructPollfd;I)I
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    #@40
    .line 681
    array-length v7, v6

    #@41
    add-int/lit8 v3, v7, -0x1

    #@43
    :goto_1
    if-ltz v3, :cond_0

    #@45
    .line 682
    aget-object v7, v6, v3

    #@47
    iget-short v7, v7, Landroid/system/StructPollfd;->revents:S

    #@49
    sget v8, Landroid/system/OsConstants;->POLLIN:I

    #@4b
    and-int/2addr v7, v8

    #@4c
    if-nez v7, :cond_3

    #@4e
    .line 681
    :cond_2
    :goto_2
    add-int/lit8 v3, v3, -0x1

    #@50
    goto :goto_1

    #@51
    .line 678
    :catch_0
    move-exception v1

    #@52
    .line 679
    .local v1, "ex":Landroid/system/ErrnoException;
    new-instance v7, Ljava/lang/RuntimeException;

    #@54
    const-string/jumbo v8, "poll failed"

    #@57
    invoke-direct {v7, v8, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@5a
    throw v7

    #@5b
    .line 685
    .end local v1    # "ex":Landroid/system/ErrnoException;
    :cond_3
    if-nez v3, :cond_4

    #@5d
    .line 686
    invoke-static {p0}, Lcom/android/internal/os/ZygoteInit;->acceptCommandPeer(Ljava/lang/String;)Lcom/android/internal/os/ZygoteConnection;

    #@60
    move-result-object v4

    #@61
    .line 687
    .local v4, "newPeer":Lcom/android/internal/os/ZygoteConnection;
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@64
    .line 688
    invoke-virtual {v4}, Lcom/android/internal/os/ZygoteConnection;->getFileDesciptor()Ljava/io/FileDescriptor;

    #@67
    move-result-object v7

    #@68
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@6b
    goto :goto_2

    #@6c
    .line 690
    .end local v4    # "newPeer":Lcom/android/internal/os/ZygoteConnection;
    :cond_4
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@6f
    move-result-object v7

    #@70
    check-cast v7, Lcom/android/internal/os/ZygoteConnection;

    #@72
    invoke-virtual {v7}, Lcom/android/internal/os/ZygoteConnection;->runOnce()Z

    #@75
    move-result v0

    #@76
    .line 691
    .local v0, "done":Z
    if-eqz v0, :cond_2

    #@78
    .line 692
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@7b
    .line 693
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@7e
    goto :goto_2
.end method

.method private static startSystemServer(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 16
    .param p0, "abiList"    # Ljava/lang/String;
    .param p1, "socketName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/os/ZygoteInit$MethodAndArgsCaller;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    #@0
    .prologue
    .line 495
    const/16 v1, 0xb

    #@2
    new-array v1, v1, [I

    #@4
    .line 496
    sget v2, Landroid/system/OsConstants;->CAP_BLOCK_SUSPEND:I

    #@6
    const/4 v3, 0x0

    #@7
    aput v2, v1, v3

    #@9
    .line 497
    sget v2, Landroid/system/OsConstants;->CAP_KILL:I

    #@b
    const/4 v3, 0x1

    #@c
    aput v2, v1, v3

    #@e
    .line 498
    sget v2, Landroid/system/OsConstants;->CAP_NET_ADMIN:I

    #@10
    const/4 v3, 0x2

    #@11
    aput v2, v1, v3

    #@13
    .line 499
    sget v2, Landroid/system/OsConstants;->CAP_NET_BIND_SERVICE:I

    #@15
    const/4 v3, 0x3

    #@16
    aput v2, v1, v3

    #@18
    .line 500
    sget v2, Landroid/system/OsConstants;->CAP_NET_BROADCAST:I

    #@1a
    const/4 v3, 0x4

    #@1b
    aput v2, v1, v3

    #@1d
    .line 501
    sget v2, Landroid/system/OsConstants;->CAP_NET_RAW:I

    #@1f
    const/4 v3, 0x5

    #@20
    aput v2, v1, v3

    #@22
    .line 502
    sget v2, Landroid/system/OsConstants;->CAP_SYS_MODULE:I

    #@24
    const/4 v3, 0x6

    #@25
    aput v2, v1, v3

    #@27
    .line 503
    sget v2, Landroid/system/OsConstants;->CAP_SYS_NICE:I

    #@29
    const/4 v3, 0x7

    #@2a
    aput v2, v1, v3

    #@2c
    .line 504
    sget v2, Landroid/system/OsConstants;->CAP_SYS_RESOURCE:I

    #@2e
    const/16 v3, 0x8

    #@30
    aput v2, v1, v3

    #@32
    .line 505
    sget v2, Landroid/system/OsConstants;->CAP_SYS_TIME:I

    #@34
    const/16 v3, 0x9

    #@36
    aput v2, v1, v3

    #@38
    .line 506
    sget v2, Landroid/system/OsConstants;->CAP_SYS_TTY_CONFIG:I

    #@3a
    const/16 v3, 0xa

    #@3c
    aput v2, v1, v3

    #@3e
    .line 495
    invoke-static {v1}, Lcom/android/internal/os/ZygoteInit;->posixCapabilitiesAsBits([I)J

    #@41
    move-result-wide v10

    #@42
    .line 509
    .local v10, "capabilities":J
    const/4 v1, 0x7

    #@43
    new-array v0, v1, [Ljava/lang/String;

    #@45
    .line 510
    const-string/jumbo v1, "--setuid=1000"

    #@48
    const/4 v2, 0x0

    #@49
    aput-object v1, v0, v2

    #@4b
    .line 511
    const-string/jumbo v1, "--setgid=1000"

    #@4e
    const/4 v2, 0x1

    #@4f
    aput-object v1, v0, v2

    #@51
    .line 512
    const-string/jumbo v1, "--setgroups=1001,1002,1003,1004,1005,1006,1007,1008,1009,1010,1018,1021,1032,3001,3002,3003,3006,3007"

    #@54
    const/4 v2, 0x2

    #@55
    aput-object v1, v0, v2

    #@57
    .line 513
    new-instance v1, Ljava/lang/StringBuilder;

    #@59
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@5c
    const-string/jumbo v2, "--capabilities="

    #@5f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@62
    move-result-object v1

    #@63
    invoke-virtual {v1, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@66
    move-result-object v1

    #@67
    const-string/jumbo v2, ","

    #@6a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6d
    move-result-object v1

    #@6e
    invoke-virtual {v1, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@71
    move-result-object v1

    #@72
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@75
    move-result-object v1

    #@76
    const/4 v2, 0x3

    #@77
    aput-object v1, v0, v2

    #@79
    .line 514
    const-string/jumbo v1, "--nice-name=system_server"

    #@7c
    const/4 v2, 0x4

    #@7d
    aput-object v1, v0, v2

    #@7f
    .line 515
    const-string/jumbo v1, "--runtime-args"

    #@82
    const/4 v2, 0x5

    #@83
    aput-object v1, v0, v2

    #@85
    .line 516
    const-string/jumbo v1, "com.android.server.SystemServer"

    #@88
    const/4 v2, 0x6

    #@89
    aput-object v1, v0, v2

    #@8b
    .line 518
    .local v0, "args":[Ljava/lang/String;
    const/4 v13, 0x0

    #@8c
    .line 523
    .local v13, "parsedArgs":Lcom/android/internal/os/ZygoteConnection$Arguments;
    :try_start_0
    new-instance v14, Lcom/android/internal/os/ZygoteConnection$Arguments;

    #@8e
    invoke-direct {v14, v0}, Lcom/android/internal/os/ZygoteConnection$Arguments;-><init>([Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    #@91
    .line 524
    .local v14, "parsedArgs":Lcom/android/internal/os/ZygoteConnection$Arguments;
    :try_start_1
    invoke-static {v14}, Lcom/android/internal/os/ZygoteConnection;->applyDebuggerSystemProperty(Lcom/android/internal/os/ZygoteConnection$Arguments;)V

    #@94
    .line 525
    .end local v13    # "parsedArgs":Lcom/android/internal/os/ZygoteConnection$Arguments;
    invoke-static {v14}, Lcom/android/internal/os/ZygoteConnection;->applyInvokeWithSystemProperty(Lcom/android/internal/os/ZygoteConnection$Arguments;)V

    #@97
    .line 529
    iget v1, v14, Lcom/android/internal/os/ZygoteConnection$Arguments;->uid:I

    #@99
    iget v2, v14, Lcom/android/internal/os/ZygoteConnection$Arguments;->gid:I

    #@9b
    .line 530
    iget-object v3, v14, Lcom/android/internal/os/ZygoteConnection$Arguments;->gids:[I

    #@9d
    .line 531
    iget v4, v14, Lcom/android/internal/os/ZygoteConnection$Arguments;->debugFlags:I

    #@9f
    .line 533
    iget-wide v6, v14, Lcom/android/internal/os/ZygoteConnection$Arguments;->permittedCapabilities:J

    #@a1
    .line 534
    iget-wide v8, v14, Lcom/android/internal/os/ZygoteConnection$Arguments;->effectiveCapabilities:J

    #@a3
    .line 532
    const/4 v5, 0x0

    #@a4
    .line 528
    invoke-static/range {v1 .. v9}, Lcom/android/internal/os/Zygote;->forkSystemServer(II[II[[IJJ)I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    #@a7
    move-result v15

    #@a8
    .line 540
    .local v15, "pid":I
    if-nez v15, :cond_1

    #@aa
    .line 541
    invoke-static/range {p0 .. p0}, Lcom/android/internal/os/ZygoteInit;->hasSecondZygote(Ljava/lang/String;)Z

    #@ad
    move-result v1

    #@ae
    if-eqz v1, :cond_0

    #@b0
    .line 542
    invoke-static/range {p1 .. p1}, Lcom/android/internal/os/ZygoteInit;->waitForSecondaryZygote(Ljava/lang/String;)V

    #@b3
    .line 545
    :cond_0
    invoke-static {v14}, Lcom/android/internal/os/ZygoteInit;->handleSystemServerProcess(Lcom/android/internal/os/ZygoteConnection$Arguments;)V

    #@b6
    .line 548
    :cond_1
    const/4 v1, 0x1

    #@b7
    return v1

    #@b8
    .line 535
    .end local v14    # "parsedArgs":Lcom/android/internal/os/ZygoteConnection$Arguments;
    .end local v15    # "pid":I
    .restart local v13    # "parsedArgs":Lcom/android/internal/os/ZygoteConnection$Arguments;
    :catch_0
    move-exception v12

    #@b9
    .line 536
    .end local v13    # "parsedArgs":Lcom/android/internal/os/ZygoteConnection$Arguments;
    .local v12, "ex":Ljava/lang/IllegalArgumentException;
    :goto_0
    new-instance v1, Ljava/lang/RuntimeException;

    #@bb
    invoke-direct {v1, v12}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@be
    throw v1

    #@bf
    .line 535
    .end local v12    # "ex":Ljava/lang/IllegalArgumentException;
    .restart local v14    # "parsedArgs":Lcom/android/internal/os/ZygoteConnection$Arguments;
    :catch_1
    move-exception v12

    #@c0
    .restart local v12    # "ex":Ljava/lang/IllegalArgumentException;
    move-object v13, v14

    #@c1
    .end local v14    # "parsedArgs":Lcom/android/internal/os/ZygoteConnection$Arguments;
    .local v13, "parsedArgs":Lcom/android/internal/os/ZygoteConnection$Arguments;
    goto :goto_0
.end method

.method private static waitForSecondaryZygote(Ljava/lang/String;)V
    .locals 7
    .param p0, "socketName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 636
    const-string/jumbo v4, "zygote"

    #@3
    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6
    move-result v4

    #@7
    if-eqz v4, :cond_0

    #@9
    .line 637
    const-string/jumbo v2, "zygote_secondary"

    #@c
    .line 640
    .local v2, "otherZygoteName":Ljava/lang/String;
    :goto_0
    :try_start_0
    invoke-static {v2}, Landroid/os/Process$ZygoteState;->connect(Ljava/lang/String;)Landroid/os/Process$ZygoteState;

    #@f
    move-result-object v3

    #@10
    .line 641
    .local v3, "zs":Landroid/os/Process$ZygoteState;
    invoke-virtual {v3}, Landroid/os/Process$ZygoteState;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@13
    .line 635
    return-void

    #@14
    .line 637
    .end local v2    # "otherZygoteName":Ljava/lang/String;
    .end local v3    # "zs":Landroid/os/Process$ZygoteState;
    :cond_0
    const-string/jumbo v2, "zygote"

    #@17
    .restart local v2    # "otherZygoteName":Ljava/lang/String;
    goto :goto_0

    #@18
    .line 643
    :catch_0
    move-exception v1

    #@19
    .line 644
    .local v1, "ioe":Ljava/io/IOException;
    const-string/jumbo v4, "Zygote"

    #@1c
    new-instance v5, Ljava/lang/StringBuilder;

    #@1e
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@21
    const-string/jumbo v6, "Got error connecting to zygote, retrying. msg= "

    #@24
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v5

    #@28
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    #@2b
    move-result-object v6

    #@2c
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v5

    #@30
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@33
    move-result-object v5

    #@34
    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@37
    .line 648
    const-wide/16 v4, 0x3e8

    #@39
    :try_start_1
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    #@3c
    goto :goto_0

    #@3d
    .line 649
    :catch_1
    move-exception v0

    #@3e
    .local v0, "ie":Ljava/lang/InterruptedException;
    goto :goto_0
.end method
