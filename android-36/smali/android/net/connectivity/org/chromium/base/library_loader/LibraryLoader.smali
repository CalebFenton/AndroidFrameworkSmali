.class public Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader;
.super Ljava/lang/Object;
.source "LibraryLoader.java"


# annotations
.annotation runtime Landroid/net/connectivity/org/jni_zero/JNINamespace;
    value = "base::android"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader$MultiProcessMediator;,
        Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader$LoadState;,
        Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader$Natives;,
        Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader$CreatedIn;
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field private static final blacklist BACKGROUND_THREAD_POOL_KEY:Ljava/lang/String; = "background_thread_pool_enabled"

.field static final blacklist DEBUG:Z = false

.field private static final blacklist TAG:Ljava/lang/String; = "LibraryLoader"

.field private static blacklist sBrowserStartupBlockedForTesting:Z

.field private static blacklist sEnableStateForTesting:Z

.field private static blacklist sInstance:Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader;

.field public static blacklist sLoadFailedCallback:Landroid/net/connectivity/org/chromium/base/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/net/connectivity/org/chromium/base/Callback<",
            "Ljava/lang/UnsatisfiedLinkError;",
            ">;"
        }
    .end annotation
.end field

.field public static blacklist sOverrideNativeLibraryCannotBeLoadedForTesting:Z


# instance fields
.field private blacklist mCommandLineSwitched:Z

.field private blacklist mFallbackToSystemLinker:Z

.field private volatile blacklist mInitialized:Z

.field private blacklist mInitializedForTesting:Z

.field private blacklist mLibraryPreloader:Landroid/net/connectivity/org/chromium/base/library_loader/NativeLibraryPreloader;

.field private blacklist mLibraryPreloaderCalled:Z

.field private blacklist mLibraryProcessType:I

.field private blacklist mLinker:Landroid/net/connectivity/org/chromium/base/library_loader/Linker;

.field private volatile blacklist mLoadState:I

.field private blacklist mLoadStateForTesting:I

.field private blacklist mLoadedByZygote:Z

.field private final blacklist mLock:Ljava/lang/Object;

.field private final blacklist mMediator:Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader$MultiProcessMediator;

