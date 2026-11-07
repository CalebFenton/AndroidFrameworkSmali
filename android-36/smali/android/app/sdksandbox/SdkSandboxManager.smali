.class public final Landroid/app/sdksandbox/SdkSandboxManager;
.super Ljava/lang/Object;
.source "SdkSandboxManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/sdksandbox/SdkSandboxManager$TimeProvider;,
        Landroid/app/sdksandbox/SdkSandboxManager$SdkSandboxProcessDeathCallbackProxy;,
        Landroid/app/sdksandbox/SdkSandboxManager$SdkSandboxProcessDeathCallback;,
        Landroid/app/sdksandbox/SdkSandboxManager$LoadSdkReceiverProxy;,
        Landroid/app/sdksandbox/SdkSandboxManager$RequestSurfacePackageReceiverProxy;,
        Landroid/app/sdksandbox/SdkSandboxManager$SdkSandboxState;,
        Landroid/app/sdksandbox/SdkSandboxManager$RequestSurfacePackageErrorCode;,
        Landroid/app/sdksandbox/SdkSandboxManager$LoadSdkErrorCode;
    }
.end annotation


# static fields
.field public static final blacklist ACTION_START_SANDBOXED_ACTIVITY:Ljava/lang/String; = "android.app.sdksandbox.action.START_SANDBOXED_ACTIVITY"
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final whitelist EXTRA_DISPLAY_ID:Ljava/lang/String; = "android.app.sdksandbox.extra.DISPLAY_ID"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist EXTRA_HEIGHT_IN_PIXELS:Ljava/lang/String; = "android.app.sdksandbox.extra.HEIGHT_IN_PIXELS"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist EXTRA_HOST_TOKEN:Ljava/lang/String; = "android.app.sdksandbox.extra.HOST_TOKEN"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist EXTRA_SANDBOXED_ACTIVITY_HANDLER:Ljava/lang/String; = "android.app.sdksandbox.extra.SANDBOXED_ACTIVITY_HANDLER"

.field public static final blacklist EXTRA_SANDBOXED_ACTIVITY_INITIATION_TIME:Ljava/lang/String; = "android.app.sdksandbox.extra.EXTRA_SANDBOXED_ACTIVITY_INITIATION_TIME"

.field public static final whitelist EXTRA_SURFACE_PACKAGE:Ljava/lang/String; = "android.app.sdksandbox.extra.SURFACE_PACKAGE"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist EXTRA_WIDTH_IN_PIXELS:Ljava/lang/String; = "android.app.sdksandbox.extra.WIDTH_IN_PIXELS"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist LOAD_SDK_ALREADY_LOADED:I = 0x65

.field public static final whitelist LOAD_SDK_INTERNAL_ERROR:I = 0x1f4

.field public static final whitelist LOAD_SDK_NOT_FOUND:I = 0x64

.field public static final whitelist LOAD_SDK_SDK_DEFINED_ERROR:I = 0x66

.field public static final whitelist LOAD_SDK_SDK_SANDBOX_DISABLED:I = 0x67

.field public static final whitelist REQUEST_SURFACE_PACKAGE_INTERNAL_ERROR:I = 0x2bc

.field public static final whitelist REQUEST_SURFACE_PACKAGE_SDK_NOT_LOADED:I = 0x2bd

.field public static final whitelist SDK_SANDBOX_PROCESS_NOT_AVAILABLE:I = 0x1f7

.field public static final whitelist SDK_SANDBOX_SERVICE:Ljava/lang/String; = "sdk_sandbox"

.field public static final whitelist SDK_SANDBOX_STATE_DISABLED:I = 0x0

.field public static final whitelist SDK_SANDBOX_STATE_ENABLED_PROCESS_ISOLATION:I = 0x2

.field private static final blacklist TAG:Ljava/lang/String; = "SdkSandboxManager"


# instance fields
.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mLifecycleCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/sdksandbox/SdkSandboxManager$SdkSandboxProcessDeathCallbackProxy;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mService:Landroid/app/sdksandbox/ISdkSandboxManager;

.field private final blacklist mSyncManager:Landroid/app/sdksandbox/SharedPreferencesSyncManager;

.field private blacklist mTimeProvider:Landroid/app/sdksandbox/SdkSandboxManager$TimeProvider;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;Landroid/app/sdksandbox/ISdkSandboxManager;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "binder"    # Landroid/app/sdksandbox/ISdkSandboxManager;

    .line 311
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 304
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/sdksandbox/SdkSandboxManager;->mLifecycleCallbacks:Ljava/util/ArrayList;

    .line 312
    const-string v0, "context should not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Landroid/app/sdksandbox/SdkSandboxManager;->mContext:Landroid/content/Context;

    .line 313
    const-string v0, "binder should not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/sdksandbox/ISdkSandboxManager;

    iput-object v0, p0, Landroid/app/sdksandbox/SdkSandboxManager;->mService:Landroid/app/sdksandbox/ISdkSandboxManager;

    .line 315
    invoke-static {p1, p2}, Landroid/app/sdksandbox/SharedPreferencesSyncManager;->getInstance(Landroid/content/Context;Landroid/app/sdksandbox/ISdkSandboxManager;)Landroid/app/sdksandbox/SharedPreferencesSyncManager;

    move-result-object v0

    iput-object v0, p0, Landroid/app/sdksandbox/SdkSandboxManager;->mSyncManager:Landroid/app/sdksandbox/SharedPreferencesSyncManager;

    .line 316
    new-instance v0, Landroid/app/sdksandbox/SdkSandboxManager$TimeProvider;

    invoke-direct {v0}, Landroid/app/sdksandbox/SdkSandboxManager$TimeProvider;-><init>()V

    iput-object v0, p0, Landroid/app/sdksandbox/SdkSandboxManager;->mTimeProvider:Landroid/app/sdksandbox/SdkSandboxManager$TimeProvider;

    .line 317
    return-void
