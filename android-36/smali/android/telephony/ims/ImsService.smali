.class public Landroid/telephony/ims/ImsService;
.super Landroid/app/Service;
.source "ImsService.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/ims/ImsService$Listener;,
        Landroid/telephony/ims/ImsService$ImsServiceCapability;
    }
.end annotation


# static fields
.field private static final blacklist CAPABILITIES_LOG_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist CAPABILITY_EMERGENCY_OVER_MMTEL:J = 0x1L

.field public static final blacklist CAPABILITY_MAX_INDEX:J

.field public static final whitelist CAPABILITY_SIP_DELEGATE_CREATION:J = 0x2L

.field public static final blacklist CAPABILITY_SUPPORTS_SIMULTANEOUS_CALLING:J = 0x8L

.field public static final whitelist CAPABILITY_TERMINAL_BASED_CALL_WAITING:J = 0x4L

.field private static final greylist-max-o LOG_TAG:Ljava/lang/String; = "ImsService"

.field public static final greylist-max-o SERVICE_INTERFACE:Ljava/lang/String; = "android.telephony.ims.ImsService"


# instance fields
.field private final blacklist mCreateImsFeatureWithSlotIdFlagMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/SparseBooleanArray;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

.field private blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private final blacklist mExecutorLock:Ljava/lang/Object;

.field private final greylist-max-o mFeaturesBySlot:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/SparseArray<",
            "Landroid/telephony/ims/feature/ImsFeature;",
            ">;>;"
        }
    .end annotation
.end field

.field protected final greylist-max-o mImsServiceController:Landroid/os/IBinder;

.field private greylist-max-o mListener:Landroid/telephony/ims/aidl/IImsServiceControllerListener;