.field private blacklist mUseChromiumLinker:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmLock(Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmFallbackToSystemLinker(Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader;->mFallbackToSystemLinker:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mgetLinker(Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader;)Landroid/net/connectivity/org/chromium/base/library_loader/Linker;
    .registers 1

    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader;->getLinker()Landroid/net/connectivity/org/chromium/base/library_loader/Linker;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$misMainDexLoaded(Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader;)Z
    .registers 1

    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader;->isMainDexLoaded()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$museChromiumLinker(Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader;)Z
    .registers 1

    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader;->useChromiumLinker()Z

    move-result p0

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 55
    nop

    .line 66
    new-instance v0, Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader;

    invoke-direct {v0}, Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader;-><init>()V

    sput-object v0, Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader;->sInstance:Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader;

    return-void
.end method

.method protected constructor blacklist <init>()V
    .registers 2

    .line 416
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    sget-boolean v0, Landroid/net/connectivity/org/chromium/build/NativeLibraries;->sUseLinker:Z

    iput-boolean v0, p0, Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader;->mUseChromiumLinker:Z

    .line 113
    new-instance v0, Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader$MultiProcessMediator;

    invoke-direct {v0, p0}, Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader$MultiProcessMediator;-><init>(Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader;)V

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader;->mMediator:Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader$MultiProcessMediator;

    .line 116
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader;->mLock:Ljava/lang/Object;

    .line 420
    sget-boolean v0, Landroid/net/connectivity/org/chromium/build/BuildConfig;->ENABLE_ASSERTS:Z

    if-eqz v0, :cond_21

    .line 421
    new-instance v0, Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader$1;

    invoke-direct {v0, p0}, Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader$1;-><init>(Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader;)V

    invoke-static {v0}, Landroid/net/connectivity/org/jni_zero/NativeLibraryLoadedStatus;->setProvider(Landroid/net/connectivity/org/jni_zero/NativeLibraryLoadedStatus$NativeLibraryLoadedStatusProvider;)V

    .line 429
    :cond_21
    return-void
.end method

.method private blacklist ensureCommandLineSwitchedAlreadyLocked()V
    .registers 2

    .line 784
    nop

    .line 785
    iget-boolean v0, p0, Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader;->mCommandLineSwitched:Z

    if-eqz v0, :cond_6

    .line 786
    return-void

    .line 788
    :cond_6
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/CommandLine;->enableNativeProxy()V

    .line 789
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader;->mCommandLineSwitched:Z

    .line 790
    return-void
.end method

.method public static blacklist getInstance()Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader;
    .registers 1

    .line 412
    sget-object v0, Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader;->sInstance:Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader;

    return-object v0
.end method

.method private blacklist getLinker()Landroid/net/connectivity/org/chromium/base/library_loader/Linker;
    .registers 3

    .line 504
    nop

    .line 505
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 506
    :try_start_4
    iget-object v1, p0, Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader;->mLinker:Landroid/net/connectivity/org/chromium/base/library_loader/Linker;

    if-nez v1, :cond_f

    new-instance v1, Landroid/net/connectivity/org/chromium/base/library_loader/Linker;

    invoke-direct {v1}, Landroid/net/connectivity/org/chromium/base/library_loader/Linker;-><init>()V

    iput-object v1, p0, Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader;->mLinker:Landroid/net/connectivity/org/chromium/base/library_loader/Linker;

    .line 507
    :cond_f
    iget-object v1, p0, Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader;->mLinker:Landroid/net/connectivity/org/chromium/base/library_loader/Linker;

    monitor-exit v0

    return-object v1

    .line 508
    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_4 .. :try_end_15} :catchall_13

    throw v1
.end method

.method private blacklist initializeAlreadyLocked()V
    .registers 4

    .line 803
    iget-boolean v0, p0, Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader;->mInitialized:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_c

    .line 804
    sget-boolean v0, Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader;->sEnableStateForTesting:Z

    if-eqz v0, :cond_b

    .line 805
    iput-boolean v1, p0, Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader;->mInitializedForTesting:Z

    .line 807
    :cond_b
    return-void

    .line 809
    :cond_c
    nop

    .line 811
    iget v0, p0, Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader;->mLibraryProcessType:I

    if-ne v0, v1, :cond_20

    .line 814
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader;->isBackgroundThreadPoolEnabled()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 815
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/CommandLine;->getInstance()Landroid/net/connectivity/org/chromium/base/CommandLine;

    move-result-object v0

    const-string v2, "enable-background-thread-pool"

    invoke-virtual {v0, v2}, Landroid/net/connectivity/org/chromium/base/CommandLine;->appendSwitch(Ljava/lang/String;)V

    .line 819
    :cond_20
    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader;->ensureCommandLineSwitchedAlreadyLocked()V

    .line 823
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoaderJni;->get()Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader$Natives;

    move-result-object v0

    iget v2, p0, Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader;->mLibraryProcessType:I

    invoke-interface {v0, v2}, Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader$Natives;->libraryLoaded(I)Z

    move-result v0

    const-string v2, "LibraryLoader"

    if-eqz v0, :cond_45

    .line 831
    const-string v0, "Successfully loaded native library"

    invoke-static {v2, v0}, Landroid/net/connectivity/org/chromium/base/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 832
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/metrics/UmaRecorderHolder;->onLibraryLoaded()V

    .line 835
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/TraceEvent;->onNativeTracingReady()V

    .line 841
    iput-boolean v1, p0, Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader;->mInitialized:Z

    .line 842
    sget-boolean v0, Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader;->sEnableStateForTesting:Z

    if-eqz v0, :cond_44

    .line 843
    iput-boolean v1, p0, Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader;->mInitializedForTesting:Z

    .line 845
    :cond_44
    return-void

    .line 824
    :cond_45
    const-string v0, "error calling LibraryLoaderJni.get().libraryLoaded"

    invoke-static {v2, v0}, Landroid/net/connectivity/org/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 825
    new-instance v0, Landroid/net/connectivity/org/chromium/base/library_loader/ProcessInitException;

    invoke-direct {v0, v1}, Landroid/net/connectivity/org/chromium/base/library_loader/ProcessInitException;-><init>(I)V

    throw v0
.end method

.method public static blacklist isBackgroundThreadPoolEnabled()Z
    .registers 4

    .line 683
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/StrictModeContext;->allowDiskReads()Landroid/net/connectivity/org/chromium/base/StrictModeContext;

    move-result-object v0

    .line 684
    .local v0, "ignored":Landroid/net/connectivity/org/chromium/base/StrictModeContext;
    :try_start_4
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/ContextUtils;->getAppSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "background_thread_pool_enabled"

    .line 685
    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1
    :try_end_f
    .catchall {:try_start_4 .. :try_end_f} :catchall_15

    .line 686
    if-eqz v0, :cond_14

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/StrictModeContext;->close()V

    .line 684
    :cond_14
    return v1

    .line 683
    :catchall_15
    move-exception v1

    if-eqz v0, :cond_20

    :try_start_18
    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/StrictModeContext;->close()V
    :try_end_1b
    .catchall {:try_start_18 .. :try_end_1b} :catchall_1c

    goto :goto_20

    :catchall_1c
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_20
    :goto_20
    throw v1
.end method

.method public static blacklist isBrowserProcessStartupBlockedForTesting()Z
    .registers 1

    .line 917
    sget-boolean v0, Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader;->sBrowserStartupBlockedForTesting:Z

    return v0
.end method

.method private blacklist isMainDexLoaded()Z
    .registers 3

    .line 593
    iget v0, p0, Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader;->mLoadState:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_e

    sget-boolean v0, Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader;->sEnableStateForTesting:Z

    if-eqz v0, :cond_d

    iget v0, p0, Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader;->mLoadStateForTesting:I

    if-lt v0, v1, :cond_e

    :cond_d
    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    return v1
.end method

.method static synthetic blacklist lambda$setLibraryLoaderForTesting$0(Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader;)V
    .registers 1
    .param p0, "oldValue"    # Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader;

    .line 858
    sput-object p0, Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader;->sInstance:Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader;

    return-void
.end method

.method static synthetic blacklist lambda$setLoadFailedCallbackForTesting$2()V
    .registers 1

    .line 909
    const/4 v0, 0x0

    sput-object v0, Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader;->sLoadFailedCallback:Landroid/net/connectivity/org/chromium/base/Callback;

    return-void
.end method

.method static synthetic blacklist lambda$setOverrideNativeLibraryCannotBeLoadedForTesting$1()V
    .registers 1

    .line 904
    const/4 v0, 0x0

    sput-boolean v0, Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader;->sOverrideNativeLibraryCannotBeLoadedForTesting:Z

    return-void
.end method

.method private blacklist loadWithChromiumLinker(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)V
    .registers 7
    .param p1, "appInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "library"    # Ljava/lang/String;

    .line 690
    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader;->getLinker()Landroid/net/connectivity/org/chromium/base/library_loader/Linker;

    move-result-object v0

    .line 691
    .local v0, "linker":Landroid/net/connectivity/org/chromium/base/library_loader/Linker;
    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 692
    .local v1, "sourceDir":Ljava/lang/String;
    const-string v2, "LibraryLoader"

    const-string v3, "Loading %s from within %s"

    invoke-static {v2, v3, p2, v1}, Landroid/net/connectivity/org/chromium/base/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 693
    invoke-virtual {v0, p2}, Landroid/net/connectivity/org/chromium/base/library_loader/Linker;->loadLibrary(Ljava/lang/String;)V

    .line 694
    return-void
.end method

.method private blacklist loadWithSystemLinkerAlreadyLocked(Landroid/content/pm/ApplicationInfo;Z)V
    .registers 7
    .param p1, "appInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "inZygote"    # Z

    .line 699
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader;->setEnvForNative()V

    .line 700
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v0, p2}, Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader;->preloadAlreadyLocked(Ljava/lang/String;Z)V

    .line 701
    sget-object v0, Landroid/net/connectivity/org/chromium/build/NativeLibraries;->LIBRARIES:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_c
    if-ge v2, v1, :cond_16

    aget-object v3, v0, v2

    .line 702
    .local v3, "library":Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 701
    .end local v3    # "library":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 704
    :cond_16
    return-void
