.class public final Landroid/safetycenter/SafetyCenterManager;
.super Ljava/lang/Object;
.source "SafetyCenterManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/safetycenter/SafetyCenterManager$ListenerDelegate;,
        Landroid/safetycenter/SafetyCenterManager$OnSafetyCenterDataChangedListener;,
        Landroid/safetycenter/SafetyCenterManager$RefreshReason;,
        Landroid/safetycenter/SafetyCenterManager$RefreshRequestType;
    }
.end annotation


# static fields
.field public static final whitelist ACTION_REFRESH_SAFETY_SOURCES:Ljava/lang/String; = "android.safetycenter.action.REFRESH_SAFETY_SOURCES"

.field public static final whitelist ACTION_SAFETY_CENTER_ENABLED_CHANGED:Ljava/lang/String; = "android.safetycenter.action.SAFETY_CENTER_ENABLED_CHANGED"

.field public static final whitelist EXTRA_REFRESH_REQUEST_TYPE_FETCH_FRESH_DATA:I = 0x0

.field public static final whitelist EXTRA_REFRESH_REQUEST_TYPE_GET_DATA:I = 0x1

.field public static final whitelist EXTRA_REFRESH_SAFETY_SOURCES_BROADCAST_ID:Ljava/lang/String; = "android.safetycenter.extra.REFRESH_SAFETY_SOURCES_BROADCAST_ID"

.field public static final whitelist EXTRA_REFRESH_SAFETY_SOURCES_REQUEST_TYPE:Ljava/lang/String; = "android.safetycenter.extra.REFRESH_SAFETY_SOURCES_REQUEST_TYPE"

.field public static final whitelist EXTRA_REFRESH_SAFETY_SOURCE_IDS:Ljava/lang/String; = "android.safetycenter.extra.REFRESH_SAFETY_SOURCE_IDS"

.field public static final whitelist EXTRA_SAFETY_SOURCES_GROUP_ID:Ljava/lang/String; = "android.safetycenter.extra.SAFETY_SOURCES_GROUP_ID"

.field public static final whitelist EXTRA_SAFETY_SOURCE_ID:Ljava/lang/String; = "android.safetycenter.extra.SAFETY_SOURCE_ID"

.field public static final whitelist EXTRA_SAFETY_SOURCE_ISSUE_ID:Ljava/lang/String; = "android.safetycenter.extra.SAFETY_SOURCE_ISSUE_ID"

.field public static final whitelist EXTRA_SAFETY_SOURCE_USER_HANDLE:Ljava/lang/String; = "android.safetycenter.extra.SAFETY_SOURCE_USER_HANDLE"

.field public static final whitelist REFRESH_REASON_DEVICE_LOCALE_CHANGE:I = 0x190

.field public static final whitelist REFRESH_REASON_DEVICE_REBOOT:I = 0x12c

.field public static final whitelist REFRESH_REASON_OTHER:I = 0x258

.field public static final whitelist REFRESH_REASON_PAGE_OPEN:I = 0x64

.field public static final whitelist REFRESH_REASON_PERIODIC:I = 0x2bc

.field public static final whitelist REFRESH_REASON_RESCAN_BUTTON_CLICK:I = 0xc8

.field public static final whitelist REFRESH_REASON_SAFETY_CENTER_ENABLED:I = 0x1f4


# instance fields
.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mListenersLock:Ljava/lang/Object;

.field private final blacklist mListenersToDelegates:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/safetycenter/SafetyCenterManager$OnSafetyCenterDataChangedListener;",
            "Landroid/safetycenter/SafetyCenterManager$ListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mService:Landroid/safetycenter/ISafetyCenterManager;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;Landroid/safetycenter/ISafetyCenterManager;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/safetycenter/ISafetyCenterManager;

    .line 329
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 313
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/safetycenter/SafetyCenterManager;->mListenersLock:Ljava/lang/Object;

    .line 315
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/safetycenter/SafetyCenterManager;->mListenersToDelegates:Ljava/util/Map;

    .line 330
    iput-object p1, p0, Landroid/safetycenter/SafetyCenterManager;->mContext:Landroid/content/Context;

    .line 331
    iput-object p2, p0, Landroid/safetycenter/SafetyCenterManager;->mService:Landroid/safetycenter/ISafetyCenterManager;

    .line 332
    return-void
