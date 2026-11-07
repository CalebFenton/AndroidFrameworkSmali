.class public Lcom/android/ims/RcsFeatureManager;
.super Ljava/lang/Object;
.source "RcsFeatureManager.java"

# interfaces
.implements Lcom/android/ims/FeatureUpdates;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/RcsFeatureManager$CapabilityExchangeEventCallback;
    }
.end annotation


# static fields
.field private static final blacklist CAPABILITY_OPTIONS:I = 0x1

.field private static final blacklist CAPABILITY_PRESENCE:I = 0x2

.field private static blacklist DBG:Z = false

.field private static final blacklist TAG:Ljava/lang/String; = "RcsFeatureManager"


# instance fields
.field private final blacklist mBinderCache:Landroid/telephony/BinderCacheManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/telephony/BinderCacheManager<",
            "Landroid/telephony/ims/aidl/IImsRcsController;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mCapabilityEventCallback:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/ims/RcsFeatureManager$CapabilityExchangeEventCallback;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mCapabilityEventListener:Landroid/telephony/ims/aidl/ICapabilityExchangeEventListener;

.field private final blacklist mContext:Landroid/content/Context;

.field public blacklist mRcsFeatureConnection:Lcom/android/ims/RcsFeatureConnection;

.field private final blacklist mSlotId:I


