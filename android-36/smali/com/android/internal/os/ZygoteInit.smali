.class public Lcom/android/internal/os/ZygoteInit;
.super Ljava/lang/Object;
.source "ZygoteInit.java"


# static fields
.field private static final blacklist ABI_LIST_ARG:Ljava/lang/String; = "--abi-list="

.field private static final blacklist LOGGING_DEBUG:Z

.field private static final blacklist LOG_BOOT_PROGRESS_PRELOAD_END:I = 0xbd6

.field private static final blacklist LOG_BOOT_PROGRESS_PRELOAD_START:I = 0xbcc

.field private static final blacklist PRELOADED_CLASSES:Ljava/lang/String; = "/system/etc/preloaded-classes"

.field private static final blacklist PROPERTY_DISABLE_GRAPHICS_DRIVER_PRELOADING:Ljava/lang/String; = "ro.zygote.disable_gl_preload"

.field private static final blacklist ROOT_GID:I = 0x0

.field private static final blacklist ROOT_UID:I = 0x0

.field private static final blacklist SOCKET_NAME_ARG:Ljava/lang/String; = "--socket-name="

.field private static final blacklist TAG:Ljava/lang/String; = "Zygote"

.field private static final blacklist UNPRIVILEGED_GID:I = 0x270f

.field private static final blacklist UNPRIVILEGED_UID:I = 0x270f

.field private static blacklist sCachedSystemServerClassLoader:Ljava/lang/ClassLoader;

.field private static blacklist sPreloadComplete:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 95
    const-string v0, "Zygote"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/os/ZygoteInit;->LOGGING_DEBUG:Z

    .line 126
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/os/ZygoteInit;->sCachedSystemServerClassLoader:Ljava/lang/ClassLoader;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 959
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 960
    return-void
.end method

.method private static blacklist beginPreload()V
    .registers 2

    .line 185
    const-string v0, "Zygote"

    const-string v1, "Calling ZygoteHooks.beginPreload()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    invoke-static {}, Ldalvik/system/ZygoteHooks;->onBeginPreload()V

    .line 188
    return-void
.end method

.method private static blacklist cacheNonBootClasspathClassLoaders()V
    .registers 16

    .line 403
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 407
    .local v0, "libs":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    new-instance v1, Landroid/content/pm/SharedLibraryInfo;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-string v2, "/system/framework/android.hidl.base-V1.0-java.jar"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct/range {v1 .. v12}, Landroid/content/pm/SharedLibraryInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;JILandroid/content/pm/VersionedPackage;Ljava/util/List;Ljava/util/List;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 412
    new-instance v2, Landroid/content/pm/SharedLibraryInfo;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-string v3, "/system/framework/android.hidl.manager-V1.0-java.jar"

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v2 .. v13}, Landroid/content/pm/SharedLibraryInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;JILandroid/content/pm/VersionedPackage;Ljava/util/List;Ljava/util/List;Z)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 418
    new-instance v3, Landroid/content/pm/SharedLibraryInfo;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const-string v4, "/system/framework/android.test.base.jar"

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    invoke-direct/range {v3 .. v14}, Landroid/content/pm/SharedLibraryInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;JILandroid/content/pm/VersionedPackage;Ljava/util/List;Ljava/util/List;Z)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 424
    invoke-static {}, Lcom/android/internal/os/Flags;->enableApacheHttpLegacyPreload()Z

    move-result v1

    if-eqz v1, :cond_53

    .line 425
    new-instance v2, Landroid/content/pm/SharedLibraryInfo;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-string v3, "/system/framework/org.apache.http.legacy.jar"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct/range {v2 .. v13}, Landroid/content/pm/SharedLibraryInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;JILandroid/content/pm/VersionedPackage;Ljava/util/List;Ljava/util/List;Z)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 432
    :cond_53
    invoke-static {}, Lcom/android/internal/os/Flags;->enableMediaAndLocationPreload()Z

    move-result v1

    if-eqz v1, :cond_9f

    .line 435
    const-string v1, "/system/framework/com.android.media.remotedisplay.jar"

    .line 436
    .local v1, "mediaJarPath":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    const-string v3, "/system/framework/com.android.media.remotedisplay.jar"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_7c

    .line 437
    new-instance v3, Landroid/content/pm/SharedLibraryInfo;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const-string v4, "/system/framework/com.android.media.remotedisplay.jar"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct/range {v3 .. v14}, Landroid/content/pm/SharedLibraryInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;JILandroid/content/pm/VersionedPackage;Ljava/util/List;Ljava/util/List;Z)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 443
    :cond_7c
    const-string v2, "/system/framework/com.android.location.provider.jar"

    .line 444
    .local v2, "locationJarPath":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    const-string v4, "/system/framework/com.android.location.provider.jar"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_9f

    .line 445
    new-instance v4, Landroid/content/pm/SharedLibraryInfo;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const-string v5, "/system/framework/com.android.location.provider.jar"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-direct/range {v4 .. v15}, Landroid/content/pm/SharedLibraryInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;JILandroid/content/pm/VersionedPackage;Ljava/util/List;Ljava/util/List;Z)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 456
    .end local v1    # "mediaJarPath":Ljava/lang/String;
    .end local v2    # "locationJarPath":Ljava/lang/String;
    :cond_9f
    sget-boolean v1, Landroid/view/WindowManager;->HAS_WINDOW_EXTENSIONS_ON_DEVICE:Z

    if-eqz v1, :cond_fe

    .line 457
    new-instance v1, Ljava/io/File;

    .line 458
    invoke-static {}, Landroid/os/Environment;->getSystemExtDirectory()Ljava/io/File;

    move-result-object v2

    const-string v3, "framework"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 459
    .local v1, "systemExtFrameworkPath":Ljava/lang/String;
    new-instance v2, Landroid/content/pm/SharedLibraryInfo;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/androidx.window.extensions.jar"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-string v4, "androidx.window.extensions"

    const/4 v5, 0x0

    const-string v6, "androidx.window.extensions"

    const-wide/16 v7, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct/range {v2 .. v13}, Landroid/content/pm/SharedLibraryInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;JILandroid/content/pm/VersionedPackage;Ljava/util/List;Ljava/util/List;Z)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 465
    new-instance v3, Landroid/content/pm/SharedLibraryInfo;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "/androidx.window.sidecar.jar"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v13, 0x0

    const/4 v14, 0x0

    const-string v5, "androidx.window.sidecar"

    const/4 v6, 0x0

    const-string v7, "androidx.window.sidecar"

    const-wide/16 v8, -0x1

    const/4 v10, 0x0

    invoke-direct/range {v3 .. v14}, Landroid/content/pm/SharedLibraryInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;JILandroid/content/pm/VersionedPackage;Ljava/util/List;Ljava/util/List;Z)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 473
    .end local v1    # "systemExtFrameworkPath":Ljava/lang/String;
    :cond_fe
    invoke-static {}, Landroid/app/ApplicationLoaders;->getDefault()Landroid/app/ApplicationLoaders;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/ApplicationLoaders;->createAndCacheNonBootclasspathSystemClassLoaders(Ljava/util/List;)V

    .line 474
    return-void
.end method