.end method

.method public static blacklist getResultCodeForLoadSdkException(Landroid/app/sdksandbox/LoadSdkException;)I
    .registers 3
    .param p0, "exception"    # Landroid/app/sdksandbox/LoadSdkException;

    .line 767
    invoke-virtual {p0}, Landroid/app/sdksandbox/LoadSdkException;->getLoadSdkErrorCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_32

    .line 775
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected load SDK exception code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 777
    invoke-virtual {p0}, Landroid/app/sdksandbox/LoadSdkException;->getLoadSdkErrorCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 775
    const-string v1, "SdkSandboxManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 778
    const/4 v0, 0x0

    goto :goto_30

    .line 773
    :sswitch_25
    const/4 v0, 0x6

    goto :goto_30

    .line 772
    :sswitch_27
    const/4 v0, 0x5

    goto :goto_30

    .line 771
    :sswitch_29
    const/4 v0, 0x4

    goto :goto_30

    .line 770
    :sswitch_2b
    const/4 v0, 0x3

    goto :goto_30

    .line 769
    :sswitch_2d
    const/4 v0, 0x2

    goto :goto_30

    .line 768
    :sswitch_2f
    const/4 v0, 0x1

    .line 767
    :goto_30
    return v0

    nop

    :sswitch_data_32
    .sparse-switch
        0x64 -> :sswitch_2f
        0x65 -> :sswitch_2d
        0x66 -> :sswitch_2b
        0x67 -> :sswitch_29
        0x1f4 -> :sswitch_27
        0x1f7 -> :sswitch_25
    .end sparse-switch
.end method

.method public static whitelist getSdkSandboxState()I
    .registers 1

    .line 322
    const/4 v0, 0x2

    return v0
.end method

.method private blacklist logStartSdkSandboxActivityLatency(J)V
    .registers 7
    .param p1, "timeEventStarted"    # J

    .line 733
    :try_start_0
    iget-object v0, p0, Landroid/app/sdksandbox/SdkSandboxManager;->mService:Landroid/app/sdksandbox/ISdkSandboxManager;

    iget-object v1, p0, Landroid/app/sdksandbox/SdkSandboxManager;->mTimeProvider:Landroid/app/sdksandbox/SdkSandboxManager$TimeProvider;

    .line 736
    invoke-virtual {v1}, Landroid/app/sdksandbox/SdkSandboxManager$TimeProvider;->elapsedRealtime()J

    move-result-wide v1

    sub-long/2addr v1, p1

    long-to-int v1, v1

    .line 733
    const/4 v2, 0x5

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3, v1}, Landroid/app/sdksandbox/ISdkSandboxManager;->logSandboxActivityApiLatency(III)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_11

    .line 739
    nop

    .line 740
    return-void

    .line 737
    :catch_11
    move-exception v0

    .line 738
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method


# virtual methods
.method public whitelist addSdkSandboxProcessDeathCallback(Ljava/util/concurrent/Executor;Landroid/app/sdksandbox/SdkSandboxManager$SdkSandboxProcessDeathCallback;)V
    .registers 8
    .param p1, "callbackExecutor"    # Ljava/util/concurrent/Executor;
    .param p2, "callback"    # Landroid/app/sdksandbox/SdkSandboxManager$SdkSandboxProcessDeathCallback;

    .line 367
    const-string v0, "callbackExecutor should not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 368
    const-string v0, "callback should not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 370
    iget-object v0, p0, Landroid/app/sdksandbox/SdkSandboxManager;->mLifecycleCallbacks:Ljava/util/ArrayList;

    monitor-enter v0

    .line 371
    :try_start_d
    new-instance v1, Landroid/app/sdksandbox/SdkSandboxManager$SdkSandboxProcessDeathCallbackProxy;

    invoke-direct {v1, p1, p2}, Landroid/app/sdksandbox/SdkSandboxManager$SdkSandboxProcessDeathCallbackProxy;-><init>(Ljava/util/concurrent/Executor;Landroid/app/sdksandbox/SdkSandboxManager$SdkSandboxProcessDeathCallback;)V

    .line 373
    .local v1, "callbackProxy":Landroid/app/sdksandbox/SdkSandboxManager$SdkSandboxProcessDeathCallbackProxy;
    new-instance v2, Landroid/app/sdksandbox/SandboxLatencyInfo;

    const/16 v3, 0x8

    invoke-direct {v2, v3}, Landroid/app/sdksandbox/SandboxLatencyInfo;-><init>(I)V

    .line 376
    .local v2, "sandboxLatencyInfo":Landroid/app/sdksandbox/SandboxLatencyInfo;
    iget-object v3, p0, Landroid/app/sdksandbox/SdkSandboxManager;->mTimeProvider:Landroid/app/sdksandbox/SdkSandboxManager$TimeProvider;

    invoke-virtual {v3}, Landroid/app/sdksandbox/SdkSandboxManager$TimeProvider;->elapsedRealtime()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Landroid/app/sdksandbox/SandboxLatencyInfo;->setTimeAppCalledSystemServer(J)V
    :try_end_22
    .catchall {:try_start_d .. :try_end_22} :catchall_3c

    .line 378
    :try_start_22
    iget-object v3, p0, Landroid/app/sdksandbox/SdkSandboxManager;->mService:Landroid/app/sdksandbox/ISdkSandboxManager;

    iget-object v4, p0, Landroid/app/sdksandbox/SdkSandboxManager;->mContext:Landroid/content/Context;

    .line 379
    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 378
    invoke-interface {v3, v4, v2, v1}, Landroid/app/sdksandbox/ISdkSandboxManager;->addSdkSandboxProcessDeathCallback(Ljava/lang/String;Landroid/app/sdksandbox/SandboxLatencyInfo;Landroid/app/sdksandbox/ISdkSandboxProcessDeathCallback;)V
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_2d} :catch_36
    .catchall {:try_start_22 .. :try_end_2d} :catchall_3c

    .line 382
    nop

    .line 383
    :try_start_2e
    iget-object v3, p0, Landroid/app/sdksandbox/SdkSandboxManager;->mLifecycleCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 384
    nop

    .end local v1    # "callbackProxy":Landroid/app/sdksandbox/SdkSandboxManager$SdkSandboxProcessDeathCallbackProxy;
    .end local v2    # "sandboxLatencyInfo":Landroid/app/sdksandbox/SandboxLatencyInfo;
    monitor-exit v0

    .line 385
    return-void

    .line 380
    .restart local v1    # "callbackProxy":Landroid/app/sdksandbox/SdkSandboxManager$SdkSandboxProcessDeathCallbackProxy;
    .restart local v2    # "sandboxLatencyInfo":Landroid/app/sdksandbox/SandboxLatencyInfo;
    :catch_36
    move-exception v3

    .line 381
    .local v3, "e":Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v4

    .end local p0    # "this":Landroid/app/sdksandbox/SdkSandboxManager;
    .end local p1    # "callbackExecutor":Ljava/util/concurrent/Executor;
    .end local p2    # "callback":Landroid/app/sdksandbox/SdkSandboxManager$SdkSandboxProcessDeathCallback;
    throw v4

    .line 384
    .end local v1    # "callbackProxy":Landroid/app/sdksandbox/SdkSandboxManager$SdkSandboxProcessDeathCallbackProxy;
    .end local v2    # "sandboxLatencyInfo":Landroid/app/sdksandbox/SandboxLatencyInfo;
    .end local v3    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/app/sdksandbox/SdkSandboxManager;
    .restart local p1    # "callbackExecutor":Ljava/util/concurrent/Executor;
    .restart local p2    # "callback":Landroid/app/sdksandbox/SdkSandboxManager$SdkSandboxProcessDeathCallback;
    :catchall_3c
    move-exception v1

    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_2e .. :try_end_3e} :catchall_3c

    throw v1
