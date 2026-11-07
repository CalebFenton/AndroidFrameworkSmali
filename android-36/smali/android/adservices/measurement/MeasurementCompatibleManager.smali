.class public Landroid/adservices/measurement/MeasurementCompatibleManager;
.super Ljava/lang/Object;
.source "MeasurementCompatibleManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/adservices/measurement/MeasurementCompatibleManager$MeasurementAdIdCallback;
    }
.end annotation


# static fields
.field private static final blacklist AD_ID_TIMEOUT_MS:J = 0x190L

.field private static final blacklist DEBUG_API_WARNING_MESSAGE:Ljava/lang/String; = "To enable debug api, include ACCESS_ADSERVICES_AD_ID permission and enable advertising ID under device settings"


# instance fields
.field private final blacklist mAdIdExecutor:Ljava/util/concurrent/Executor;

.field private blacklist mAdIdManager:Landroid/adservices/adid/AdIdManager;

.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mServiceBinder:Lcom/android/adservices/ServiceBinder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/adservices/ServiceBinder<",
            "Landroid/adservices/measurement/IMeasurementService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic blacklist $r8$lambda$1WnCtKOFRzwXkqIkRU4xdUL8yyA(Landroid/adservices/measurement/MeasurementCompatibleManager;Landroid/adservices/measurement/RegistrationRequest$Builder;Landroid/adservices/measurement/IMeasurementService;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;ZLjava/lang/String;)V
    .registers 7

    invoke-direct/range {p0 .. p6}, Landroid/adservices/measurement/MeasurementCompatibleManager;->lambda$registerSource$1(Landroid/adservices/measurement/RegistrationRequest$Builder;Landroid/adservices/measurement/IMeasurementService;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;ZLjava/lang/String;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$QbuVCJSL1aHrGEdTNV4PHsunrjU(Landroid/adservices/measurement/MeasurementCompatibleManager;Landroid/adservices/measurement/WebSourceRegistrationRequestInternal$Builder;Landroid/adservices/measurement/IMeasurementService;Ljava/util/concurrent/Executor;Landroid/adservices/common/CallerMetadata;Landroid/adservices/measurement/IMeasurementCallback;Landroid/os/OutcomeReceiver;ZLjava/lang/String;)V
    .registers 9

    invoke-direct/range {p0 .. p8}, Landroid/adservices/measurement/MeasurementCompatibleManager;->lambda$registerWebSource$4(Landroid/adservices/measurement/WebSourceRegistrationRequestInternal$Builder;Landroid/adservices/measurement/IMeasurementService;Ljava/util/concurrent/Executor;Landroid/adservices/common/CallerMetadata;Landroid/adservices/measurement/IMeasurementCallback;Landroid/os/OutcomeReceiver;ZLjava/lang/String;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$V3D8Nwb28oGwrvtdQHeB1kbnvpw(Landroid/adservices/measurement/MeasurementCompatibleManager;Landroid/adservices/measurement/RegistrationRequest$Builder;Landroid/adservices/measurement/IMeasurementService;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;ZLjava/lang/String;)V
    .registers 7

    invoke-direct/range {p0 .. p6}, Landroid/adservices/measurement/MeasurementCompatibleManager;->lambda$registerTrigger$8(Landroid/adservices/measurement/RegistrationRequest$Builder;Landroid/adservices/measurement/IMeasurementService;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;ZLjava/lang/String;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$sxoF79PAtCQjeHxWTXNWeanjB24(Landroid/adservices/measurement/MeasurementCompatibleManager;Landroid/adservices/measurement/WebTriggerRegistrationRequestInternal$Builder;Landroid/adservices/measurement/IMeasurementService;Ljava/util/concurrent/Executor;Landroid/adservices/common/CallerMetadata;Landroid/adservices/measurement/IMeasurementCallback;Landroid/os/OutcomeReceiver;ZLjava/lang/String;)V
    .registers 9

    invoke-direct/range {p0 .. p8}, Landroid/adservices/measurement/MeasurementCompatibleManager;->lambda$registerWebTrigger$6(Landroid/adservices/measurement/WebTriggerRegistrationRequestInternal$Builder;Landroid/adservices/measurement/IMeasurementService;Ljava/util/concurrent/Executor;Landroid/adservices/common/CallerMetadata;Landroid/adservices/measurement/IMeasurementCallback;Landroid/os/OutcomeReceiver;ZLjava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$misAdIdPermissionEnabled(Landroid/adservices/measurement/MeasurementCompatibleManager;Landroid/adservices/adid/AdId;)Z
    .registers 2

    invoke-direct {p0, p1}, Landroid/adservices/measurement/MeasurementCompatibleManager;->isAdIdPermissionEnabled(Landroid/adservices/adid/AdId;)Z

    move-result p0

    return p0
.end method

.method private constructor blacklist <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Landroid/adservices/measurement/MeasurementCompatibleManager;->mAdIdExecutor:Ljava/util/concurrent/Executor;

    .line 102
    iput-object p1, p0, Landroid/adservices/measurement/MeasurementCompatibleManager;->mContext:Landroid/content/Context;

    .line 103
    new-instance v0, Landroid/adservices/measurement/MeasurementCompatibleManager$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Landroid/adservices/measurement/MeasurementCompatibleManager$$ExternalSyntheticLambda4;-><init>()V

    .line 104
    const-string v1, "android.adservices.MEASUREMENT_SERVICE"

    invoke-static {p1, v1, v0}, Lcom/android/adservices/ServiceBinder;->getServiceBinder(Landroid/content/Context;Ljava/lang/String;Ljava/util/function/Function;)Lcom/android/adservices/ServiceBinder;

    move-result-object v0

    iput-object v0, p0, Landroid/adservices/measurement/MeasurementCompatibleManager;->mServiceBinder:Lcom/android/adservices/ServiceBinder;

    .line 108
    new-instance v0, Landroid/adservices/adid/AdIdManager;

    invoke-direct {v0, p1}, Landroid/adservices/adid/AdIdManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/adservices/measurement/MeasurementCompatibleManager;->mAdIdManager:Landroid/adservices/adid/AdIdManager;

    .line 109
    return-void
.end method

.method private blacklist deleteRegistrations(Landroid/adservices/measurement/DeletionParam;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 7
    .param p1, "deletionParam"    # Landroid/adservices/measurement/DeletionParam;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/adservices/measurement/DeletionParam;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Ljava/lang/Object;",
            "Ljava/lang/Exception;",
            ">;)V"
        }
    .end annotation

    .line 529
    .local p3, "callback":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Ljava/lang/Object;Ljava/lang/Exception;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 530
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 531
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 532
    invoke-direct {p0, p2, p3}, Landroid/adservices/measurement/MeasurementCompatibleManager;->getServiceWrapper(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)Landroid/adservices/measurement/IMeasurementService;

    move-result-object v0

    .line 534
    .local v0, "service":Landroid/adservices/measurement/IMeasurementService;
    if-nez v0, :cond_15

    .line 536
    const-string v1, "Measurement service not found"

    invoke-static {v1}, Lcom/android/adservices/LogUtil;->d(Ljava/lang/String;)I

    .line 537
    return-void

    .line 541
    :cond_15
    nop

    .line 543
    :try_start_16
    invoke-direct {p0}, Landroid/adservices/measurement/MeasurementCompatibleManager;->generateCallerMetadataWithCurrentTime()Landroid/adservices/common/CallerMetadata;

    move-result-object v1

    new-instance v2, Landroid/adservices/measurement/MeasurementCompatibleManager$5;

    invoke-direct {v2, p0, p2, p3}, Landroid/adservices/measurement/MeasurementCompatibleManager$5;-><init>(Landroid/adservices/measurement/MeasurementCompatibleManager;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    .line 541
    invoke-interface {v0, p1, v1, v2}, Landroid/adservices/measurement/IMeasurementService;->deleteRegistrations(Landroid/adservices/measurement/DeletionParam;Landroid/adservices/common/CallerMetadata;Landroid/adservices/measurement/IMeasurementCallback;)V
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_22} :catch_23

    .line 562
    goto :goto_31

    .line 559
    :catch_23
    move-exception v1

    .line 560
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "RemoteException"

    invoke-static {v1, v2}, Lcom/android/adservices/LogUtil;->e(Ljava/lang/Throwable;Ljava/lang/String;)I

    .line 561
    new-instance v2, Landroid/adservices/measurement/MeasurementCompatibleManager$$ExternalSyntheticLambda11;

    invoke-direct {v2, p3, v1}, Landroid/adservices/measurement/MeasurementCompatibleManager$$ExternalSyntheticLambda11;-><init>(Landroid/os/OutcomeReceiver;Landroid/os/RemoteException;)V

    invoke-interface {p2, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 563
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_31
    return-void
.end method

.method private blacklist generateCallerMetadataWithCurrentTime()Landroid/adservices/common/CallerMetadata;
    .registers 4

    .line 674
    new-instance v0, Landroid/adservices/common/CallerMetadata$Builder;

    invoke-direct {v0}, Landroid/adservices/common/CallerMetadata$Builder;-><init>()V

    .line 675
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/adservices/common/CallerMetadata$Builder;->setBinderElapsedTimestamp(J)Landroid/adservices/common/CallerMetadata$Builder;

    move-result-object v0

    .line 676
    invoke-virtual {v0}, Landroid/adservices/common/CallerMetadata$Builder;->build()Landroid/adservices/common/CallerMetadata;

    move-result-object v0

    .line 674
    return-object v0
.end method

.method public static blacklist get(Landroid/content/Context;)Landroid/adservices/measurement/MeasurementCompatibleManager;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 81
    new-instance v0, Landroid/adservices/measurement/MeasurementCompatibleManager;

    invoke-direct {v0, p0}, Landroid/adservices/measurement/MeasurementCompatibleManager;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static blacklist get(Landroid/content/Context;Landroid/adservices/adid/AdIdManager;)Landroid/adservices/measurement/MeasurementCompatibleManager;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "adIdManager"    # Landroid/adservices/adid/AdIdManager;

    .line 91
    invoke-static {p0}, Landroid/adservices/measurement/MeasurementCompatibleManager;->get(Landroid/content/Context;)Landroid/adservices/measurement/MeasurementCompatibleManager;

    move-result-object v0

    .line 92
    .local v0, "measurementManager":Landroid/adservices/measurement/MeasurementCompatibleManager;
    iput-object p1, v0, Landroid/adservices/measurement/MeasurementCompatibleManager;->mAdIdManager:Landroid/adservices/adid/AdIdManager;

    .line 93
    return-object v0
.end method

.method private blacklist getAdId(Landroid/adservices/measurement/MeasurementCompatibleManager$MeasurementAdIdCallback;)V
    .registers 10
    .param p1, "measurementAdIdCallback"    # Landroid/adservices/measurement/MeasurementCompatibleManager$MeasurementAdIdCallback;

    .line 708
    const-string v0, "MeasurementCompatibleManager#getAdId"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 709
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 710
    .local v0, "countDownLatch":Ljava/util/concurrent/CountDownLatch;
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 711
    .local v2, "isAdIdEnabled":Ljava/util/concurrent/atomic/AtomicBoolean;
    new-instance v3, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v3}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 712
    .local v3, "adIdValue":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Ljava/lang/String;>;"
    iget-object v4, p0, Landroid/adservices/measurement/MeasurementCompatibleManager;->mAdIdManager:Landroid/adservices/adid/AdIdManager;

    iget-object v5, p0, Landroid/adservices/measurement/MeasurementCompatibleManager;->mAdIdExecutor:Ljava/util/concurrent/Executor;

    new-instance v6, Landroid/adservices/measurement/MeasurementCompatibleManager$7;

    invoke-direct {v6, p0, v2, v3, v0}, Landroid/adservices/measurement/MeasurementCompatibleManager$7;-><init>(Landroid/adservices/measurement/MeasurementCompatibleManager;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v4, v5, v6}, Landroid/adservices/adid/AdIdManager;->getAdId(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    .line 738
    const/4 v4, 0x0

    .line 740
    .local v4, "timedOut":Z
    :try_start_22
    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v6, 0x190

    invoke-virtual {v0, v6, v7, v5}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v5
    :try_end_2a
    .catch Ljava/lang/InterruptedException; {:try_start_22 .. :try_end_2a} :catch_2d

    xor-int/2addr v1, v5

    move v4, v1

    .line 743
    goto :goto_36

    .line 741
    :catch_2d
    move-exception v1

    .line 742
    .local v1, "e":Ljava/lang/InterruptedException;
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "InterruptedException while waiting for AdId"

    invoke-static {v1, v6, v5}, Lcom/android/adservices/LogUtil;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 744
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :goto_36
    if-eqz v4, :cond_3d

    .line 745
    const-string v1, "AdId call timed out"

    invoke-static {v1}, Lcom/android/adservices/LogUtil;->w(Ljava/lang/String;)I

    .line 747
    :cond_3d
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 748
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {p1, v1, v5}, Landroid/adservices/measurement/MeasurementCompatibleManager$MeasurementAdIdCallback;->onAdIdCallback(ZLjava/lang/String;)V

    .line 749
    return-void
.end method

.method private blacklist getAppPackageName()Ljava/lang/String;
    .registers 3

    .line 659
    iget-object v0, p0, Landroid/adservices/measurement/MeasurementCompatibleManager;->mContext:Landroid/content/Context;

    .line 660
    invoke-static {v0}, Landroid/adservices/common/SandboxedSdkContextUtils;->getAsSandboxedSdkContext(Landroid/content/Context;)Landroid/app/sdksandbox/SandboxedSdkContext;

    move-result-object v0

    .line 661
    .local v0, "sandboxedSdkContext":Landroid/app/sdksandbox/SandboxedSdkContext;
    if-nez v0, :cond_f

    .line 662
    iget-object v1, p0, Landroid/adservices/measurement/MeasurementCompatibleManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    goto :goto_13

    .line 663
    :cond_f
    invoke-virtual {v0}, Landroid/app/sdksandbox/SandboxedSdkContext;->getClientPackageName()Ljava/lang/String;

    move-result-object v1

    .line 661
    :goto_13
    return-object v1
.end method

.method private blacklist getSdkPackageName()Ljava/lang/String;
    .registers 3

    .line 668
    iget-object v0, p0, Landroid/adservices/measurement/MeasurementCompatibleManager;->mContext:Landroid/content/Context;

    .line 669
    invoke-static {v0}, Landroid/adservices/common/SandboxedSdkContextUtils;->getAsSandboxedSdkContext(Landroid/content/Context;)Landroid/app/sdksandbox/SandboxedSdkContext;

    move-result-object v0

    .line 670
    .local v0, "sandboxedSdkContext":Landroid/app/sdksandbox/SandboxedSdkContext;
    if-nez v0, :cond_b

    const-string v1, ""

    goto :goto_f

    :cond_b
    invoke-virtual {v0}, Landroid/app/sdksandbox/SandboxedSdkContext;->getSdkPackageName()Ljava/lang/String;

    move-result-object v1

    :goto_f
    return-object v1
.end method

.method private blacklist getServiceWrapper(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)Landroid/adservices/measurement/IMeasurementService;
    .registers 6
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Ljava/lang/Object;",
            "Ljava/lang/Exception;",
            ">;)",
            "Landroid/adservices/measurement/IMeasurementService;"
        }
    .end annotation

    .line 684
    .local p2, "callback":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Ljava/lang/Object;Ljava/lang/Exception;>;"
    invoke-static {p1, p2}, Landroid/adservices/measurement/MeasurementCompatibleManager;->requireExecutorForCallback(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    .line 685
    const/4 v0, 0x0

    .line 687
    .local v0, "service":Landroid/adservices/measurement/IMeasurementService;
    :try_start_4
    invoke-virtual {p0}, Landroid/adservices/measurement/MeasurementCompatibleManager;->getService()Landroid/adservices/measurement/IMeasurementService;

    move-result-object v1
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_8} :catch_a

    move-object v0, v1

    .line 693
    goto :goto_1a

    .line 688
    :catch_a
    move-exception v1

    .line 689
    .local v1, "e":Ljava/lang/RuntimeException;
    const-string v2, "Failed binding to measurement service"

    invoke-static {v1, v2}, Lcom/android/adservices/LogUtil;->e(Ljava/lang/Throwable;Ljava/lang/String;)I

    .line 690
    if-eqz p2, :cond_1a

    .line 691
    new-instance v2, Landroid/adservices/measurement/MeasurementCompatibleManager$$ExternalSyntheticLambda15;

    invoke-direct {v2, p2, v1}, Landroid/adservices/measurement/MeasurementCompatibleManager$$ExternalSyntheticLambda15;-><init>(Landroid/os/OutcomeReceiver;Ljava/lang/RuntimeException;)V

    invoke-interface {p1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 694
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :cond_1a
    :goto_1a
    return-object v0
.end method

.method private blacklist isAdIdPermissionEnabled(Landroid/adservices/adid/AdId;)Z
    .registers 4
    .param p1, "adId"    # Landroid/adservices/adid/AdId;

    .line 128
    const-string v0, "00000000-0000-0000-0000-000000000000"

    invoke-virtual {p1}, Landroid/adservices/adid/AdId;->getAdId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method static synthetic blacklist lambda$deleteRegistrations$9(Landroid/os/OutcomeReceiver;Landroid/os/RemoteException;)V
    .registers 3
    .param p0, "callback"    # Landroid/os/OutcomeReceiver;
    .param p1, "e"    # Landroid/os/RemoteException;

    .line 561
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {p0, v0}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic blacklist lambda$getMeasurementApiStatus$10(Landroid/os/OutcomeReceiver;)V
    .registers 2
    .param p0, "callback"    # Landroid/os/OutcomeReceiver;

    .line 617
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Landroid/os/OutcomeReceiver;->onResult(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic blacklist lambda$getMeasurementApiStatus$11(Landroid/os/OutcomeReceiver;Ljava/lang/RuntimeException;)V
    .registers 2
    .param p0, "callback"    # Landroid/os/OutcomeReceiver;
    .param p1, "e"    # Ljava/lang/RuntimeException;

    .line 621
    invoke-interface {p0, p1}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic blacklist lambda$getMeasurementApiStatus$12(Landroid/os/OutcomeReceiver;)V
    .registers 2
    .param p0, "callback"    # Landroid/os/OutcomeReceiver;

    .line 638
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Landroid/os/OutcomeReceiver;->onResult(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic blacklist lambda$getMeasurementApiStatus$13(Landroid/os/OutcomeReceiver;Ljava/lang/RuntimeException;)V
    .registers 2
    .param p0, "callback"    # Landroid/os/OutcomeReceiver;
    .param p1, "e"    # Ljava/lang/RuntimeException;

    .line 641
    invoke-interface {p0, p1}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic blacklist lambda$getServiceWrapper$14(Landroid/os/OutcomeReceiver;Ljava/lang/RuntimeException;)V
    .registers 2
    .param p0, "callback"    # Landroid/os/OutcomeReceiver;
    .param p1, "e"    # Ljava/lang/RuntimeException;

    .line 691
    invoke-interface {p0, p1}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic blacklist lambda$register$0(Landroid/os/OutcomeReceiver;Landroid/os/RemoteException;)V
    .registers 3
    .param p0, "callback"    # Landroid/os/OutcomeReceiver;
    .param p1, "e"    # Landroid/os/RemoteException;

    .line 176
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {p0, v0}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method private synthetic blacklist lambda$registerSource$1(Landroid/adservices/measurement/RegistrationRequest$Builder;Landroid/adservices/measurement/IMeasurementService;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;ZLjava/lang/String;)V
    .registers 8
    .param p1, "builder"    # Landroid/adservices/measurement/RegistrationRequest$Builder;
    .param p2, "service"    # Landroid/adservices/measurement/IMeasurementService;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .param p4, "callback"    # Landroid/os/OutcomeReceiver;
    .param p5, "isAdIdEnabled"    # Z
    .param p6, "adIdValue"    # Ljava/lang/String;

    .line 221
    nop

    .line 222
    invoke-virtual {p1, p5}, Landroid/adservices/measurement/RegistrationRequest$Builder;->setAdIdPermissionGranted(Z)Landroid/adservices/measurement/RegistrationRequest$Builder;

    move-result-object v0

    .line 223
    invoke-virtual {v0, p6}, Landroid/adservices/measurement/RegistrationRequest$Builder;->setAdIdValue(Ljava/lang/String;)Landroid/adservices/measurement/RegistrationRequest$Builder;

    move-result-object v0

    .line 224
    invoke-virtual {v0}, Landroid/adservices/measurement/RegistrationRequest$Builder;->build()Landroid/adservices/measurement/RegistrationRequest;

    move-result-object v0

    .line 221
    invoke-direct {p0, v0, p2, p3, p4}, Landroid/adservices/measurement/MeasurementCompatibleManager;->register(Landroid/adservices/measurement/RegistrationRequest;Landroid/adservices/measurement/IMeasurementService;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    return-void
.end method

.method static synthetic blacklist lambda$registerSource$2(Landroid/os/OutcomeReceiver;Landroid/os/RemoteException;)V
    .registers 3
    .param p0, "callback"    # Landroid/os/OutcomeReceiver;
    .param p1, "e"    # Landroid/os/RemoteException;

    .line 295
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {p0, v0}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic blacklist lambda$registerSource$3(Landroid/adservices/measurement/IMeasurementService;Landroid/adservices/measurement/SourceRegistrationRequestInternal$Builder;Landroid/adservices/common/CallerMetadata;Landroid/adservices/measurement/IMeasurementCallback;Landroid/os/OutcomeReceiver;Ljava/util/concurrent/Executor;ZLjava/lang/String;)V
    .registers 10
    .param p0, "service"    # Landroid/adservices/measurement/IMeasurementService;
    .param p1, "builder"    # Landroid/adservices/measurement/SourceRegistrationRequestInternal$Builder;
    .param p2, "callerMetadata"    # Landroid/adservices/common/CallerMetadata;
    .param p3, "measurementCallback"    # Landroid/adservices/measurement/IMeasurementCallback;
    .param p4, "callback"    # Landroid/os/OutcomeReceiver;
    .param p5, "executor"    # Ljava/util/concurrent/Executor;
    .param p6, "isAdIdEnabled"    # Z
    .param p7, "adIdValue"    # Ljava/lang/String;

    .line 287
    :try_start_0
    const-string v0, "Registering app sources"

    invoke-static {v0}, Lcom/android/adservices/LogUtil;->d(Ljava/lang/String;)I

    .line 288
    nop

    .line 289
    invoke-virtual {p1, p7}, Landroid/adservices/measurement/SourceRegistrationRequestInternal$Builder;->setAdIdValue(Ljava/lang/String;)Landroid/adservices/measurement/SourceRegistrationRequestInternal$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/adservices/measurement/SourceRegistrationRequestInternal$Builder;->build()Landroid/adservices/measurement/SourceRegistrationRequestInternal;

    move-result-object v0

    .line 288
    invoke-interface {p0, v0, p2, p3}, Landroid/adservices/measurement/IMeasurementService;->registerSource(Landroid/adservices/measurement/SourceRegistrationRequestInternal;Landroid/adservices/common/CallerMetadata;Landroid/adservices/measurement/IMeasurementCallback;)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_11} :catch_12

    .line 297
    goto :goto_22

    .line 292
    :catch_12
    move-exception v0

    .line 293
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "RemoteException"

    invoke-static {v0, v1}, Lcom/android/adservices/LogUtil;->e(Ljava/lang/Throwable;Ljava/lang/String;)I

    .line 294
    if-eqz p4, :cond_22

    .line 295
    new-instance v1, Landroid/adservices/measurement/MeasurementCompatibleManager$$ExternalSyntheticLambda13;

    invoke-direct {v1, p4, v0}, Landroid/adservices/measurement/MeasurementCompatibleManager$$ExternalSyntheticLambda13;-><init>(Landroid/os/OutcomeReceiver;Landroid/os/RemoteException;)V

    invoke-interface {p5, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 298
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_22
    :goto_22
    return-void
.end method

.method private synthetic blacklist lambda$registerTrigger$8(Landroid/adservices/measurement/RegistrationRequest$Builder;Landroid/adservices/measurement/IMeasurementService;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;ZLjava/lang/String;)V
    .registers 8
    .param p1, "builder"    # Landroid/adservices/measurement/RegistrationRequest$Builder;
    .param p2, "service"    # Landroid/adservices/measurement/IMeasurementService;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .param p4, "callback"    # Landroid/os/OutcomeReceiver;
    .param p5, "isAdIdEnabled"    # Z
    .param p6, "adIdValue"    # Ljava/lang/String;

    .line 511
    nop

    .line 512
    invoke-virtual {p1, p5}, Landroid/adservices/measurement/RegistrationRequest$Builder;->setAdIdPermissionGranted(Z)Landroid/adservices/measurement/RegistrationRequest$Builder;

    move-result-object v0

    .line 513
    invoke-virtual {v0, p6}, Landroid/adservices/measurement/RegistrationRequest$Builder;->setAdIdValue(Ljava/lang/String;)Landroid/adservices/measurement/RegistrationRequest$Builder;

    move-result-object v0

    .line 514
    invoke-virtual {v0}, Landroid/adservices/measurement/RegistrationRequest$Builder;->build()Landroid/adservices/measurement/RegistrationRequest;

    move-result-object v0

    .line 511
    invoke-direct {p0, v0, p2, p3, p4}, Landroid/adservices/measurement/MeasurementCompatibleManager;->register(Landroid/adservices/measurement/RegistrationRequest;Landroid/adservices/measurement/IMeasurementService;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    return-void
.end method

.method private synthetic blacklist lambda$registerWebSource$4(Landroid/adservices/measurement/WebSourceRegistrationRequestInternal$Builder;Landroid/adservices/measurement/IMeasurementService;Ljava/util/concurrent/Executor;Landroid/adservices/common/CallerMetadata;Landroid/adservices/measurement/IMeasurementCallback;Landroid/os/OutcomeReceiver;ZLjava/lang/String;)V
    .registers 18
    .param p1, "builder"    # Landroid/adservices/measurement/WebSourceRegistrationRequestInternal$Builder;
    .param p2, "service"    # Landroid/adservices/measurement/IMeasurementService;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .param p4, "callerMetadata"    # Landroid/adservices/common/CallerMetadata;
    .param p5, "measurementCallback"    # Landroid/adservices/measurement/IMeasurementCallback;
    .param p6, "callback"    # Landroid/os/OutcomeReceiver;
    .param p7, "isAdIdEnabled"    # Z
    .param p8, "adIdValue"    # Ljava/lang/String;

    .line 362
    nop

    .line 363
    move/from16 v0, p7

    invoke-virtual {p1, v0}, Landroid/adservices/measurement/WebSourceRegistrationRequestInternal$Builder;->setAdIdPermissionGranted(Z)Landroid/adservices/measurement/WebSourceRegistrationRequestInternal$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/adservices/measurement/WebSourceRegistrationRequestInternal$Builder;->build()Landroid/adservices/measurement/WebSourceRegistrationRequestInternal;

    move-result-object v3

    .line 362
    move-object v2, p0

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object v8, p6

    invoke-direct/range {v2 .. v8}, Landroid/adservices/measurement/MeasurementCompatibleManager;->registerWebSourceWrapper(Landroid/adservices/measurement/WebSourceRegistrationRequestInternal;Landroid/adservices/measurement/IMeasurementService;Ljava/util/concurrent/Executor;Landroid/adservices/common/CallerMetadata;Landroid/adservices/measurement/IMeasurementCallback;Landroid/os/OutcomeReceiver;)V

    return-void
.end method

.method static synthetic blacklist lambda$registerWebSourceWrapper$5(Landroid/os/OutcomeReceiver;Landroid/os/RemoteException;)V
    .registers 3
    .param p0, "callback"    # Landroid/os/OutcomeReceiver;
    .param p1, "e"    # Landroid/os/RemoteException;

    .line 386
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {p0, v0}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method private synthetic blacklist lambda$registerWebTrigger$6(Landroid/adservices/measurement/WebTriggerRegistrationRequestInternal$Builder;Landroid/adservices/measurement/IMeasurementService;Ljava/util/concurrent/Executor;Landroid/adservices/common/CallerMetadata;Landroid/adservices/measurement/IMeasurementCallback;Landroid/os/OutcomeReceiver;ZLjava/lang/String;)V
    .registers 18
    .param p1, "builder"    # Landroid/adservices/measurement/WebTriggerRegistrationRequestInternal$Builder;
    .param p2, "service"    # Landroid/adservices/measurement/IMeasurementService;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .param p4, "callerMetadata"    # Landroid/adservices/common/CallerMetadata;
    .param p5, "measurementCallback"    # Landroid/adservices/measurement/IMeasurementCallback;
    .param p6, "callback"    # Landroid/os/OutcomeReceiver;
    .param p7, "isAdIdEnabled"    # Z
    .param p8, "adIdValue"    # Ljava/lang/String;

    .line 448
    nop

    .line 449
    move/from16 v0, p7

    invoke-virtual {p1, v0}, Landroid/adservices/measurement/WebTriggerRegistrationRequestInternal$Builder;->setAdIdPermissionGranted(Z)Landroid/adservices/measurement/WebTriggerRegistrationRequestInternal$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/adservices/measurement/WebTriggerRegistrationRequestInternal$Builder;->build()Landroid/adservices/measurement/WebTriggerRegistrationRequestInternal;

    move-result-object v3

    .line 448
    move-object v2, p0

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object v8, p6

    invoke-direct/range {v2 .. v8}, Landroid/adservices/measurement/MeasurementCompatibleManager;->registerWebTriggerWrapper(Landroid/adservices/measurement/WebTriggerRegistrationRequestInternal;Landroid/adservices/measurement/IMeasurementService;Ljava/util/concurrent/Executor;Landroid/adservices/common/CallerMetadata;Landroid/adservices/measurement/IMeasurementCallback;Landroid/os/OutcomeReceiver;)V

    return-void
.end method

.method static synthetic blacklist lambda$registerWebTriggerWrapper$7(Landroid/os/OutcomeReceiver;Landroid/os/RemoteException;)V
    .registers 3
    .param p0, "callback"    # Landroid/os/OutcomeReceiver;
    .param p1, "e"    # Landroid/os/RemoteException;

    .line 472
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {p0, v0}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method private blacklist register(Landroid/adservices/measurement/RegistrationRequest;Landroid/adservices/measurement/IMeasurementService;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 8
    .param p1, "registrationRequest"    # Landroid/adservices/measurement/RegistrationRequest;
    .param p2, "service"    # Landroid/adservices/measurement/IMeasurementService;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/adservices/measurement/RegistrationRequest;",
            "Landroid/adservices/measurement/IMeasurementService;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Ljava/lang/Object;",
            "Ljava/lang/Exception;",
            ">;)V"
        }
    .end annotation

    .line 141
    .local p4, "callback":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Ljava/lang/Object;Ljava/lang/Exception;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    invoke-static {p3, p4}, Landroid/adservices/measurement/MeasurementCompatibleManager;->requireExecutorForCallback(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    .line 144
    const-string v0, "source"

    .line 145
    .local v0, "registrationType":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/adservices/measurement/RegistrationRequest;->getRegistrationType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_11

    .line 146
    const-string v0, "trigger"

    .line 148
    :cond_11
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Registering "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/adservices/LogUtil;->d(Ljava/lang/String;)I

    .line 151
    nop

    .line 153
    :try_start_28
    invoke-direct {p0}, Landroid/adservices/measurement/MeasurementCompatibleManager;->generateCallerMetadataWithCurrentTime()Landroid/adservices/common/CallerMetadata;

    move-result-object v1

    new-instance v2, Landroid/adservices/measurement/MeasurementCompatibleManager$1;

    invoke-direct {v2, p0, p4, p3}, Landroid/adservices/measurement/MeasurementCompatibleManager$1;-><init>(Landroid/adservices/measurement/MeasurementCompatibleManager;Landroid/os/OutcomeReceiver;Ljava/util/concurrent/Executor;)V

    .line 151
    invoke-interface {p2, p1, v1, v2}, Landroid/adservices/measurement/IMeasurementService;->register(Landroid/adservices/measurement/RegistrationRequest;Landroid/adservices/common/CallerMetadata;Landroid/adservices/measurement/IMeasurementCallback;)V
    :try_end_34
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_34} :catch_35

    .line 178
    goto :goto_45

    .line 173
    :catch_35
    move-exception v1

    .line 174
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "RemoteException"

    invoke-static {v1, v2}, Lcom/android/adservices/LogUtil;->e(Ljava/lang/Throwable;Ljava/lang/String;)I

    .line 175
    if-eqz p4, :cond_45

    .line 176
    new-instance v2, Landroid/adservices/measurement/MeasurementCompatibleManager$$ExternalSyntheticLambda5;

    invoke-direct {v2, p4, v1}, Landroid/adservices/measurement/MeasurementCompatibleManager$$ExternalSyntheticLambda5;-><init>(Landroid/os/OutcomeReceiver;Landroid/os/RemoteException;)V

    invoke-interface {p3, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 179
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_45
    :goto_45
    return-void
.end method

.method private blacklist registerWebSourceWrapper(Landroid/adservices/measurement/WebSourceRegistrationRequestInternal;Landroid/adservices/measurement/IMeasurementService;Ljava/util/concurrent/Executor;Landroid/adservices/common/CallerMetadata;Landroid/adservices/measurement/IMeasurementCallback;Landroid/os/OutcomeReceiver;)V
    .registers 9
    .param p1, "request"    # Landroid/adservices/measurement/WebSourceRegistrationRequestInternal;
    .param p2, "service"    # Landroid/adservices/measurement/IMeasurementService;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .param p4, "callerMetadata"    # Landroid/adservices/common/CallerMetadata;
    .param p5, "measurementCallback"    # Landroid/adservices/measurement/IMeasurementCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/adservices/measurement/WebSourceRegistrationRequestInternal;",
            "Landroid/adservices/measurement/IMeasurementService;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/adservices/common/CallerMetadata;",
            "Landroid/adservices/measurement/IMeasurementCallback;",
            "Landroid/os/OutcomeReceiver<",
            "Ljava/lang/Object;",
            "Ljava/lang/Exception;",
            ">;)V"
        }
    .end annotation

    .line 379
    .local p6, "callback":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Ljava/lang/Object;Ljava/lang/Exception;>;"
    invoke-static {p3, p6}, Landroid/adservices/measurement/MeasurementCompatibleManager;->requireExecutorForCallback(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    .line 381
    :try_start_3
    const-string v0, "Registering web source"

    invoke-static {v0}, Lcom/android/adservices/LogUtil;->d(Ljava/lang/String;)I

    .line 382
    invoke-interface {p2, p1, p4, p5}, Landroid/adservices/measurement/IMeasurementService;->registerWebSource(Landroid/adservices/measurement/WebSourceRegistrationRequestInternal;Landroid/adservices/common/CallerMetadata;Landroid/adservices/measurement/IMeasurementCallback;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_b} :catch_c

    .line 388
    goto :goto_1c

    .line 383
    :catch_c
    move-exception v0

    .line 384
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "RemoteException"

    invoke-static {v0, v1}, Lcom/android/adservices/LogUtil;->e(Ljava/lang/Throwable;Ljava/lang/String;)I

    .line 385
    if-eqz p6, :cond_1c

    .line 386
    new-instance v1, Landroid/adservices/measurement/MeasurementCompatibleManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p6, v0}, Landroid/adservices/measurement/MeasurementCompatibleManager$$ExternalSyntheticLambda0;-><init>(Landroid/os/OutcomeReceiver;Landroid/os/RemoteException;)V

    invoke-interface {p3, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 389
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1c
    :goto_1c
    return-void
.end method

.method private blacklist registerWebTriggerWrapper(Landroid/adservices/measurement/WebTriggerRegistrationRequestInternal;Landroid/adservices/measurement/IMeasurementService;Ljava/util/concurrent/Executor;Landroid/adservices/common/CallerMetadata;Landroid/adservices/measurement/IMeasurementCallback;Landroid/os/OutcomeReceiver;)V
    .registers 9
    .param p1, "request"    # Landroid/adservices/measurement/WebTriggerRegistrationRequestInternal;
    .param p2, "service"    # Landroid/adservices/measurement/IMeasurementService;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .param p4, "callerMetadata"    # Landroid/adservices/common/CallerMetadata;
    .param p5, "measurementCallback"    # Landroid/adservices/measurement/IMeasurementCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/adservices/measurement/WebTriggerRegistrationRequestInternal;",
            "Landroid/adservices/measurement/IMeasurementService;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/adservices/common/CallerMetadata;",
            "Landroid/adservices/measurement/IMeasurementCallback;",
            "Landroid/os/OutcomeReceiver<",
            "Ljava/lang/Object;",
            "Ljava/lang/Exception;",
            ">;)V"
        }
    .end annotation

    .line 465
    .local p6, "callback":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Ljava/lang/Object;Ljava/lang/Exception;>;"
    invoke-static {p3, p6}, Landroid/adservices/measurement/MeasurementCompatibleManager;->requireExecutorForCallback(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    .line 467
    :try_start_3
    const-string v0, "Registering web trigger"

    invoke-static {v0}, Lcom/android/adservices/LogUtil;->d(Ljava/lang/String;)I

    .line 468
    invoke-interface {p2, p1, p4, p5}, Landroid/adservices/measurement/IMeasurementService;->registerWebTrigger(Landroid/adservices/measurement/WebTriggerRegistrationRequestInternal;Landroid/adservices/common/CallerMetadata;Landroid/adservices/measurement/IMeasurementCallback;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_b} :catch_c

    .line 474
    goto :goto_1c

    .line 469
    :catch_c
    move-exception v0

    .line 470
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "RemoteException"

    invoke-static {v0, v1}, Lcom/android/adservices/LogUtil;->e(Ljava/lang/Throwable;Ljava/lang/String;)I

    .line 471
    if-eqz p6, :cond_1c

    .line 472
    new-instance v1, Landroid/adservices/measurement/MeasurementCompatibleManager$$ExternalSyntheticLambda3;

    invoke-direct {v1, p6, v0}, Landroid/adservices/measurement/MeasurementCompatibleManager$$ExternalSyntheticLambda3;-><init>(Landroid/os/OutcomeReceiver;Landroid/os/RemoteException;)V

    invoke-interface {p3, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 475
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1c
    :goto_1c
    return-void
.end method

.method private static blacklist requireExecutorForCallback(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 4
    .param p0, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Ljava/lang/Object;",
            "Ljava/lang/Exception;",
            ">;)V"
        }
    .end annotation

    .line 699
    .local p1, "callback":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Ljava/lang/Object;Ljava/lang/Exception;>;"
    if-eqz p1, :cond_d

    if-eqz p0, :cond_5

    goto :goto_d

    .line 700
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Executor should be provided when callback is provided."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 703
    :cond_d
    :goto_d
    return-void
.end method


# virtual methods
.method public blacklist deleteRegistrations(Landroid/adservices/measurement/DeletionRequest;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 11
    .param p1, "deletionRequest"    # Landroid/adservices/measurement/DeletionRequest;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/adservices/measurement/DeletionRequest;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Ljava/lang/Object;",
            "Ljava/lang/Exception;",
            ">;)V"
        }
    .end annotation

    .line 581
    .local p3, "callback":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Ljava/lang/Object;Ljava/lang/Exception;>;"
    new-instance v0, Landroid/adservices/measurement/DeletionParam$Builder;

    .line 583
    invoke-virtual {p1}, Landroid/adservices/measurement/DeletionRequest;->getOriginUris()Ljava/util/List;

    move-result-object v1

    .line 584
    invoke-virtual {p1}, Landroid/adservices/measurement/DeletionRequest;->getDomainUris()Ljava/util/List;

    move-result-object v2

    .line 585
    invoke-virtual {p1}, Landroid/adservices/measurement/DeletionRequest;->getStart()Ljava/time/Instant;

    move-result-object v3

    .line 586
    invoke-virtual {p1}, Landroid/adservices/measurement/DeletionRequest;->getEnd()Ljava/time/Instant;

    move-result-object v4

    .line 587
    invoke-direct {p0}, Landroid/adservices/measurement/MeasurementCompatibleManager;->getAppPackageName()Ljava/lang/String;

    move-result-object v5

    .line 588
    invoke-direct {p0}, Landroid/adservices/measurement/MeasurementCompatibleManager;->getSdkPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Landroid/adservices/measurement/DeletionParam$Builder;-><init>(Ljava/util/List;Ljava/util/List;Ljava/time/Instant;Ljava/time/Instant;Ljava/lang/String;Ljava/lang/String;)V

    .line 589
    invoke-virtual {p1}, Landroid/adservices/measurement/DeletionRequest;->getDeletionMode()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/adservices/measurement/DeletionParam$Builder;->setDeletionMode(I)Landroid/adservices/measurement/DeletionParam$Builder;

    move-result-object v0

    .line 590
    invoke-virtual {p1}, Landroid/adservices/measurement/DeletionRequest;->getMatchBehavior()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/adservices/measurement/DeletionParam$Builder;->setMatchBehavior(I)Landroid/adservices/measurement/DeletionParam$Builder;

    move-result-object v0

    .line 591
    invoke-virtual {v0}, Landroid/adservices/measurement/DeletionParam$Builder;->build()Landroid/adservices/measurement/DeletionParam;

    move-result-object v0

    .line 581
    invoke-direct {p0, v0, p2, p3}, Landroid/adservices/measurement/MeasurementCompatibleManager;->deleteRegistrations(Landroid/adservices/measurement/DeletionParam;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    .line 594
    return-void
.end method

.method public blacklist getMeasurementApiStatus(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 7
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Exception;",
            ">;)V"
        }
    .end annotation

    .line 608
    .local p2, "callback":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Ljava/lang/Integer;Ljava/lang/Exception;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 609
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 613
    :try_start_6
    invoke-virtual {p0}, Landroid/adservices/measurement/MeasurementCompatibleManager;->getService()Landroid/adservices/measurement/IMeasurementService;

    move-result-object v0
    :try_end_a
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_a} :catch_57
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_a} :catch_48

    .line 623
    .local v0, "service":Landroid/adservices/measurement/IMeasurementService;
    nop

    .line 626
    :try_start_b
    new-instance v1, Landroid/adservices/measurement/StatusParam$Builder;

    .line 627
    invoke-direct {p0}, Landroid/adservices/measurement/MeasurementCompatibleManager;->getAppPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Landroid/adservices/measurement/MeasurementCompatibleManager;->getSdkPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/adservices/measurement/StatusParam$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/adservices/measurement/StatusParam$Builder;->build()Landroid/adservices/measurement/StatusParam;

    move-result-object v1

    .line 628
    invoke-direct {p0}, Landroid/adservices/measurement/MeasurementCompatibleManager;->generateCallerMetadataWithCurrentTime()Landroid/adservices/common/CallerMetadata;

    move-result-object v2

    new-instance v3, Landroid/adservices/measurement/MeasurementCompatibleManager$6;

    invoke-direct {v3, p0, p1, p2}, Landroid/adservices/measurement/MeasurementCompatibleManager$6;-><init>(Landroid/adservices/measurement/MeasurementCompatibleManager;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    .line 626
    invoke-interface {v0, v1, v2, v3}, Landroid/adservices/measurement/IMeasurementService;->getMeasurementApiStatus(Landroid/adservices/measurement/StatusParam;Landroid/adservices/common/CallerMetadata;Landroid/adservices/measurement/IMeasurementApiStatusCallback;)V
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_28} :catch_38
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_28} :catch_29

    goto :goto_46

    .line 639
    :catch_29
    move-exception v1

    .line 640
    .local v1, "e":Ljava/lang/RuntimeException;
    const-string v2, "Unknown failure while getting measurement status"

    invoke-static {v1, v2}, Lcom/android/adservices/LogUtil;->e(Ljava/lang/Throwable;Ljava/lang/String;)I

    .line 641
    new-instance v2, Landroid/adservices/measurement/MeasurementCompatibleManager$$ExternalSyntheticLambda10;

    invoke-direct {v2, p2, v1}, Landroid/adservices/measurement/MeasurementCompatibleManager$$ExternalSyntheticLambda10;-><init>(Landroid/os/OutcomeReceiver;Ljava/lang/RuntimeException;)V

    invoke-interface {p1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_47

    .line 635
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :catch_38
    move-exception v1

    .line 636
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "RemoteException"

    invoke-static {v1, v2}, Lcom/android/adservices/LogUtil;->e(Ljava/lang/Throwable;Ljava/lang/String;)I

    .line 637
    new-instance v2, Landroid/adservices/measurement/MeasurementCompatibleManager$$ExternalSyntheticLambda9;

    invoke-direct {v2, p2}, Landroid/adservices/measurement/MeasurementCompatibleManager$$ExternalSyntheticLambda9;-><init>(Landroid/os/OutcomeReceiver;)V

    invoke-interface {p1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 642
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_46
    nop

    .line 643
    :goto_47
    return-void

    .line 619
    .end local v0    # "service":Landroid/adservices/measurement/IMeasurementService;
    :catch_48
    move-exception v0

    .line 620
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "Unknown failure while binding measurement service"

    invoke-static {v0, v1}, Lcom/android/adservices/LogUtil;->e(Ljava/lang/Throwable;Ljava/lang/String;)I

    .line 621
    new-instance v1, Landroid/adservices/measurement/MeasurementCompatibleManager$$ExternalSyntheticLambda8;

    invoke-direct {v1, p2, v0}, Landroid/adservices/measurement/MeasurementCompatibleManager$$ExternalSyntheticLambda8;-><init>(Landroid/os/OutcomeReceiver;Ljava/lang/RuntimeException;)V

    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 622
    return-void

    .line 614
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catch_57
    move-exception v0

    .line 615
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v1, "Failed to bind to measurement service"

    invoke-static {v0, v1}, Lcom/android/adservices/LogUtil;->e(Ljava/lang/Throwable;Ljava/lang/String;)I

    .line 616
    new-instance v1, Landroid/adservices/measurement/MeasurementCompatibleManager$$ExternalSyntheticLambda7;

    invoke-direct {v1, p2}, Landroid/adservices/measurement/MeasurementCompatibleManager$$ExternalSyntheticLambda7;-><init>(Landroid/os/OutcomeReceiver;)V

    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 618
    return-void
.end method

.method public blacklist getService()Landroid/adservices/measurement/IMeasurementService;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 119
    iget-object v0, p0, Landroid/adservices/measurement/MeasurementCompatibleManager;->mServiceBinder:Lcom/android/adservices/ServiceBinder;

    invoke-virtual {v0}, Lcom/android/adservices/ServiceBinder;->getService()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/adservices/measurement/IMeasurementService;

    .line 120
    .local v0, "service":Landroid/adservices/measurement/IMeasurementService;
    if-eqz v0, :cond_b

    .line 123
    return-object v0

    .line 121
    :cond_b
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Unable to find the service"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public blacklist registerSource(Landroid/adservices/measurement/SourceRegistrationRequest;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 15
    .param p1, "request"    # Landroid/adservices/measurement/SourceRegistrationRequest;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/adservices/measurement/SourceRegistrationRequest;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Ljava/lang/Object;",
            "Ljava/lang/Exception;",
            ">;)V"
        }
    .end annotation

    .line 245
    .local p3, "callback":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Ljava/lang/Object;Ljava/lang/Exception;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    invoke-static {p2, p3}, Landroid/adservices/measurement/MeasurementCompatibleManager;->requireExecutorForCallback(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    .line 248
    invoke-direct {p0, p2, p3}, Landroid/adservices/measurement/MeasurementCompatibleManager;->getServiceWrapper(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)Landroid/adservices/measurement/IMeasurementService;

    move-result-object v1

    .line 249
    .local v1, "service":Landroid/adservices/measurement/IMeasurementService;
    if-nez v1, :cond_12

    .line 251
    const-string v0, "Measurement service not found"

    invoke-static {v0}, Lcom/android/adservices/LogUtil;->d(Ljava/lang/String;)I

    .line 252
    return-void

    .line 255
    :cond_12
    invoke-direct {p0}, Landroid/adservices/measurement/MeasurementCompatibleManager;->generateCallerMetadataWithCurrentTime()Landroid/adservices/common/CallerMetadata;

    move-result-object v3

    .line 256
    .local v3, "callerMetadata":Landroid/adservices/common/CallerMetadata;
    new-instance v4, Landroid/adservices/measurement/MeasurementCompatibleManager$2;

    invoke-direct {v4, p0, p3, p2}, Landroid/adservices/measurement/MeasurementCompatibleManager$2;-><init>(Landroid/adservices/measurement/MeasurementCompatibleManager;Landroid/os/OutcomeReceiver;Ljava/util/concurrent/Executor;)V

    .line 277
    .local v4, "measurementCallback":Landroid/adservices/measurement/IMeasurementCallback;
    new-instance v2, Landroid/adservices/measurement/SourceRegistrationRequestInternal$Builder;

    .line 280
    invoke-direct {p0}, Landroid/adservices/measurement/MeasurementCompatibleManager;->getAppPackageName()Ljava/lang/String;

    move-result-object v7

    .line 281
    invoke-direct {p0}, Landroid/adservices/measurement/MeasurementCompatibleManager;->getSdkPackageName()Ljava/lang/String;

    move-result-object v8

    .line 282
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    move-object v6, p1

    move-object v5, v2

    .end local p1    # "request":Landroid/adservices/measurement/SourceRegistrationRequest;
    .local v6, "request":Landroid/adservices/measurement/SourceRegistrationRequest;
    invoke-direct/range {v5 .. v10}, Landroid/adservices/measurement/SourceRegistrationRequestInternal$Builder;-><init>(Landroid/adservices/measurement/SourceRegistrationRequest;Ljava/lang/String;Ljava/lang/String;J)V

    .line 284
    .end local v6    # "request":Landroid/adservices/measurement/SourceRegistrationRequest;
    .local v2, "builder":Landroid/adservices/measurement/SourceRegistrationRequestInternal$Builder;
    .restart local p1    # "request":Landroid/adservices/measurement/SourceRegistrationRequest;
    new-instance v0, Landroid/adservices/measurement/MeasurementCompatibleManager$$ExternalSyntheticLambda12;

    move-object v6, p2

    move-object v5, p3

    .end local p2    # "executor":Ljava/util/concurrent/Executor;
    .end local p3    # "callback":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Ljava/lang/Object;Ljava/lang/Exception;>;"
    .local v5, "callback":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Ljava/lang/Object;Ljava/lang/Exception;>;"
    .local v6, "executor":Ljava/util/concurrent/Executor;
    invoke-direct/range {v0 .. v6}, Landroid/adservices/measurement/MeasurementCompatibleManager$$ExternalSyntheticLambda12;-><init>(Landroid/adservices/measurement/IMeasurementService;Landroid/adservices/measurement/SourceRegistrationRequestInternal$Builder;Landroid/adservices/common/CallerMetadata;Landroid/adservices/measurement/IMeasurementCallback;Landroid/os/OutcomeReceiver;Ljava/util/concurrent/Executor;)V

    invoke-direct {p0, v0}, Landroid/adservices/measurement/MeasurementCompatibleManager;->getAdId(Landroid/adservices/measurement/MeasurementCompatibleManager$MeasurementAdIdCallback;)V

    .line 299
    return-void
.end method

.method public blacklist registerSource(Landroid/net/Uri;Landroid/view/InputEvent;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 11
    .param p1, "attributionSource"    # Landroid/net/Uri;
    .param p2, "inputEvent"    # Landroid/view/InputEvent;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Landroid/view/InputEvent;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Ljava/lang/Object;",
            "Ljava/lang/Exception;",
            ">;)V"
        }
    .end annotation

    .line 198
    .local p4, "callback":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Ljava/lang/Object;Ljava/lang/Exception;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    invoke-static {p3, p4}, Landroid/adservices/measurement/MeasurementCompatibleManager;->requireExecutorForCallback(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    .line 201
    invoke-direct {p0, p3, p4}, Landroid/adservices/measurement/MeasurementCompatibleManager;->getServiceWrapper(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)Landroid/adservices/measurement/IMeasurementService;

    move-result-object v3

    .line 203
    .local v3, "service":Landroid/adservices/measurement/IMeasurementService;
    if-nez v3, :cond_12

    .line 205
    const-string v0, "Measurement service not found"

    invoke-static {v0}, Lcom/android/adservices/LogUtil;->d(Ljava/lang/String;)I

    .line 206
    return-void

    .line 209
    :cond_12
    new-instance v0, Landroid/adservices/measurement/RegistrationRequest$Builder;

    .line 213
    invoke-direct {p0}, Landroid/adservices/measurement/MeasurementCompatibleManager;->getAppPackageName()Ljava/lang/String;

    move-result-object v1

    .line 214
    invoke-direct {p0}, Landroid/adservices/measurement/MeasurementCompatibleManager;->getSdkPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    invoke-direct {v0, v4, p1, v1, v2}, Landroid/adservices/measurement/RegistrationRequest$Builder;-><init>(ILandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/adservices/measurement/RegistrationRequest$Builder;->setRequestTime(J)Landroid/adservices/measurement/RegistrationRequest$Builder;

    move-result-object v0

    .line 216
    invoke-virtual {v0, p2}, Landroid/adservices/measurement/RegistrationRequest$Builder;->setInputEvent(Landroid/view/InputEvent;)Landroid/adservices/measurement/RegistrationRequest$Builder;

    move-result-object v2

    .line 219
    .local v2, "builder":Landroid/adservices/measurement/RegistrationRequest$Builder;
    new-instance v0, Landroid/adservices/measurement/MeasurementCompatibleManager$$ExternalSyntheticLambda2;

    move-object v1, p0

    move-object v4, p3

    move-object v5, p4

    .end local p3    # "executor":Ljava/util/concurrent/Executor;
    .end local p4    # "callback":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Ljava/lang/Object;Ljava/lang/Exception;>;"
    .local v4, "executor":Ljava/util/concurrent/Executor;
    .local v5, "callback":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Ljava/lang/Object;Ljava/lang/Exception;>;"
    invoke-direct/range {v0 .. v5}, Landroid/adservices/measurement/MeasurementCompatibleManager$$ExternalSyntheticLambda2;-><init>(Landroid/adservices/measurement/MeasurementCompatibleManager;Landroid/adservices/measurement/RegistrationRequest$Builder;Landroid/adservices/measurement/IMeasurementService;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    invoke-direct {p0, v0}, Landroid/adservices/measurement/MeasurementCompatibleManager;->getAdId(Landroid/adservices/measurement/MeasurementCompatibleManager$MeasurementAdIdCallback;)V

    .line 228
    return-void
.end method

.method public blacklist registerTrigger(Landroid/net/Uri;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 10
    .param p1, "trigger"    # Landroid/net/Uri;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Ljava/lang/Object;",
            "Ljava/lang/Exception;",
            ">;)V"
        }
    .end annotation

    .line 491
    .local p3, "callback":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Ljava/lang/Object;Ljava/lang/Exception;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 492
    invoke-static {p2, p3}, Landroid/adservices/measurement/MeasurementCompatibleManager;->requireExecutorForCallback(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    .line 494
    invoke-direct {p0, p2, p3}, Landroid/adservices/measurement/MeasurementCompatibleManager;->getServiceWrapper(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)Landroid/adservices/measurement/IMeasurementService;

    move-result-object v3

    .line 496
    .local v3, "service":Landroid/adservices/measurement/IMeasurementService;
    if-nez v3, :cond_12

    .line 498
    const-string v0, "Measurement service not found"

    invoke-static {v0}, Lcom/android/adservices/LogUtil;->d(Ljava/lang/String;)I

    .line 499
    return-void

    .line 502
    :cond_12
    new-instance v2, Landroid/adservices/measurement/RegistrationRequest$Builder;

    .line 506
    invoke-direct {p0}, Landroid/adservices/measurement/MeasurementCompatibleManager;->getAppPackageName()Ljava/lang/String;

    move-result-object v0

    .line 507
    invoke-direct {p0}, Landroid/adservices/measurement/MeasurementCompatibleManager;->getSdkPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x2

    invoke-direct {v2, v4, p1, v0, v1}, Landroid/adservices/measurement/RegistrationRequest$Builder;-><init>(ILandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    .local v2, "builder":Landroid/adservices/measurement/RegistrationRequest$Builder;
    new-instance v0, Landroid/adservices/measurement/MeasurementCompatibleManager$$ExternalSyntheticLambda6;

    move-object v1, p0

    move-object v4, p2

    move-object v5, p3

    .end local p2    # "executor":Ljava/util/concurrent/Executor;
    .end local p3    # "callback":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Ljava/lang/Object;Ljava/lang/Exception;>;"
    .local v4, "executor":Ljava/util/concurrent/Executor;
    .local v5, "callback":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Ljava/lang/Object;Ljava/lang/Exception;>;"
    invoke-direct/range {v0 .. v5}, Landroid/adservices/measurement/MeasurementCompatibleManager$$ExternalSyntheticLambda6;-><init>(Landroid/adservices/measurement/MeasurementCompatibleManager;Landroid/adservices/measurement/RegistrationRequest$Builder;Landroid/adservices/measurement/IMeasurementService;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    invoke-direct {p0, v0}, Landroid/adservices/measurement/MeasurementCompatibleManager;->getAdId(Landroid/adservices/measurement/MeasurementCompatibleManager$MeasurementAdIdCallback;)V

    .line 518
    return-void
.end method

.method public blacklist registerWebSource(Landroid/adservices/measurement/WebSourceRegistrationRequest;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 18
    .param p1, "request"    # Landroid/adservices/measurement/WebSourceRegistrationRequest;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/adservices/measurement/WebSourceRegistrationRequest;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Ljava/lang/Object;",
            "Ljava/lang/Exception;",
            ">;)V"
        }
    .end annotation

    .line 320
    .local p3, "callback":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Ljava/lang/Object;Ljava/lang/Exception;>;"
    move-object/from16 v4, p2

    move-object/from16 v7, p3

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    invoke-static/range {p2 .. p3}, Landroid/adservices/measurement/MeasurementCompatibleManager;->requireExecutorForCallback(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    .line 323
    invoke-direct {p0, v4, v7}, Landroid/adservices/measurement/MeasurementCompatibleManager;->getServiceWrapper(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)Landroid/adservices/measurement/IMeasurementService;

    move-result-object v3

    .line 325
    .local v3, "service":Landroid/adservices/measurement/IMeasurementService;
    if-nez v3, :cond_16

    .line 327
    const-string v0, "Measurement service not found"

    invoke-static {v0}, Lcom/android/adservices/LogUtil;->d(Ljava/lang/String;)I

    .line 328
    return-void

    .line 331
    :cond_16
    invoke-direct {p0}, Landroid/adservices/measurement/MeasurementCompatibleManager;->generateCallerMetadataWithCurrentTime()Landroid/adservices/common/CallerMetadata;

    move-result-object v5

    .line 332
    .local v5, "callerMetadata":Landroid/adservices/common/CallerMetadata;
    new-instance v6, Landroid/adservices/measurement/MeasurementCompatibleManager$3;

    invoke-direct {v6, p0, v7, v4}, Landroid/adservices/measurement/MeasurementCompatibleManager$3;-><init>(Landroid/adservices/measurement/MeasurementCompatibleManager;Landroid/os/OutcomeReceiver;Ljava/util/concurrent/Executor;)V

    .line 353
    .local v6, "measurementCallback":Landroid/adservices/measurement/IMeasurementCallback;
    new-instance v2, Landroid/adservices/measurement/WebSourceRegistrationRequestInternal$Builder;

    .line 356
    invoke-direct {p0}, Landroid/adservices/measurement/MeasurementCompatibleManager;->getAppPackageName()Ljava/lang/String;

    move-result-object v10

    .line 357
    invoke-direct {p0}, Landroid/adservices/measurement/MeasurementCompatibleManager;->getSdkPackageName()Ljava/lang/String;

    move-result-object v11

    .line 358
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    move-object v9, p1

    move-object v8, v2

    invoke-direct/range {v8 .. v13}, Landroid/adservices/measurement/WebSourceRegistrationRequestInternal$Builder;-><init>(Landroid/adservices/measurement/WebSourceRegistrationRequest;Ljava/lang/String;Ljava/lang/String;J)V

    .line 360
    .local v2, "builder":Landroid/adservices/measurement/WebSourceRegistrationRequestInternal$Builder;
    new-instance v0, Landroid/adservices/measurement/MeasurementCompatibleManager$$ExternalSyntheticLambda1;

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Landroid/adservices/measurement/MeasurementCompatibleManager$$ExternalSyntheticLambda1;-><init>(Landroid/adservices/measurement/MeasurementCompatibleManager;Landroid/adservices/measurement/WebSourceRegistrationRequestInternal$Builder;Landroid/adservices/measurement/IMeasurementService;Ljava/util/concurrent/Executor;Landroid/adservices/common/CallerMetadata;Landroid/adservices/measurement/IMeasurementCallback;Landroid/os/OutcomeReceiver;)V

    invoke-direct {p0, v0}, Landroid/adservices/measurement/MeasurementCompatibleManager;->getAdId(Landroid/adservices/measurement/MeasurementCompatibleManager$MeasurementAdIdCallback;)V

    .line 369
    return-void
.end method

.method public blacklist registerWebTrigger(Landroid/adservices/measurement/WebTriggerRegistrationRequest;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 12
    .param p1, "request"    # Landroid/adservices/measurement/WebTriggerRegistrationRequest;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/adservices/measurement/WebTriggerRegistrationRequest;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Ljava/lang/Object;",
            "Ljava/lang/Exception;",
            ">;)V"
        }
    .end annotation

    .line 409
    .local p3, "callback":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Ljava/lang/Object;Ljava/lang/Exception;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 410
    invoke-static {p2, p3}, Landroid/adservices/measurement/MeasurementCompatibleManager;->requireExecutorForCallback(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    .line 412
    invoke-direct {p0, p2, p3}, Landroid/adservices/measurement/MeasurementCompatibleManager;->getServiceWrapper(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)Landroid/adservices/measurement/IMeasurementService;

    move-result-object v3

    .line 414
    .local v3, "service":Landroid/adservices/measurement/IMeasurementService;
    if-nez v3, :cond_12

    .line 416
    const-string v0, "Measurement service not found"

    invoke-static {v0}, Lcom/android/adservices/LogUtil;->d(Ljava/lang/String;)I

    .line 417
    return-void

    .line 420
    :cond_12
    invoke-direct {p0}, Landroid/adservices/measurement/MeasurementCompatibleManager;->generateCallerMetadataWithCurrentTime()Landroid/adservices/common/CallerMetadata;

    move-result-object v5

    .line 421
    .local v5, "callerMetadata":Landroid/adservices/common/CallerMetadata;
    new-instance v6, Landroid/adservices/measurement/MeasurementCompatibleManager$4;

    invoke-direct {v6, p0, p3, p2}, Landroid/adservices/measurement/MeasurementCompatibleManager$4;-><init>(Landroid/adservices/measurement/MeasurementCompatibleManager;Landroid/os/OutcomeReceiver;Ljava/util/concurrent/Executor;)V

    .line 442
    .local v6, "measurementCallback":Landroid/adservices/measurement/IMeasurementCallback;
    new-instance v2, Landroid/adservices/measurement/WebTriggerRegistrationRequestInternal$Builder;

    .line 444
    invoke-direct {p0}, Landroid/adservices/measurement/MeasurementCompatibleManager;->getAppPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Landroid/adservices/measurement/MeasurementCompatibleManager;->getSdkPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, p1, v0, v1}, Landroid/adservices/measurement/WebTriggerRegistrationRequestInternal$Builder;-><init>(Landroid/adservices/measurement/WebTriggerRegistrationRequest;Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    .local v2, "builder":Landroid/adservices/measurement/WebTriggerRegistrationRequestInternal$Builder;
    new-instance v0, Landroid/adservices/measurement/MeasurementCompatibleManager$$ExternalSyntheticLambda14;

    move-object v1, p0

    move-object v4, p2

    move-object v7, p3

    .end local p2    # "executor":Ljava/util/concurrent/Executor;
    .end local p3    # "callback":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Ljava/lang/Object;Ljava/lang/Exception;>;"
    .local v4, "executor":Ljava/util/concurrent/Executor;
    .local v7, "callback":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Ljava/lang/Object;Ljava/lang/Exception;>;"
    invoke-direct/range {v0 .. v7}, Landroid/adservices/measurement/MeasurementCompatibleManager$$ExternalSyntheticLambda14;-><init>(Landroid/adservices/measurement/MeasurementCompatibleManager;Landroid/adservices/measurement/WebTriggerRegistrationRequestInternal$Builder;Landroid/adservices/measurement/IMeasurementService;Ljava/util/concurrent/Executor;Landroid/adservices/common/CallerMetadata;Landroid/adservices/measurement/IMeasurementCallback;Landroid/os/OutcomeReceiver;)V

    invoke-direct {p0, v0}, Landroid/adservices/measurement/MeasurementCompatibleManager;->getAdId(Landroid/adservices/measurement/MeasurementCompatibleManager$MeasurementAdIdCallback;)V

    .line 455
    return-void
.end method

.method public blacklist unbindFromService()V
    .registers 2

    .line 654
    iget-object v0, p0, Landroid/adservices/measurement/MeasurementCompatibleManager;->mServiceBinder:Lcom/android/adservices/ServiceBinder;

    invoke-virtual {v0}, Lcom/android/adservices/ServiceBinder;->unbindFromService()V

    .line 655
    return-void
.end method