# direct methods
.method public static synthetic blacklist $r8$lambda$Dnp0m9V8nkugFjgqqZWJB5ksTJ8(Landroid/content/Context;I)Lcom/android/ims/RcsFeatureManager;
    .registers 3

    new-instance v0, Lcom/android/ims/RcsFeatureManager;

    invoke-direct {v0, p0, p1}, Lcom/android/ims/RcsFeatureManager;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method public static synthetic blacklist $r8$lambda$aHBRI3erMCFMikRPPVc9GWBbYXU()Landroid/telephony/ims/aidl/IImsRcsController;
    .registers 1

    invoke-static {}, Lcom/android/ims/RcsFeatureManager;->getIImsRcsControllerInterface()Landroid/telephony/ims/aidl/IImsRcsController;

    move-result-object v0

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCapabilityEventCallback(Lcom/android/ims/RcsFeatureManager;)Ljava/util/Set;
    .registers 1

    iget-object p0, p0, Lcom/android/ims/RcsFeatureManager;->mCapabilityEventCallback:Ljava/util/Set;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mlog(Lcom/android/ims/RcsFeatureManager;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/ims/RcsFeatureManager;->log(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetDBG()Z
    .registers 1

    sget-boolean v0, Lcom/android/ims/RcsFeatureManager;->DBG:Z

    return v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 75
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/ims/RcsFeatureManager;->DBG:Z

    return-void
.end method

.method private constructor blacklist <init>(Landroid/content/Context;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "slotId"    # I

    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    new-instance v0, Lcom/android/ims/RcsFeatureManager$1;

    invoke-direct {v0, p0}, Lcom/android/ims/RcsFeatureManager$1;-><init>(Lcom/android/ims/RcsFeatureManager;)V

    iput-object v0, p0, Lcom/android/ims/RcsFeatureManager;->mCapabilityEventListener:Landroid/telephony/ims/aidl/ICapabilityExchangeEventListener;

    .line 143
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/ims/RcsFeatureManager;->mCapabilityEventCallback:Ljava/util/Set;

    .line 145
    new-instance v0, Landroid/telephony/BinderCacheManager;

    new-instance v1, Lcom/android/ims/RcsFeatureManager$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/android/ims/RcsFeatureManager$$ExternalSyntheticLambda2;-><init>()V

    invoke-direct {v0, v1}, Landroid/telephony/BinderCacheManager;-><init>(Landroid/telephony/BinderCacheManager$BinderInterfaceFactory;)V

    iput-object v0, p0, Lcom/android/ims/RcsFeatureManager;->mBinderCache:Landroid/telephony/BinderCacheManager;

    .line 177
    iput-object p1, p0, Lcom/android/ims/RcsFeatureManager;->mContext:Landroid/content/Context;

    .line 178
    iput p2, p0, Lcom/android/ims/RcsFeatureManager;->mSlotId:I

    .line 179
    return-void
.end method

.method private static blacklist awaitResult(Ljava/util/concurrent/CountDownLatch;Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Object;
    .registers 4
    .param p0, "latch"    # Ljava/util/concurrent/CountDownLatch;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/CountDownLatch;",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 400
    .local p1, "resultRef":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<TT;>;"
    :try_start_0
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_3} :catch_4

    .line 403
    goto :goto_c

    .line 401
    :catch_4
    move-exception v0

    .line 402
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 404
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_c
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private blacklist disableAllRcsUceCapabilities()V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/ImsException;
        }
    .end annotation

    .line 459
    const/4 v0, 0x3

    .line 460
    .local v0, "techNr":I
    const/4 v1, 0x0

    .line 461
    .local v1, "techLte":I
    const/4 v2, 0x1

    .line 462
    .local v2, "techIWlan":I
    new-instance v3, Landroid/telephony/ims/feature/CapabilityChangeRequest;

    invoke-direct {v3}, Landroid/telephony/ims/feature/CapabilityChangeRequest;-><init>()V

    .line 463
    .local v3, "request":Landroid/telephony/ims/feature/CapabilityChangeRequest;
    const/4 v4, 0x1

    const/4 v5, 0x3

    invoke-virtual {v3, v4, v5}, Landroid/telephony/ims/feature/CapabilityChangeRequest;->addCapabilitiesToDisableForTech(II)V

    .line 464
    const/4 v6, 0x0

    invoke-virtual {v3, v4, v6}, Landroid/telephony/ims/feature/CapabilityChangeRequest;->addCapabilitiesToDisableForTech(II)V

    .line 465
    invoke-virtual {v3, v4, v4}, Landroid/telephony/ims/feature/CapabilityChangeRequest;->addCapabilitiesToDisableForTech(II)V

    .line 466
    const/4 v7, 0x2

    invoke-virtual {v3, v7, v5}, Landroid/telephony/ims/feature/CapabilityChangeRequest;->addCapabilitiesToDisableForTech(II)V

    .line 467
    invoke-virtual {v3, v7, v6}, Landroid/telephony/ims/feature/CapabilityChangeRequest;->addCapabilitiesToDisableForTech(II)V

    .line 468
    invoke-virtual {v3, v7, v4}, Landroid/telephony/ims/feature/CapabilityChangeRequest;->addCapabilitiesToDisableForTech(II)V

    .line 469
    invoke-direct {p0, v3}, Lcom/android/ims/RcsFeatureManager;->sendCapabilityChangeRequest(Landroid/telephony/ims/feature/CapabilityChangeRequest;)V

    .line 470
    return-void
.end method

.method public static blacklist getConnector(Landroid/content/Context;ILcom/android/ims/FeatureConnector$Listener;Ljava/util/concurrent/Executor;Ljava/lang/String;)Lcom/android/ims/FeatureConnector;
    .registers 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "slotId"    # I
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .param p4, "logPrefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Lcom/android/ims/FeatureConnector$Listener<",
            "Lcom/android/ims/RcsFeatureManager;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/ims/FeatureConnector<",
            "Lcom/android/ims/RcsFeatureManager;",
            ">;"
        }
    .end annotation

    .line 167
    .local p2, "listener":Lcom/android/ims/FeatureConnector$Listener;, "Lcom/android/ims/FeatureConnector$Listener<Lcom/android/ims/RcsFeatureManager;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v6, v0

    .line 168
    .local v6, "filter":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 169
    new-instance v1, Lcom/android/ims/FeatureConnector;

    new-instance v4, Lcom/android/ims/RcsFeatureManager$$ExternalSyntheticLambda0;

    invoke-direct {v4}, Lcom/android/ims/RcsFeatureManager$$ExternalSyntheticLambda0;-><init>()V

    move-object v2, p0

    move v3, p1

    move-object v7, p2

    move-object v8, p3

    move-object v5, p4

    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "slotId":I
    .end local p2    # "listener":Lcom/android/ims/FeatureConnector$Listener;, "Lcom/android/ims/FeatureConnector$Listener<Lcom/android/ims/RcsFeatureManager;>;"
    .end local p3    # "executor":Ljava/util/concurrent/Executor;
    .end local p4    # "logPrefix":Ljava/lang/String;
    .local v2, "context":Landroid/content/Context;
    .local v3, "slotId":I
    .local v5, "logPrefix":Ljava/lang/String;
    .local v7, "listener":Lcom/android/ims/FeatureConnector$Listener;, "Lcom/android/ims/FeatureConnector$Listener<Lcom/android/ims/RcsFeatureManager;>;"
    .local v8, "executor":Ljava/util/concurrent/Executor;
    invoke-direct/range {v1 .. v8}, Lcom/android/ims/FeatureConnector;-><init>(Landroid/content/Context;ILcom/android/ims/FeatureConnector$ManagerFactory;Ljava/lang/String;Ljava/util/List;Lcom/android/ims/FeatureConnector$Listener;Ljava/util/concurrent/Executor;)V

    return-object v1
.end method

.method private blacklist getIImsRcsController()Landroid/telephony/ims/aidl/IImsRcsController;
    .registers 2

    .line 573
    iget-object v0, p0, Lcom/android/ims/RcsFeatureManager;->mBinderCache:Landroid/telephony/BinderCacheManager;

    invoke-virtual {v0}, Landroid/telephony/BinderCacheManager;->getBinder()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/telephony/ims/aidl/IImsRcsController;

    return-object v0
.end method

.method private static blacklist getIImsRcsControllerInterface()Landroid/telephony/ims/aidl/IImsRcsController;
    .registers 2

    .line 578
    invoke-static {}, Landroid/telephony/TelephonyFrameworkInitializer;->getTelephonyServiceManager()Landroid/os/TelephonyServiceManager;

    move-result-object v0

    .line 579
    invoke-virtual {v0}, Landroid/os/TelephonyServiceManager;->getTelephonyImsServiceRegisterer()Landroid/os/TelephonyServiceManager$ServiceRegisterer;

    move-result-object v0

    .line 580
    invoke-virtual {v0}, Landroid/os/TelephonyServiceManager$ServiceRegisterer;->get()Landroid/os/IBinder;

    move-result-object v0

    .line 581
    .local v0, "binder":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/telephony/ims/aidl/IImsRcsController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsRcsController;

    move-result-object v1

    .line 582
    .local v1, "c":Landroid/telephony/ims/aidl/IImsRcsController;
    return-object v1
.end method

.method private static blacklist isCapabilityTypeSupported(Landroid/content/Context;II)Z
    .registers 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subId"    # I
    .param p2, "capabilityType"    # I

    .line 497
    const/4 v0, -0x1

    const-string v1, "RcsFeatureManager"

    const/4 v2, 0x0

    if-ne p1, v0, :cond_1d

    .line 498
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isCapabilityTypeSupported: Invalid subId="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    return v2

    .line 502
    :cond_1d
    nop

    .line 503
    const-string v0, "carrier_config"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    .line 504
    .local v0, "configManager":Landroid/telephony/CarrierConfigManager;
    if-nez v0, :cond_3f

    .line 505
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isCapabilityTypeSupported: CarrierConfigManager is null, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    return v2

    .line 509
    :cond_3f
    invoke-virtual {v0, p1}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v3

    .line 510
    .local v3, "b":Landroid/os/PersistableBundle;
    if-nez v3, :cond_5c

    .line 511
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isCapabilityTypeSupported: PersistableBundle is null, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    return v2

    .line 515
    :cond_5c
    const/4 v1, 0x1

    if-ne p2, v1, :cond_66

    .line 516
    const-string v1, "use_rcs_sip_options_bool"

    invoke-virtual {v3, v1, v2}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1

    .line 517
    :cond_66
    const/4 v1, 0x2

    if-ne p2, v1, :cond_70

    .line 518
    const-string v1, "ims.enable_presence_publish_bool"

    invoke-virtual {v3, v1, v2}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1

    .line 520
    :cond_70
    return v2
.end method

.method private blacklist isOptionsSupported(I)Z
    .registers 4
    .param p1, "subId"    # I

    .line 484
    iget-object v0, p0, Lcom/android/ims/RcsFeatureManager;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/android/ims/RcsFeatureManager;->isCapabilityTypeSupported(Landroid/content/Context;II)Z

    move-result v0

    return v0
.end method

.method private blacklist isPresenceSupported(I)Z
    .registers 4
    .param p1, "subId"    # I

    .line 488
    iget-object v0, p0, Lcom/android/ims/RcsFeatureManager;->mContext:Landroid/content/Context;

    const/4 v1, 0x2

    invoke-static {v0, p1, v1}, Lcom/android/ims/RcsFeatureManager;->isCapabilityTypeSupported(Landroid/content/Context;II)Z

    move-result v0

    return v0
.end method

.method static synthetic blacklist lambda$registerFeatureCallback$0(Lcom/android/ims/internal/IImsServiceFeatureCallback;)V
    .registers 2
    .param p0, "cb"    # Lcom/android/ims/internal/IImsServiceFeatureCallback;

    .line 527
    const/4 v0, 0x3

    :try_start_1
    invoke-interface {p0, v0}, Lcom/android/ims/internal/IImsServiceFeatureCallback;->imsFeatureRemoved(I)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_4} :catch_5

    .line 529
    :goto_4
    goto :goto_7

    :catch_5
    move-exception v0

    goto :goto_4

    .line 530
    :goto_7
    return-void