.end method

.method public whitelist addSyncedSharedPreferencesKeys(Ljava/util/Set;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 819
    .local p1, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v0, "keys cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 820
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 821
    .local v1, "key":Ljava/lang/String;
    if-eqz v1, :cond_18

    .line 824
    .end local v1    # "key":Ljava/lang/String;
    goto :goto_9

    .line 822
    .restart local v1    # "key":Ljava/lang/String;
    :cond_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "keys cannot contain null"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 825
    .end local v1    # "key":Ljava/lang/String;
    :cond_20
    iget-object v0, p0, Landroid/app/sdksandbox/SdkSandboxManager;->mSyncManager:Landroid/app/sdksandbox/SharedPreferencesSyncManager;

    invoke-virtual {v0, p1}, Landroid/app/sdksandbox/SharedPreferencesSyncManager;->addSharedPreferencesSyncKeys(Ljava/util/Set;)V

    .line 826
    return-void
.end method

.method public blacklist getAdServicesManager()Landroid/os/IBinder;
    .registers 3

    .line 961
    :try_start_0
    iget-object v0, p0, Landroid/app/sdksandbox/SdkSandboxManager;->mService:Landroid/app/sdksandbox/ISdkSandboxManager;

    invoke-interface {v0}, Landroid/app/sdksandbox/ISdkSandboxManager;->getAdServicesManager()Landroid/os/IBinder;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 962
    :catch_7
    move-exception v0

    .line 963
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getAppOwnedSdkSandboxInterfaces()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/sdksandbox/AppOwnedSdkSandboxInterface;",
            ">;"
        }
    .end annotation

    .line 471
    new-instance v0, Landroid/app/sdksandbox/SandboxLatencyInfo;

    const/16 v1, 0xd

    invoke-direct {v0, v1}, Landroid/app/sdksandbox/SandboxLatencyInfo;-><init>(I)V

    .line 474
    .local v0, "sandboxLatencyInfo":Landroid/app/sdksandbox/SandboxLatencyInfo;
    iget-object v1, p0, Landroid/app/sdksandbox/SdkSandboxManager;->mTimeProvider:Landroid/app/sdksandbox/SdkSandboxManager$TimeProvider;

    invoke-virtual {v1}, Landroid/app/sdksandbox/SdkSandboxManager$TimeProvider;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/app/sdksandbox/SandboxLatencyInfo;->setTimeAppCalledSystemServer(J)V

    .line 476
    :try_start_10
    iget-object v1, p0, Landroid/app/sdksandbox/SdkSandboxManager;->mService:Landroid/app/sdksandbox/ISdkSandboxManager;

    iget-object v2, p0, Landroid/app/sdksandbox/SdkSandboxManager;->mContext:Landroid/content/Context;

    .line 477
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 476
    invoke-interface {v1, v2, v0}, Landroid/app/sdksandbox/ISdkSandboxManager;->getAppOwnedSdkSandboxInterfaces(Ljava/lang/String;Landroid/app/sdksandbox/SandboxLatencyInfo;)Ljava/util/List;

    move-result-object v1
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_1c} :catch_1d

    return-object v1

    .line 478
    :catch_1d
    move-exception v1

    .line 479
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public whitelist getSandboxedSdks()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/sdksandbox/SandboxedSdk;",
            ">;"
        }
    .end annotation

    .line 549
    new-instance v0, Landroid/app/sdksandbox/SandboxLatencyInfo;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Landroid/app/sdksandbox/SandboxLatencyInfo;-><init>(I)V

    .line 551
    .local v0, "sandboxLatencyInfo":Landroid/app/sdksandbox/SandboxLatencyInfo;
    iget-object v1, p0, Landroid/app/sdksandbox/SdkSandboxManager;->mTimeProvider:Landroid/app/sdksandbox/SdkSandboxManager$TimeProvider;

    invoke-virtual {v1}, Landroid/app/sdksandbox/SdkSandboxManager$TimeProvider;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/app/sdksandbox/SandboxLatencyInfo;->setTimeAppCalledSystemServer(J)V

    .line 553
    :try_start_f
    iget-object v1, p0, Landroid/app/sdksandbox/SdkSandboxManager;->mService:Landroid/app/sdksandbox/ISdkSandboxManager;

    iget-object v2, p0, Landroid/app/sdksandbox/SdkSandboxManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Landroid/app/sdksandbox/ISdkSandboxManager;->getSandboxedSdks(Ljava/lang/String;Landroid/app/sdksandbox/SandboxLatencyInfo;)Ljava/util/List;

    move-result-object v1
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_1b} :catch_1c

    return-object v1

    .line 554
    :catch_1c
    move-exception v1

    .line 555
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public whitelist getSyncedSharedPreferencesKeys()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 851
    iget-object v0, p0, Landroid/app/sdksandbox/SdkSandboxManager;->mSyncManager:Landroid/app/sdksandbox/SharedPreferencesSyncManager;

    invoke-virtual {v0}, Landroid/app/sdksandbox/SharedPreferencesSyncManager;->getSharedPreferencesSyncKeys()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public blacklist isSdkSandboxServiceRunning()Z
    .registers 3

    .line 333
    :try_start_0
    iget-object v0, p0, Landroid/app/sdksandbox/SdkSandboxManager;->mService:Landroid/app/sdksandbox/ISdkSandboxManager;

    iget-object v1, p0, Landroid/app/sdksandbox/SdkSandboxManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/app/sdksandbox/ISdkSandboxManager;->isSdkSandboxServiceRunning(Ljava/lang/String;)Z

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return v0

    .line 334
    :catch_d
    move-exception v0

    .line 335
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist loadSdk(Ljava/lang/String;Landroid/os/Bundle;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 14
    .param p1, "sdkName"    # Ljava/lang/String;
    .param p2, "params"    # Landroid/os/Bundle;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Landroid/app/sdksandbox/SandboxedSdk;",
            "Landroid/app/sdksandbox/LoadSdkException;",
            ">;)V"
        }
    .end annotation

    .line 512
    .local p4, "receiver":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Landroid/app/sdksandbox/SandboxedSdk;Landroid/app/sdksandbox/LoadSdkException;>;"
    const-string v0, "sdkName should not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 513
    const-string v0, "params should not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 514
    const-string v0, "executor should not be null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 515
    const-string v0, "receiver should not be null"

    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 516
    new-instance v0, Landroid/app/sdksandbox/SdkSandboxManager$LoadSdkReceiverProxy;

    iget-object v1, p0, Landroid/app/sdksandbox/SdkSandboxManager;->mService:Landroid/app/sdksandbox/ISdkSandboxManager;

    invoke-direct {v0, p3, p4, v1}, Landroid/app/sdksandbox/SdkSandboxManager$LoadSdkReceiverProxy;-><init>(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;Landroid/app/sdksandbox/ISdkSandboxManager;)V

    move-object v8, v0

    .line 521
    .local v8, "callbackProxy":Landroid/app/sdksandbox/SdkSandboxManager$LoadSdkReceiverProxy;
    invoke-static {}, Landroid/app/sdksandbox/SdkLevel;->isAtLeastU()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 522
    iget-object v0, p0, Landroid/app/sdksandbox/SdkSandboxManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getProcessToken()Landroid/os/IBinder;

    move-result-object v0

    move-object v4, v0

    .local v0, "appProcessToken":Landroid/os/IBinder;
    goto :goto_2c

    .line 524
    .end local v0    # "appProcessToken":Landroid/os/IBinder;
    :cond_2a
    const/4 v0, 0x0

    move-object v4, v0

    .line 527
    .local v4, "appProcessToken":Landroid/os/IBinder;
    :goto_2c
    new-instance v6, Landroid/app/sdksandbox/SandboxLatencyInfo;

    const/4 v0, 0x1

    invoke-direct {v6, v0}, Landroid/app/sdksandbox/SandboxLatencyInfo;-><init>(I)V

    .line 529
    .local v6, "sandboxLatencyInfo":Landroid/app/sdksandbox/SandboxLatencyInfo;
    iget-object v0, p0, Landroid/app/sdksandbox/SdkSandboxManager;->mTimeProvider:Landroid/app/sdksandbox/SdkSandboxManager$TimeProvider;

    invoke-virtual {v0}, Landroid/app/sdksandbox/SdkSandboxManager$TimeProvider;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {v6, v0, v1}, Landroid/app/sdksandbox/SandboxLatencyInfo;->setTimeAppCalledSystemServer(J)V

    .line 531
    :try_start_3b
    iget-object v2, p0, Landroid/app/sdksandbox/SdkSandboxManager;->mService:Landroid/app/sdksandbox/ISdkSandboxManager;

    iget-object v0, p0, Landroid/app/sdksandbox/SdkSandboxManager;->mContext:Landroid/content/Context;

    .line 532
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3
    :try_end_43
    .catch Landroid/os/RemoteException; {:try_start_3b .. :try_end_43} :catch_4d

    .line 531
    move-object v5, p1

    move-object v7, p2

    .end local p1    # "sdkName":Ljava/lang/String;
    .end local p2    # "params":Landroid/os/Bundle;
    .local v5, "sdkName":Ljava/lang/String;
    .local v7, "params":Landroid/os/Bundle;
    :try_start_45
    invoke-interface/range {v2 .. v8}, Landroid/app/sdksandbox/ISdkSandboxManager;->loadSdk(Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;Landroid/app/sdksandbox/SandboxLatencyInfo;Landroid/os/Bundle;Landroid/app/sdksandbox/ILoadSdkCallback;)V
    :try_end_48
    .catch Landroid/os/RemoteException; {:try_start_45 .. :try_end_48} :catch_4a

    .line 540
    nop

    .line 541
    return-void

    .line 538
    :catch_4a
    move-exception v0

    move-object p1, v0

    goto :goto_51

    .end local v5    # "sdkName":Ljava/lang/String;
    .end local v7    # "params":Landroid/os/Bundle;
    .restart local p1    # "sdkName":Ljava/lang/String;
    .restart local p2    # "params":Landroid/os/Bundle;
    :catch_4d
    move-exception v0

    move-object v5, p1

    move-object v7, p2

    move-object p1, v0

    .line 539
    .end local p2    # "params":Landroid/os/Bundle;
    .restart local v5    # "sdkName":Ljava/lang/String;
    .restart local v7    # "params":Landroid/os/Bundle;
    .local p1, "e":Landroid/os/RemoteException;
    :goto_51
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p2

    throw p2