.end method


# virtual methods
.method public whitelist addOnSafetyCenterDataChangedListener(Ljava/util/concurrent/Executor;Landroid/safetycenter/SafetyCenterManager$OnSafetyCenterDataChangedListener;)V
    .registers 8
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "listener"    # Landroid/safetycenter/SafetyCenterManager$OnSafetyCenterDataChangedListener;

    .line 522
    const-string v0, "executor cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 523
    const-string v0, "listener cannot be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 525
    iget-object v0, p0, Landroid/safetycenter/SafetyCenterManager;->mListenersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 526
    :try_start_d
    iget-object v1, p0, Landroid/safetycenter/SafetyCenterManager;->mListenersToDelegates:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    monitor-exit v0

    return-void

    .line 528
    :cond_17
    new-instance v1, Landroid/safetycenter/SafetyCenterManager$ListenerDelegate;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, v2}, Landroid/safetycenter/SafetyCenterManager$ListenerDelegate;-><init>(Ljava/util/concurrent/Executor;Landroid/safetycenter/SafetyCenterManager$OnSafetyCenterDataChangedListener;Landroid/safetycenter/SafetyCenterManager-IA;)V
    :try_end_1d
    .catchall {:try_start_d .. :try_end_1d} :catchall_41

    .line 530
    .local v1, "delegate":Landroid/safetycenter/SafetyCenterManager$ListenerDelegate;
    :try_start_1d
    iget-object v2, p0, Landroid/safetycenter/SafetyCenterManager;->mService:Landroid/safetycenter/ISafetyCenterManager;

    iget-object v3, p0, Landroid/safetycenter/SafetyCenterManager;->mContext:Landroid/content/Context;

    .line 531
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Landroid/safetycenter/SafetyCenterManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    .line 530
    invoke-interface {v2, v1, v3, v4}, Landroid/safetycenter/ISafetyCenterManager;->addOnSafetyCenterDataChangedListener(Landroid/safetycenter/IOnSafetyCenterDataChangedListener;Ljava/lang/String;I)V
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_32} :catch_3b
    .catchall {:try_start_1d .. :try_end_32} :catchall_41

    .line 534
    nop

    .line 535
    :try_start_33
    iget-object v2, p0, Landroid/safetycenter/SafetyCenterManager;->mListenersToDelegates:Ljava/util/Map;

    invoke-interface {v2, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 536
    nop

    .end local v1    # "delegate":Landroid/safetycenter/SafetyCenterManager$ListenerDelegate;
    monitor-exit v0

    .line 537
    return-void

    .line 532
    .restart local v1    # "delegate":Landroid/safetycenter/SafetyCenterManager$ListenerDelegate;
    :catch_3b
    move-exception v2

    .line 533
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    .end local p0    # "this":Landroid/safetycenter/SafetyCenterManager;
    .end local p1    # "executor":Ljava/util/concurrent/Executor;
    .end local p2    # "listener":Landroid/safetycenter/SafetyCenterManager$OnSafetyCenterDataChangedListener;
    throw v3

    .line 536
    .end local v1    # "delegate":Landroid/safetycenter/SafetyCenterManager$ListenerDelegate;
    .end local v2    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/safetycenter/SafetyCenterManager;
    .restart local p1    # "executor":Ljava/util/concurrent/Executor;
    .restart local p2    # "listener":Landroid/safetycenter/SafetyCenterManager$OnSafetyCenterDataChangedListener;
    :catchall_41
    move-exception v1

    monitor-exit v0
    :try_end_43
    .catchall {:try_start_33 .. :try_end_43} :catchall_41

    throw v1
.end method

.method public whitelist clearAllSafetySourceDataForTests()V
    .registers 3

    .line 613
    :try_start_0
    iget-object v0, p0, Landroid/safetycenter/SafetyCenterManager;->mService:Landroid/safetycenter/ISafetyCenterManager;

    invoke-interface {v0}, Landroid/safetycenter/ISafetyCenterManager;->clearAllSafetySourceDataForTests()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 616
    nop

    .line 617
    return-void

    .line 614
    :catch_7
    move-exception v0

    .line 615
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist clearSafetyCenterConfigForTests()V
    .registers 3

    .line 654
    :try_start_0
    iget-object v0, p0, Landroid/safetycenter/SafetyCenterManager;->mService:Landroid/safetycenter/ISafetyCenterManager;

    invoke-interface {v0}, Landroid/safetycenter/ISafetyCenterManager;->clearSafetyCenterConfigForTests()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 657
    nop

    .line 658
    return-void

    .line 655
    :catch_7
    move-exception v0

    .line 656
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist dismissSafetyCenterIssue(Ljava/lang/String;)V
    .registers 4
    .param p1, "safetyCenterIssueId"    # Ljava/lang/String;

    .line 571
    const-string v0, "safetyCenterIssueId cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 574
    :try_start_5
    iget-object v0, p0, Landroid/safetycenter/SafetyCenterManager;->mService:Landroid/safetycenter/ISafetyCenterManager;

    iget-object v1, p0, Landroid/safetycenter/SafetyCenterManager;->mContext:Landroid/content/Context;

    .line 575
    invoke-virtual {v1}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    .line 574
    invoke-interface {v0, p1, v1}, Landroid/safetycenter/ISafetyCenterManager;->dismissSafetyCenterIssue(Ljava/lang/String;I)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_14} :catch_16

    .line 578
    nop

    .line 579
    return-void

    .line 576
    :catch_16
    move-exception v0

    .line 577
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist executeSafetyCenterIssueAction(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "safetyCenterIssueId"    # Ljava/lang/String;
    .param p2, "safetyCenterIssueActionId"    # Ljava/lang/String;

    .line 591
    const-string v0, "safetyCenterIssueId cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 592
    const-string v0, "safetyCenterIssueActionId cannot be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 595
    :try_start_a
    iget-object v0, p0, Landroid/safetycenter/SafetyCenterManager;->mService:Landroid/safetycenter/ISafetyCenterManager;

    iget-object v1, p0, Landroid/safetycenter/SafetyCenterManager;->mContext:Landroid/content/Context;

    .line 598
    invoke-virtual {v1}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    .line 595
    invoke-interface {v0, p1, p2, v1}, Landroid/safetycenter/ISafetyCenterManager;->executeSafetyCenterIssueAction(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_19} :catch_1b

    .line 601
    nop

    .line 602
    return-void

    .line 599
    :catch_1b
    move-exception v0

    .line 600
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getSafetyCenterConfig()Landroid/safetycenter/config/SafetyCenterConfig;
    .registers 3

    .line 492
    :try_start_0
    iget-object v0, p0, Landroid/safetycenter/SafetyCenterManager;->mService:Landroid/safetycenter/ISafetyCenterManager;

    invoke-interface {v0}, Landroid/safetycenter/ISafetyCenterManager;->getSafetyCenterConfig()Landroid/safetycenter/config/SafetyCenterConfig;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 493
    :catch_7
    move-exception v0

    .line 494
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getSafetyCenterData()Landroid/safetycenter/SafetyCenterData;
    .registers 4

    .line 506
    :try_start_0
    iget-object v0, p0, Landroid/safetycenter/SafetyCenterManager;->mService:Landroid/safetycenter/ISafetyCenterManager;

    iget-object v1, p0, Landroid/safetycenter/SafetyCenterManager;->mContext:Landroid/content/Context;

    .line 507
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/safetycenter/SafetyCenterManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    .line 506
    invoke-interface {v0, v1, v2}, Landroid/safetycenter/ISafetyCenterManager;->getSafetyCenterData(Ljava/lang/String;I)Landroid/safetycenter/SafetyCenterData;

    move-result-object v0
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_16} :catch_17

    return-object v0

    .line 508
    :catch_17
    move-exception v0

    .line 509
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getSafetySourceData(Ljava/lang/String;)Landroid/safetycenter/SafetySourceData;
    .registers 5
    .param p1, "safetySourceId"    # Ljava/lang/String;

    .line 396
    const-string v0, "safetySourceId cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 399
    :try_start_5
    iget-object v0, p0, Landroid/safetycenter/SafetyCenterManager;->mService:Landroid/safetycenter/ISafetyCenterManager;

    iget-object v1, p0, Landroid/safetycenter/SafetyCenterManager;->mContext:Landroid/content/Context;

    .line 400
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/safetycenter/SafetyCenterManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    .line 399
    invoke-interface {v0, p1, v1, v2}, Landroid/safetycenter/ISafetyCenterManager;->getSafetySourceData(Ljava/lang/String;Ljava/lang/String;I)Landroid/safetycenter/SafetySourceData;

    move-result-object v0
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_1b} :catch_1c

    return-object v0

    .line 401
    :catch_1c
    move-exception v0

    .line 402
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist isSafetyCenterEnabled()Z
    .registers 3

    .line 343
    :try_start_0
    iget-object v0, p0, Landroid/safetycenter/SafetyCenterManager;->mService:Landroid/safetycenter/ISafetyCenterManager;

    invoke-interface {v0}, Landroid/safetycenter/ISafetyCenterManager;->isSafetyCenterEnabled()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 344
    :catch_7
    move-exception v0

    .line 345
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist refreshSafetySources(I)V
    .registers 4
    .param p1, "refreshReason"    # I

    .line 445
    :try_start_0
    iget-object v0, p0, Landroid/safetycenter/SafetyCenterManager;->mService:Landroid/safetycenter/ISafetyCenterManager;

    iget-object v1, p0, Landroid/safetycenter/SafetyCenterManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/safetycenter/ISafetyCenterManager;->refreshSafetySources(II)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_11

    .line 448
    nop

    .line 449
    return-void

    .line 446
    :catch_11
    move-exception v0

    .line 447
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist refreshSafetySources(ILjava/util/List;)V
    .registers 5
    .param p1, "refreshReason"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 472
    .local p2, "safetySourceIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Landroid/permission/jarjar/com/android/modules/utils/build/SdkLevel;->isAtLeastU()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 477
    const-string v0, "safetySourceIds cannot be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 480
    :try_start_b
    iget-object v0, p0, Landroid/safetycenter/SafetyCenterManager;->mService:Landroid/safetycenter/ISafetyCenterManager;

    iget-object v1, p0, Landroid/safetycenter/SafetyCenterManager;->mContext:Landroid/content/Context;

    .line 481
    invoke-virtual {v1}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    .line 480
    invoke-interface {v0, p1, v1, p2}, Landroid/safetycenter/ISafetyCenterManager;->refreshSpecificSafetySources(IILjava/util/List;)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_1a} :catch_1c

    .line 484
    nop

    .line 485
    return-void

    .line 482
    :catch_1c
    move-exception v0

    .line 483
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 473
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_22
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Method not supported on versions lower than UPSIDE_DOWN_CAKE"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist removeOnSafetyCenterDataChangedListener(Landroid/safetycenter/SafetyCenterManager$OnSafetyCenterDataChangedListener;)V
    .registers 6
    .param p1, "listener"    # Landroid/safetycenter/SafetyCenterManager$OnSafetyCenterDataChangedListener;

    .line 547
    const-string v0, "listener cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 549
    iget-object v0, p0, Landroid/safetycenter/SafetyCenterManager;->mListenersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 550
    :try_start_8
    iget-object v1, p0, Landroid/safetycenter/SafetyCenterManager;->mListenersToDelegates:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/safetycenter/SafetyCenterManager$ListenerDelegate;

    .line 551
    .local v1, "delegate":Landroid/safetycenter/SafetyCenterManager$ListenerDelegate;
    if-nez v1, :cond_14

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_8 .. :try_end_13} :catchall_35

    return-void

    .line 554
    :cond_14
    :try_start_14
    iget-object v2, p0, Landroid/safetycenter/SafetyCenterManager;->mService:Landroid/safetycenter/ISafetyCenterManager;

    iget-object v3, p0, Landroid/safetycenter/SafetyCenterManager;->mContext:Landroid/content/Context;

    .line 555
    invoke-virtual {v3}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    .line 554
    invoke-interface {v2, v1, v3}, Landroid/safetycenter/ISafetyCenterManager;->removeOnSafetyCenterDataChangedListener(Landroid/safetycenter/IOnSafetyCenterDataChangedListener;I)V
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_23} :catch_2f
    .catchall {:try_start_14 .. :try_end_23} :catchall_35

    .line 558
    nop

    .line 559
    :try_start_24
    invoke-virtual {v1}, Landroid/safetycenter/SafetyCenterManager$ListenerDelegate;->markAsRemoved()V

    .line 560
    iget-object v2, p0, Landroid/safetycenter/SafetyCenterManager;->mListenersToDelegates:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 561
    nop

    .end local v1    # "delegate":Landroid/safetycenter/SafetyCenterManager$ListenerDelegate;
    monitor-exit v0

    .line 562
    return-void

    .line 556
    .restart local v1    # "delegate":Landroid/safetycenter/SafetyCenterManager$ListenerDelegate;
    :catch_2f
    move-exception v2

    .line 557
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    .end local p0    # "this":Landroid/safetycenter/SafetyCenterManager;
    .end local p1    # "listener":Landroid/safetycenter/SafetyCenterManager$OnSafetyCenterDataChangedListener;
    throw v3

    .line 561
    .end local v1    # "delegate":Landroid/safetycenter/SafetyCenterManager$ListenerDelegate;
    .end local v2    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/safetycenter/SafetyCenterManager;
    .restart local p1    # "listener":Landroid/safetycenter/SafetyCenterManager$OnSafetyCenterDataChangedListener;
    :catchall_35
    move-exception v1

    monitor-exit v0
    :try_end_37
    .catchall {:try_start_24 .. :try_end_37} :catchall_35

    throw v1