.end method

.method private blacklist log(Ljava/lang/String;)V
    .registers 4
    .param p1, "s"    # Ljava/lang/String;

    .line 619
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RcsFeatureManager ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/ims/RcsFeatureManager;->mSlotId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    return-void
.end method

.method private blacklist loge(Ljava/lang/String;)V
    .registers 4
    .param p1, "s"    # Ljava/lang/String;

    .line 627
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RcsFeatureManager ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/ims/RcsFeatureManager;->mSlotId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    return-void
.end method

.method private blacklist loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 5
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "t"    # Ljava/lang/Throwable;

    .line 631
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RcsFeatureManager ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/ims/RcsFeatureManager;->mSlotId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 632
    return-void
.end method

.method private blacklist logi(Ljava/lang/String;)V
    .registers 4
    .param p1, "s"    # Ljava/lang/String;

    .line 623
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RcsFeatureManager ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/ims/RcsFeatureManager;->mSlotId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    return-void
.end method

.method private blacklist sendCapabilityChangeRequest(Landroid/telephony/ims/feature/CapabilityChangeRequest;)V
    .registers 6
    .param p1, "request"    # Landroid/telephony/ims/feature/CapabilityChangeRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/ImsException;
        }
    .end annotation

    .line 475
    :try_start_0
    sget-boolean v0, Lcom/android/ims/RcsFeatureManager;->DBG:Z

    if-eqz v0, :cond_1a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendCapabilityChangeRequest: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/ims/RcsFeatureManager;->log(Ljava/lang/String;)V

    .line 476
    :cond_1a
    iget-object v0, p0, Lcom/android/ims/RcsFeatureManager;->mRcsFeatureConnection:Lcom/android/ims/RcsFeatureConnection;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/ims/RcsFeatureConnection;->changeEnabledCapabilities(Landroid/telephony/ims/feature/CapabilityChangeRequest;Landroid/telephony/ims/aidl/IImsCapabilityCallback;)V
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_20} :catch_22

    .line 480
    nop

    .line 481
    return-void

    .line 477
    :catch_22
    move-exception v0

    .line 478
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Landroid/telephony/ims/ImsException;

    const-string v2, "Can not connect to service"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v1
.end method


# virtual methods
.method public blacklist addCapabilityEventCallback(Lcom/android/ims/RcsFeatureManager$CapabilityExchangeEventCallback;)V
    .registers 3
    .param p1, "listener"    # Lcom/android/ims/RcsFeatureManager$CapabilityExchangeEventCallback;

    .line 213
    iget-object v0, p0, Lcom/android/ims/RcsFeatureManager;->mCapabilityEventCallback:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 214
    return-void
.end method

.method public blacklist addRcsUceCapability(Landroid/telephony/ims/feature/CapabilityChangeRequest;I)V
    .registers 4
    .param p1, "request"    # Landroid/telephony/ims/feature/CapabilityChangeRequest;
    .param p2, "capability"    # I

    .line 432
    const/4 v0, 0x3

    invoke-virtual {p1, p2, v0}, Landroid/telephony/ims/feature/CapabilityChangeRequest;->addCapabilitiesToEnableForTech(II)V

    .line 434
    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/telephony/ims/feature/CapabilityChangeRequest;->addCapabilitiesToEnableForTech(II)V

    .line 436
    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Landroid/telephony/ims/feature/CapabilityChangeRequest;->addCapabilitiesToEnableForTech(II)V

    .line 438
    return-void