.end method

.method private blacklist logLinkerUsed()V
    .registers 4

    .line 481
    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader;->useChromiumLinker()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "LibraryLoader"

    const-string v2, "Configuration: useChromiumLinker() = %b"

    invoke-static {v1, v2, v0}, Landroid/net/connectivity/org/chromium/base/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 482
    return-void
.end method

.method public static blacklist mainProcessIntendsToProvideRelroFd()Z
    .registers 2

    .line 160
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-gt v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method private blacklist preloadAlreadyLocked(Ljava/lang/String;Z)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "inZygote"    # Z

    .line 569
    const-string v0, "LibraryLoader.preloadAlreadyLocked"

    invoke-static {v0}, Landroid/net/connectivity/org/chromium/base/TraceEvent;->scoped(Ljava/lang/String;)Landroid/net/connectivity/org/chromium/base/TraceEvent;

    move-result-object v0

    .line 571
    .local v0, "te":Landroid/net/connectivity/org/chromium/base/TraceEvent;
    nop

    .line 572
    :try_start_7
    iget-object v1, p0, Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader;->mLibraryPreloader:Landroid/net/connectivity/org/chromium/base/library_loader/NativeLibraryPreloader;

    if-eqz v1, :cond_17

    iget-boolean v1, p0, Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader;->mLibraryPreloaderCalled:Z

    if-nez v1, :cond_17

    .line 573
    iget-object v1, p0, Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader;->mLibraryPreloader:Landroid/net/connectivity/org/chromium/base/library_loader/NativeLibraryPreloader;

    invoke-virtual {v1, p1}, Landroid/net/connectivity/org/chromium/base/library_loader/NativeLibraryPreloader;->loadLibrary(Ljava/lang/String;)I

    .line 574
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader;->mLibraryPreloaderCalled:Z
    :try_end_17
    .catchall {:try_start_7 .. :try_end_17} :catchall_1d

    .line 576
    :cond_17
    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/TraceEvent;->close()V

    .line 577
    .end local v0    # "te":Landroid/net/connectivity/org/chromium/base/TraceEvent;
    :cond_1c
    return-void

    .line 569
    .restart local v0    # "te":Landroid/net/connectivity/org/chromium/base/TraceEvent;
    :catchall_1d
    move-exception v1

    if-eqz v0, :cond_28

    :try_start_20
    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/TraceEvent;->close()V
    :try_end_23
    .catchall {:try_start_20 .. :try_end_23} :catchall_24

    goto :goto_28

    :catchall_24
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_28
    :goto_28
    throw v1
