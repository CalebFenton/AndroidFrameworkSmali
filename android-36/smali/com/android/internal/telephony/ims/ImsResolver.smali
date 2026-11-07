.class public Lcom/android/internal/telephony/ims/ImsResolver;
.super Ljava/lang/Object;
.source "ImsResolver.java"

# interfaces
.implements Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceControllerCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/ims/ImsResolver$TelephonyManagerProxy;,
        Lcom/android/internal/telephony/ims/ImsResolver$SubscriptionManagerProxy;,
        Lcom/android/internal/telephony/ims/ImsResolver$ActivityManagerProxy;,
        Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceControllerFactory;,
        Lcom/android/internal/telephony/ims/ImsResolver$ImsDynamicQueryManagerFactory;,
        Lcom/android/internal/telephony/ims/ImsResolver$ResolverHandler;,
        Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;,
        Lcom/android/internal/telephony/ims/ImsResolver$OverrideConfig;
    }
.end annotation


# static fields
.field public static final blacklist METADATA_EMERGENCY_MMTEL_FEATURE:Ljava/lang/String; = "android.telephony.ims.EMERGENCY_MMTEL_FEATURE"

.field public static final blacklist METADATA_MMTEL_FEATURE:Ljava/lang/String; = "android.telephony.ims.MMTEL_FEATURE"

.field public static final blacklist METADATA_RCS_FEATURE:Ljava/lang/String; = "android.telephony.ims.RCS_FEATURE"

.field private static blacklist sHandlerThread:Landroid/os/HandlerThread;

.field private static blacklist sInstance:Lcom/android/internal/telephony/ims/ImsResolver;


# instance fields
.field private final blacklist mActiveControllers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/content/ComponentName;",
            "Lcom/android/internal/telephony/ims/ImsServiceController;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mActivityManagerProxy:Lcom/android/internal/telephony/ims/ImsResolver$ActivityManagerProxy;

.field private final blacklist mAppChangedReceiver:Landroid/content/BroadcastReceiver;

.field private final blacklist mBootCompleted:Landroid/content/BroadcastReceiver;

.field private blacklist mBootCompletedHandlerRan:Z

.field private final blacklist mBoundImsServicesByFeature:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/SparseArray<",
            "Lcom/android/internal/telephony/ims/ImsServiceController;",
            ">;>;"
        }
    .end annotation
.end field

.field private final blacklist mBoundServicesLock:Ljava/lang/Object;

.field private final blacklist mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

.field private blacklist mCarrierConfigReceived:Z

.field private final blacklist mCarrierServices:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final blacklist mConfigChangedReceiver:Landroid/content/BroadcastReceiver;

.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mDeviceServices:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mDynamicQueryListener:Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager$Listener;

.field private blacklist mDynamicQueryManagerFactory:Lcom/android/internal/telephony/ims/ImsResolver$ImsDynamicQueryManagerFactory;

.field private final blacklist mEventLog:Lcom/android/internal/telephony/LocalLog;

.field private final blacklist mFeatureFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

.field private blacklist mFeatureQueryManager:Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager;

.field private final blacklist mHandler:Landroid/os/Handler;

.field private blacklist mImsServiceControllerFactory:Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceControllerFactory;

.field private final blacklist mImsServiceControllerFactoryCompat:Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceControllerFactory;

.field private final blacklist mImsServiceTestUserRestrictions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/os/UserHandle;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mInstalledServicesCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/content/ComponentName;",
            "Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mNumSlots:I

.field private final blacklist mOverrideServices:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final blacklist mReceiverContext:Landroid/content/Context;

.field private final blacklist mRepo:Lcom/android/ims/ImsFeatureBinderRepository;

.field private final blacklist mRunnableExecutor:Landroid/os/HandlerExecutor;

.field private final blacklist mSlotIdToSubIdMap:Landroid/util/SparseIntArray;

.field private blacklist mSubscriptionManagerProxy:Lcom/android/internal/telephony/ims/ImsResolver$SubscriptionManagerProxy;

.field private blacklist mTelephonyManagerProxy:Lcom/android/internal/telephony/ims/ImsResolver$TelephonyManagerProxy;

