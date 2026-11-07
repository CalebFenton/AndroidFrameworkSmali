.class public Landroid/net/connectivity/org/chromium/net/impl/CronetLibraryLoader;
.super Ljava/lang/Object;
.source "CronetLibraryLoader.java"


# annotations
.annotation runtime Landroid/net/connectivity/org/jni_zero/JNINamespace;
    value = "cronet"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/connectivity/org/chromium/net/impl/CronetLibraryLoader$Natives;,
        Landroid/net/connectivity/org/chromium/net/impl/CronetLibraryLoader$CronetInitializedInfo;
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field private static final blacklist LIBRARY_NAME:Ljava/lang/String;

.field public static final blacklist LOG_FLAG_NAME:Ljava/lang/String; = "Cronet_log_me"

.field public static final blacklist TAG:Ljava/lang/String;

.field private static blacklist sHttpFlags:Landroid/net/connectivity/org/chromium/net/httpflags/ResolvedFlags;

.field private static final blacklist sHttpFlagsLoaded:Landroid/os/ConditionVariable;

.field private static final blacklist sInitThread:Landroid/os/HandlerThread;

.field private static blacklist sInitialized:Z

.field private static blacklist sInitializedInfo:Landroid/net/connectivity/org/chromium/net/impl/CronetLibraryLoader$CronetInitializedInfo;

.field private static final blacklist sLoadLock:Ljava/lang/Object;

.field private static final blacklist sWaitForLibLoad:Landroid/os/ConditionVariable;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 39
    nop

    .line 43
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/net/connectivity/org/chromium/net/impl/CronetLibraryLoader;->sLoadLock:Ljava/lang/Object;

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mainlinecronet."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/net/connectivity/org/chromium/net/impl/ImplVersion;->getCronetVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/connectivity/org/chromium/net/impl/CronetLibraryLoader;->LIBRARY_NAME:Ljava/lang/String;

    .line 49
    const-class v0, Landroid/net/connectivity/org/chromium/net/impl/CronetLibraryLoader;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/connectivity/org/chromium/net/impl/CronetLibraryLoader;->TAG:Ljava/lang/String;

    .line 53
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "CronetInit"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/net/connectivity/org/chromium/net/impl/CronetLibraryLoader;->sInitThread:Landroid/os/HandlerThread;

    .line 56
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    sput-object v0, Landroid/net/connectivity/org/chromium/net/impl/CronetLibraryLoader;->sWaitForLibLoad:Landroid/os/ConditionVariable;

    .line 58
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    sput-object v0, Landroid/net/connectivity/org/chromium/net/impl/CronetLibraryLoader;->sHttpFlagsLoaded:Landroid/os/ConditionVariable;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist ensureInitialized(Landroid/content/Context;Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl;)Z
    .registers 3
    .param p0, "applicationContext"    # Landroid/content/Context;
    .param p1, "builder"    # Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl;

    .line 85
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/net/connectivity/org/chromium/net/impl/CronetLibraryLoader;->ensureInitialized(Landroid/content/Context;Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl;Z)Z

    move-result v0

    return v0
.end method