.end method

.method public blacklist associate(Lcom/android/ims/ImsFeatureContainer;I)V
    .registers 12
    .param p1, "c"    # Lcom/android/ims/ImsFeatureContainer;
    .param p2, "subId"    # I

    .line 587
    iget-object v0, p1, Lcom/android/ims/ImsFeatureContainer;->imsFeature:Landroid/os/IBinder;

    invoke-static {v0}, Landroid/telephony/ims/aidl/IImsRcsFeature$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsRcsFeature;

    move-result-object v5

    .line 588
    .local v5, "f":Landroid/telephony/ims/aidl/IImsRcsFeature;
    new-instance v1, Lcom/android/ims/RcsFeatureConnection;

    iget-object v2, p0, Lcom/android/ims/RcsFeatureManager;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/android/ims/RcsFeatureManager;->mSlotId:I

    iget-object v6, p1, Lcom/android/ims/ImsFeatureContainer;->imsConfig:Landroid/telephony/ims/aidl/IImsConfig;

    iget-object v7, p1, Lcom/android/ims/ImsFeatureContainer;->imsRegistration:Landroid/telephony/ims/aidl/IImsRegistration;

    iget-object v8, p1, Lcom/android/ims/ImsFeatureContainer;->sipTransport:Landroid/telephony/ims/aidl/ISipTransport;

    move v4, p2

    .end local p2    # "subId":I
    .local v4, "subId":I
    invoke-direct/range {v1 .. v8}, Lcom/android/ims/RcsFeatureConnection;-><init>(Landroid/content/Context;IILandroid/telephony/ims/aidl/IImsRcsFeature;Landroid/telephony/ims/aidl/IImsConfig;Landroid/telephony/ims/aidl/IImsRegistration;Landroid/telephony/ims/aidl/ISipTransport;)V

    iput-object v1, p0, Lcom/android/ims/RcsFeatureManager;->mRcsFeatureConnection:Lcom/android/ims/RcsFeatureConnection;

    .line 590
    return-void
.end method

.method public blacklist getConfig()Landroid/telephony/ims/aidl/IImsConfig;
    .registers 2

    .line 608
    iget-object v0, p0, Lcom/android/ims/RcsFeatureManager;->mRcsFeatureConnection:Lcom/android/ims/RcsFeatureConnection;

    invoke-virtual {v0}, Lcom/android/ims/RcsFeatureConnection;->getConfig()Landroid/telephony/ims/aidl/IImsConfig;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getImsRegistration()Landroid/telephony/ims/aidl/IImsRegistration;
    .registers 2

    .line 350
    iget-object v0, p0, Lcom/android/ims/RcsFeatureManager;->mRcsFeatureConnection:Lcom/android/ims/RcsFeatureConnection;

    invoke-virtual {v0}, Lcom/android/ims/RcsFeatureConnection;->getRegistration()Landroid/telephony/ims/aidl/IImsRegistration;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getImsRegistrationTech(Ljava/util/function/Consumer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 299
    .local p1, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Integer;>;"
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/RcsFeatureManager;->mRcsFeatureConnection:Lcom/android/ims/RcsFeatureConnection;

    invoke-virtual {v0}, Lcom/android/ims/RcsFeatureConnection;->getRegistrationTech()I

    move-result v0

    .line 300
    .local v0, "tech":I
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_e

    .line 304
    .end local v0    # "tech":I
    goto :goto_1c

    .line 301
    :catch_e
    move-exception v0

    .line 302
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "getImsRegistrationTech error: "

    invoke-direct {p0, v1, v0}, Lcom/android/ims/RcsFeatureManager;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 303
    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 305
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1c
    return-void
.end method

.method public blacklist getSipTransport()Landroid/telephony/ims/aidl/ISipTransport;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/ImsException;
        }
    .end annotation

    .line 343
    const-wide/16 v0, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/android/ims/RcsFeatureManager;->isImsServiceCapable(J)Z

    move-result v0

    if-nez v0, :cond_a

    .line 344
    const/4 v0, 0x0

    return-object v0

    .line 346
    :cond_a
    iget-object v0, p0, Lcom/android/ims/RcsFeatureManager;->mRcsFeatureConnection:Lcom/android/ims/RcsFeatureConnection;

    invoke-virtual {v0}, Lcom/android/ims/RcsFeatureConnection;->getSipTransport()Landroid/telephony/ims/aidl/ISipTransport;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getSubId()I
    .registers 2

    .line 615
    iget-object v0, p0, Lcom/android/ims/RcsFeatureManager;->mRcsFeatureConnection:Lcom/android/ims/RcsFeatureConnection;

    invoke-virtual {v0}, Lcom/android/ims/RcsFeatureConnection;->getSubId()I

    move-result v0

    return v0
.end method

.method public blacklist invalidate()V
    .registers 2

    .line 594
    iget-object v0, p0, Lcom/android/ims/RcsFeatureManager;->mRcsFeatureConnection:Lcom/android/ims/RcsFeatureConnection;

    invoke-virtual {v0}, Lcom/android/ims/RcsFeatureConnection;->onRemovedOrDied()V

    .line 595
    return-void
.end method

