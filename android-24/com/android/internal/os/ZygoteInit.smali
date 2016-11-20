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

.field public static final PRELOAD_RESOURCES:Z = true

.field private static final PROPERTY_DISABLE_OPENGL_PRELOADING:Ljava/lang/String; = "ro.zygote.disable_gl_preload"

.field private static final PROPERTY_RUNNING_IN_CONTAINER:Ljava/lang/String; = "ro.boot.container"

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
    .line 842
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private static acceptCommandPeer(Ljava/lang/String;)Lcom/android/internal/os/ZygoteConnection;
    .locals 3
    .param p0, "abiList"    # Ljava/lang/String;

    #@0
    .prologue
    .line 146
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
    .line 147
    :catch_0
    move-exception v0

    #@d
    .line 148
    .local v0, "ex":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    #@f
    .line 149
    const-string/jumbo v2, "IOException during accept()"

    #@12
    .line 148
    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@15
    throw v1
.end method

.method private static beginIcuCachePinning()V
    .locals 5

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 219
    const-string/jumbo v3, "Zygote"

    #@4
    const-string/jumbo v4, "Installing ICU cache reference pinning..."

    #@7
    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@a
    .line 221
    sget-object v3, Landroid/icu/impl/CacheValue$Strength;->STRONG:Landroid/icu/impl/CacheValue$Strength;

    #@c
    invoke-static {v3}, Landroid/icu/impl/CacheValue;->setStrength(Landroid/icu/impl/CacheValue$Strength;)V

    #@f
    .line 223
    const-string/jumbo v3, "Zygote"

    #@12
    const-string/jumbo v4, "Preloading ICU data..."

    #@15
    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@18
    .line 225
    const/4 v3, 0x3

    #@19
    new-array v0, v3, [Landroid/icu/util/ULocale;

    #@1b
    sget-object v3, Landroid/icu/util/ULocale;->ROOT:Landroid/icu/util/ULocale;

    #@1d
    aput-object v3, v0, v2

    #@1f
    sget-object v3, Landroid/icu/util/ULocale;->US:Landroid/icu/util/ULocale;

    #@21
    const/4 v4, 0x1

    #@22
    aput-object v3, v0, v4

    #@24
    invoke-static {}, Landroid/icu/util/ULocale;->getDefault()Landroid/icu/util/ULocale;

    #@27
    move-result-object v3

    #@28
    const/4 v4, 0x2

    #@29
    aput-object v3, v0, v4

    #@2b
    .line 226
    .local v0, "localesToPin":[Landroid/icu/util/ULocale;
    array-length v3, v0

    #@2c
    :goto_0
    if-ge v2, v3, :cond_0

    #@2e
    aget-object v1, v0, v2

    #@30
    .line 227
    .local v1, "uLocale":Landroid/icu/util/ULocale;
    new-instance v4, Landroid/icu/text/DecimalFormatSymbols;

    #@32
    invoke-direct {v4, v1}, Landroid/icu/text/DecimalFormatSymbols;-><init>(Landroid/icu/util/ULocale;)V

    #@35
    .line 226
    add-int/lit8 v2, v2, 0x1

    #@37
    goto :goto_0

    #@38
    .line 215
    .end local v1    # "uLocale":Landroid/icu/util/ULocale;
    :cond_0
    return-void
.end method

.method static closeServerSocket()V
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 159
    :try_start_0
    sget-object v3, Lcom/android/internal/os/ZygoteInit;->sServerSocket:Landroid/net/LocalServerSocket;

    #@3
    if-eqz v3, :cond_0

    #@5
    .line 160
    sget-object v3, Lcom/android/internal/os/ZygoteInit;->sServerSocket:Landroid/net/LocalServerSocket;

    #@7
    invoke-virtual {v3}, Landroid/net/LocalServerSocket;->getFileDescriptor()Ljava/io/FileDescriptor;

    #@a
    move-result-object v2

    #@b
    .line 161
    .local v2, "fd":Ljava/io/FileDescriptor;
    sget-object v3, Lcom/android/internal/os/ZygoteInit;->sServerSocket:Landroid/net/LocalServerSocket;

    #@d
    invoke-virtual {v3}, Landroid/net/LocalServerSocket;->close()V

    #@10
    .line 162
    if-eqz v2, :cond_0

    #@12
    .line 163
    invoke-static {v2}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    #@15
    .line 172
    :cond_0
    :goto_0
    sput-object v5, Lcom/android/internal/os/ZygoteInit;->sServerSocket:Landroid/net/LocalServerSocket;

    #@17
    .line 157
    return-void

    #@18
    .line 168
    :catch_0
    move-exception v0

    #@19
    .line 169
    .local v0, "ex":Landroid/system/ErrnoException;
    const-string/jumbo v3, "Zygote"

    #@1c
    const-string/jumbo v4, "Zygote:  error closing descriptor"

    #@1f
    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@22
    goto :goto_0

    #@23
    .line 166
    .end local v0    # "ex":Landroid/system/ErrnoException;
    :catch_1
    move-exception v1

    #@24
    .line 167
    .local v1, "ex":Ljava/io/IOException;
    const-string/jumbo v3, "Zygote"

    #@27
    const-string/jumbo v4, "Zygote:  error closing sockets"

    #@2a
    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@2d
    goto :goto_0
.end method

.method private static createSystemServerClassLoader(Ljava/lang/String;I)Ldalvik/system/PathClassLoader;
    .locals 6
    .param p0, "systemServerClasspath"    # Ljava/lang/String;
    .param p1, "targetSdkVersion"    # I

    #@0
    .prologue
    .line 563
    const-string/jumbo v0, "java.library.path"

    #@3
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@6
    move-result-object v1

    #@7
    .line 568
    .local v1, "librarySearchPath":Ljava/lang/String;
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    #@a
    move-result-object v3

    #@b
    .line 567
    const/4 v2, 0x0

    #@c
    .line 570
    const/4 v5, 0x1

    #@d
    move-object v0, p0

    #@e
    move v4, p1

    #@f
    .line 565
    invoke-static/range {v0 .. v5}, Lcom/android/internal/os/PathClassLoaderFactory;->createClassLoader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;IZ)Ldalvik/system/PathClassLoader;

    #@12
    move-result-object v0

    #@13
    return-object v0
.end method

.method private static endIcuCachePinning()V
    .locals 2

    #@0
    .prologue
    .line 233
    sget-object v0, Landroid/icu/impl/CacheValue$Strength;->SOFT:Landroid/icu/impl/CacheValue$Strength;

    #@2
    invoke-static {v0}, Landroid/icu/impl/CacheValue;->setStrength(Landroid/icu/impl/CacheValue$Strength;)V

    #@5
    .line 235
    const-string/jumbo v0, "Zygote"

    #@8
    const-string/jumbo v1, "Uninstalled ICU cache reference pinning..."

    #@b
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@e
    .line 231
    return-void
.end method

.method static gcAndFinalize()V
    .locals 1

    #@0
    .prologue
    .line 492
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    #@3
    move-result-object v0

    #@4
    .line 497
    .local v0, "runtime":Ldalvik/system/VMRuntime;
    invoke-static {}, Ljava/lang/System;->gc()V

    #@7
    .line 498
    invoke-virtual {v0}, Ldalvik/system/VMRuntime;->runFinalizationSync()V

    #@a
    .line 499
    invoke-static {}, Ljava/lang/System;->gc()V

    #@d
    .line 491
    return-void
.end method

.method static getServerSocketFileDescriptor()Ljava/io/FileDescriptor;
    .locals 1

    #@0
    .prologue
    .line 182
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
    .line 509
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->closeServerSocket()V

    #@5
    .line 512
    sget v0, Landroid/system/OsConstants;->S_IRWXG:I

    #@7
    sget v1, Landroid/system/OsConstants;->S_IRWXO:I

    #@9
    or-int/2addr v0, v1

    #@a
    invoke-static {v0}, Landroid/system/Os;->umask(I)I

    #@d
    .line 514
    iget-object v0, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->niceName:Ljava/lang/String;

    #@f
    if-eqz v0, :cond_0

    #@11
    .line 515
    iget-object v0, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->niceName:Ljava/lang/String;

    #@13
    invoke-static {v0}, Landroid/os/Process;->setArgV0(Ljava/lang/String;)V

    #@16
    .line 518
    :cond_0
    const-string/jumbo v0, "SYSTEMSERVERCLASSPATH"

    #@19
    invoke-static {v0}, Landroid/system/Os;->getenv(Ljava/lang/String;)Ljava/lang/String;

    #@1c
    move-result-object v8

    #@1d
    .line 519
    .local v8, "systemServerClasspath":Ljava/lang/String;
    if-eqz v8, :cond_1

    #@1f
    .line 520
    invoke-static {v8}, Lcom/android/internal/os/ZygoteInit;->performSystemServerDexOpt(Ljava/lang/String;)V

    #@22
    .line 523
    :cond_1
    iget-object v0, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->invokeWith:Ljava/lang/String;

    #@24
    if-eqz v0, :cond_3

    #@26
    .line 524
    iget-object v5, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->remainingArgs:[Ljava/lang/String;

    #@28
    .line 528
    .local v5, "args":[Ljava/lang/String;
    if-eqz v8, :cond_2

    #@2a
    .line 529
    array-length v0, v5

    #@2b
    add-int/lit8 v0, v0, 0x2

    #@2d
    new-array v6, v0, [Ljava/lang/String;

    #@2f
    .line 530
    .local v6, "amendedArgs":[Ljava/lang/String;
    const-string/jumbo v0, "-cp"

    #@32
    aput-object v0, v6, v3

    #@34
    .line 531
    const/4 v0, 0x1

    #@35
    aput-object v8, v6, v0

    #@37
    .line 532
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
    .line 535
    .end local v6    # "amendedArgs":[Ljava/lang/String;
    :cond_2
    iget-object v0, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->invokeWith:Ljava/lang/String;

    #@42
    .line 536
    iget-object v1, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->niceName:Ljava/lang/String;

    #@44
    iget v2, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->targetSdkVersion:I

    #@46
    .line 537
    invoke-static {}, Ldalvik/system/VMRuntime;->getCurrentInstructionSet()Ljava/lang/String;

    #@49
    move-result-object v3

    #@4a
    .line 535
    invoke-static/range {v0 .. v5}, Lcom/android/internal/os/WrapperInit;->execApplication(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/io/FileDescriptor;[Ljava/lang/String;)V

    #@4d
    .line 507
    .end local v5    # "args":[Ljava/lang/String;
    :goto_0
    return-void

    #@4e
    .line 539
    :cond_3
    const/4 v7, 0x0

    #@4f
    .line 540
    .local v7, "cl":Ljava/lang/ClassLoader;
    if-eqz v8, :cond_4

    #@51
    .line 542
    iget v0, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->targetSdkVersion:I

    #@53
    .line 541
    invoke-static {v8, v0}, Lcom/android/internal/os/ZygoteInit;->createSystemServerClassLoader(Ljava/lang/String;I)Ldalvik/system/PathClassLoader;

    #@56
    move-result-object v7

    #@57
    .line 544
    .local v7, "cl":Ljava/lang/ClassLoader;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@5a
    move-result-object v0

    #@5b
    invoke-virtual {v0, v7}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    #@5e
    .line 550
    .end local v7    # "cl":Ljava/lang/ClassLoader;
    :cond_4
    iget v0, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->targetSdkVersion:I

    #@60
    iget-object v1, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->remainingArgs:[Ljava/lang/String;

    #@62
    invoke-static {v0, v1, v7}, Lcom/android/internal/os/RuntimeInit;->zygoteInit(I[Ljava/lang/String;Ljava/lang/ClassLoader;)V

    #@65
    goto :goto_0
.end method

.method private static hasSecondZygote(Ljava/lang/String;)Z
    .locals 1
    .param p0, "abiList"    # Ljava/lang/String;

    #@0
    .prologue
    .line 771
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
    .locals 10
    .param p0, "argv"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 691
    invoke-static {}, Ldalvik/system/ZygoteHooks;->startZygoteNoThreadCreation()V

    #@3
    .line 694
    :try_start_0
    const-string/jumbo v6, "ZygoteInit"

    #@6
    const-wide/16 v8, 0x4000

    #@8
    invoke-static {v8, v9, v6}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@b
    .line 695
    invoke-static {}, Lcom/android/internal/os/RuntimeInit;->enableDdms()V

    #@e
    .line 697
    invoke-static {}, Lcom/android/internal/os/SamplingProfilerIntegration;->start()V

    #@11
    .line 699
    const/4 v5, 0x0

    #@12
    .line 700
    .local v5, "startSystemServer":Z
    const-string/jumbo v4, "zygote"

    #@15
    .line 701
    .local v4, "socketName":Ljava/lang/String;
    const/4 v0, 0x0

    #@16
    .line 702
    .local v0, "abiList":Ljava/lang/String;
    const/4 v3, 0x1

    #@17
    .end local v0    # "abiList":Ljava/lang/String;
    .local v3, "i":I
    :goto_0
    array-length v6, p0

    #@18
    if-ge v3, v6, :cond_3

    #@1a
    .line 703
    const-string/jumbo v6, "start-system-server"

    #@1d
    aget-object v7, p0, v3

    #@1f
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@22
    move-result v6

    #@23
    if-eqz v6, :cond_0

    #@25
    .line 704
    const/4 v5, 0x1

    #@26
    .line 702
    :goto_1
    add-int/lit8 v3, v3, 0x1

    #@28
    goto :goto_0

    #@29
    .line 705
    :cond_0
    aget-object v6, p0, v3

    #@2b
    const-string/jumbo v7, "--abi-list="

    #@2e
    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@31
    move-result v6

    #@32
    if-eqz v6, :cond_1

    #@34
    .line 706
    aget-object v6, p0, v3

    #@36
    const-string/jumbo v7, "--abi-list="

    #@39
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    #@3c
    move-result v7

    #@3d
    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@40
    move-result-object v0

    #@41
    .local v0, "abiList":Ljava/lang/String;
    goto :goto_1

    #@42
    .line 707
    .end local v0    # "abiList":Ljava/lang/String;
    :cond_1
    aget-object v6, p0, v3

    #@44
    const-string/jumbo v7, "--socket-name="

    #@47
    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@4a
    move-result v6

    #@4b
    if-eqz v6, :cond_2

    #@4d
    .line 708
    aget-object v6, p0, v3

    #@4f
    const-string/jumbo v7, "--socket-name="

    #@52
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    #@55
    move-result v7

    #@56
    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@59
    move-result-object v4

    #@5a
    goto :goto_1

    #@5b
    .line 710
    :cond_2
    new-instance v6, Ljava/lang/RuntimeException;

    #@5d
    new-instance v7, Ljava/lang/StringBuilder;

    #@5f
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@62
    const-string/jumbo v8, "Unknown command line argument: "

    #@65
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@68
    move-result-object v7

    #@69
    aget-object v8, p0, v3

    #@6b
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6e
    move-result-object v7

    #@6f
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@72
    move-result-object v7

    #@73
    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@76
    throw v6
    :try_end_0
    .catch Lcom/android/internal/os/ZygoteInit$MethodAndArgsCaller; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    #@77
    .line 754
    .end local v3    # "i":I
    .end local v4    # "socketName":Ljava/lang/String;
    .end local v5    # "startSystemServer":Z
    :catch_0
    move-exception v1

    #@78
    .line 755
    .local v1, "caller":Lcom/android/internal/os/ZygoteInit$MethodAndArgsCaller;
    invoke-virtual {v1}, Lcom/android/internal/os/ZygoteInit$MethodAndArgsCaller;->run()V

    #@7b
    .line 688
    .end local v1    # "caller":Lcom/android/internal/os/ZygoteInit$MethodAndArgsCaller;
    :goto_2
    return-void

    #@7c
    .line 714
    .restart local v3    # "i":I
    .restart local v4    # "socketName":Ljava/lang/String;
    .restart local v5    # "startSystemServer":Z
    :cond_3
    if-nez v0, :cond_4

    #@7e
    .line 715
    :try_start_1
    new-instance v6, Ljava/lang/RuntimeException;

    #@80
    const-string/jumbo v7, "No ABI list supplied."

    #@83
    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@86
    throw v6
    :try_end_1
    .catch Lcom/android/internal/os/ZygoteInit$MethodAndArgsCaller; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    #@87
    .line 756
    .end local v3    # "i":I
    .end local v4    # "socketName":Ljava/lang/String;
    .end local v5    # "startSystemServer":Z
    :catch_1
    move-exception v2

    #@88
    .line 757
    .local v2, "ex":Ljava/lang/RuntimeException;
    const-string/jumbo v6, "Zygote"

    #@8b
    const-string/jumbo v7, "Zygote died with exception"

    #@8e
    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@91
    .line 758
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->closeServerSocket()V

    #@94
    .line 759
    throw v2

    #@95
    .line 718
    .end local v2    # "ex":Ljava/lang/RuntimeException;
    .restart local v3    # "i":I
    .restart local v4    # "socketName":Ljava/lang/String;
    .restart local v5    # "startSystemServer":Z
    :cond_4
    :try_start_2
    invoke-static {v4}, Lcom/android/internal/os/ZygoteInit;->registerZygoteSocket(Ljava/lang/String;)V

    #@98
    .line 719
    const-string/jumbo v6, "ZygotePreload"

    #@9b
    const-wide/16 v8, 0x4000

    #@9d
    invoke-static {v8, v9, v6}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@a0
    .line 721
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@a3
    move-result-wide v6

    #@a4
    .line 720
    const/16 v8, 0xbcc

    #@a6
    invoke-static {v8, v6, v7}, Landroid/util/EventLog;->writeEvent(IJ)I

    #@a9
    .line 722
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->preload()V

    #@ac
    .line 724
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@af
    move-result-wide v6

    #@b0
    .line 723
    const/16 v8, 0xbd6

    #@b2
    invoke-static {v8, v6, v7}, Landroid/util/EventLog;->writeEvent(IJ)I

    #@b5
    .line 725
    const-wide/16 v6, 0x4000

    #@b7
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    #@ba
    .line 728
    invoke-static {}, Lcom/android/internal/os/SamplingProfilerIntegration;->writeZygoteSnapshot()V

    #@bd
    .line 731
    const-string/jumbo v6, "PostZygoteInitGC"

    #@c0
    const-wide/16 v8, 0x4000

    #@c2
    invoke-static {v8, v9, v6}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@c5
    .line 732
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->gcAndFinalize()V

    #@c8
    .line 733
    const-wide/16 v6, 0x4000

    #@ca
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    #@cd
    .line 735
    const-wide/16 v6, 0x4000

    #@cf
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    #@d2
    .line 739
    const/4 v6, 0x0

    #@d3
    invoke-static {v6}, Landroid/os/Trace;->setTracingEnabled(Z)V

    #@d6
    .line 742
    invoke-static {}, Lcom/android/internal/os/Zygote;->nativeUnmountStorageOnInit()V

    #@d9
    .line 744
    invoke-static {}, Ldalvik/system/ZygoteHooks;->stopZygoteNoThreadCreation()V

    #@dc
    .line 746
    if-eqz v5, :cond_5

    #@de
    .line 747
    invoke-static {v0, v4}, Lcom/android/internal/os/ZygoteInit;->startSystemServer(Ljava/lang/String;Ljava/lang/String;)Z

    #@e1
    .line 750
    :cond_5
    const-string/jumbo v6, "Zygote"

    #@e4
    const-string/jumbo v7, "Accepting command socket connections"

    #@e7
    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@ea
    .line 751
    invoke-static {v0}, Lcom/android/internal/os/ZygoteInit;->runSelectLoop(Ljava/lang/String;)V

    #@ed
    .line 753
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->closeServerSocket()V
    :try_end_2
    .catch Lcom/android/internal/os/ZygoteInit$MethodAndArgsCaller; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    #@f0
    goto :goto_2
.end method

.method private static performSystemServerDexOpt(Ljava/lang/String;)V
    .locals 13
    .param p0, "classPath"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 578
    const-string/jumbo v5, ":"

    #@4
    invoke-virtual {p0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@7
    move-result-object v9

    #@8
    .line 579
    .local v9, "classPathElements":[Ljava/lang/String;
    new-instance v0, Lcom/android/internal/os/InstallerConnection;

    #@a
    invoke-direct {v0}, Lcom/android/internal/os/InstallerConnection;-><init>()V

    #@d
    .line 580
    .local v0, "installer":Lcom/android/internal/os/InstallerConnection;
    invoke-virtual {v0}, Lcom/android/internal/os/InstallerConnection;->waitForConnection()V

    #@10
    .line 581
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    #@13
    move-result-object v5

    #@14
    invoke-virtual {v5}, Ldalvik/system/VMRuntime;->vmInstructionSet()Ljava/lang/String;

    #@17
    move-result-object v3

    #@18
    .line 584
    .local v3, "instructionSet":Ljava/lang/String;
    :try_start_0
    const-string/jumbo v8, ""

    #@1b
    .line 585
    .local v8, "sharedLibraries":Ljava/lang/String;
    array-length v12, v9

    #@1c
    move v11, v2

    #@1d
    :goto_0
    if-ge v11, v12, :cond_2

    #@1f
    aget-object v1, v9, v11

    #@21
    .line 590
    .local v1, "classPathElement":Ljava/lang/String;
    const-string/jumbo v2, "speed"

    #@24
    .line 591
    const/4 v5, 0x0

    #@25
    .line 589
    invoke-static {v1, v3, v2, v5}, Ldalvik/system/DexFile;->getDexOptNeeded(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I

    #@28
    move-result v4

    #@29
    .line 592
    .local v4, "dexoptNeeded":I
    if-eqz v4, :cond_0

    #@2b
    .line 594
    const-string/jumbo v6, "speed"

    #@2e
    .line 593
    const/16 v2, 0x3e8

    #@30
    .line 594
    const/4 v5, 0x0

    #@31
    const/4 v7, 0x0

    #@32
    .line 593
    invoke-virtual/range {v0 .. v8}, Lcom/android/internal/os/InstallerConnection;->dexopt(Ljava/lang/String;ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@35
    .line 597
    :cond_0
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    #@38
    move-result v2

    #@39
    if-nez v2, :cond_1

    #@3b
    .line 598
    new-instance v2, Ljava/lang/StringBuilder;

    #@3d
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@40
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v2

    #@44
    const-string/jumbo v5, ":"

    #@47
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v2

    #@4b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4e
    move-result-object v8

    #@4f
    .line 600
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    #@51
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@54
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57
    move-result-object v2

    #@58
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v2

    #@5c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/internal/os/InstallerConnection$InstallerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5f
    move-result-object v8

    #@60
    .line 585
    add-int/lit8 v2, v11, 0x1

    #@62
    move v11, v2

    #@63
    goto :goto_0

    #@64
    .line 605
    .end local v1    # "classPathElement":Ljava/lang/String;
    .end local v4    # "dexoptNeeded":I
    :cond_2
    invoke-virtual {v0}, Lcom/android/internal/os/InstallerConnection;->disconnect()V

    #@67
    .line 577
    return-void

    #@68
    .line 602
    .end local v8    # "sharedLibraries":Ljava/lang/String;
    :catch_0
    move-exception v10

    #@69
    .line 603
    .local v10, "e":Ljava/lang/Exception;
    :try_start_1
    new-instance v2, Ljava/lang/RuntimeException;

    #@6b
    const-string/jumbo v5, "Error starting system_server"

    #@6e
    invoke-direct {v2, v5, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@71
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@72
    .line 604
    .end local v10    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    #@73
    .line 605
    invoke-virtual {v0}, Lcom/android/internal/os/InstallerConnection;->disconnect()V

    #@76
    .line 604
    throw v2
.end method

.method private static varargs posixCapabilitiesAsBits([I)J
    .locals 8
    .param p0, "capabilities"    # [I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 678
    const-wide/16 v2, 0x0

    #@3
    .line 679
    .local v2, "result":J
    array-length v4, p0

    #@4
    :goto_0
    if-ge v1, v4, :cond_2

    #@6
    aget v0, p0, v1

    #@8
    .line 680
    .local v0, "capability":I
    if-ltz v0, :cond_0

    #@a
    sget v5, Landroid/system/OsConstants;->CAP_LAST_CAP:I

    #@c
    if-le v0, v5, :cond_1

    #@e
    .line 681
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
    .line 683
    :cond_1
    const-wide/16 v6, 0x1

    #@1a
    shl-long/2addr v6, v0

    #@1b
    or-long/2addr v2, v6

    #@1c
    .line 679
    add-int/lit8 v1, v1, 0x1

    #@1e
    goto :goto_0

    #@1f
    .line 685
    .end local v0    # "capability":I
    :cond_2
    return-wide v2
.end method

.method static preload()V
    .locals 4

    #@0
    .prologue
    const-wide/16 v2, 0x4000

    #@2
    .line 192
    const-string/jumbo v0, "Zygote"

    #@5
    const-string/jumbo v1, "begin preload"

    #@8
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@b
    .line 193
    const-string/jumbo v0, "BeginIcuCachePinning"

    #@e
    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@11
    .line 194
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->beginIcuCachePinning()V

    #@14
    .line 195
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    #@17
    .line 196
    const-string/jumbo v0, "PreloadClasses"

    #@1a
    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@1d
    .line 197
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->preloadClasses()V

    #@20
    .line 198
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    #@23
    .line 199
    const-string/jumbo v0, "PreloadResources"

    #@26
    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@29
    .line 200
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->preloadResources()V

    #@2c
    .line 201
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    #@2f
    .line 202
    const-string/jumbo v0, "PreloadOpenGL"

    #@32
    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@35
    .line 203
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->preloadOpenGL()V

    #@38
    .line 204
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    #@3b
    .line 205
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->preloadSharedLibraries()V

    #@3e
    .line 206
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->preloadTextResources()V

    #@41
    .line 209
    invoke-static {}, Landroid/webkit/WebViewFactory;->prepareWebViewInZygote()V

    #@44
    .line 210
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->endIcuCachePinning()V

    #@47
    .line 211
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->warmUpJcaProviders()V

    #@4a
    .line 212
    const-string/jumbo v0, "Zygote"

    #@4d
    const-string/jumbo v1, "end preload"

    #@50
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@53
    .line 191
    return-void
.end method

.method private static preloadClasses()V
    .locals 26

    #@0
    .prologue
    .line 293
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    #@3
    move-result-object v17

    #@4
    .line 297
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
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    #@e
    .line 303
    .local v13, "is":Ljava/io/InputStream;
    const-string/jumbo v21, "Zygote"

    #@11
    const-string/jumbo v22, "Preloading classes..."

    #@14
    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@17
    .line 304
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@1a
    move-result-wide v18

    #@1b
    .line 307
    .local v18, "startTime":J
    invoke-static {}, Landroid/system/Os;->getuid()I

    #@1e
    move-result v16

    #@1f
    .line 308
    .local v16, "reuid":I
    invoke-static {}, Landroid/system/Os;->getgid()I

    #@22
    move-result v15

    #@23
    .line 313
    .local v15, "regid":I
    const/4 v7, 0x0

    #@24
    .line 314
    .local v7, "droppedPriviliges":Z
    if-nez v16, :cond_0

    #@26
    if-nez v15, :cond_0

    #@28
    .line 316
    const/16 v21, 0x0

    #@2a
    const/16 v22, 0x270f

    #@2c
    :try_start_1
    invoke-static/range {v21 .. v22}, Landroid/system/Os;->setregid(II)V

    #@2f
    .line 317
    const/16 v21, 0x0

    #@31
    const/16 v22, 0x270f

    #@33
    invoke-static/range {v21 .. v22}, Landroid/system/Os;->setreuid(II)V
    :try_end_1
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_1} :catch_2

    #@36
    .line 322
    const/4 v7, 0x1

    #@37
    .line 327
    :cond_0
    invoke-virtual/range {v17 .. v17}, Ldalvik/system/VMRuntime;->getTargetHeapUtilization()F

    #@3a
    move-result v6

    #@3b
    .line 328
    .local v6, "defaultUtilization":F
    const v21, 0x3f4ccccd    # 0.8f

    #@3e
    move-object/from16 v0, v17

    #@40
    move/from16 v1, v21

    #@42
    invoke-virtual {v0, v1}, Ldalvik/system/VMRuntime;->setTargetHeapUtilization(F)F

    #@45
    .line 332
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
    .line 334
    .local v4, "br":Ljava/io/BufferedReader;
    const/4 v5, 0x0

    #@58
    .line 336
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
    .line 338
    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@61
    move-result-object v14

    #@62
    .line 339
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

    #@75
    move-result v21

    #@76
    if-nez v21, :cond_1

    #@78
    .line 343
    new-instance v21, Ljava/lang/StringBuilder;

    #@7a
    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    #@7d
    const-string/jumbo v22, "PreloadClass "

    #@80
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@83
    move-result-object v21

    #@84
    move-object/from16 v0, v21

    #@86
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@89
    move-result-object v21

    #@8a
    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8d
    move-result-object v21

    #@8e
    const-wide/16 v22, 0x4000

    #@90
    move-wide/from16 v0, v22

    #@92
    move-object/from16 v2, v21

    #@94
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@97
    .line 353
    const/16 v21, 0x1

    #@99
    const/16 v22, 0x0

    #@9b
    :try_start_3
    move/from16 v0, v21

    #@9d
    move-object/from16 v1, v22

    #@9f
    invoke-static {v14, v0, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@a2
    .line 354
    add-int/lit8 v5, v5, 0x1

    #@a4
    .line 369
    :goto_1
    const-wide/16 v22, 0x4000

    #@a6
    :try_start_4
    invoke-static/range {v22 .. v23}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@a9
    goto :goto_0

    #@aa
    .line 374
    .end local v4    # "br":Ljava/io/BufferedReader;
    .end local v5    # "count":I
    .end local v14    # "line":Ljava/lang/String;
    :catch_0
    move-exception v9

    #@ab
    .line 375
    .local v9, "e":Ljava/io/IOException;
    :try_start_5
    const-string/jumbo v21, "Zygote"

    #@ae
    const-string/jumbo v22, "Error reading /system/etc/preloaded-classes."

    #@b1
    move-object/from16 v0, v21

    #@b3
    move-object/from16 v1, v22

    #@b5
    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@b8
    .line 377
    invoke-static {v13}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@bb
    .line 379
    move-object/from16 v0, v17

    #@bd
    invoke-virtual {v0, v6}, Ldalvik/system/VMRuntime;->setTargetHeapUtilization(F)F

    #@c0
    .line 382
    const-string/jumbo v21, "PreloadDexCaches"

    #@c3
    const-wide/16 v22, 0x4000

    #@c5
    move-wide/from16 v0, v22

    #@c7
    move-object/from16 v2, v21

    #@c9
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@cc
    .line 383
    invoke-virtual/range {v17 .. v17}, Ldalvik/system/VMRuntime;->preloadDexCaches()V

    #@cf
    .line 384
    const-wide/16 v22, 0x4000

    #@d1
    invoke-static/range {v22 .. v23}, Landroid/os/Trace;->traceEnd(J)V

    #@d4
    .line 387
    if-eqz v7, :cond_2

    #@d6
    .line 389
    const/16 v21, 0x0

    #@d8
    const/16 v22, 0x0

    #@da
    :try_start_6
    invoke-static/range {v21 .. v22}, Landroid/system/Os;->setreuid(II)V

    #@dd
    .line 390
    const/16 v21, 0x0

    #@df
    const/16 v22, 0x0

    #@e1
    invoke-static/range {v21 .. v22}, Landroid/system/Os;->setregid(II)V
    :try_end_6
    .catch Landroid/system/ErrnoException; {:try_start_6 .. :try_end_6} :catch_7

    #@e4
    .line 292
    .end local v9    # "e":Ljava/io/IOException;
    :cond_2
    :goto_2
    return-void

    #@e5
    .line 298
    .end local v6    # "defaultUtilization":F
    .end local v7    # "droppedPriviliges":Z
    .end local v13    # "is":Ljava/io/InputStream;
    .end local v15    # "regid":I
    .end local v16    # "reuid":I
    .end local v18    # "startTime":J
    :catch_1
    move-exception v8

    #@e6
    .line 299
    .local v8, "e":Ljava/io/FileNotFoundException;
    const-string/jumbo v21, "Zygote"

    #@e9
    const-string/jumbo v22, "Couldn\'t find /system/etc/preloaded-classes."

    #@ec
    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@ef
    .line 300
    return-void

    #@f0
    .line 318
    .end local v8    # "e":Ljava/io/FileNotFoundException;
    .restart local v7    # "droppedPriviliges":Z
    .restart local v13    # "is":Ljava/io/InputStream;
    .restart local v15    # "regid":I
    .restart local v16    # "reuid":I
    .restart local v18    # "startTime":J
    :catch_2
    move-exception v12

    #@f1
    .line 319
    .local v12, "ex":Landroid/system/ErrnoException;
    new-instance v21, Ljava/lang/RuntimeException;

    #@f3
    const-string/jumbo v22, "Failed to drop root"

    #@f6
    move-object/from16 v0, v21

    #@f8
    move-object/from16 v1, v22

    #@fa
    invoke-direct {v0, v1, v12}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@fd
    throw v21

    #@fe
    .line 359
    .end local v12    # "ex":Landroid/system/ErrnoException;
    .restart local v4    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "count":I
    .restart local v6    # "defaultUtilization":F
    .restart local v14    # "line":Ljava/lang/String;
    :catch_3
    move-exception v20

    #@ff
    .line 360
    .local v20, "t":Ljava/lang/Throwable;
    :try_start_7
    const-string/jumbo v21, "Zygote"

    #@102
    new-instance v22, Ljava/lang/StringBuilder;

    #@104
    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    #@107
    const-string/jumbo v23, "Error preloading "

    #@10a
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10d
    move-result-object v22

    #@10e
    move-object/from16 v0, v22

    #@110
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@113
    move-result-object v22

    #@114
    const-string/jumbo v23, "."

    #@117
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11a
    move-result-object v22

    #@11b
    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@11e
    move-result-object v22

    #@11f
    move-object/from16 v0, v21

    #@121
    move-object/from16 v1, v22

    #@123
    move-object/from16 v2, v20

    #@125
    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@128
    .line 361
    move-object/from16 v0, v20

    #@12a
    instance-of v0, v0, Ljava/lang/Error;

    #@12c
    move/from16 v21, v0

    #@12e
    if-eqz v21, :cond_4

    #@130
    .line 362
    check-cast v20, Ljava/lang/Error;

    #@132
    .end local v20    # "t":Ljava/lang/Throwable;
    throw v20
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    #@133
    .line 376
    .end local v4    # "br":Ljava/io/BufferedReader;
    .end local v5    # "count":I
    .end local v14    # "line":Ljava/lang/String;
    :catchall_0
    move-exception v21

    #@134
    .line 377
    invoke-static {v13}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@137
    .line 379
    move-object/from16 v0, v17

    #@139
    invoke-virtual {v0, v6}, Ldalvik/system/VMRuntime;->setTargetHeapUtilization(F)F

    #@13c
    .line 382
    const-string/jumbo v22, "PreloadDexCaches"

    #@13f
    const-wide/16 v24, 0x4000

    #@141
    move-wide/from16 v0, v24

    #@143
    move-object/from16 v2, v22

    #@145
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@148
    .line 383
    invoke-virtual/range {v17 .. v17}, Ldalvik/system/VMRuntime;->preloadDexCaches()V

    #@14b
    .line 384
    const-wide/16 v22, 0x4000

    #@14d
    invoke-static/range {v22 .. v23}, Landroid/os/Trace;->traceEnd(J)V

    #@150
    .line 387
    if-eqz v7, :cond_3

    #@152
    .line 389
    const/16 v22, 0x0

    #@154
    const/16 v23, 0x0

    #@156
    :try_start_8
    invoke-static/range {v22 .. v23}, Landroid/system/Os;->setreuid(II)V

    #@159
    .line 390
    const/16 v22, 0x0

    #@15b
    const/16 v23, 0x0

    #@15d
    invoke-static/range {v22 .. v23}, Landroid/system/Os;->setregid(II)V
    :try_end_8
    .catch Landroid/system/ErrnoException; {:try_start_8 .. :try_end_8} :catch_8

    #@160
    .line 376
    :cond_3
    throw v21

    #@161
    .line 364
    .restart local v4    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "count":I
    .restart local v14    # "line":Ljava/lang/String;
    .restart local v20    # "t":Ljava/lang/Throwable;
    :cond_4
    :try_start_9
    move-object/from16 v0, v20

    #@163
    instance-of v0, v0, Ljava/lang/RuntimeException;

    #@165
    move/from16 v21, v0

    #@167
    if-eqz v21, :cond_5

    #@169
    .line 365
    check-cast v20, Ljava/lang/RuntimeException;

    #@16b
    .end local v20    # "t":Ljava/lang/Throwable;
    throw v20

    #@16c
    .line 367
    .restart local v20    # "t":Ljava/lang/Throwable;
    :cond_5
    new-instance v21, Ljava/lang/RuntimeException;

    #@16e
    move-object/from16 v0, v21

    #@170
    move-object/from16 v1, v20

    #@172
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@175
    throw v21

    #@176
    .line 357
    .end local v20    # "t":Ljava/lang/Throwable;
    :catch_4
    move-exception v11

    #@177
    .line 358
    .local v11, "e":Ljava/lang/UnsatisfiedLinkError;
    const-string/jumbo v21, "Zygote"

    #@17a
    new-instance v22, Ljava/lang/StringBuilder;

    #@17c
    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    #@17f
    const-string/jumbo v23, "Problem preloading "

    #@182
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@185
    move-result-object v22

    #@186
    move-object/from16 v0, v22

    #@188
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18b
    move-result-object v22

    #@18c
    const-string/jumbo v23, ": "

    #@18f
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@192
    move-result-object v22

    #@193
    move-object/from16 v0, v22

    #@195
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@198
    move-result-object v22

    #@199
    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@19c
    move-result-object v22

    #@19d
    invoke-static/range {v21 .. v22}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@1a0
    goto/16 :goto_1

    #@1a2
    .line 355
    .end local v11    # "e":Ljava/lang/UnsatisfiedLinkError;
    :catch_5
    move-exception v10

    #@1a3
    .line 356
    .local v10, "e":Ljava/lang/ClassNotFoundException;
    const-string/jumbo v21, "Zygote"

    #@1a6
    new-instance v22, Ljava/lang/StringBuilder;

    #@1a8
    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    #@1ab
    const-string/jumbo v23, "Class not found for preloading: "

    #@1ae
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b1
    move-result-object v22

    #@1b2
    move-object/from16 v0, v22

    #@1b4
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b7
    move-result-object v22

    #@1b8
    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1bb
    move-result-object v22

    #@1bc
    invoke-static/range {v21 .. v22}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@1bf
    goto/16 :goto_1

    #@1c1
    .line 372
    .end local v10    # "e":Ljava/lang/ClassNotFoundException;
    :cond_6
    const-string/jumbo v21, "Zygote"

    #@1c4
    new-instance v22, Ljava/lang/StringBuilder;

    #@1c6
    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    #@1c9
    const-string/jumbo v23, "...preloaded "

    #@1cc
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1cf
    move-result-object v22

    #@1d0
    move-object/from16 v0, v22

    #@1d2
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1d5
    move-result-object v22

    #@1d6
    const-string/jumbo v23, " classes in "

    #@1d9
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1dc
    move-result-object v22

    #@1dd
    .line 373
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@1e0
    move-result-wide v24

    #@1e1
    sub-long v24, v24, v18

    #@1e3
    .line 372
    move-object/from16 v0, v22

    #@1e5
    move-wide/from16 v1, v24

    #@1e7
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@1ea
    move-result-object v22

    #@1eb
    .line 373
    const-string/jumbo v23, "ms."

    #@1ee
    .line 372
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f1
    move-result-object v22

    #@1f2
    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f5
    move-result-object v22

    #@1f6
    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    #@1f9
    .line 377
    invoke-static {v13}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@1fc
    .line 379
    move-object/from16 v0, v17

    #@1fe
    invoke-virtual {v0, v6}, Ldalvik/system/VMRuntime;->setTargetHeapUtilization(F)F

    #@201
    .line 382
    const-string/jumbo v21, "PreloadDexCaches"

    #@204
    const-wide/16 v22, 0x4000

    #@206
    move-wide/from16 v0, v22

    #@208
    move-object/from16 v2, v21

    #@20a
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@20d
    .line 383
    invoke-virtual/range {v17 .. v17}, Ldalvik/system/VMRuntime;->preloadDexCaches()V

    #@210
    .line 384
    const-wide/16 v22, 0x4000

    #@212
    invoke-static/range {v22 .. v23}, Landroid/os/Trace;->traceEnd(J)V

    #@215
    .line 387
    if-eqz v7, :cond_2

    #@217
    .line 389
    const/16 v21, 0x0

    #@219
    const/16 v22, 0x0

    #@21b
    :try_start_a
    invoke-static/range {v21 .. v22}, Landroid/system/Os;->setreuid(II)V

    #@21e
    .line 390
    const/16 v21, 0x0

    #@220
    const/16 v22, 0x0

    #@222
    invoke-static/range {v21 .. v22}, Landroid/system/Os;->setregid(II)V
    :try_end_a
    .catch Landroid/system/ErrnoException; {:try_start_a .. :try_end_a} :catch_6

    #@225
    goto/16 :goto_2

    #@227
    .line 391
    :catch_6
    move-exception v12

    #@228
    .line 392
    .restart local v12    # "ex":Landroid/system/ErrnoException;
    new-instance v21, Ljava/lang/RuntimeException;

    #@22a
    const-string/jumbo v22, "Failed to restore root"

    #@22d
    move-object/from16 v0, v21

    #@22f
    move-object/from16 v1, v22

    #@231
    invoke-direct {v0, v1, v12}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@234
    throw v21

    #@235
    .line 391
    .end local v4    # "br":Ljava/io/BufferedReader;
    .end local v5    # "count":I
    .end local v12    # "ex":Landroid/system/ErrnoException;
    .end local v14    # "line":Ljava/lang/String;
    .restart local v9    # "e":Ljava/io/IOException;
    :catch_7
    move-exception v12

    #@236
    .line 392
    .restart local v12    # "ex":Landroid/system/ErrnoException;
    new-instance v21, Ljava/lang/RuntimeException;

    #@238
    const-string/jumbo v22, "Failed to restore root"

    #@23b
    move-object/from16 v0, v21

    #@23d
    move-object/from16 v1, v22

    #@23f
    invoke-direct {v0, v1, v12}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@242
    throw v21

    #@243
    .line 391
    .end local v9    # "e":Ljava/io/IOException;
    .end local v12    # "ex":Landroid/system/ErrnoException;
    :catch_8
    move-exception v12

    #@244
    .line 392
    .restart local v12    # "ex":Landroid/system/ErrnoException;
    new-instance v21, Ljava/lang/RuntimeException;

    #@246
    const-string/jumbo v22, "Failed to restore root"

    #@249
    move-object/from16 v0, v21

    #@24b
    move-object/from16 v1, v22

    #@24d
    invoke-direct {v0, v1, v12}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@250
    throw v21
.end method

.method private static preloadColorStateLists(Landroid/content/res/TypedArray;)I
    .locals 6
    .param p0, "ar"    # Landroid/content/res/TypedArray;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    const/4 v4, 0x0

    #@2
    .line 448
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->length()I

    #@5
    move-result v0

    #@6
    .line 449
    .local v0, "N":I
    const/4 v1, 0x0

    #@7
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    #@9
    .line 450
    invoke-virtual {p0, v1, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@c
    move-result v2

    #@d
    .line 454
    .local v2, "id":I
    if-eqz v2, :cond_0

    #@f
    .line 455
    sget-object v3, Lcom/android/internal/os/ZygoteInit;->mResources:Landroid/content/res/Resources;

    #@11
    invoke-virtual {v3, v2, v5}, Landroid/content/res/Resources;->getColorStateList(ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    #@14
    move-result-object v3

    #@15
    if-nez v3, :cond_0

    #@17
    .line 456
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@19
    .line 457
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
    .line 458
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@28
    move-result-object v5

    #@29
    .line 457
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v4

    #@2d
    .line 459
    const-string/jumbo v5, " ("

    #@30
    .line 457
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v4

    #@34
    .line 459
    invoke-virtual {p0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@37
    move-result-object v5

    #@38
    .line 457
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v4

    #@3c
    .line 459
    const-string/jumbo v5, ")"

    #@3f
    .line 457
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v4

    #@43
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@46
    move-result-object v4

    #@47
    .line 456
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@4a
    throw v3

    #@4b
    .line 449
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@4d
    goto :goto_0

    #@4e
    .line 463
    .end local v2    # "id":I
    :cond_1
    return v0
.end method

.method private static preloadDrawables(Landroid/content/res/TypedArray;)I
    .locals 6
    .param p0, "ar"    # Landroid/content/res/TypedArray;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    const/4 v4, 0x0

    #@2
    .line 468
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->length()I

    #@5
    move-result v0

    #@6
    .line 469
    .local v0, "N":I
    const/4 v1, 0x0

    #@7
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    #@9
    .line 470
    invoke-virtual {p0, v1, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@c
    move-result v2

    #@d
    .line 474
    .local v2, "id":I
    if-eqz v2, :cond_0

    #@f
    .line 475
    sget-object v3, Lcom/android/internal/os/ZygoteInit;->mResources:Landroid/content/res/Resources;

    #@11
    invoke-virtual {v3, v2, v5}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    #@14
    move-result-object v3

    #@15
    if-nez v3, :cond_0

    #@17
    .line 476
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@19
    .line 477
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
    .line 478
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@28
    move-result-object v5

    #@29
    .line 477
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v4

    #@2d
    .line 479
    const-string/jumbo v5, " ("

    #@30
    .line 477
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v4

    #@34
    .line 479
    invoke-virtual {p0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@37
    move-result-object v5

    #@38
    .line 477
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v4

    #@3c
    .line 479
    const-string/jumbo v5, ")"

    #@3f
    .line 477
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v4

    #@43
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@46
    move-result-object v4

    #@47
    .line 476
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@4a
    throw v3

    #@4b
    .line 469
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@4d
    goto :goto_0

    #@4e
    .line 483
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
    .line 246
    const-string/jumbo v0, "ro.zygote.disable_gl_preload"

    #@4
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    #@7
    move-result v0

    #@8
    if-nez v0, :cond_0

    #@a
    .line 247
    invoke-static {v1}, Landroid/opengl/EGL14;->eglGetDisplay(I)Landroid/opengl/EGLDisplay;

    #@d
    .line 245
    :cond_0
    return-void
.end method

.method private static preloadResources()V
    .locals 10

    #@0
    .prologue
    .line 406
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    #@3
    move-result-object v3

    #@4
    .line 409
    .local v3, "runtime":Ldalvik/system/VMRuntime;
    :try_start_0
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    #@7
    move-result-object v6

    #@8
    sput-object v6, Lcom/android/internal/os/ZygoteInit;->mResources:Landroid/content/res/Resources;

    #@a
    .line 410
    sget-object v6, Lcom/android/internal/os/ZygoteInit;->mResources:Landroid/content/res/Resources;

    #@c
    invoke-virtual {v6}, Landroid/content/res/Resources;->startPreloading()V

    #@f
    .line 412
    const-string/jumbo v6, "Zygote"

    #@12
    const-string/jumbo v7, "Preloading resources..."

    #@15
    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@18
    .line 414
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@1b
    move-result-wide v4

    #@1c
    .line 415
    .local v4, "startTime":J
    sget-object v6, Lcom/android/internal/os/ZygoteInit;->mResources:Landroid/content/res/Resources;

    #@1e
    .line 416
    const v7, 0x1070006

    #@21
    .line 415
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    #@24
    move-result-object v1

    #@25
    .line 417
    .local v1, "ar":Landroid/content/res/TypedArray;
    invoke-static {v1}, Lcom/android/internal/os/ZygoteInit;->preloadDrawables(Landroid/content/res/TypedArray;)I

    #@28
    move-result v0

    #@29
    .line 418
    .local v0, "N":I
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    #@2c
    .line 419
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
    .line 420
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@49
    move-result-wide v8

    #@4a
    sub-long/2addr v8, v4

    #@4b
    .line 419
    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v7

    #@4f
    .line 420
    const-string/jumbo v8, "ms."

    #@52
    .line 419
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
    .line 422
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@60
    move-result-wide v4

    #@61
    .line 423
    sget-object v6, Lcom/android/internal/os/ZygoteInit;->mResources:Landroid/content/res/Resources;

    #@63
    .line 424
    const v7, 0x1070007

    #@66
    .line 423
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    #@69
    move-result-object v1

    #@6a
    .line 425
    invoke-static {v1}, Lcom/android/internal/os/ZygoteInit;->preloadColorStateLists(Landroid/content/res/TypedArray;)I

    #@6d
    move-result v0

    #@6e
    .line 426
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    #@71
    .line 427
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
    .line 428
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@8e
    move-result-wide v8

    #@8f
    sub-long/2addr v8, v4

    #@90
    .line 427
    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@93
    move-result-object v7

    #@94
    .line 428
    const-string/jumbo v8, "ms."

    #@97
    .line 427
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
    .line 430
    sget-object v6, Lcom/android/internal/os/ZygoteInit;->mResources:Landroid/content/res/Resources;

    #@a4
    .line 431
    const v7, 0x11200a8

    #@a7
    .line 430
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@aa
    move-result v6

    #@ab
    if-eqz v6, :cond_0

    #@ad
    .line 432
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@b0
    move-result-wide v4

    #@b1
    .line 433
    sget-object v6, Lcom/android/internal/os/ZygoteInit;->mResources:Landroid/content/res/Resources;

    #@b3
    .line 434
    const v7, 0x1070008

    #@b6
    .line 433
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    #@b9
    move-result-object v1

    #@ba
    .line 435
    invoke-static {v1}, Lcom/android/internal/os/ZygoteInit;->preloadDrawables(Landroid/content/res/TypedArray;)I

    #@bd
    move-result v0

    #@be
    .line 436
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    #@c1
    .line 437
    const-string/jumbo v6, "Zygote"

    #@c4
    new-instance v7, Ljava/lang/StringBuilder;

    #@c6
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@c9
    const-string/jumbo v8, "...preloaded "

    #@cc
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cf
    move-result-object v7

    #@d0
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@d3
    move-result-object v7

    #@d4
    const-string/jumbo v8, " resource in "

    #@d7
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@da
    move-result-object v7

    #@db
    .line 438
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@de
    move-result-wide v8

    #@df
    sub-long/2addr v8, v4

    #@e0
    .line 437
    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@e3
    move-result-object v7

    #@e4
    .line 438
    const-string/jumbo v8, "ms."

    #@e7
    .line 437
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ea
    move-result-object v7

    #@eb
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ee
    move-result-object v7

    #@ef
    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@f2
    .line 441
    :cond_0
    sget-object v6, Lcom/android/internal/os/ZygoteInit;->mResources:Landroid/content/res/Resources;

    #@f4
    invoke-virtual {v6}, Landroid/content/res/Resources;->finishPreloading()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    #@f7
    .line 405
    .end local v0    # "N":I
    .end local v1    # "ar":Landroid/content/res/TypedArray;
    .end local v4    # "startTime":J
    :goto_0
    return-void

    #@f8
    .line 442
    :catch_0
    move-exception v2

    #@f9
    .line 443
    .local v2, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v6, "Zygote"

    #@fc
    const-string/jumbo v7, "Failure preloading resources"

    #@ff
    invoke-static {v6, v7, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@102
    goto :goto_0
.end method

.method private static preloadSharedLibraries()V
    .locals 2

    #@0
    .prologue
    .line 239
    const-string/jumbo v0, "Zygote"

    #@3
    const-string/jumbo v1, "Preloading shared libraries..."

    #@6
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 240
    const-string/jumbo v0, "android"

    #@c
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    #@f
    .line 241
    const-string/jumbo v0, "compiler_rt"

    #@12
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    #@15
    .line 242
    const-string/jumbo v0, "jnigraphics"

    #@18
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    #@1b
    .line 238
    return-void
.end method

.method private static preloadTextResources()V
    .locals 0

    #@0
    .prologue
    .line 252
    invoke-static {}, Landroid/text/Hyphenator;->init()V

    #@3
    .line 253
    invoke-static {}, Landroid/widget/TextView;->preloadFontCache()V

    #@6
    .line 251
    return-void
.end method

.method private static registerZygoteSocket(Ljava/lang/String;)V
    .locals 9
    .param p0, "socketName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 119
    sget-object v6, Lcom/android/internal/os/ZygoteInit;->sServerSocket:Landroid/net/LocalServerSocket;

    #@2
    if-nez v6, :cond_0

    #@4
    .line 121
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
    .line 123
    .local v5, "fullSocketName":Ljava/lang/String;
    :try_start_0
    invoke-static {v5}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    #@1b
    move-result-object v0

    #@1c
    .line 124
    .local v0, "env":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    #@1f
    move-result v4

    #@20
    .line 130
    .local v4, "fileDesc":I
    :try_start_1
    new-instance v3, Ljava/io/FileDescriptor;

    #@22
    invoke-direct {v3}, Ljava/io/FileDescriptor;-><init>()V

    #@25
    .line 131
    .local v3, "fd":Ljava/io/FileDescriptor;
    invoke-virtual {v3, v4}, Ljava/io/FileDescriptor;->setInt$(I)V

    #@28
    .line 132
    new-instance v6, Landroid/net/LocalServerSocket;

    #@2a
    invoke-direct {v6, v3}, Landroid/net/LocalServerSocket;-><init>(Ljava/io/FileDescriptor;)V

    #@2d
    sput-object v6, Lcom/android/internal/os/ZygoteInit;->sServerSocket:Landroid/net/LocalServerSocket;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    #@2f
    .line 118
    .end local v0    # "env":Ljava/lang/String;
    .end local v3    # "fd":Ljava/io/FileDescriptor;
    .end local v4    # "fileDesc":I
    .end local v5    # "fullSocketName":Ljava/lang/String;
    :cond_0
    return-void

    #@30
    .line 125
    .restart local v5    # "fullSocketName":Ljava/lang/String;
    :catch_0
    move-exception v2

    #@31
    .line 126
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
    .line 133
    .end local v2    # "ex":Ljava/lang/RuntimeException;
    .restart local v0    # "env":Ljava/lang/String;
    .restart local v4    # "fileDesc":I
    :catch_1
    move-exception v1

    #@4c
    .line 134
    .local v1, "ex":Ljava/io/IOException;
    new-instance v6, Ljava/lang/RuntimeException;

    #@4e
    .line 135
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
    .line 134
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
    .line 802
    new-instance v2, Ljava/util/ArrayList;

    #@2
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 803
    .local v2, "fds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/FileDescriptor;>;"
    new-instance v5, Ljava/util/ArrayList;

    #@7
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    #@a
    .line 805
    .local v5, "peers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/os/ZygoteConnection;>;"
    sget-object v7, Lcom/android/internal/os/ZygoteInit;->sServerSocket:Landroid/net/LocalServerSocket;

    #@c
    invoke-virtual {v7}, Landroid/net/LocalServerSocket;->getFileDescriptor()Ljava/io/FileDescriptor;

    #@f
    move-result-object v7

    #@10
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@13
    .line 806
    const/4 v7, 0x0

    #@14
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@17
    .line 809
    :cond_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@1a
    move-result v7

    #@1b
    new-array v6, v7, [Landroid/system/StructPollfd;

    #@1d
    .line 810
    .local v6, "pollFds":[Landroid/system/StructPollfd;
    const/4 v3, 0x0

    #@1e
    .local v3, "i":I
    :goto_0
    array-length v7, v6

    #@1f
    if-ge v3, v7, :cond_1

    #@21
    .line 811
    new-instance v7, Landroid/system/StructPollfd;

    #@23
    invoke-direct {v7}, Landroid/system/StructPollfd;-><init>()V

    #@26
    aput-object v7, v6, v3

    #@28
    .line 812
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
    .line 813
    aget-object v7, v6, v3

    #@34
    sget v8, Landroid/system/OsConstants;->POLLIN:I

    #@36
    int-to-short v8, v8

    #@37
    iput-short v8, v7, Landroid/system/StructPollfd;->events:S

    #@39
    .line 810
    add-int/lit8 v3, v3, 0x1

    #@3b
    goto :goto_0

    #@3c
    .line 816
    :cond_1
    const/4 v7, -0x1

    #@3d
    :try_start_0
    invoke-static {v6, v7}, Landroid/system/Os;->poll([Landroid/system/StructPollfd;I)I
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    #@40
    .line 820
    array-length v7, v6

    #@41
    add-int/lit8 v3, v7, -0x1

    #@43
    :goto_1
    if-ltz v3, :cond_0

    #@45
    .line 821
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
    .line 820
    :cond_2
    :goto_2
    add-int/lit8 v3, v3, -0x1

    #@50
    goto :goto_1

    #@51
    .line 817
    :catch_0
    move-exception v1

    #@52
    .line 818
    .local v1, "ex":Landroid/system/ErrnoException;
    new-instance v7, Ljava/lang/RuntimeException;

    #@54
    const-string/jumbo v8, "poll failed"

    #@57
    invoke-direct {v7, v8, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@5a
    throw v7

    #@5b
    .line 824
    .end local v1    # "ex":Landroid/system/ErrnoException;
    :cond_3
    if-nez v3, :cond_4

    #@5d
    .line 825
    invoke-static {p0}, Lcom/android/internal/os/ZygoteInit;->acceptCommandPeer(Ljava/lang/String;)Lcom/android/internal/os/ZygoteConnection;

    #@60
    move-result-object v4

    #@61
    .line 826
    .local v4, "newPeer":Lcom/android/internal/os/ZygoteConnection;
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@64
    .line 827
    invoke-virtual {v4}, Lcom/android/internal/os/ZygoteConnection;->getFileDesciptor()Ljava/io/FileDescriptor;

    #@67
    move-result-object v7

    #@68
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@6b
    goto :goto_2

    #@6c
    .line 829
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
    .line 830
    .local v0, "done":Z
    if-eqz v0, :cond_2

    #@78
    .line 831
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@7b
    .line 832
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
    .line 614
    const/16 v1, 0xb

    #@2
    new-array v1, v1, [I

    #@4
    .line 615
    sget v2, Landroid/system/OsConstants;->CAP_IPC_LOCK:I

    #@6
    const/4 v3, 0x0

    #@7
    aput v2, v1, v3

    #@9
    .line 616
    sget v2, Landroid/system/OsConstants;->CAP_KILL:I

    #@b
    const/4 v3, 0x1

    #@c
    aput v2, v1, v3

    #@e
    .line 617
    sget v2, Landroid/system/OsConstants;->CAP_NET_ADMIN:I

    #@10
    const/4 v3, 0x2

    #@11
    aput v2, v1, v3

    #@13
    .line 618
    sget v2, Landroid/system/OsConstants;->CAP_NET_BIND_SERVICE:I

    #@15
    const/4 v3, 0x3

    #@16
    aput v2, v1, v3

    #@18
    .line 619
    sget v2, Landroid/system/OsConstants;->CAP_NET_BROADCAST:I

    #@1a
    const/4 v3, 0x4

    #@1b
    aput v2, v1, v3

    #@1d
    .line 620
    sget v2, Landroid/system/OsConstants;->CAP_NET_RAW:I

    #@1f
    const/4 v3, 0x5

    #@20
    aput v2, v1, v3

    #@22
    .line 621
    sget v2, Landroid/system/OsConstants;->CAP_SYS_MODULE:I

    #@24
    const/4 v3, 0x6

    #@25
    aput v2, v1, v3

    #@27
    .line 622
    sget v2, Landroid/system/OsConstants;->CAP_SYS_NICE:I

    #@29
    const/4 v3, 0x7

    #@2a
    aput v2, v1, v3

    #@2c
    .line 623
    sget v2, Landroid/system/OsConstants;->CAP_SYS_RESOURCE:I

    #@2e
    const/16 v3, 0x8

    #@30
    aput v2, v1, v3

    #@32
    .line 624
    sget v2, Landroid/system/OsConstants;->CAP_SYS_TIME:I

    #@34
    const/16 v3, 0x9

    #@36
    aput v2, v1, v3

    #@38
    .line 625
    sget v2, Landroid/system/OsConstants;->CAP_SYS_TTY_CONFIG:I

    #@3a
    const/16 v3, 0xa

    #@3c
    aput v2, v1, v3

    #@3e
    .line 614
    invoke-static {v1}, Lcom/android/internal/os/ZygoteInit;->posixCapabilitiesAsBits([I)J

    #@41
    move-result-wide v10

    #@42
    .line 628
    .local v10, "capabilities":J
    const-string/jumbo v1, "ro.boot.container"

    #@45
    const/4 v2, 0x0

    #@46
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    #@49
    move-result v1

    #@4a
    if-nez v1, :cond_0

    #@4c
    .line 629
    const/4 v1, 0x1

    #@4d
    new-array v1, v1, [I

    #@4f
    sget v2, Landroid/system/OsConstants;->CAP_BLOCK_SUSPEND:I

    #@51
    const/4 v3, 0x0

    #@52
    aput v2, v1, v3

    #@54
    invoke-static {v1}, Lcom/android/internal/os/ZygoteInit;->posixCapabilitiesAsBits([I)J

    #@57
    move-result-wide v2

    #@58
    or-long/2addr v10, v2

    #@59
    .line 632
    :cond_0
    const/4 v1, 0x7

    #@5a
    new-array v0, v1, [Ljava/lang/String;

    #@5c
    .line 633
    const-string/jumbo v1, "--setuid=1000"

    #@5f
    const/4 v2, 0x0

    #@60
    aput-object v1, v0, v2

    #@62
    .line 634
    const-string/jumbo v1, "--setgid=1000"

    #@65
    const/4 v2, 0x1

    #@66
    aput-object v1, v0, v2

    #@68
    .line 635
    const-string/jumbo v1, "--setgroups=1001,1002,1003,1004,1005,1006,1007,1008,1009,1010,1018,1021,1032,3001,3002,3003,3006,3007,3009,3010"

    #@6b
    const/4 v2, 0x2

    #@6c
    aput-object v1, v0, v2

    #@6e
    .line 636
    new-instance v1, Ljava/lang/StringBuilder;

    #@70
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@73
    const-string/jumbo v2, "--capabilities="

    #@76
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@79
    move-result-object v1

    #@7a
    invoke-virtual {v1, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@7d
    move-result-object v1

    #@7e
    const-string/jumbo v2, ","

    #@81
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@84
    move-result-object v1

    #@85
    invoke-virtual {v1, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@88
    move-result-object v1

    #@89
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8c
    move-result-object v1

    #@8d
    const/4 v2, 0x3

    #@8e
    aput-object v1, v0, v2

    #@90
    .line 637
    const-string/jumbo v1, "--nice-name=system_server"

    #@93
    const/4 v2, 0x4

    #@94
    aput-object v1, v0, v2

    #@96
    .line 638
    const-string/jumbo v1, "--runtime-args"

    #@99
    const/4 v2, 0x5

    #@9a
    aput-object v1, v0, v2

    #@9c
    .line 639
    const-string/jumbo v1, "com.android.server.SystemServer"

    #@9f
    const/4 v2, 0x6

    #@a0
    aput-object v1, v0, v2

    #@a2
    .line 641
    .local v0, "args":[Ljava/lang/String;
    const/4 v13, 0x0

    #@a3
    .line 646
    .local v13, "parsedArgs":Lcom/android/internal/os/ZygoteConnection$Arguments;
    :try_start_0
    new-instance v14, Lcom/android/internal/os/ZygoteConnection$Arguments;

    #@a5
    invoke-direct {v14, v0}, Lcom/android/internal/os/ZygoteConnection$Arguments;-><init>([Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    #@a8
    .line 647
    .local v14, "parsedArgs":Lcom/android/internal/os/ZygoteConnection$Arguments;
    :try_start_1
    invoke-static {v14}, Lcom/android/internal/os/ZygoteConnection;->applyDebuggerSystemProperty(Lcom/android/internal/os/ZygoteConnection$Arguments;)V

    #@ab
    .line 648
    .end local v13    # "parsedArgs":Lcom/android/internal/os/ZygoteConnection$Arguments;
    invoke-static {v14}, Lcom/android/internal/os/ZygoteConnection;->applyInvokeWithSystemProperty(Lcom/android/internal/os/ZygoteConnection$Arguments;)V

    #@ae
    .line 652
    iget v1, v14, Lcom/android/internal/os/ZygoteConnection$Arguments;->uid:I

    #@b0
    iget v2, v14, Lcom/android/internal/os/ZygoteConnection$Arguments;->gid:I

    #@b2
    .line 653
    iget-object v3, v14, Lcom/android/internal/os/ZygoteConnection$Arguments;->gids:[I

    #@b4
    .line 654
    iget v4, v14, Lcom/android/internal/os/ZygoteConnection$Arguments;->debugFlags:I

    #@b6
    .line 656
    iget-wide v6, v14, Lcom/android/internal/os/ZygoteConnection$Arguments;->permittedCapabilities:J

    #@b8
    .line 657
    iget-wide v8, v14, Lcom/android/internal/os/ZygoteConnection$Arguments;->effectiveCapabilities:J

    #@ba
    .line 655
    const/4 v5, 0x0

    #@bb
    .line 651
    invoke-static/range {v1 .. v9}, Lcom/android/internal/os/Zygote;->forkSystemServer(II[II[[IJJ)I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    #@be
    move-result v15

    #@bf
    .line 663
    .local v15, "pid":I
    if-nez v15, :cond_2

    #@c1
    .line 664
    invoke-static/range {p0 .. p0}, Lcom/android/internal/os/ZygoteInit;->hasSecondZygote(Ljava/lang/String;)Z

    #@c4
    move-result v1

    #@c5
    if-eqz v1, :cond_1

    #@c7
    .line 665
    invoke-static/range {p1 .. p1}, Lcom/android/internal/os/ZygoteInit;->waitForSecondaryZygote(Ljava/lang/String;)V

    #@ca
    .line 668
    :cond_1
    invoke-static {v14}, Lcom/android/internal/os/ZygoteInit;->handleSystemServerProcess(Lcom/android/internal/os/ZygoteConnection$Arguments;)V

    #@cd
    .line 671
    :cond_2
    const/4 v1, 0x1

    #@ce
    return v1

    #@cf
    .line 658
    .end local v14    # "parsedArgs":Lcom/android/internal/os/ZygoteConnection$Arguments;
    .end local v15    # "pid":I
    .restart local v13    # "parsedArgs":Lcom/android/internal/os/ZygoteConnection$Arguments;
    :catch_0
    move-exception v12

    #@d0
    .line 659
    .end local v13    # "parsedArgs":Lcom/android/internal/os/ZygoteConnection$Arguments;
    .local v12, "ex":Ljava/lang/IllegalArgumentException;
    :goto_0
    new-instance v1, Ljava/lang/RuntimeException;

    #@d2
    invoke-direct {v1, v12}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@d5
    throw v1

    #@d6
    .line 658
    .end local v12    # "ex":Ljava/lang/IllegalArgumentException;
    .restart local v14    # "parsedArgs":Lcom/android/internal/os/ZygoteConnection$Arguments;
    :catch_1
    move-exception v12

    #@d7
    .restart local v12    # "ex":Ljava/lang/IllegalArgumentException;
    move-object v13, v14

    #@d8
    .end local v14    # "parsedArgs":Lcom/android/internal/os/ZygoteConnection$Arguments;
    .local v13, "parsedArgs":Lcom/android/internal/os/ZygoteConnection$Arguments;
    goto :goto_0
.end method

.method private static waitForSecondaryZygote(Ljava/lang/String;)V
    .locals 7
    .param p0, "socketName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 775
    const-string/jumbo v4, "zygote"

    #@3
    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6
    move-result v4

    #@7
    if-eqz v4, :cond_0

    #@9
    .line 776
    const-string/jumbo v2, "zygote_secondary"

    #@c
    .line 779
    .local v2, "otherZygoteName":Ljava/lang/String;
    :goto_0
    :try_start_0
    invoke-static {v2}, Landroid/os/Process$ZygoteState;->connect(Ljava/lang/String;)Landroid/os/Process$ZygoteState;

    #@f
    move-result-object v3

    #@10
    .line 780
    .local v3, "zs":Landroid/os/Process$ZygoteState;
    invoke-virtual {v3}, Landroid/os/Process$ZygoteState;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@13
    .line 774
    return-void

    #@14
    .line 776
    .end local v2    # "otherZygoteName":Ljava/lang/String;
    .end local v3    # "zs":Landroid/os/Process$ZygoteState;
    :cond_0
    const-string/jumbo v2, "zygote"

    #@17
    .restart local v2    # "otherZygoteName":Ljava/lang/String;
    goto :goto_0

    #@18
    .line 782
    :catch_0
    move-exception v1

    #@19
    .line 783
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
    .line 787
    const-wide/16 v4, 0x3e8

    #@39
    :try_start_1
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    #@3c
    goto :goto_0

    #@3d
    .line 788
    :catch_1
    move-exception v0

    #@3e
    .local v0, "ie":Ljava/lang/InterruptedException;
    goto :goto_0
.end method

.method private static warmUpJcaProviders()V
    .locals 10

    #@0
    .prologue
    const-wide/16 v8, 0x4000

    #@2
    .line 263
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@5
    move-result-wide v2

    #@6
    .line 265
    .local v2, "startTime":J
    const-string/jumbo v1, "Starting installation of AndroidKeyStoreProvider"

    #@9
    .line 264
    invoke-static {v8, v9, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@c
    .line 269
    invoke-static {}, Landroid/security/keystore/AndroidKeyStoreProvider;->install()V

    #@f
    .line 270
    const-string/jumbo v1, "Zygote"

    #@12
    new-instance v4, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    const-string/jumbo v5, "Installed AndroidKeyStoreProvider in "

    #@1a
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v4

    #@1e
    .line 271
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@21
    move-result-wide v6

    #@22
    sub-long/2addr v6, v2

    #@23
    .line 270
    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@26
    move-result-object v4

    #@27
    .line 271
    const-string/jumbo v5, "ms."

    #@2a
    .line 270
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v4

    #@2e
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@31
    move-result-object v4

    #@32
    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@35
    .line 272
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    #@38
    .line 274
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@3b
    move-result-wide v2

    #@3c
    .line 276
    const-string/jumbo v1, "Starting warm up of JCA providers"

    #@3f
    .line 275
    invoke-static {v8, v9, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@42
    .line 277
    invoke-static {}, Ljava/security/Security;->getProviders()[Ljava/security/Provider;

    #@45
    move-result-object v4

    #@46
    const/4 v1, 0x0

    #@47
    array-length v5, v4

    #@48
    :goto_0
    if-ge v1, v5, :cond_0

    #@4a
    aget-object v0, v4, v1

    #@4c
    .line 278
    .local v0, "p":Ljava/security/Provider;
    invoke-virtual {v0}, Ljava/security/Provider;->warmUpServiceProvision()V

    #@4f
    .line 277
    add-int/lit8 v1, v1, 0x1

    #@51
    goto :goto_0

    #@52
    .line 280
    .end local v0    # "p":Ljava/security/Provider;
    :cond_0
    const-string/jumbo v1, "Zygote"

    #@55
    new-instance v4, Ljava/lang/StringBuilder;

    #@57
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@5a
    const-string/jumbo v5, "Warmed up JCA providers in "

    #@5d
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@60
    move-result-object v4

    #@61
    .line 281
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@64
    move-result-wide v6

    #@65
    sub-long/2addr v6, v2

    #@66
    .line 280
    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@69
    move-result-object v4

    #@6a
    .line 281
    const-string/jumbo v5, "ms."

    #@6d
    .line 280
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@70
    move-result-object v4

    #@71
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@74
    move-result-object v4

    #@75
    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@78
    .line 282
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    #@7b
    .line 262
    return-void
.end method