.field private final blacklist mListenerLock:Ljava/lang/Object;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmDeathRecipient(Landroid/telephony/ims/ImsService;)Landroid/os/IBinder$DeathRecipient;
    .registers 1

    iget-object p0, p0, Landroid/telephony/ims/ImsService;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmListener(Landroid/telephony/ims/ImsService;)Landroid/telephony/ims/aidl/IImsServiceControllerListener;
    .registers 1

    iget-object p0, p0, Landroid/telephony/ims/ImsService;->mListener:Landroid/telephony/ims/aidl/IImsServiceControllerListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmListenerLock(Landroid/telephony/ims/ImsService;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Landroid/telephony/ims/ImsService;->mListenerLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmListener(Landroid/telephony/ims/ImsService;Landroid/telephony/ims/aidl/IImsServiceControllerListener;)V
    .registers 2

    iput-object p1, p0, Landroid/telephony/ims/ImsService;->mListener:Landroid/telephony/ims/aidl/IImsServiceControllerListener;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$maddImsFeatureStatusCallback(Landroid/telephony/ims/ImsService;IILcom/android/ims/internal/IImsFeatureStatusCallback;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/telephony/ims/ImsService;->addImsFeatureStatusCallback(IILcom/android/ims/internal/IImsFeatureStatusCallback;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mcreateEmergencyOnlyMmTelFeatureInternal(Landroid/telephony/ims/ImsService;I)Landroid/telephony/ims/aidl/IImsMmTelFeature;
    .registers 2

    invoke-direct {p0, p1}, Landroid/telephony/ims/ImsService;->createEmergencyOnlyMmTelFeatureInternal(I)Landroid/telephony/ims/aidl/IImsMmTelFeature;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mcreateMmTelFeatureInternal(Landroid/telephony/ims/ImsService;II)Landroid/telephony/ims/aidl/IImsMmTelFeature;
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/telephony/ims/ImsService;->createMmTelFeatureInternal(II)Landroid/telephony/ims/aidl/IImsMmTelFeature;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mcreateRcsFeatureInternal(Landroid/telephony/ims/ImsService;II)Landroid/telephony/ims/aidl/IImsRcsFeature;
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/telephony/ims/ImsService;->createRcsFeatureInternal(II)Landroid/telephony/ims/aidl/IImsRcsFeature;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mexecuteMethodAsync(Landroid/telephony/ims/ImsService;Ljava/lang/Runnable;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/telephony/ims/ImsService;->executeMethodAsync(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mexecuteMethodAsyncForResult(Landroid/telephony/ims/ImsService;Ljava/util/function/Supplier;Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/telephony/ims/ImsService;->executeMethodAsyncForResult(Ljava/util/function/Supplier;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetCachedExecutor(Landroid/telephony/ims/ImsService;)Ljava/util/concurrent/Executor;
    .registers 1

    invoke-direct {p0}, Landroid/telephony/ims/ImsService;->getCachedExecutor()Ljava/util/concurrent/Executor;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mreleaseResource(Landroid/telephony/ims/ImsService;)V
    .registers 1

    invoke-direct {p0}, Landroid/telephony/ims/ImsService;->releaseResource()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mremoveImsFeature(Landroid/telephony/ims/ImsService;II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/telephony/ims/ImsService;->removeImsFeature(II)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mremoveImsFeatureStatusCallback(Landroid/telephony/ims/ImsService;IILcom/android/ims/internal/IImsFeatureStatusCallback;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/telephony/ims/ImsService;->removeImsFeatureStatusCallback(IILcom/android/ims/internal/IImsFeatureStatusCallback;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mresetImsInternal(Landroid/telephony/ims/ImsService;II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/telephony/ims/ImsService;->resetImsInternal(II)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msetImsFeatureCreatedForSlot(Landroid/telephony/ims/ImsService;IIZ)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/telephony/ims/ImsService;->setImsFeatureCreatedForSlot(IIZ)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smsanitizeCapabilities(J)J
    .registers 2

    invoke-static {p0, p1}, Landroid/telephony/ims/ImsService;->sanitizeCapabilities(J)J

    move-result-wide p0

    return-wide p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 12

    .line 185
    nop

    .line 186
    const-wide/16 v0, 0x8

    invoke-static {v0, v1}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v2

    int-to-long v2, v2

    sput-wide v2, Landroid/telephony/ims/ImsService;->CAPABILITY_MAX_INDEX:J

    .line 208
    nop

    .line 209
    const-wide/16 v2, 0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 210
    const-wide/16 v2, 0x2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 211
    const-wide/16 v2, 0x4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    .line 212
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    .line 208
    const-string v5, "EMERGENCY_OVER_MMTEL"

    const-string v7, "SIP_DELEGATE_CREATION"

    const-string v9, "TERMINAL_BASED_CALL_WAITING"

    const-string v11, "SIMULTANEOUS_CALLING"

    invoke-static/range {v4 .. v11}, Ljava/util/Map;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Landroid/telephony/ims/ImsService;->CAPABILITIES_LOG_MAP:Ljava/util/Map;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 2

    .line 244
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 224
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/ImsService;->mFeaturesBySlot:Landroid/util/SparseArray;

    .line 229
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/ImsService;->mCreateImsFeatureWithSlotIdFlagMap:Landroid/util/SparseArray;

    .line 233
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/ImsService;->mListenerLock:Ljava/lang/Object;

    .line 234
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/ImsService;->mExecutorLock:Ljava/lang/Object;

    .line 265
    new-instance v0, Landroid/telephony/ims/ImsService$1;

    invoke-direct {v0, p0}, Landroid/telephony/ims/ImsService$1;-><init>(Landroid/telephony/ims/ImsService;)V

    iput-object v0, p0, Landroid/telephony/ims/ImsService;->mImsServiceController:Landroid/os/IBinder;

    .line 437
    new-instance v0, Landroid/telephony/ims/ImsService$2;

    invoke-direct {v0, p0}, Landroid/telephony/ims/ImsService$2;-><init>(Landroid/telephony/ims/ImsService;)V

    iput-object v0, p0, Landroid/telephony/ims/ImsService;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    .line 245
    return-void
.end method

.method private greylist-max-o addImsFeature(IILandroid/telephony/ims/feature/ImsFeature;)V
    .registers 7
    .param p1, "slotId"    # I
    .param p2, "featureType"    # I
    .param p3, "f"    # Landroid/telephony/ims/feature/ImsFeature;

    .line 544
    iget-object v0, p0, Landroid/telephony/ims/ImsService;->mFeaturesBySlot:Landroid/util/SparseArray;

    monitor-enter v0

    .line 546
    :try_start_3
    iget-object v1, p0, Landroid/telephony/ims/ImsService;->mFeaturesBySlot:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    .line 547
    .local v1, "features":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/telephony/ims/feature/ImsFeature;>;"
    if-nez v1, :cond_18

    .line 549
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    move-object v1, v2

    .line 550
    iget-object v2, p0, Landroid/telephony/ims/ImsService;->mFeaturesBySlot:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 552
    :cond_18
    invoke-virtual {v1, p2, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 553
    .end local v1    # "features":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/telephony/ims/feature/ImsFeature;>;"
    monitor-exit v0

    .line 554
    return-void

    .line 553
    :catchall_1d
    move-exception v1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw v1
.end method

.method private blacklist addImsFeatureStatusCallback(IILcom/android/ims/internal/IImsFeatureStatusCallback;)V
    .registers 9
    .param p1, "slotId"    # I
    .param p2, "featureType"    # I
    .param p3, "c"    # Lcom/android/ims/internal/IImsFeatureStatusCallback;

    .line 511
    iget-object v0, p0, Landroid/telephony/ims/ImsService;->mFeaturesBySlot:Landroid/util/SparseArray;

    monitor-enter v0

    .line 513
    :try_start_3
    iget-object v1, p0, Landroid/telephony/ims/ImsService;->mFeaturesBySlot:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    .line 514
    .local v1, "features":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/telephony/ims/feature/ImsFeature;>;"
    if-nez v1, :cond_27

    .line 515
    const-string v2, "ImsService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can not add ImsFeatureStatusCallback - no features on slot "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    monitor-exit v0

    return-void

    .line 519
    :cond_27
    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/ims/feature/ImsFeature;

    .line 520
    .local v2, "f":Landroid/telephony/ims/feature/ImsFeature;
    if-eqz v2, :cond_32

    .line 521
    invoke-virtual {v2, p3}, Landroid/telephony/ims/feature/ImsFeature;->addImsFeatureStatusCallback(Lcom/android/ims/internal/IImsFeatureStatusCallback;)V

    .line 523
    .end local v1    # "features":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/telephony/ims/feature/ImsFeature;>;"
    .end local v2    # "f":Landroid/telephony/ims/feature/ImsFeature;
    :cond_32
    monitor-exit v0

    .line 524
    return-void

    .line 523
    :catchall_34
    move-exception v1

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_3 .. :try_end_36} :catchall_34

    throw v1
.end method

.method private blacklist createEmergencyOnlyMmTelFeatureInternal(I)Landroid/telephony/ims/aidl/IImsMmTelFeature;
    .registers 5
    .param p1, "slotId"    # I

    .line 481
    invoke-virtual {p0, p1}, Landroid/telephony/ims/ImsService;->createEmergencyOnlyMmTelFeature(I)Landroid/telephony/ims/feature/MmTelFeature;

    move-result-object v0

    .line 482
    .local v0, "f":Landroid/telephony/ims/feature/MmTelFeature;
    if-eqz v0, :cond_16

    .line 483
    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, v1}, Landroid/telephony/ims/ImsService;->setupFeature(Landroid/telephony/ims/feature/ImsFeature;II)V

    .line 484
    invoke-direct {p0}, Landroid/telephony/ims/ImsService;->getCachedExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/telephony/ims/feature/MmTelFeature;->setDefaultExecutor(Ljava/util/concurrent/Executor;)V

    .line 485
    invoke-virtual {v0}, Landroid/telephony/ims/feature/MmTelFeature;->getBinder()Landroid/telephony/ims/aidl/IImsMmTelFeature;

    move-result-object v1

    return-object v1

    .line 487
    :cond_16
    const-string v1, "ImsService"

    const-string v2, "createEmergencyOnlyMmTelFeatureInternal: null feature returned."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    const/4 v1, 0x0

    return-object v1
.end method

.method private blacklist createMmTelFeatureInternal(II)Landroid/telephony/ims/aidl/IImsMmTelFeature;
    .registers 6
    .param p1, "slotId"    # I
    .param p2, "subscriptionId"    # I

    .line 469
    invoke-virtual {p0, p1, p2}, Landroid/telephony/ims/ImsService;->createMmTelFeatureForSubscription(II)Landroid/telephony/ims/feature/MmTelFeature;

    move-result-object v0

    .line 470
    .local v0, "f":Landroid/telephony/ims/feature/MmTelFeature;
    if-eqz v0, :cond_16

    .line 471
    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, v1}, Landroid/telephony/ims/ImsService;->setupFeature(Landroid/telephony/ims/feature/ImsFeature;II)V

    .line 472
    invoke-direct {p0}, Landroid/telephony/ims/ImsService;->getCachedExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/telephony/ims/feature/MmTelFeature;->setDefaultExecutor(Ljava/util/concurrent/Executor;)V

    .line 473
    invoke-virtual {v0}, Landroid/telephony/ims/feature/MmTelFeature;->getBinder()Landroid/telephony/ims/aidl/IImsMmTelFeature;

    move-result-object v1

    return-object v1

    .line 475
    :cond_16
    const-string v1, "ImsService"

    const-string v2, "createMmTelFeatureInternal: null feature returned."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    const/4 v1, 0x0

    return-object v1
.end method

.method private blacklist createRcsFeatureInternal(II)Landroid/telephony/ims/aidl/IImsRcsFeature;
    .registers 6
    .param p1, "slotId"    # I
    .param p2, "subId"    # I

    .line 493
    invoke-virtual {p0, p1, p2}, Landroid/telephony/ims/ImsService;->createRcsFeatureForSubscription(II)Landroid/telephony/ims/feature/RcsFeature;

    move-result-object v0

    .line 494
    .local v0, "f":Landroid/telephony/ims/feature/RcsFeature;
    if-eqz v0, :cond_16

    .line 495
    invoke-direct {p0}, Landroid/telephony/ims/ImsService;->getCachedExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/telephony/ims/feature/RcsFeature;->setDefaultExecutor(Ljava/util/concurrent/Executor;)V

    .line 496
    const/4 v1, 0x2

    invoke-direct {p0, v0, p1, v1}, Landroid/telephony/ims/ImsService;->setupFeature(Landroid/telephony/ims/feature/ImsFeature;II)V

    .line 497
    invoke-virtual {v0}, Landroid/telephony/ims/feature/RcsFeature;->getBinder()Landroid/telephony/ims/aidl/IImsRcsFeature;

    move-result-object v1

    return-object v1

    .line 499
    :cond_16
    const-string v1, "ImsService"

    const-string v2, "createRcsFeatureInternal: null feature returned."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    const/4 v1, 0x0

    return-object v1
.end method

.method private blacklist executeMethodAsync(Ljava/lang/Runnable;Ljava/lang/String;)V
    .registers 6
    .param p1, "r"    # Ljava/lang/Runnable;
    .param p2, "errorLogName"    # Ljava/lang/String;

    .line 649
    :try_start_0
    new-instance v0, Landroid/telephony/ims/ImsService$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Landroid/telephony/ims/ImsService$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Runnable;)V

    .line 651
    invoke-direct {p0}, Landroid/telephony/ims/ImsService;->getCachedExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    .line 649
    invoke-static {v0, v1}, Ljava/util/concurrent/CompletableFuture;->runAsync(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    .line 651
    invoke-virtual {v0}, Ljava/util/concurrent/CompletableFuture;->join()Ljava/lang/Object;
    :try_end_10
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_10} :catch_11
    .catch Ljava/util/concurrent/CompletionException; {:try_start_0 .. :try_end_10} :catch_11

    .line 655
    goto :goto_38

    .line 652
    :catch_11
    move-exception v0

    .line 653
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ImsService Binder - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 654
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 653
    const-string v2, "ImsService"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_38
    return-void
.end method

.method private blacklist executeMethodAsyncForResult(Ljava/util/function/Supplier;Ljava/lang/String;)Ljava/lang/Object;
    .registers 7
    .param p2, "errorLogName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Supplier<",
            "TT;>;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 659
    .local p1, "r":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<TT;>;"
    new-instance v0, Landroid/telephony/ims/ImsService$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Landroid/telephony/ims/ImsService$$ExternalSyntheticLambda1;-><init>(Ljava/util/function/Supplier;)V

    .line 660
    invoke-direct {p0}, Landroid/telephony/ims/ImsService;->getCachedExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    .line 659
    invoke-static {v0, v1}, Ljava/util/concurrent/CompletableFuture;->supplyAsync(Ljava/util/function/Supplier;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    .line 662
    .local v0, "future":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    :try_start_d
    invoke-virtual {v0}, Ljava/util/concurrent/CompletableFuture;->get()Ljava/lang/Object;

    move-result-object v1
    :try_end_11
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_d .. :try_end_11} :catch_12
    .catch Ljava/lang/InterruptedException; {:try_start_d .. :try_end_11} :catch_12

    return-object v1

    .line 663
    :catch_12
    move-exception v1

    .line 664
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ImsService Binder - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 665
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 664
    const-string v3, "ImsService"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    const/4 v2, 0x0

    return-object v2
.end method

.method private blacklist getCachedExecutor()Ljava/util/concurrent/Executor;
    .registers 4

    .line 459
    iget-object v0, p0, Landroid/telephony/ims/ImsService;->mExecutorLock:Ljava/lang/Object;

    monitor-enter v0

    .line 460
    :try_start_3
    iget-object v1, p0, Landroid/telephony/ims/ImsService;->mExecutor:Ljava/util/concurrent/Executor;

    if-nez v1, :cond_16

    .line 461
    invoke-virtual {p0}, Landroid/telephony/ims/ImsService;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    .line 462
    .local v1, "e":Ljava/util/concurrent/Executor;
    if-eqz v1, :cond_f

    move-object v2, v1

    goto :goto_14

    :cond_f
    new-instance v2, Landroid/app/PendingIntent$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Landroid/app/PendingIntent$$ExternalSyntheticLambda0;-><init>()V

    :goto_14
    iput-object v2, p0, Landroid/telephony/ims/ImsService;->mExecutor:Ljava/util/concurrent/Executor;

    .line 464
    .end local v1    # "e":Ljava/util/concurrent/Executor;
    :cond_16
    iget-object v1, p0, Landroid/telephony/ims/ImsService;->mExecutor:Ljava/util/concurrent/Executor;

    monitor-exit v0

    return-object v1

    .line 465
    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method public static blacklist getCapabilitiesString(J)Ljava/lang/String;
    .registers 15
    .param p0, "caps"    # J

    .line 963
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 964
    .local v0, "result":Ljava/lang/StringBuffer;
    const-string v1, "capabilities={ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 967
    const-wide/16 v1, -0x1

    .line 969
    .local v1, "filter":J
    const-wide/16 v3, 0x0

    .line 970
    .local v3, "i":J
    :goto_e
    and-long v5, p0, v1

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-eqz v5, :cond_52

    const-wide/16 v5, 0x3f

    cmp-long v5, v3, v5

    if-gtz v5, :cond_52

    .line 971
    long-to-int v5, v3

    const-wide/16 v9, 0x1

    shl-long v5, v9, v5

    .line 972
    .local v5, "bitToCheck":J
    and-long v11, p0, v5

    cmp-long v7, v11, v7

    if-eqz v7, :cond_4e

    .line 973
    sget-object v7, Landroid/telephony/ims/ImsService;->CAPABILITIES_LOG_MAP:Ljava/util/Map;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "?"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v7, v8, v11}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 974
    const-string v7, " "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 977
    :cond_4e
    const/4 v7, 0x1

    shl-long/2addr v1, v7

    .line 978
    add-long/2addr v3, v9

    .line 979
    .end local v5    # "bitToCheck":J
    goto :goto_e

    .line 980
    :cond_52
    const-string/jumbo v5, "}"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 981
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method private blacklist getImsFeatureCreatedForSlot(I)Landroid/util/SparseBooleanArray;
    .registers 4
    .param p1, "slotId"    # I

    .line 613
    iget-object v0, p0, Landroid/telephony/ims/ImsService;->mCreateImsFeatureWithSlotIdFlagMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseBooleanArray;

    .line 614
    .local v0, "createFlag":Landroid/util/SparseBooleanArray;
    if-nez v0, :cond_15

    .line 615
    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    move-object v0, v1

    .line 616
    iget-object v1, p0, Landroid/telephony/ims/ImsService;->mCreateImsFeatureWithSlotIdFlagMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 618
    :cond_15
    return-object v0
.end method

.method static synthetic blacklist lambda$executeMethodAsync$0(Ljava/lang/Runnable;)V
    .registers 1
    .param p0, "r"    # Ljava/lang/Runnable;

    .line 650
    invoke-static {p0}, Lcom/android/internal/telephony/util/TelephonyUtils;->runWithCleanCallingIdentity(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$executeMethodAsyncForResult$1(Ljava/util/function/Supplier;)Ljava/lang/Object;
    .registers 2
    .param p0, "r"    # Ljava/util/function/Supplier;

    .line 660
    invoke-static {p0}, Lcom/android/internal/telephony/util/TelephonyUtils;->runWithCleanCallingIdentity(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private blacklist notifySubscriptionRemoved(I)V
    .registers 4
    .param p1, "slotId"    # I

    .line 764
    nop

    .line 765
    invoke-virtual {p0, p1}, Landroid/telephony/ims/ImsService;->getRegistration(I)Landroid/telephony/ims/stub/ImsRegistrationImplBase;

    move-result-object v0

    .line 766
    .local v0, "registrationImplBase":Landroid/telephony/ims/stub/ImsRegistrationImplBase;
    if-eqz v0, :cond_a

    .line 767
    invoke-virtual {v0}, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->clearRegistrationCache()V

    .line 770
    :cond_a
    invoke-virtual {p0, p1}, Landroid/telephony/ims/ImsService;->getConfig(I)Landroid/telephony/ims/stub/ImsConfigImplBase;

    move-result-object v1

    .line 771
    .local v1, "imsConfigImplBase":Landroid/telephony/ims/stub/ImsConfigImplBase;
    if-eqz v1, :cond_13

    .line 772
    invoke-virtual {v1}, Landroid/telephony/ims/stub/ImsConfigImplBase;->clearConfigurationCache()V

    .line 774
    :cond_13
    return-void
.end method

.method private blacklist releaseResource()V
    .registers 6

    .line 622
    const-string v0, "ImsService"

    const-string v1, "cleaning up features"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    iget-object v0, p0, Landroid/telephony/ims/ImsService;->mFeaturesBySlot:Landroid/util/SparseArray;

    monitor-enter v0

    .line 627
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    :try_start_b
    iget-object v2, p0, Landroid/telephony/ims/ImsService;->mFeaturesBySlot:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_39

    .line 628
    iget-object v2, p0, Landroid/telephony/ims/ImsService;->mFeaturesBySlot:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseArray;

    .line 629
    .local v2, "features":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/telephony/ims/feature/ImsFeature;>;"
    if-nez v2, :cond_1e

    .line 630
    goto :goto_36

    .line 633
    :cond_1e
    const/4 v3, 0x0

    .local v3, "index":I
    :goto_1f
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_33

    .line 634
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/ims/feature/ImsFeature;

    .line 635
    .local v4, "imsFeature":Landroid/telephony/ims/feature/ImsFeature;
    if-eqz v4, :cond_30

    .line 636
    invoke-virtual {v4}, Landroid/telephony/ims/feature/ImsFeature;->onFeatureRemoved()V

    .line 633
    :cond_30
    add-int/lit8 v3, v3, 0x1

    goto :goto_1f

    .line 639
    .end local v3    # "index":I
    .end local v4    # "imsFeature":Landroid/telephony/ims/feature/ImsFeature;
    :cond_33
    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    .line 627
    :goto_36
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 641
    .end local v1    # "i":I
    .end local v2    # "features":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/telephony/ims/feature/ImsFeature;>;"
    :cond_39
    iget-object v1, p0, Landroid/telephony/ims/ImsService;->mFeaturesBySlot:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 642
    monitor-exit v0

    .line 643
    return-void

    .line 642
    :catchall_40
    move-exception v1

    monitor-exit v0
    :try_end_42
    .catchall {:try_start_b .. :try_end_42} :catchall_40

    throw v1
.end method

.method private blacklist removeImsFeature(II)V
    .registers 9
    .param p1, "slotId"    # I
    .param p2, "featureType"    # I

    .line 558
    invoke-direct {p0, p1}, Landroid/telephony/ims/ImsService;->notifySubscriptionRemoved(I)V

    .line 560
    iget-object v0, p0, Landroid/telephony/ims/ImsService;->mFeaturesBySlot:Landroid/util/SparseArray;

    monitor-enter v0

    .line 562
    :try_start_6
    iget-object v1, p0, Landroid/telephony/ims/ImsService;->mFeaturesBySlot:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    .line 563
    .local v1, "features":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/telephony/ims/feature/ImsFeature;>;"
    if-nez v1, :cond_2a

    .line 564
    const-string v2, "ImsService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can not remove ImsFeature. No ImsFeatures exist on slot "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    monitor-exit v0

    return-void

    .line 568
    :cond_2a
    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/ims/feature/ImsFeature;

    .line 569
    .local v2, "f":Landroid/telephony/ims/feature/ImsFeature;
    if-nez v2, :cond_56

    .line 570
    const-string v3, "ImsService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can not remove ImsFeature. No feature with type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " exists on slot "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    monitor-exit v0

    return-void

    .line 574
    :cond_56
    invoke-virtual {v2}, Landroid/telephony/ims/feature/ImsFeature;->onFeatureRemoved()V

    .line 575
    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 576
    .end local v1    # "features":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/telephony/ims/feature/ImsFeature;>;"
    .end local v2    # "f":Landroid/telephony/ims/feature/ImsFeature;
    monitor-exit v0

    .line 577
    return-void

    .line 576
    :catchall_5e
    move-exception v1

    monitor-exit v0
    :try_end_60
    .catchall {:try_start_6 .. :try_end_60} :catchall_5e

    throw v1
.end method

.method private blacklist removeImsFeatureStatusCallback(IILcom/android/ims/internal/IImsFeatureStatusCallback;)V
    .registers 9
    .param p1, "slotId"    # I
    .param p2, "featureType"    # I
    .param p3, "c"    # Lcom/android/ims/internal/IImsFeatureStatusCallback;

    .line 528
    iget-object v0, p0, Landroid/telephony/ims/ImsService;->mFeaturesBySlot:Landroid/util/SparseArray;

    monitor-enter v0

    .line 530
    :try_start_3
    iget-object v1, p0, Landroid/telephony/ims/ImsService;->mFeaturesBySlot:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    .line 531
    .local v1, "features":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/telephony/ims/feature/ImsFeature;>;"
    if-nez v1, :cond_27

    .line 532
    const-string v2, "ImsService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can not remove ImsFeatureStatusCallback - no features on slot "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    monitor-exit v0

    return-void

    .line 536
    :cond_27
    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/ims/feature/ImsFeature;

    .line 537
    .local v2, "f":Landroid/telephony/ims/feature/ImsFeature;
    if-eqz v2, :cond_32

    .line 538
    invoke-virtual {v2, p3}, Landroid/telephony/ims/feature/ImsFeature;->removeImsFeatureStatusCallback(Lcom/android/ims/internal/IImsFeatureStatusCallback;)V

    .line 540
    .end local v1    # "features":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/telephony/ims/feature/ImsFeature;>;"
    .end local v2    # "f":Landroid/telephony/ims/feature/ImsFeature;
    :cond_32
    monitor-exit v0

    .line 541
    return-void

    .line 540
    :catchall_34
    move-exception v1

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_3 .. :try_end_36} :catchall_34

    throw v1
.end method

.method private blacklist resetImsInternal(II)V
    .registers 4
    .param p1, "slotId"    # I
    .param p2, "subId"    # I

    .line 672
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/telephony/ims/ImsService;->resetIms(I)V
    :try_end_3
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_3} :catch_4

    .line 675
    goto :goto_8

    .line 673
    :catch_4
    move-exception v0

    .line 674
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    invoke-virtual {p0, p1, p2}, Landroid/telephony/ims/ImsService;->disableImsForSubscription(II)V

    .line 676
    .end local v0    # "e":Ljava/lang/UnsupportedOperationException;
    :goto_8
    return-void
.end method

.method private static blacklist sanitizeCapabilities(J)J
    .registers 8
    .param p0, "caps"    # J

    .line 947
    const-wide/16 v0, -0x1

    .line 949
    .local v0, "filter":J
    sget-wide v2, Landroid/telephony/ims/ImsService;->CAPABILITY_MAX_INDEX:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    long-to-int v2, v2

    shl-long/2addr v0, v2

    .line 951
    not-long v2, v0

    and-long/2addr p0, v2

    .line 954
    const-wide/16 v2, -0x2

    and-long/2addr p0, v2

    .line 955
    return-wide p0
.end method

.method private blacklist setImsFeatureCreatedForSlot(IIZ)V
    .registers 6
    .param p1, "slotId"    # I
    .param p2, "featureType"    # I
    .param p3, "createdForSlot"    # Z

    .line 596
    iget-object v0, p0, Landroid/telephony/ims/ImsService;->mCreateImsFeatureWithSlotIdFlagMap:Landroid/util/SparseArray;

    monitor-enter v0

    .line 597
    :try_start_3
    invoke-direct {p0, p1}, Landroid/telephony/ims/ImsService;->getImsFeatureCreatedForSlot(I)Landroid/util/SparseBooleanArray;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 598
    monitor-exit v0

    .line 599
    return-void

    .line 598
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method private blacklist setupFeature(Landroid/telephony/ims/feature/ImsFeature;II)V
    .registers 4
    .param p1, "f"    # Landroid/telephony/ims/feature/ImsFeature;
    .param p2, "slotId"    # I
    .param p3, "featureType"    # I

    .line 505
    invoke-virtual {p1, p0, p2}, Landroid/telephony/ims/feature/ImsFeature;->initialize(Landroid/content/Context;I)V

    .line 506
    invoke-direct {p0, p2, p3, p1}, Landroid/telephony/ims/ImsService;->addImsFeature(IILandroid/telephony/ims/feature/ImsFeature;)V

    .line 507
    return-void
.end method


# virtual methods
.method public whitelist createEmergencyOnlyMmTelFeature(I)Landroid/telephony/ims/feature/MmTelFeature;
    .registers 3
    .param p1, "slotId"    # I

    .line 844
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, v0}, Landroid/telephony/ims/ImsService;->setImsFeatureCreatedForSlot(IIZ)V

    .line 845
    invoke-virtual {p0, p1}, Landroid/telephony/ims/ImsService;->createMmTelFeature(I)Landroid/telephony/ims/feature/MmTelFeature;

    move-result-object v0

    return-object v0
.end method

.method public whitelist createMmTelFeature(I)Landroid/telephony/ims/feature/MmTelFeature;
    .registers 3
    .param p1, "slotId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 859
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist createMmTelFeatureForSubscription(II)Landroid/telephony/ims/feature/MmTelFeature;
    .registers 4
    .param p1, "slotId"    # I
    .param p2, "subscriptionId"    # I

    .line 817
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, v0}, Landroid/telephony/ims/ImsService;->setImsFeatureCreatedForSlot(IIZ)V

    .line 818
    invoke-virtual {p0, p1}, Landroid/telephony/ims/ImsService;->createMmTelFeature(I)Landroid/telephony/ims/feature/MmTelFeature;

    move-result-object v0

    return-object v0
.end method

.method public whitelist createRcsFeature(I)Landroid/telephony/ims/feature/RcsFeature;
    .registers 3
    .param p1, "slotId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 873
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist createRcsFeatureForSubscription(II)Landroid/telephony/ims/feature/RcsFeature;
    .registers 5
    .param p1, "slotId"    # I
    .param p2, "subscriptionId"    # I

    .line 830
    const/4 v0, 0x2

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Landroid/telephony/ims/ImsService;->setImsFeatureCreatedForSlot(IIZ)V

    .line 831
    invoke-virtual {p0, p1}, Landroid/telephony/ims/ImsService;->createRcsFeature(I)Landroid/telephony/ims/feature/RcsFeature;

    move-result-object v0

    return-object v0
.end method

.method public whitelist disableIms(I)V
    .registers 2
    .param p1, "slotId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 792
    return-void
.end method

.method public whitelist disableImsForSubscription(II)V
    .registers 3
    .param p1, "slotId"    # I
    .param p2, "subscriptionId"    # I

    .line 755
    invoke-virtual {p0, p1}, Landroid/telephony/ims/ImsService;->disableIms(I)V

    .line 756
    return-void
.end method

.method public whitelist enableIms(I)V
    .registers 2
    .param p1, "slotId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 783
    return-void
.end method

.method public whitelist enableImsForSubscription(II)V
    .registers 3
    .param p1, "slotId"    # I
    .param p2, "subscriptionId"    # I

    .line 745
    invoke-virtual {p0, p1}, Landroid/telephony/ims/ImsService;->enableIms(I)V

    .line 746
    return-void
.end method

.method public whitelist getConfig(I)Landroid/telephony/ims/stub/ImsConfigImplBase;
    .registers 3
    .param p1, "slotId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 910
    new-instance v0, Landroid/telephony/ims/stub/ImsConfigImplBase;

    invoke-direct {v0}, Landroid/telephony/ims/stub/ImsConfigImplBase;-><init>()V

    return-object v0
.end method

.method public whitelist getConfigForSubscription(II)Landroid/telephony/ims/stub/ImsConfigImplBase;
    .registers 4
    .param p1, "slotId"    # I
    .param p2, "subscriptionId"    # I

    .line 885
    invoke-virtual {p0, p1}, Landroid/telephony/ims/ImsService;->getConfig(I)Landroid/telephony/ims/stub/ImsConfigImplBase;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getExecutor()Ljava/util/concurrent/Executor;
    .registers 2

    .line 992
    new-instance v0, Landroid/app/PendingIntent$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroid/app/PendingIntent$$ExternalSyntheticLambda0;-><init>()V

    return-object v0
.end method

.method public blacklist getImsFeature(II)Landroid/telephony/ims/feature/ImsFeature;
    .registers 6
    .param p1, "slotId"    # I
    .param p2, "featureType"    # I

    .line 584
    iget-object v0, p0, Landroid/telephony/ims/ImsService;->mFeaturesBySlot:Landroid/util/SparseArray;

    monitor-enter v0

    .line 586
    :try_start_3
    iget-object v1, p0, Landroid/telephony/ims/ImsService;->mFeaturesBySlot:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    .line 587
    .local v1, "features":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/telephony/ims/feature/ImsFeature;>;"
    if-nez v1, :cond_10

    .line 588
    monitor-exit v0

    const/4 v0, 0x0

    return-object v0

    .line 590
    :cond_10
    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/ims/feature/ImsFeature;

    monitor-exit v0

    return-object v2

    .line 591
    .end local v1    # "features":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/telephony/ims/feature/ImsFeature;>;"
    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw v1
.end method

.method public whitelist getImsServiceCapabilities()J
    .registers 3

    .line 721
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public whitelist getRegistration(I)Landroid/telephony/ims/stub/ImsRegistrationImplBase;
    .registers 3
    .param p1, "slotId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 922
    new-instance v0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;

    invoke-direct {v0}, Landroid/telephony/ims/stub/ImsRegistrationImplBase;-><init>()V

    return-object v0
.end method

.method public whitelist getRegistrationForSubscription(II)Landroid/telephony/ims/stub/ImsRegistrationImplBase;
    .registers 4
    .param p1, "slotId"    # I
    .param p2, "subscriptionId"    # I

    .line 897
    invoke-virtual {p0, p1}, Landroid/telephony/ims/ImsService;->getRegistration(I)Landroid/telephony/ims/stub/ImsRegistrationImplBase;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getSipTransport(I)Landroid/telephony/ims/stub/SipTransportImplBase;
    .registers 3
    .param p1, "slotId"    # I

    .line 943
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist isImsFeatureCreatedForSlot(II)Z
    .registers 5
    .param p1, "slotId"    # I
    .param p2, "featureType"    # I

    .line 607
    iget-object v0, p0, Landroid/telephony/ims/ImsService;->mCreateImsFeatureWithSlotIdFlagMap:Landroid/util/SparseArray;

    monitor-enter v0

    .line 608
    :try_start_3
    invoke-direct {p0, p1}, Landroid/telephony/ims/ImsService;->getImsFeatureCreatedForSlot(I)Landroid/util/SparseBooleanArray;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 609
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public whitelist onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;

    .line 451
    const-string v0, "android.telephony.ims.ImsService"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 452
    const-string v0, "ImsService"

    const-string v1, "ImsService Bound."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    iget-object v0, p0, Landroid/telephony/ims/ImsService;->mImsServiceController:Landroid/os/IBinder;

    return-object v0

    .line 455
    :cond_16
    const/4 v0, 0x0

    return-object v0
.end method

.method public final whitelist onUpdateSupportedImsFeatures(Landroid/telephony/ims/stub/ImsFeatureConfiguration;)V
    .registers 5
    .param p1, "c"    # Landroid/telephony/ims/stub/ImsFeatureConfiguration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 701
    iget-object v0, p0, Landroid/telephony/ims/ImsService;->mListenerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 702
    :try_start_3
    iget-object v1, p0, Landroid/telephony/ims/ImsService;->mListener:Landroid/telephony/ims/aidl/IImsServiceControllerListener;

    if-eqz v1, :cond_e

    .line 705
    iget-object v1, p0, Landroid/telephony/ims/ImsService;->mListener:Landroid/telephony/ims/aidl/IImsServiceControllerListener;

    .line 706
    .local v1, "l":Landroid/telephony/ims/aidl/IImsServiceControllerListener;
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_16

    .line 707
    invoke-interface {v1, p1}, Landroid/telephony/ims/aidl/IImsServiceControllerListener;->onUpdateSupportedImsFeatures(Landroid/telephony/ims/stub/ImsFeatureConfiguration;)V

    .line 708
    return-void

    .line 703
    .end local v1    # "l":Landroid/telephony/ims/aidl/IImsServiceControllerListener;
    :cond_e
    :try_start_e
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Framework is not ready"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/telephony/ims/ImsService;
    .end local p1    # "c":Landroid/telephony/ims/stub/ImsFeatureConfiguration;
    throw v1

    .line 706
    .restart local p0    # "this":Landroid/telephony/ims/ImsService;
    .restart local p1    # "c":Landroid/telephony/ims/stub/ImsFeatureConfiguration;
    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_e .. :try_end_18} :catchall_16

    throw v1
.end method

.method public whitelist querySupportedImsFeatures()Landroid/telephony/ims/stub/ImsFeatureConfiguration;
    .registers 2

    .line 690
    new-instance v0, Landroid/telephony/ims/stub/ImsFeatureConfiguration;

    invoke-direct {v0}, Landroid/telephony/ims/stub/ImsFeatureConfiguration;-><init>()V

    return-object v0
.end method

.method public whitelist readyForFeatureCreation()V
    .registers 1

    .line 735
    return-void
.end method

.method public blacklist resetIms(I)V
    .registers 3
    .param p1, "slotId"    # I

    .line 804
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