.method public blacklist isAvailable(II)Z
    .registers 7
    .param p1, "capability"    # I
    .param p2, "radioTech"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/ImsException;
        }
    .end annotation

    .line 414
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/RcsFeatureManager;->mRcsFeatureConnection:Lcom/android/ims/RcsFeatureConnection;

    invoke-virtual {v0}, Lcom/android/ims/RcsFeatureConnection;->getRegistrationTech()I

    move-result v0

    if-eq v0, p2, :cond_a

    .line 415
    const/4 v0, 0x0

    return v0

    .line 417
    :cond_a
    iget-object v0, p0, Lcom/android/ims/RcsFeatureManager;->mRcsFeatureConnection:Lcom/android/ims/RcsFeatureConnection;

    invoke-virtual {v0}, Lcom/android/ims/RcsFeatureConnection;->queryCapabilityStatus()I

    move-result v0

    .line 418
    .local v0, "currentStatus":I
    new-instance v1, Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;

    invoke-direct {v1, v0}, Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;-><init>(I)V

    invoke-virtual {v1, p1}, Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;->isCapable(I)Z

    move-result v1
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_19} :catch_1a

    return v1

    .line 419
    .end local v0    # "currentStatus":I
    :catch_1a
    move-exception v0

    .line 420
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "isAvailable error: "

    invoke-direct {p0, v1, v0}, Lcom/android/ims/RcsFeatureManager;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 421
    new-instance v1, Landroid/telephony/ims/ImsException;

    const-string v2, "Can not determine availability"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v1
.end method

.method public blacklist isCapable(II)Z
    .registers 11
    .param p1, "capability"    # I
    .param p2, "radioTech"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/ImsException;
        }
    .end annotation

    .line 360
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    move-object v7, v0

    .line 361
    .local v7, "latch":Ljava/util/concurrent/CountDownLatch;
    new-instance v6, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v6}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 363
    .local v6, "capableRef":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Ljava/lang/Boolean;>;"
    new-instance v2, Lcom/android/ims/RcsFeatureManager$2;

    move-object v3, p0

    move v4, p1

    move v5, p2

    .end local p1    # "capability":I
    .end local p2    # "radioTech":I
    .local v4, "capability":I
    .local v5, "radioTech":I
    invoke-direct/range {v2 .. v7}, Lcom/android/ims/RcsFeatureManager$2;-><init>(Lcom/android/ims/RcsFeatureManager;IILjava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/CountDownLatch;)V

    .line 388
    .local v2, "callback":Landroid/telephony/ims/aidl/IImsCapabilityCallback;
    :try_start_14
    sget-boolean p1, Lcom/android/ims/RcsFeatureManager;->DBG:Z

    if-eqz p1, :cond_38

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Query capability: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ", radioTech="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/ims/RcsFeatureManager;->log(Ljava/lang/String;)V

    .line 389
    :cond_38
    iget-object p1, v3, Lcom/android/ims/RcsFeatureManager;->mRcsFeatureConnection:Lcom/android/ims/RcsFeatureConnection;

    invoke-virtual {p1, v4, v5, v2}, Lcom/android/ims/RcsFeatureConnection;->queryCapabilityConfiguration(IILandroid/telephony/ims/aidl/IImsCapabilityCallback;)V

    .line 390
    invoke-static {v7, v6}, Lcom/android/ims/RcsFeatureManager;->awaitResult(Ljava/util/concurrent/CountDownLatch;Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_47
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_47} :catch_48

    return p1

    .line 391
    :catch_48
    move-exception v0

    move-object p1, v0

    .line 392
    .local p1, "e":Landroid/os/RemoteException;
    const-string p2, "isCapable error: "

    invoke-direct {p0, p2, p1}, Lcom/android/ims/RcsFeatureManager;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 393
    new-instance p2, Landroid/telephony/ims/ImsException;

    const-string v0, "Can not determine capabilities"

    invoke-direct {p2, v0, v1}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw p2
.end method

.method public blacklist isImsServiceCapable(J)Z
    .registers 7
    .param p1, "capabilities"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/ImsException;
        }
    .end annotation

    .line 332
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/RcsFeatureManager;->mRcsFeatureConnection:Lcom/android/ims/RcsFeatureConnection;

    invoke-virtual {v0, p1, p2}, Lcom/android/ims/RcsFeatureConnection;->isCapable(J)Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 333
    :catch_7
    move-exception v0

    .line 334
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Landroid/telephony/ims/ImsException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v1
.end method

