.class public Lcom/android/internal/telephony/data/DataConfigManager;
.super Landroid/os/Handler;
.source "DataConfigManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/data/DataConfigManager$EventFrequency;,
        Lcom/android/internal/telephony/data/DataConfigManager$DataConfigManagerCallback;
    }
.end annotation


# static fields
.field private static final blacklist REEVALUATE_BOOTSTRAP_SIM_DATA_USAGE_MILLIS:J


# instance fields
.field private final blacklist mAutoDataSwitchNetworkTypeSignalMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[I>;"
        }
    .end annotation
.end field

.field private final blacklist mBandwidthMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/internal/telephony/data/DataNetwork$NetworkBandwidth;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mCapabilitiesExemptFromSingleDataList:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mCarrierConfig:Landroid/os/PersistableBundle;

.field private final blacklist mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

.field private final blacklist mDataConfigManagerCallbacks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/internal/telephony/data/DataConfigManager$DataConfigManagerCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mDataHandoverRetryRules:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/data/DataRetryManager$DataHandoverRetryRule;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mDataSetupRetryRules:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryRule;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mEnabledVopsNetworkTypesInNonVops:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mFeatureFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

.field private final blacklist mHandoverRuleList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/data/DataNetworkController$HandoverRule;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mImsReleaseRequestAnomalyReportThreshold:Lcom/android/internal/telephony/data/DataConfigManager$EventFrequency;

.field private blacklist mIsApnConfigAnomalyReportEnabled:Z

.field private blacklist mIsInvalidQnsParamAnomalyReportEnabled:Z

.field private final blacklist mLogTag:Ljava/lang/String;

.field private final blacklist mMeteredApnTypes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mNetworkCapabilityPriorityMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mNetworkConnectingTimeout:I

.field private blacklist mNetworkDisconnectingTimeout:I

.field private blacklist mNetworkHandoverTimeout:I

.field private blacklist mNetworkUnwantedAnomalyReportThreshold:Lcom/android/internal/telephony/data/DataConfigManager$EventFrequency;

.field private final blacklist mPhone:Lcom/android/internal/telephony/Phone;

.field private blacklist mResources:Landroid/content/res/Resources;

.field private final blacklist mRoamingMeteredApnTypes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mRoamingUnmeteredNetworkTypes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mSetupDataCallAnomalyReportThreshold:Lcom/android/internal/telephony/data/DataConfigManager$EventFrequency;

.field private blacklist mShouldKeepNetworkUpInNonVops:Z

.field private final blacklist mSingleDataNetworkTypeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mTcpBufferSizeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mUnmeteredNetworkTypes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic blacklist $r8$lambda$1MvQW_KBg42WQWa2Q_kyqKictzQ(Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;Ljava/lang/String;[I)V
    .registers 4

    .line 1591
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1592
    invoke-static {p2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1591
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$8TbYBuuexTBSzhIVw-ciuzrB1-4(Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 1628
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$B_nlWBFydWffWvw-p1HEG26gyMY(Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;Ljava/lang/String;Lcom/android/internal/telephony/data/DataNetwork$NetworkBandwidth;)V
    .registers 4

    .line 1617
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$C8LuI05QcZrg3eL7bKQPpxorTNE(Lcom/android/internal/telephony/data/DataConfigManager$DataConfigManagerCallback;)V
    .registers 2

    .line 435
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/android/internal/telephony/data/DataConfigManager$$ExternalSyntheticLambda22;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/data/DataConfigManager$$ExternalSyntheticLambda22;-><init>(Lcom/android/internal/telephony/data/DataConfigManager$DataConfigManagerCallback;)V

    .line 434
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/DataCallback;->invokeFromExecutor(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$MJu86eG1TaImz5HgaHTr3Qqd1Qo(Lcom/android/internal/telephony/data/DataConfigManager;IIII)V
    .registers 5

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/data/DataConfigManager;->lambda$new$0(IIII)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$Pcm3R0WNyhizvq9ApBLffAzVe30(Lcom/android/internal/telephony/data/DataConfigManager;ZLjava/lang/Integer;)Z
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/data/DataConfigManager;->lambda$isAnyMeteredCapability$5(ZLjava/lang/Integer;)Z

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$WEBZNw0vRYRSlZvwcbt99dSkxQI(Ljava/lang/Integer;)Z
    .registers 1

    .line 640
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-ltz p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$WP7bw11RDuFOMrH9aIKiUCBVwa8(Lcom/android/internal/telephony/data/DataConfigManager$DataConfigManagerCallback;)V
    .registers 2

    .line 429
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/android/internal/telephony/data/DataConfigManager$$ExternalSyntheticLambda20;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/data/DataConfigManager$$ExternalSyntheticLambda20;-><init>(Lcom/android/internal/telephony/data/DataConfigManager$DataConfigManagerCallback;)V

    .line 428
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/DataCallback;->invokeFromExecutor(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$kgrnxsnekECBxFwMKyXjx7IOV8Q(Lcom/android/internal/telephony/data/DataConfigManager;Landroid/provider/DeviceConfig$Properties;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataConfigManager;->lambda$new$1(Landroid/provider/DeviceConfig$Properties;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$n9QpeX1I5UXGuMKly5Scp6BIZoA(Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .registers 4

    .line 1564
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1565
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Lcom/android/internal/telephony/data/DataUtils;->networkCapabilityToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1564
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 172
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x3c

    .line 173
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/internal/telephony/data/DataConfigManager;->REEVALUATE_BOOTSTRAP_SIM_DATA_USAGE_MILLIS:J

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/telephony/Phone;Landroid/os/Looper;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)V
    .registers 4

    .line 351
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 204
    new-instance p2, Landroid/util/ArraySet;

    invoke-direct {p2}, Landroid/util/ArraySet;-><init>()V

    iput-object p2, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mDataConfigManagerCallbacks:Ljava/util/Set;

    const/4 p2, 0x0

    .line 278
    iput-object p2, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mCarrierConfig:Landroid/os/PersistableBundle;

    .line 280
    iput-object p2, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mResources:Landroid/content/res/Resources;

    .line 284
    new-instance p2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p2, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mNetworkCapabilityPriorityMap:Ljava/util/Map;

    .line 287
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mDataSetupRetryRules:Ljava/util/List;

    .line 290
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mDataHandoverRetryRules:Ljava/util/List;

    .line 293
    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    iput-object p2, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mMeteredApnTypes:Ljava/util/Set;

    .line 297
    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    iput-object p2, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mRoamingMeteredApnTypes:Ljava/util/Set;

    .line 301
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mSingleDataNetworkTypeList:Ljava/util/List;

    .line 304
    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    iput-object p2, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mCapabilitiesExemptFromSingleDataList:Ljava/util/Set;

    .line 308
    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    iput-object p2, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mUnmeteredNetworkTypes:Ljava/util/Set;

    .line 312
    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    iput-object p2, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mRoamingUnmeteredNetworkTypes:Ljava/util/Set;

    .line 316
    new-instance p2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p2, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mBandwidthMap:Ljava/util/Map;

    .line 321
    new-instance p2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p2, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mTcpBufferSizeMap:Ljava/util/Map;

    .line 325
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mHandoverRuleList:Ljava/util/List;

    const/4 p2, 0x0

    .line 328
    iput-boolean p2, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mShouldKeepNetworkUpInNonVops:Z

    .line 330
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mEnabledVopsNetworkTypesInNonVops:Ljava/util/List;

    .line 337
    new-instance p2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p2, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mAutoDataSwitchNetworkTypeSignalMap:Ljava/util/Map;

    .line 352
    iput-object p1, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 353
    iput-object p3, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mFeatureFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

    .line 354
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "DCM-"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mLogTag:Ljava/lang/String;

    .line 355
    const-string p2, "DataConfigManager created."

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/data/DataConfigManager;->log(Ljava/lang/String;)V

    .line 357
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p1

    const-class p2, Landroid/telephony/CarrierConfigManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/CarrierConfigManager;

    iput-object p1, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    if-eqz p1, :cond_b1

    .line 360
    new-instance p2, Lcom/android/internal/telephony/DisplayInfoController$$ExternalSyntheticLambda0;

    invoke-direct {p2}, Lcom/android/internal/telephony/DisplayInfoController$$ExternalSyntheticLambda0;-><init>()V

    new-instance p3, Lcom/android/internal/telephony/data/DataConfigManager$$ExternalSyntheticLambda11;

    invoke-direct {p3, p0}, Lcom/android/internal/telephony/data/DataConfigManager$$ExternalSyntheticLambda11;-><init>(Lcom/android/internal/telephony/data/DataConfigManager;)V

    invoke-virtual {p1, p2, p3}, Landroid/telephony/CarrierConfigManager;->registerCarrierConfigChangeListener(Ljava/util/concurrent/Executor;Landroid/telephony/CarrierConfigManager$CarrierConfigChangeListener;)V

    .line 369
    :cond_b1
    new-instance p1, Lcom/android/internal/telephony/DisplayInfoController$$ExternalSyntheticLambda0;

    invoke-direct {p1}, Lcom/android/internal/telephony/DisplayInfoController$$ExternalSyntheticLambda0;-><init>()V

    new-instance p2, Lcom/android/internal/telephony/data/DataConfigManager$$ExternalSyntheticLambda12;

    invoke-direct {p2, p0}, Lcom/android/internal/telephony/data/DataConfigManager$$ExternalSyntheticLambda12;-><init>(Lcom/android/internal/telephony/data/DataConfigManager;)V

    const-string p3, "telephony"

    invoke-static {p3, p1, p2}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 379
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataConfigManager;->updateCarrierConfig()V

    .line 381
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataConfigManager;->updateDeviceConfig()V

    return-void
.end method

.method private static blacklist getDataConfigNetworkType(Landroid/telephony/TelephonyDisplayInfo;)Ljava/lang/String;
    .registers 3

    .line 1259
    invoke-virtual {p0}, Landroid/telephony/TelephonyDisplayInfo;->getNetworkType()I

    move-result v0

    .line 1260
    invoke-virtual {p0}, Landroid/telephony/TelephonyDisplayInfo;->getOverrideNetworkType()I

    move-result p0

    const/4 v1, 0x1

    if-eq p0, v1, :cond_26

    const/4 v1, 0x2

    if-eq p0, v1, :cond_26

    const/4 v1, 0x3

    if-eq p0, v1, :cond_23

    const/4 v1, 0x5

    if-eq p0, v1, :cond_19

    .line 1274
    invoke-static {v0}, Lcom/android/internal/telephony/data/DataConfigManager;->networkTypeToDataConfigNetworkType(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_19
    const/16 p0, 0x14

    if-ne v0, p0, :cond_20

    .line 1263
    const-string p0, "NR_SA_MMWAVE"

    return-object p0

    .line 1265
    :cond_20
    const-string p0, "NR_NSA_MMWAVE"

    return-object p0

    .line 1268
    :cond_23
    const-string p0, "NR_NSA"

    return-object p0

    .line 1271
    :cond_26
    const-string p0, "LTE_CA"

    return-object p0
.end method

.method private synthetic blacklist lambda$isAnyMeteredCapability$5(ZLjava/lang/Integer;)Z
    .registers 3

    .line 682
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p0, p2, p1}, Lcom/android/internal/telephony/data/DataConfigManager;->isMeteredCapability(IZ)Z

    move-result p0

    return p0
.end method

.method private synthetic blacklist lambda$new$0(IIII)V
    .registers 5

    .line 362
    iget-object p2, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p2

    if-ne p1, p2, :cond_c

    const/4 p1, 0x1

    .line 363
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_c
    return-void
.end method

.method private synthetic blacklist lambda$new$1(Landroid/provider/DeviceConfig$Properties;)V
    .registers 3

    .line 372
    const-string v0, "telephony"

    .line 373
    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getNamespace()Ljava/lang/String;

    move-result-object p1

    .line 372
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_10

    const/4 p1, 0x2

    .line 374
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_10
    return-void
.end method

.method private blacklist log(Ljava/lang/String;)V
    .registers 2

    .line 1539
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mLogTag:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist loge(Ljava/lang/String;)V
    .registers 2

    .line 1547
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mLogTag:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static blacklist networkTypeToDataConfigNetworkType(I)Ljava/lang/String;
    .registers 1

    packed-switch p0, :pswitch_data_42

    .line 1425
    const-string p0, ""

    return-object p0

    .line 1424
    :pswitch_6
    const-string p0, "NR_SA"

    return-object p0

    .line 1423
    :pswitch_9
    const-string p0, "LTE_CA"

    return-object p0

    .line 1422
    :pswitch_c
    const-string p0, "IWLAN"

    return-object p0

    .line 1421
    :pswitch_f
    const-string p0, "TD_SCDMA"

    return-object p0

    .line 1420
    :pswitch_12
    const-string p0, "GSM"

    return-object p0

    .line 1419
    :pswitch_15
    const-string p0, "HSPA+"

    return-object p0

    .line 1417
    :pswitch_18
    const-string p0, "eHRPD"

    return-object p0

    .line 1416
    :pswitch_1b
    const-string p0, "LTE"

    return-object p0

    .line 1414
    :pswitch_1e
    const-string p0, "EvDo_B"

    return-object p0

    .line 1418
    :pswitch_21
    const-string p0, "iDEN"

    return-object p0

    .line 1410
    :pswitch_24
    const-string p0, "HSPA"

    return-object p0

    .line 1409
    :pswitch_27
    const-string p0, "HSUPA"

    return-object p0

    .line 1408
    :pswitch_2a
    const-string p0, "HSDPA"

    return-object p0

    .line 1415
    :pswitch_2d
    const-string p0, "1xRTT"

    return-object p0

    .line 1413
    :pswitch_30
    const-string p0, "EvDo_A"

    return-object p0

    .line 1412
    :pswitch_33
    const-string p0, "EvDo_0"

    return-object p0

    .line 1411
    :pswitch_36
    const-string p0, "CDMA"

    return-object p0

    .line 1407
    :pswitch_39
    const-string p0, "UMTS"

    return-object p0

    .line 1406
    :pswitch_3c
    const-string p0, "EDGE"

    return-object p0

    .line 1405
    :pswitch_3f
    const-string p0, "GPRS"

    return-object p0

    :pswitch_data_42
    .packed-switch 0x1
        :pswitch_3f
        :pswitch_3c
        :pswitch_39
        :pswitch_36
        :pswitch_33
        :pswitch_30
        :pswitch_2d
        :pswitch_2a
        :pswitch_27
        :pswitch_24
        :pswitch_21
        :pswitch_1e
        :pswitch_1b
        :pswitch_18
        :pswitch_15
        :pswitch_12
        :pswitch_f
        :pswitch_c
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method

.method private blacklist updateAutoDataSwitchConfig()V
    .registers 25

    move-object/from16 v1, p0

    .line 1050
    monitor-enter p0

    .line 1051
    :try_start_3
    iget-object v0, v1, Lcom/android/internal/telephony/data/DataConfigManager;->mAutoDataSwitchNetworkTypeSignalMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1052
    iget-object v0, v1, Lcom/android/internal/telephony/data/DataConfigManager;->mCarrierConfig:Landroid/os/PersistableBundle;

    const-string v2, "auto_data_switch_rat_signal_score_string_bundle"

    invoke-virtual {v0, v2}, Landroid/os/PersistableBundle;->getPersistableBundle(Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object v0

    .line 1054
    const-string v2, "GPRS"

    const-string v3, "EDGE"

    const-string v4, "UMTS"

    const-string v5, "CDMA"

    const-string v6, "1xRTT"

    const-string v7, "EvDo_0"

    const-string v8, "EvDo_A"

    const-string v9, "HSDPA"

    const-string v10, "HSUPA"

    const-string v11, "HSPA"

    const-string v12, "EvDo_B"

    const-string v13, "eHRPD"

    const-string v14, "iDEN"

    const-string v15, "LTE"

    const-string v16, "LTE_CA"

    const-string v17, "HSPA+"

    const-string v18, "GSM"

    const-string v19, "TD_SCDMA"

    const-string v20, "NR_NSA"

    const-string v21, "NR_NSA_MMWAVE"

    const-string v22, "NR_SA"

    const-string v23, "NR_SA_MMWAVE"

    filled-new-array/range {v2 .. v23}, [Ljava/lang/String;

    move-result-object v2

    if-eqz v0, :cond_97

    const/4 v3, 0x0

    move v4, v3

    :goto_44
    const/16 v5, 0x16

    if-ge v4, v5, :cond_97

    .line 1079
    aget-object v5, v2, v4

    .line 1080
    invoke-virtual {v0, v5}, Landroid/os/PersistableBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v6

    if-eqz v6, :cond_80

    .line 1081
    array-length v7, v6

    const/4 v8, 0x5

    if-ne v7, v8, :cond_80

    move v7, v3

    .line 1083
    :goto_55
    array-length v8, v6

    if-ge v7, v8, :cond_94

    .line 1084
    aget v8, v6, v7

    if-gez v8, :cond_73

    .line 1085
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Auto switch score must not < 0 for network type "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Lcom/android/internal/telephony/data/DataConfigManager;->loge(Ljava/lang/String;)V

    goto :goto_94

    :catchall_71
    move-exception v0

    goto :goto_99

    .line 1089
    :cond_73
    array-length v8, v6

    add-int/lit8 v8, v8, -0x1

    if-ne v7, v8, :cond_7d

    .line 1090
    iget-object v8, v1, Lcom/android/internal/telephony/data/DataConfigManager;->mAutoDataSwitchNetworkTypeSignalMap:Ljava/util/Map;

    invoke-interface {v8, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7d
    add-int/lit8 v7, v7, 0x1

    goto :goto_55

    .line 1094
    :cond_80
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Auto switch score table should specify 5 signal strength for network type "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Lcom/android/internal/telephony/data/DataConfigManager;->loge(Ljava/lang/String;)V

    :cond_94
    :goto_94
    add-int/lit8 v4, v4, 0x1

    goto :goto_44

    .line 1100
    :cond_97
    monitor-exit p0

    return-void

    :goto_99
    monitor-exit p0
    :try_end_9a
    .catchall {:try_start_3 .. :try_end_9a} :catchall_71

    throw v0
.end method

.method private blacklist updateBandwidths()V
    .registers 11

    .line 825
    monitor-enter p0

    .line 826
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mBandwidthMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 827
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mCarrierConfig:Landroid/os/PersistableBundle;

    const-string v1, "bandwidth_string_array"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 829
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mCarrierConfig:Landroid/os/PersistableBundle;

    const-string v2, "bandwidth_nr_nsa_use_lte_value_for_uplink_bool"

    invoke-virtual {v1, v2}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v0, :cond_bb

    .line 832
    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_1b
    if-ge v4, v2, :cond_bb

    aget-object v5, v0, v4

    .line 835
    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 836
    array-length v7, v6

    const/4 v8, 0x2

    if-eq v7, v8, :cond_42

    .line 837
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid bandwidth: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/data/DataConfigManager;->loge(Ljava/lang/String;)V

    goto/16 :goto_b7

    :catchall_3f
    move-exception v0

    goto/16 :goto_bd

    :cond_42
    const/4 v5, 0x1

    .line 842
    aget-object v7, v6, v5

    const-string v9, ","

    invoke-virtual {v7, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 843
    array-length v9, v7

    if-eq v9, v8, :cond_67

    .line 844
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid bandwidth values: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/data/DataConfigManager;->loge(Ljava/lang/String;)V
    :try_end_66
    .catchall {:try_start_1 .. :try_end_66} :catchall_3f

    goto :goto_b7

    .line 849
    :cond_67
    :try_start_67
    aget-object v8, v7, v3

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 850
    aget-object v5, v7, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5
    :try_end_73
    .catch Ljava/lang/NumberFormatException; {:try_start_67 .. :try_end_73} :catch_98
    .catchall {:try_start_67 .. :try_end_73} :catchall_3f

    if-eqz v1, :cond_8b

    .line 856
    :try_start_75
    aget-object v7, v6, v3

    const-string v9, "NR"

    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8b

    .line 859
    iget-object v5, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mBandwidthMap:Ljava/util/Map;

    const-string v7, "LTE"

    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/data/DataNetwork$NetworkBandwidth;

    iget v5, v5, Lcom/android/internal/telephony/data/DataNetwork$NetworkBandwidth;->uplinkBandwidthKbps:I

    .line 862
    :cond_8b
    iget-object v7, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mBandwidthMap:Ljava/util/Map;

    aget-object v6, v6, v3

    new-instance v9, Lcom/android/internal/telephony/data/DataNetwork$NetworkBandwidth;

    invoke-direct {v9, v8, v5}, Lcom/android/internal/telephony/data/DataNetwork$NetworkBandwidth;-><init>(II)V

    invoke-interface {v7, v6, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b7

    :catch_98
    move-exception v5

    .line 852
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception parsing bandwidth values for network type "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, v6, v3

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ": "

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/data/DataConfigManager;->loge(Ljava/lang/String;)V

    :goto_b7
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1b

    .line 866
    :cond_bb
    monitor-exit p0

    return-void

    :goto_bd
    monitor-exit p0
    :try_end_be
    .catchall {:try_start_75 .. :try_end_be} :catchall_3f

    throw v0
.end method

.method private blacklist updateCarrierConfig()V
    .registers 3

    .line 478
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    if-eqz v0, :cond_10

    .line 479
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mCarrierConfig:Landroid/os/PersistableBundle;

    .line 481
    :cond_10
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mCarrierConfig:Landroid/os/PersistableBundle;

    if-nez v0, :cond_1a

    .line 482
    invoke-static {}, Landroid/telephony/CarrierConfigManager;->getDefaultConfig()Landroid/os/PersistableBundle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mCarrierConfig:Landroid/os/PersistableBundle;

    .line 484
    :cond_1a
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 485
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v1

    .line 484
    invoke-static {v0, v1}, Landroid/telephony/SubscriptionManager;->getResourcesForSubId(Landroid/content/Context;I)Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mResources:Landroid/content/res/Resources;

    .line 487
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataConfigManager;->updateNetworkCapabilityPriority()V

    .line 488
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataConfigManager;->updateDataRetryRules()V

    .line 489
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataConfigManager;->updateMeteredApnTypes()V

    .line 490
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataConfigManager;->updateSingleDataNetworkTypeAndCapabilityExemption()V

    .line 491
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataConfigManager;->updateVopsConfig()V

    .line 492
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataConfigManager;->updateUnmeteredNetworkTypes()V

    .line 493
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataConfigManager;->updateBandwidths()V

    .line 494
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataConfigManager;->updateTcpBuffers()V

    .line 495
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataConfigManager;->updateHandoverRules()V

    .line 496
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataConfigManager;->updateAutoDataSwitchConfig()V

    .line 498
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Carrier config updated. Config is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataConfigManager;->isConfigCarrierSpecific()Z

    move-result v1

    if-eqz v1, :cond_5d

    const-string v1, ""

    goto :goto_5f

    :cond_5d
    const-string v1, "not "

    :goto_5f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "carrier specific."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataConfigManager;->log(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist updateDataRetryRules()V
    .registers 8

    .line 550
    monitor-enter p0

    .line 551
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mDataSetupRetryRules:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 552
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mCarrierConfig:Landroid/os/PersistableBundle;

    const-string v1, "telephony_data_setup_retry_rules_string_array"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_40

    .line 555
    array-length v2, v0

    move v3, v1

    :goto_13
    if-ge v3, v2, :cond_40

    aget-object v4, v0, v3
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_22

    .line 557
    :try_start_17
    iget-object v5, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mDataSetupRetryRules:Ljava/util/List;

    new-instance v6, Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryRule;

    invoke-direct {v6, v4}, Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryRule;-><init>(Ljava/lang/String;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_21
    .catch Ljava/lang/IllegalArgumentException; {:try_start_17 .. :try_end_21} :catch_24
    .catchall {:try_start_17 .. :try_end_21} :catchall_22

    goto :goto_3d

    :catchall_22
    move-exception v0

    goto :goto_7d

    :catch_24
    move-exception v4

    .line 559
    :try_start_25
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateDataRetryRules: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/data/DataConfigManager;->loge(Ljava/lang/String;)V

    :goto_3d
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    .line 564
    :cond_40
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mDataHandoverRetryRules:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 565
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mCarrierConfig:Landroid/os/PersistableBundle;

    const-string v2, "telephony_data_handover_retry_rules_string_array"

    invoke-virtual {v0, v2}, Landroid/os/PersistableBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7b

    .line 568
    array-length v2, v0

    :goto_50
    if-ge v1, v2, :cond_7b

    aget-object v3, v0, v1
    :try_end_54
    .catchall {:try_start_25 .. :try_end_54} :catchall_22

    .line 570
    :try_start_54
    iget-object v4, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mDataHandoverRetryRules:Ljava/util/List;

    new-instance v5, Lcom/android/internal/telephony/data/DataRetryManager$DataHandoverRetryRule;

    invoke-direct {v5, v3}, Lcom/android/internal/telephony/data/DataRetryManager$DataHandoverRetryRule;-><init>(Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_5e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_54 .. :try_end_5e} :catch_5f
    .catchall {:try_start_54 .. :try_end_5e} :catchall_22

    goto :goto_78

    :catch_5f
    move-exception v3

    .line 572
    :try_start_60
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateDataRetryRules: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/data/DataConfigManager;->loge(Ljava/lang/String;)V

    :goto_78
    add-int/lit8 v1, v1, 0x1

    goto :goto_50

    .line 576
    :cond_7b
    monitor-exit p0

    return-void

    :goto_7d
    monitor-exit p0
    :try_end_7e
    .catchall {:try_start_60 .. :try_end_7e} :catchall_22

    throw v0
.end method

.method private blacklist updateDeviceConfig()V
    .registers 8

    const/4 v0, 0x0

    .line 444
    new-array v1, v0, [Ljava/lang/String;

    .line 445
    const-string v2, "telephony"

    invoke-static {v2, v1}, Landroid/provider/DeviceConfig;->getProperties(Ljava/lang/String;[Ljava/lang/String;)Landroid/provider/DeviceConfig$Properties;

    move-result-object v1

    .line 448
    const-string v2, "anomaly_ims_release_request"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/provider/DeviceConfig$Properties;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x2

    const-wide/16 v5, 0x0

    .line 447
    invoke-virtual {p0, v2, v5, v6, v4}, Lcom/android/internal/telephony/data/DataConfigManager;->parseSlidingWindowCounterThreshold(Ljava/lang/String;JI)Lcom/android/internal/telephony/data/DataConfigManager$EventFrequency;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mImsReleaseRequestAnomalyReportThreshold:Lcom/android/internal/telephony/data/DataConfigManager$EventFrequency;

    .line 449
    const-string v2, "anomaly_network_unwanted"

    .line 450
    invoke-virtual {v1, v2, v3}, Landroid/provider/DeviceConfig$Properties;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0xc

    .line 449
    invoke-virtual {p0, v2, v5, v6, v4}, Lcom/android/internal/telephony/data/DataConfigManager;->parseSlidingWindowCounterThreshold(Ljava/lang/String;JI)Lcom/android/internal/telephony/data/DataConfigManager$EventFrequency;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mNetworkUnwantedAnomalyReportThreshold:Lcom/android/internal/telephony/data/DataConfigManager$EventFrequency;

    .line 451
    const-string v2, "anomaly_setup_data_call_failure"

    .line 452
    invoke-virtual {v1, v2, v3}, Landroid/provider/DeviceConfig$Properties;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 451
    invoke-virtual {p0, v2, v5, v6, v4}, Lcom/android/internal/telephony/data/DataConfigManager;->parseSlidingWindowCounterThreshold(Ljava/lang/String;JI)Lcom/android/internal/telephony/data/DataConfigManager$EventFrequency;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mSetupDataCallAnomalyReportThreshold:Lcom/android/internal/telephony/data/DataConfigManager$EventFrequency;

    .line 453
    const-string v2, "anomaly_qns_param"

    invoke-virtual {v1, v2, v0}, Landroid/provider/DeviceConfig$Properties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mIsInvalidQnsParamAnomalyReportEnabled:Z

    .line 455
    const-string v2, "anomaly_network_connecting_timeout"

    const v3, 0x493e0

    invoke-virtual {v1, v2, v3}, Landroid/provider/DeviceConfig$Properties;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mNetworkConnectingTimeout:I

    .line 457
    const-string v2, "anomaly_network_disconnecting_timeout"

    invoke-virtual {v1, v2, v3}, Landroid/provider/DeviceConfig$Properties;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mNetworkDisconnectingTimeout:I

    .line 460
    const-string v2, "anomaly_network_handover_timeout"

    invoke-virtual {v1, v2, v3}, Landroid/provider/DeviceConfig$Properties;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mNetworkHandoverTimeout:I

    .line 462
    const-string v2, "anomaly_apn_config_enabled"

    invoke-virtual {v1, v2, v0}, Landroid/provider/DeviceConfig$Properties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mIsApnConfigAnomalyReportEnabled:Z

    return-void
.end method

.method private blacklist updateHandoverRules()V
    .registers 8

    .line 1294
    monitor-enter p0

    .line 1295
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mHandoverRuleList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1296
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mCarrierConfig:Landroid/os/PersistableBundle;

    const-string v1, "iwlan_handover_policy_string_array"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_41

    .line 1299
    array-length v1, v0

    const/4 v2, 0x0

    :goto_12
    if-ge v2, v1, :cond_41

    aget-object v3, v0, v2
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_23

    .line 1301
    :try_start_16
    iget-object v4, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mHandoverRuleList:Ljava/util/List;

    new-instance v5, Lcom/android/internal/telephony/data/DataNetworkController$HandoverRule;

    iget-object v6, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mFeatureFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

    invoke-direct {v5, v3, v6}, Lcom/android/internal/telephony/data/DataNetworkController$HandoverRule;-><init>(Ljava/lang/String;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_22
    .catch Ljava/lang/IllegalArgumentException; {:try_start_16 .. :try_end_22} :catch_25
    .catchall {:try_start_16 .. :try_end_22} :catchall_23

    goto :goto_3e

    :catchall_23
    move-exception v0

    goto :goto_43

    :catch_25
    move-exception v3

    .line 1303
    :try_start_26
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateHandoverRules: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/data/DataConfigManager;->loge(Ljava/lang/String;)V

    :goto_3e
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 1307
    :cond_41
    monitor-exit p0

    return-void

    :goto_43
    monitor-exit p0
    :try_end_44
    .catchall {:try_start_26 .. :try_end_44} :catchall_23

    throw v0
.end method

.method private blacklist updateMeteredApnTypes()V
    .registers 4

    .line 607
    monitor-enter p0

    .line 608
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mMeteredApnTypes:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 609
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mCarrierConfig:Landroid/os/PersistableBundle;

    const-string v1, "carrier_metered_apn_types_strings"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2d

    .line 612
    invoke-static {v0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/internal/telephony/data/DataConfigManager$$ExternalSyntheticLambda18;

    invoke-direct {v1}, Lcom/android/internal/telephony/data/DataConfigManager$$ExternalSyntheticLambda18;-><init>()V

    .line 613
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mMeteredApnTypes:Ljava/util/Set;

    .line 614
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/android/internal/telephony/data/DataConfigManager$$ExternalSyntheticLambda19;

    invoke-direct {v2, v1}, Lcom/android/internal/telephony/data/DataConfigManager$$ExternalSyntheticLambda19;-><init>(Ljava/util/Set;)V

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    goto :goto_2d

    :catchall_2b
    move-exception v0

    goto :goto_58

    .line 616
    :cond_2d
    :goto_2d
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mRoamingMeteredApnTypes:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 617
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mCarrierConfig:Landroid/os/PersistableBundle;

    const-string v1, "carrier_metered_roaming_apn_types_strings"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_56

    .line 620
    invoke-static {v0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/internal/telephony/data/DataConfigManager$$ExternalSyntheticLambda18;

    invoke-direct {v1}, Lcom/android/internal/telephony/data/DataConfigManager$$ExternalSyntheticLambda18;-><init>()V

    .line 621
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mRoamingMeteredApnTypes:Ljava/util/Set;

    .line 622
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/android/internal/telephony/data/DataConfigManager$$ExternalSyntheticLambda19;

    invoke-direct {v2, v1}, Lcom/android/internal/telephony/data/DataConfigManager$$ExternalSyntheticLambda19;-><init>(Ljava/util/Set;)V

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 624
    :cond_56
    monitor-exit p0

    return-void

    :goto_58
    monitor-exit p0
    :try_end_59
    .catchall {:try_start_1 .. :try_end_59} :catchall_2b

    throw v0
.end method

.method private blacklist updateNetworkCapabilityPriority()V
    .registers 9

    .line 506
    monitor-enter p0

    .line 507
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mNetworkCapabilityPriorityMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 508
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mCarrierConfig:Landroid/os/PersistableBundle;

    const-string v1, "telephony_network_capability_priorities_string_array"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_80

    .line 511
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_13
    if-ge v3, v1, :cond_80

    aget-object v4, v0, v3

    .line 513
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    .line 514
    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 515
    array-length v6, v5

    const/4 v7, 0x2

    if-eq v6, v7, :cond_47

    .line 516
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid config \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\""

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/data/DataConfigManager;->loge(Ljava/lang/String;)V

    goto :goto_7d

    :catchall_45
    move-exception v0

    goto :goto_82

    .line 520
    :cond_47
    aget-object v6, v5, v2

    invoke-static {v6}, Lcom/android/internal/telephony/data/DataUtils;->getNetworkCapabilityFromString(Ljava/lang/String;)I

    move-result v6

    if-gez v6, :cond_69

    .line 522
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid config \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\""

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/data/DataConfigManager;->loge(Ljava/lang/String;)V

    goto :goto_7d

    :cond_69
    const/4 v4, 0x1

    .line 526
    aget-object v4, v5, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 527
    iget-object v5, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mNetworkCapabilityPriorityMap:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_7d
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    .line 530
    :cond_80
    monitor-exit p0

    return-void

    :goto_82
    monitor-exit p0
    :try_end_83
    .catchall {:try_start_1 .. :try_end_83} :catchall_45

    throw v0
.end method

.method private blacklist updateSingleDataNetworkTypeAndCapabilityExemption()V
    .registers 4

    .line 697
    monitor-enter p0

    .line 698
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mSingleDataNetworkTypeList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 699
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mCapabilitiesExemptFromSingleDataList:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 700
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mCarrierConfig:Landroid/os/PersistableBundle;

    const-string v1, "only_single_dc_allowed_int_array"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    if-eqz v0, :cond_29

    .line 703
    invoke-static {v0}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mSingleDataNetworkTypeList:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/android/internal/telephony/data/DataConfigManager$$ExternalSyntheticLambda21;

    invoke-direct {v2, v1}, Lcom/android/internal/telephony/data/DataConfigManager$$ExternalSyntheticLambda21;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/stream/IntStream;->forEach(Ljava/util/function/IntConsumer;)V

    goto :goto_29

    :catchall_27
    move-exception v0

    goto :goto_46

    .line 706
    :cond_29
    :goto_29
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mCarrierConfig:Landroid/os/PersistableBundle;

    const-string v1, "capabilities_exempt_from_single_dc_check_int_array"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    if-eqz v0, :cond_44

    .line 709
    invoke-static {v0}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mCapabilitiesExemptFromSingleDataList:Ljava/util/Set;

    .line 710
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/android/internal/telephony/NetworkTypeController$$ExternalSyntheticLambda1;

    invoke-direct {v2, v1}, Lcom/android/internal/telephony/NetworkTypeController$$ExternalSyntheticLambda1;-><init>(Ljava/util/Set;)V

    invoke-interface {v0, v2}, Ljava/util/stream/IntStream;->forEach(Ljava/util/function/IntConsumer;)V

    .line 712
    :cond_44
    monitor-exit p0

    return-void

    :goto_46
    monitor-exit p0
    :try_end_47
    .catchall {:try_start_1 .. :try_end_47} :catchall_27

    throw v0
.end method

.method private blacklist updateTcpBuffers()V
    .registers 9

    .line 955
    monitor-enter p0

    .line 956
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mTcpBufferSizeMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 957
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mResources:Landroid/content/res/Resources;

    const v1, 0x107009b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_73

    .line 960
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_14
    if-ge v3, v1, :cond_73

    aget-object v4, v0, v3

    .line 963
    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 964
    array-length v6, v5

    const/4 v7, 0x2

    if-eq v6, v7, :cond_39

    .line 965
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid TCP buffer sizes entry: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/data/DataConfigManager;->loge(Ljava/lang/String;)V

    goto :goto_70

    :catchall_37
    move-exception v0

    goto :goto_75

    :cond_39
    const/4 v4, 0x1

    .line 968
    aget-object v6, v5, v4

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    array-length v6, v6

    const/4 v7, 0x6

    if-eq v6, v7, :cond_67

    .line 969
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid TCP buffer sizes for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v7, v5, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v5, v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/data/DataConfigManager;->loge(Ljava/lang/String;)V

    goto :goto_70

    .line 972
    :cond_67
    iget-object v6, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mTcpBufferSizeMap:Ljava/util/Map;

    aget-object v7, v5, v2

    aget-object v4, v5, v4

    invoke-interface {v6, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_70
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    .line 975
    :cond_73
    monitor-exit p0

    return-void

    :goto_75
    monitor-exit p0
    :try_end_76
    .catchall {:try_start_1 .. :try_end_76} :catchall_37

    throw v0
.end method

.method private blacklist updateUnmeteredNetworkTypes()V
    .registers 3

    .line 790
    monitor-enter p0

    .line 791
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mUnmeteredNetworkTypes:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 792
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mCarrierConfig:Landroid/os/PersistableBundle;

    const-string v1, "unmetered_network_types_string_array"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 795
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mUnmeteredNetworkTypes:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_1c

    :catchall_1a
    move-exception v0

    goto :goto_36

    .line 797
    :cond_1c
    :goto_1c
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mRoamingUnmeteredNetworkTypes:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 798
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mCarrierConfig:Landroid/os/PersistableBundle;

    const-string v1, "roaming_unmetered_network_types_string_array"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_34

    .line 801
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mRoamingUnmeteredNetworkTypes:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 803
    :cond_34
    monitor-exit p0

    return-void

    :goto_36
    monitor-exit p0
    :try_end_37
    .catchall {:try_start_1 .. :try_end_37} :catchall_1a

    throw v0
.end method

.method private declared-synchronized blacklist updateVopsConfig()V
    .registers 4

    monitor-enter p0

    .line 719
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mCarrierConfig:Landroid/os/PersistableBundle;

    const-string v1, "ims.keep_pdn_up_in_no_vops_bool"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mShouldKeepNetworkUpInNonVops:Z

    .line 721
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mCarrierConfig:Landroid/os/PersistableBundle;

    const-string v1, "ims.ims_pdn_enabled_in_no_vops_support_int_array"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    if-eqz v0, :cond_29

    .line 724
    invoke-static {v0}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mEnabledVopsNetworkTypesInNonVops:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/android/internal/telephony/data/DataConfigManager$$ExternalSyntheticLambda21;

    invoke-direct {v2, v1}, Lcom/android/internal/telephony/data/DataConfigManager$$ExternalSyntheticLambda21;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/stream/IntStream;->forEach(Ljava/util/function/IntConsumer;)V
    :try_end_26
    .catchall {:try_start_1 .. :try_end_26} :catchall_27

    goto :goto_29

    :catchall_27
    move-exception v0

    goto :goto_2b

    .line 726
    :cond_29
    :goto_29
    monitor-exit p0

    return-void

    :goto_2b
    :try_start_2b
    monitor-exit p0
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_27

    throw v0
.end method


# virtual methods
.method public blacklist allowBringUpNetworkInNonVops(I)Z
    .registers 4

    const/4 v0, 0x1

    if-ne p1, v0, :cond_5

    const/4 v0, 0x0

    goto :goto_a

    :cond_5
    const/4 v1, 0x5

    if-ne p1, v1, :cond_9

    goto :goto_a

    :cond_9
    const/4 v0, -0x1

    .line 768
    :goto_a
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mEnabledVopsNetworkTypesInNonVops:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public blacklist allowClearInitialAttachDataProfile()Z
    .registers 2

    .line 1506
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mResources:Landroid/content/res/Resources;

    const v0, 0x111000f

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method public blacklist dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 7

    .line 1558
    new-instance p1, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    const-string p3, "  "

    invoke-direct {p1, p2, p3}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 1559
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-class p3, Lcom/android/internal/telephony/data/DataConfigManager;

    invoke-virtual {p3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "-"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p3}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ":"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1560
    invoke-virtual {p1}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 1561
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "isConfigCarrierSpecific="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataConfigManager;->isConfigCarrierSpecific()Z

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1562
    const-string p2, "Network capability priority:"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1563
    invoke-virtual {p1}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 1564
    iget-object p2, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mNetworkCapabilityPriorityMap:Ljava/util/Map;

    new-instance p3, Lcom/android/internal/telephony/data/DataConfigManager$$ExternalSyntheticLambda0;

    invoke-direct {p3, p1}, Lcom/android/internal/telephony/data/DataConfigManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;)V

    invoke-interface {p2, p3}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 1566
    invoke-virtual {p1}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 1567
    invoke-virtual {p1}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->println()V

    .line 1568
    const-string p2, "Data setup retry rules:"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1569
    invoke-virtual {p1}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 1570
    iget-object p2, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mDataSetupRetryRules:Ljava/util/List;

    new-instance p3, Lcom/android/internal/telephony/data/DataConfigManager$$ExternalSyntheticLambda2;

    invoke-direct {p3, p1}, Lcom/android/internal/telephony/data/DataConfigManager$$ExternalSyntheticLambda2;-><init>(Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;)V

    invoke-interface {p2, p3}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 1571
    invoke-virtual {p1}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 1572
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "isIwlanHandoverPolicyEnabled="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataConfigManager;->isIwlanHandoverPolicyEnabled()Z

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1573
    const-string p2, "Data handover retry rules:"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1574
    invoke-virtual {p1}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 1575
    iget-object p2, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mDataHandoverRetryRules:Ljava/util/List;

    new-instance p3, Lcom/android/internal/telephony/data/DataConfigManager$$ExternalSyntheticLambda3;

    invoke-direct {p3, p1}, Lcom/android/internal/telephony/data/DataConfigManager$$ExternalSyntheticLambda3;-><init>(Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;)V

    invoke-interface {p2, p3}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 1576
    invoke-virtual {p1}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 1577
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "shouldHonorRetryTimerForEmergencyNetworkRequest="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1578
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataConfigManager;->shouldHonorRetryTimerForEmergencyNetworkRequest()Z

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1577
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1579
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "mSetupDataCallAnomalyReport="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mSetupDataCallAnomalyReportThreshold:Lcom/android/internal/telephony/data/DataConfigManager$EventFrequency;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1580
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "mNetworkUnwantedAnomalyReport="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mNetworkUnwantedAnomalyReportThreshold:Lcom/android/internal/telephony/data/DataConfigManager$EventFrequency;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1581
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "mImsReleaseRequestAnomalyReport="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mImsReleaseRequestAnomalyReportThreshold:Lcom/android/internal/telephony/data/DataConfigManager$EventFrequency;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1582
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "mIsInvalidQnsParamAnomalyReportEnabled="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mIsInvalidQnsParamAnomalyReportEnabled:Z

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1584
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "mNetworkConnectingTimeout="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mNetworkConnectingTimeout:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1585
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "mNetworkDisconnectingTimeout="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mNetworkDisconnectingTimeout:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1586
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "mNetworkHandoverTimeout="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mNetworkHandoverTimeout:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1587
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "mIsApnConfigAnomalyReportEnabled="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mIsApnConfigAnomalyReportEnabled:Z

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1588
    const-string p2, "Auto data switch:"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1589
    invoke-virtual {p1}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 1590
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "getAutoDataSwitchScoreTolerance="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataConfigManager;->getAutoDataSwitchScoreTolerance()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1591
    iget-object p2, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mAutoDataSwitchNetworkTypeSignalMap:Ljava/util/Map;

    new-instance p3, Lcom/android/internal/telephony/data/DataConfigManager$$ExternalSyntheticLambda4;

    invoke-direct {p3, p1}, Lcom/android/internal/telephony/data/DataConfigManager$$ExternalSyntheticLambda4;-><init>(Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;)V

    invoke-interface {p2, p3}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 1593
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "getAutoDataSwitchAvailabilityStabilityTimeThreshold="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1594
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataConfigManager;->getAutoDataSwitchAvailabilityStabilityTimeThreshold()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1593
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1595
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "getAutoDataSwitchPerformanceStabilityTimeThreshold="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1596
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataConfigManager;->getAutoDataSwitchPerformanceStabilityTimeThreshold()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1595
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1597
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "getAutoDataSwitchValidationMaxRetry="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataConfigManager;->getAutoDataSwitchValidationMaxRetry()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1598
    invoke-virtual {p1}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 1599
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Metered APN types="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mMeteredApnTypes:Ljava/util/Set;

    invoke-interface {p3}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object p3

    new-instance v0, Lcom/android/internal/telephony/data/DataConfigManager$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Lcom/android/internal/telephony/data/DataConfigManager$$ExternalSyntheticLambda5;-><init>()V

    .line 1600
    invoke-interface {p3, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p3

    const-string v0, ","

    invoke-static {v0}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {p3, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1599
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1601
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Roaming metered APN types="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mRoamingMeteredApnTypes:Ljava/util/Set;

    invoke-interface {p3}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object p3

    new-instance v1, Lcom/android/internal/telephony/data/DataConfigManager$$ExternalSyntheticLambda5;

    invoke-direct {v1}, Lcom/android/internal/telephony/data/DataConfigManager$$ExternalSyntheticLambda5;-><init>()V

    .line 1602
    invoke-interface {p3, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p3

    invoke-static {v0}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {p3, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1601
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1603
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Single data network types="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mSingleDataNetworkTypeList:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p3

    new-instance v1, Lcom/android/internal/telephony/data/DataConfigManager$$ExternalSyntheticLambda6;

    invoke-direct {v1}, Lcom/android/internal/telephony/data/DataConfigManager$$ExternalSyntheticLambda6;-><init>()V

    .line 1604
    invoke-interface {p3, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p3

    invoke-static {v0}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {p3, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1603
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1605
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Capabilities exempt from single PDN="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mCapabilitiesExemptFromSingleDataList:Ljava/util/Set;

    .line 1606
    invoke-interface {p3}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object p3

    new-instance v1, Lcom/android/internal/telephony/data/DataConfigManager$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/android/internal/telephony/data/DataConfigManager$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {p3, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p3

    .line 1607
    invoke-static {v0}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {p3, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1605
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1608
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "mShouldKeepNetworkUpInNonVops="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mShouldKeepNetworkUpInNonVops:Z

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1609
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "mEnabledVopsNetworkTypesInNonVops="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mEnabledVopsNetworkTypesInNonVops:Ljava/util/List;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1610
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "isPingTestBeforeAutoDataSwitchRequired="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1611
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataConfigManager;->isPingTestBeforeAutoDataSwitchRequired()Z

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1610
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1612
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unmetered network types="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mUnmeteredNetworkTypes:Ljava/util/Set;

    invoke-static {v0, p3}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1613
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Roaming unmetered network types="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mRoamingUnmeteredNetworkTypes:Ljava/util/Set;

    .line 1614
    invoke-static {v0, p3}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1613
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1615
    const-string p2, "Bandwidths:"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1616
    invoke-virtual {p1}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 1617
    iget-object p2, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mBandwidthMap:Ljava/util/Map;

    new-instance p3, Lcom/android/internal/telephony/data/DataConfigManager$$ExternalSyntheticLambda7;

    invoke-direct {p3, p1}, Lcom/android/internal/telephony/data/DataConfigManager$$ExternalSyntheticLambda7;-><init>(Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;)V

    invoke-interface {p2, p3}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 1618
    invoke-virtual {p1}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 1619
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "shouldUseDataActivityForRrcDetection="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1620
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataConfigManager;->shouldUseDataActivityForRrcDetection()Z

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1619
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1621
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "isTempNotMeteredSupportedByCarrier="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataConfigManager;->isTempNotMeteredSupportedByCarrier()Z

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1622
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "shouldResetDataThrottlingWhenTacChanges="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1623
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataConfigManager;->shouldResetDataThrottlingWhenTacChanges()Z

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1622
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1624
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Data service package name="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataConfigManager;->getDataServicePackageName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1625
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Default MTU="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataConfigManager;->getDefaultMtu()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1626
    const-string p2, "TCP buffer sizes by RAT:"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1627
    invoke-virtual {p1}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 1628
    iget-object p2, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mTcpBufferSizeMap:Ljava/util/Map;

    new-instance p3, Lcom/android/internal/telephony/data/DataConfigManager$$ExternalSyntheticLambda8;

    invoke-direct {p3, p1}, Lcom/android/internal/telephony/data/DataConfigManager$$ExternalSyntheticLambda8;-><init>(Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;)V

    invoke-interface {p2, p3}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 1629
    invoke-virtual {p1}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 1630
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Default TCP buffer sizes="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataConfigManager;->getDefaultTcpConfigString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1631
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "getImsDeregistrationDelay="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataConfigManager;->getImsDeregistrationDelay()J

    move-result-wide v1

    invoke-virtual {p2, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1632
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "shouldPersistIwlanDataNetworksWhenDataServiceRestarted="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1633
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataConfigManager;->shouldPersistIwlanDataNetworksWhenDataServiceRestarted()Z

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1632
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1634
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Bandwidth estimation source="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mResources:Landroid/content/res/Resources;

    const v1, 0x1040207

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1636
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "isImsDelayTearDownUntilVoiceCallEndEnabled="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1637
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataConfigManager;->isImsDelayTearDownUntilVoiceCallEndEnabled()Z

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1636
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1638
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "isEnhancedIwlanHandoverCheckEnabled="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataConfigManager;->isEnhancedIwlanHandoverCheckEnabled()Z

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1639
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "isTetheringProfileDisabledForRoaming="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1640
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataConfigManager;->isTetheringProfileDisabledForRoaming()Z

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1639
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1641
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "allowClearInitialAttachDataProfile="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataConfigManager;->allowClearInitialAttachDataProfile()Z

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1642
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "forcedCellularTransportCapabilities="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataConfigManager;->getForcedCellularTransportCapabilities()Ljava/util/Set;

    move-result-object p0

    .line 1643
    invoke-interface {p0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p3, Lcom/android/internal/telephony/data/DataConfigManager$$ExternalSyntheticLambda1;

    invoke-direct {p3}, Lcom/android/internal/telephony/data/DataConfigManager$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {p0, p3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 1644
    invoke-static {v0}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object p3

    invoke-interface {p0, p3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1642
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1645
    invoke-virtual {p1}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    return-void
.end method

.method public blacklist getAllowedInitialAttachApnTypes()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1478
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mCarrierConfig:Landroid/os/PersistableBundle;

    const-string v0, "allowed_initial_attach_apn_types_string_array"

    invoke-virtual {p0, v0}, Landroid/os/PersistableBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_22

    .line 1481
    invoke-static {p0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/internal/telephony/data/DataConfigManager$$ExternalSyntheticLambda16;

    invoke-direct {v0}, Lcom/android/internal/telephony/data/DataConfigManager$$ExternalSyntheticLambda16;-><init>()V

    .line 1482
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 1483
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0

    .line 1486
    :cond_22
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0
.end method

.method public blacklist getAnomalyImsReleaseRequestThreshold()Lcom/android/internal/telephony/data/DataConfigManager$EventFrequency;
    .registers 1

    .line 1003
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mImsReleaseRequestAnomalyReportThreshold:Lcom/android/internal/telephony/data/DataConfigManager$EventFrequency;

    return-object p0
.end method

.method public blacklist getAnomalyNetworkConnectingTimeoutMs()I
    .registers 1

    .line 1019
    iget p0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mNetworkConnectingTimeout:I

    return p0
.end method

.method public blacklist getAnomalyNetworkDisconnectingTimeoutMs()I
    .registers 1

    .line 1027
    iget p0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mNetworkDisconnectingTimeout:I

    return p0
.end method

.method public blacklist getAnomalyNetworkUnwantedThreshold()Lcom/android/internal/telephony/data/DataConfigManager$EventFrequency;
    .registers 1

    .line 994
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mNetworkUnwantedAnomalyReportThreshold:Lcom/android/internal/telephony/data/DataConfigManager$EventFrequency;

    return-object p0
.end method

.method public blacklist getAnomalySetupDataCallThreshold()Lcom/android/internal/telephony/data/DataConfigManager$EventFrequency;
    .registers 1

    .line 984
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mSetupDataCallAnomalyReportThreshold:Lcom/android/internal/telephony/data/DataConfigManager$EventFrequency;

    return-object p0
.end method

.method public blacklist getAutoDataSwitchAvailabilityStabilityTimeThreshold()J
    .registers 3

    .line 1141
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mResources:Landroid/content/res/Resources;

    const v0, 0x10e0004

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    int-to-long v0, p0

    return-wide v0
.end method

.method public blacklist getAutoDataSwitchAvailabilitySwitchbackStabilityTimeThreshold()J
    .registers 3

    .line 1164
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mResources:Landroid/content/res/Resources;

    const v0, 0x10e0005

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    int-to-long v0, p0

    return-wide v0
.end method

.method public blacklist getAutoDataSwitchPerformanceStabilityTimeThreshold()J
    .registers 3

    .line 1151
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mResources:Landroid/content/res/Resources;

    const v0, 0x10e0006

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    int-to-long v0, p0

    return-wide v0
.end method

.method public blacklist getAutoDataSwitchScore(Landroid/telephony/TelephonyDisplayInfo;Landroid/telephony/SignalStrength;)I
    .registers 3

    .line 1111
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mAutoDataSwitchNetworkTypeSignalMap:Ljava/util/Map;

    .line 1112
    invoke-static {p1}, Lcom/android/internal/telephony/data/DataConfigManager;->getDataConfigNetworkType(Landroid/telephony/TelephonyDisplayInfo;)Ljava/lang/String;

    move-result-object p1

    .line 1111
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    if-eqz p0, :cond_15

    .line 1113
    invoke-virtual {p2}, Landroid/telephony/SignalStrength;->getLevel()I

    move-result p1

    aget p0, p0, p1

    return p0

    :cond_15
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist getAutoDataSwitchScoreTolerance()I
    .registers 2

    .line 1123
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mResources:Landroid/content/res/Resources;

    const v0, 0x10e0007

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    return p0
.end method

.method public blacklist getAutoDataSwitchValidationMaxRetry()I
    .registers 2

    .line 1131
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mResources:Landroid/content/res/Resources;

    const v0, 0x10e0008

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    return p0
.end method

.method public blacklist getBandwidthEstimateSource()I
    .registers 7

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1235
    iget-object v3, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mResources:Landroid/content/res/Resources;

    const v4, 0x1040207

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1237
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    const/4 v4, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_54

    goto :goto_38

    :sswitch_18
    const-string v5, "bandwidth_estimator"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_21

    goto :goto_38

    :cond_21
    move v4, v0

    goto :goto_38

    :sswitch_23
    const-string v5, "modem"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2c

    goto :goto_38

    :cond_2c
    move v4, v1

    goto :goto_38

    :sswitch_2e
    const-string v5, "carrier_config"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_37

    goto :goto_38

    :cond_37
    move v4, v2

    :goto_38
    packed-switch v4, :pswitch_data_62

    .line 1244
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid bandwidth estimation source config: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataConfigManager;->loge(Ljava/lang/String;)V

    return v2

    :pswitch_50
    const/4 p0, 0x3

    return p0

    :pswitch_52
    return v1

    :pswitch_53
    return v0

    :sswitch_data_54
    .sparse-switch
        -0x488da597 -> :sswitch_2e
        0x633fb2a -> :sswitch_23
        0xc19d372 -> :sswitch_18
    .end sparse-switch

    :pswitch_data_62
    .packed-switch 0x0
        :pswitch_53
        :pswitch_52
        :pswitch_50
    .end packed-switch
.end method

.method public blacklist getBandwidthForNetworkType(Landroid/telephony/TelephonyDisplayInfo;)Lcom/android/internal/telephony/data/DataNetwork$NetworkBandwidth;
    .registers 2

    .line 878
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mBandwidthMap:Ljava/util/Map;

    .line 879
    invoke-static {p1}, Lcom/android/internal/telephony/data/DataConfigManager;->getDataConfigNetworkType(Landroid/telephony/TelephonyDisplayInfo;)Ljava/lang/String;

    move-result-object p1

    .line 878
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/data/DataNetwork$NetworkBandwidth;

    if-eqz p0, :cond_f

    return-object p0

    .line 883
    :cond_f
    new-instance p0, Lcom/android/internal/telephony/data/DataNetwork$NetworkBandwidth;

    const/16 p1, 0xe

    invoke-direct {p0, p1, p1}, Lcom/android/internal/telephony/data/DataNetwork$NetworkBandwidth;-><init>(II)V

    return-object p0
.end method

.method public blacklist getCapabilitiesExemptFromSingleDataNetwork()Ljava/util/Set;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 744
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mCapabilitiesExemptFromSingleDataList:Ljava/util/Set;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getDataHandoverRetryRules()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/data/DataRetryManager$DataHandoverRetryRule;",
            ">;"
        }
    .end annotation

    .line 592
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mDataHandoverRetryRules:Ljava/util/List;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getDataServicePackageName()Ljava/lang/String;
    .registers 2

    .line 917
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mCarrierConfig:Landroid/os/PersistableBundle;

    const-string v0, "carrier_data_service_wwan_package_override_string"

    invoke-virtual {p0, v0}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getDataSetupRetryRules()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryRule;",
            ">;"
        }
    .end annotation

    .line 584
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mDataSetupRetryRules:Ljava/util/List;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getDataStallRecoveryDelayMillis()[J
    .registers 2

    .line 1436
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mCarrierConfig:Landroid/os/PersistableBundle;

    const-string v0, "data_stall_recovery_timers_long_array"

    invoke-virtual {p0, v0}, Landroid/os/PersistableBundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object p0

    return-object p0
.end method

.method public blacklist getDataStallRecoveryShouldSkipArray()[Z
    .registers 2

    .line 1447
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mCarrierConfig:Landroid/os/PersistableBundle;

    const-string v0, "data_stall_recovery_should_skip_bool_array"

    invoke-virtual {p0, v0}, Landroid/os/PersistableBundle;->getBooleanArray(Ljava/lang/String;)[Z

    move-result-object p0

    return-object p0
.end method

.method public blacklist getDefaultMtu()I
    .registers 2

    .line 925
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mCarrierConfig:Landroid/os/PersistableBundle;

    const-string v0, "default_mtu_int"

    invoke-virtual {p0, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public blacklist getDefaultPreferredApn()Ljava/lang/String;
    .registers 2

    .line 1457
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mCarrierConfig:Landroid/os/PersistableBundle;

    const-string v0, "default_preferred_apn_name_string"

    invoke-virtual {p0, v0}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getDefaultTcpConfigString()Ljava/lang/String;
    .registers 2

    .line 1191
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mResources:Landroid/content/res/Resources;

    const v0, 0x10402e2

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getEsimBootStrapMaxDataLimitBytes()J
    .registers 3

    .line 932
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mResources:Landroid/content/res/Resources;

    const v0, 0x10e0098

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    int-to-long v0, p0

    return-wide v0
.end method

.method public blacklist getForcedCellularTransportCapabilities()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1526
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mResources:Landroid/content/res/Resources;

    const v0, 0x107007c

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    .line 1529
    invoke-static {p0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/internal/telephony/data/DataConfigManager$$ExternalSyntheticLambda17;

    invoke-direct {v0}, Lcom/android/internal/telephony/data/DataConfigManager$$ExternalSyntheticLambda17;-><init>()V

    .line 1530
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 1531
    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    return-object p0
.end method

.method public blacklist getHandoverRules()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/data/DataNetworkController$HandoverRule;",
            ">;"
        }
    .end annotation

    .line 1383
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mHandoverRuleList:Ljava/util/List;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getImsDeregistrationDelay()J
    .registers 3

    .line 1199
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mResources:Landroid/content/res/Resources;

    const v0, 0x10e006f

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    int-to-long v0, p0

    return-wide v0
.end method

.method public blacklist getMeteredNetworkCapabilities(Z)Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_5

    .line 637
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mRoamingMeteredApnTypes:Ljava/util/Set;

    goto :goto_7

    :cond_5
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mMeteredApnTypes:Ljava/util/Set;

    .line 638
    :goto_7
    invoke-interface {p0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/android/internal/telephony/data/DataConfigManager$$ExternalSyntheticLambda14;

    invoke-direct {p1}, Lcom/android/internal/telephony/data/DataConfigManager$$ExternalSyntheticLambda14;-><init>()V

    .line 639
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/android/internal/telephony/data/DataConfigManager$$ExternalSyntheticLambda15;

    invoke-direct {p1}, Lcom/android/internal/telephony/data/DataConfigManager$$ExternalSyntheticLambda15;-><init>()V

    .line 640
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 641
    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    const/16 p1, 0x23

    .line 646
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/16 p1, 0x22

    .line 647
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 649
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getNetworkCapabilityPriority(I)I
    .registers 4

    .line 540
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mNetworkCapabilityPriorityMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 541
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mNetworkCapabilityPriorityMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_1d
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist getNetworkHandoverTimeoutMs()I
    .registers 1

    .line 1035
    iget p0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mNetworkHandoverTimeout:I

    return p0
.end method

.method public blacklist getNetworkTypesOnlySupportSingleDataNetwork()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 734
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mSingleDataNetworkTypeList:Ljava/util/List;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getNrAdvancedCapablePcoId()I
    .registers 2

    .line 1466
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mCarrierConfig:Landroid/os/PersistableBundle;

    const-string v0, "nr_advanced_capable_pco_id_int"

    invoke-virtual {p0, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public blacklist getReevaluateBootstrapSimDataUsageMillis()J
    .registers 5

    .line 941
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mResources:Landroid/content/res/Resources;

    const v0, 0x10e0112

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    int-to-long v0, p0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-gtz p0, :cond_12

    .line 945
    sget-wide v0, Lcom/android/internal/telephony/data/DataConfigManager;->REEVALUATE_BOOTSTRAP_SIM_DATA_USAGE_MILLIS:J

    :cond_12
    return-wide v0
.end method

.method public blacklist getRetrySetupAfterDisconnectMillis()J
    .registers 3

    .line 1390
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mCarrierConfig:Landroid/os/PersistableBundle;

    const-string v0, "carrier_data_call_apn_retry_after_disconnect_long"

    invoke-virtual {p0, v0}, Landroid/os/PersistableBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getSatelliteDataSupportMode()I
    .registers 2

    .line 891
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mCarrierConfig:Landroid/os/PersistableBundle;

    const-string v0, "satellite_data_support_mode_int"

    invoke-virtual {p0, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public blacklist getTcpConfigString(Landroid/telephony/TelephonyDisplayInfo;)Ljava/lang/String;
    .registers 3

    .line 1179
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mTcpBufferSizeMap:Ljava/util/Map;

    invoke-static {p1}, Lcom/android/internal/telephony/data/DataConfigManager;->getDataConfigNetworkType(Landroid/telephony/TelephonyDisplayInfo;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 1180
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1181
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataConfigManager;->getDefaultTcpConfigString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_17
    return-object p1
.end method

.method public blacklist getUnsupportedNetworkCapabilities()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1286
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mResources:Landroid/content/res/Resources;

    const v0, 0x10700e3

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/internal/telephony/data/DataConfigManager$$ExternalSyntheticLambda17;

    invoke-direct {v0}, Lcom/android/internal/telephony/data/DataConfigManager$$ExternalSyntheticLambda17;-><init>()V

    .line 1288
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 1289
    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    return-object p0
.end method

.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 4

    .line 424
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_32

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1f

    .line 438
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected message "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataConfigManager;->loge(Ljava/lang/String;)V

    return-void

    .line 432
    :cond_1f
    const-string p1, "EVENT_DEVICE_CONFIG_CHANGED"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataConfigManager;->log(Ljava/lang/String;)V

    .line 433
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataConfigManager;->updateDeviceConfig()V

    .line 434
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mDataConfigManagerCallbacks:Ljava/util/Set;

    new-instance p1, Lcom/android/internal/telephony/data/DataConfigManager$$ExternalSyntheticLambda10;

    invoke-direct {p1}, Lcom/android/internal/telephony/data/DataConfigManager$$ExternalSyntheticLambda10;-><init>()V

    invoke-interface {p0, p1}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    return-void

    .line 426
    :cond_32
    const-string p1, "EVENT_CARRIER_CONFIG_CHANGED"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataConfigManager;->log(Ljava/lang/String;)V

    .line 427
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataConfigManager;->updateCarrierConfig()V

    .line 428
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mDataConfigManagerCallbacks:Ljava/util/Set;

    new-instance p1, Lcom/android/internal/telephony/data/DataConfigManager$$ExternalSyntheticLambda9;

    invoke-direct {p1}, Lcom/android/internal/telephony/data/DataConfigManager$$ExternalSyntheticLambda9;-><init>()V

    invoke-interface {p0, p1}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public blacklist isAnyMeteredCapability([IZ)Z
    .registers 4

    .line 681
    invoke-static {p1}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/stream/IntStream;->boxed()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/android/internal/telephony/data/DataConfigManager$$ExternalSyntheticLambda13;

    invoke-direct {v0, p0, p2}, Lcom/android/internal/telephony/data/DataConfigManager$$ExternalSyntheticLambda13;-><init>(Lcom/android/internal/telephony/data/DataConfigManager;Z)V

    .line 682
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public blacklist isApnConfigAnomalyReportEnabled()Z
    .registers 1

    .line 1043
    iget-boolean p0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mIsApnConfigAnomalyReportEnabled:Z

    return p0
.end method

.method public blacklist isConfigCarrierSpecific()Z
    .registers 2

    .line 471
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mCarrierConfig:Landroid/os/PersistableBundle;

    const-string v0, "carrier_config_applied_bool"

    invoke-virtual {p0, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public blacklist isDataRoamingEnabledByDefault()Z
    .registers 2

    .line 599
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mCarrierConfig:Landroid/os/PersistableBundle;

    const-string v0, "carrier_default_data_roaming_enabled_bool"

    invoke-virtual {p0, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public blacklist isEnhancedIwlanHandoverCheckEnabled()Z
    .registers 2

    .line 1497
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mResources:Landroid/content/res/Resources;

    const v0, 0x11101a3

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method public blacklist isIgnoringDataRoamingSettingForSatellite()Z
    .registers 2

    .line 901
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mCarrierConfig:Landroid/os/PersistableBundle;

    const-string v0, "satellite_ignore_data_roaming_setting_bool"

    invoke-virtual {p0, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public blacklist isImsDelayTearDownUntilVoiceCallEndEnabled()Z
    .registers 2

    .line 1226
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mCarrierConfig:Landroid/os/PersistableBundle;

    const-string v0, "delay_ims_tear_down_until_call_end_bool"

    invoke-virtual {p0, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public blacklist isInvalidQnsParamAnomalyReportEnabled()Z
    .registers 1

    .line 1011
    iget-boolean p0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mIsInvalidQnsParamAnomalyReportEnabled:Z

    return p0
.end method

.method public blacklist isIwlanHandoverPolicyEnabled()Z
    .registers 2

    .line 1217
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mResources:Landroid/content/res/Resources;

    const v0, 0x111019f

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method public blacklist isMeteredCapability(IZ)Z
    .registers 3

    .line 668
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/data/DataConfigManager;->getMeteredNetworkCapabilities(Z)Ljava/util/Set;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public blacklist isNetworkTypeUnmetered(Landroid/telephony/TelephonyDisplayInfo;Landroid/telephony/ServiceState;)Z
    .registers 3

    .line 815
    invoke-static {p1}, Lcom/android/internal/telephony/data/DataConfigManager;->getDataConfigNetworkType(Landroid/telephony/TelephonyDisplayInfo;)Ljava/lang/String;

    move-result-object p1

    .line 816
    invoke-virtual {p2}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result p2

    if-eqz p2, :cond_11

    .line 817
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mRoamingUnmeteredNetworkTypes:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 818
    :cond_11
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mUnmeteredNetworkTypes:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public blacklist isPingTestBeforeAutoDataSwitchRequired()Z
    .registers 2

    .line 773
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mResources:Landroid/content/res/Resources;

    const v0, 0x1110011

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method public blacklist isTempNotMeteredSupportedByCarrier()Z
    .registers 2

    .line 782
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mCarrierConfig:Landroid/os/PersistableBundle;

    const-string v0, "network_temp_not_metered_supported_bool"

    invoke-virtual {p0, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public blacklist isTetheringProfileDisabledForRoaming()Z
    .registers 2

    .line 656
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mCarrierConfig:Landroid/os/PersistableBundle;

    const-string v0, "disable_dun_apn_while_roaming_with_preset_apn_bool"

    invoke-virtual {p0, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public blacklist parseSlidingWindowCounterThreshold(Ljava/lang/String;JI)Lcom/android/internal/telephony/data/DataConfigManager$EventFrequency;
    .registers 8

    .line 1349
    const-string v0, ": "

    new-instance v1, Lcom/android/internal/telephony/data/DataConfigManager$EventFrequency;

    invoke-direct {v1, p2, p3, p4}, Lcom/android/internal/telephony/data/DataConfigManager$EventFrequency;-><init>(JI)V

    .line 1350
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_e

    return-object v1

    .line 1352
    :cond_e
    const-string p2, ","

    invoke-virtual {p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    .line 1353
    array-length p3, p2

    const/4 p4, 0x2

    if-eq p3, p4, :cond_32

    .line 1354
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Invalid format: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "Format should be in \"time window in ms,occurrences\". Using default instead."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataConfigManager;->loge(Ljava/lang/String;)V

    return-object v1

    :cond_32
    const/4 p1, 0x0

    .line 1362
    :try_start_33
    aget-object p3, p2, p1

    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p3
    :try_end_3d
    .catch Ljava/lang/NumberFormatException; {:try_start_33 .. :try_end_3d} :catch_6c

    const/4 p1, 0x1

    .line 1368
    :try_start_3e
    aget-object v2, p2, p1

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_48
    .catch Ljava/lang/NumberFormatException; {:try_start_3e .. :try_end_48} :catch_4e

    .line 1373
    new-instance p1, Lcom/android/internal/telephony/data/DataConfigManager$EventFrequency;

    invoke-direct {p1, p3, p4, p0}, Lcom/android/internal/telephony/data/DataConfigManager$EventFrequency;-><init>(JI)V

    return-object p1

    :catch_4e
    move-exception p3

    .line 1370
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception parsing SlidingWindow occurrence as integer "

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p1, p2, p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataConfigManager;->loge(Ljava/lang/String;)V

    return-object v1

    :catch_6c
    move-exception p3

    .line 1364
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception parsing SlidingWindow window span "

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p1, p2, p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataConfigManager;->loge(Ljava/lang/String;)V

    return-object v1
.end method

.method public blacklist registerCallback(Lcom/android/internal/telephony/data/DataConfigManager$DataConfigManagerCallback;)V
    .registers 2

    .line 410
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mDataConfigManagerCallbacks:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public blacklist shouldHonorRetryTimerForEmergencyNetworkRequest()Z
    .registers 2

    .line 1517
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mResources:Landroid/content/res/Resources;

    const v0, 0x11101c2

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method public blacklist shouldKeepNetworkUpInNonVops(I)Z
    .registers 3

    .line 753
    iget-boolean v0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mShouldKeepNetworkUpInNonVops:Z

    if-nez v0, :cond_d

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/DataConfigManager;->allowBringUpNetworkInNonVops(I)Z

    move-result p0

    if-eqz p0, :cond_b

    goto :goto_d

    :cond_b
    const/4 p0, 0x0

    return p0

    :cond_d
    :goto_d
    const/4 p0, 0x1

    return p0
.end method

.method public blacklist shouldPersistIwlanDataNetworksWhenDataServiceRestarted()Z
    .registers 2

    .line 1208
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mResources:Landroid/content/res/Resources;

    const v0, 0x11102b6

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method public blacklist shouldResetDataThrottlingWhenTacChanges()Z
    .registers 2

    .line 909
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mCarrierConfig:Landroid/os/PersistableBundle;

    const-string v0, "unthrottle_data_retry_when_tac_changes_bool"

    invoke-virtual {p0, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public blacklist shouldUseDataActivityForRrcDetection()Z
    .registers 2

    .line 689
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mCarrierConfig:Landroid/os/PersistableBundle;

    const-string v0, "lte_endc_using_user_data_for_rrc_detection_bool"

    invoke-virtual {p0, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public blacklist unregisterCallback(Lcom/android/internal/telephony/data/DataConfigManager$DataConfigManagerCallback;)V
    .registers 2

    .line 419
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataConfigManager;->mDataConfigManagerCallbacks:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method