.method public static blacklist ensureInitialized(Landroid/content/Context;Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl;Z)Z
    .registers 9
    .param p0, "applicationContext"    # Landroid/content/Context;
    .param p1, "builder"    # Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl;
    .param p2, "libAlreadyLoaded"    # Z

    .line 104
    const-string v0, "CronetLibraryLoader#ensureInitialized"

    invoke-static {v0}, Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;->scoped(Ljava/lang/String;)Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;

    move-result-object v0

    .line 105
    .local v0, "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    :try_start_6
    sget-object v1, Landroid/net/connectivity/org/chromium/net/impl/CronetLibraryLoader;->sLoadLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_9
    .catchall {:try_start_6 .. :try_end_9} :catchall_dc

    .line 106
    :try_start_9
    sget-boolean v2, Landroid/net/connectivity/org/chromium/net/impl/CronetLibraryLoader;->sInitialized:Z

    if-eqz v2, :cond_15

    monitor-exit v1
    :try_end_e
    .catchall {:try_start_9 .. :try_end_e} :catchall_d9

    .line 160
    if-eqz v0, :cond_13

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;->close()V

    .line 106
    :cond_13
    const/4 v1, 0x0

    return v1

    .line 107
    :cond_15
    :try_start_15
    invoke-static {p0}, Landroid/net/connectivity/org/chromium/base/ContextUtils;->initApplicationContext(Landroid/content/Context;)V

    .line 114
    sget-object v2, Landroid/net/connectivity/org/chromium/net/impl/CronetLibraryLoader;->sInitThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v2

    if-nez v2, :cond_45

    .line 115
    const-string v2, "CronetLibraryLoader#ensureInitialized starting init thread"

    .line 116
    invoke-static {v2}, Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;->scoped(Ljava/lang/String;)Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;

    move-result-object v2
    :try_end_26
    .catchall {:try_start_15 .. :try_end_26} :catchall_d9

    .line 118
    .local v2, "startInitThreadTraceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    :try_start_26
    sget-object v3, Landroid/net/connectivity/org/chromium/net/impl/CronetLibraryLoader;->sInitThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->start()V

    .line 119
    new-instance v3, Landroid/net/connectivity/org/chromium/net/impl/CronetLibraryLoader$$ExternalSyntheticLambda1;

    invoke-direct {v3}, Landroid/net/connectivity/org/chromium/net/impl/CronetLibraryLoader$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v3}, Landroid/net/connectivity/org/chromium/net/impl/CronetLibraryLoader;->postToInitThread(Ljava/lang/Runnable;)V
    :try_end_33
    .catchall {:try_start_26 .. :try_end_33} :catchall_39

    .line 123
    if-eqz v2, :cond_45

    :try_start_35
    invoke-virtual {v2}, Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;->close()V
    :try_end_38
    .catchall {:try_start_35 .. :try_end_38} :catchall_d9

    goto :goto_45

    .line 115
    :catchall_39
    move-exception v3

    if-eqz v2, :cond_44

    :try_start_3c
    invoke-virtual {v2}, Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;->close()V
    :try_end_3f
    .catchall {:try_start_3c .. :try_end_3f} :catchall_40

    goto :goto_44

    :catchall_40
    move-exception v4

    :try_start_41
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    .end local p0    # "applicationContext":Landroid/content/Context;
    .end local p1    # "builder":Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl;
    .end local p2    # "libAlreadyLoaded":Z
    :cond_44
    :goto_44
    throw v3

    .line 125
    .end local v2    # "startInitThreadTraceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    .restart local v0    # "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    .restart local p0    # "applicationContext":Landroid/content/Context;
    .restart local p1    # "builder":Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl;
    .restart local p2    # "libAlreadyLoaded":Z
    :cond_45
    :goto_45
    if-nez p2, :cond_72

    .line 126
    const-string v2, "CronetLibraryLoader#ensureInitialized loading native library"

    .line 127
    invoke-static {v2}, Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;->scoped(Ljava/lang/String;)Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;

    move-result-object v2
    :try_end_4d
    .catchall {:try_start_41 .. :try_end_4d} :catchall_d9

    .line 130
    .local v2, "loadLibTraceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    :try_start_4d
    invoke-virtual {p1}, Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl;->libraryLoader()Landroid/net/connectivity/org/chromium/net/impl/VersionSafeCallbacks$LibraryLoader;

    move-result-object v3

    if-eqz v3, :cond_5d

    .line 131
    invoke-virtual {p1}, Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl;->libraryLoader()Landroid/net/connectivity/org/chromium/net/impl/VersionSafeCallbacks$LibraryLoader;

    move-result-object v3

    sget-object v4, Landroid/net/connectivity/org/chromium/net/impl/CronetLibraryLoader;->LIBRARY_NAME:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/net/connectivity/org/chromium/net/impl/VersionSafeCallbacks$LibraryLoader;->loadLibrary(Ljava/lang/String;)V

    goto :goto_60

    .line 133
    :cond_5d
    invoke-static {}, Landroid/net/connectivity/org/chromium/net/impl/CronetLibraryLoader;->loadLibrary()V
    :try_end_60
    .catchall {:try_start_4d .. :try_end_60} :catchall_66

    .line 135
    :goto_60
    if-eqz v2, :cond_72

    :try_start_62
    invoke-virtual {v2}, Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;->close()V
    :try_end_65
    .catchall {:try_start_62 .. :try_end_65} :catchall_d9

    goto :goto_72

    .line 126
    :catchall_66
    move-exception v3

    if-eqz v2, :cond_71

    :try_start_69
    invoke-virtual {v2}, Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;->close()V
    :try_end_6c
    .catchall {:try_start_69 .. :try_end_6c} :catchall_6d

    goto :goto_71

    :catchall_6d
    move-exception v4

    :try_start_6e
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    .end local p0    # "applicationContext":Landroid/content/Context;
    .end local p1    # "builder":Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl;
    .end local p2    # "libAlreadyLoaded":Z
    :cond_71
    :goto_71
    throw v3

    .line 137
    .end local v2    # "loadLibTraceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    .restart local v0    # "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    .restart local p0    # "applicationContext":Landroid/content/Context;
    .restart local p1    # "builder":Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl;
    .restart local p2    # "libAlreadyLoaded":Z
    :cond_72
    :goto_72
    const-string v2, "CronetLibraryLoader#ensureInitialized calling nativeInit"

    .line 138
    invoke-static {v2}, Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;->scoped(Ljava/lang/String;)Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;

    move-result-object v2
    :try_end_78
    .catchall {:try_start_6e .. :try_end_78} :catchall_d9

    .line 140
    .local v2, "nativeInitTraceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    :try_start_78
    invoke-static {}, Landroid/net/connectivity/org/chromium/net/impl/CronetLibraryLoaderJni;->get()Landroid/net/connectivity/org/chromium/net/impl/CronetLibraryLoader$Natives;

    move-result-object v3

    invoke-interface {v3}, Landroid/net/connectivity/org/chromium/net/impl/CronetLibraryLoader$Natives;->nativeInit()V
    :try_end_7f
    .catchall {:try_start_78 .. :try_end_7f} :catchall_cd

    .line 141
    if-eqz v2, :cond_84

    :try_start_81
    invoke-virtual {v2}, Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;->close()V

    .line 142
    .end local v2    # "nativeInitTraceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    :cond_84
    invoke-static {}, Landroid/net/connectivity/org/chromium/net/impl/ImplVersion;->getCronetVersion()Ljava/lang/String;

    move-result-object v2

    .line 143
    .local v2, "implVersion":Ljava/lang/String;
    invoke-static {}, Landroid/net/connectivity/org/chromium/net/impl/CronetLibraryLoaderJni;->get()Landroid/net/connectivity/org/chromium/net/impl/CronetLibraryLoader$Natives;

    move-result-object v3

    invoke-interface {v3}, Landroid/net/connectivity/org/chromium/net/impl/CronetLibraryLoader$Natives;->getCronetVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b5

    .line 150
    sget-object v3, Landroid/net/connectivity/org/chromium/net/impl/CronetLibraryLoader;->TAG:Ljava/lang/String;

    const-string v4, "Cronet version: %s, arch: %s"

    const-string v5, "os.arch"

    .line 154
    invoke-static {v5}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 150
    invoke-static {v3, v4, v2, v5}, Landroid/net/connectivity/org/chromium/base/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 155
    invoke-static {}, Landroid/net/connectivity/org/chromium/net/impl/CronetLibraryLoader;->setNativeLoggingLevel()V

    .line 156
    sget-object v3, Landroid/net/connectivity/org/chromium/net/impl/CronetLibraryLoader;->sWaitForLibLoad:Landroid/os/ConditionVariable;

    invoke-virtual {v3}, Landroid/os/ConditionVariable;->open()V

    .line 157
    const/4 v3, 0x1

    sput-boolean v3, Landroid/net/connectivity/org/chromium/net/impl/CronetLibraryLoader;->sInitialized:Z

    .line 158
    monitor-exit v1
    :try_end_af
    .catchall {:try_start_81 .. :try_end_af} :catchall_d9

    .line 160
    if-eqz v0, :cond_b4

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;->close()V

    .line 158
    :cond_b4
    return v3

    .line 144
    :cond_b5
    :try_start_b5
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Expected Cronet version number %s, actual version number %s."

    .line 148
    invoke-static {}, Landroid/net/connectivity/org/chromium/net/impl/CronetLibraryLoaderJni;->get()Landroid/net/connectivity/org/chromium/net/impl/CronetLibraryLoader$Natives;

    move-result-object v5

    invoke-interface {v5}, Landroid/net/connectivity/org/chromium/net/impl/CronetLibraryLoader$Natives;->getCronetVersion()Ljava/lang/String;

    move-result-object v5

    filled-new-array {v2, v5}, [Ljava/lang/Object;

    move-result-object v5

    .line 145
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local v0    # "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    .end local p0    # "applicationContext":Landroid/content/Context;
    .end local p1    # "builder":Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl;
    .end local p2    # "libAlreadyLoaded":Z
    throw v3
    :try_end_cd
    .catchall {:try_start_b5 .. :try_end_cd} :catchall_d9

    .line 137
    .restart local v0    # "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    .local v2, "nativeInitTraceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    .restart local p0    # "applicationContext":Landroid/content/Context;
    .restart local p1    # "builder":Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl;
    .restart local p2    # "libAlreadyLoaded":Z
    :catchall_cd
    move-exception v3

    if-eqz v2, :cond_d8

    :try_start_d0
    invoke-virtual {v2}, Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;->close()V
    :try_end_d3
    .catchall {:try_start_d0 .. :try_end_d3} :catchall_d4

    goto :goto_d8

    :catchall_d4
    move-exception v4

    :try_start_d5
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    .end local p0    # "applicationContext":Landroid/content/Context;
    .end local p1    # "builder":Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl;
    .end local p2    # "libAlreadyLoaded":Z
    :cond_d8
    :goto_d8
    throw v3

    .line 159
    .end local v2    # "nativeInitTraceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    .restart local v0    # "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    .restart local p0    # "applicationContext":Landroid/content/Context;
    .restart local p1    # "builder":Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl;
    .restart local p2    # "libAlreadyLoaded":Z
    :catchall_d9
    move-exception v2

    monitor-exit v1
    :try_end_db
    .catchall {:try_start_d5 .. :try_end_db} :catchall_d9

    .end local v0    # "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    .end local p0    # "applicationContext":Landroid/content/Context;
    .end local p1    # "builder":Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl;
    .end local p2    # "libAlreadyLoaded":Z
    :try_start_db
    throw v2
    :try_end_dc
    .catchall {:try_start_db .. :try_end_dc} :catchall_dc

    .line 104
    .restart local v0    # "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    .restart local p0    # "applicationContext":Landroid/content/Context;
    .restart local p1    # "builder":Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl;
    .restart local p2    # "libAlreadyLoaded":Z
    :catchall_dc
    move-exception v1

    if-eqz v0, :cond_e7

    :try_start_df
    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;->close()V
    :try_end_e2
    .catchall {:try_start_df .. :try_end_e2} :catchall_e3

    goto :goto_e7

    :catchall_e3
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_e7
    :goto_e7
    throw v1
.end method

.method private static blacklist ensureInitializedFromNative()V
    .registers 3

    .line 399
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 400
    .local v0, "applicationContext":Landroid/content/Context;
    nop

    .line 401
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/net/connectivity/org/chromium/net/impl/CronetLibraryLoader;->ensureInitialized(Landroid/content/Context;Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl;Z)Z

    .line 402
    return-void
.end method

.method private static blacklist getBaseFeatureOverrides()[B
    .registers 1

    .line 367
    invoke-static {}, Landroid/net/connectivity/org/chromium/net/impl/CronetLibraryLoader;->getHttpFlags()Landroid/net/connectivity/org/chromium/net/httpflags/ResolvedFlags;

    move-result-object v0

    invoke-static {v0}, Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeature;->getOverrides(Landroid/net/connectivity/org/chromium/net/httpflags/ResolvedFlags;)Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getCronetInitializedInfo()Landroid/net/connectivity/org/chromium/net/impl/CronetLibraryLoader$CronetInitializedInfo;
    .registers 1

    .line 311
    nop

    .line 312
    sget-object v0, Landroid/net/connectivity/org/chromium/net/impl/CronetLibraryLoader;->sInitializedInfo:Landroid/net/connectivity/org/chromium/net/impl/CronetLibraryLoader$CronetInitializedInfo;

    return-object v0
.end method

.method private static blacklist getDefaultUserAgent()Ljava/lang/String;
    .registers 1

    .line 380
    invoke-static {}, Landroid/net/connectivity/org/chromium/net/impl/UserAgent;->getDefault()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getHttpFlags()Landroid/net/connectivity/org/chromium/net/httpflags/ResolvedFlags;
    .registers 3

    .line 339
    sget-object v0, Landroid/net/connectivity/org/chromium/net/impl/CronetLibraryLoader;->sHttpFlags:Landroid/net/connectivity/org/chromium/net/httpflags/ResolvedFlags;

    if-nez v0, :cond_22

    .line 340
    nop

    .line 341
    const-string v0, "CronetLibraryLoader#getHttpFlags waiting for HTTP flags load"

    invoke-static {v0}, Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;->scoped(Ljava/lang/String;)Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;

    move-result-object v0

    .line 343
    .local v0, "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    :try_start_b
    sget-object v1, Landroid/net/connectivity/org/chromium/net/impl/CronetLibraryLoader;->sHttpFlagsLoaded:Landroid/os/ConditionVariable;

    invoke-virtual {v1}, Landroid/os/ConditionVariable;->block()V
    :try_end_10
    .catchall {:try_start_b .. :try_end_10} :catchall_16

    .line 344
    if-eqz v0, :cond_15

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;->close()V

    .line 340
    .end local v0    # "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    :cond_15
    goto :goto_27

    .restart local v0    # "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    :catchall_16
    move-exception v1

    if-eqz v0, :cond_21

    :try_start_19
    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;->close()V
    :try_end_1c
    .catchall {:try_start_19 .. :try_end_1c} :catchall_1d

    goto :goto_21

    :catchall_1d
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_21
    :goto_21
    throw v1

    .line 349
    .end local v0    # "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    :cond_22
    sget-object v0, Landroid/net/connectivity/org/chromium/net/impl/CronetLibraryLoader;->sHttpFlagsLoaded:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 351
    :goto_27
    sget-object v0, Landroid/net/connectivity/org/chromium/net/impl/CronetLibraryLoader;->sHttpFlags:Landroid/net/connectivity/org/chromium/net/httpflags/ResolvedFlags;

    return-object v0
.end method

.method private static blacklist hashHttpFlagValueForLogging(Landroid/net/connectivity/org/chromium/net/httpflags/ResolvedFlags$Value;)J
    .registers 5
    .param p0, "value"    # Landroid/net/connectivity/org/chromium/net/httpflags/ResolvedFlags$Value;

    .line 287
    sget-object v0, Landroid/net/connectivity/org/chromium/net/impl/CronetLibraryLoader$1;->$SwitchMap$org$chromium$net$httpflags$ResolvedFlags$Value$Type:[I

    invoke-virtual {p0}, Landroid/net/connectivity/org/chromium/net/httpflags/ResolvedFlags$Value;->getType()Landroid/net/connectivity/org/chromium/net/httpflags/ResolvedFlags$Value$Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/connectivity/org/chromium/net/httpflags/ResolvedFlags$Value$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_68

    .line 301
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected flag value type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 302
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 299
    :pswitch_30
    invoke-virtual {p0}, Landroid/net/connectivity/org/chromium/net/httpflags/ResolvedFlags$Value;->getBytesValue()Landroid/net/connectivity/com/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/connectivity/com/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Landroid/net/connectivity/org/chromium/net/telemetry/Hash;->hash([B)J

    move-result-wide v0

    return-wide v0

    .line 297
    :pswitch_3d
    invoke-virtual {p0}, Landroid/net/connectivity/org/chromium/net/httpflags/ResolvedFlags$Value;->getStringValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/connectivity/org/chromium/net/telemetry/Hash;->hash(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0

    .line 295
    :pswitch_46
    invoke-virtual {p0}, Landroid/net/connectivity/org/chromium/net/httpflags/ResolvedFlags$Value;->getFloatValue()F

    move-result v0

    float-to-double v0, v0

    const-wide v2, 0x41cdcd6500000000L    # 1.0E9

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    return-wide v0

    .line 291
    :pswitch_56
    invoke-virtual {p0}, Landroid/net/connectivity/org/chromium/net/httpflags/ResolvedFlags$Value;->getIntValue()J

    move-result-wide v0

    return-wide v0

    .line 289
    :pswitch_5b
    invoke-virtual {p0}, Landroid/net/connectivity/org/chromium/net/httpflags/ResolvedFlags$Value;->getBoolValue()Z

    move-result v0

    if-eqz v0, :cond_64

    const-wide/16 v0, 0x1

    goto :goto_66

    :cond_64
    const-wide/16 v0, 0x0

    :goto_66
    return-wide v0

    nop

    :pswitch_data_68
    .packed-switch 0x1
        :pswitch_5b
        :pswitch_56
        :pswitch_46
        :pswitch_3d
        :pswitch_30
    .end packed-switch
.end method

.method static blacklist initializeOnInitThread()V
    .registers 9

    .line 193
    nop

    .line 194
    const-string v0, "CronetLibraryLoader#initializeOnInitThread"

    invoke-static {v0}, Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;->scoped(Ljava/lang/String;)Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;

    move-result-object v0

    .line 195
    .local v0, "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    nop

    .line 196
    nop

    .line 197
    :try_start_9
    new-instance v1, Landroid/net/connectivity/org/chromium/net/impl/CronetLibraryLoader$CronetInitializedInfo;

    invoke-direct {v1}, Landroid/net/connectivity/org/chromium/net/impl/CronetLibraryLoader$CronetInitializedInfo;-><init>()V

    sput-object v1, Landroid/net/connectivity/org/chromium/net/impl/CronetLibraryLoader;->sInitializedInfo:Landroid/net/connectivity/org/chromium/net/impl/CronetLibraryLoader$CronetInitializedInfo;

    .line 199
    const-string v1, "CronetLibraryLoader#initializeOnInitThread loading HTTP flags"

    .line 200
    invoke-static {v1}, Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;->scoped(Ljava/lang/String;)Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;

    move-result-object v1
    :try_end_16
    .catchall {:try_start_9 .. :try_end_16} :catchall_e0

    .line 202
    .local v1, "httpFlagsTraceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    :try_start_16
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 203
    .local v2, "httpFlagsLoadingStartUptimeMillis":J
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .line 207
    .local v4, "applicationContext":Landroid/content/Context;
    nop

    .line 209
    invoke-static {v4}, Landroid/net/connectivity/org/chromium/net/impl/CronetManifest;->shouldReadHttpFlags(Landroid/content/Context;)Z

    move-result v5

    const/4 v6, 0x0

    if-nez v5, :cond_31

    .line 210
    sget-object v5, Landroid/net/connectivity/org/chromium/net/impl/CronetLibraryLoader;->TAG:Ljava/lang/String;

    const-string v7, "Not loading HTTP flags because they are disabled in the manifest"

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v5, v7, v6}, Landroid/net/connectivity/org/chromium/base/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 211
    const/4 v5, 0x0

    .local v5, "flags":Landroid/net/connectivity/org/chromium/net/httpflags/Flags;
    goto :goto_40

    .line 213
    .end local v5    # "flags":Landroid/net/connectivity/org/chromium/net/httpflags/Flags;
    :cond_31
    invoke-static {v4}, Landroid/net/connectivity/org/chromium/net/httpflags/HttpFlagsLoader;->load(Landroid/content/Context;)Landroid/net/connectivity/org/chromium/net/httpflags/Flags;

    move-result-object v5

    .line 214
    .restart local v5    # "flags":Landroid/net/connectivity/org/chromium/net/httpflags/Flags;
    sget-object v7, Landroid/net/connectivity/org/chromium/net/impl/CronetLibraryLoader;->sInitializedInfo:Landroid/net/connectivity/org/chromium/net/impl/CronetLibraryLoader$CronetInitializedInfo;

    if-eqz v5, :cond_3a

    const/4 v6, 0x1

    :cond_3a
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iput-object v6, v7, Landroid/net/connectivity/org/chromium/net/impl/CronetLibraryLoader$CronetInitializedInfo;->httpFlagsSuccessful:Ljava/lang/Boolean;

    .line 218
    :goto_40
    if-eqz v5, :cond_44

    move-object v6, v5

    goto :goto_4e

    :cond_44
    invoke-static {}, Landroid/net/connectivity/org/chromium/net/httpflags/Flags;->newBuilder()Landroid/net/connectivity/org/chromium/net/httpflags/Flags$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/connectivity/org/chromium/net/httpflags/Flags$Builder;->build()Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    move-result-object v6

    check-cast v6, Landroid/net/connectivity/org/chromium/net/httpflags/Flags;

    .line 219
    :goto_4e
    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 220
    invoke-static {}, Landroid/net/connectivity/org/chromium/net/impl/ImplVersion;->getCronetVersion()Ljava/lang/String;

    move-result-object v8

    .line 217
    invoke-static {v6, v7, v8}, Landroid/net/connectivity/org/chromium/net/httpflags/ResolvedFlags;->resolve(Landroid/net/connectivity/org/chromium/net/httpflags/Flags;Ljava/lang/String;Ljava/lang/String;)Landroid/net/connectivity/org/chromium/net/httpflags/ResolvedFlags;

    move-result-object v6

    sput-object v6, Landroid/net/connectivity/org/chromium/net/impl/CronetLibraryLoader;->sHttpFlags:Landroid/net/connectivity/org/chromium/net/httpflags/ResolvedFlags;

    .line 225
    sget-object v6, Landroid/net/connectivity/org/chromium/net/impl/CronetLibraryLoader;->sInitializedInfo:Landroid/net/connectivity/org/chromium/net/impl/CronetLibraryLoader$CronetInitializedInfo;

    .line 226
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v2

    long-to-int v7, v7

    iput v7, v6, Landroid/net/connectivity/org/chromium/net/impl/CronetLibraryLoader$CronetInitializedInfo;->httpFlagsLatencyMillis:I
    :try_end_66
    .catchall {:try_start_16 .. :try_end_66} :catchall_d4

    .line 227
    .end local v2    # "httpFlagsLoadingStartUptimeMillis":J
    .end local v4    # "applicationContext":Landroid/content/Context;
    .end local v5    # "flags":Landroid/net/connectivity/org/chromium/net/httpflags/Flags;
    if-eqz v1, :cond_6b

    :try_start_68
    invoke-virtual {v1}, Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;->close()V

    .line 228
    .end local v1    # "httpFlagsTraceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    :cond_6b
    sget-object v1, Landroid/net/connectivity/org/chromium/net/impl/CronetLibraryLoader;->sHttpFlagsLoaded:Landroid/os/ConditionVariable;

    invoke-virtual {v1}, Landroid/os/ConditionVariable;->open()V

    .line 229
    sget-object v1, Landroid/net/connectivity/org/chromium/net/impl/CronetLibraryLoader;->sHttpFlags:Landroid/net/connectivity/org/chromium/net/httpflags/ResolvedFlags;

    invoke-virtual {v1}, Landroid/net/connectivity/org/chromium/net/httpflags/ResolvedFlags;->flags()Ljava/util/Map;

    move-result-object v1

    const-string v2, "Cronet_log_me"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/connectivity/org/chromium/net/httpflags/ResolvedFlags$Value;

    .line 230
    .local v1, "logMe":Landroid/net/connectivity/org/chromium/net/httpflags/ResolvedFlags$Value;
    if-eqz v1, :cond_8b

    .line 231
    sget-object v2, Landroid/net/connectivity/org/chromium/net/impl/CronetLibraryLoader;->TAG:Ljava/lang/String;

    const-string v3, "HTTP flags log line: %s"

    invoke-virtual {v1}, Landroid/net/connectivity/org/chromium/net/httpflags/ResolvedFlags$Value;->getStringValue()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/net/connectivity/org/chromium/base/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 233
    :cond_8b
    invoke-static {}, Landroid/net/connectivity/org/chromium/net/impl/CronetLibraryLoader;->populateCronetInitializedHttpFlagNamesValues()V

    .line 235
    invoke-static {}, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifier;->init()Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifier;

    .line 241
    invoke-static {}, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifier;->registerToReceiveNotificationsAlways()V

    .line 243
    const-string v2, "CronetLibraryLoader#initializeOnInitThread waiting on library load"

    .line 244
    invoke-static {v2}, Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;->scoped(Ljava/lang/String;)Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;

    move-result-object v2
    :try_end_9a
    .catchall {:try_start_68 .. :try_end_9a} :catchall_e0

    .line 247
    .local v2, "libLoadTraceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    :try_start_9a
    sget-object v3, Landroid/net/connectivity/org/chromium/net/impl/CronetLibraryLoader;->sWaitForLibLoad:Landroid/os/ConditionVariable;

    invoke-virtual {v3}, Landroid/os/ConditionVariable;->block()V
    :try_end_9f
    .catchall {:try_start_9a .. :try_end_9f} :catchall_c8

    .line 248
    if-eqz v2, :cond_a4

    :try_start_a1
    invoke-virtual {v2}, Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;->close()V

    .line 250
    .end local v2    # "libLoadTraceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    :cond_a4
    const-string v2, "CronetLibraryLoader#ensureInitialized calling cronetInitOnInitThread"

    .line 251
    invoke-static {v2}, Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;->scoped(Ljava/lang/String;)Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;

    move-result-object v2
    :try_end_aa
    .catchall {:try_start_a1 .. :try_end_aa} :catchall_e0

    .line 258
    .local v2, "nativeInitTraceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    :try_start_aa
    invoke-static {}, Landroid/net/connectivity/org/chromium/net/impl/CronetLibraryLoaderJni;->get()Landroid/net/connectivity/org/chromium/net/impl/CronetLibraryLoader$Natives;

    move-result-object v3

    invoke-interface {v3}, Landroid/net/connectivity/org/chromium/net/impl/CronetLibraryLoader$Natives;->cronetInitOnInitThread()V
    :try_end_b1
    .catchall {:try_start_aa .. :try_end_b1} :catchall_bc

    .line 259
    if-eqz v2, :cond_b6

    :try_start_b3
    invoke-virtual {v2}, Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;->close()V
    :try_end_b6
    .catchall {:try_start_b3 .. :try_end_b6} :catchall_e0

    .line 260
    .end local v1    # "logMe":Landroid/net/connectivity/org/chromium/net/httpflags/ResolvedFlags$Value;
    .end local v2    # "nativeInitTraceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    :cond_b6
    if-eqz v0, :cond_bb

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;->close()V

    .line 261
    .end local v0    # "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    :cond_bb
    return-void

    .line 250
    .restart local v0    # "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    .restart local v1    # "logMe":Landroid/net/connectivity/org/chromium/net/httpflags/ResolvedFlags$Value;
    .restart local v2    # "nativeInitTraceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    :catchall_bc
    move-exception v3

    if-eqz v2, :cond_c7

    :try_start_bf
    invoke-virtual {v2}, Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;->close()V
    :try_end_c2
    .catchall {:try_start_bf .. :try_end_c2} :catchall_c3

    goto :goto_c7

    :catchall_c3
    move-exception v4

    :try_start_c4
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    :cond_c7
    :goto_c7
    throw v3
    :try_end_c8
    .catchall {:try_start_c4 .. :try_end_c8} :catchall_e0

    .line 243
    .restart local v0    # "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    .local v2, "libLoadTraceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    :catchall_c8
    move-exception v3

    if-eqz v2, :cond_d3

    :try_start_cb
    invoke-virtual {v2}, Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;->close()V
    :try_end_ce
    .catchall {:try_start_cb .. :try_end_ce} :catchall_cf

    goto :goto_d3

    :catchall_cf
    move-exception v4

    :try_start_d0
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    :cond_d3
    :goto_d3
    throw v3
    :try_end_d4
    .catchall {:try_start_d0 .. :try_end_d4} :catchall_e0

    .line 199
    .end local v2    # "libLoadTraceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    .restart local v0    # "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    .local v1, "httpFlagsTraceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    :catchall_d4
    move-exception v2

    if-eqz v1, :cond_df

    :try_start_d7
    invoke-virtual {v1}, Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;->close()V
    :try_end_da
    .catchall {:try_start_d7 .. :try_end_da} :catchall_db

    goto :goto_df

    :catchall_db
    move-exception v3

    :try_start_dc
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    :cond_df
    :goto_df
    throw v2
    :try_end_e0
    .catchall {:try_start_dc .. :try_end_e0} :catchall_e0

    .line 193
    .end local v1    # "httpFlagsTraceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    .restart local v0    # "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    :catchall_e0
    move-exception v1

    if-eqz v0, :cond_eb

    :try_start_e3
    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;->close()V
    :try_end_e6
    .catchall {:try_start_e3 .. :try_end_e6} :catchall_e7

    goto :goto_eb

    :catchall_e7
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_eb
    :goto_eb
    throw v1
.end method

.method static synthetic blacklist lambda$ensureInitialized$0()V
    .registers 0

    .line 121
    invoke-static {}, Landroid/net/connectivity/org/chromium/net/impl/CronetLibraryLoader;->initializeOnInitThread()V

    .line 122
    return-void
.end method

.method static synthetic blacklist lambda$populateCronetInitializedHttpFlagNamesValues$1(Landroid/util/Pair;Landroid/util/Pair;)I
    .registers 4
    .param p0, "left"    # Landroid/util/Pair;
    .param p1, "right"    # Landroid/util/Pair;

    .line 276
    iget-object v0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    iget-object v1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result v0

    return v0
.end method

.method private static blacklist loadLibrary()V
    .registers 1

    .line 97
    sget-object v0, Landroid/net/connectivity/org/chromium/net/impl/CronetLibraryLoader;->LIBRARY_NAME:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 98
    return-void
.end method

.method private static blacklist onInitThread()Z
    .registers 2

    .line 185
    sget-object v0, Landroid/net/connectivity/org/chromium/net/impl/CronetLibraryLoader;->sInitThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method private static blacklist populateCronetInitializedHttpFlagNamesValues()V
    .registers 7

    .line 269
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 270
    .local v0, "hashedNamesValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;>;"
    sget-object v1, Landroid/net/connectivity/org/chromium/net/impl/CronetLibraryLoader;->sHttpFlags:Landroid/net/connectivity/org/chromium/net/httpflags/ResolvedFlags;

    invoke-virtual {v1}, Landroid/net/connectivity/org/chromium/net/httpflags/ResolvedFlags;->flags()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_44

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 271
    .local v2, "flag":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/net/connectivity/org/chromium/net/httpflags/ResolvedFlags$Value;>;"
    new-instance v3, Landroid/util/Pair;

    .line 273
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Landroid/net/connectivity/org/chromium/net/telemetry/Hash;->hash(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 274
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/connectivity/org/chromium/net/httpflags/ResolvedFlags$Value;

    invoke-static {v5}, Landroid/net/connectivity/org/chromium/net/impl/CronetLibraryLoader;->hashHttpFlagValueForLogging(Landroid/net/connectivity/org/chromium/net/httpflags/ResolvedFlags$Value;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 271
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 275
    .end local v2    # "flag":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/net/connectivity/org/chromium/net/httpflags/ResolvedFlags$Value;>;"
    goto :goto_13

    .line 276
    :cond_44
    new-instance v1, Landroid/net/connectivity/org/chromium/net/impl/CronetLibraryLoader$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/net/connectivity/org/chromium/net/impl/CronetLibraryLoader$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 278
    sget-object v1, Landroid/net/connectivity/org/chromium/net/impl/CronetLibraryLoader;->sInitializedInfo:Landroid/net/connectivity/org/chromium/net/impl/CronetLibraryLoader$CronetInitializedInfo;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Landroid/net/connectivity/org/chromium/net/impl/CronetLibraryLoader$CronetInitializedInfo;->httpFlagsNames:Ljava/util/List;

    .line 279
    sget-object v1, Landroid/net/connectivity/org/chromium/net/impl/CronetLibraryLoader;->sInitializedInfo:Landroid/net/connectivity/org/chromium/net/impl/CronetLibraryLoader$CronetInitializedInfo;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Landroid/net/connectivity/org/chromium/net/impl/CronetLibraryLoader$CronetInitializedInfo;->httpFlagsValues:Ljava/util/List;

    .line 280
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_62
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_85

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 281
    .local v2, "hashedNameValue":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    sget-object v3, Landroid/net/connectivity/org/chromium/net/impl/CronetLibraryLoader;->sInitializedInfo:Landroid/net/connectivity/org/chromium/net/impl/CronetLibraryLoader$CronetInitializedInfo;

    iget-object v3, v3, Landroid/net/connectivity/org/chromium/net/impl/CronetLibraryLoader$CronetInitializedInfo;->httpFlagsNames:Ljava/util/List;

    iget-object v4, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Long;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 282
    sget-object v3, Landroid/net/connectivity/org/chromium/net/impl/CronetLibraryLoader;->sInitializedInfo:Landroid/net/connectivity/org/chromium/net/impl/CronetLibraryLoader$CronetInitializedInfo;

    iget-object v3, v3, Landroid/net/connectivity/org/chromium/net/impl/CronetLibraryLoader$CronetInitializedInfo;->httpFlagsValues:Ljava/util/List;

    iget-object v4, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Long;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 283
    .end local v2    # "hashedNameValue":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    goto :goto_62

    .line 284
    :cond_85
    return-void
.end method

.method public static blacklist postToInitThread(Ljava/lang/Runnable;)V
    .registers 3
    .param p0, "r"    # Ljava/lang/Runnable;

    .line 317
    invoke-static {}, Landroid/net/connectivity/org/chromium/net/impl/CronetLibraryLoader;->onInitThread()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 318
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    goto :goto_18

    .line 320
    :cond_a
    new-instance v0, Landroid/os/Handler;

    sget-object v1, Landroid/net/connectivity/org/chromium/net/impl/CronetLibraryLoader;->sInitThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 322
    :goto_18
    return-void
.end method

.method public static blacklist preload()V
    .registers 0

    .line 93
    invoke-static {}, Landroid/net/connectivity/org/chromium/net/impl/CronetLibraryLoader;->loadLibrary()V

    .line 94
    return-void
.end method

.method private static blacklist setNativeLoggingLevel()V
    .registers 3

    .line 165
    const-string v0, "chromium"

    .line 171
    .local v0, "nativeLogTag":Ljava/lang/String;
    const/4 v1, 0x2

    const-string v2, "chromium"

    invoke-static {v2, v1}, Landroid/net/connectivity/org/chromium/base/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 172
    const/4 v1, -0x2

    .local v1, "loggingLevel":I
    goto :goto_15

    .line 173
    .end local v1    # "loggingLevel":I
    :cond_d
    const/4 v1, 0x3

    invoke-static {v2, v1}, Landroid/net/connectivity/org/chromium/base/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 174
    const/4 v1, -0x1

    .line 180
    .restart local v1    # "loggingLevel":I
    :goto_15
    invoke-static {}, Landroid/net/connectivity/org/chromium/net/impl/CronetLibraryLoaderJni;->get()Landroid/net/connectivity/org/chromium/net/impl/CronetLibraryLoader$Natives;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/net/connectivity/org/chromium/net/impl/CronetLibraryLoader$Natives;->setMinLogLevel(I)V

    .line 181
    return-void

    .line 178
    .end local v1    # "loggingLevel":I
    :cond_1d
    return-void
.end method

.method private static blacklist setNetworkThreadPriorityOnNetworkThread(I)V
    .registers 4
    .param p0, "priority"    # I

    .line 406
    sget-object v0, Landroid/net/connectivity/org/chromium/net/impl/CronetLibraryLoader;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting network thread priority to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Landroid/net/connectivity/org/chromium/base/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 407
    invoke-static {p0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 408
    return-void
.end method