.end method

.method public static blacklist setBackgroundThreadPoolEnabledOnNextRuns(Z)V
    .registers 3
    .param p0, "enabled"    # Z

    .line 673
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/ContextUtils;->getAppSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 674
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "background_thread_pool_enabled"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 675
    return-void
.end method

.method public static blacklist setBrowserProcessStartupBlockedForTesting()V
    .registers 1

    .line 913
    const/4 v0, 0x1

    sput-boolean v0, Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader;->sBrowserStartupBlockedForTesting:Z

    .line 914
    return-void
.end method

.method public static blacklist setEnvForNative()V
    .registers 3

    .line 869
    sget-boolean v0, Landroid/net/connectivity/org/chromium/build/BuildConfig;->IS_UBSAN:Z

    if-eqz v0, :cond_15

    .line 872
    :try_start_4
    const-string v0, "UBSAN_OPTIONS"

    const-string v1, "print_stacktrace=1 stack_trace_format=\'#%n pc %o %m\' handle_segv=0 handle_sigbus=0 handle_sigfpe=0"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/system/Os;->setenv(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_c} :catch_d

    .line 879
    goto :goto_15

    .line 877
    :catch_d
    move-exception v0

    .line 878
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "LibraryLoader"

    const-string v2, "failed to set UBSAN_OPTIONS"

    invoke-static {v1, v2, v0}, Landroid/net/connectivity/org/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 881
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_15
    :goto_15
    return-void
.end method

.method protected static blacklist setLibrariesLoadedForNativeTests()V
    .registers 4

    .line 893
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader;->getInstance()Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader;

    move-result-object v0

    .line 894
    .local v0, "self":Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader;
    const/4 v1, 0x2

    iput v1, v0, Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader;->mLoadState:I

    .line 895
    const/4 v2, 0x1

    iput-boolean v2, v0, Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader;->mInitialized:Z

    .line 896
    sget-boolean v3, Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader;->sEnableStateForTesting:Z

    if-eqz v3, :cond_12

    .line 897
    iput-boolean v2, v0, Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader;->mInitializedForTesting:Z

    .line 898
    iput v1, v0, Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader;->mLoadStateForTesting:I

    .line 900
    :cond_12
    return-void
.end method

.method public static blacklist setLibraryLoaderForTesting(Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader;)V
    .registers 3
    .param p0, "loader"    # Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 856
    sget-object v0, Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader;->sInstance:Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader;

    .line 857
    .local v0, "oldValue":Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader;
    sput-object p0, Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader;->sInstance:Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader;

    .line 858
    new-instance v1, Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader$$ExternalSyntheticLambda0;-><init>(Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader;)V

    invoke-static {v1}, Landroid/net/connectivity/org/chromium/base/ResettersForTesting;->register(Ljava/lang/Runnable;)V

    .line 859
    return-void
.end method