.end method

.method public whitelist registerAppOwnedSdkSandboxInterface(Landroid/app/sdksandbox/AppOwnedSdkSandboxInterface;)V
    .registers 5
    .param p1, "appOwnedSdkSandboxInterface"    # Landroid/app/sdksandbox/AppOwnedSdkSandboxInterface;

    .line 434
    new-instance v0, Landroid/app/sdksandbox/SandboxLatencyInfo;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Landroid/app/sdksandbox/SandboxLatencyInfo;-><init>(I)V

    .line 437
    .local v0, "sandboxLatencyInfo":Landroid/app/sdksandbox/SandboxLatencyInfo;
    iget-object v1, p0, Landroid/app/sdksandbox/SdkSandboxManager;->mTimeProvider:Landroid/app/sdksandbox/SdkSandboxManager$TimeProvider;

    invoke-virtual {v1}, Landroid/app/sdksandbox/SdkSandboxManager$TimeProvider;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/app/sdksandbox/SandboxLatencyInfo;->setTimeAppCalledSystemServer(J)V

    .line 439
    :try_start_10
    iget-object v1, p0, Landroid/app/sdksandbox/SdkSandboxManager;->mService:Landroid/app/sdksandbox/ISdkSandboxManager;

    iget-object v2, p0, Landroid/app/sdksandbox/SdkSandboxManager;->mContext:Landroid/content/Context;

    .line 440
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 439
    invoke-interface {v1, v2, p1, v0}, Landroid/app/sdksandbox/ISdkSandboxManager;->registerAppOwnedSdkSandboxInterface(Ljava/lang/String;Landroid/app/sdksandbox/AppOwnedSdkSandboxInterface;Landroid/app/sdksandbox/SandboxLatencyInfo;)V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_1b} :catch_1d

    .line 443
    nop

    .line 444
    return-void

    .line 441
    :catch_1d
    move-exception v1

    .line 442
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public whitelist removeSdkSandboxProcessDeathCallback(Landroid/app/sdksandbox/SdkSandboxManager$SdkSandboxProcessDeathCallback;)V
    .registers 8
    .param p1, "callback"    # Landroid/app/sdksandbox/SdkSandboxManager$SdkSandboxProcessDeathCallback;

    .line 398
    const-string v0, "callback should not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 399
    iget-object v0, p0, Landroid/app/sdksandbox/SdkSandboxManager;->mLifecycleCallbacks:Ljava/util/ArrayList;

    monitor-enter v0

    .line 400
    :try_start_8
    iget-object v1, p0, Landroid/app/sdksandbox/SdkSandboxManager;->mLifecycleCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_10
    if-ltz v1, :cond_49

    .line 401
    iget-object v2, p0, Landroid/app/sdksandbox/SdkSandboxManager;->mLifecycleCallbacks:Ljava/util/ArrayList;

    .line 402
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/sdksandbox/SdkSandboxManager$SdkSandboxProcessDeathCallbackProxy;

    .line 403
    .local v2, "callbackProxy":Landroid/app/sdksandbox/SdkSandboxManager$SdkSandboxProcessDeathCallbackProxy;
    iget-object v3, v2, Landroid/app/sdksandbox/SdkSandboxManager$SdkSandboxProcessDeathCallbackProxy;->callback:Landroid/app/sdksandbox/SdkSandboxManager$SdkSandboxProcessDeathCallback;

    if-ne v3, p1, :cond_46

    .line 404
    new-instance v3, Landroid/app/sdksandbox/SandboxLatencyInfo;

    const/16 v4, 0x9

    invoke-direct {v3, v4}, Landroid/app/sdksandbox/SandboxLatencyInfo;-><init>(I)V

    .line 408
    .local v3, "sandboxLatencyInfo":Landroid/app/sdksandbox/SandboxLatencyInfo;
    iget-object v4, p0, Landroid/app/sdksandbox/SdkSandboxManager;->mTimeProvider:Landroid/app/sdksandbox/SdkSandboxManager$TimeProvider;

    .line 409
    invoke-virtual {v4}, Landroid/app/sdksandbox/SdkSandboxManager$TimeProvider;->elapsedRealtime()J

    move-result-wide v4

    .line 408
    invoke-virtual {v3, v4, v5}, Landroid/app/sdksandbox/SandboxLatencyInfo;->setTimeAppCalledSystemServer(J)V
    :try_end_2e
    .catchall {:try_start_8 .. :try_end_2e} :catchall_4b

    .line 411
    :try_start_2e
    iget-object v4, p0, Landroid/app/sdksandbox/SdkSandboxManager;->mService:Landroid/app/sdksandbox/ISdkSandboxManager;

    iget-object v5, p0, Landroid/app/sdksandbox/SdkSandboxManager;->mContext:Landroid/content/Context;

    .line 412
    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 411
    invoke-interface {v4, v5, v3, v2}, Landroid/app/sdksandbox/ISdkSandboxManager;->removeSdkSandboxProcessDeathCallback(Ljava/lang/String;Landroid/app/sdksandbox/SandboxLatencyInfo;Landroid/app/sdksandbox/ISdkSandboxProcessDeathCallback;)V
    :try_end_39
    .catch Landroid/os/RemoteException; {:try_start_2e .. :try_end_39} :catch_40
    .catchall {:try_start_2e .. :try_end_39} :catchall_4b

    .line 415
    nop

    .line 416
    :try_start_3a
    iget-object v4, p0, Landroid/app/sdksandbox/SdkSandboxManager;->mLifecycleCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_46

    .line 413
    :catch_40
    move-exception v4

    .line 414
    .local v4, "e":Landroid/os/RemoteException;
    invoke-virtual {v4}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v5

    .end local p0    # "this":Landroid/app/sdksandbox/SdkSandboxManager;
    .end local p1    # "callback":Landroid/app/sdksandbox/SdkSandboxManager$SdkSandboxProcessDeathCallback;
    throw v5

    .line 400
    .end local v2    # "callbackProxy":Landroid/app/sdksandbox/SdkSandboxManager$SdkSandboxProcessDeathCallbackProxy;
    .end local v3    # "sandboxLatencyInfo":Landroid/app/sdksandbox/SandboxLatencyInfo;
    .end local v4    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/app/sdksandbox/SdkSandboxManager;
    .restart local p1    # "callback":Landroid/app/sdksandbox/SdkSandboxManager$SdkSandboxProcessDeathCallback;
    :cond_46
    :goto_46
    add-int/lit8 v1, v1, -0x1

    goto :goto_10

    .line 419
    .end local v1    # "i":I
    :cond_49
    monitor-exit v0

    .line 420
    return-void

    .line 419
    :catchall_4b
    move-exception v1

    monitor-exit v0
    :try_end_4d
    .catchall {:try_start_3a .. :try_end_4d} :catchall_4b

    throw v1
