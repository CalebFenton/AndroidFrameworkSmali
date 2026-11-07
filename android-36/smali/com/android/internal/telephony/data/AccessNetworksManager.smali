.class public Lcom/android/internal/telephony/data/AccessNetworksManager;
.super Landroid/os/Handler;
.source "AccessNetworksManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/data/AccessNetworksManager$QualifiedNetworks;,
        Lcom/android/internal/telephony/data/AccessNetworksManager$AccessNetworksManagerCallback;,
        Lcom/android/internal/telephony/data/AccessNetworksManager$QualifiedNetworksServiceConnection;,
        Lcom/android/internal/telephony/data/AccessNetworksManager$QualifiedNetworksServiceCallback;,
        Lcom/android/internal/telephony/data/AccessNetworksManager$AccessNetworksManagerDeathRecipient;
    }
.end annotation


# static fields
.field public static final blacklist SUPPORTED_APN_TYPES:[I


# instance fields
.field private final blacklist mAccessNetworksManagerCallbacks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/internal/telephony/data/AccessNetworksManager$AccessNetworksManagerCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mAnomalyUUID:Ljava/util/UUID;

.field private final blacklist mApnTypeToQnsChangeNetworkCounter:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/internal/telephony/SlidingWindowEventCounter;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mAvailableNetworks:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "[I>;"
        }
    .end annotation
.end field