.method public static blacklist setLoadFailedCallbackForTesting(Landroid/net/connectivity/org/chromium/base/Callback;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/connectivity/org/chromium/base/Callback<",
            "Ljava/lang/UnsatisfiedLinkError;",
            ">;)V"
        }
    .end annotation

    .line 908
    .local p0, "callback":Landroid/net/connectivity/org/chromium/base/Callback;, "Landroid/net/connectivity/org/chromium/base/Callback<Ljava/lang/UnsatisfiedLinkError;>;"
    sput-object p0, Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader;->sLoadFailedCallback:Landroid/net/connectivity/org/chromium/base/Callback;

    .line 909
    new-instance v0, Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v0}, Landroid/net/connectivity/org/chromium/base/ResettersForTesting;->register(Ljava/lang/Runnable;)V

    .line 910
    return-void
.end method

.method public static blacklist setOverrideNativeLibraryCannotBeLoadedForTesting()V
    .registers 1

    .line 903
    const/4 v0, 0x1

    sput-boolean v0, Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader;->sOverrideNativeLibraryCannotBeLoadedForTesting:Z

    .line 904
    new-instance v0, Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader$$ExternalSyntheticLambda2;-><init>()V

    invoke-static {v0}, Landroid/net/connectivity/org/chromium/base/ResettersForTesting;->register(Ljava/lang/Runnable;)V

    .line 905
    return-void
.end method

.method private blacklist useChromiumLinker()Z
    .registers 2

    .line 489
    iget-boolean v0, p0, Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader;->mUseChromiumLinker:Z

    return v0
.end method


# virtual methods
.method public blacklist assertCompatibleProcessType(I)V
    .registers 2
    .param p1, "libraryProcessType"    # I

    .line 798
    nop

    .line 799
    return-void
.end method

.method public blacklist ensureInitialized()V
    .registers 2

    .line 524
    invoke-virtual {p0}, Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 525
    :cond_7
    invoke-virtual {p0}, Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader;->ensureMainDexInitialized()V

    .line 526
    invoke-virtual {p0}, Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader;->loadNonMainDex()V

    .line 527
    return-void
.end method

.method public blacklist ensureMainDexInitialized()V
    .registers 4

    .line 540
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 542
    nop

    .line 543
    :try_start_4
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 542
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader;->loadMainDexAlreadyLocked(Landroid/content/pm/ApplicationInfo;Z)V

    .line 544
    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader;->initializeAlreadyLocked()V

    .line 545
    monitor-exit v0

    .line 546
    return-void

    .line 545
    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_4 .. :try_end_17} :catchall_15

    throw v1
.end method

.method public final blacklist getMediator()Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader$MultiProcessMediator;
    .registers 2

    .line 408
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader;->mMediator:Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader$MultiProcessMediator;

    return-object v0
.end method

.method public blacklist initialize()V
    .registers 3

    .line 657
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 658
    :try_start_3
    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader;->initializeAlreadyLocked()V

    .line 659
    monitor-exit v0

    .line 660
    return-void

    .line 659
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v1
.end method

.method public blacklist isInitialized()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 605
    iget-boolean v0, p0, Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader;->mInitialized:Z

    if-eqz v0, :cond_14

    invoke-virtual {p0}, Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_14

    sget-boolean v0, Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader;->sEnableStateForTesting:Z

    if-eqz v0, :cond_12

    iget-boolean v0, p0, Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader;->mInitializedForTesting:Z

    if-eqz v0, :cond_14

    :cond_12
    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    return v0
.end method

.method public blacklist isLoaded()Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 588
    iget v0, p0, Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader;->mLoadState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_f

    sget-boolean v0, Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader;->sEnableStateForTesting:Z

    if-eqz v0, :cond_d

    iget v0, p0, Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader;->mLoadStateForTesting:I

    if-ne v0, v1, :cond_f

    :cond_d
    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return v0
.end method