.method public blacklist openConnection()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/ImsException;
        }
    .end annotation

    .line 187
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/RcsFeatureManager;->mRcsFeatureConnection:Lcom/android/ims/RcsFeatureConnection;

    iget-object v1, p0, Lcom/android/ims/RcsFeatureManager;->mCapabilityEventListener:Landroid/telephony/ims/aidl/ICapabilityExchangeEventListener;

    invoke-virtual {v0, v1}, Lcom/android/ims/RcsFeatureConnection;->setCapabilityExchangeEventListener(Landroid/telephony/ims/aidl/ICapabilityExchangeEventListener;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    .line 191
    nop

    .line 192
    return-void

    .line 188
    :catch_9
    move-exception v0

    .line 189
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Landroid/telephony/ims/ImsException;

    const-string v2, "Service is not available."

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v1
.end method

.method public blacklist registerFeatureCallback(ILcom/android/ims/internal/IImsServiceFeatureCallback;)V
    .registers 7
    .param p1, "slotId"    # I
    .param p2, "cb"    # Lcom/android/ims/internal/IImsServiceFeatureCallback;

    .line 525
    iget-object v0, p0, Lcom/android/ims/RcsFeatureManager;->mBinderCache:Landroid/telephony/BinderCacheManager;

    new-instance v1, Lcom/android/ims/RcsFeatureManager$$ExternalSyntheticLambda1;

    invoke-direct {v1, p2}, Lcom/android/ims/RcsFeatureManager$$ExternalSyntheticLambda1;-><init>(Lcom/android/ims/internal/IImsServiceFeatureCallback;)V

    invoke-virtual {v0, p2, v1}, Landroid/telephony/BinderCacheManager;->listenOnBinder(Ljava/lang/Object;Ljava/lang/Runnable;)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/telephony/ims/aidl/IImsRcsController;

    .line 533
    .local v0, "controller":Landroid/telephony/ims/aidl/IImsRcsController;
    const/4 v1, 0x3

    if-nez v0, :cond_1b

    .line 534
    :try_start_10
    const-string v2, "RcsFeatureManager"

    const-string v3, "registerRcsFeatureListener: IImsRcsController is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    invoke-interface {p2, v1}, Lcom/android/ims/internal/IImsServiceFeatureCallback;->imsFeatureRemoved(I)V

    .line 536
    return-void

    .line 538
    :cond_1b
    invoke-interface {v0, p1, p2}, Landroid/telephony/ims/aidl/IImsRcsController;->registerRcsFeatureCallback(ILcom/android/ims/internal/IImsServiceFeatureCallback;)V
    :try_end_1e
    .catch Landroid/os/ServiceSpecificException; {:try_start_10 .. :try_end_1e} :catch_26
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_1e} :catch_1f

    .line 555
    :goto_1e
    goto :goto_37

    .line 551
    :catch_1f
    move-exception v2

    .line 553
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_20
    invoke-interface {p2, v1}, Lcom/android/ims/internal/IImsServiceFeatureCallback;->imsFeatureRemoved(I)V
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_23} :catch_24

    .line 554
    :goto_23
    goto :goto_37

    :catch_24
    move-exception v1

    goto :goto_23

    .line 539
    .end local v2    # "e":Landroid/os/RemoteException;
    :catch_26
    move-exception v2

    .line 541
    .local v2, "e":Landroid/os/ServiceSpecificException;
    :try_start_27
    iget v3, v2, Landroid/os/ServiceSpecificException;->errorCode:I

    packed-switch v3, :pswitch_data_38

    .line 546
    invoke-interface {p2, v1}, Lcom/android/ims/internal/IImsServiceFeatureCallback;->imsFeatureRemoved(I)V

    goto :goto_36

    .line 543
    :pswitch_30
    const/4 v1, 0x2

    invoke-interface {p2, v1}, Lcom/android/ims/internal/IImsServiceFeatureCallback;->imsFeatureRemoved(I)V
    :try_end_34
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_34} :catch_35

    .line 544
    goto :goto_36

    .line 550
    :catch_35
    move-exception v1

    :goto_36
    goto :goto_1e

    .line 556
    .end local v2    # "e":Landroid/os/ServiceSpecificException;
    :goto_37
    return-void

    :pswitch_data_38
    .packed-switch 0x2
        :pswitch_30
    .end packed-switch
.end method

.method public blacklist registerImsRegistrationCallback(ILandroid/telephony/ims/aidl/IImsRegistrationCallback;)V
    .registers 7
    .param p1, "subId"    # I
    .param p2, "callback"    # Landroid/telephony/ims/aidl/IImsRegistrationCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/ImsException;
        }
    .end annotation

    .line 254
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/RcsFeatureManager;->mRcsFeatureConnection:Lcom/android/ims/RcsFeatureConnection;

    invoke-virtual {v0, p1, p2}, Lcom/android/ims/RcsFeatureConnection;->addCallbackForSubscription(ILandroid/telephony/ims/aidl/IImsRegistrationCallback;)V
    :try_end_5
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_5} :catch_7

    .line 259
    nop

    .line 260
    return-void

    .line 255
    :catch_7
    move-exception v0

    .line 256
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v1, "registerImsRegistrationCallback error: "

    invoke-direct {p0, v1, v0}, Lcom/android/ims/RcsFeatureManager;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 257
    new-instance v1, Landroid/telephony/ims/ImsException;

    const-string v2, "Can not register callback"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v1
.end method

.method public blacklist registerImsRegistrationCallback(Landroid/telephony/ims/aidl/IImsRegistrationCallback;)V
    .registers 6
    .param p1, "callback"    # Landroid/telephony/ims/aidl/IImsRegistrationCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/ImsException;
        }
    .end annotation

    .line 269
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/RcsFeatureManager;->mRcsFeatureConnection:Lcom/android/ims/RcsFeatureConnection;

    invoke-virtual {v0, p1}, Lcom/android/ims/RcsFeatureConnection;->addCallback(Landroid/telephony/ims/aidl/IImsRegistrationCallback;)V
    :try_end_5
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_5} :catch_7

    .line 274
    nop

    .line 275
    return-void

    .line 270
    :catch_7
    move-exception v0

    .line 271
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v1, "registerImsRegistrationCallback error: "

    invoke-direct {p0, v1, v0}, Lcom/android/ims/RcsFeatureManager;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 272
    new-instance v1, Landroid/telephony/ims/ImsException;

    const-string v2, "Can not register callback"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v1
.end method