.field private final blacklist mUserReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public static synthetic blacklist $r8$lambda$-di6iwxmtDzUpyLAvfSFV4Ot7ZQ(Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;Ljava/lang/String;)Z
    .registers 2

    .line 1381
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->name:Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$0EFlm0-WQBYahbNLc696baUvXaA(Lcom/android/internal/telephony/ims/ImsResolver;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/ImsResolver;->lambda$initialize$0()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$1srLMy110OLBYW7I3Lo3Cc0IUOc(Lcom/android/internal/telephony/ims/ImsResolver;Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;)Z
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ims/ImsResolver;->lambda$calculateFeaturesToCreate$12(Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;)Z

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$3zbiVi_2CDXiaJzrhLgziqeCN-4(IILandroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;)Z
    .registers 4

    .line 1045
    iget v0, p2, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;->slotId:I

    if-ne v0, p0, :cond_a

    iget p0, p2, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;->featureType:I

    if-ne p0, p1, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$4aYqCnUy2W_QjGrlgvGHSgtI9pE(Lcom/android/internal/telephony/ims/ImsResolver;ILcom/android/internal/telephony/ims/ImsServiceController;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/ims/ImsResolver;->lambda$resetIms$3(ILcom/android/internal/telephony/ims/ImsServiceController;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$9zWK8eFIVg7S6YjG3RAjbW3qqFE(Ljava/lang/String;Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;)Z
    .registers 2

    .line 1398
    iget-object p1, p1, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->name:Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$A9Ks8TlmbjAaIaXqPKnFCKpdYEY(Lcom/android/internal/telephony/ims/ImsResolver;Ljava/util/concurrent/LinkedBlockingQueue;ZII)V
    .registers 5

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/ims/ImsResolver;->lambda$getImsServiceConfiguration$5(Ljava/util/concurrent/LinkedBlockingQueue;ZII)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$BCBu1Z9IlaRgy3oYK96WTyoXe1Y(Lcom/android/internal/telephony/ims/ImsResolver;Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;)Z
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/ims/ImsResolver;->lambda$calculateFeaturesToCreate$10(Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;)Z

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$OsDdu4V2CfEwpXM9ysLhTWArF0o(Ljava/lang/Integer;Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;)Z
    .registers 2

    .line 1801
    iget p1, p1, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;->slotId:I

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-lt p1, p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$QuecTillVDFqhJZpSGaWH3KFCTQ(Landroid/os/UserHandle;Landroid/os/UserHandle;)Z
    .registers 2

    .line 1959
    invoke-static {p1, p0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$RRUGlzwynuEWnwvN3vLDgXdQojM(Lcom/android/internal/telephony/ims/ImsResolver;ILcom/android/internal/telephony/ims/ImsServiceController;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/ims/ImsResolver;->lambda$disableIms$2(ILcom/android/internal/telephony/ims/ImsServiceController;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$T_P_a090sNHpXbX4PaCvas47Rjc(Lcom/android/internal/telephony/ims/ImsResolver;Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;)Z
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ims/ImsResolver;->lambda$sanitizeFeatureConfig$15(Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;)Z

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$U6QmQv9GseqO9pzZ8hDlF0ICLTI(Lcom/android/internal/telephony/ims/ImsResolver;Landroid/os/UserHandle;)Z
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ims/ImsResolver;->lambda$getUserForBind$18(Landroid/os/UserHandle;)Z

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$dS61aS78j2FFW1K_El6IA5letWg(Landroid/os/UserHandle;Landroid/os/UserHandle;)Z
    .registers 2

    .line 1967
    invoke-static {p1, p0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$frW6c8HzqmKAjvswGpAKokV57tI(Landroid/content/ComponentName;Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;)Z
    .registers 2

    .line 2045
    iget-object p1, p1, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->name:Landroid/content/ComponentName;

    invoke-static {p1, p0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$nbTebWCsubdBdyemUhKaozuFxYk(Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;Lcom/android/internal/telephony/ims/ImsServiceController;)Z
    .registers 2

    .line 1391
    invoke-virtual {p1}, Lcom/android/internal/telephony/ims/ImsServiceController;->getComponentName()Landroid/content/ComponentName;

    move-result-object p1

    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->name:Landroid/content/ComponentName;

    invoke-static {p1, p0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$smzR9ZACpRvuARXZbT5DYdbNAuE(Lcom/android/internal/telephony/ims/ImsResolver;Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;)Z
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/ims/ImsResolver;->lambda$calculateFeaturesToCreate$11(Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;)Z

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$t4o51oVdXPrC2nSVzEojrLqhrPA(Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;)Z
    .registers 1

    .line 1563
    iget p0, p0, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;->featureType:I

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$vwgU6xq694V-OVm_WPQRaxsNcK4(Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;)Z
    .registers 1

    .line 1885
    iget p0, p0, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;->featureType:I

    if-nez p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$zERiQr5CIEhPIcdBEVw7WaMZzsc(Lcom/android/internal/telephony/ims/ImsResolver;ILcom/android/internal/telephony/ims/ImsServiceController;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/ims/ImsResolver;->lambda$enableIms$1(ILcom/android/internal/telephony/ims/ImsServiceController;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$zfAgUhd7ncnbkD7y_JJ84OtKCVA(Lcom/android/internal/telephony/ims/ImsResolver;Ljava/util/concurrent/CompletableFuture;II)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/ims/ImsResolver;->lambda$getConfiguredImsServicePackageName$6(Ljava/util/concurrent/CompletableFuture;II)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmBootCompletedHandlerRan(Lcom/android/internal/telephony/ims/ImsResolver;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mBootCompletedHandlerRan:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCarrierConfigReceived(Lcom/android/internal/telephony/ims/ImsResolver;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mCarrierConfigReceived:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmContext(Lcom/android/internal/telephony/ims/ImsResolver;)Landroid/content/Context;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmEventLog(Lcom/android/internal/telephony/ims/ImsResolver;)Lcom/android/internal/telephony/LocalLog;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mEventLog:Lcom/android/internal/telephony/LocalLog;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFeatureFlags(Lcom/android/internal/telephony/ims/ImsResolver;)Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mFeatureFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHandler(Lcom/android/internal/telephony/ims/ImsResolver;)Landroid/os/Handler;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmNumSlots(Lcom/android/internal/telephony/ims/ImsResolver;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mNumSlots:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTelephonyManagerProxy(Lcom/android/internal/telephony/ims/ImsResolver;)Lcom/android/internal/telephony/ims/ImsResolver$TelephonyManagerProxy;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mTelephonyManagerProxy:Lcom/android/internal/telephony/ims/ImsResolver$TelephonyManagerProxy;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmBootCompletedHandlerRan(Lcom/android/internal/telephony/ims/ImsResolver;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mBootCompletedHandlerRan:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmCarrierConfigReceived(Lcom/android/internal/telephony/ims/ImsResolver;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mCarrierConfigReceived:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mcarrierConfigChanged(Lcom/android/internal/telephony/ims/ImsResolver;II)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/ims/ImsResolver;->carrierConfigChanged(II)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mclearCarrierServiceOverrides(Lcom/android/internal/telephony/ims/ImsResolver;I)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ims/ImsResolver;->clearCarrierServiceOverrides(I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mdynamicQueryComplete(Lcom/android/internal/telephony/ims/ImsResolver;Landroid/content/ComponentName;Ljava/util/Set;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/ims/ImsResolver;->dynamicQueryComplete(Landroid/content/ComponentName;Ljava/util/Set;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleFeaturesChanged(Lcom/android/internal/telephony/ims/ImsResolver;Landroid/content/ComponentName;Ljava/util/Set;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/ims/ImsResolver;->handleFeaturesChanged(Landroid/content/ComponentName;Ljava/util/Set;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleMsimConfigChange(Lcom/android/internal/telephony/ims/ImsResolver;Ljava/lang/Integer;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ims/ImsResolver;->handleMsimConfigChange(Ljava/lang/Integer;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mmaybeAddedImsService(Lcom/android/internal/telephony/ims/ImsResolver;Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ims/ImsResolver;->maybeAddedImsService(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mmaybeRemovedImsService(Lcom/android/internal/telephony/ims/ImsResolver;Ljava/lang/String;)Z
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ims/ImsResolver;->maybeRemovedImsService(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mmaybeRemovedImsServiceForUser(Lcom/android/internal/telephony/ims/ImsResolver;Ljava/lang/String;Landroid/os/UserHandle;)Z
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/ims/ImsResolver;->maybeRemovedImsServiceForUser(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$moverrideCarrierService(Lcom/android/internal/telephony/ims/ImsResolver;ILjava/util/Map;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/ims/ImsResolver;->overrideCarrierService(ILjava/util/Map;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$moverrideDeviceService(Lcom/android/internal/telephony/ims/ImsResolver;Ljava/util/Map;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ims/ImsResolver;->overrideDeviceService(Ljava/util/Map;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mscheduleQueryForFeatures(Lcom/android/internal/telephony/ims/ImsResolver;Landroid/content/ComponentName;I)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/ims/ImsResolver;->scheduleQueryForFeatures(Landroid/content/ComponentName;I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msetPackageNameUserOverride(Lcom/android/internal/telephony/ims/ImsResolver;Ljava/lang/String;I)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/ims/ImsResolver;->setPackageNameUserOverride(Ljava/lang/String;I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mstartDynamicQuery(Lcom/android/internal/telephony/ims/ImsResolver;Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ims/ImsResolver;->startDynamicQuery(Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mupdateInstalledServicesCache(Lcom/android/internal/telephony/ims/ImsResolver;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/ImsResolver;->updateInstalledServicesCache()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smprintFeatures(Ljava/util/Set;)Ljava/lang/String;
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/android/internal/telephony/ims/ImsResolver;->printFeatures(Ljava/util/Set;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILcom/android/ims/ImsFeatureBinderRepository;Landroid/os/Looper;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)V
    .registers 11

    .line 654
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 254
    new-instance v0, Lcom/android/internal/telephony/ims/ImsResolver$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/ims/ImsResolver$1;-><init>(Lcom/android/internal/telephony/ims/ImsResolver;)V

    iput-object v0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mUserReceiver:Landroid/content/BroadcastReceiver;

    .line 269
    new-instance v0, Lcom/android/internal/telephony/ims/ImsResolver$2;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/ims/ImsResolver$2;-><init>(Lcom/android/internal/telephony/ims/ImsResolver;)V

    iput-object v0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mAppChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 293
    new-instance v0, Lcom/android/internal/telephony/ims/ImsResolver$3;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/ims/ImsResolver$3;-><init>(Lcom/android/internal/telephony/ims/ImsResolver;)V

    iput-object v0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mConfigChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 328
    new-instance v0, Lcom/android/internal/telephony/ims/ImsResolver$4;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/ims/ImsResolver$4;-><init>(Lcom/android/internal/telephony/ims/ImsResolver;)V

    iput-object v0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mBootCompleted:Landroid/content/BroadcastReceiver;

    .line 376
    new-instance v0, Lcom/android/internal/telephony/ims/ImsResolver$5;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/ims/ImsResolver$5;-><init>(Lcom/android/internal/telephony/ims/ImsResolver;)V

    iput-object v0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mTelephonyManagerProxy:Lcom/android/internal/telephony/ims/ImsResolver$TelephonyManagerProxy;

    .line 387
    new-instance v0, Lcom/android/internal/telephony/ims/ImsResolver$6;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/ims/ImsResolver$6;-><init>(Lcom/android/internal/telephony/ims/ImsResolver;)V

    iput-object v0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mSubscriptionManagerProxy:Lcom/android/internal/telephony/ims/ImsResolver$SubscriptionManagerProxy;

    .line 399
    new-instance v0, Lcom/android/internal/telephony/ims/ImsResolver$7;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/ims/ImsResolver$7;-><init>(Lcom/android/internal/telephony/ims/ImsResolver;)V

    iput-object v0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mActivityManagerProxy:Lcom/android/internal/telephony/ims/ImsResolver$ActivityManagerProxy;

    .line 423
    new-instance v0, Lcom/android/internal/telephony/ims/ImsResolver$8;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/ims/ImsResolver$8;-><init>(Lcom/android/internal/telephony/ims/ImsResolver;)V

    iput-object v0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mImsServiceControllerFactory:Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceControllerFactory;

    .line 449
    new-instance v0, Lcom/android/internal/telephony/ims/ImsResolver$9;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/ims/ImsResolver$9;-><init>(Lcom/android/internal/telephony/ims/ImsResolver;)V

    iput-object v0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mImsServiceControllerFactoryCompat:Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceControllerFactory;

    .line 464
    new-instance v0, Lcom/android/internal/telephony/ims/ImsResolver$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lcom/android/internal/telephony/ims/ImsResolver$$ExternalSyntheticLambda4;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mDynamicQueryManagerFactory:Lcom/android/internal/telephony/ims/ImsResolver$ImsDynamicQueryManagerFactory;

    .line 477
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mBoundServicesLock:Ljava/lang/Object;

    .line 484
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mDeviceServices:Ljava/util/Map;

    .line 486
    new-instance v0, Lcom/android/internal/telephony/LocalLog;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/LocalLog;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mEventLog:Lcom/android/internal/telephony/LocalLog;

    const/4 v0, 0x0

    .line 488
    iput-boolean v0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mBootCompletedHandlerRan:Z

    .line 489
    iput-boolean v0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mCarrierConfigReceived:Z

    .line 603
    new-instance v1, Lcom/android/internal/telephony/ims/ImsResolver$10;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/ims/ImsResolver$10;-><init>(Lcom/android/internal/telephony/ims/ImsResolver;)V

    iput-object v1, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mDynamicQueryListener:Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager$Listener;

    .line 639
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mImsServiceTestUserRestrictions:Ljava/util/Map;

    .line 645
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mInstalledServicesCache:Ljava/util/Map;

    .line 648
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mActiveControllers:Ljava/util/Map;

    .line 655
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "device MMTEL package: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", device RCS package:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ImsResolver"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    iput-object p1, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mContext:Landroid/content/Context;

    .line 658
    iput p4, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mNumSlots:I

    .line 659
    iput-object p5, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mRepo:Lcom/android/ims/ImsFeatureBinderRepository;

    .line 660
    sget-object p4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p1, p4, v0}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object p4

    iput-object p4, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mReceiverContext:Landroid/content/Context;

    .line 662
    new-instance p4, Lcom/android/internal/telephony/ims/ImsResolver$ResolverHandler;

    invoke-direct {p4, p0, p6}, Lcom/android/internal/telephony/ims/ImsResolver$ResolverHandler;-><init>(Lcom/android/internal/telephony/ims/ImsResolver;Landroid/os/Looper;)V

    iput-object p4, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mHandler:Landroid/os/Handler;

    .line 663
    new-instance p5, Landroid/os/HandlerExecutor;

    invoke-direct {p5, p4}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    iput-object p5, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mRunnableExecutor:Landroid/os/HandlerExecutor;

    .line 664
    iput-object p7, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mFeatureFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

    .line 665
    new-instance p4, Landroid/util/SparseArray;

    iget p5, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mNumSlots:I

    invoke-direct {p4, p5}, Landroid/util/SparseArray;-><init>(I)V

    iput-object p4, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mCarrierServices:Landroid/util/SparseArray;

    .line 666
    invoke-direct {p0, p2, v0}, Lcom/android/internal/telephony/ims/ImsResolver;->setDeviceConfiguration(Ljava/lang/String;I)V

    const/4 p4, 0x1

    .line 667
    invoke-direct {p0, p2, p4}, Lcom/android/internal/telephony/ims/ImsResolver;->setDeviceConfiguration(Ljava/lang/String;I)V

    const/4 p2, 0x2

    .line 668
    invoke-direct {p0, p3, p2}, Lcom/android/internal/telephony/ims/ImsResolver;->setDeviceConfiguration(Ljava/lang/String;I)V

    .line 669
    const-string p2, "carrier_config"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/CarrierConfigManager;

    iput-object p1, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    .line 671
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1, v0}, Landroid/util/SparseArray;-><init>(I)V

    iput-object p1, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mOverrideServices:Landroid/util/SparseArray;

    .line 672
    new-instance p1, Landroid/util/SparseArray;

    iget p2, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mNumSlots:I

    invoke-direct {p1, p2}, Landroid/util/SparseArray;-><init>(I)V

    iput-object p1, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mBoundImsServicesByFeature:Landroid/util/SparseArray;

    .line 673
    new-instance p1, Landroid/util/SparseIntArray;

    iget p2, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mNumSlots:I

    invoke-direct {p1, p2}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object p1, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mSlotIdToSubIdMap:Landroid/util/SparseIntArray;

    .line 674
    :goto_f4
    iget p1, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mNumSlots:I

    if-ge v0, p1, :cond_101

    .line 675
    iget-object p1, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mSlotIdToSubIdMap:Landroid/util/SparseIntArray;

    const/4 p2, -0x1

    invoke-virtual {p1, v0, p2}, Landroid/util/SparseIntArray;->put(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_f4

    :cond_101
    return-void
.end method

.method private blacklist bindCarrierServicesIfAvailable()V
    .registers 14

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    move v3, v2

    .line 783
    :goto_4
    iget v4, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mNumSlots:I

    if-ge v1, v4, :cond_99

    .line 784
    iget-object v4, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mSubscriptionManagerProxy:Lcom/android/internal/telephony/ims/ImsResolver$SubscriptionManagerProxy;

    invoke-interface {v4, v1}, Lcom/android/internal/telephony/ims/ImsResolver$SubscriptionManagerProxy;->getSubId(I)I

    move-result v4

    .line 785
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/ims/ImsResolver;->getImsPackageOverrideConfig(I)Ljava/util/Map;

    move-result-object v5

    move v6, v0

    :goto_13
    const/4 v7, 0x3

    if-ge v6, v7, :cond_95

    .line 787
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, ""

    invoke-interface {v5, v7, v8}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 788
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_91

    .line 789
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "bindCarrierServicesIfAvailable - carrier package found: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", feature "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v10, Landroid/telephony/ims/feature/ImsFeature;->FEATURE_LOG_MAP:Ljava/util/Map;

    .line 791
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const-string v12, "invalid"

    invoke-interface {v10, v11, v12}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " on slot "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 789
    const-string v11, "ImsResolver"

    invoke-static {v11, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 793
    iget-object v8, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mEventLog:Lcom/android/internal/telephony/LocalLog;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    const/4 v8, 0x1

    .line 796
    iput-boolean v8, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mCarrierConfigReceived:Z

    .line 797
    invoke-direct {p0, v1, v4}, Lcom/android/internal/telephony/ims/ImsResolver;->setSubId(II)V

    .line 798
    invoke-direct {p0, v7, v1, v6}, Lcom/android/internal/telephony/ims/ImsResolver;->setCarrierConfiguredPackageName(Ljava/lang/String;II)V

    .line 799
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/ims/ImsResolver;->getVisibleImsServiceInfoFromCache(Ljava/lang/String;)Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;

    move-result-object v7

    if-eqz v7, :cond_8b

    .line 802
    iget-boolean v9, v7, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->featureFromMetadata:Z

    if-eqz v9, :cond_8b

    move v2, v8

    goto :goto_91

    .line 806
    :cond_8b
    invoke-direct {p0, v7}, Lcom/android/internal/telephony/ims/ImsResolver;->scheduleQueryForFeatures(Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;)V

    if-eqz v7, :cond_91

    move v3, v8

    :cond_91
    :goto_91
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_13

    :cond_95
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_4

    :cond_99
    if-nez v2, :cond_a3

    .line 815
    iget-boolean v0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mCarrierConfigReceived:Z

    if-eqz v0, :cond_a2

    if-nez v3, :cond_a2

    goto :goto_a3

    :cond_a2
    return-void

    .line 817
    :cond_a3
    :goto_a3
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/ImsResolver;->calculateFeatureConfigurationChange()V

    return-void
.end method

.method private blacklist bindImsServiceWithFeatures(Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;Landroid/os/UserHandle;Ljava/util/Set;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;",
            "Landroid/os/UserHandle;",
            "Ljava/util/Set<",
            "Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;",
            ">;)V"
        }
    .end annotation

    .line 1410
    invoke-direct {p0, p3}, Lcom/android/internal/telephony/ims/ImsResolver;->shouldFeaturesCauseBind(Ljava/util/Set;)Z

    move-result v0

    if-eqz v0, :cond_eb

    .line 1412
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mActiveControllers:Ljava/util/Map;

    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/ims/ImsResolver;->getControllerByServiceInfo(Ljava/util/Map;Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;)Lcom/android/internal/telephony/ims/ImsServiceController;

    move-result-object v1

    .line 1413
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mSlotIdToSubIdMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clone()Landroid/util/SparseIntArray;

    move-result-object v0

    .line 1414
    const-string v2, "ImsResolver"

    if-eqz v1, :cond_8c

    .line 1417
    :try_start_16
    invoke-virtual {v1}, Lcom/android/internal/telephony/ims/ImsServiceController;->getBoundUser()Landroid/os/UserHandle;

    move-result-object v3

    invoke-static {p2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_45

    .line 1418
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ImsService connection exists for "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->name:Landroid/content/ComponentName;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", updating features "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1420
    invoke-virtual {v1, p3, v0}, Lcom/android/internal/telephony/ims/ImsServiceController;->changeImsServiceFeatures(Ljava/util/Set;Landroid/util/SparseIntArray;)V

    goto :goto_8a

    :catch_42
    move-exception v0

    move-object p2, v0

    goto :goto_72

    .line 1424
    :cond_45
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ImsService user changed for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->name:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", rebinding on user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", features "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1426
    invoke-virtual {v1}, Lcom/android/internal/telephony/ims/ImsServiceController;->unbind()V

    .line 1427
    invoke-virtual {v1, p2, p3, v0}, Lcom/android/internal/telephony/ims/ImsServiceController;->bind(Landroid/os/UserHandle;Ljava/util/Set;Landroid/util/SparseIntArray;)Z
    :try_end_71
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_71} :catch_42

    goto :goto_8a

    .line 1433
    :goto_72
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "bindImsService: error="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_8a
    move-object v6, p0

    goto :goto_e4

    .line 1436
    :cond_8c
    iget-object v3, p1, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->controllerFactory:Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceControllerFactory;

    iget-object v4, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mContext:Landroid/content/Context;

    iget-object v5, p1, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->name:Landroid/content/ComponentName;

    iget-object v7, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mRepo:Lcom/android/ims/ImsFeatureBinderRepository;

    iget-object v8, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mFeatureFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

    move-object v6, p0

    invoke-interface/range {v3 .. v8}, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceControllerFactory;->create(Landroid/content/Context;Landroid/content/ComponentName;Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceControllerCallbacks;Lcom/android/ims/ImsFeatureBinderRepository;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)Lcom/android/internal/telephony/ims/ImsServiceController;

    move-result-object v1

    .line 1438
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Binding ImsService: "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/internal/telephony/ims/ImsServiceController;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "on user "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " with features: "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", subIdMap: "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1441
    invoke-virtual {v1, p2, p3, v0}, Lcom/android/internal/telephony/ims/ImsServiceController;->bind(Landroid/os/UserHandle;Ljava/util/Set;Landroid/util/SparseIntArray;)Z

    .line 1442
    iget-object p0, v6, Lcom/android/internal/telephony/ims/ImsResolver;->mEventLog:Lcom/android/internal/telephony/LocalLog;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "bindImsServiceWithFeatures - create new controller: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    .line 1445
    :goto_e4
    iget-object p0, v6, Lcom/android/internal/telephony/ims/ImsResolver;->mActiveControllers:Ljava/util/Map;

    iget-object p1, p1, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->name:Landroid/content/ComponentName;

    invoke-interface {p0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_eb
    return-void
.end method

.method private blacklist calculateFeatureConfigurationChange()V
    .registers 6

    .line 1923
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mInstalledServicesCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;

    .line 1924
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/ims/ImsResolver;->calculateFeaturesToCreate(Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;)Ljava/util/HashSet;

    move-result-object v2

    .line 1925
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/ims/ImsResolver;->getUserForBind(Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;)Landroid/os/UserHandle;

    move-result-object v3

    .line 1926
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/ims/ImsResolver;->shouldFeaturesCauseBind(Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_27

    if-eqz v3, :cond_27

    goto :goto_a

    .line 1927
    :cond_27
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/ims/ImsResolver;->unbindImsService(Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;)V

    goto :goto_a

    .line 1930
    :cond_2b
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mInstalledServicesCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_35
    :goto_35
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_55

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;

    .line 1931
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/ims/ImsResolver;->calculateFeaturesToCreate(Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;)Ljava/util/HashSet;

    move-result-object v2

    .line 1932
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/ims/ImsResolver;->getUserForBind(Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;)Landroid/os/UserHandle;

    move-result-object v3

    .line 1933
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/ims/ImsResolver;->shouldFeaturesCauseBind(Ljava/util/Set;)Z

    move-result v4

    if-eqz v4, :cond_35

    if-eqz v3, :cond_35

    .line 1934
    invoke-direct {p0, v1, v3, v2}, Lcom/android/internal/telephony/ims/ImsResolver;->bindImsServiceWithFeatures(Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;Landroid/os/UserHandle;Ljava/util/Set;)V

    goto :goto_35

    :cond_55
    return-void
.end method

.method private blacklist calculateFeaturesToCreate(Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;)Ljava/util/HashSet;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;",
            ")",
            "Ljava/util/HashSet<",
            "Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;",
            ">;"
        }
    .end annotation

    .line 1474
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1475
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ims/ImsResolver;->getSlotsForActiveCarrierService(Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;)Ljava/util/List;

    move-result-object v1

    .line 1476
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_28

    .line 1479
    invoke-virtual {p1}, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->getSupportedFeatures()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/internal/telephony/ims/ImsResolver$$ExternalSyntheticLambda14;

    invoke-direct {v2, p0, p1}, Lcom/android/internal/telephony/ims/ImsResolver$$ExternalSyntheticLambda14;-><init>(Lcom/android/internal/telephony/ims/ImsResolver;Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;)V

    .line 1480
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 1482
    invoke-interface {p0}, Ljava/util/stream/Stream;->toList()Ljava/util/List;

    move-result-object p0

    .line 1479
    invoke-virtual {v0, p0}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    return-object v0

    .line 1485
    :cond_28
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ims/ImsResolver;->isDeviceService(Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;)Z

    move-result v1

    if-eqz v1, :cond_4f

    .line 1486
    invoke-virtual {p1}, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->getSupportedFeatures()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/internal/telephony/ims/ImsResolver$$ExternalSyntheticLambda15;

    invoke-direct {v2, p0, p1}, Lcom/android/internal/telephony/ims/ImsResolver$$ExternalSyntheticLambda15;-><init>(Lcom/android/internal/telephony/ims/ImsResolver;Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;)V

    .line 1489
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v1, Lcom/android/internal/telephony/ims/ImsResolver$$ExternalSyntheticLambda16;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/ims/ImsResolver$$ExternalSyntheticLambda16;-><init>(Lcom/android/internal/telephony/ims/ImsResolver;)V

    .line 1493
    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 1495
    invoke-interface {p0}, Ljava/util/stream/Stream;->toList()Ljava/util/List;

    move-result-object p0

    .line 1486
    invoke-virtual {v0, p0}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    :cond_4f
    return-object v0
.end method

.method private blacklist carrierConfigChanged(II)V
    .registers 5

    .line 1622
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/ims/ImsResolver;->setSubId(II)V

    .line 1623
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/ImsResolver;->updateBoundDeviceServices()V

    const/4 v0, -0x1

    if-gt p1, v0, :cond_1c

    const/4 v0, 0x0

    .line 1626
    :goto_a
    iget v1, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mNumSlots:I

    if-ge v0, v1, :cond_1c

    .line 1627
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsResolver;->getSubId(I)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/ims/ImsResolver;->getImsPackageOverrideConfig(I)Ljava/util/Map;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/ims/ImsResolver;->updateBoundServices(ILjava/util/Map;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 1630
    :cond_1c
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/ims/ImsResolver;->getImsPackageOverrideConfig(I)Ljava/util/Map;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/ims/ImsResolver;->updateBoundServices(ILjava/util/Map;)V

    return-void
.end method

.method private blacklist clearCarrierServiceOverrides(I)V
    .registers 4

    .line 1583
    const-string v0, "ImsResolver"

    const-string v1, "clearing carrier ImsService overrides"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1584
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mEventLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    .line 1585
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ims/ImsResolver;->removeOverridePackageName(I)Ljava/util/Set;

    move-result-object v0

    .line 1586
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1587
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/ims/ImsResolver;->clearPackageNameUserOverride(Ljava/lang/String;)V

    goto :goto_14

    .line 1589
    :cond_24
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ims/ImsResolver;->getSubId(I)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/ims/ImsResolver;->carrierConfigChanged(II)V

    return-void
.end method

.method private blacklist clearPackageNameUserOverride(Ljava/lang/String;)V
    .registers 4

    .line 995
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mImsServiceTestUserRestrictions:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/UserHandle;

    if-eqz p0, :cond_28

    .line 997
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "clearPackageNameUserOverride: cleared for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "on user "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ImsResolver"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_28
    return-void
.end method

.method private blacklist doesCachedImsServiceExist(Ljava/lang/String;II)Z
    .registers 4

    .line 1043
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ims/ImsResolver;->getVisibleImsServiceInfoFromCache(Ljava/lang/String;)Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;

    move-result-object p0

    if-eqz p0, :cond_1b

    .line 1044
    invoke-virtual {p0}, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->getSupportedFeatures()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/android/internal/telephony/ims/ImsResolver$$ExternalSyntheticLambda12;

    invoke-direct {p1, p2, p3}, Lcom/android/internal/telephony/ims/ImsResolver$$ExternalSyntheticLambda12;-><init>(II)V

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    if-eqz p0, :cond_1b

    const/4 p0, 0x1

    return p0

    :cond_1b
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist doesCarrierConfigurationExist(II)Z
    .registers 5

    .line 1026
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/ims/ImsResolver;->getCarrierConfiguredPackageName(II)Ljava/lang/String;

    move-result-object v0

    .line 1027
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_c

    const/4 p0, 0x0

    return p0

    .line 1031
    :cond_c
    invoke-direct {p0, v0, p1, p2}, Lcom/android/internal/telephony/ims/ImsResolver;->doesCachedImsServiceExist(Ljava/lang/String;II)Z

    move-result p0

    return p0
.end method

.method private blacklist dynamicQueryComplete(Landroid/content/ComponentName;Ljava/util/Set;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/util/Set<",
            "Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;",
            ">;)V"
        }
    .end annotation

    .line 1851
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ims/ImsResolver;->getVisibleImsServiceInfoFromCache(Ljava/lang/String;)Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;

    move-result-object v0

    if-nez v0, :cond_21

    .line 1853
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "dynamicQueryComplete: Couldn\'t find cached info for name: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ImsResolver"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1857
    :cond_21
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/ims/ImsResolver;->sanitizeFeatureConfig(Ljava/util/Set;)V

    .line 1858
    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mEventLog:Lcom/android/internal/telephony/LocalLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dynamicQueryComplete: for package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", features: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1859
    invoke-virtual {v0}, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->getSupportedFeatures()Ljava/util/Set;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/telephony/ims/ImsResolver;->printFeatures(Ljava/util/Set;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " -> "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/android/internal/telephony/ims/ImsResolver;->printFeatures(Ljava/util/Set;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1858
    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    .line 1861
    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->replaceFeatures(Ljava/util/Set;)V

    .line 1863
    iget-object p1, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mFeatureQueryManager:Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager;

    invoke-virtual {p1}, Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager;->isQueryInProgress()Z

    move-result p1

    if-nez p1, :cond_74

    .line 1864
    iget-object p1, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mHandler:Landroid/os/Handler;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_71

    .line 1865
    iget-object p1, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mEventLog:Lcom/android/internal/telephony/LocalLog;

    const-string p2, "[warning] dynamicQueryComplete - HANDLER_DYNAMIC_FEATURE_CHANGE pending with calculateFeatureConfigurationChange()"

    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    .line 1868
    :cond_71
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/ImsResolver;->calculateFeatureConfigurationChange()V

    :cond_74
    return-void
.end method

.method private blacklist getActiveUsers()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroid/os/UserHandle;",
            ">;"
        }
    .end annotation

    .line 1977
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1978
    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1979
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mActivityManagerProxy:Lcom/android/internal/telephony/ims/ImsResolver$ActivityManagerProxy;

    invoke-interface {p0}, Lcom/android/internal/telephony/ims/ImsResolver$ActivityManagerProxy;->getCurrentUser()Landroid/os/UserHandle;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private blacklist getCarrierConfiguredPackageName(II)Ljava/lang/String;
    .registers 3

    .line 956
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ims/ImsResolver;->getCarrierConfiguredPackageNames(I)Ljava/util/Map;

    move-result-object p0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, ""

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method private blacklist getCarrierConfiguredPackageNames(I)Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 961
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mCarrierServices:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_14

    .line 963
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 964
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mCarrierServices:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_14
    return-object v0
.end method

.method private blacklist getConfiguredImsServicePackageNameInternal(II)Ljava/lang/String;
    .registers 5

    .line 1165
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/ims/ImsResolver;->getCarrierConfiguredPackageName(II)Ljava/lang/String;

    move-result-object v0

    .line 1166
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_11

    .line 1167
    invoke-direct {p0, v0, p1, p2}, Lcom/android/internal/telephony/ims/ImsResolver;->doesCachedImsServiceExist(Ljava/lang/String;II)Z

    move-result v1

    if-eqz v1, :cond_11

    return-object v0

    .line 1173
    :cond_11
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/ims/ImsResolver;->getDeviceConfiguration(I)Ljava/lang/String;

    move-result-object v0

    .line 1174
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_22

    .line 1175
    invoke-direct {p0, v0, p1, p2}, Lcom/android/internal/telephony/ims/ImsResolver;->doesCachedImsServiceExist(Ljava/lang/String;II)Z

    move-result p0

    if-eqz p0, :cond_22

    return-object v0

    :cond_22
    const/4 p0, 0x0

    return-object p0
.end method

.method private blacklist getControllerByServiceInfo(Ljava/util/Map;Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;)Lcom/android/internal/telephony/ims/ImsServiceController;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Landroid/content/ComponentName;",
            "Lcom/android/internal/telephony/ims/ImsServiceController;",
            ">;",
            "Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;",
            ")",
            "Lcom/android/internal/telephony/ims/ImsServiceController;"
        }
    .end annotation

    .line 1390
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/android/internal/telephony/ims/ImsResolver$$ExternalSyntheticLambda17;

    invoke-direct {p1, p2}, Lcom/android/internal/telephony/ims/ImsResolver$$ExternalSyntheticLambda17;-><init>(Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;)V

    .line 1391
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 1392
    invoke-interface {p0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/ims/ImsServiceController;

    return-object p0
.end method

.method private blacklist getDeviceConfiguration(I)Ljava/lang/String;
    .registers 4

    .line 936
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mDeviceServices:Ljava/util/Map;

    monitor-enter v0

    .line 937
    :try_start_3
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mDeviceServices:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, ""

    invoke-interface {p0, p1, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    monitor-exit v0

    return-object p0

    :catchall_13
    move-exception p0

    .line 938
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw p0
.end method

.method private blacklist getImsPackageOverrideConfig(I)Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1697
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    invoke-virtual {p0, p1}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object p0

    if-nez p0, :cond_b

    .line 1698
    sget-object p0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    return-object p0

    .line 1699
    :cond_b
    const-string p1, "config_ims_package_override_string"

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1703
    const-string v0, "config_ims_mmtel_package_override_string"

    invoke-virtual {p0, v0, p1}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1706
    const-string v1, "config_ims_rcs_package_override_string"

    invoke-virtual {p0, v1, p1}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1708
    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    .line 1709
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_39

    const/4 v1, 0x0

    .line 1710
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    .line 1711
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1713
    :cond_39
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_47

    const/4 v0, 0x2

    .line 1714
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_47
    return-object p1
.end method

.method private blacklist getImsServiceControllers(I)Ljava/util/Set;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set<",
            "Lcom/android/internal/telephony/ims/ImsServiceController;",
            ">;"
        }
    .end annotation

    if-ltz p1, :cond_42

    .line 868
    iget v0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mNumSlots:I

    if-lt p1, v0, :cond_7

    goto :goto_42

    .line 872
    :cond_7
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mBoundServicesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 873
    :try_start_a
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mBoundImsServicesByFeature:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/SparseArray;

    .line 874
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_a .. :try_end_13} :catchall_3f

    if-nez p0, :cond_1f

    .line 876
    const-string p0, "ImsResolver"

    const-string p1, "getImsServiceControllers: couldn\'t find any active ImsServiceControllers"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 878
    sget-object p0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    return-object p0

    .line 882
    :cond_1f
    new-instance p1, Landroid/util/ArraySet;

    const/4 v0, 0x2

    invoke-direct {p1, v0}, Landroid/util/ArraySet;-><init>(I)V

    const/4 v0, 0x0

    .line 883
    :goto_26
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_3e

    .line 884
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 885
    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/ims/ImsServiceController;

    if-eqz v1, :cond_3b

    .line 886
    invoke-interface {p1, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_3b
    add-int/lit8 v0, v0, 0x1

    goto :goto_26

    :cond_3e
    return-object p1

    :catchall_3f
    move-exception p0

    .line 874
    :try_start_40
    monitor-exit v0
    :try_end_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_3f

    throw p0

    .line 869
    :cond_42
    :goto_42
    sget-object p0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    return-object p0
.end method

.method private blacklist getImsServiceInfo(Ljava/lang/String;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;",
            ">;"
        }
    .end annotation

    .line 2035
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2037
    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mImsServiceControllerFactory:Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceControllerFactory;

    invoke-direct {p0, p1, v1}, Lcom/android/internal/telephony/ims/ImsResolver;->searchForImsServices(Ljava/lang/String;Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceControllerFactory;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2039
    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mImsServiceControllerFactoryCompat:Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceControllerFactory;

    invoke-direct {p0, p1, v1}, Lcom/android/internal/telephony/ims/ImsResolver;->searchForImsServices(Ljava/lang/String;Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceControllerFactory;)Ljava/util/List;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method private blacklist getInfoByComponentName(Ljava/util/Map;Landroid/content/ComponentName;)Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Landroid/content/ComponentName;",
            "Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;",
            ">;",
            "Landroid/content/ComponentName;",
            ")",
            "Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;"
        }
    .end annotation

    .line 1404
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;

    return-object p0
.end method

.method private blacklist getInfoByPackageName(Ljava/util/Map;Ljava/lang/String;)Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Landroid/content/ComponentName;",
            "Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;"
        }
    .end annotation

    .line 1397
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/android/internal/telephony/ims/ImsResolver$$ExternalSyntheticLambda3;

    invoke-direct {p1, p2}, Lcom/android/internal/telephony/ims/ImsResolver$$ExternalSyntheticLambda3;-><init>(Ljava/lang/String;)V

    .line 1398
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 1399
    invoke-interface {p0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;

    return-object p0
.end method

.method private blacklist getInfoFromCache(Ljava/util/List;Landroid/content/ComponentName;)Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;",
            ">;",
            "Landroid/content/ComponentName;",
            ")",
            "Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;"
        }
    .end annotation

    .line 2045
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/android/internal/telephony/ims/ImsResolver$$ExternalSyntheticLambda18;

    invoke-direct {p1, p2}, Lcom/android/internal/telephony/ims/ImsResolver$$ExternalSyntheticLambda18;-><init>(Landroid/content/ComponentName;)V

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p0

    const/4 p1, 0x0

    .line 2046
    invoke-virtual {p0, p1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;

    return-object p0
.end method

.method public static blacklist getInstance()Lcom/android/internal/telephony/ims/ImsResolver;
    .registers 1

    .line 171
    sget-object v0, Lcom/android/internal/telephony/ims/ImsResolver;->sInstance:Lcom/android/internal/telephony/ims/ImsResolver;

    return-object v0
.end method

.method private blacklist getOverridePackageName(I)Landroid/util/SparseArray;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1010
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mOverrideServices:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    if-nez v0, :cond_14

    .line 1012
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 1013
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mOverrideServices:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_14
    return-object v0
.end method

.method private blacklist getOverridePackageName(II)Ljava/lang/String;
    .registers 3

    .line 1005
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ims/ImsResolver;->getOverridePackageName(I)Landroid/util/SparseArray;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method private blacklist getSlotsForActiveCarrierService(Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_5

    .line 1369
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0

    .line 1371
    :cond_5
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ims/ImsResolver;->getUserForBind(Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;)Landroid/os/UserHandle;

    move-result-object v0

    if-nez v0, :cond_2b

    .line 1373
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getSlotsForActiveCarrierService: ImsService "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->name:Landroid/content/ComponentName;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "is not configured to run for any users, skipping..."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ImsResolver"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1375
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0

    .line 1378
    :cond_2b
    new-instance v0, Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mNumSlots:I

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    .line 1379
    :goto_33
    iget v2, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mNumSlots:I

    if-ge v1, v2, :cond_68

    .line 1380
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/ims/ImsResolver;->getCarrierConfiguredPackageNames(I)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/android/internal/telephony/ims/ImsResolver$$ExternalSyntheticLambda22;

    invoke-direct {v3, p1}, Lcom/android/internal/telephony/ims/ImsResolver$$ExternalSyntheticLambda22;-><init>(Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;)V

    .line 1381
    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/stream/Stream;->findAny()Ljava/util/Optional;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    .line 1380
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_65

    .line 1382
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_65
    add-int/lit8 v1, v1, 0x1

    goto :goto_33

    :cond_68
    return-object v0
.end method

.method private blacklist getSubId(I)I
    .registers 4

    .line 2147
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mSlotIdToSubIdMap:Landroid/util/SparseIntArray;

    monitor-enter v0

    .line 2148
    :try_start_3
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mSlotIdToSubIdMap:Landroid/util/SparseIntArray;

    const/4 v1, -0x1

    invoke-virtual {p0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_c
    move-exception p0

    .line 2149
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw p0
.end method

.method private blacklist getUserForBind(Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;)Landroid/os/UserHandle;
    .registers 7

    .line 1951
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mActivityManagerProxy:Lcom/android/internal/telephony/ims/ImsResolver$ActivityManagerProxy;

    invoke-interface {v0}, Lcom/android/internal/telephony/ims/ImsResolver$ActivityManagerProxy;->getCurrentUser()Landroid/os/UserHandle;

    move-result-object v0

    .line 1952
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/ImsResolver;->getActiveUsers()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    iget-object v2, p1, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->users:Ljava/util/Set;

    .line 1953
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/android/internal/telephony/ims/ImsResolver$$ExternalSyntheticLambda5;

    invoke-direct {v3, v2}, Lcom/android/internal/telephony/ims/ImsResolver$$ExternalSyntheticLambda5;-><init>(Ljava/util/Set;)V

    invoke-interface {v1, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/stream/Stream;->toList()Ljava/util/List;

    move-result-object v1

    .line 1954
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_28

    return-object v3

    .line 1956
    :cond_28
    iget-object v2, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mImsServiceTestUserRestrictions:Ljava/util/Map;

    iget-object p1, p1, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->name:Landroid/content/ComponentName;

    .line 1957
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 1956
    invoke-interface {v2, p1, v3}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserHandle;

    if-eqz p1, :cond_48

    .line 1958
    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v4, Lcom/android/internal/telephony/ims/ImsResolver$$ExternalSyntheticLambda6;

    invoke-direct {v4, p1}, Lcom/android/internal/telephony/ims/ImsResolver$$ExternalSyntheticLambda6;-><init>(Landroid/os/UserHandle;)V

    .line 1959
    invoke-interface {v2, v4}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v2

    if-eqz v2, :cond_48

    return-object p1

    .line 1963
    :cond_48
    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v2, Lcom/android/internal/telephony/ims/ImsResolver$$ExternalSyntheticLambda7;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/ims/ImsResolver$$ExternalSyntheticLambda7;-><init>(Lcom/android/internal/telephony/ims/ImsResolver;)V

    .line 1964
    invoke-interface {p1, v2}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p1

    if-eqz p1, :cond_5e

    .line 1965
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object p0

    return-object p0

    .line 1967
    :cond_5e
    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/android/internal/telephony/ims/ImsResolver$$ExternalSyntheticLambda8;

    invoke-direct {p1, v0}, Lcom/android/internal/telephony/ims/ImsResolver$$ExternalSyntheticLambda8;-><init>(Landroid/os/UserHandle;)V

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    if-eqz p0, :cond_6e

    return-object v0

    :cond_6e
    return-object v3
.end method

.method private blacklist handleFeaturesChanged(Landroid/content/ComponentName;Ljava/util/Set;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/util/Set<",
            "Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;",
            ">;)V"
        }
    .end annotation

    .line 1755
    invoke-static {}, Lcom/android/internal/telephony/SomeArgs;->obtain()Lcom/android/internal/telephony/SomeArgs;

    move-result-object v0

    .line 1756
    iput-object p1, v0, Lcom/android/internal/telephony/SomeArgs;->arg1:Ljava/lang/Object;

    .line 1757
    iput-object p2, v0, Lcom/android/internal/telephony/SomeArgs;->arg2:Ljava/lang/Object;

    .line 1758
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mHandler:Landroid/os/Handler;

    const/4 p1, 0x4

    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private blacklist handleMsimConfigChange(Ljava/lang/Integer;)V
    .registers 10

    .line 1762
    iget v0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mNumSlots:I

    .line 1763
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v0, v1, :cond_a

    goto/16 :goto_113

    .line 1766
    :cond_a
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mNumSlots:I

    .line 1767
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMsimConfigChange: oldLen="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", newLen="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ImsResolver"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1768
    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mEventLog:Lcom/android/internal/telephony/LocalLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MSIM config change: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    .line 1769
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v3, 0x0

    if-ge v1, v0, :cond_96

    .line 1773
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_57
    if-ge v1, v0, :cond_96

    .line 1775
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/ims/ImsResolver;->getCarrierConfiguredPackageNames(I)Ljava/util/Map;

    move-result-object v4

    .line 1776
    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_65
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const-string v6, ""

    if-eqz v5, :cond_7b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 1777
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct {p0, v6, v1, v5}, Lcom/android/internal/telephony/ims/ImsResolver;->setCarrierConfiguredPackageName(Ljava/lang/String;II)V

    goto :goto_65

    .line 1780
    :cond_7b
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/ims/ImsResolver;->getOverridePackageName(I)Landroid/util/SparseArray;

    move-result-object v4

    move v5, v3

    .line 1781
    :goto_80
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v7

    if-ge v5, v7, :cond_90

    .line 1782
    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    .line 1783
    invoke-direct {p0, v6, v1, v7}, Lcom/android/internal/telephony/ims/ImsResolver;->setOverridePackageName(Ljava/lang/String;II)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_80

    .line 1786
    :cond_90
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/ims/ImsResolver;->removeSlotId(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_57

    :cond_96
    const/4 v1, 0x0

    .line 1792
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/ims/ImsResolver;->getImsServiceInfo(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 1793
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_10a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;

    .line 1794
    iget-object v5, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mInstalledServicesCache:Ljava/util/Map;

    iget-object v6, v4, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->name:Landroid/content/ComponentName;

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;

    if-eqz v5, :cond_d0

    .line 1796
    iget-boolean v6, v4, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->featureFromMetadata:Z

    if-eqz v6, :cond_c3

    .line 1797
    invoke-virtual {v4}, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->getSupportedFeatures()Ljava/util/Set;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->replaceFeatures(Ljava/util/Set;)V

    goto :goto_9f

    .line 1800
    :cond_c3
    invoke-virtual {v5}, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->getSupportedFeatures()Ljava/util/Set;

    move-result-object v4

    new-instance v5, Lcom/android/internal/telephony/ims/ImsResolver$$ExternalSyntheticLambda13;

    invoke-direct {v5, p1}, Lcom/android/internal/telephony/ims/ImsResolver$$ExternalSyntheticLambda13;-><init>(Ljava/lang/Integer;)V

    .line 1801
    invoke-interface {v4, v5}, Ljava/util/Set;->removeIf(Ljava/util/function/Predicate;)Z

    goto :goto_9f

    .line 1805
    :cond_d0
    iget-object v5, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mEventLog:Lcom/android/internal/telephony/LocalLog;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleMsimConfigChange: detected untracked service - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    .line 1806
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleMsimConfigChange: detected untracked package, queueing to add "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1808
    iget-object v5, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mHandler:Landroid/os/Handler;

    iget-object v4, v4, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->name:Landroid/content/ComponentName;

    .line 1809
    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 1808
    invoke-virtual {v5, v3, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 1809
    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    goto :goto_9f

    .line 1813
    :cond_10a
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ge p1, v0, :cond_113

    .line 1816
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/ImsResolver;->calculateFeatureConfigurationChange()V

    :cond_113
    :goto_113
    return-void
.end method

.method private blacklist initializeInternal()V
    .registers 8

    .line 718
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mEventLog:Lcom/android/internal/telephony/LocalLog;

    const-string v1, "Initializing"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    .line 719
    const-string v0, "ImsResolver"

    const-string v1, "Initializing cache."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/PhoneConfigurationManager;->registerForMultiSimConfigChange(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 722
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mDynamicQueryManagerFactory:Lcom/android/internal/telephony/ims/ImsResolver$ImsDynamicQueryManagerFactory;

    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mDynamicQueryListener:Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager$Listener;

    invoke-interface {v0, v1, v3}, Lcom/android/internal/telephony/ims/ImsResolver$ImsDynamicQueryManagerFactory;->create(Landroid/content/Context;Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager$Listener;)Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mFeatureQueryManager:Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager;

    .line 724
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/ImsResolver;->updateInstalledServicesCache()V

    .line 726
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 727
    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 728
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 729
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 730
    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 731
    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mReceiverContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mAppChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 733
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mReceiverContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mUserReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.USER_SWITCHED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 736
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mReceiverContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mConfigChangedReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 739
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mContext:Landroid/content/Context;

    const-string v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 740
    invoke-virtual {v0}, Landroid/os/UserManager;->isUserUnlocked()Z

    move-result v1

    const/4 v3, 0x6

    if-eqz v1, :cond_7b

    .line 741
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_98

    .line 743
    :cond_7b
    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mReceiverContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mBootCompleted:Landroid/content/BroadcastReceiver;

    new-instance v5, Landroid/content/IntentFilter;

    const-string v6, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 745
    invoke-virtual {v0}, Landroid/os/UserManager;->isUserUnlocked()Z

    move-result v0

    if-eqz v0, :cond_98

    .line 746
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 753
    :cond_98
    :goto_98
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/ImsResolver;->bindCarrierServicesIfAvailable()V

    return-void
.end method

.method private blacklist isDeviceService(Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;)Z
    .registers 3

    if-nez p1, :cond_4

    const/4 p0, 0x0

    return p0

    .line 1363
    :cond_4
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mDeviceServices:Ljava/util/Map;

    monitor-enter v0

    .line 1364
    :try_start_7
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mDeviceServices:Ljava/util/Map;

    iget-object p1, p1, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->name:Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_15
    move-exception p0

    .line 1365
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_7 .. :try_end_17} :catchall_15

    throw p0
.end method

.method private synthetic blacklist lambda$calculateFeaturesToCreate$10(Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;)Z
    .registers 4

    .line 1480
    iget-object p1, p1, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->name:Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iget v0, p2, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;->slotId:I

    iget p2, p2, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;->featureType:I

    .line 1481
    invoke-direct {p0, v0, p2}, Lcom/android/internal/telephony/ims/ImsResolver;->getCarrierConfiguredPackageName(II)Ljava/lang/String;

    move-result-object p0

    .line 1480
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private synthetic blacklist lambda$calculateFeaturesToCreate$11(Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;)Z
    .registers 3

    .line 1489
    iget-object p1, p1, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->name:Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iget p2, p2, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;->featureType:I

    .line 1490
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/ims/ImsResolver;->getDeviceConfiguration(I)Ljava/lang/String;

    move-result-object p0

    .line 1489
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private synthetic blacklist lambda$calculateFeaturesToCreate$12(Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;)Z
    .registers 3

    .line 1493
    iget v0, p1, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;->slotId:I

    iget p1, p1, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;->featureType:I

    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/ims/ImsResolver;->doesCarrierConfigurationExist(II)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private synthetic blacklist lambda$disableIms$2(ILcom/android/internal/telephony/ims/ImsServiceController;)V
    .registers 3

    .line 836
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ims/ImsResolver;->getSubId(I)I

    move-result p0

    invoke-virtual {p2, p1, p0}, Lcom/android/internal/telephony/ims/ImsServiceController;->disableIms(II)V

    return-void
.end method

.method private synthetic blacklist lambda$enableIms$1(ILcom/android/internal/telephony/ims/ImsServiceController;)V
    .registers 3

    .line 827
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ims/ImsResolver;->getSubId(I)I

    move-result p0

    invoke-virtual {p2, p1, p0}, Lcom/android/internal/telephony/ims/ImsServiceController;->enableIms(II)V

    return-void
.end method

.method private synthetic blacklist lambda$getConfiguredImsServicePackageName$6(Ljava/util/concurrent/CompletableFuture;II)V
    .registers 4

    .line 1122
    :try_start_0
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ims/ImsResolver;->getConfiguredImsServicePackageNameInternal(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_8

    return-void

    :catch_8
    move-exception p0

    .line 1127
    invoke-virtual {p1, p0}, Ljava/util/concurrent/CompletableFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    return-void
.end method

.method private synthetic blacklist lambda$getImsServiceConfiguration$5(Ljava/util/concurrent/LinkedBlockingQueue;ZII)V
    .registers 5

    if-eqz p2, :cond_7

    .line 1062
    invoke-direct {p0, p3, p4}, Lcom/android/internal/telephony/ims/ImsResolver;->getCarrierConfiguredPackageName(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_b

    .line 1063
    :cond_7
    invoke-direct {p0, p4}, Lcom/android/internal/telephony/ims/ImsResolver;->getDeviceConfiguration(I)Ljava/lang/String;

    move-result-object p0

    .line 1061
    :goto_b
    invoke-virtual {p1, p0}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    return-void
.end method

.method private synthetic blacklist lambda$getUserForBind$18(Landroid/os/UserHandle;)Z
    .registers 2

    .line 1964
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object p0

    invoke-static {p1, p0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private synthetic blacklist lambda$initialize$0()V
    .registers 1

    .line 714
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/ImsResolver;->initializeInternal()V

    return-void
.end method

.method private synthetic blacklist lambda$resetIms$3(ILcom/android/internal/telephony/ims/ImsServiceController;)V
    .registers 3

    .line 845
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ims/ImsResolver;->getSubId(I)I

    move-result p0

    invoke-virtual {p2, p1, p0}, Lcom/android/internal/telephony/ims/ImsServiceController;->resetIms(II)V

    return-void
.end method

.method private synthetic blacklist lambda$sanitizeFeatureConfig$15(Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;)Z
    .registers 2

    .line 1882
    iget p1, p1, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;->slotId:I

    iget p0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mNumSlots:I

    if-lt p1, p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public static blacklist make(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILcom/android/ims/ImsFeatureBinderRepository;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)V
    .registers 16

    .line 153
    sget-object v0, Lcom/android/internal/telephony/ims/ImsResolver;->sInstance:Lcom/android/internal/telephony/ims/ImsResolver;

    if-nez v0, :cond_23

    .line 158
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ImsResolver"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/telephony/ims/ImsResolver;->sHandlerThread:Landroid/os/HandlerThread;

    .line 159
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 160
    new-instance v2, Lcom/android/internal/telephony/ims/ImsResolver;

    sget-object v0, Lcom/android/internal/telephony/ims/ImsResolver;->sHandlerThread:Landroid/os/HandlerThread;

    .line 161
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v8

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move-object v7, p4

    move-object v9, p5

    invoke-direct/range {v2 .. v9}, Lcom/android/internal/telephony/ims/ImsResolver;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILcom/android/ims/ImsFeatureBinderRepository;Landroid/os/Looper;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)V

    sput-object v2, Lcom/android/internal/telephony/ims/ImsResolver;->sInstance:Lcom/android/internal/telephony/ims/ImsResolver;

    :cond_23
    return-void
.end method

.method private blacklist maybeAddedImsService(Ljava/lang/String;)V
    .registers 9

    .line 1235
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "maybeAddedImsService, packageName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsResolver"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1236
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ims/ImsResolver;->getImsServiceInfo(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 1240
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :goto_1f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_106

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;

    .line 1243
    iget-object v3, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mInstalledServicesCache:Ljava/util/Map;

    iget-object v4, v2, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->name:Landroid/content/ComponentName;

    invoke-direct {p0, v3, v4}, Lcom/android/internal/telephony/ims/ImsResolver;->getInfoByComponentName(Ljava/util/Map;Landroid/content/ComponentName;)Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;

    move-result-object v3

    const/4 v4, 0x1

    if-eqz v3, :cond_c9

    .line 1246
    iget-object v5, v3, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->users:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->clear()V

    .line 1247
    iget-object v5, v3, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->users:Ljava/util/Set;

    iget-object v6, v2, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->users:Ljava/util/Set;

    invoke-interface {v5, v6}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 1252
    iget-boolean v5, v2, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->featureFromMetadata:Z

    if-eqz v5, :cond_ae

    .line 1253
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mEventLog:Lcom/android/internal/telephony/LocalLog;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "maybeAddedImsService - updating features for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v2, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->name:Landroid/content/ComponentName;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1254
    invoke-virtual {v3}, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->getSupportedFeatures()Ljava/util/Set;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/telephony/ims/ImsResolver;->printFeatures(Ljava/util/Set;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " -> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1255
    invoke-virtual {v2}, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->getSupportedFeatures()Ljava/util/Set;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/telephony/ims/ImsResolver;->printFeatures(Ljava/util/Set;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1253
    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    .line 1256
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Updating features in cached ImsService: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->name:Landroid/content/ComponentName;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", old features: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " new features: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1259
    invoke-virtual {v2}, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->getSupportedFeatures()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->replaceFeatures(Ljava/util/Set;)V

    :goto_ab
    move v0, v4

    goto/16 :goto_1f

    .line 1262
    :cond_ae
    iget-object v3, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mEventLog:Lcom/android/internal/telephony/LocalLog;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "maybeAddedImsService - scheduling query for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    .line 1264
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/ims/ImsResolver;->scheduleQueryForFeatures(Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;)V

    goto/16 :goto_1f

    .line 1267
    :cond_c9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Adding newly added ImsService to cache: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->name:Landroid/content/ComponentName;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1268
    iget-object v3, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mEventLog:Lcom/android/internal/telephony/LocalLog;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "maybeAddedImsService - adding new ImsService: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    .line 1269
    iget-object v3, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mInstalledServicesCache:Ljava/util/Map;

    iget-object v5, v2, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->name:Landroid/content/ComponentName;

    invoke-interface {v3, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1270
    iget-boolean v3, v2, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->featureFromMetadata:Z

    if-eqz v3, :cond_101

    goto :goto_ab

    .line 1275
    :cond_101
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/ims/ImsResolver;->scheduleQueryForFeatures(Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;)V

    goto/16 :goto_1f

    :cond_106
    if-eqz v0, :cond_10b

    .line 1279
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/ImsResolver;->calculateFeatureConfigurationChange()V

    :cond_10b
    return-void
.end method

.method private blacklist maybeRemovedImsService(Ljava/lang/String;)Z
    .registers 6

    .line 1303
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mInstalledServicesCache:Ljava/util/Map;

    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/ims/ImsResolver;->getInfoByPackageName(Ljava/util/Map;Ljava/lang/String;)Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;

    move-result-object v0

    if-eqz v0, :cond_9e

    .line 1305
    iget-object v1, v0, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->controllerFactory:Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceControllerFactory;

    invoke-direct {p0, p1, v1}, Lcom/android/internal/telephony/ims/ImsResolver;->searchForImsServices(Ljava/lang/String;Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceControllerFactory;)Ljava/util/List;

    move-result-object p1

    .line 1307
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_16

    const/4 p1, 0x0

    goto :goto_1c

    :cond_16
    invoke-interface {p1}, Ljava/util/List;->getFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;

    .line 1308
    :goto_1c
    const-string v1, "ImsResolver"

    if-nez p1, :cond_60

    .line 1309
    iget-object p1, v0, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->name:Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ims/ImsResolver;->clearPackageNameUserOverride(Ljava/lang/String;)V

    .line 1311
    iget-object p1, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mInstalledServicesCache:Ljava/util/Map;

    iget-object v2, v0, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->name:Landroid/content/ComponentName;

    invoke-interface {p1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1312
    iget-object p1, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mEventLog:Lcom/android/internal/telephony/LocalLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "maybeRemovedImsService - removing ImsService: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    .line 1313
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "maybeRemovedImsService Removing ImsService for all users: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->name:Landroid/content/ComponentName;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1315
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsResolver;->unbindImsService(Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;)V

    goto :goto_99

    .line 1318
    :cond_60
    iget-object v2, v0, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->users:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 1319
    iget-object v2, v0, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->users:Ljava/util/Set;

    iget-object p1, p1, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->users:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 1320
    iget-object p1, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mEventLog:Lcom/android/internal/telephony/LocalLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "maybeRemovedImsService - modifying ImsService users: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    .line 1321
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "maybeRemovedImsService - Modifying ImsService users "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1326
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsResolver;->unbindImsService(Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;)V

    .line 1328
    :goto_99
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/ImsResolver;->calculateFeatureConfigurationChange()V

    const/4 p0, 0x1

    return p0

    :cond_9e
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist maybeRemovedImsServiceForUser(Ljava/lang/String;Landroid/os/UserHandle;)Z
    .registers 6

    .line 1340
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mInstalledServicesCache:Ljava/util/Map;

    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/ims/ImsResolver;->getInfoByPackageName(Ljava/util/Map;Ljava/lang/String;)Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;

    move-result-object p1

    if-eqz p1, :cond_86

    .line 1342
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mEventLog:Lcom/android/internal/telephony/LocalLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "maybeRemovedImsServiceForUser - removing ImsService "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    .line 1344
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "maybeRemovedImsServiceForUser: Removing ImsService "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsResolver"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1346
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ims/ImsResolver;->unbindImsService(Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;)V

    .line 1347
    iget-object v0, p1, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->users:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1348
    iget-object p2, p1, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->users:Ljava/util/Set;

    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_81

    .line 1349
    iget-object p2, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mEventLog:Lcom/android/internal/telephony/LocalLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "maybeRemovedImsServiceForUser - no more users, removing ImsService "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    .line 1351
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1353
    iget-object p2, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mInstalledServicesCache:Ljava/util/Map;

    iget-object p1, p1, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->name:Landroid/content/ComponentName;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1355
    :cond_81
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/ImsResolver;->calculateFeatureConfigurationChange()V

    const/4 p0, 0x1

    return p0

    :cond_86
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist overrideCarrierService(ILjava/util/Map;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1570
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_52

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 1571
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1572
    iget-object v3, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mEventLog:Lcom/android/internal/telephony/LocalLog;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "overriding carrier ImsService to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " on slot "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " for feature "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Landroid/telephony/ims/feature/ImsFeature;->FEATURE_LOG_MAP:Ljava/util/Map;

    const-string v6, "invalid"

    .line 1574
    invoke-interface {v5, v1, v6}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1572
    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    .line 1575
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v2, p1, v1}, Lcom/android/internal/telephony/ims/ImsResolver;->setOverridePackageName(Ljava/lang/String;II)V

    goto :goto_8

    .line 1577
    :cond_52
    sget-object p2, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/ims/ImsResolver;->updateBoundServices(ILjava/util/Map;)V

    return-void
.end method

.method private blacklist overrideDeviceService(Ljava/util/Map;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1596
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_9
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 1597
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1598
    iget-object v4, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mEventLog:Lcom/android/internal/telephony/LocalLog;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "overriding device ImsService to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " for feature "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Landroid/telephony/ims/feature/ImsFeature;->FEATURE_LOG_MAP:Ljava/util/Map;

    const-string v7, "invalid"

    .line 1599
    invoke-interface {v6, v2, v7}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1598
    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    .line 1600
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/ims/ImsResolver;->getDeviceConfiguration(I)Ljava/lang/String;

    move-result-object v4

    .line 1601
    invoke-static {v4, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 1602
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "overrideDeviceService - device package changed (override): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " -> "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v8, "ImsResolver"

    invoke-static {v8, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1604
    iget-object v5, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mEventLog:Lcom/android/internal/telephony/LocalLog;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    .line 1606
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/ims/ImsResolver;->clearPackageNameUserOverride(Ljava/lang/String;)V

    .line 1607
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v3, v2}, Lcom/android/internal/telephony/ims/ImsResolver;->setDeviceConfiguration(Ljava/lang/String;I)V

    .line 1608
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/ims/ImsResolver;->getVisibleImsServiceInfoFromCache(Ljava/lang/String;)Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;

    move-result-object v2

    if-eqz v2, :cond_a3

    .line 1609
    iget-boolean v3, v2, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->featureFromMetadata:Z

    if-eqz v3, :cond_9e

    goto :goto_a3

    .line 1613
    :cond_9e
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/ims/ImsResolver;->scheduleQueryForFeatures(Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;)V

    goto/16 :goto_9

    :cond_a3
    :goto_a3
    const/4 v1, 0x1

    goto/16 :goto_9

    :cond_a6
    if-eqz v1, :cond_ab

    .line 1617
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/ImsResolver;->calculateFeatureConfigurationChange()V

    :cond_ab
    return-void
.end method

.method private static blacklist printFeatures(Ljava/util/Set;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1984
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1985
    const-string v1, " features: ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p0, :cond_47

    .line 1987
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_10
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_42

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;

    .line 1988
    const-string v2, "{"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1989
    iget v2, v1, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;->slotId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1990
    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1991
    sget-object v2, Landroid/telephony/ims/feature/ImsFeature;->FEATURE_LOG_MAP:Ljava/util/Map;

    iget v1, v1, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;->featureType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1992
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_10

    .line 1994
    :cond_42
    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1996
    :cond_47
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private blacklist putImsController(IIILcom/android/internal/telephony/ims/ImsServiceController;)V
    .registers 10

    if-ltz p1, :cond_9d

    .line 1185
    iget v0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mNumSlots:I

    if-ge p1, v0, :cond_9d

    const/4 v0, -0x1

    if-le p3, v0, :cond_9d

    const/4 v0, 0x3

    if-lt p3, v0, :cond_e

    goto/16 :goto_9d

    .line 1191
    :cond_e
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mBoundServicesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1192
    :try_start_11
    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mBoundImsServicesByFeature:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    if-nez v1, :cond_28

    .line 1194
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 1195
    iget-object v2, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mBoundImsServicesByFeature:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_28

    :catchall_26
    move-exception p0

    goto :goto_9b

    .line 1197
    :cond_28
    :goto_28
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mEventLog:Lcom/android/internal/telephony/LocalLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "putImsController - ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Landroid/telephony/ims/feature/ImsFeature;->FEATURE_LOG_MAP:Ljava/util/Map;

    .line 1198
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "] -> "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1197
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    .line 1199
    const-string p0, "ImsResolver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ImsServiceController added on slot: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", subId: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " with feature: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1200
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " using package: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1201
    invoke-virtual {p4}, Lcom/android/internal/telephony/ims/ImsServiceController;->getComponentName()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1199
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1202
    invoke-virtual {v1, p3, p4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1203
    monitor-exit v0

    return-void

    :goto_9b
    monitor-exit v0
    :try_end_9c
    .catchall {:try_start_11 .. :try_end_9c} :catchall_26

    throw p0

    .line 1187
    :cond_9d
    :goto_9d
    const-string p0, "ImsResolver"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "putImsController received invalid parameters - slot: "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", feature: "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist removeImsController(II)Lcom/android/internal/telephony/ims/ImsServiceController;
    .registers 9

    const/4 v0, 0x0

    if-ltz p1, :cond_91

    const/4 v1, -0x1

    if-le p2, v1, :cond_91

    const/4 v1, 0x3

    if-lt p2, v1, :cond_b

    goto/16 :goto_91

    .line 1213
    :cond_b
    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mBoundServicesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1214
    :try_start_e
    iget-object v2, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mBoundImsServicesByFeature:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseArray;

    if-nez v2, :cond_1c

    .line 1216
    monitor-exit v1

    return-object v0

    :catchall_1a
    move-exception p0

    goto :goto_8f

    .line 1218
    :cond_1c
    invoke-virtual {v2, p2, v0}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/ims/ImsServiceController;

    if-eqz v0, :cond_8d

    .line 1220
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mEventLog:Lcom/android/internal/telephony/LocalLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "removeImsController - ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Landroid/telephony/ims/feature/ImsFeature;->FEATURE_LOG_MAP:Ljava/util/Map;

    .line 1221
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "] -> "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1220
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    .line 1222
    const-string p0, "ImsResolver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ImsServiceController removed on slot: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " with feature: "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1223
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " using package: "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1224
    invoke-virtual {v0}, Lcom/android/internal/telephony/ims/ImsServiceController;->getComponentName()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1222
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1225
    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 1227
    :cond_8d
    monitor-exit v1

    return-object v0

    .line 1228
    :goto_8f
    monitor-exit v1
    :try_end_90
    .catchall {:try_start_e .. :try_end_90} :catchall_1a

    throw p0

    .line 1209
    :cond_91
    :goto_91
    const-string p0, "ImsResolver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeImsController received invalid parameters - slot: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", feature: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method private blacklist removeOverridePackageName(I)Ljava/util/Set;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 971
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const/4 v1, 0x0

    :goto_6
    const/4 v2, 0x3

    if-ge v1, v2, :cond_1b

    .line 973
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ims/ImsResolver;->getOverridePackageName(I)Landroid/util/SparseArray;

    move-result-object v2

    .line 974
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->removeReturnOld(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_18

    .line 975
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_1b
    return-object v0
.end method

.method private blacklist removeSlotId(I)V
    .registers 3

    .line 2152
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mSlotIdToSubIdMap:Landroid/util/SparseIntArray;

    monitor-enter v0

    .line 2153
    :try_start_3
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mSlotIdToSubIdMap:Landroid/util/SparseIntArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 2154
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method private blacklist sanitizeFeatureConfig(Ljava/util/Set;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;",
            ">;)V"
        }
    .end annotation

    .line 1882
    new-instance v0, Lcom/android/internal/telephony/ims/ImsResolver$$ExternalSyntheticLambda19;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/ims/ImsResolver$$ExternalSyntheticLambda19;-><init>(Lcom/android/internal/telephony/ims/ImsResolver;)V

    invoke-interface {p1, v0}, Ljava/util/Set;->removeIf(Ljava/util/function/Predicate;)Z

    .line 1884
    invoke-interface {p1}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/internal/telephony/ims/ImsResolver$$ExternalSyntheticLambda20;

    invoke-direct {v0}, Lcom/android/internal/telephony/ims/ImsResolver$$ExternalSyntheticLambda20;-><init>()V

    .line 1885
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 1886
    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    .line 1887
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_23
    :goto_23
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_41

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;

    .line 1888
    new-instance v1, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;

    iget v2, v0, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;->slotId:I

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;-><init>(II)V

    invoke-interface {p1, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_23

    .line 1890
    invoke-interface {p1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_23

    :cond_41
    return-void
.end method

.method private blacklist scheduleQueryForFeatures(Landroid/content/ComponentName;I)V
    .registers 4

    .line 1738
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ims/ImsResolver;->getVisibleImsServiceInfoFromCache(Ljava/lang/String;)Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;

    move-result-object v0

    if-nez v0, :cond_21

    .line 1740
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "scheduleQueryForFeatures: Couldn\'t find cached info for name: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ImsResolver"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1743
    :cond_21
    invoke-direct {p0, v0, p2}, Lcom/android/internal/telephony/ims/ImsResolver;->scheduleQueryForFeatures(Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;I)V

    return-void
.end method

.method private blacklist scheduleQueryForFeatures(Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;)V
    .registers 3

    const/4 v0, 0x0

    .line 1747
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/ims/ImsResolver;->scheduleQueryForFeatures(Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;I)V

    return-void
.end method

.method private blacklist scheduleQueryForFeatures(Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;I)V
    .registers 7

    if-nez p1, :cond_3

    return-void

    .line 1726
    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1727
    iget-object v2, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1, p1}, Landroid/os/Handler;->hasMessages(ILjava/lang/Object;)Z

    move-result v1

    const-string v2, "ImsResolver"

    if-eqz v1, :cond_30

    .line 1728
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "scheduleQueryForFeatures: dynamic query for "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->name:Landroid/content/ComponentName;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " already scheduled"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1732
    :cond_30
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "scheduleQueryForFeatures: starting dynamic query for "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->name:Landroid/content/ComponentName;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " in "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "ms."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1734
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mHandler:Landroid/os/Handler;

    int-to-long p1, p2

    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private blacklist searchForImsServices(Ljava/lang/String;Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceControllerFactory;)Ljava/util/List;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceControllerFactory;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;",
            ">;"
        }
    .end annotation

    .line 2051
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2053
    new-instance v1, Landroid/content/Intent;

    invoke-interface {p2}, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceControllerFactory;->getServiceInterface()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2054
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 2058
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/ImsResolver;->getActiveUsers()Ljava/util/Set;

    move-result-object v2

    .line 2062
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "searchForImsServices: package="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", users="

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v3, "ImsResolver"

    invoke-static {v3, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2064
    iget-object p1, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    .line 2065
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_144

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UserHandle;

    const/16 v5, 0x80

    .line 2066
    invoke-virtual {p1, v1, v5, v4}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;ILandroid/os/UserHandle;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_53
    :goto_53
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3d

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    .line 2068
    iget-object v6, v6, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v6, :cond_53

    .line 2071
    new-instance v7, Landroid/content/ComponentName;

    iget-object v8, v6, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v9, v6, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v7, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2073
    invoke-direct {p0, v0, v7}, Lcom/android/internal/telephony/ims/ImsResolver;->getInfoFromCache(Ljava/util/List;Landroid/content/ComponentName;)Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;

    move-result-object v8

    if-eqz v8, :cond_8c

    .line 2075
    iget-object v6, v8, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->users:Ljava/util/Set;

    invoke-interface {v6, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2076
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "service modify users:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_53

    .line 2079
    :cond_8c
    new-instance v8, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;

    invoke-direct {v8, v7}, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;-><init>(Landroid/content/ComponentName;)V

    .line 2080
    iget-object v7, v8, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->users:Ljava/util/Set;

    invoke-interface {v7, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2082
    iput-object p2, v8, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->controllerFactory:Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceControllerFactory;

    .line 2091
    invoke-direct {p0, v8}, Lcom/android/internal/telephony/ims/ImsResolver;->isDeviceService(Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;)Z

    move-result v7

    const/4 v9, 0x0

    if-nez v7, :cond_a7

    iget-object v7, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mImsServiceControllerFactoryCompat:Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceControllerFactory;

    if-ne v7, p2, :cond_a4

    goto :goto_a7

    .line 2117
    :cond_a4
    iput-boolean v9, v8, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->featureFromMetadata:Z

    goto :goto_e8

    .line 2093
    :cond_a7
    :goto_a7
    iget-object v7, v6, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    if-eqz v7, :cond_d8

    .line 2094
    const-string v10, "android.telephony.ims.MMTEL_FEATURE"

    invoke-virtual {v7, v10, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_c8

    .line 2095
    iget v7, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mNumSlots:I

    const/4 v10, 0x1

    invoke-virtual {v8, v7, v10}, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->addFeatureForAllSlots(II)V

    .line 2097
    iget-object v7, v6, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    const-string v10, "android.telephony.ims.EMERGENCY_MMTEL_FEATURE"

    invoke-virtual {v7, v10, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_c8

    .line 2100
    iget v7, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mNumSlots:I

    invoke-virtual {v8, v7, v9}, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->addFeatureForAllSlots(II)V

    .line 2104
    :cond_c8
    iget-object v7, v6, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    const-string v10, "android.telephony.ims.RCS_FEATURE"

    invoke-virtual {v7, v10, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_d8

    .line 2105
    iget v7, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mNumSlots:I

    const/4 v10, 0x2

    invoke-virtual {v8, v7, v10}, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->addFeatureForAllSlots(II)V

    .line 2110
    :cond_d8
    iget-object v7, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mImsServiceControllerFactoryCompat:Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceControllerFactory;

    if-eq v7, p2, :cond_e8

    .line 2111
    invoke-virtual {v8}, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->getSupportedFeatures()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_e8

    .line 2113
    iput-boolean v9, v8, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->featureFromMetadata:Z

    .line 2119
    :cond_e8
    :goto_e8
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "service name: "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v8, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->name:Landroid/content/ComponentName;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, ", manifest query: "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v10, v8, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->featureFromMetadata:Z

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, ", users: "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v8, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->users:Ljava/util/Set;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2125
    iget-object v7, v6, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    const-string v10, "android.permission.BIND_IMS_SERVICE"

    invoke-static {v7, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_13f

    iget-object v6, v6, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    const-string v7, "override_bind_check"

    .line 2127
    invoke-virtual {v6, v7, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_127

    goto :goto_13f

    .line 2131
    :cond_127
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ImsService is not protected with BIND_IMS_SERVICE permission: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v8, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->name:Landroid/content/ComponentName;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_53

    .line 2129
    :cond_13f
    :goto_13f
    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_53

    :cond_144
    return-object v0
.end method

.method private blacklist setCarrierConfiguredPackageName(Ljava/lang/String;II)V
    .registers 4

    .line 950
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/ims/ImsResolver;->getCarrierConfiguredPackageNames(I)Ljava/util/Map;

    move-result-object p0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private blacklist setDeviceConfiguration(Ljava/lang/String;I)V
    .registers 4

    .line 942
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mDeviceServices:Ljava/util/Map;

    monitor-enter v0

    .line 943
    :try_start_3
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mDeviceServices:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 944
    monitor-exit v0

    return-void

    :catchall_e
    move-exception p0

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw p0
.end method

.method private blacklist setOverridePackageName(Ljava/lang/String;II)V
    .registers 4

    .line 983
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/ims/ImsResolver;->getOverridePackageName(I)Landroid/util/SparseArray;

    move-result-object p0

    invoke-virtual {p0, p3, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method private blacklist setPackageNameUserOverride(Ljava/lang/String;I)V
    .registers 5

    if-eqz p1, :cond_34

    .line 988
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_34

    const/16 v0, -0x2710

    if-ne p2, v0, :cond_d

    goto :goto_34

    .line 989
    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setPackageNameUserOverride: set for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", user= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsResolver"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 990
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mImsServiceTestUserRestrictions:Ljava/util/Map;

    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_34
    :goto_34
    return-void
.end method

.method private blacklist setSubId(II)V
    .registers 4

    .line 2141
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mSlotIdToSubIdMap:Landroid/util/SparseIntArray;

    monitor-enter v0

    .line 2142
    :try_start_3
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mSlotIdToSubIdMap:Landroid/util/SparseIntArray;

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 2143
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method private blacklist shouldFeaturesCauseBind(Ljava/util/Set;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;",
            ">;)Z"
        }
    .end annotation

    .line 1561
    invoke-interface {p1}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/android/internal/telephony/ims/ImsResolver$$ExternalSyntheticLambda21;

    invoke-direct {p1}, Lcom/android/internal/telephony/ims/ImsResolver$$ExternalSyntheticLambda21;-><init>()V

    .line 1563
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/Stream;->count()J

    move-result-wide p0

    const-wide/16 v0, 0x0

    cmp-long p0, p0, v0

    if-lez p0, :cond_19

    const/4 p0, 0x1

    return p0

    :cond_19
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist startDynamicQuery(Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;)V
    .registers 7

    .line 1822
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ims/ImsResolver;->getUserForBind(Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;)Landroid/os/UserHandle;

    move-result-object v0

    .line 1823
    const-string v1, "ImsResolver"

    if-nez v0, :cond_1d

    .line 1824
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "scheduleQueryForFeatures: skipping query for ImsService that is not running: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1830
    :cond_1d
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ims/ImsResolver;->isDeviceService(Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;)Z

    move-result v2

    if-nez v2, :cond_33

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ims/ImsResolver;->getSlotsForActiveCarrierService(Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_33

    .line 1831
    const-string p0, "scheduleQueryForFeatures: skipping query for ImsService that is not set as carrier/device ImsService."

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1835
    :cond_33
    iget-object v2, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mEventLog:Lcom/android/internal/telephony/LocalLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startDynamicQuery - starting query for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    .line 1836
    iget-object v2, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mFeatureQueryManager:Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager;

    iget-object v3, p1, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->name:Landroid/content/ComponentName;

    iget-object v4, p1, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->controllerFactory:Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceControllerFactory;

    .line 1837
    invoke-interface {v4}, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceControllerFactory;->getServiceInterface()Ljava/lang/String;

    move-result-object v4

    .line 1836
    invoke-virtual {v2, v3, v0, v4}, Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager;->startQuery(Landroid/content/ComponentName;Landroid/os/UserHandle;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6b

    .line 1839
    const-string v0, "startDynamicQuery: service could not connect. Retrying after delay."

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1840
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mEventLog:Lcom/android/internal/telephony/LocalLog;

    const-string v1, "startDynamicQuery - query failed. Retrying in 5000 mS"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    const/16 v0, 0x1388

    .line 1842
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/ims/ImsResolver;->scheduleQueryForFeatures(Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;I)V

    return-void

    .line 1844
    :cond_6b
    const-string p0, "startDynamicQuery: Service queried, waiting for response."

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist unbindImsService(Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;)V
    .registers 7

    .line 1451
    const-string v0, "ImsResolver"

    if-nez p1, :cond_5

    goto :goto_5f

    .line 1454
    :cond_5
    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mActiveControllers:Ljava/util/Map;

    invoke-direct {p0, v1, p1}, Lcom/android/internal/telephony/ims/ImsResolver;->getControllerByServiceInfo(Ljava/util/Map;Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;)Lcom/android/internal/telephony/ims/ImsServiceController;

    move-result-object v1

    if-eqz v1, :cond_5f

    .line 1458
    :try_start_d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unbinding ImsService: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/internal/telephony/ims/ImsServiceController;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1459
    iget-object v2, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mEventLog:Lcom/android/internal/telephony/LocalLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unbindImsService - unbinding and removing "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    .line 1460
    invoke-virtual {v1}, Lcom/android/internal/telephony/ims/ImsServiceController;->unbind()V
    :try_end_3e
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_3e} :catch_3f

    goto :goto_58

    :catch_3f
    move-exception v1

    .line 1462
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unbindImsService: Remote Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1464
    :goto_58
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mActiveControllers:Ljava/util/Map;

    iget-object p1, p1, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->name:Landroid/content/ComponentName;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5f
    :goto_5f
    return-void
.end method

.method private blacklist updateBoundDeviceServices()V
    .registers 7

    .line 1634
    const-string v0, "updateBoundDeviceServices: called"

    const-string v1, "ImsResolver"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1635
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    const/4 v2, 0x0

    :goto_d
    const/4 v3, 0x3

    if-ge v2, v3, :cond_47

    .line 1637
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/ims/ImsResolver;->getDeviceConfiguration(I)Ljava/lang/String;

    move-result-object v3

    .line 1638
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/ims/ImsResolver;->getVisibleImsServiceInfoFromCache(Ljava/lang/String;)Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;

    move-result-object v4

    if-eqz v4, :cond_44

    .line 1639
    iget-boolean v5, v4, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->featureFromMetadata:Z

    if-nez v5, :cond_44

    .line 1640
    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_44

    .line 1641
    invoke-virtual {v0, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1643
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateBoundDeviceServices: Schedule query for package="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1644
    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/ims/ImsResolver;->scheduleQueryForFeatures(Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;)V

    :cond_44
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_47
    return-void
.end method

.method private blacklist updateBoundServices(ILjava/util/Map;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, -0x1

    if-le p1, v0, :cond_dc

    .line 1650
    iget v0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mNumSlots:I

    if-lt p1, v0, :cond_9

    goto/16 :goto_dc

    :cond_9
    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_c
    const/4 v3, 0x3

    if-ge v0, v3, :cond_bd

    .line 1656
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/ims/ImsResolver;->getOverridePackageName(II)Ljava/lang/String;

    move-result-object v3

    .line 1657
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/ims/ImsResolver;->getCarrierConfiguredPackageName(II)Ljava/lang/String;

    move-result-object v4

    .line 1658
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, ""

    invoke-interface {p2, v5, v6}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1659
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    const-string v7, "ImsResolver"

    if-nez v6, :cond_51

    .line 1664
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_33

    const-string v5, "(none)"

    :cond_33
    sget-object v6, Landroid/telephony/ims/feature/ImsFeature;->FEATURE_LOG_MAP:Ljava/util/Map;

    .line 1666
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v9, "invalid"

    invoke-interface {v6, v8, v9}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    filled-new-array {v5, v3, v6, v8}, [Ljava/lang/Object;

    move-result-object v5

    .line 1662
    const-string v6, "updateBoundServices: overriding %s with %s for feature %s on slot %d"

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_52

    :cond_51
    move-object v3, v5

    .line 1670
    :goto_52
    invoke-direct {p0, v3, p1, v0}, Lcom/android/internal/telephony/ims/ImsResolver;->setCarrierConfiguredPackageName(Ljava/lang/String;II)V

    .line 1673
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/ims/ImsResolver;->getVisibleImsServiceInfoFromCache(Ljava/lang/String;)Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;

    move-result-object v5

    const/4 v6, 0x1

    if-eqz v5, :cond_66

    .line 1674
    iget-boolean v8, v5, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->featureFromMetadata:Z

    if-eqz v8, :cond_61

    goto :goto_66

    .line 1678
    :cond_61
    invoke-direct {p0, v5}, Lcom/android/internal/telephony/ims/ImsResolver;->scheduleQueryForFeatures(Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;)V

    move v2, v6

    goto :goto_67

    :cond_66
    :goto_66
    move v1, v6

    .line 1681
    :goto_67
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateBoundServices - carrier package changed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " -> "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " on slot "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", hasConfigChanged="

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1684
    iget-object v5, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mEventLog:Lcom/android/internal/telephony/LocalLog;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_c

    :cond_bd
    if-eqz v1, :cond_c2

    .line 1688
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/ImsResolver;->calculateFeatureConfigurationChange()V

    :cond_c2
    if-eqz v1, :cond_dc

    if-eqz v2, :cond_dc

    .line 1691
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mEventLog:Lcom/android/internal/telephony/LocalLog;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[warning] updateBoundServices - both hasConfigChange and query scheduled on slot "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    :cond_dc
    :goto_dc
    return-void
.end method

.method private blacklist updateInstalledServicesCache()V
    .registers 5

    const/4 v0, 0x0

    .line 762
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsResolver;->getImsServiceInfo(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_9
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_27

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;

    .line 763
    iget-object v2, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mInstalledServicesCache:Ljava/util/Map;

    iget-object v3, v1, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->name:Landroid/content/ComponentName;

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 764
    iget-object v2, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mInstalledServicesCache:Ljava/util/Map;

    iget-object v3, v1, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->name:Landroid/content/ComponentName;

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    :cond_27
    return-void
.end method


# virtual methods
.method public blacklist clearCarrierImsServiceConfiguration(I)Z
    .registers 4

    const/4 v0, 0x0

    if-ltz p1, :cond_15

    .line 910
    iget v1, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mNumSlots:I

    if-lt p1, v1, :cond_8

    goto :goto_15

    .line 915
    :cond_8
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-static {p0, v1, p1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object p0

    .line 916
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    const/4 p0, 0x1

    return p0

    .line 911
    :cond_15
    :goto_15
    const-string p0, "ImsResolver"

    const-string p1, "clearCarrierImsServiceConfiguration: invalid slotId!"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public blacklist destroy()V
    .registers 2

    .line 774
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mHandler:Landroid/os/Handler;

    invoke-static {v0}, Lcom/android/internal/telephony/PhoneConfigurationManager;->unregisterForMultiSimConfigChange(Landroid/os/Handler;)V

    .line 775
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public blacklist disableIms(I)V
    .registers 4

    .line 835
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ims/ImsResolver;->getImsServiceControllers(I)Ljava/util/Set;

    move-result-object v0

    new-instance v1, Lcom/android/internal/telephony/ims/ImsResolver$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/telephony/ims/ImsResolver$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/telephony/ims/ImsResolver;I)V

    invoke-interface {v0, v1}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public blacklist dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 8

    .line 2160
    new-instance p1, Lcom/android/internal/telephony/IndentingPrintWriter;

    const-string p3, "  "

    invoke-direct {p1, p2, p3}, Lcom/android/internal/telephony/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 2161
    const-string p2, "ImsResolver:"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2162
    invoke-virtual {p1}, Lcom/android/internal/telephony/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 2163
    const-string p2, "Configurations:"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2164
    invoke-virtual {p1}, Lcom/android/internal/telephony/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 2165
    const-string p2, "Device:"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2166
    invoke-virtual {p1}, Lcom/android/internal/telephony/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 2167
    iget-object p2, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mDeviceServices:Ljava/util/Map;

    monitor-enter p2

    .line 2168
    :try_start_22
    iget-object p3, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mDeviceServices:Ljava/util/Map;

    invoke-interface {p3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_2c
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_63

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 2169
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Landroid/telephony/ims/feature/ImsFeature;->FEATURE_LOG_MAP:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mDeviceServices:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2c

    :catchall_60
    move-exception p0

    goto/16 :goto_131

    .line 2171
    :cond_63
    monitor-exit p2
    :try_end_64
    .catchall {:try_start_22 .. :try_end_64} :catchall_60

    .line 2172
    invoke-virtual {p1}, Lcom/android/internal/telephony/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 2173
    const-string p2, "Carrier: "

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2174
    invoke-virtual {p1}, Lcom/android/internal/telephony/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    const/4 p2, 0x0

    move p3, p2

    .line 2175
    :goto_71
    iget v0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mNumSlots:I

    if-ge p3, v0, :cond_b7

    move v0, p2

    :goto_76
    const/4 v1, 0x3

    if-ge v0, v1, :cond_b4

    .line 2177
    const-string v1, "slot="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2178
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(I)V

    .line 2179
    const-string v1, ", feature="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2180
    sget-object v1, Landroid/telephony/ims/feature/ImsFeature;->FEATURE_LOG_MAP:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "?"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2181
    const-string v1, ": "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2182
    invoke-virtual {p1}, Lcom/android/internal/telephony/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 2183
    invoke-direct {p0, p3, v0}, Lcom/android/internal/telephony/ims/ImsResolver;->getCarrierConfiguredPackageName(II)Ljava/lang/String;

    move-result-object v1

    .line 2184
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_ab

    const-string v1, "none"

    :cond_ab
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2185
    invoke-virtual {p1}, Lcom/android/internal/telephony/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    add-int/lit8 v0, v0, 0x1

    goto :goto_76

    :cond_b4
    add-int/lit8 p3, p3, 0x1

    goto :goto_71

    .line 2188
    :cond_b7
    invoke-virtual {p1}, Lcom/android/internal/telephony/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 2189
    invoke-virtual {p1}, Lcom/android/internal/telephony/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 2190
    const-string p2, "Cached ImsServices:"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2191
    invoke-virtual {p1}, Lcom/android/internal/telephony/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 2192
    iget-object p2, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mInstalledServicesCache:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_cf
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_df

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;

    .line 2193
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_cf

    .line 2195
    :cond_df
    invoke-virtual {p1}, Lcom/android/internal/telephony/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 2196
    const-string p2, "Active controllers:"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2197
    invoke-virtual {p1}, Lcom/android/internal/telephony/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 2198
    iget-object p2, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mActiveControllers:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_f4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_10d

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/internal/telephony/ims/ImsServiceController;

    .line 2199
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2200
    invoke-virtual {p1}, Lcom/android/internal/telephony/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 2201
    invoke-virtual {p3, p1}, Lcom/android/internal/telephony/ims/ImsServiceController;->dump(Ljava/io/PrintWriter;)V

    .line 2202
    invoke-virtual {p1}, Lcom/android/internal/telephony/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    goto :goto_f4

    .line 2204
    :cond_10d
    invoke-virtual {p1}, Lcom/android/internal/telephony/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 2205
    const-string p2, "Connection Repository Log:"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2206
    invoke-virtual {p1}, Lcom/android/internal/telephony/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 2207
    iget-object p2, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mRepo:Lcom/android/ims/ImsFeatureBinderRepository;

    invoke-virtual {p2, p1}, Lcom/android/ims/ImsFeatureBinderRepository;->dump(Ljava/io/PrintWriter;)V

    .line 2208
    invoke-virtual {p1}, Lcom/android/internal/telephony/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 2209
    const-string p2, "Event Log:"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2210
    invoke-virtual {p1}, Lcom/android/internal/telephony/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 2211
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mEventLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LocalLog;->dump(Ljava/io/PrintWriter;)V

    .line 2212
    invoke-virtual {p1}, Lcom/android/internal/telephony/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    return-void

    .line 2171
    :goto_131
    :try_start_131
    monitor-exit p2
    :try_end_132
    .catchall {:try_start_131 .. :try_end_132} :catchall_60

    throw p0
.end method

.method public blacklist enableIms(I)V
    .registers 4

    .line 826
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ims/ImsResolver;->getImsServiceControllers(I)Ljava/util/Set;

    move-result-object v0

    new-instance v1, Lcom/android/internal/telephony/ims/ImsResolver$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/telephony/ims/ImsResolver$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/telephony/ims/ImsResolver;I)V

    invoke-interface {v0, v1}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public blacklist getConfiguredImsServicePackageName(II)Ljava/lang/String;
    .registers 20

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    .line 1106
    const-string v4, "getResolvedImsServicePackageName: ["

    const-string v0, " ms with package name: "

    const-string v5, "], async query complete, took "

    const-string v6, "getResolvedImsServicePackageName - ["

    const-string v7, ", "

    const-string v9, "ImsResolver"

    if-ltz v2, :cond_1e

    iget v10, v1, Lcom/android/internal/telephony/ims/ImsResolver;->mNumSlots:I

    if-ge v2, v10, :cond_1e

    const/4 v10, -0x1

    if-le v3, v10, :cond_1e

    const/4 v10, 0x3

    if-lt v3, v10, :cond_22

    :cond_1e
    const/16 v16, 0x0

    goto/16 :goto_11d

    .line 1112
    :cond_22
    new-instance v10, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v10}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    .line 1113
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    .line 1114
    iget-object v13, v1, Lcom/android/internal/telephony/ims/ImsResolver;->mHandler:Landroid/os/Handler;

    invoke-virtual {v13}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v13

    invoke-virtual {v13}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v13

    if-eqz v13, :cond_3f

    .line 1117
    invoke-direct/range {p0 .. p2}, Lcom/android/internal/telephony/ims/ImsResolver;->getConfiguredImsServicePackageNameInternal(II)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    goto :goto_49

    .line 1120
    :cond_3f
    iget-object v13, v1, Lcom/android/internal/telephony/ims/ImsResolver;->mHandler:Landroid/os/Handler;

    new-instance v14, Lcom/android/internal/telephony/ims/ImsResolver$$ExternalSyntheticLambda11;

    invoke-direct {v14, v1, v10, v2, v3}, Lcom/android/internal/telephony/ims/ImsResolver$$ExternalSyntheticLambda11;-><init>(Lcom/android/internal/telephony/ims/ImsResolver;Ljava/util/concurrent/CompletableFuture;II)V

    invoke-virtual {v13, v14}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1132
    :goto_49
    :try_start_49
    invoke-virtual {v10}, Ljava/util/concurrent/CompletableFuture;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 1133
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    sub-long/2addr v13, v11

    const-wide/16 v11, 0x32

    cmp-long v11, v13, v11

    if-lez v11, :cond_c3

    .line 1136
    iget-object v11, v1, Lcom/android/internal/telephony/ims/ImsResolver;->mEventLog:Lcom/android/internal/telephony/LocalLog;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v15, Landroid/telephony/ims/feature/ImsFeature;->FEATURE_LOG_MAP:Ljava/util/Map;
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_6c} :catch_bf

    const/16 v16, 0x0

    .line 1137
    :try_start_6e
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v15, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1136
    invoke-virtual {v11, v8}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    .line 1140
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1141
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v15, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1140
    invoke-static {v9, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_bc
    .catch Ljava/lang/Exception; {:try_start_6e .. :try_end_bc} :catch_bd

    return-object v10

    :catch_bd
    move-exception v0

    goto :goto_c4

    :catch_bf
    move-exception v0

    const/16 v16, 0x0

    goto :goto_c4

    :cond_c3
    return-object v10

    .line 1147
    :goto_c4
    iget-object v1, v1, Lcom/android/internal/telephony/ims/ImsResolver;->mEventLog:Lcom/android/internal/telephony/LocalLog;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Landroid/telephony/ims/feature/ImsFeature;->FEATURE_LOG_MAP:Ljava/util/Map;

    .line 1148
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "] -> Exception: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1147
    invoke-virtual {v1, v5}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    .line 1149
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1150
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v6, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] returned Exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1149
    invoke-static {v9, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v16

    .line 1108
    :goto_11d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getResolvedImsServicePackageName received invalid parameters - slot: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", feature: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v16
.end method

.method public blacklist getHandler()Landroid/os/Handler;
    .registers 1

    .line 701
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public blacklist getImsConfig(II)Landroid/telephony/ims/aidl/IImsConfig;
    .registers 3

    .line 860
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mRepo:Lcom/android/ims/ImsFeatureBinderRepository;

    invoke-virtual {p0, p1, p2}, Lcom/android/ims/ImsFeatureBinderRepository;->getIfExists(II)Ljava/util/Optional;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/ims/ImsFeatureContainer;

    if-eqz p0, :cond_12

    .line 861
    iget-object p0, p0, Lcom/android/ims/ImsFeatureContainer;->imsConfig:Landroid/telephony/ims/aidl/IImsConfig;

    return-object p0

    :cond_12
    return-object p1
.end method

.method public blacklist getImsRegistration(II)Landroid/telephony/ims/aidl/IImsRegistration;
    .registers 3

    .line 852
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mRepo:Lcom/android/ims/ImsFeatureBinderRepository;

    invoke-virtual {p0, p1, p2}, Lcom/android/ims/ImsFeatureBinderRepository;->getIfExists(II)Ljava/util/Optional;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/ims/ImsFeatureContainer;

    if-eqz p0, :cond_12

    .line 853
    iget-object p0, p0, Lcom/android/ims/ImsFeatureContainer;->imsRegistration:Landroid/telephony/ims/aidl/IImsRegistration;

    return-object p0

    :cond_12
    return-object p1
.end method

.method public blacklist getImsServiceConfiguration(IZI)Ljava/lang/String;
    .registers 12

    .line 1054
    const-string v1, "ImsResolver"

    if-ltz p1, :cond_44

    iget v0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mNumSlots:I

    if-lt p1, v0, :cond_9

    goto :goto_44

    .line 1059
    :cond_9
    new-instance v4, Ljava/util/concurrent/LinkedBlockingQueue;

    const/4 v0, 0x1

    invoke-direct {v4, v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    .line 1061
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/internal/telephony/ims/ImsResolver$$ExternalSyntheticLambda10;

    move-object v3, p0

    move v6, p1

    move v5, p2

    move v7, p3

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/telephony/ims/ImsResolver$$ExternalSyntheticLambda10;-><init>(Lcom/android/internal/telephony/ims/ImsResolver;Ljava/util/concurrent/LinkedBlockingQueue;ZII)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1065
    :try_start_1d
    sget-object p0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 p1, 0x1388

    invoke-virtual {v4, p1, p2, p0}, Ljava/util/concurrent/LinkedBlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_27
    .catch Ljava/lang/InterruptedException; {:try_start_1d .. :try_end_27} :catch_28

    return-object p0

    :catch_28
    move-exception v0

    move-object p0, v0

    .line 1067
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "getImsServiceConfiguration: exception="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 1055
    :cond_44
    :goto_44
    const-string p0, "getImsServiceConfiguration: invalid slotId!"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1056
    const-string p0, ""

    return-object p0
.end method

.method public blacklist getImsServiceInfoFromCache(Ljava/lang/String;)Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;
    .registers 4

    .line 2021
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return-object v1

    .line 2024
    :cond_8
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mInstalledServicesCache:Ljava/util/Map;

    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/ims/ImsResolver;->getInfoByPackageName(Ljava/util/Map;Ljava/lang/String;)Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;

    move-result-object p0

    if-eqz p0, :cond_11

    return-object p0

    :cond_11
    return-object v1
.end method

.method public blacklist getVisibleImsServiceInfoFromCache(Ljava/lang/String;)Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;
    .registers 6

    .line 2004
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ims/ImsResolver;->getImsServiceInfoFromCache(Ljava/lang/String;)Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    .line 2009
    :cond_8
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsResolver;->getUserForBind(Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;)Landroid/os/UserHandle;

    move-result-object p0

    .line 2010
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getVisibleImsServiceInfoFromCache: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", match="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", targetUser="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "ImsResolver"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_35

    return-object v0

    :cond_35
    return-object v1
.end method

.method public blacklist imsServiceBindPermanentError(Landroid/content/ComponentName;Landroid/os/UserHandle;)V
    .registers 6

    if-nez p1, :cond_3

    return-void

    .line 1543
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "imsServiceBindPermanentError: component="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", user="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsResolver"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1544
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mEventLog:Lcom/android/internal/telephony/LocalLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "imsServiceBindPermanentError - for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    .line 1549
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mHandler:Landroid/os/Handler;

    new-instance v0, Landroid/util/Pair;

    .line 1550
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 p1, 0xa

    .line 1549
    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 1550
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public blacklist imsServiceFeatureCreated(IIILcom/android/internal/telephony/ims/ImsServiceController;)V
    .registers 5

    .line 1508
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/ims/ImsResolver;->putImsController(IIILcom/android/internal/telephony/ims/ImsServiceController;)V

    return-void
.end method

.method public blacklist imsServiceFeatureRemoved(IILcom/android/internal/telephony/ims/ImsServiceController;)V
    .registers 4

    .line 1518
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/ims/ImsResolver;->removeImsController(II)Lcom/android/internal/telephony/ims/ImsServiceController;

    return-void
.end method

.method public blacklist imsServiceFeaturesChanged(Landroid/telephony/ims/stub/ImsFeatureConfiguration;Lcom/android/internal/telephony/ims/ImsServiceController;)V
    .registers 6

    if-eqz p2, :cond_58

    if-nez p1, :cond_5

    goto :goto_58

    .line 1531
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "imsServiceFeaturesChanged: config="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/telephony/ims/stub/ImsFeatureConfiguration;->getServiceFeatures()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", ComponentName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1532
    invoke-virtual {p2}, Lcom/android/internal/telephony/ims/ImsServiceController;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1531
    const-string v1, "ImsResolver"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1533
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mEventLog:Lcom/android/internal/telephony/LocalLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "imsServiceFeaturesChanged - for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", new config "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1534
    invoke-virtual {p1}, Landroid/telephony/ims/stub/ImsFeatureConfiguration;->getServiceFeatures()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1533
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    .line 1535
    invoke-virtual {p2}, Lcom/android/internal/telephony/ims/ImsServiceController;->getComponentName()Landroid/content/ComponentName;

    move-result-object p2

    invoke-virtual {p1}, Landroid/telephony/ims/stub/ImsFeatureConfiguration;->getServiceFeatures()Ljava/util/Set;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lcom/android/internal/telephony/ims/ImsResolver;->handleFeaturesChanged(Landroid/content/ComponentName;Ljava/util/Set;)V

    :cond_58
    :goto_58
    return-void
.end method

.method public blacklist initialize()V
    .registers 3

    .line 714
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/internal/telephony/ims/ImsResolver$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/ims/ImsResolver$$ExternalSyntheticLambda2;-><init>(Lcom/android/internal/telephony/ims/ImsResolver;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public blacklist isImsServiceConfiguredForFeature(II)Z
    .registers 5

    .line 1081
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/ims/ImsResolver;->getDeviceConfiguration(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_c

    return v1

    .line 1088
    :cond_c
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/ims/ImsResolver;->getConfiguredImsServicePackageName(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/2addr p0, v1

    return p0
.end method

.method public blacklist listenForFeature(IILcom/android/ims/internal/IImsServiceFeatureCallback;)V
    .registers 5

    .line 896
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mRepo:Lcom/android/ims/ImsFeatureBinderRepository;

    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mRunnableExecutor:Landroid/os/HandlerExecutor;

    invoke-virtual {v0, p1, p2, p3, p0}, Lcom/android/ims/ImsFeatureBinderRepository;->registerForConnectionUpdates(IILcom/android/ims/internal/IImsServiceFeatureCallback;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public blacklist overrideImsServiceConfiguration(Ljava/lang/String;IIZ[I)Z
    .registers 13

    if-ltz p2, :cond_1d

    .line 923
    iget v0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mNumSlots:I

    if-lt p2, v0, :cond_7

    goto :goto_1d

    .line 928
    :cond_7
    new-instance v1, Lcom/android/internal/telephony/ims/ImsResolver$OverrideConfig;

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/telephony/ims/ImsResolver$OverrideConfig;-><init>(Ljava/lang/String;IIZ[I)V

    .line 930
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mHandler:Landroid/os/Handler;

    const/4 p1, 0x5

    invoke-static {p0, p1, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 931
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    const/4 p0, 0x1

    return p0

    .line 924
    :cond_1d
    :goto_1d
    const-string p0, "ImsResolver"

    const-string p1, "overrideImsServiceConfiguration: invalid slotId!"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public blacklist resetIms(I)V
    .registers 4

    .line 844
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ims/ImsResolver;->getImsServiceControllers(I)Ljava/util/Set;

    move-result-object v0

    new-instance v1, Lcom/android/internal/telephony/ims/ImsResolver$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/telephony/ims/ImsResolver$$ExternalSyntheticLambda9;-><init>(Lcom/android/internal/telephony/ims/ImsResolver;I)V

    invoke-interface {v0, v1}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public blacklist setActivityManagerProxy(Lcom/android/internal/telephony/ims/ImsResolver$ActivityManagerProxy;)V
    .registers 2

    .line 696
    iput-object p1, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mActivityManagerProxy:Lcom/android/internal/telephony/ims/ImsResolver$ActivityManagerProxy;

    return-void
.end method

.method public blacklist setImsDynamicQueryManagerFactory(Lcom/android/internal/telephony/ims/ImsResolver$ImsDynamicQueryManagerFactory;)V
    .registers 2

    .line 706
    iput-object p1, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mDynamicQueryManagerFactory:Lcom/android/internal/telephony/ims/ImsResolver$ImsDynamicQueryManagerFactory;

    return-void
.end method

.method public blacklist setImsServiceControllerFactory(Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceControllerFactory;)V
    .registers 2

    .line 691
    iput-object p1, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mImsServiceControllerFactory:Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceControllerFactory;

    return-void
.end method

.method public blacklist setSubscriptionManagerProxy(Lcom/android/internal/telephony/ims/ImsResolver$SubscriptionManagerProxy;)V
    .registers 2

    .line 686
    iput-object p1, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mSubscriptionManagerProxy:Lcom/android/internal/telephony/ims/ImsResolver$SubscriptionManagerProxy;

    return-void
.end method

.method public blacklist setTelephonyManagerProxy(Lcom/android/internal/telephony/ims/ImsResolver$TelephonyManagerProxy;)V
    .registers 2

    .line 681
    iput-object p1, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mTelephonyManagerProxy:Lcom/android/internal/telephony/ims/ImsResolver$TelephonyManagerProxy;

    return-void
.end method

.method public blacklist unregisterImsFeatureCallback(Lcom/android/ims/internal/IImsServiceFeatureCallback;)V
    .registers 2

    .line 905
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mRepo:Lcom/android/ims/ImsFeatureBinderRepository;

    invoke-virtual {p0, p1}, Lcom/android/ims/ImsFeatureBinderRepository;->unregisterForConnectionUpdates(Lcom/android/ims/internal/IImsServiceFeatureCallback;)V

    return-void
.end method