.field private final blacklist mAvailableTransports:[I

.field private final blacklist mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

.field private blacklist mDataConfigManager:Lcom/android/internal/telephony/data/DataConfigManager;

.field private final blacklist mFeatureFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

.field private blacklist mIQualifiedNetworksService:Landroid/telephony/data/IQualifiedNetworksService;

.field private blacklist mLastBoundPackageName:Ljava/lang/String;

.field private final blacklist mLocalLog:Lcom/android/internal/telephony/LocalLog;

.field private final blacklist mLogTag:Ljava/lang/String;

.field private final blacklist mPhone:Lcom/android/internal/telephony/Phone;

.field private final blacklist mPreferredTransports:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mQualifiedNetworksChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field private blacklist mServiceConnection:Lcom/android/internal/telephony/data/AccessNetworksManager$QualifiedNetworksServiceConnection;

.field private blacklist mTargetBindingPackageName:Ljava/lang/String;


# direct methods
.method public static synthetic blacklist $r8$lambda$Fyb4U251WjWIsoLXbt5gIqn-UYI(Lcom/android/internal/telephony/data/AccessNetworksManager$QualifiedNetworks;ZLcom/android/internal/telephony/data/AccessNetworksManager$AccessNetworksManagerCallback;)V
    .registers 4

    .line 639
    new-instance v0, Lcom/android/internal/telephony/data/AccessNetworksManager$$ExternalSyntheticLambda5;

    invoke-direct {v0, p2, p0, p1}, Lcom/android/internal/telephony/data/AccessNetworksManager$$ExternalSyntheticLambda5;-><init>(Lcom/android/internal/telephony/data/AccessNetworksManager$AccessNetworksManagerCallback;Lcom/android/internal/telephony/data/AccessNetworksManager$QualifiedNetworks;Z)V

    invoke-virtual {p2, v0}, Lcom/android/internal/telephony/data/DataCallback;->invokeFromExecutor(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$Le2LyprG4iHUd6drfBxEGJePk2Q(Lcom/android/internal/telephony/data/AccessNetworksManager;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/data/AccessNetworksManager;->lambda$new$1()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$f4UFo4SJm1kNd3Aba8dnFSAsN2Y(Lcom/android/internal/telephony/data/AccessNetworksManager$AccessNetworksManagerCallback;Lcom/android/internal/telephony/data/AccessNetworksManager$QualifiedNetworks;Z)V
    .registers 3

    .line 640
    iget p1, p1, Lcom/android/internal/telephony/data/AccessNetworksManager$QualifiedNetworks;->apnType:I

    .line 641
    invoke-static {p1}, Lcom/android/internal/telephony/data/DataUtils;->apnTypeToNetworkCapability(I)I

    move-result p1

    .line 640
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/data/AccessNetworksManager$AccessNetworksManagerCallback;->onPreferredTransportChanged(IZ)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$jfYKKXXf3GT9Ms8j3hzXW2Z-cwo(Lcom/android/internal/telephony/data/AccessNetworksManager;IIII)V
    .registers 5

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/data/AccessNetworksManager;->lambda$new$0(IIII)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$uT4Mg-BsUisWGhwYigzOgr3KP58(Lcom/android/internal/telephony/data/AccessNetworksManager;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/data/AccessNetworksManager;->lambda$bindQualifiedNetworksService$2()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmAccessNetworksManagerCallbacks(Lcom/android/internal/telephony/data/AccessNetworksManager;)Ljava/util/Set;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/data/AccessNetworksManager;->mAccessNetworksManagerCallbacks:Ljava/util/Set;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmAnomalyUUID(Lcom/android/internal/telephony/data/AccessNetworksManager;)Ljava/util/UUID;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/data/AccessNetworksManager;->mAnomalyUUID:Ljava/util/UUID;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmApnTypeToQnsChangeNetworkCounter(Lcom/android/internal/telephony/data/AccessNetworksManager;)Landroid/util/SparseArray;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/data/AccessNetworksManager;->mApnTypeToQnsChangeNetworkCounter:Landroid/util/SparseArray;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmAvailableNetworks(Lcom/android/internal/telephony/data/AccessNetworksManager;)Landroid/util/SparseArray;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/data/AccessNetworksManager;->mAvailableNetworks:Landroid/util/SparseArray;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDataConfigManager(Lcom/android/internal/telephony/data/AccessNetworksManager;)Lcom/android/internal/telephony/data/DataConfigManager;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/data/AccessNetworksManager;->mDataConfigManager:Lcom/android/internal/telephony/data/DataConfigManager;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIQualifiedNetworksService(Lcom/android/internal/telephony/data/AccessNetworksManager;)Landroid/telephony/data/IQualifiedNetworksService;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/data/AccessNetworksManager;->mIQualifiedNetworksService:Landroid/telephony/data/IQualifiedNetworksService;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLastBoundPackageName(Lcom/android/internal/telephony/data/AccessNetworksManager;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/data/AccessNetworksManager;->mLastBoundPackageName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPhone(Lcom/android/internal/telephony/data/AccessNetworksManager;)Lcom/android/internal/telephony/Phone;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/data/AccessNetworksManager;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPreferredTransports(Lcom/android/internal/telephony/data/AccessNetworksManager;)Ljava/util/Map;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/data/AccessNetworksManager;->mPreferredTransports:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmQualifiedNetworksChangedRegistrants(Lcom/android/internal/telephony/data/AccessNetworksManager;)Lcom/android/internal/telephony/RegistrantList;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/data/AccessNetworksManager;->mQualifiedNetworksChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIQualifiedNetworksService(Lcom/android/internal/telephony/data/AccessNetworksManager;Landroid/telephony/data/IQualifiedNetworksService;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/android/internal/telephony/data/AccessNetworksManager;->mIQualifiedNetworksService:Landroid/telephony/data/IQualifiedNetworksService;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmLastBoundPackageName(Lcom/android/internal/telephony/data/AccessNetworksManager;Ljava/lang/String;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/android/internal/telephony/data/AccessNetworksManager;->mLastBoundPackageName:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmTargetBindingPackageName(Lcom/android/internal/telephony/data/AccessNetworksManager;Ljava/lang/String;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/android/internal/telephony/data/AccessNetworksManager;->mTargetBindingPackageName:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mgetQualifiedNetworksServicePackageName(Lcom/android/internal/telephony/data/AccessNetworksManager;)Ljava/lang/String;
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/data/AccessNetworksManager;->getQualifiedNetworksServicePackageName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mlog(Lcom/android/internal/telephony/data/AccessNetworksManager;Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/AccessNetworksManager;->log(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mloge(Lcom/android/internal/telephony/data/AccessNetworksManager;Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/AccessNetworksManager;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mloge(Lcom/android/internal/telephony/data/AccessNetworksManager;Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/data/AccessNetworksManager;->loge(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mlogl(Lcom/android/internal/telephony/data/AccessNetworksManager;Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/AccessNetworksManager;->logl(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mreportAnomaly(Lcom/android/internal/telephony/data/AccessNetworksManager;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/data/AccessNetworksManager;->reportAnomaly(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msetPreferredTransports(Lcom/android/internal/telephony/data/AccessNetworksManager;Ljava/util/List;Z)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/data/AccessNetworksManager;->setPreferredTransports(Ljava/util/List;Z)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    const/16 v0, 0x9

    .line 95
    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Lcom/android/internal/telephony/data/AccessNetworksManager;->SUPPORTED_APN_TYPES:[I

    return-void

    :array_a
    .array-data 4
        0x11
        0x2
        0x20
        0x40
        0x80
        0x4
        0x200
        0x800
        0x8
    .end array-data
.end method

.method public constructor blacklist <init>(Lcom/android/internal/telephony/Phone;Landroid/os/Looper;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)V
    .registers 6

    .line 396
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 91
    new-instance p2, Lcom/android/internal/telephony/LocalLog;

    const/16 v0, 0x40

    invoke-direct {p2, v0}, Lcom/android/internal/telephony/LocalLog;-><init>(I)V

    iput-object p2, p0, Lcom/android/internal/telephony/data/AccessNetworksManager;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    .line 92
    const-string p2, "c2d1a639-00e2-4561-9619-6acf37d90590"

    invoke-static {p2}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object p2

    iput-object p2, p0, Lcom/android/internal/telephony/data/AccessNetworksManager;->mAnomalyUUID:Ljava/util/UUID;

    .line 121
    new-instance p2, Landroid/util/SparseArray;

    invoke-direct {p2}, Landroid/util/SparseArray;-><init>()V

    iput-object p2, p0, Lcom/android/internal/telephony/data/AccessNetworksManager;->mAvailableNetworks:Landroid/util/SparseArray;

    .line 126
    new-instance p2, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {p2}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object p2, p0, Lcom/android/internal/telephony/data/AccessNetworksManager;->mQualifiedNetworksChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 132
    new-instance p2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p2, p0, Lcom/android/internal/telephony/data/AccessNetworksManager;->mPreferredTransports:Ljava/util/Map;

    .line 137
    new-instance p2, Landroid/util/ArraySet;

    invoke-direct {p2}, Landroid/util/ArraySet;-><init>()V

    iput-object p2, p0, Lcom/android/internal/telephony/data/AccessNetworksManager;->mAccessNetworksManagerCallbacks:Ljava/util/Set;

    .line 397
    iput-object p1, p0, Lcom/android/internal/telephony/data/AccessNetworksManager;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 398
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string v0, "carrier_config"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/telephony/CarrierConfigManager;

    iput-object p2, p0, Lcom/android/internal/telephony/data/AccessNetworksManager;->mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    .line 400
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ANM-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/data/AccessNetworksManager;->mLogTag:Ljava/lang/String;

    .line 401
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/data/AccessNetworksManager;->mApnTypeToQnsChangeNetworkCounter:Landroid/util/SparseArray;

    const/4 p1, 0x1

    const/4 v0, 0x2

    .line 402
    filled-new-array {p1, v0}, [I

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/data/AccessNetworksManager;->mAvailableTransports:[I

    .line 404
    iput-object p3, p0, Lcom/android/internal/telephony/data/AccessNetworksManager;->mFeatureFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

    if-eqz p2, :cond_77

    .line 409
    new-instance p1, Lcom/android/internal/telephony/DisplayInfoController$$ExternalSyntheticLambda0;

    invoke-direct {p1}, Lcom/android/internal/telephony/DisplayInfoController$$ExternalSyntheticLambda0;-><init>()V

    new-instance p3, Lcom/android/internal/telephony/data/AccessNetworksManager$$ExternalSyntheticLambda0;

    invoke-direct {p3, p0}, Lcom/android/internal/telephony/data/AccessNetworksManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/telephony/data/AccessNetworksManager;)V

    invoke-virtual {p2, p1, p3}, Landroid/telephony/CarrierConfigManager;->registerCarrierConfigChangeListener(Ljava/util/concurrent/Executor;Landroid/telephony/CarrierConfigManager$CarrierConfigChangeListener;)V

    .line 421
    :cond_77
    invoke-direct {p0}, Lcom/android/internal/telephony/data/AccessNetworksManager;->bindQualifiedNetworksService()V

    .line 425
    new-instance p1, Lcom/android/internal/telephony/data/AccessNetworksManager$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/android/internal/telephony/data/AccessNetworksManager$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/telephony/data/AccessNetworksManager;)V

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private blacklist bindQualifiedNetworksService()V
    .registers 2

    .line 471
    new-instance v0, Lcom/android/internal/telephony/data/AccessNetworksManager$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/data/AccessNetworksManager$$ExternalSyntheticLambda2;-><init>(Lcom/android/internal/telephony/data/AccessNetworksManager;)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private blacklist getQualifiedNetworksList()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/data/AccessNetworksManager$QualifiedNetworks;",
            ">;"
        }
    .end annotation

    .line 588
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 589
    :goto_6
    iget-object v2, p0, Lcom/android/internal/telephony/data/AccessNetworksManager;->mAvailableNetworks:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_27

    .line 590
    new-instance v2, Lcom/android/internal/telephony/data/AccessNetworksManager$QualifiedNetworks;

    iget-object v3, p0, Lcom/android/internal/telephony/data/AccessNetworksManager;->mAvailableNetworks:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    iget-object v4, p0, Lcom/android/internal/telephony/data/AccessNetworksManager;->mAvailableNetworks:Landroid/util/SparseArray;

    .line 591
    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    invoke-direct {v2, v3, v4}, Lcom/android/internal/telephony/data/AccessNetworksManager$QualifiedNetworks;-><init>(I[I)V

    .line 590
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_27
    return-object v0
.end method

.method private blacklist getQualifiedNetworksServiceClassName()Ljava/lang/String;
    .registers 6

    .line 562
    const-string v0, "carrier_qualified_networks_service_class_override_string"

    iget-object v1, p0, Lcom/android/internal/telephony/data/AccessNetworksManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10402b7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 567
    :try_start_13
    iget-object v2, p0, Lcom/android/internal/telephony/data/AccessNetworksManager;->mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    iget-object v3, p0, Lcom/android/internal/telephony/data/AccessNetworksManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v3

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I[Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object v2

    .line 570
    invoke-virtual {v2}, Landroid/os/PersistableBundle;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_39

    .line 572
    invoke-virtual {v2, v0}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 574
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0
    :try_end_31
    .catch Ljava/lang/RuntimeException; {:try_start_13 .. :try_end_31} :catch_34

    if-nez p0, :cond_39

    return-object v0

    .line 580
    :catch_34
    const-string v0, "Carrier config loader is not available."

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/AccessNetworksManager;->loge(Ljava/lang/String;)V

    :cond_39
    return-object v1
.end method

.method private blacklist getQualifiedNetworksServicePackageName()Ljava/lang/String;
    .registers 6

    .line 531
    const-string v0, "carrier_qualified_networks_service_package_override_string"

    iget-object v1, p0, Lcom/android/internal/telephony/data/AccessNetworksManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10402b8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 536
    :try_start_13
    iget-object v2, p0, Lcom/android/internal/telephony/data/AccessNetworksManager;->mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    iget-object v3, p0, Lcom/android/internal/telephony/data/AccessNetworksManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v3

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I[Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object v2

    .line 539
    invoke-virtual {v2}, Landroid/os/PersistableBundle;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_39

    .line 541
    invoke-virtual {v2, v0}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 543
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0
    :try_end_31
    .catch Ljava/lang/RuntimeException; {:try_start_13 .. :try_end_31} :catch_34

    if-nez p0, :cond_39

    return-object v0

    .line 549
    :catch_34
    const-string v0, "Carrier config loader is not available."

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/AccessNetworksManager;->loge(Ljava/lang/String;)V

    :cond_39
    return-object v1
.end method

.method private static blacklist getTransportFromAccessNetwork(I)I
    .registers 2

    .line 0
    const/4 v0, 0x5

    if-ne p0, v0, :cond_5

    const/4 p0, 0x2

    return p0

    :cond_5
    const/4 p0, 0x1

    return p0
.end method

.method private synthetic blacklist lambda$bindQualifiedNetworksService$2()V
    .registers 6

    .line 473
    invoke-direct {p0}, Lcom/android/internal/telephony/data/AccessNetworksManager;->getQualifiedNetworksServicePackageName()Ljava/lang/String;

    move-result-object v0

    .line 474
    invoke-direct {p0}, Lcom/android/internal/telephony/data/AccessNetworksManager;->getQualifiedNetworksServiceClassName()Ljava/lang/String;

    move-result-object v1

    .line 477
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 478
    const-string v0, "Can\'t find the binding package"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/AccessNetworksManager;->loge(Ljava/lang/String;)V

    return-void

    .line 482
    :cond_14
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "android.telephony.data.QualifiedNetworksService"

    if-eqz v2, :cond_25

    .line 483
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 484
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_33

    .line 486
    :cond_25
    new-instance v2, Landroid/content/ComponentName;

    invoke-direct {v2, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 488
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v1

    .line 491
    :goto_33
    iget-object v2, p0, Lcom/android/internal/telephony/data/AccessNetworksManager;->mTargetBindingPackageName:Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3d

    goto/16 :goto_c1

    .line 496
    :cond_3d
    iget-object v2, p0, Lcom/android/internal/telephony/data/AccessNetworksManager;->mIQualifiedNetworksService:Landroid/telephony/data/IQualifiedNetworksService;

    if-eqz v2, :cond_77

    .line 497
    invoke-interface {v2}, Landroid/telephony/data/IQualifiedNetworksService;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v2}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v2

    if-eqz v2, :cond_77

    .line 500
    :try_start_4b
    iget-object v2, p0, Lcom/android/internal/telephony/data/AccessNetworksManager;->mIQualifiedNetworksService:Landroid/telephony/data/IQualifiedNetworksService;

    iget-object v3, p0, Lcom/android/internal/telephony/data/AccessNetworksManager;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 501
    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v3

    .line 500
    invoke-interface {v2, v3}, Landroid/telephony/data/IQualifiedNetworksService;->removeNetworkAvailabilityProvider(I)V
    :try_end_56
    .catch Landroid/os/RemoteException; {:try_start_4b .. :try_end_56} :catch_57

    goto :goto_6c

    :catch_57
    move-exception v2

    .line 503
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot remove network availability updater. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/data/AccessNetworksManager;->loge(Ljava/lang/String;)V

    .line 506
    :goto_6c
    iget-object v2, p0, Lcom/android/internal/telephony/data/AccessNetworksManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/data/AccessNetworksManager;->mServiceConnection:Lcom/android/internal/telephony/data/AccessNetworksManager$QualifiedNetworksServiceConnection;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 510
    :cond_77
    :try_start_77
    new-instance v2, Lcom/android/internal/telephony/data/AccessNetworksManager$QualifiedNetworksServiceConnection;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/internal/telephony/data/AccessNetworksManager$QualifiedNetworksServiceConnection;-><init>(Lcom/android/internal/telephony/data/AccessNetworksManager;Lcom/android/internal/telephony/data/AccessNetworksManager-IA;)V

    iput-object v2, p0, Lcom/android/internal/telephony/data/AccessNetworksManager;->mServiceConnection:Lcom/android/internal/telephony/data/AccessNetworksManager$QualifiedNetworksServiceConnection;

    .line 511
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bind to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/data/AccessNetworksManager;->log(Ljava/lang/String;)V

    .line 512
    iget-object v2, p0, Lcom/android/internal/telephony/data/AccessNetworksManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/data/AccessNetworksManager;->mServiceConnection:Lcom/android/internal/telephony/data/AccessNetworksManager$QualifiedNetworksServiceConnection;

    const/4 v4, 0x1

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    if-nez v1, :cond_aa

    .line 514
    const-string v0, "Cannot bind to the qualified networks service."

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/AccessNetworksManager;->loge(Ljava/lang/String;)V

    goto :goto_c1

    :catch_a8
    move-exception v0

    goto :goto_ad

    .line 517
    :cond_aa
    iput-object v0, p0, Lcom/android/internal/telephony/data/AccessNetworksManager;->mTargetBindingPackageName:Ljava/lang/String;
    :try_end_ac
    .catch Ljava/lang/Exception; {:try_start_77 .. :try_end_ac} :catch_a8

    goto :goto_c1

    .line 519
    :goto_ad
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot bind to the qualified networks service. Exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/AccessNetworksManager;->loge(Ljava/lang/String;)V

    :goto_c1
    return-void
.end method

.method private synthetic blacklist lambda$new$0(IIII)V
    .registers 5

    .line 411
    iget-object p2, p0, Lcom/android/internal/telephony/data/AccessNetworksManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p2

    if-eq p1, p2, :cond_9

    return-void

    .line 418
    :cond_9
    invoke-direct {p0}, Lcom/android/internal/telephony/data/AccessNetworksManager;->bindQualifiedNetworksService()V

    return-void
.end method

.method private synthetic blacklist lambda$new$1()V
    .registers 4

    .line 426
    iget-object v0, p0, Lcom/android/internal/telephony/data/AccessNetworksManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getDataNetworkController()Lcom/android/internal/telephony/data/DataNetworkController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/data/DataNetworkController;->getDataRetryManager()Lcom/android/internal/telephony/data/DataRetryManager;

    move-result-object v0

    new-instance v1, Lcom/android/internal/telephony/data/AccessNetworksManager$1;

    new-instance v2, Lcom/android/internal/telephony/data/AccessNetworksManager$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/data/AccessNetworksManager$$ExternalSyntheticLambda3;-><init>(Lcom/android/internal/telephony/data/AccessNetworksManager;)V

    invoke-direct {v1, p0, v2}, Lcom/android/internal/telephony/data/AccessNetworksManager$1;-><init>(Lcom/android/internal/telephony/data/AccessNetworksManager;Ljava/util/concurrent/Executor;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/data/DataRetryManager;->registerCallback(Lcom/android/internal/telephony/data/DataRetryManager$DataRetryManagerCallback;)V

    .line 442
    iget-object v0, p0, Lcom/android/internal/telephony/data/AccessNetworksManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getDataNetworkController()Lcom/android/internal/telephony/data/DataNetworkController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/data/DataNetworkController;->getDataConfigManager()Lcom/android/internal/telephony/data/DataConfigManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/data/AccessNetworksManager;->mDataConfigManager:Lcom/android/internal/telephony/data/DataConfigManager;

    .line 443
    new-instance v1, Lcom/android/internal/telephony/data/AccessNetworksManager$2;

    new-instance v2, Lcom/android/internal/telephony/data/AccessNetworksManager$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/data/AccessNetworksManager$$ExternalSyntheticLambda3;-><init>(Lcom/android/internal/telephony/data/AccessNetworksManager;)V

    invoke-direct {v1, p0, v2}, Lcom/android/internal/telephony/data/AccessNetworksManager$2;-><init>(Lcom/android/internal/telephony/data/AccessNetworksManager;Ljava/util/concurrent/Executor;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/data/DataConfigManager;->registerCallback(Lcom/android/internal/telephony/data/DataConfigManager$DataConfigManagerCallback;)V

    .line 450
    iget-object v0, p0, Lcom/android/internal/telephony/data/AccessNetworksManager;->mPhone:Lcom/android/internal/telephony/Phone;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/Phone;->registerForEmergencyDomainSelected(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method private blacklist log(Ljava/lang/String;)V
    .registers 2

    .line 726
    iget-object p0, p0, Lcom/android/internal/telephony/data/AccessNetworksManager;->mLogTag:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist loge(Ljava/lang/String;)V
    .registers 2

    .line 730
    iget-object p0, p0, Lcom/android/internal/telephony/data/AccessNetworksManager;->mLogTag:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist loge(Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 3

    .line 734
    iget-object p0, p0, Lcom/android/internal/telephony/data/AccessNetworksManager;->mLogTag:Ljava/lang/String;

    invoke-static {p0, p1, p2}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private blacklist logl(Ljava/lang/String;)V
    .registers 2

    .line 738
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/AccessNetworksManager;->log(Ljava/lang/String;)V

    .line 739
    iget-object p0, p0, Lcom/android/internal/telephony/data/AccessNetworksManager;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist onEmergencyDataNetworkPreferredTransportChanged(I)V
    .registers 5

    .line 354
    const-string v0, "onEmergencyDataNetworkPreferredTransportChanged: "

    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    invoke-static {p1}, Landroid/telephony/AccessNetworkConstants;->transportTypeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 354
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/data/AccessNetworksManager;->logl(Ljava/lang/String;)V

    .line 356
    iget-object v1, p0, Lcom/android/internal/telephony/data/AccessNetworksManager;->mIQualifiedNetworksService:Landroid/telephony/data/IQualifiedNetworksService;

    if-eqz v1, :cond_2a

    .line 357
    iget-object v2, p0, Lcom/android/internal/telephony/data/AccessNetworksManager;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 358
    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    .line 357
    invoke-interface {v1, v2, p1}, Landroid/telephony/data/IQualifiedNetworksService;->reportEmergencyDataNetworkPreferredTransportChanged(II)V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_25} :catch_26

    return-void

    :catch_26
    move-exception p1

    .line 361
    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/data/AccessNetworksManager;->loge(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_2a
    return-void
.end method

.method private blacklist reportAnomaly(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 462
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/AccessNetworksManager;->logl(Ljava/lang/String;)V

    .line 463
    invoke-static {p2}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object p2

    iget-object p0, p0, Lcom/android/internal/telephony/data/AccessNetworksManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getCarrierId()I

    move-result p0

    invoke-static {p2, p1, p0}, Landroid/telephony/AnomalyReporter;->reportAnomaly(Ljava/util/UUID;Ljava/lang/String;I)V

    return-void
.end method

.method private blacklist setPreferredTransports(Ljava/util/List;Z)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/data/AccessNetworksManager$QualifiedNetworks;",
            ">;Z)V"
        }
    .end annotation

    .line 633
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/data/AccessNetworksManager$QualifiedNetworks;

    .line 634
    iget-object v1, v0, Lcom/android/internal/telephony/data/AccessNetworksManager$QualifiedNetworks;->qualifiedNetworks:[I

    array-length v2, v1

    if-lez v2, :cond_4

    const/4 v2, 0x0

    .line 635
    aget v1, v1, v2

    invoke-static {v1}, Lcom/android/internal/telephony/data/AccessNetworksManager;->getTransportFromAccessNetwork(I)I

    move-result v1

    .line 636
    iget v2, v0, Lcom/android/internal/telephony/data/AccessNetworksManager$QualifiedNetworks;->apnType:I

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/data/AccessNetworksManager;->getPreferredTransport(I)I

    move-result v2

    if-eq v2, v1, :cond_4

    .line 637
    iget-object v2, p0, Lcom/android/internal/telephony/data/AccessNetworksManager;->mPreferredTransports:Ljava/util/Map;

    iget v3, v0, Lcom/android/internal/telephony/data/AccessNetworksManager$QualifiedNetworks;->apnType:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 638
    iget-object v2, p0, Lcom/android/internal/telephony/data/AccessNetworksManager;->mAccessNetworksManagerCallbacks:Ljava/util/Set;

    new-instance v3, Lcom/android/internal/telephony/data/AccessNetworksManager$$ExternalSyntheticLambda4;

    invoke-direct {v3, v0, p2}, Lcom/android/internal/telephony/data/AccessNetworksManager$$ExternalSyntheticLambda4;-><init>(Lcom/android/internal/telephony/data/AccessNetworksManager$QualifiedNetworks;Z)V

    invoke-interface {v2, v3}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    .line 643
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setPreferredTransports: apnType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Lcom/android/internal/telephony/data/AccessNetworksManager$QualifiedNetworks;->apnType:I

    .line 644
    invoke-static {v0}, Landroid/telephony/data/ApnSetting;->getApnTypeString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", transport="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 645
    invoke-static {v1}, Landroid/telephony/AccessNetworkConstants;->transportTypeToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_61

    .line 646
    const-string v0, ", forceReconnect:true"

    goto :goto_63

    :cond_61
    const-string v0, ""

    :goto_63
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 643
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/AccessNetworksManager;->logl(Ljava/lang/String;)V

    goto :goto_4

    :cond_6e
    return-void
.end method


# virtual methods
.method public blacklist dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 10

    .line 750
    new-instance v0, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p2, v1}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 751
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/android/internal/telephony/data/AccessNetworksManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/data/AccessNetworksManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 752
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 753
    const-string p2, "preferred transports="

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 754
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 755
    sget-object p2, Lcom/android/internal/telephony/data/AccessNetworksManager;->SUPPORTED_APN_TYPES:[I

    array-length v1, p2

    const/4 v2, 0x0

    :goto_3e
    if-ge v2, v1, :cond_68

    aget v3, p2, v2

    .line 756
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3}, Landroid/telephony/data/ApnSetting;->getApnTypeString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 758
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/data/AccessNetworksManager;->getPreferredTransport(I)I

    move-result v3

    .line 757
    invoke-static {v3}, Landroid/telephony/AccessNetworkConstants;->transportTypeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 756
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3e

    .line 761
    :cond_68
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 762
    const-string p2, "Local logs="

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 763
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 764
    iget-object p0, p0, Lcom/android/internal/telephony/data/AccessNetworksManager;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {p0, p1, v0, p3}, Lcom/android/internal/telephony/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 765
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 766
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 767
    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    return-void
.end method

.method public blacklist getAvailableTransports()[I
    .registers 1

    .line 621
    iget-object p0, p0, Lcom/android/internal/telephony/data/AccessNetworksManager;->mAvailableTransports:[I

    return-object p0
.end method

.method public blacklist getPreferredTransport(I)I
    .registers 4

    .line 660
    iget-object v0, p0, Lcom/android/internal/telephony/data/AccessNetworksManager;->mPreferredTransports:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_e

    const/4 p0, 0x1

    return p0

    .line 661
    :cond_e
    iget-object p0, p0, Lcom/android/internal/telephony/data/AccessNetworksManager;->mPreferredTransports:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public blacklist getPreferredTransportByNetworkCapability(I)I
    .registers 2

    .line 673
    invoke-static {p1}, Lcom/android/internal/telephony/data/DataUtils;->networkCapabilityToApnType(I)I

    move-result p1

    if-nez p1, :cond_8

    const/4 p0, 0x1

    return p0

    .line 678
    :cond_8
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/AccessNetworksManager;->getPreferredTransport(I)I

    move-result p0

    return p0
.end method

.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 4

    .line 176
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1c

    .line 183
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected event "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/AccessNetworksManager;->loge(Ljava/lang/String;)V

    return-void

    .line 178
    :cond_1c
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 179
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 180
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/AccessNetworksManager;->onEmergencyDataNetworkPreferredTransportChanged(I)V

    return-void
.end method

.method public blacklist isAnyApnOnIwlan()Z
    .registers 7

    .line 687
    sget-object v0, Lcom/android/internal/telephony/data/AccessNetworksManager;->SUPPORTED_APN_TYPES:[I

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_5
    if-ge v3, v1, :cond_15

    aget v4, v0, v3

    .line 688
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/data/AccessNetworksManager;->getPreferredTransport(I)I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_12

    const/4 p0, 0x1

    return p0

    :cond_12
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_15
    return v2
.end method

.method public blacklist registerCallback(Lcom/android/internal/telephony/data/AccessNetworksManager$AccessNetworksManagerCallback;)V
    .registers 2

    .line 712
    iget-object p0, p0, Lcom/android/internal/telephony/data/AccessNetworksManager;->mAccessNetworksManagerCallbacks:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public blacklist registerForQualifiedNetworksChanged(Landroid/os/Handler;I)V
    .registers 5

    if-eqz p1, :cond_1c

    .line 605
    new-instance v0, Lcom/android/internal/telephony/Registrant;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/android/internal/telephony/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 606
    iget-object p1, p0, Lcom/android/internal/telephony/data/AccessNetworksManager;->mQualifiedNetworksChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/RegistrantList;->add(Lcom/android/internal/telephony/Registrant;)V

    .line 610
    iget-object p1, p0, Lcom/android/internal/telephony/data/AccessNetworksManager;->mAvailableNetworks:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    if-eqz p1, :cond_1c

    .line 611
    invoke-direct {p0}, Lcom/android/internal/telephony/data/AccessNetworksManager;->getQualifiedNetworksList()Ljava/util/List;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/Registrant;->notifyResult(Ljava/lang/Object;)V

    :cond_1c
    return-void
.end method

.method public blacklist unregisterCallback(Lcom/android/internal/telephony/data/AccessNetworksManager$AccessNetworksManagerCallback;)V
    .registers 2

    .line 722
    iget-object p0, p0, Lcom/android/internal/telephony/data/AccessNetworksManager;->mAccessNetworksManagerCallbacks:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public blacklist unregisterForQualifiedNetworksChanged(Landroid/os/Handler;)V
    .registers 2

    if-eqz p1, :cond_7

    .line 702
    iget-object p0, p0, Lcom/android/internal/telephony/data/AccessNetworksManager;->mQualifiedNetworksChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    :cond_7
    return-void
.end method