.method public blacklist registerRcsAvailabilityCallback(ILandroid/telephony/ims/aidl/IImsCapabilityCallback;)V
    .registers 7
    .param p1, "subId"    # I
    .param p2, "callback"    # Landroid/telephony/ims/aidl/IImsCapabilityCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/ImsException;
        }
    .end annotation

    .line 314
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/RcsFeatureManager;->mRcsFeatureConnection:Lcom/android/ims/RcsFeatureConnection;

    invoke-virtual {v0, p1, p2}, Lcom/android/ims/RcsFeatureConnection;->addCallbackForSubscription(ILandroid/telephony/ims/aidl/IImsCapabilityCallback;)V
    :try_end_5
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_5} :catch_7

    .line 319
    nop

    .line 320
    return-void

    .line 315
    :catch_7
    move-exception v0

    .line 316
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v1, "registerRcsAvailabilityCallback: "

    invoke-direct {p0, v1, v0}, Lcom/android/ims/RcsFeatureManager;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 317
    new-instance v1, Landroid/telephony/ims/ImsException;

    const-string v2, "Can not register callback"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v1
.end method

.method public blacklist releaseConnection()V
    .registers 3

    .line 200
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/RcsFeatureManager;->mRcsFeatureConnection:Lcom/android/ims/RcsFeatureConnection;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/ims/RcsFeatureConnection;->setCapabilityExchangeEventListener(Landroid/telephony/ims/aidl/ICapabilityExchangeEventListener;)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    .line 203
    goto :goto_8

    .line 201
    :catch_7
    move-exception v0

    .line 204
    :goto_8
    iget-object v0, p0, Lcom/android/ims/RcsFeatureManager;->mRcsFeatureConnection:Lcom/android/ims/RcsFeatureConnection;

    invoke-virtual {v0}, Lcom/android/ims/RcsFeatureConnection;->close()V

    .line 205
    iget-object v0, p0, Lcom/android/ims/RcsFeatureManager;->mCapabilityEventCallback:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 206
    return-void
.end method

.method public blacklist removeCapabilityEventCallback(Lcom/android/ims/RcsFeatureManager$CapabilityExchangeEventCallback;)V
    .registers 3
    .param p1, "listener"    # Lcom/android/ims/RcsFeatureManager$CapabilityExchangeEventCallback;

    .line 220
    iget-object v0, p0, Lcom/android/ims/RcsFeatureManager;->mCapabilityEventCallback:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 221
    return-void
.end method

.method public blacklist requestCapabilities(Ljava/util/List;Landroid/telephony/ims/aidl/ISubscribeResponseCallback;)V
    .registers 4
    .param p2, "c"    # Landroid/telephony/ims/aidl/ISubscribeResponseCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;",
            "Landroid/telephony/ims/aidl/ISubscribeResponseCallback;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 447
    .local p1, "uris":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    iget-object v0, p0, Lcom/android/ims/RcsFeatureManager;->mRcsFeatureConnection:Lcom/android/ims/RcsFeatureConnection;

    invoke-virtual {v0, p1, p2}, Lcom/android/ims/RcsFeatureConnection;->requestCapabilities(Ljava/util/List;Landroid/telephony/ims/aidl/ISubscribeResponseCallback;)V

    .line 448
    return-void
.end method

.method public blacklist requestPublication(Ljava/lang/String;Landroid/telephony/ims/aidl/IPublishResponseCallback;)V
    .registers 4
    .param p1, "pidfXml"    # Ljava/lang/String;
    .param p2, "responseCallback"    # Landroid/telephony/ims/aidl/IPublishResponseCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 442
    iget-object v0, p0, Lcom/android/ims/RcsFeatureManager;->mRcsFeatureConnection:Lcom/android/ims/RcsFeatureConnection;

    invoke-virtual {v0, p1, p2}, Lcom/android/ims/RcsFeatureConnection;->requestPublication(Ljava/lang/String;Landroid/telephony/ims/aidl/IPublishResponseCallback;)V

    .line 443
    return-void
.end method

.method public blacklist sendOptionsCapabilityRequest(Landroid/net/Uri;Ljava/util/List;Landroid/telephony/ims/aidl/IOptionsResponseCallback;)V
    .registers 5
    .param p1, "contactUri"    # Landroid/net/Uri;
    .param p3, "callback"    # Landroid/telephony/ims/aidl/IOptionsResponseCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/telephony/ims/aidl/IOptionsResponseCallback;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 452
    .local p2, "myCapabilities":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/ims/RcsFeatureManager;->mRcsFeatureConnection:Lcom/android/ims/RcsFeatureConnection;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/ims/RcsFeatureConnection;->sendOptionsCapabilityRequest(Landroid/net/Uri;Ljava/util/List;Landroid/telephony/ims/aidl/IOptionsResponseCallback;)V

    .line 453
    return-void
.end method