.method public blacklist isLoadedByZygote()Z
    .registers 3

    .line 513
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 514
    :try_start_3
    iget-boolean v1, p0, Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader;->mLoadedByZygote:Z

    monitor-exit v0

    return v1

    .line 515
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method protected blacklist loadMainDexAlreadyLocked(Landroid/content/pm/ApplicationInfo;Z)V
    .registers 11
    .param p1, "appInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "inZygote"    # Z

    .line 711
    iget v0, p0, Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader;->mLoadState:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_10

    .line 712
    sget-boolean v0, Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader;->sEnableStateForTesting:Z

    if-eqz v0, :cond_f

    iget v0, p0, Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader;->mLoadStateForTesting:I

    if-nez v0, :cond_f

    .line 713
    iput v1, p0, Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader;->mLoadStateForTesting:I

    .line 715
    :cond_f
    return-void

    .line 717
    :cond_10
    :try_start_10
    const-string v0, "LibraryLoader.loadMainDexAlreadyLocked"

    invoke-static {v0}, Landroid/net/connectivity/org/chromium/base/TraceEvent;->scoped(Ljava/lang/String;)Landroid/net/connectivity/org/chromium/base/TraceEvent;

    move-result-object v0
    :try_end_16
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_10 .. :try_end_16} :catch_73

    .line 718
    .local v0, "te":Landroid/net/connectivity/org/chromium/base/TraceEvent;
    nop

    .line 719
    nop

    .line 721
    :try_start_18
    new-instance v2, Landroid/net/connectivity/org/chromium/base/TimeUtils$UptimeMillisTimer;

    invoke-direct {v2}, Landroid/net/connectivity/org/chromium/base/TimeUtils$UptimeMillisTimer;-><init>()V

    .line 722
    .local v2, "uptimeTimer":Landroid/net/connectivity/org/chromium/base/TimeUtils$UptimeMillisTimer;
    new-instance v3, Landroid/net/connectivity/org/chromium/base/TimeUtils$CurrentThreadTimeMillisTimer;

    invoke-direct {v3}, Landroid/net/connectivity/org/chromium/base/TimeUtils$CurrentThreadTimeMillisTimer;-><init>()V

    .line 724
    .local v3, "threadTimeTimer":Landroid/net/connectivity/org/chromium/base/TimeUtils$CurrentThreadTimeMillisTimer;
    sget-boolean v4, Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader;->sOverrideNativeLibraryCannotBeLoadedForTesting:Z

    if-nez v4, :cond_61

    .line 728
    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader;->useChromiumLinker()Z

    move-result v4

    if-eqz v4, :cond_3a

    iget-boolean v4, p0, Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader;->mFallbackToSystemLinker:Z

    if-nez v4, :cond_3a

    .line 732
    nop

    .line 733
    sget-object v4, Landroid/net/connectivity/org/chromium/build/NativeLibraries;->LIBRARIES:[Ljava/lang/String;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    .line 734
    .local v4, "library":Ljava/lang/String;
    invoke-direct {p0, p1, v4}, Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader;->loadWithChromiumLinker(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)V

    .line 735
    .end local v4    # "library":Ljava/lang/String;
    goto :goto_3d

    .line 737
    :cond_3a
    invoke-direct {p0, p1, p2}, Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader;->loadWithSystemLinkerAlreadyLocked(Landroid/content/pm/ApplicationInfo;Z)V

    .line 740
    :goto_3d
    invoke-virtual {v2}, Landroid/net/connectivity/org/chromium/base/TimeUtils$UptimeMillisTimer;->getElapsedMillis()J

    move-result-wide v4

    .line 743
    .local v4, "loadTimeMs":J
    iput v1, p0, Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader;->mLoadState:I

    .line 744
    sget-boolean v6, Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader;->sEnableStateForTesting:Z

    if-eqz v6, :cond_49

    .line 745
    iput v1, p0, Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader;->mLoadStateForTesting:I

    .line 748
    :cond_49
    invoke-virtual {p0}, Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader;->getMediator()Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader$MultiProcessMediator;

    move-result-object v1

    invoke-static {v1, v4, v5}, Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader$MultiProcessMediator;->-$$Nest$mrecordLoadTimeHistogram(Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader$MultiProcessMediator;J)V

    .line 749
    invoke-virtual {p0}, Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader;->getMediator()Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader$MultiProcessMediator;

    move-result-object v1

    invoke-virtual {v3}, Landroid/net/connectivity/org/chromium/base/TimeUtils$CurrentThreadTimeMillisTimer;->getElapsedMillis()J

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader$MultiProcessMediator;->recordLoadThreadTimeHistogram(J)V
    :try_end_5b
    .catchall {:try_start_18 .. :try_end_5b} :catchall_67

    .line 750
    .end local v2    # "uptimeTimer":Landroid/net/connectivity/org/chromium/base/TimeUtils$UptimeMillisTimer;
    .end local v3    # "threadTimeTimer":Landroid/net/connectivity/org/chromium/base/TimeUtils$CurrentThreadTimeMillisTimer;
    .end local v4    # "loadTimeMs":J
    if-eqz v0, :cond_60

    :try_start_5d
    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/TraceEvent;->close()V
    :try_end_60
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_5d .. :try_end_60} :catch_73

    .line 756
    .end local v0    # "te":Landroid/net/connectivity/org/chromium/base/TraceEvent;
    :cond_60
    goto :goto_7d

    .line 725
    .restart local v0    # "te":Landroid/net/connectivity/org/chromium/base/TraceEvent;
    .restart local v2    # "uptimeTimer":Landroid/net/connectivity/org/chromium/base/TimeUtils$UptimeMillisTimer;
    .restart local v3    # "threadTimeTimer":Landroid/net/connectivity/org/chromium/base/TimeUtils$CurrentThreadTimeMillisTimer;
    :cond_61
    :try_start_61
    new-instance v1, Ljava/lang/UnsatisfiedLinkError;

    invoke-direct {v1}, Ljava/lang/UnsatisfiedLinkError;-><init>()V

    .end local v0    # "te":Landroid/net/connectivity/org/chromium/base/TraceEvent;
    .end local p0    # "this":Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader;
    .end local p1    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local p2    # "inZygote":Z
    throw v1
    :try_end_67
    .catchall {:try_start_61 .. :try_end_67} :catchall_67

    .line 717
    .end local v2    # "uptimeTimer":Landroid/net/connectivity/org/chromium/base/TimeUtils$UptimeMillisTimer;
    .end local v3    # "threadTimeTimer":Landroid/net/connectivity/org/chromium/base/TimeUtils$CurrentThreadTimeMillisTimer;
    .restart local v0    # "te":Landroid/net/connectivity/org/chromium/base/TraceEvent;
    .restart local p0    # "this":Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader;
    .restart local p1    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local p2    # "inZygote":Z
    :catchall_67
    move-exception v1

    if-eqz v0, :cond_72

    :try_start_6a
    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/TraceEvent;->close()V
    :try_end_6d
    .catchall {:try_start_6a .. :try_end_6d} :catchall_6e

    goto :goto_72

    :catchall_6e
    move-exception v2

    :try_start_6f
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "this":Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader;
    .end local p1    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local p2    # "inZygote":Z
    :cond_72
    :goto_72
    throw v1
    :try_end_73
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_6f .. :try_end_73} :catch_73

    .line 750
    .end local v0    # "te":Landroid/net/connectivity/org/chromium/base/TraceEvent;
    .restart local p0    # "this":Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader;
    .restart local p1    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local p2    # "inZygote":Z
    :catch_73
    move-exception v0

    .line 751
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    sget-object v1, Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader;->sLoadFailedCallback:Landroid/net/connectivity/org/chromium/base/Callback;

    if-eqz v1, :cond_7e

    .line 752
    sget-object v1, Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader;->sLoadFailedCallback:Landroid/net/connectivity/org/chromium/base/Callback;

    invoke-interface {v1, v0}, Landroid/net/connectivity/org/chromium/base/Callback;->onResult(Ljava/lang/Object;)V

    .line 757
    .end local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    :goto_7d
    return-void

    .line 754
    .restart local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    :cond_7e
    new-instance v1, Landroid/net/connectivity/org/chromium/base/library_loader/ProcessInitException;

    const/4 v2, 0x2

    invoke-direct {v1, v2, v0}, Landroid/net/connectivity/org/chromium/base/library_loader/ProcessInitException;-><init>(ILjava/lang/Throwable;)V

    throw v1