.method static blacklist childZygoteInit([Ljava/lang/String;)Ljava/lang/Runnable;
    .registers 5
    .param p0, "argv"    # [Ljava/lang/String;

    .line 997
    new-instance v0, Lcom/android/internal/os/RuntimeInit$Arguments;

    invoke-direct {v0, p0}, Lcom/android/internal/os/RuntimeInit$Arguments;-><init>([Ljava/lang/String;)V

    .line 998
    .local v0, "args":Lcom/android/internal/os/RuntimeInit$Arguments;
    iget-object v1, v0, Lcom/android/internal/os/RuntimeInit$Arguments;->startClass:Ljava/lang/String;

    iget-object v2, v0, Lcom/android/internal/os/RuntimeInit$Arguments;->startArgs:[Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/internal/os/RuntimeInit;->findStaticMain(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Runnable;

    move-result-object v1

    return-object v1
.end method

.method static blacklist createPathClassLoader(Ljava/lang/String;I)Ljava/lang/ClassLoader;
    .registers 10
    .param p0, "classPath"    # Ljava/lang/String;
    .param p1, "targetSdkVersion"    # I

    .line 678
    const-string v0, "java.library.path"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 681
    .local v2, "libraryPath":Ljava/lang/String;
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v4

    .line 683
    .local v4, "parent":Ljava/lang/ClassLoader;
    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v3, v2

    move-object v1, p0

    move v5, p1

    .end local p0    # "classPath":Ljava/lang/String;
    .end local p1    # "targetSdkVersion":I
    .local v1, "classPath":Ljava/lang/String;
    .local v5, "targetSdkVersion":I
    invoke-static/range {v1 .. v7}, Lcom/android/internal/os/ClassLoaderFactory;->createClassLoader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;IZLjava/lang/String;)Ljava/lang/ClassLoader;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist endPreload()V
    .registers 2

    .line 191
    invoke-static {}, Ldalvik/system/ZygoteHooks;->onEndPreload()V

    .line 193
    const-string v0, "Zygote"

    const-string v1, "Called ZygoteHooks.endPreload()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    return-void
.end method

.method private static blacklist forkSystemServer(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/os/ZygoteServer;)Ljava/lang/Runnable;
    .registers 19
    .param p0, "abiList"    # Ljava/lang/String;
    .param p1, "socketName"    # Ljava/lang/String;
    .param p2, "zygoteServer"    # Lcom/android/internal/os/ZygoteServer;

    .line 695
    sget v0, Landroid/system/OsConstants;->CAP_IPC_LOCK:I

    const-wide/16 v1, 0x1

    shl-long v3, v1, v0

    sget v0, Landroid/system/OsConstants;->CAP_KILL:I

    shl-long v5, v1, v0

    or-long/2addr v3, v5

    sget v0, Landroid/system/OsConstants;->CAP_NET_ADMIN:I

    shl-long v5, v1, v0

    or-long/2addr v3, v5

    sget v0, Landroid/system/OsConstants;->CAP_NET_BIND_SERVICE:I

    shl-long v5, v1, v0

    or-long/2addr v3, v5

    sget v0, Landroid/system/OsConstants;->CAP_NET_BROADCAST:I

    shl-long v5, v1, v0

    or-long/2addr v3, v5

    sget v0, Landroid/system/OsConstants;->CAP_NET_RAW:I

    shl-long v5, v1, v0

    or-long/2addr v3, v5

    sget v0, Landroid/system/OsConstants;->CAP_SYS_MODULE:I

    shl-long v5, v1, v0

    or-long/2addr v3, v5

    sget v0, Landroid/system/OsConstants;->CAP_SYS_NICE:I

    shl-long v5, v1, v0

    or-long/2addr v3, v5

    sget v0, Landroid/system/OsConstants;->CAP_SYS_PTRACE:I

    shl-long v5, v1, v0

    or-long/2addr v3, v5

    sget v0, Landroid/system/OsConstants;->CAP_SYS_TIME:I

    shl-long v5, v1, v0

    or-long/2addr v3, v5

    sget v0, Landroid/system/OsConstants;->CAP_SYS_TTY_CONFIG:I

    shl-long v5, v1, v0

    or-long/2addr v3, v5

    sget v0, Landroid/system/OsConstants;->CAP_WAKE_ALARM:I

    shl-long v5, v1, v0

    or-long/2addr v3, v5

    sget v0, Landroid/system/OsConstants;->CAP_BLOCK_SUSPEND:I

    shl-long v0, v1, v0

    or-long v1, v3, v0

    .line 710
    .local v1, "capabilities":J
    new-instance v0, Landroid/system/StructCapUserHeader;

    sget v3, Landroid/system/OsConstants;->_LINUX_CAPABILITY_VERSION_3:I

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4}, Landroid/system/StructCapUserHeader;-><init>(II)V

    move-object v3, v0

    .line 714
    .local v3, "header":Landroid/system/StructCapUserHeader;
    :try_start_4c
    invoke-static {v3}, Landroid/system/Os;->capget(Landroid/system/StructCapUserHeader;)[Landroid/system/StructCapUserData;

    move-result-object v0
    :try_end_50
    .catch Landroid/system/ErrnoException; {:try_start_4c .. :try_end_50} :catch_173

    move-object v5, v0

    .line 717
    .local v5, "data":[Landroid/system/StructCapUserData;
    nop

    .line 718
    aget-object v0, v5, v4

    iget v0, v0, Landroid/system/StructCapUserData;->effective:I

    invoke-static {v0}, Ljava/lang/Integer;->toUnsignedLong(I)J

    move-result-wide v6

    const/4 v0, 0x1

    aget-object v0, v5, v0

    iget v0, v0, Landroid/system/StructCapUserData;->effective:I

    .line 719
    invoke-static {v0}, Ljava/lang/Integer;->toUnsignedLong(I)J

    move-result-wide v8

    const/16 v0, 0x20

    shl-long/2addr v8, v0

    or-long/2addr v6, v8

    and-long/2addr v1, v6

    .line 722
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "--capabilities="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v12, "--target-sdk-version=10000"

    const-string v13, "com.android.server.SystemServer"

    const-string v6, "--setuid=1000"

    const-string v7, "--setgid=1000"

    const-string v8, "--setgroups=1001,1002,1003,1004,1005,1006,1007,1008,1009,1010,1018,1021,1023,1024,1032,1065,3001,3002,3003,3005,3006,3007,3009,3010,3011,3012"

    const-string v10, "--nice-name=system_server"

    const-string v11, "--runtime-args"

    filled-new-array/range {v6 .. v13}, [Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    .line 738
    .local v4, "args":[Ljava/lang/String;
    :try_start_98
    new-instance v0, Lcom/android/internal/os/ZygoteCommandBuffer;

    invoke-direct {v0, v4}, Lcom/android/internal/os/ZygoteCommandBuffer;-><init>([Ljava/lang/String;)V
    :try_end_9d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_98 .. :try_end_9d} :catch_16c

    move-object v6, v0

    .line 740
    .local v6, "commandBuffer":Lcom/android/internal/os/ZygoteCommandBuffer;
    :try_start_9e
    invoke-static {v6}, Lcom/android/internal/os/ZygoteArguments;->getInstance(Lcom/android/internal/os/ZygoteCommandBuffer;)Lcom/android/internal/os/ZygoteArguments;

    move-result-object v0
    :try_end_a2
    .catch Ljava/io/EOFException; {:try_start_9e .. :try_end_a2} :catch_163
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9e .. :try_end_a2} :catch_16c

    .line 743
    .local v0, "parsedArgs":Lcom/android/internal/os/ZygoteArguments;
    nop

    .line 744
    :try_start_a3
    invoke-virtual {v6}, Lcom/android/internal/os/ZygoteCommandBuffer;->close()V

    .line 745
    invoke-static {v0}, Lcom/android/internal/os/Zygote;->applyDebuggerSystemProperty(Lcom/android/internal/os/ZygoteArguments;)V

    .line 746
    invoke-static {v0}, Lcom/android/internal/os/Zygote;->applyInvokeWithSystemProperty(Lcom/android/internal/os/ZygoteArguments;)V

    .line 748
    invoke-static {}, Lcom/android/internal/os/Zygote;->nativeSupportsMemoryTagging()Z

    move-result v7

    if-eqz v7, :cond_11a

    .line 749
    const-string/jumbo v7, "persist.arm64.memtag.system_server"

    const-string v8, ""

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 750
    .local v7, "mode":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v8
    :try_end_bf
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a3 .. :try_end_bf} :catch_16c

    const-string v9, "async"

    if-eqz v8, :cond_cb

    .line 754
    :try_start_c3
    const-string/jumbo v8, "persist.arm64.memtag.default"

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v7, v8

    .line 756
    :cond_cb
    invoke-virtual {v7, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d9

    .line 757
    iget v8, v0, Lcom/android/internal/os/ZygoteArguments;->mRuntimeFlags:I

    const/high16 v9, 0x100000

    or-int/2addr v8, v9

    iput v8, v0, Lcom/android/internal/os/ZygoteArguments;->mRuntimeFlags:I

    goto :goto_128

    .line 758
    :cond_d9
    const-string/jumbo v8, "sync"

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_ea

    .line 759
    iget v8, v0, Lcom/android/internal/os/ZygoteArguments;->mRuntimeFlags:I

    const/high16 v9, 0x180000

    or-int/2addr v8, v9

    iput v8, v0, Lcom/android/internal/os/ZygoteArguments;->mRuntimeFlags:I

    goto :goto_128

    .line 760
    :cond_ea
    const-string v8, "off"

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_128

    .line 762
    iget v8, v0, Lcom/android/internal/os/ZygoteArguments;->mRuntimeFlags:I

    invoke-static {}, Lcom/android/internal/os/Zygote;->nativeCurrentTaggingLevel()I

    move-result v9

    or-int/2addr v8, v9

    iput v8, v0, Lcom/android/internal/os/ZygoteArguments;->mRuntimeFlags:I

    .line 763
    const-string v8, "Zygote"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unknown memory tag level for the system server: \""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_128

    .line 765
    .end local v7    # "mode":Ljava/lang/String;
    :cond_11a
    invoke-static {}, Lcom/android/internal/os/Zygote;->nativeSupportsTaggedPointers()Z

    move-result v7

    if-eqz v7, :cond_128

    .line 768
    iget v7, v0, Lcom/android/internal/os/ZygoteArguments;->mRuntimeFlags:I

    const/high16 v8, 0x80000

    or-int/2addr v7, v8

    iput v7, v0, Lcom/android/internal/os/ZygoteArguments;->mRuntimeFlags:I

    goto :goto_129

    .line 765
    :cond_128
    :goto_128
    nop

    .line 773
    :goto_129
    iget v7, v0, Lcom/android/internal/os/ZygoteArguments;->mRuntimeFlags:I

    const/high16 v8, 0x200000

    or-int/2addr v7, v8

    iput v7, v0, Lcom/android/internal/os/ZygoteArguments;->mRuntimeFlags:I

    .line 775
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->shouldProfileSystemServer()Z

    move-result v7

    if-eqz v7, :cond_13c

    .line 776
    iget v7, v0, Lcom/android/internal/os/ZygoteArguments;->mRuntimeFlags:I

    or-int/lit16 v7, v7, 0x4000

    iput v7, v0, Lcom/android/internal/os/ZygoteArguments;->mRuntimeFlags:I

    .line 780
    :cond_13c
    iget v7, v0, Lcom/android/internal/os/ZygoteArguments;->mUid:I

    iget v8, v0, Lcom/android/internal/os/ZygoteArguments;->mGid:I

    iget-object v9, v0, Lcom/android/internal/os/ZygoteArguments;->mGids:[I

    iget v10, v0, Lcom/android/internal/os/ZygoteArguments;->mRuntimeFlags:I

    iget-wide v12, v0, Lcom/android/internal/os/ZygoteArguments;->mPermittedCapabilities:J

    iget-wide v14, v0, Lcom/android/internal/os/ZygoteArguments;->mEffectiveCapabilities:J

    const/4 v11, 0x0

    invoke-static/range {v7 .. v15}, Lcom/android/internal/os/Zygote;->forkSystemServer(II[II[[IJJ)I

    move-result v7
    :try_end_14d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c3 .. :try_end_14d} :catch_16c

    .line 789
    .end local v6    # "commandBuffer":Lcom/android/internal/os/ZygoteCommandBuffer;
    .local v7, "pid":I
    nop

    .line 792
    if-nez v7, :cond_161

    .line 793
    invoke-static/range {p0 .. p0}, Lcom/android/internal/os/ZygoteInit;->hasSecondZygote(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_159

    .line 794
    invoke-static/range {p1 .. p1}, Lcom/android/internal/os/ZygoteInit;->waitForSecondaryZygote(Ljava/lang/String;)V

    .line 797
    :cond_159
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/os/ZygoteServer;->closeServerSocket()V

    .line 798
    invoke-static {v0}, Lcom/android/internal/os/ZygoteInit;->handleSystemServerProcess(Lcom/android/internal/os/ZygoteArguments;)Ljava/lang/Runnable;

    move-result-object v6

    return-object v6

    .line 801
    :cond_161
    const/4 v6, 0x0

    return-object v6

    .line 741
    .end local v0    # "parsedArgs":Lcom/android/internal/os/ZygoteArguments;
    .end local v7    # "pid":I
    .restart local v6    # "commandBuffer":Lcom/android/internal/os/ZygoteCommandBuffer;
    :catch_163
    move-exception v0

    .line 742
    .local v0, "e":Ljava/io/EOFException;
    :try_start_164
    new-instance v7, Ljava/lang/AssertionError;

    const-string v8, "Unexpected argument error for forking system server"

    invoke-direct {v7, v8, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v1    # "capabilities":J
    .end local v3    # "header":Landroid/system/StructCapUserHeader;
    .end local v4    # "args":[Ljava/lang/String;
    .end local v5    # "data":[Landroid/system/StructCapUserData;
    .end local p0    # "abiList":Ljava/lang/String;
    .end local p1    # "socketName":Ljava/lang/String;
    .end local p2    # "zygoteServer":Lcom/android/internal/os/ZygoteServer;
    throw v7
    :try_end_16c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_164 .. :try_end_16c} :catch_16c

    .line 787
    .end local v0    # "e":Ljava/io/EOFException;
    .end local v6    # "commandBuffer":Lcom/android/internal/os/ZygoteCommandBuffer;
    .restart local v1    # "capabilities":J
    .restart local v3    # "header":Landroid/system/StructCapUserHeader;
    .restart local v4    # "args":[Ljava/lang/String;
    .restart local v5    # "data":[Landroid/system/StructCapUserData;
    .restart local p0    # "abiList":Ljava/lang/String;
    .restart local p1    # "socketName":Ljava/lang/String;
    .restart local p2    # "zygoteServer":Lcom/android/internal/os/ZygoteServer;
    :catch_16c
    move-exception v0

    .line 788
    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    new-instance v6, Ljava/lang/RuntimeException;

    invoke-direct {v6, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 715
    .end local v0    # "ex":Ljava/lang/IllegalArgumentException;
    .end local v4    # "args":[Ljava/lang/String;
    .end local v5    # "data":[Landroid/system/StructCapUserData;
    :catch_173
    move-exception v0

    .line 716
    .local v0, "ex":Landroid/system/ErrnoException;
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Failed to capget()"

    invoke-direct {v4, v5, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method private static blacklist gcAndFinalize()V
    .registers 0

    .line 481
    invoke-static {}, Ldalvik/system/ZygoteHooks;->gcAndFinalize()V

    .line 482
    return-void
.end method

.method private static blacklist getOrCreateSystemServerClassLoader()Ljava/lang/ClassLoader;
    .registers 2

    .line 571
    sget-object v0, Lcom/android/internal/os/ZygoteInit;->sCachedSystemServerClassLoader:Ljava/lang/ClassLoader;

    if-nez v0, :cond_14

    .line 572
    const-string v0, "SYSTEMSERVERCLASSPATH"

    invoke-static {v0}, Landroid/system/Os;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 573
    .local v0, "systemServerClasspath":Ljava/lang/String;
    if-eqz v0, :cond_14

    .line 574
    const/16 v1, 0x2710

    invoke-static {v0, v1}, Lcom/android/internal/os/ZygoteInit;->createPathClassLoader(Ljava/lang/String;I)Ljava/lang/ClassLoader;

    move-result-object v1

    sput-object v1, Lcom/android/internal/os/ZygoteInit;->sCachedSystemServerClassLoader:Ljava/lang/ClassLoader;

    .line 578
    .end local v0    # "systemServerClasspath":Ljava/lang/String;
    :cond_14
    sget-object v0, Lcom/android/internal/os/ZygoteInit;->sCachedSystemServerClassLoader:Ljava/lang/ClassLoader;

    return-object v0
.end method

.method private static blacklist handleSystemServerProcess(Lcom/android/internal/os/ZygoteArguments;)Ljava/lang/Runnable;
    .registers 11
    .param p0, "parsedArgs"    # Lcom/android/internal/os/ZygoteArguments;

    .line 489
    sget v0, Landroid/system/OsConstants;->S_IRWXG:I

    sget v1, Landroid/system/OsConstants;->S_IRWXO:I

    or-int/2addr v0, v1

    invoke-static {v0}, Landroid/system/Os;->umask(I)I

    .line 491
    iget-object v0, p0, Lcom/android/internal/os/ZygoteArguments;->mNiceName:Ljava/lang/String;

    if-eqz v0, :cond_11

    .line 492
    iget-object v0, p0, Lcom/android/internal/os/ZygoteArguments;->mNiceName:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/Process;->setArgV0(Ljava/lang/String;)V

    .line 495
    :cond_11
    const-string v0, "SYSTEMSERVERCLASSPATH"

    invoke-static {v0}, Landroid/system/Os;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 496
    .local v1, "systemServerClasspath":Ljava/lang/String;
    const/4 v2, 0x1

    const-string v3, "1"

    const/4 v4, 0x0

    const/4 v5, 0x2

    const-string v6, "Zygote"

    if-eqz v1, :cond_61

    .line 499
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->shouldProfileSystemServer()Z

    move-result v0

    if-eqz v0, :cond_61

    sget-boolean v0, Landroid/os/Build;->IS_USERDEBUG:Z

    if-nez v0, :cond_2e

    sget-boolean v0, Landroid/os/Build;->IS_ENG:Z

    if-eqz v0, :cond_61

    .line 501
    :cond_2e
    :try_start_2e
    const-string v0, "Preparing system server profile"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    const-string v0, "STANDALONE_SYSTEMSERVER_JARS"

    .line 503
    invoke-static {v0}, Landroid/system/Os;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v7, v0

    .line 504
    .local v7, "standaloneSystemServerJars":Ljava/lang/String;
    if-eqz v7, :cond_49

    .line 505
    const-string v0, ":"

    new-array v8, v5, [Ljava/lang/CharSequence;

    aput-object v1, v8, v4

    aput-object v7, v8, v2

    invoke-static {v0, v8}, Ljava/lang/String;->join(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4a

    .line 506
    :cond_49
    move-object v0, v1

    :goto_4a
    move-object v8, v0

    .line 507
    .local v8, "systemServerPaths":Ljava/lang/String;
    invoke-static {v8}, Lcom/android/internal/os/ZygoteInit;->prepareSystemServerProfile(Ljava/lang/String;)V
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_4e} :catch_5b

    .line 509
    :try_start_4e
    const-string v0, "debug.tracing.profile_system_server"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_53
    .catch Ljava/lang/RuntimeException; {:try_start_4e .. :try_end_53} :catch_54
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_53} :catch_5b

    .line 512
    goto :goto_5a

    .line 510
    :catch_54
    move-exception v0

    .line 511
    .local v0, "e":Ljava/lang/RuntimeException;
    :try_start_55
    const-string v9, "Failed to set debug.tracing.profile_system_server"

    invoke-static {v6, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_5a} :catch_5b

    .line 515
    .end local v0    # "e":Ljava/lang/RuntimeException;
    .end local v7    # "standaloneSystemServerJars":Ljava/lang/String;
    .end local v8    # "systemServerPaths":Ljava/lang/String;
    :goto_5a
    goto :goto_61

    .line 513
    :catch_5b
    move-exception v0

    .line 514
    .local v0, "e":Ljava/lang/Exception;
    const-string v7, "Failed to set up system server profile"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 522
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_61
    :goto_61
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->shouldProfileBootClasspath()Z

    move-result v0

    if-eqz v0, :cond_73

    .line 524
    :try_start_67
    const-string v0, "debug.tracing.profile_boot_classpath"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6c
    .catch Ljava/lang/RuntimeException; {:try_start_67 .. :try_end_6c} :catch_6d

    .line 527
    goto :goto_73

    .line 525
    :catch_6d
    move-exception v0

    .line 526
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v3, "Failed to set debug.tracing.profile_boot_classpath"

    invoke-static {v6, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 530
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_73
    :goto_73
    iget-object v0, p0, Lcom/android/internal/os/ZygoteArguments;->mInvokeWith:Ljava/lang/String;

    if-eqz v0, :cond_a3

    .line 531
    iget-object v0, p0, Lcom/android/internal/os/ZygoteArguments;->mRemainingArgs:[Ljava/lang/String;

    .line 535
    .local v0, "args":[Ljava/lang/String;
    if-eqz v1, :cond_8c

    .line 536
    array-length v3, v0

    add-int/2addr v3, v5

    new-array v3, v3, [Ljava/lang/String;

    .line 537
    .local v3, "amendedArgs":[Ljava/lang/String;
    const-string v6, "-cp"

    aput-object v6, v3, v4

    .line 538
    aput-object v1, v3, v2

    .line 539
    array-length v2, v0

    invoke-static {v0, v4, v3, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 540
    move-object v0, v3

    move-object v9, v0

    goto :goto_8d

    .line 535
    .end local v3    # "amendedArgs":[Ljava/lang/String;
    :cond_8c
    move-object v9, v0

    .line 543
    .end local v0    # "args":[Ljava/lang/String;
    .local v9, "args":[Ljava/lang/String;
    :goto_8d
    iget-object v4, p0, Lcom/android/internal/os/ZygoteArguments;->mInvokeWith:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/internal/os/ZygoteArguments;->mNiceName:Ljava/lang/String;

    iget v6, p0, Lcom/android/internal/os/ZygoteArguments;->mTargetSdkVersion:I

    .line 545
    invoke-static {}, Ldalvik/system/VMRuntime;->getCurrentInstructionSet()Ljava/lang/String;

    move-result-object v7

    .line 543
    const/4 v8, 0x0

    invoke-static/range {v4 .. v9}, Lcom/android/internal/os/WrapperInit;->execApplication(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/io/FileDescriptor;[Ljava/lang/String;)V

    .line 547
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Unexpected return from WrapperInit.execApplication"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 549
    .end local v9    # "args":[Ljava/lang/String;
    :cond_a3
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->getOrCreateSystemServerClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 550
    .local v0, "cl":Ljava/lang/ClassLoader;
    if-eqz v0, :cond_b0

    .line 551
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    .line 557
    :cond_b0
    iget v2, p0, Lcom/android/internal/os/ZygoteArguments;->mTargetSdkVersion:I

    iget-object v3, p0, Lcom/android/internal/os/ZygoteArguments;->mDisabledCompatChanges:[J

    iget-object v4, p0, Lcom/android/internal/os/ZygoteArguments;->mRemainingArgs:[Ljava/lang/String;

    invoke-static {v2, v3, v4, v0}, Lcom/android/internal/os/ZygoteInit;->zygoteInit(I[J[Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Runnable;

    move-result-object v2

    return-object v2
.end method

.method private static blacklist hasSecondZygote(Ljava/lang/String;)Z
    .registers 2
    .param p0, "abiList"    # Ljava/lang/String;

    .line 943
    const-string/jumbo v0, "ro.product.cpu.abilist"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private static blacklist isExperimentEnabled(Ljava/lang/String;)Z
    .registers 4
    .param p0, "experiment"    # Ljava/lang/String;

    .line 258
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dalvik.vm."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 262
    .local v0, "defaultValue":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "persist.device_config.runtime_native_boot."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method static blacklist isPreloadComplete()Z
    .registers 1

    .line 953
    sget-boolean v0, Lcom/android/internal/os/ZygoteInit;->sPreloadComplete:Z

    return v0
.end method

.method static blacklist lazyPreload()V
    .registers 4

    .line 178
    sget-boolean v0, Lcom/android/internal/os/ZygoteInit;->sPreloadComplete:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 179
    const-string v0, "Zygote"

    const-string v1, "Lazily preloading resources."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    new-instance v0, Landroid/util/TimingsTraceLog;

    const-string v1, "ZygoteInitTiming_lazy"

    const-wide/16 v2, 0x4000

    invoke-direct {v0, v1, v2, v3}, Landroid/util/TimingsTraceLog;-><init>(Ljava/lang/String;J)V

    invoke-static {v0}, Lcom/android/internal/os/ZygoteInit;->preload(Landroid/util/TimingsTraceLog;)V

    .line 182
    return-void
.end method

.method public static greylist main([Ljava/lang/String;)V
    .registers 18
    .param p0, "argv"    # [Ljava/lang/String;

    .line 818
    move-object/from16 v1, p0

    const-string v0, "--socket-name="

    const-string v2, "--abi-list="

    const-string v3, "Zygote"

    const/4 v4, 0x0

    .line 822
    .local v4, "zygoteServer":Lcom/android/internal/os/ZygoteServer;
    invoke-static {}, Ldalvik/system/ZygoteHooks;->startZygoteNoThreadCreation()V

    .line 826
    const/4 v5, 0x0

    :try_start_d
    invoke-static {v5, v5}, Landroid/system/Os;->setpgid(II)V
    :try_end_10
    .catch Landroid/system/ErrnoException; {:try_start_d .. :try_end_10} :catch_14b

    .line 829
    nop

    .line 834
    :try_start_11
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 835
    .local v5, "startTime":J
    const-string v7, "1"

    const-string/jumbo v8, "sys.boot_completed"

    .line 836
    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 835
    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 838
    .local v7, "isRuntimeRestarted":Z
    invoke-static {}, Landroid/os/Process;->is64Bit()Z

    move-result v8
    :try_end_26
    .catchall {:try_start_11 .. :try_end_26} :catchall_13a

    if-eqz v8, :cond_2e

    :try_start_28
    const-string v8, "Zygote64Timing"
    :try_end_2a
    .catchall {:try_start_28 .. :try_end_2a} :catchall_2b

    goto :goto_30

    .line 920
    .end local v5    # "startTime":J
    .end local v7    # "isRuntimeRestarted":Z
    :catchall_2b
    move-exception v0

    goto/16 :goto_13d

    .line 838
    .restart local v5    # "startTime":J
    .restart local v7    # "isRuntimeRestarted":Z
    :cond_2e
    :try_start_2e
    const-string v8, "Zygote32Timing"

    .line 839
    .local v8, "bootTimeTag":Ljava/lang/String;
    :goto_30
    new-instance v9, Landroid/util/TimingsTraceLog;

    const-wide/16 v10, 0x4000

    invoke-direct {v9, v8, v10, v11}, Landroid/util/TimingsTraceLog;-><init>(Ljava/lang/String;J)V

    .line 841
    .local v9, "bootTimingsTraceLog":Landroid/util/TimingsTraceLog;
    const-string v10, "ZygoteInit"

    invoke-virtual {v9, v10}, Landroid/util/TimingsTraceLog;->traceBegin(Ljava/lang/String;)V

    .line 842
    invoke-static {}, Lcom/android/internal/os/RuntimeInit;->preForkInit()V
    :try_end_3f
    .catchall {:try_start_2e .. :try_end_3f} :catchall_13a

    .line 844
    const/4 v10, 0x0

    .line 845
    .local v10, "startSystemServer":Z
    const-string/jumbo v11, "zygote"

    move-object v12, v11

    .line 846
    .local v12, "zygoteSocketName":Ljava/lang/String;
    const/4 v13, 0x0

    .line 847
    .local v13, "abiList":Ljava/lang/String;
    const/4 v14, 0x0

    .line 848
    .local v14, "enableLazyPreload":Z
    const/4 v15, 0x1

    .local v15, "i":I
    :goto_47
    move-object/from16 v16, v4

    .end local v4    # "zygoteServer":Lcom/android/internal/os/ZygoteServer;
    .local v16, "zygoteServer":Lcom/android/internal/os/ZygoteServer;
    :try_start_49
    array-length v4, v1

    if-ge v15, v4, :cond_b0

    .line 849
    const-string/jumbo v4, "start-system-server"

    aget-object v1, p0, v15

    invoke-virtual {v4, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5a

    .line 850
    const/4 v1, 0x1

    move v10, v1

    .end local v10    # "startSystemServer":Z
    .local v1, "startSystemServer":Z
    goto :goto_8e

    .line 851
    .end local v1    # "startSystemServer":Z
    .restart local v10    # "startSystemServer":Z
    :cond_5a
    const-string v1, "--enable-lazy-preload"

    aget-object v4, p0, v15

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_67

    .line 852
    const/4 v1, 0x1

    move v14, v1

    .end local v14    # "enableLazyPreload":Z
    .local v1, "enableLazyPreload":Z
    goto :goto_8e

    .line 853
    .end local v1    # "enableLazyPreload":Z
    .restart local v14    # "enableLazyPreload":Z
    :cond_67
    aget-object v1, p0, v15

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7b

    .line 854
    aget-object v1, p0, v15

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    move-object v13, v1

    .end local v13    # "abiList":Ljava/lang/String;
    .local v1, "abiList":Ljava/lang/String;
    goto :goto_8e

    .line 855
    .end local v1    # "abiList":Ljava/lang/String;
    .restart local v13    # "abiList":Ljava/lang/String;
    :cond_7b
    aget-object v1, p0, v15

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_95

    .line 856
    aget-object v1, p0, v15

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    move-object v12, v1

    .line 848
    :goto_8e
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v1, p0

    move-object/from16 v4, v16

    goto :goto_47

    .line 858
    :cond_95
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown command line argument: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, p0, v15

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local v16    # "zygoteServer":Lcom/android/internal/os/ZygoteServer;
    .end local p0    # "argv":[Ljava/lang/String;
    throw v0

    .line 862
    .end local v15    # "i":I
    .restart local v16    # "zygoteServer":Lcom/android/internal/os/ZygoteServer;
    .restart local p0    # "argv":[Ljava/lang/String;
    :cond_b0
    invoke-virtual {v12, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 863
    .local v0, "isPrimaryZygote":Z
    if-nez v7, :cond_ce

    .line 864
    const/16 v1, 0xf0

    if-eqz v0, :cond_c0

    .line 865
    const/16 v2, 0x11

    invoke-static {v1, v2, v5, v6}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIJ)V

    goto :goto_ce

    .line 868
    :cond_c0
    const-string/jumbo v2, "zygote_secondary"

    invoke-virtual {v12, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ce

    .line 869
    const/16 v2, 0x12

    invoke-static {v1, v2, v5, v6}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIJ)V

    .line 875
    :cond_ce
    :goto_ce
    if-eqz v13, :cond_12e

    .line 881
    if-nez v14, :cond_f1

    .line 882
    const-string v1, "ZygotePreload"

    invoke-virtual {v9, v1}, Landroid/util/TimingsTraceLog;->traceBegin(Ljava/lang/String;)V

    .line 883
    nop

    .line 884
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 883
    const/16 v4, 0xbcc

    invoke-static {v4, v1, v2}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 885
    invoke-static {v9}, Lcom/android/internal/os/ZygoteInit;->preload(Landroid/util/TimingsTraceLog;)V

    .line 886
    nop

    .line 887
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 886
    const/16 v4, 0xbd6

    invoke-static {v4, v1, v2}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 888
    invoke-virtual {v9}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 892
    :cond_f1
    const-string v1, "PostZygoteInitGC"

    invoke-virtual {v9, v1}, Landroid/util/TimingsTraceLog;->traceBegin(Ljava/lang/String;)V

    .line 893
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->gcAndFinalize()V

    .line 894
    invoke-virtual {v9}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 896
    invoke-virtual {v9}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 898
    invoke-static {v0}, Lcom/android/internal/os/Zygote;->initNativeState(Z)V

    .line 900
    invoke-static {}, Ldalvik/system/ZygoteHooks;->stopZygoteNoThreadCreation()V

    .line 902
    new-instance v1, Lcom/android/internal/os/ZygoteServer;

    invoke-direct {v1, v0}, Lcom/android/internal/os/ZygoteServer;-><init>(Z)V
    :try_end_10a
    .catchall {:try_start_49 .. :try_end_10a} :catchall_136

    move-object v4, v1

    .line 904
    .end local v16    # "zygoteServer":Lcom/android/internal/os/ZygoteServer;
    .restart local v4    # "zygoteServer":Lcom/android/internal/os/ZygoteServer;
    if-eqz v10, :cond_11b

    .line 905
    :try_start_10d
    invoke-static {v13, v12, v4}, Lcom/android/internal/os/ZygoteInit;->forkSystemServer(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/os/ZygoteServer;)Ljava/lang/Runnable;

    move-result-object v1

    .line 909
    .local v1, "r":Ljava/lang/Runnable;
    if-eqz v1, :cond_11b

    .line 910
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V
    :try_end_116
    .catchall {:try_start_10d .. :try_end_116} :catchall_2b

    .line 924
    nop

    .line 925
    invoke-virtual {v4}, Lcom/android/internal/os/ZygoteServer;->closeServerSocket()V

    .line 911
    return-void

    .line 915
    .end local v1    # "r":Ljava/lang/Runnable;
    :cond_11b
    :try_start_11b
    const-string v1, "Accepting command socket connections"

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 919
    invoke-virtual {v4, v13}, Lcom/android/internal/os/ZygoteServer;->runSelectLoop(Ljava/lang/String;)Ljava/lang/Runnable;

    move-result-object v1
    :try_end_124
    .catchall {:try_start_11b .. :try_end_124} :catchall_2b

    .line 924
    .end local v0    # "isPrimaryZygote":Z
    .end local v5    # "startTime":J
    .end local v7    # "isRuntimeRestarted":Z
    .end local v8    # "bootTimeTag":Ljava/lang/String;
    .end local v9    # "bootTimingsTraceLog":Landroid/util/TimingsTraceLog;
    .end local v10    # "startSystemServer":Z
    .end local v12    # "zygoteSocketName":Ljava/lang/String;
    .end local v13    # "abiList":Ljava/lang/String;
    .end local v14    # "enableLazyPreload":Z
    .local v1, "caller":Ljava/lang/Runnable;
    nop

    .line 925
    invoke-virtual {v4}, Lcom/android/internal/os/ZygoteServer;->closeServerSocket()V

    .line 931
    if-eqz v1, :cond_12d

    .line 932
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 934
    :cond_12d
    return-void

    .line 876
    .end local v1    # "caller":Ljava/lang/Runnable;
    .end local v4    # "zygoteServer":Lcom/android/internal/os/ZygoteServer;
    .restart local v0    # "isPrimaryZygote":Z
    .restart local v5    # "startTime":J
    .restart local v7    # "isRuntimeRestarted":Z
    .restart local v8    # "bootTimeTag":Ljava/lang/String;
    .restart local v9    # "bootTimingsTraceLog":Landroid/util/TimingsTraceLog;
    .restart local v10    # "startSystemServer":Z
    .restart local v12    # "zygoteSocketName":Ljava/lang/String;
    .restart local v13    # "abiList":Ljava/lang/String;
    .restart local v14    # "enableLazyPreload":Z
    .restart local v16    # "zygoteServer":Lcom/android/internal/os/ZygoteServer;
    :cond_12e
    :try_start_12e
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "No ABI list supplied."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local v16    # "zygoteServer":Lcom/android/internal/os/ZygoteServer;
    .end local p0    # "argv":[Ljava/lang/String;
    throw v1
    :try_end_136
    .catchall {:try_start_12e .. :try_end_136} :catchall_136

    .line 920
    .end local v0    # "isPrimaryZygote":Z
    .end local v5    # "startTime":J
    .end local v7    # "isRuntimeRestarted":Z
    .end local v8    # "bootTimeTag":Ljava/lang/String;
    .end local v9    # "bootTimingsTraceLog":Landroid/util/TimingsTraceLog;
    .end local v10    # "startSystemServer":Z
    .end local v12    # "zygoteSocketName":Ljava/lang/String;
    .end local v13    # "abiList":Ljava/lang/String;
    .end local v14    # "enableLazyPreload":Z
    .restart local v16    # "zygoteServer":Lcom/android/internal/os/ZygoteServer;
    .restart local p0    # "argv":[Ljava/lang/String;
    :catchall_136
    move-exception v0

    move-object/from16 v4, v16

    goto :goto_13d

    .end local v16    # "zygoteServer":Lcom/android/internal/os/ZygoteServer;
    .restart local v4    # "zygoteServer":Lcom/android/internal/os/ZygoteServer;
    :catchall_13a
    move-exception v0

    move-object/from16 v16, v4

    .line 921
    .local v0, "ex":Ljava/lang/Throwable;
    :goto_13d
    :try_start_13d
    const-string v1, "System zygote died with fatal exception"

    invoke-static {v3, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 922
    nop

    .end local v4    # "zygoteServer":Lcom/android/internal/os/ZygoteServer;
    .end local p0    # "argv":[Ljava/lang/String;
    throw v0
    :try_end_144
    .catchall {:try_start_13d .. :try_end_144} :catchall_144

    .line 924
    .end local v0    # "ex":Ljava/lang/Throwable;
    .restart local v4    # "zygoteServer":Lcom/android/internal/os/ZygoteServer;
    .restart local p0    # "argv":[Ljava/lang/String;
    :catchall_144
    move-exception v0

    if-eqz v4, :cond_14a

    .line 925
    invoke-virtual {v4}, Lcom/android/internal/os/ZygoteServer;->closeServerSocket()V

    .line 927
    :cond_14a
    throw v0

    .line 827
    :catch_14b
    move-exception v0

    move-object/from16 v16, v4

    .line 828
    .end local v4    # "zygoteServer":Lcom/android/internal/os/ZygoteServer;
    .local v0, "ex":Landroid/system/ErrnoException;
    .restart local v16    # "zygoteServer":Lcom/android/internal/os/ZygoteServer;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Failed to setpgid(0,0)"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static blacklist maybePreloadGraphicsDriver()V
    .registers 2

    .line 220
    const-string/jumbo v0, "ro.zygote.disable_gl_preload"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_d

    .line 221
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->nativePreloadGraphicsDriver()V

    .line 223
    :cond_d
    return-void
.end method

.method private static native blacklist nativePreloadAppProcessHALs()V
.end method

.method static native blacklist nativePreloadGraphicsDriver()V
.end method

.method private static native blacklist nativeZygoteInit()V
.end method

.method private static blacklist prefetchStandaloneSystemServerJars()V
    .registers 8

    .line 586
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->shouldProfileSystemServer()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 591
    return-void

    .line 593
    :cond_7
    const-string v0, "STANDALONE_SYSTEMSERVER_JARS"

    invoke-static {v0}, Landroid/system/Os;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 594
    .local v0, "envStr":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 595
    return-void

    .line 597
    :cond_14
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_1c
    if-ge v3, v2, :cond_41

    aget-object v4, v1, v3

    .line 599
    .local v4, "jar":Ljava/lang/String;
    nop

    .line 600
    :try_start_21
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->getOrCreateSystemServerClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    .line 599
    invoke-static {v4, v5}, Lcom/android/internal/os/SystemServerClassLoaderFactory;->createClassLoader(Ljava/lang/String;Ljava/lang/ClassLoader;)Ldalvik/system/PathClassLoader;
    :try_end_28
    .catch Ljava/lang/Error; {:try_start_21 .. :try_end_28} :catch_29

    .line 607
    goto :goto_3e

    .line 601
    :catch_29
    move-exception v5

    .line 604
    .local v5, "e":Ljava/lang/Error;
    nop

    .line 606
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    filled-new-array {v4, v6}, [Ljava/lang/Object;

    move-result-object v6

    .line 605
    const-string v7, "Failed to prefetch standalone system server jar \"%s\": %s"

    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 604
    const-string v7, "Zygote"

    invoke-static {v7, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    .end local v4    # "jar":Ljava/lang/String;
    .end local v5    # "e":Ljava/lang/Error;
    :goto_3e
    add-int/lit8 v3, v3, 0x1

    goto :goto_1c

    .line 609
    :cond_41
    return-void
.end method

.method static blacklist preload(Landroid/util/TimingsTraceLog;)V
    .registers 5
    .param p0, "bootTimingsTraceLog"    # Landroid/util/TimingsTraceLog;

    .line 129
    const-string v0, "begin preload"

    const-string v1, "Zygote"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    const-string v0, "BeginPreload"

    invoke-virtual {p0, v0}, Landroid/util/TimingsTraceLog;->traceBegin(Ljava/lang/String;)V

    .line 131
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->beginPreload()V

    .line 132
    invoke-virtual {p0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 133
    const-string v0, "PreloadClasses"

    invoke-virtual {p0, v0}, Landroid/util/TimingsTraceLog;->traceBegin(Ljava/lang/String;)V

    .line 134
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->preloadClasses()V

    .line 135
    invoke-virtual {p0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 136
    const-string v0, "CacheNonBootClasspathClassLoaders"

    invoke-virtual {p0, v0}, Landroid/util/TimingsTraceLog;->traceBegin(Ljava/lang/String;)V

    .line 137
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->cacheNonBootClasspathClassLoaders()V

    .line 138
    invoke-virtual {p0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 139
    const-string v0, "PreloadResources"

    invoke-virtual {p0, v0}, Landroid/util/TimingsTraceLog;->traceBegin(Ljava/lang/String;)V

    .line 140
    invoke-static {}, Landroid/content/res/Resources;->preloadResources()V

    .line 141
    invoke-virtual {p0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 142
    const-string v0, "PreloadAppProcessHALs"

    const-wide/16 v2, 0x4000

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 143
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->nativePreloadAppProcessHALs()V

    .line 144
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 145
    const-string v0, "PreloadGraphicsDriver"

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 146
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->maybePreloadGraphicsDriver()V

    .line 147
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 148
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->preloadSharedLibraries()V

    .line 149
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->preloadTextResources()V

    .line 153
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/net/http/Flags;->preloadHttpengineInZygote()Z

    move-result v0

    if-eqz v0, :cond_72

    .line 155
    :try_start_57
    invoke-static {}, Landroid/net/http/HttpEngine;->preload()V
    :try_end_5a
    .catch Ljava/lang/NoSuchMethodError; {:try_start_57 .. :try_end_5a} :catch_5b

    .line 165
    goto :goto_72

    .line 156
    :catch_5b
    move-exception v0

    .line 164
    .local v0, "e":Ljava/lang/NoSuchMethodError;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HttpEngine.preload() threw "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    .end local v0    # "e":Ljava/lang/NoSuchMethodError;
    :cond_72
    :goto_72
    invoke-static {}, Landroid/webkit/WebViewFactory;->prepareWebViewInZygote()V

    .line 170
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->endPreload()V

    .line 171
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->warmUpJcaProviders()V

    .line 172
    const-string v0, "end preload"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/internal/os/ZygoteInit;->sPreloadComplete:Z

    .line 175
    return-void
.end method

.method private static blacklist preloadClasses()V
    .registers 25

    .line 283
    const-string v1, "Failed to restore root"

    const-string v2, "ResetJitCounters"

    const-string v3, "PreloadDexCaches"

    const-string v4, "Zygote"

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v5

    .line 287
    .local v5, "runtime":Ldalvik/system/VMRuntime;
    :try_start_c
    new-instance v0, Ljava/io/FileInputStream;

    const-string v6, "/system/etc/preloaded-classes"

    invoke-direct {v0, v6}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_13
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_13} :catch_23c

    move-object v6, v0

    .line 291
    .local v6, "is":Ljava/io/InputStream;
    nop

    .line 293
    const-string v0, "Preloading classes..."

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 297
    .local v7, "startTime":J
    invoke-static {}, Landroid/system/Os;->getuid()I

    move-result v9

    .line 298
    .local v9, "reuid":I
    invoke-static {}, Landroid/system/Os;->getgid()I

    move-result v10

    .line 303
    .local v10, "regid":I
    const/4 v11, 0x0

    .line 304
    .local v11, "droppedPriviliges":Z
    const/4 v12, 0x0

    if-nez v9, :cond_40

    if-nez v10, :cond_40

    .line 306
    const/16 v0, 0x270f

    :try_start_2e
    invoke-static {v12, v0}, Landroid/system/Os;->setregid(II)V

    .line 307
    invoke-static {v12, v0}, Landroid/system/Os;->setreuid(II)V
    :try_end_34
    .catch Landroid/system/ErrnoException; {:try_start_2e .. :try_end_34} :catch_37

    .line 310
    nop

    .line 312
    const/4 v11, 0x1

    goto :goto_40

    .line 308
    :catch_37
    move-exception v0

    .line 309
    .local v0, "ex":Landroid/system/ErrnoException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Failed to drop root"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 316
    .end local v0    # "ex":Landroid/system/ErrnoException;
    :cond_40
    :goto_40
    :try_start_40
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v15, Ljava/io/InputStreamReader;

    invoke-direct {v15, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v12, 0x100

    invoke-direct {v0, v15, v12}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    move-object v12, v0

    .line 319
    .local v12, "br":Ljava/io/BufferedReader;
    const/4 v0, 0x0

    .line 320
    .local v0, "count":I
    const/4 v15, 0x0

    move/from16 v16, v15

    move v15, v0

    .line 322
    .end local v0    # "count":I
    .local v15, "count":I
    .local v16, "missingLambdaCount":I
    :goto_52
    invoke-virtual {v12}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0
    :try_end_56
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_56} :catch_1d1
    .catchall {:try_start_40 .. :try_end_56} :catchall_1ca

    move-object/from16 v17, v0

    .local v17, "line":Ljava/lang/String;
    if-eqz v0, :cond_143

    .line 324
    :try_start_5a
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v17, v0

    .line 325
    const-string v0, "#"

    move-object/from16 v13, v17

    .end local v17    # "line":Ljava/lang/String;
    .local v13, "line":Ljava/lang/String;
    invoke-virtual {v13, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_127

    const-string v0, ""

    invoke-virtual {v13, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_70
    .catch Ljava/io/IOException; {:try_start_5a .. :try_end_70} :catch_13b
    .catchall {:try_start_5a .. :try_end_70} :catchall_133

    if-eqz v0, :cond_79

    .line 326
    move-object v14, v5

    move-object/from16 v20, v6

    move/from16 v5, v16

    goto/16 :goto_12c

    .line 329
    :cond_79
    move-object v14, v5

    move-object/from16 v20, v6

    const-wide/16 v5, 0x4000

    .end local v5    # "runtime":Ldalvik/system/VMRuntime;
    .end local v6    # "is":Ljava/io/InputStream;
    .local v14, "runtime":Ldalvik/system/VMRuntime;
    .local v20, "is":Ljava/io/InputStream;
    :try_start_7e
    invoke-static {v5, v6, v13}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_81
    .catch Ljava/io/IOException; {:try_start_7e .. :try_end_81} :catch_122
    .catchall {:try_start_7e .. :try_end_81} :catchall_11d

    .line 336
    const/4 v0, 0x0

    const/4 v5, 0x1

    :try_start_83
    invoke-static {v13, v5, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_86
    .catch Ljava/lang/ClassNotFoundException; {:try_start_83 .. :try_end_86} :catch_e0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_83 .. :try_end_86} :catch_bd
    .catchall {:try_start_83 .. :try_end_86} :catchall_8a

    .line 337
    add-int/lit8 v15, v15, 0x1

    .line 357
    :goto_88
    goto/16 :goto_113

    .line 348
    :catchall_8a
    move-exception v0

    .line 349
    .local v0, "t":Ljava/lang/Throwable;
    :try_start_8b
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error preloading "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 350
    instance-of v5, v0, Ljava/lang/Error;

    if-nez v5, :cond_b9

    .line 352
    instance-of v5, v0, Ljava/lang/RuntimeException;

    if-eqz v5, :cond_b3

    .line 353
    move-object v5, v0

    check-cast v5, Ljava/lang/RuntimeException;

    .end local v7    # "startTime":J
    .end local v9    # "reuid":I
    .end local v10    # "regid":I
    .end local v11    # "droppedPriviliges":Z
    .end local v14    # "runtime":Ldalvik/system/VMRuntime;
    .end local v20    # "is":Ljava/io/InputStream;
    throw v5

    .line 355
    .restart local v7    # "startTime":J
    .restart local v9    # "reuid":I
    .restart local v10    # "regid":I
    .restart local v11    # "droppedPriviliges":Z
    .restart local v14    # "runtime":Ldalvik/system/VMRuntime;
    .restart local v20    # "is":Ljava/io/InputStream;
    :cond_b3
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .end local v7    # "startTime":J
    .end local v9    # "reuid":I
    .end local v10    # "regid":I
    .end local v11    # "droppedPriviliges":Z
    .end local v14    # "runtime":Ldalvik/system/VMRuntime;
    .end local v20    # "is":Ljava/io/InputStream;
    throw v5

    .line 351
    .restart local v7    # "startTime":J
    .restart local v9    # "reuid":I
    .restart local v10    # "regid":I
    .restart local v11    # "droppedPriviliges":Z
    .restart local v14    # "runtime":Ldalvik/system/VMRuntime;
    .restart local v20    # "is":Ljava/io/InputStream;
    :cond_b9
    move-object v5, v0

    check-cast v5, Ljava/lang/Error;

    .end local v7    # "startTime":J
    .end local v9    # "reuid":I
    .end local v10    # "regid":I
    .end local v11    # "droppedPriviliges":Z
    .end local v14    # "runtime":Ldalvik/system/VMRuntime;
    .end local v20    # "is":Ljava/io/InputStream;
    throw v5

    .line 346
    .end local v0    # "t":Ljava/lang/Throwable;
    .restart local v7    # "startTime":J
    .restart local v9    # "reuid":I
    .restart local v10    # "regid":I
    .restart local v11    # "droppedPriviliges":Z
    .restart local v14    # "runtime":Ldalvik/system/VMRuntime;
    .restart local v20    # "is":Ljava/io/InputStream;
    :catch_bd
    move-exception v0

    .line 347
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Problem preloading "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    nop

    .end local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    goto :goto_113

    .line 338
    :catch_e0
    move-exception v0

    .line 339
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    const-string v5, "$$Lambda$"

    invoke-virtual {v13, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_f5

    .line 340
    sget-boolean v5, Lcom/android/internal/os/ZygoteInit;->LOGGING_DEBUG:Z

    if-eqz v5, :cond_f2

    .line 341
    move/from16 v5, v16

    .end local v16    # "missingLambdaCount":I
    .local v5, "missingLambdaCount":I
    add-int/lit8 v16, v5, 0x1

    .end local v5    # "missingLambdaCount":I
    .restart local v16    # "missingLambdaCount":I
    goto :goto_88

    .line 340
    :cond_f2
    move/from16 v5, v16

    .end local v16    # "missingLambdaCount":I
    .restart local v5    # "missingLambdaCount":I
    goto :goto_10f

    .line 344
    .end local v5    # "missingLambdaCount":I
    .restart local v16    # "missingLambdaCount":I
    :cond_f5
    move/from16 v5, v16

    .end local v16    # "missingLambdaCount":I
    .restart local v5    # "missingLambdaCount":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v0

    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    .local v16, "e":Ljava/lang/ClassNotFoundException;
    const-string v0, "Class not found for preloading: "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    .end local v16    # "e":Ljava/lang/ClassNotFoundException;
    :goto_10f
    move/from16 v16, v5

    goto/16 :goto_88

    .line 358
    .end local v5    # "missingLambdaCount":I
    .local v16, "missingLambdaCount":I
    :goto_113
    const-wide/16 v18, 0x4000

    invoke-static/range {v18 .. v19}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_118
    .catch Ljava/io/IOException; {:try_start_8b .. :try_end_118} :catch_122
    .catchall {:try_start_8b .. :try_end_118} :catchall_11d

    move-object v5, v14

    move-object/from16 v6, v20

    goto/16 :goto_52

    .line 369
    .end local v12    # "br":Ljava/io/BufferedReader;
    .end local v13    # "line":Ljava/lang/String;
    .end local v15    # "count":I
    .end local v16    # "missingLambdaCount":I
    :catchall_11d
    move-exception v0

    move-wide/from16 v23, v7

    goto/16 :goto_20d

    .line 366
    :catch_122
    move-exception v0

    move-wide/from16 v23, v7

    goto/16 :goto_1d7

    .line 325
    .end local v14    # "runtime":Ldalvik/system/VMRuntime;
    .end local v20    # "is":Ljava/io/InputStream;
    .local v5, "runtime":Ldalvik/system/VMRuntime;
    .restart local v6    # "is":Ljava/io/InputStream;
    .restart local v12    # "br":Ljava/io/BufferedReader;
    .restart local v13    # "line":Ljava/lang/String;
    .restart local v15    # "count":I
    .restart local v16    # "missingLambdaCount":I
    :cond_127
    move-object v14, v5

    move-object/from16 v20, v6

    move/from16 v5, v16

    .line 322
    .end local v6    # "is":Ljava/io/InputStream;
    .end local v13    # "line":Ljava/lang/String;
    .end local v16    # "missingLambdaCount":I
    .local v5, "missingLambdaCount":I
    .restart local v14    # "runtime":Ldalvik/system/VMRuntime;
    .restart local v20    # "is":Ljava/io/InputStream;
    :goto_12c
    move/from16 v16, v5

    move-object v5, v14

    move-object/from16 v6, v20

    goto/16 :goto_52

    .line 369
    .end local v12    # "br":Ljava/io/BufferedReader;
    .end local v14    # "runtime":Ldalvik/system/VMRuntime;
    .end local v15    # "count":I
    .end local v20    # "is":Ljava/io/InputStream;
    .local v5, "runtime":Ldalvik/system/VMRuntime;
    .restart local v6    # "is":Ljava/io/InputStream;
    :catchall_133
    move-exception v0

    move-object v14, v5

    move-object/from16 v20, v6

    move-wide/from16 v23, v7

    .end local v5    # "runtime":Ldalvik/system/VMRuntime;
    .end local v6    # "is":Ljava/io/InputStream;
    .restart local v14    # "runtime":Ldalvik/system/VMRuntime;
    .restart local v20    # "is":Ljava/io/InputStream;
    goto/16 :goto_20d

    .line 366
    .end local v14    # "runtime":Ldalvik/system/VMRuntime;
    .end local v20    # "is":Ljava/io/InputStream;
    .restart local v5    # "runtime":Ldalvik/system/VMRuntime;
    .restart local v6    # "is":Ljava/io/InputStream;
    :catch_13b
    move-exception v0

    move-object v14, v5

    move-object/from16 v20, v6

    move-wide/from16 v23, v7

    .end local v5    # "runtime":Ldalvik/system/VMRuntime;
    .end local v6    # "is":Ljava/io/InputStream;
    .restart local v14    # "runtime":Ldalvik/system/VMRuntime;
    .restart local v20    # "is":Ljava/io/InputStream;
    goto/16 :goto_1d7

    .line 361
    .end local v14    # "runtime":Ldalvik/system/VMRuntime;
    .end local v20    # "is":Ljava/io/InputStream;
    .restart local v5    # "runtime":Ldalvik/system/VMRuntime;
    .restart local v6    # "is":Ljava/io/InputStream;
    .restart local v12    # "br":Ljava/io/BufferedReader;
    .restart local v15    # "count":I
    .restart local v16    # "missingLambdaCount":I
    .restart local v17    # "line":Ljava/lang/String;
    :cond_143
    move-object v14, v5

    move-object/from16 v20, v6

    move/from16 v5, v16

    .end local v6    # "is":Ljava/io/InputStream;
    .end local v16    # "missingLambdaCount":I
    .local v5, "missingLambdaCount":I
    .restart local v14    # "runtime":Ldalvik/system/VMRuntime;
    .restart local v20    # "is":Ljava/io/InputStream;
    :try_start_148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "...preloaded "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " classes in "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 362
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v21
    :try_end_161
    .catch Ljava/io/IOException; {:try_start_148 .. :try_end_161} :catch_1c6
    .catchall {:try_start_148 .. :try_end_161} :catchall_1c2

    move-wide/from16 v23, v7

    .end local v7    # "startTime":J
    .local v23, "startTime":J
    sub-long v6, v21, v23

    :try_start_165
    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "ms."

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 361
    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    sget-boolean v0, Lcom/android/internal/os/ZygoteInit;->LOGGING_DEBUG:Z

    if-eqz v0, :cond_192

    if-eqz v5, :cond_192

    .line 364
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unresolved lambda preloads: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_192
    .catch Ljava/io/IOException; {:try_start_165 .. :try_end_192} :catch_1c0
    .catchall {:try_start_165 .. :try_end_192} :catchall_20c

    .line 369
    .end local v5    # "missingLambdaCount":I
    .end local v12    # "br":Ljava/io/BufferedReader;
    .end local v15    # "count":I
    .end local v17    # "line":Ljava/lang/String;
    :cond_192
    invoke-static/range {v20 .. v20}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 372
    const-wide/16 v5, 0x4000

    invoke-static {v5, v6, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 373
    invoke-virtual {v14}, Ldalvik/system/VMRuntime;->preloadDexCaches()V

    .line 374
    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    .line 379
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->shouldProfileBootClasspath()Z

    move-result v0

    if-eqz v0, :cond_1af

    .line 380
    invoke-static {v5, v6, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 381
    invoke-static {}, Ldalvik/system/VMRuntime;->resetJitCounters()V

    .line 382
    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    .line 386
    :cond_1af
    if-eqz v11, :cond_20b

    .line 388
    const/4 v2, 0x0

    :try_start_1b2
    invoke-static {v2, v2}, Landroid/system/Os;->setreuid(II)V

    .line 389
    invoke-static {v2, v2}, Landroid/system/Os;->setregid(II)V
    :try_end_1b8
    .catch Landroid/system/ErrnoException; {:try_start_1b2 .. :try_end_1b8} :catch_1b9

    goto :goto_203

    .line 390
    :catch_1b9
    move-exception v0

    .line 391
    .local v0, "ex":Landroid/system/ErrnoException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 366
    .end local v0    # "ex":Landroid/system/ErrnoException;
    :catch_1c0
    move-exception v0

    goto :goto_1d7

    .line 369
    .end local v23    # "startTime":J
    .restart local v7    # "startTime":J
    :catchall_1c2
    move-exception v0

    move-wide/from16 v23, v7

    .end local v7    # "startTime":J
    .restart local v23    # "startTime":J
    goto :goto_20d

    .line 366
    .end local v23    # "startTime":J
    .restart local v7    # "startTime":J
    :catch_1c6
    move-exception v0

    move-wide/from16 v23, v7

    .end local v7    # "startTime":J
    .restart local v23    # "startTime":J
    goto :goto_1d7

    .line 369
    .end local v14    # "runtime":Ldalvik/system/VMRuntime;
    .end local v20    # "is":Ljava/io/InputStream;
    .end local v23    # "startTime":J
    .local v5, "runtime":Ldalvik/system/VMRuntime;
    .restart local v6    # "is":Ljava/io/InputStream;
    .restart local v7    # "startTime":J
    :catchall_1ca
    move-exception v0

    move-object v14, v5

    move-object/from16 v20, v6

    move-wide/from16 v23, v7

    .end local v5    # "runtime":Ldalvik/system/VMRuntime;
    .end local v6    # "is":Ljava/io/InputStream;
    .end local v7    # "startTime":J
    .restart local v14    # "runtime":Ldalvik/system/VMRuntime;
    .restart local v20    # "is":Ljava/io/InputStream;
    .restart local v23    # "startTime":J
    goto :goto_20d

    .line 366
    .end local v14    # "runtime":Ldalvik/system/VMRuntime;
    .end local v20    # "is":Ljava/io/InputStream;
    .end local v23    # "startTime":J
    .restart local v5    # "runtime":Ldalvik/system/VMRuntime;
    .restart local v6    # "is":Ljava/io/InputStream;
    .restart local v7    # "startTime":J
    :catch_1d1
    move-exception v0

    move-object v14, v5

    move-object/from16 v20, v6

    move-wide/from16 v23, v7

    .line 367
    .end local v5    # "runtime":Ldalvik/system/VMRuntime;
    .end local v6    # "is":Ljava/io/InputStream;
    .end local v7    # "startTime":J
    .local v0, "e":Ljava/io/IOException;
    .restart local v14    # "runtime":Ldalvik/system/VMRuntime;
    .restart local v20    # "is":Ljava/io/InputStream;
    .restart local v23    # "startTime":J
    :goto_1d7
    :try_start_1d7
    const-string v5, "Error reading /system/etc/preloaded-classes."

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1dc
    .catchall {:try_start_1d7 .. :try_end_1dc} :catchall_20c

    .line 369
    nop

    .end local v0    # "e":Ljava/io/IOException;
    invoke-static/range {v20 .. v20}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 372
    const-wide/16 v5, 0x4000

    invoke-static {v5, v6, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 373
    invoke-virtual {v14}, Ldalvik/system/VMRuntime;->preloadDexCaches()V

    .line 374
    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    .line 379
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->shouldProfileBootClasspath()Z

    move-result v0

    if-eqz v0, :cond_1fa

    .line 380
    invoke-static {v5, v6, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 381
    invoke-static {}, Ldalvik/system/VMRuntime;->resetJitCounters()V

    .line 382
    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    .line 386
    :cond_1fa
    if-eqz v11, :cond_20b

    .line 388
    const/4 v2, 0x0

    :try_start_1fd
    invoke-static {v2, v2}, Landroid/system/Os;->setreuid(II)V

    .line 389
    invoke-static {v2, v2}, Landroid/system/Os;->setregid(II)V
    :try_end_203
    .catch Landroid/system/ErrnoException; {:try_start_1fd .. :try_end_203} :catch_204

    .line 392
    :goto_203
    goto :goto_20b

    .line 390
    :catch_204
    move-exception v0

    .line 391
    .local v0, "ex":Landroid/system/ErrnoException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 395
    .end local v0    # "ex":Landroid/system/ErrnoException;
    :cond_20b
    :goto_20b
    return-void

    .line 369
    :catchall_20c
    move-exception v0

    :goto_20d
    invoke-static/range {v20 .. v20}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 372
    const-wide/16 v5, 0x4000

    invoke-static {v5, v6, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 373
    invoke-virtual {v14}, Ldalvik/system/VMRuntime;->preloadDexCaches()V

    .line 374
    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    .line 379
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->shouldProfileBootClasspath()Z

    move-result v3

    if-eqz v3, :cond_22a

    .line 380
    invoke-static {v5, v6, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 381
    invoke-static {}, Ldalvik/system/VMRuntime;->resetJitCounters()V

    .line 382
    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    .line 386
    :cond_22a
    if-eqz v11, :cond_23b

    .line 388
    const/4 v2, 0x0

    :try_start_22d
    invoke-static {v2, v2}, Landroid/system/Os;->setreuid(II)V

    .line 389
    invoke-static {v2, v2}, Landroid/system/Os;->setregid(II)V
    :try_end_233
    .catch Landroid/system/ErrnoException; {:try_start_22d .. :try_end_233} :catch_234

    .line 392
    goto :goto_23b

    .line 390
    :catch_234
    move-exception v0

    .line 391
    .restart local v0    # "ex":Landroid/system/ErrnoException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 394
    .end local v0    # "ex":Landroid/system/ErrnoException;
    :cond_23b
    :goto_23b
    throw v0

    .line 288
    .end local v9    # "reuid":I
    .end local v10    # "regid":I
    .end local v11    # "droppedPriviliges":Z
    .end local v14    # "runtime":Ldalvik/system/VMRuntime;
    .end local v20    # "is":Ljava/io/InputStream;
    .end local v23    # "startTime":J
    .restart local v5    # "runtime":Ldalvik/system/VMRuntime;
    :catch_23c
    move-exception v0

    move-object v14, v5

    .line 289
    .end local v5    # "runtime":Ldalvik/system/VMRuntime;
    .local v0, "e":Ljava/io/FileNotFoundException;
    .restart local v14    # "runtime":Ldalvik/system/VMRuntime;
    const-string v1, "Couldn\'t find /system/etc/preloaded-classes."

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    return-void
.end method

.method private static blacklist preloadSharedLibraries()V
    .registers 2

    .line 197
    const-string v0, "Zygote"

    const-string v1, "Preloading shared libraries..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    const-string v0, "android"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 199
    const-string v0, "jnigraphics"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 203
    const-string v0, "config.disable_renderscript"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 204
    const-string v0, "compiler_rt"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 206
    :cond_1f
    return-void
.end method

.method private static blacklist preloadTextResources()V
    .registers 0

    .line 226
    invoke-static {}, Landroid/text/Hyphenator;->init()V

    .line 227
    invoke-static {}, Landroid/widget/TextView;->preloadFontCache()V

    .line 228
    return-void
.end method

.method private static blacklist prepareSystemServerProfile(Ljava/lang/String;)V
    .registers 10
    .param p0, "systemServerPaths"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 618
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 619
    return-void

    .line 621
    :cond_7
    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 623
    .local v0, "codePaths":[Ljava/lang/String;
    nop

    .line 624
    const-string v1, "installd"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/IInstalld$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IInstalld;

    move-result-object v2

    .line 626
    .local v2, "installd":Landroid/os/IInstalld;
    const-string v3, "android"

    .line 627
    .local v3, "systemServerPackageName":Ljava/lang/String;
    const-string/jumbo v6, "primary.prof"

    .line 628
    .local v6, "systemServerProfileName":Ljava/lang/String;
    nop

    .line 631
    const/16 v1, 0x3e8

    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v5

    const/4 v1, 0x0

    aget-object v7, v0, v1

    .line 628
    const/4 v4, 0x0

    const/4 v8, 0x0

    invoke-interface/range {v2 .. v8}, Landroid/os/IInstalld;->prepareAppProfile(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 636
    invoke-static {v1, v3}, Landroid/os/Environment;->getDataProfilesDePackageDirectory(ILjava/lang/String;)Ljava/io/File;

    move-result-object v4

    .line 638
    .local v4, "curProfileDir":Ljava/io/File;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    .line 639
    .local v5, "curProfilePath":Ljava/lang/String;
    invoke-static {v1, v3}, Landroid/os/Environment;->getDataProfilesDePackageDirectory(ILjava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 641
    .local v1, "refProfileDir":Ljava/io/File;
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v1, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    .line 642
    .local v7, "refProfilePath":Ljava/lang/String;
    const/4 v8, 0x1

    invoke-static {v3, v5, v7, v0, v8}, Ldalvik/system/VMRuntime;->registerAppInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;I)V

    .line 648
    return-void
.end method

.method public static blacklist setApiDenylistExemptions([Ljava/lang/String;)V
    .registers 2
    .param p0, "exemptions"    # [Ljava/lang/String;

    .line 654
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    invoke-virtual {v0, p0}, Ldalvik/system/VMRuntime;->setHiddenApiExemptions([Ljava/lang/String;)V

    .line 655
    return-void
.end method

.method public static blacklist setHiddenApiAccessLogSampleRate(I)V
    .registers 2
    .param p0, "percent"    # I

    .line 658
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    invoke-virtual {v0, p0}, Ldalvik/system/VMRuntime;->setHiddenApiAccessLogSamplingRate(I)V

    .line 659
    return-void
.end method

.method public static blacklist setHiddenApiUsageLogger(Ldalvik/system/VMRuntime$HiddenApiUsageLogger;)V
    .registers 1
    .param p0, "logger"    # Ldalvik/system/VMRuntime$HiddenApiUsageLogger;

    .line 666
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    invoke-static {p0}, Ldalvik/system/VMRuntime;->setHiddenApiUsageLogger(Ldalvik/system/VMRuntime$HiddenApiUsageLogger;)V

    .line 667
    return-void
.end method

.method private static blacklist shouldProfileBootClasspath()Z
    .registers 1

    .line 273
    const-string/jumbo v0, "profilebootclasspath"

    invoke-static {v0}, Lcom/android/internal/os/ZygoteInit;->isExperimentEnabled(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static blacklist shouldProfileSystemServer()Z
    .registers 1

    .line 269
    const-string/jumbo v0, "profilesystemserver"

    invoke-static {v0}, Lcom/android/internal/os/ZygoteInit;->isExperimentEnabled(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static blacklist waitForSecondaryZygote(Ljava/lang/String;)V
    .registers 3
    .param p0, "socketName"    # Ljava/lang/String;

    .line 947
    const-string/jumbo v0, "zygote"

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 948
    const-string/jumbo v0, "zygote_secondary"

    goto :goto_e

    :cond_d
    nop

    .line 949
    .local v0, "otherZygoteName":Ljava/lang/String;
    :goto_e
    invoke-static {v0}, Landroid/os/ZygoteProcess;->waitForConnectionToZygote(Ljava/lang/String;)V

    .line 950
    return-void
.end method

.method private static blacklist warmUpJcaProviders()V
    .registers 10

    .line 237
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 238
    .local v0, "startTime":J
    const-string v2, "Starting installation of AndroidKeyStoreProvider"

    const-wide/16 v3, 0x4000

    invoke-static {v3, v4, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 241
    invoke-static {}, Landroid/security/keystore2/AndroidKeyStoreProvider;->install()V

    .line 242
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Installed AndroidKeyStoreProvider in "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 243
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v0

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "ms."

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 242
    const-string v6, "Zygote"

    invoke-static {v6, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 246
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 247
    const-string v2, "Starting warm up of JCA providers"

    invoke-static {v3, v4, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 249
    invoke-static {}, Ljava/security/Security;->getProviders()[Ljava/security/Provider;

    move-result-object v2

    array-length v7, v2

    const/4 v8, 0x0

    :goto_43
    if-ge v8, v7, :cond_4d

    aget-object v9, v2, v8

    .line 250
    .local v9, "p":Ljava/security/Provider;
    invoke-virtual {v9}, Ljava/security/Provider;->warmUpServiceProvision()V

    .line 249
    .end local v9    # "p":Ljava/security/Provider;
    add-int/lit8 v8, v8, 0x1

    goto :goto_43

    .line 252
    :cond_4d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Warmed up JCA providers in "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 253
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v0

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 252
    invoke-static {v6, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 255
    return-void
.end method

.method public static blacklist zygoteInit(I[J[Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Runnable;
    .registers 7
    .param p0, "targetSdkVersion"    # I
    .param p1, "disabledCompatChanges"    # [J
    .param p2, "argv"    # [Ljava/lang/String;
    .param p3, "classLoader"    # Ljava/lang/ClassLoader;

    .line 982
    const-wide/16 v0, 0x40

    const-string v2, "ZygoteInit"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 983
    invoke-static {}, Lcom/android/internal/os/RuntimeInit;->redirectLogStreams()V

    .line 985
    invoke-static {}, Lcom/android/internal/os/RuntimeInit;->commonInit()V

    .line 986
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->nativeZygoteInit()V

    .line 987
    invoke-static {p0, p1, p2, p3}, Lcom/android/internal/os/RuntimeInit;->applicationInit(I[J[Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Runnable;

    move-result-object v0

    return-object v0
.end method