.method public blacklist unregisterFeatureCallback(Lcom/android/ims/internal/IImsServiceFeatureCallback;)V
    .registers 5
    .param p1, "cb"    # Lcom/android/ims/internal/IImsServiceFeatureCallback;

    .line 561
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/RcsFeatureManager;->mBinderCache:Landroid/telephony/BinderCacheManager;

    invoke-virtual {v0, p1}, Landroid/telephony/BinderCacheManager;->removeRunnable(Ljava/lang/Object;)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/telephony/ims/aidl/IImsRcsController;

    .line 562
    .local v0, "imsRcsController":Landroid/telephony/ims/aidl/IImsRcsController;
    if-eqz v0, :cond_d

    .line 563
    invoke-interface {v0, p1}, Landroid/telephony/ims/aidl/IImsRcsController;->unregisterImsFeatureCallback(Lcom/android/ims/internal/IImsServiceFeatureCallback;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_e

    .line 569
    .end local v0    # "imsRcsController":Landroid/telephony/ims/aidl/IImsRcsController;
    :cond_d
    goto :goto_2b

    .line 565
    :catch_e
    move-exception v0

    .line 567
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unregisterImsFeatureCallback (RCS), RemoteException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 568
    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 567
    const-string v2, "RcsFeatureManager"

    invoke-static {v2, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_2b
    return-void
.end method

.method public blacklist unregisterImsRegistrationCallback(ILandroid/telephony/ims/aidl/IImsRegistrationCallback;)V
    .registers 4
    .param p1, "subId"    # I
    .param p2, "callback"    # Landroid/telephony/ims/aidl/IImsRegistrationCallback;

    .line 282
    iget-object v0, p0, Lcom/android/ims/RcsFeatureManager;->mRcsFeatureConnection:Lcom/android/ims/RcsFeatureConnection;

    invoke-virtual {v0, p1, p2}, Lcom/android/ims/RcsFeatureConnection;->removeCallbackForSubscription(ILandroid/telephony/ims/aidl/IImsRegistrationCallback;)V

    .line 283
    return-void
.end method

.method public blacklist unregisterImsRegistrationCallback(Landroid/telephony/ims/aidl/IImsRegistrationCallback;)V
    .registers 3
    .param p1, "callback"    # Landroid/telephony/ims/aidl/IImsRegistrationCallback;

    .line 290
    iget-object v0, p0, Lcom/android/ims/RcsFeatureManager;->mRcsFeatureConnection:Lcom/android/ims/RcsFeatureConnection;

    invoke-virtual {v0, p1}, Lcom/android/ims/RcsFeatureConnection;->removeCallback(Landroid/telephony/ims/aidl/IImsRegistrationCallback;)V

    .line 291
    return-void
.end method

.method public blacklist unregisterRcsAvailabilityCallback(ILandroid/telephony/ims/aidl/IImsCapabilityCallback;)V
    .registers 4
    .param p1, "subId"    # I
    .param p2, "callback"    # Landroid/telephony/ims/aidl/IImsCapabilityCallback;

    .line 326
    iget-object v0, p0, Lcom/android/ims/RcsFeatureManager;->mRcsFeatureConnection:Lcom/android/ims/RcsFeatureConnection;

    invoke-virtual {v0, p1, p2}, Lcom/android/ims/RcsFeatureConnection;->removeCallbackForSubscription(ILandroid/telephony/ims/aidl/IImsCapabilityCallback;)V

    .line 327
    return-void
.end method

.method public blacklist updateCapabilities(I)V
    .registers 6
    .param p1, "newSubId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/ImsException;
        }
    .end annotation

    .line 227
    invoke-direct {p0, p1}, Lcom/android/ims/RcsFeatureManager;->isOptionsSupported(I)Z

    move-result v0

    .line 228
    .local v0, "optionsSupport":Z
    invoke-direct {p0, p1}, Lcom/android/ims/RcsFeatureManager;->isPresenceSupported(I)Z

    move-result v1

    .line 230
    .local v1, "presenceSupported":Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Update capabilities for slot "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/ims/RcsFeatureManager;->mSlotId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " and sub "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": options="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", presence="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/ims/RcsFeatureManager;->logi(Ljava/lang/String;)V

    .line 233
    if-nez v0, :cond_47

    if-eqz v1, :cond_43

    goto :goto_47

    .line 243
    :cond_43
    invoke-direct {p0}, Lcom/android/ims/RcsFeatureManager;->disableAllRcsUceCapabilities()V

    goto :goto_5c

    .line 234
    :cond_47
    :goto_47
    new-instance v2, Landroid/telephony/ims/feature/CapabilityChangeRequest;

    invoke-direct {v2}, Landroid/telephony/ims/feature/CapabilityChangeRequest;-><init>()V

    .line 235
    .local v2, "request":Landroid/telephony/ims/feature/CapabilityChangeRequest;
    if-eqz v0, :cond_52

    .line 236
    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lcom/android/ims/RcsFeatureManager;->addRcsUceCapability(Landroid/telephony/ims/feature/CapabilityChangeRequest;I)V

    .line 238
    :cond_52
    if-eqz v1, :cond_58

    .line 239
    const/4 v3, 0x2

    invoke-virtual {p0, v2, v3}, Lcom/android/ims/RcsFeatureManager;->addRcsUceCapability(Landroid/telephony/ims/feature/CapabilityChangeRequest;I)V

    .line 241
    :cond_58
    invoke-direct {p0, v2}, Lcom/android/ims/RcsFeatureManager;->sendCapabilityChangeRequest(Landroid/telephony/ims/feature/CapabilityChangeRequest;)V

    .line 242
    .end local v2    # "request":Landroid/telephony/ims/feature/CapabilityChangeRequest;
    nop

    .line 245
    :goto_5c
    return-void
.end method

.method public blacklist updateFeatureCapabilities(J)V
    .registers 4
    .param p1, "capabilities"    # J

    .line 604
    iget-object v0, p0, Lcom/android/ims/RcsFeatureManager;->mRcsFeatureConnection:Lcom/android/ims/RcsFeatureConnection;

    invoke-virtual {v0, p1, p2}, Lcom/android/ims/RcsFeatureConnection;->updateFeatureCapabilities(J)V

    .line 605
    return-void
.end method

.method public blacklist updateFeatureState(I)V
    .registers 3
    .param p1, "state"    # I

    .line 599
    iget-object v0, p0, Lcom/android/ims/RcsFeatureManager;->mRcsFeatureConnection:Lcom/android/ims/RcsFeatureConnection;

    invoke-virtual {v0, p1}, Lcom/android/ims/RcsFeatureConnection;->updateFeatureState(I)V

    .line 600
    return-void
.end method