.end method

.method protected blacklist loadNonMainDex()V
    .registers 3

    .line 764
    const/4 v0, 0x2

    iput v0, p0, Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader;->mLoadState:I

    .line 765
    sget-boolean v1, Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader;->sEnableStateForTesting:Z

    if-eqz v1, :cond_9

    .line 766
    iput v0, p0, Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader;->mLoadStateForTesting:I

    .line 768
    :cond_9
    return-void
.end method

.method public blacklist loadNow()V
    .registers 2

    .line 614
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader;->loadNowOverrideApplicationContext(Landroid/content/Context;)V

    .line 615
    return-void
.end method

.method public blacklist loadNowInZygote(Landroid/content/pm/ApplicationInfo;)V
    .registers 4
    .param p1, "appInfo"    # Landroid/content/pm/ApplicationInfo;

    .line 643
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 644
    nop

    .line 645
    const/4 v1, 0x1

    :try_start_5
    invoke-virtual {p0, p1, v1}, Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader;->loadMainDexAlreadyLocked(Landroid/content/pm/ApplicationInfo;Z)V

    .line 646
    invoke-virtual {p0}, Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader;->loadNonMainDex()V

    .line 647
    iput-boolean v1, p0, Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader;->mLoadedByZygote:Z

    .line 648
    monitor-exit v0

    .line 649
    return-void

    .line 648
    :goto_f
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_11

    throw v1

    :catchall_11
    move-exception v1

    goto :goto_f