.end method

.method public whitelist removeSyncedSharedPreferencesKeys(Ljava/util/Set;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 837
    .local p1, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 838
    .local v1, "key":Ljava/lang/String;
    if-eqz v1, :cond_13

    .line 841
    .end local v1    # "key":Ljava/lang/String;
    goto :goto_4

    .line 839
    .restart local v1    # "key":Ljava/lang/String;
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "keys cannot contain null"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 842
    .end local v1    # "key":Ljava/lang/String;
    :cond_1b
    iget-object v0, p0, Landroid/app/sdksandbox/SdkSandboxManager;->mSyncManager:Landroid/app/sdksandbox/SharedPreferencesSyncManager;

    invoke-virtual {v0, p1}, Landroid/app/sdksandbox/SharedPreferencesSyncManager;->removeSharedPreferencesSyncKeys(Ljava/util/Set;)V

    .line 843
    return-void
.end method

.method public whitelist requestSurfacePackage(Ljava/lang/String;Landroid/os/Bundle;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 18
    .param p1, "sdkName"    # Ljava/lang/String;
    .param p2, "params"    # Landroid/os/Bundle;
    .param p3, "callbackExecutor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Landroid/os/Bundle;",
            "Landroid/app/sdksandbox/RequestSurfacePackageException;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 623
    .local p4, "receiver":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Landroid/os/Bundle;Landroid/app/sdksandbox/RequestSurfacePackageException;>;"
    move-object v9, p2

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    const-string v0, "sdkName should not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 624
    const-string v0, "params should not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 625
    const-string v0, "callbackExecutor should not be null"

    invoke-static {v11, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 626
    const-string v0, "receiver should not be null"

    invoke-static {v12, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 628
    :try_start_19
    const-string v0, "android.app.sdksandbox.extra.WIDTH_IN_PIXELS"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 629
    .local v6, "width":I
    if-lez v6, :cond_76

    .line 636
    const-string v0, "android.app.sdksandbox.extra.HEIGHT_IN_PIXELS"

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 637
    .local v7, "height":I
    if-lez v7, :cond_6e

    .line 644
    const-string v0, "android.app.sdksandbox.extra.DISPLAY_ID"

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 645
    .local v5, "displayId":I
    if-ltz v5, :cond_66

    .line 652
    const-string v0, "android.app.sdksandbox.extra.HOST_TOKEN"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    .line 653
    .local v4, "hostToken":Landroid/os/IBinder;
    if-eqz v4, :cond_5e

    .line 660
    new-instance v8, Landroid/app/sdksandbox/SandboxLatencyInfo;

    const/4 v0, 0x3

    invoke-direct {v8, v0}, Landroid/app/sdksandbox/SandboxLatencyInfo;-><init>(I)V

    .line 662
    .local v8, "sandboxLatencyInfo":Landroid/app/sdksandbox/SandboxLatencyInfo;
    iget-object v0, p0, Landroid/app/sdksandbox/SdkSandboxManager;->mTimeProvider:Landroid/app/sdksandbox/SdkSandboxManager$TimeProvider;

    invoke-virtual {v0}, Landroid/app/sdksandbox/SdkSandboxManager$TimeProvider;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {v8, v1, v2}, Landroid/app/sdksandbox/SandboxLatencyInfo;->setTimeAppCalledSystemServer(J)V

    .line 664
    new-instance v10, Landroid/app/sdksandbox/SdkSandboxManager$RequestSurfacePackageReceiverProxy;

    iget-object v0, p0, Landroid/app/sdksandbox/SdkSandboxManager;->mService:Landroid/app/sdksandbox/ISdkSandboxManager;

    invoke-direct {v10, v11, v12, v0}, Landroid/app/sdksandbox/SdkSandboxManager$RequestSurfacePackageReceiverProxy;-><init>(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;Landroid/app/sdksandbox/ISdkSandboxManager;)V

    .line 667
    .local v10, "callbackProxy":Landroid/app/sdksandbox/SdkSandboxManager$RequestSurfacePackageReceiverProxy;
    iget-object v1, p0, Landroid/app/sdksandbox/SdkSandboxManager;->mService:Landroid/app/sdksandbox/ISdkSandboxManager;

    iget-object v0, p0, Landroid/app/sdksandbox/SdkSandboxManager;->mContext:Landroid/content/Context;

    .line 668
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 667
    move-object v3, p1

    invoke-interface/range {v1 .. v10}, Landroid/app/sdksandbox/ISdkSandboxManager;->requestSurfacePackage(Ljava/lang/String;Ljava/lang/String;Landroid/os/IBinder;IIILandroid/app/sdksandbox/SandboxLatencyInfo;Landroid/os/Bundle;Landroid/app/sdksandbox/IRequestSurfacePackageCallback;)V

    .line 679
    .end local v4    # "hostToken":Landroid/os/IBinder;
    .end local v5    # "displayId":I
    .end local v6    # "width":I
    .end local v7    # "height":I
    .end local v8    # "sandboxLatencyInfo":Landroid/app/sdksandbox/SandboxLatencyInfo;
    .end local v10    # "callbackProxy":Landroid/app/sdksandbox/SdkSandboxManager$RequestSurfacePackageReceiverProxy;
    nop

    .line 680
    return-void

    .line 654
    .restart local v4    # "hostToken":Landroid/os/IBinder;
    .restart local v5    # "displayId":I
    .restart local v6    # "width":I
    .restart local v7    # "height":I
    :cond_5e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Field params should have the entry for the key (android.app.sdksandbox.extra.HOST_TOKEN) with not null IBinder value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/app/sdksandbox/SdkSandboxManager;
    .end local p1    # "sdkName":Ljava/lang/String;
    .end local p2    # "params":Landroid/os/Bundle;
    .end local p3    # "callbackExecutor":Ljava/util/concurrent/Executor;
    .end local p4    # "receiver":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Landroid/os/Bundle;Landroid/app/sdksandbox/RequestSurfacePackageException;>;"
    throw v0

    .line 646
    .end local v4    # "hostToken":Landroid/os/IBinder;
    .restart local p0    # "this":Landroid/app/sdksandbox/SdkSandboxManager;
    .restart local p1    # "sdkName":Ljava/lang/String;
    .restart local p2    # "params":Landroid/os/Bundle;
    .restart local p3    # "callbackExecutor":Ljava/util/concurrent/Executor;
    .restart local p4    # "receiver":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Landroid/os/Bundle;Landroid/app/sdksandbox/RequestSurfacePackageException;>;"
    :cond_66
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Field params should have the entry for the key (android.app.sdksandbox.extra.DISPLAY_ID) with integer >= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/app/sdksandbox/SdkSandboxManager;
    .end local p1    # "sdkName":Ljava/lang/String;
    .end local p2    # "params":Landroid/os/Bundle;
    .end local p3    # "callbackExecutor":Ljava/util/concurrent/Executor;
    .end local p4    # "receiver":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Landroid/os/Bundle;Landroid/app/sdksandbox/RequestSurfacePackageException;>;"
    throw v0

    .line 638
    .end local v5    # "displayId":I
    .restart local p0    # "this":Landroid/app/sdksandbox/SdkSandboxManager;
    .restart local p1    # "sdkName":Ljava/lang/String;
    .restart local p2    # "params":Landroid/os/Bundle;
    .restart local p3    # "callbackExecutor":Ljava/util/concurrent/Executor;
    .restart local p4    # "receiver":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Landroid/os/Bundle;Landroid/app/sdksandbox/RequestSurfacePackageException;>;"
    :cond_6e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Field params should have the entry for the key (android.app.sdksandbox.extra.HEIGHT_IN_PIXELS) with positive integer value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/app/sdksandbox/SdkSandboxManager;
    .end local p1    # "sdkName":Ljava/lang/String;
    .end local p2    # "params":Landroid/os/Bundle;
    .end local p3    # "callbackExecutor":Ljava/util/concurrent/Executor;
    .end local p4    # "receiver":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Landroid/os/Bundle;Landroid/app/sdksandbox/RequestSurfacePackageException;>;"
    throw v0

    .line 630
    .end local v7    # "height":I
    .restart local p0    # "this":Landroid/app/sdksandbox/SdkSandboxManager;
    .restart local p1    # "sdkName":Ljava/lang/String;
    .restart local p2    # "params":Landroid/os/Bundle;
    .restart local p3    # "callbackExecutor":Ljava/util/concurrent/Executor;
    .restart local p4    # "receiver":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Landroid/os/Bundle;Landroid/app/sdksandbox/RequestSurfacePackageException;>;"
    :cond_76
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Field params should have the entry for the key (android.app.sdksandbox.extra.WIDTH_IN_PIXELS) with positive integer value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/app/sdksandbox/SdkSandboxManager;
    .end local p1    # "sdkName":Ljava/lang/String;
    .end local p2    # "params":Landroid/os/Bundle;
    .end local p3    # "callbackExecutor":Ljava/util/concurrent/Executor;
    .end local p4    # "receiver":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Landroid/os/Bundle;Landroid/app/sdksandbox/RequestSurfacePackageException;>;"
    throw v0
    :try_end_7e
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_7e} :catch_7e

    .line 677
    .end local v6    # "width":I
    .restart local p0    # "this":Landroid/app/sdksandbox/SdkSandboxManager;
    .restart local p1    # "sdkName":Ljava/lang/String;
    .restart local p2    # "params":Landroid/os/Bundle;
    .restart local p3    # "callbackExecutor":Ljava/util/concurrent/Executor;
    .restart local p4    # "receiver":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Landroid/os/Bundle;Landroid/app/sdksandbox/RequestSurfacePackageException;>;"
    :catch_7e
    move-exception v0

    .line 678
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist startSdkSandboxActivity(Landroid/app/Activity;Landroid/os/IBinder;)V
    .registers 8
    .param p1, "fromActivity"    # Landroid/app/Activity;
    .param p2, "sdkActivityToken"    # Landroid/os/IBinder;

    .line 708
    invoke-static {}, Landroid/app/sdksandbox/SdkLevel;->isAtLeastU()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 712
    iget-object v0, p0, Landroid/app/sdksandbox/SdkSandboxManager;->mTimeProvider:Landroid/app/sdksandbox/SdkSandboxManager$TimeProvider;

    invoke-virtual {v0}, Landroid/app/sdksandbox/SdkSandboxManager$TimeProvider;->elapsedRealtime()J

    move-result-wide v0

    .line 714
    .local v0, "timeEventStarted":J
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 715
    .local v2, "intent":Landroid/content/Intent;
    const-string v3, "android.app.sdksandbox.action.START_SANDBOXED_ACTIVITY"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 716
    iget-object v3, p0, Landroid/app/sdksandbox/SdkSandboxManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/pm/PackageManager;->getSdkSandboxPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 718
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 719
    .local v3, "params":Landroid/os/Bundle;
    const-string v4, "android.app.sdksandbox.extra.SANDBOXED_ACTIVITY_HANDLER"

    invoke-virtual {v3, v4, p2}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 720
    const-string v4, "android.app.sdksandbox.extra.EXTRA_SANDBOXED_ACTIVITY_INITIATION_TIME"

    invoke-virtual {v3, v4, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 721
    invoke-virtual {v2, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 723
    invoke-virtual {p1, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 725
    invoke-direct {p0, v0, v1}, Landroid/app/sdksandbox/SdkSandboxManager;->logStartSdkSandboxActivityLatency(J)V

    .line 726
    return-void

    .line 709
    .end local v0    # "timeEventStarted":J
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "params":Landroid/os/Bundle;
    :cond_3c
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public blacklist stopSdkSandbox()V
    .registers 3

    .line 348
    :try_start_0
    iget-object v0, p0, Landroid/app/sdksandbox/SdkSandboxManager;->mService:Landroid/app/sdksandbox/ISdkSandboxManager;

    iget-object v1, p0, Landroid/app/sdksandbox/SdkSandboxManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/app/sdksandbox/ISdkSandboxManager;->stopSdkSandbox(Ljava/lang/String;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_d

    .line 351
    nop

    .line 352
    return-void

    .line 349
    :catch_d
    move-exception v0

    .line 350
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist unloadSdk(Ljava/lang/String;)V
    .registers 5
    .param p1, "sdkName"    # Ljava/lang/String;

    .line 572
    const-string v0, "sdkName should not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 574
    :try_start_5
    new-instance v0, Landroid/app/sdksandbox/SandboxLatencyInfo;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Landroid/app/sdksandbox/SandboxLatencyInfo;-><init>(I)V

    .line 576
    .local v0, "sandboxLatencyInfo":Landroid/app/sdksandbox/SandboxLatencyInfo;
    iget-object v1, p0, Landroid/app/sdksandbox/SdkSandboxManager;->mTimeProvider:Landroid/app/sdksandbox/SdkSandboxManager$TimeProvider;

    invoke-virtual {v1}, Landroid/app/sdksandbox/SdkSandboxManager$TimeProvider;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/app/sdksandbox/SandboxLatencyInfo;->setTimeAppCalledSystemServer(J)V

    .line 577
    iget-object v1, p0, Landroid/app/sdksandbox/SdkSandboxManager;->mService:Landroid/app/sdksandbox/ISdkSandboxManager;

    iget-object v2, p0, Landroid/app/sdksandbox/SdkSandboxManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1, v0}, Landroid/app/sdksandbox/ISdkSandboxManager;->unloadSdk(Ljava/lang/String;Ljava/lang/String;Landroid/app/sdksandbox/SandboxLatencyInfo;)V
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_1f} :catch_21

    .line 580
    .end local v0    # "sandboxLatencyInfo":Landroid/app/sdksandbox/SandboxLatencyInfo;
    nop

    .line 581
    return-void

    .line 578
    :catch_21
    move-exception v0

    .line 579
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist unregisterAppOwnedSdkSandboxInterface(Ljava/lang/String;)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;

    .line 452
    new-instance v0, Landroid/app/sdksandbox/SandboxLatencyInfo;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Landroid/app/sdksandbox/SandboxLatencyInfo;-><init>(I)V

    .line 455
    .local v0, "sandboxLatencyInfo":Landroid/app/sdksandbox/SandboxLatencyInfo;
    iget-object v1, p0, Landroid/app/sdksandbox/SdkSandboxManager;->mTimeProvider:Landroid/app/sdksandbox/SdkSandboxManager$TimeProvider;

    invoke-virtual {v1}, Landroid/app/sdksandbox/SdkSandboxManager$TimeProvider;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/app/sdksandbox/SandboxLatencyInfo;->setTimeAppCalledSystemServer(J)V

    .line 457
    :try_start_10
    iget-object v1, p0, Landroid/app/sdksandbox/SdkSandboxManager;->mService:Landroid/app/sdksandbox/ISdkSandboxManager;

    iget-object v2, p0, Landroid/app/sdksandbox/SdkSandboxManager;->mContext:Landroid/content/Context;

    .line 458
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 457
    invoke-interface {v1, v2, p1, v0}, Landroid/app/sdksandbox/ISdkSandboxManager;->unregisterAppOwnedSdkSandboxInterface(Ljava/lang/String;Ljava/lang/String;Landroid/app/sdksandbox/SandboxLatencyInfo;)V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_1b} :catch_1d

    .line 461
    nop

    .line 462
    return-void

    .line 459
    :catch_1d
    move-exception v1

    .line 460
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method