.end method

.method public whitelist reportSafetySourceError(Ljava/lang/String;Landroid/safetycenter/SafetySourceErrorDetails;)V
    .registers 6
    .param p1, "safetySourceId"    # Ljava/lang/String;
    .param p2, "safetySourceErrorDetails"    # Landroid/safetycenter/SafetySourceErrorDetails;

    .line 419
    const-string v0, "safetySourceId cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 420
    const-string v0, "safetySourceErrorDetails cannot be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 423
    :try_start_a
    iget-object v0, p0, Landroid/safetycenter/SafetyCenterManager;->mService:Landroid/safetycenter/ISafetyCenterManager;

    iget-object v1, p0, Landroid/safetycenter/SafetyCenterManager;->mContext:Landroid/content/Context;

    .line 426
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/safetycenter/SafetyCenterManager;->mContext:Landroid/content/Context;

    .line 427
    invoke-virtual {v2}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    .line 423
    invoke-interface {v0, p1, p2, v1, v2}, Landroid/safetycenter/ISafetyCenterManager;->reportSafetySourceError(Ljava/lang/String;Landroid/safetycenter/SafetySourceErrorDetails;Ljava/lang/String;I)V
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_1f} :catch_21

    .line 430
    nop

    .line 431
    return-void

    .line 428
    :catch_21
    move-exception v0

    .line 429
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setSafetyCenterConfigForTests(Landroid/safetycenter/config/SafetyCenterConfig;)V
    .registers 4
    .param p1, "safetyCenterConfig"    # Landroid/safetycenter/config/SafetyCenterConfig;

    .line 632
    const-string v0, "safetyCenterConfig cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 635
    :try_start_5
    iget-object v0, p0, Landroid/safetycenter/SafetyCenterManager;->mService:Landroid/safetycenter/ISafetyCenterManager;

    invoke-interface {v0, p1}, Landroid/safetycenter/ISafetyCenterManager;->setSafetyCenterConfigForTests(Landroid/safetycenter/config/SafetyCenterConfig;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_c

    .line 638
    nop

    .line 639
    return-void

    .line 636
    :catch_c
    move-exception v0

    .line 637
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setSafetySourceData(Ljava/lang/String;Landroid/safetycenter/SafetySourceData;Landroid/safetycenter/SafetyEvent;)V
    .registers 11
    .param p1, "safetySourceId"    # Ljava/lang/String;
    .param p2, "safetySourceData"    # Landroid/safetycenter/SafetySourceData;
    .param p3, "safetyEvent"    # Landroid/safetycenter/SafetyEvent;

    .line 371
    const-string v0, "safetySourceId cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 372
    const-string v0, "safetyEvent cannot be null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 375
    :try_start_a
    iget-object v1, p0, Landroid/safetycenter/SafetyCenterManager;->mService:Landroid/safetycenter/ISafetyCenterManager;

    iget-object v0, p0, Landroid/safetycenter/SafetyCenterManager;->mContext:Landroid/content/Context;

    .line 379
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Landroid/safetycenter/SafetyCenterManager;->mContext:Landroid/content/Context;

    .line 380
    invoke-virtual {v0}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v6
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_1c} :catch_27

    .line 375
    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    .end local p1    # "safetySourceId":Ljava/lang/String;
    .end local p2    # "safetySourceData":Landroid/safetycenter/SafetySourceData;
    .end local p3    # "safetyEvent":Landroid/safetycenter/SafetyEvent;
    .local v2, "safetySourceId":Ljava/lang/String;
    .local v3, "safetySourceData":Landroid/safetycenter/SafetySourceData;
    .local v4, "safetyEvent":Landroid/safetycenter/SafetyEvent;
    :try_start_1f
    invoke-interface/range {v1 .. v6}, Landroid/safetycenter/ISafetyCenterManager;->setSafetySourceData(Ljava/lang/String;Landroid/safetycenter/SafetySourceData;Landroid/safetycenter/SafetyEvent;Ljava/lang/String;I)V
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_22} :catch_24

    .line 383
    nop

    .line 384
    return-void

    .line 381
    :catch_24
    move-exception v0

    move-object p1, v0

    goto :goto_2c

    .end local v2    # "safetySourceId":Ljava/lang/String;
    .end local v3    # "safetySourceData":Landroid/safetycenter/SafetySourceData;
    .end local v4    # "safetyEvent":Landroid/safetycenter/SafetyEvent;
    .restart local p1    # "safetySourceId":Ljava/lang/String;
    .restart local p2    # "safetySourceData":Landroid/safetycenter/SafetySourceData;
    .restart local p3    # "safetyEvent":Landroid/safetycenter/SafetyEvent;
    :catch_27
    move-exception v0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object p1, v0

    .line 382
    .end local p2    # "safetySourceData":Landroid/safetycenter/SafetySourceData;
    .end local p3    # "safetyEvent":Landroid/safetycenter/SafetyEvent;
    .restart local v2    # "safetySourceId":Ljava/lang/String;
    .restart local v3    # "safetySourceData":Landroid/safetycenter/SafetySourceData;
    .restart local v4    # "safetyEvent":Landroid/safetycenter/SafetyEvent;
    .local p1, "e":Landroid/os/RemoteException;
    :goto_2c
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p2

    throw p2
.end method