.end method

.method public blacklist loadNowOverrideApplicationContext(Landroid/content/Context;)V
    .registers 5
    .param p1, "appContext"    # Landroid/content/Context;

    .line 632
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 633
    :try_start_3
    iget v1, p0, Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader;->mLoadState:I

    if-eqz v1, :cond_16

    .line 634
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-ne p1, v1, :cond_e

    goto :goto_16

    .line 635
    :cond_e
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Attempt to load again from alternate context."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader;
    .end local p1    # "appContext":Landroid/content/Context;
    throw v1

    .line 637
    .restart local p0    # "this":Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader;
    .restart local p1    # "appContext":Landroid/content/Context;
    :cond_16
    :goto_16
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader;->loadMainDexAlreadyLocked(Landroid/content/pm/ApplicationInfo;Z)V

    .line 638
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_23

    .line 639
    invoke-virtual {p0}, Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader;->loadNonMainDex()V

    .line 640
    return-void

    .line 638
    :catchall_23
    move-exception v1

    :try_start_24
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_23

    throw v1
.end method

.method public blacklist preloadNow()V
    .registers 2

    .line 555
    nop

    .line 556
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 555
    invoke-virtual {p0, v0}, Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader;->preloadNowOverridePackageName(Ljava/lang/String;)V

    .line 557
    return-void
.end method

.method public blacklist preloadNowOverridePackageName(Ljava/lang/String;)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 561
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 562
    :try_start_3
    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader;->useChromiumLinker()Z

    move-result v1

    if-eqz v1, :cond_b

    monitor-exit v0

    return-void

    .line 563
    :cond_b
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader;->preloadAlreadyLocked(Ljava/lang/String;Z)V

    .line 564
    monitor-exit v0

    .line 565
    return-void

    .line 564
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v1
.end method

.method public blacklist resetForTesting()V
    .registers 2

    .line 619
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader;->mLoadStateForTesting:I

    .line 620
    iput-boolean v0, p0, Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader;->mInitializedForTesting:Z

    .line 621
    const/4 v0, 0x1

    sput-boolean v0, Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader;->sEnableStateForTesting:Z

    .line 622
    return-void
.end method

.method public blacklist setLibraryProcessType(I)V
    .registers 5
    .param p1, "type"    # I

    .line 439
    nop

    .line 440
    iget v0, p0, Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader;->mLibraryProcessType:I

    if-ne p1, v0, :cond_6

    return-void

    .line 441
    :cond_6
    iget v0, p0, Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader;->mLibraryProcessType:I

    if-nez v0, :cond_d

    .line 447
    iput p1, p0, Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader;->mLibraryProcessType:I

    .line 448
    return-void

    .line 442
    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    iget v1, p0, Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader;->mLibraryProcessType:I

    .line 445
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    .line 443
    const-string v2, "Trying to change the LibraryProcessType from %d to %d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setLinkerImplementation(Z)V
    .registers 2
    .param p1, "useChromiumLinker"    # Z

    .line 475
    nop

    .line 476
    iput-boolean p1, p0, Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader;->mUseChromiumLinker:Z

    .line 478
    return-void
.end method

.method public blacklist setNativeLibraryPreloader(Landroid/net/connectivity/org/chromium/base/library_loader/NativeLibraryPreloader;)V
    .registers 4
    .param p1, "loader"    # Landroid/net/connectivity/org/chromium/base/library_loader/NativeLibraryPreloader;

    .line 459
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 460
    nop

    .line 461
    nop

    .line 462
    :try_start_5
    iput-object p1, p0, Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader;->mLibraryPreloader:Landroid/net/connectivity/org/chromium/base/library_loader/NativeLibraryPreloader;

    .line 463
    monitor-exit v0

    .line 464
    return-void

    .line 463
    :goto_9
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_b

    throw v1

    :catchall_b
    move-exception v1

    goto :goto_9
.end method

.method public blacklist switchCommandLineForWebView()V
    .registers 3

    .line 774
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 775
    :try_start_3
    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader;->ensureCommandLineSwitchedAlreadyLocked()V

    .line 776
    monitor-exit v0

    .line 777
    return-void

    .line 776
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v1
.end method
