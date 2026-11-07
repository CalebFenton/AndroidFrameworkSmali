.class public Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;
.super Ljava/lang/Object;
.source "DataStallRecoveryStats.java"


# static fields
.field private static final blacklist INLINE_EXECUTOR:Ljava/util/concurrent/Executor;

.field private static final blacklist REFRESH_DURATION_IN_MILLIS:J


# instance fields
.field private blacklist mBand:I

.field private blacklist mCarrierId:I

.field private blacklist mConnectivityDiagnosticsCallback:Landroid/net/ConnectivityDiagnosticsManager$ConnectivityDiagnosticsCallback;

.field private blacklist mConnectivityDiagnosticsManager:Landroid/net/ConnectivityDiagnosticsManager;

.field private blacklist mConvertedMccMnc:I

.field private blacklist mDnsConsecutiveTimeouts:I

.field private final blacklist mFeatureFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

.field private final blacklist mHandler:Landroid/os/Handler;

.field private blacklist mIfaceName:Ljava/lang/String;

.field private blacklist mInternetLinkStatus:I

.field private blacklist mIsMultiSim:Z

.field private blacklist mIsOpportunistic:Z

.field private blacklist mLinkDownBandwidthKbps:I

.field private blacklist mLinkUpBandwidthKbps:I

.field private blacklist mMetricsReflashTime:J

.field private blacklist mNetworkProbesResult:I

.field private blacklist mNetworkProbesType:I

.field private blacklist mNetworkRegState:I

.field private blacklist mNetworkValidationResult:I

.field private blacklist mOtherNetworkRegState:I

.field private blacklist mOtherSignalStrength:I

.field private final blacklist mPhone:Lcom/android/internal/telephony/Phone;

.field private blacklist mPhoneId:I

.field private blacklist mRat:I

.field private blacklist mSignalStrength:I

.field private final blacklist mTag:Ljava/lang/String;

.field private blacklist mTcpMetricsCollectionPeriodMillis:I

.field private blacklist mTcpPacketFailRate:I

.field private final blacklist mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public static synthetic blacklist $r8$lambda$aoGCXJeyDX1zB04MCobYr77fYZ8(Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;IZIIZI)V
    .registers 7

    .line 0
    invoke-direct/range {p0 .. p6}, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->lambda$uploadMetrics$1(IZIIZI)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$nLTFX4c0EwxODovRRzhHn5_Exew(Ljava/lang/Runnable;)V
    .registers 1

    .line 131
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmDnsConsecutiveTimeouts(Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;I)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->mDnsConsecutiveTimeouts:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIfaceName(Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;Ljava/lang/String;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->mIfaceName:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmInternetLinkStatus(Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;I)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->mInternetLinkStatus:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmNetworkProbesResult(Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;I)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->mNetworkProbesResult:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmNetworkProbesType(Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;I)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->mNetworkProbesType:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmNetworkValidationResult(Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;I)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->mNetworkValidationResult:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmTcpMetricsCollectionPeriodMillis(Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;I)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->mTcpMetricsCollectionPeriodMillis:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmTcpPacketFailRate(Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;I)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->mTcpPacketFailRate:I

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 82
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x3

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->REFRESH_DURATION_IN_MILLIS:J

    .line 131
    new-instance v0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->INLINE_EXECUTOR:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;Lcom/android/internal/telephony/data/DataNetworkController;)V
    .registers 8

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 93
    iput-object v0, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->mIfaceName:Ljava/lang/String;

    const-wide/16 v1, 0x0

    .line 97
    iput-wide v1, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->mMetricsReflashTime:J

    const/4 v1, 0x0

    .line 99
    iput v1, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->mPhoneId:I

    const/4 v2, -0x1

    .line 100
    iput v2, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->mCarrierId:I

    .line 101
    iput v2, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->mConvertedMccMnc:I

    .line 102
    iput v1, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->mSignalStrength:I

    .line 103
    iput v1, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->mBand:I

    .line 105
    iput v1, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->mRat:I

    .line 106
    iput-boolean v1, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->mIsOpportunistic:Z

    .line 107
    iput-boolean v1, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->mIsMultiSim:Z

    .line 108
    iput v1, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->mNetworkRegState:I

    .line 111
    iput v1, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->mOtherSignalStrength:I

    .line 112
    iput v1, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->mOtherNetworkRegState:I

    .line 115
    iput v2, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->mInternetLinkStatus:I

    .line 118
    iput v1, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->mLinkDownBandwidthKbps:I

    .line 119
    iput v1, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->mLinkUpBandwidthKbps:I

    .line 122
    iput v2, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->mNetworkProbesResult:I

    .line 123
    iput v2, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->mNetworkProbesType:I

    .line 124
    iput v2, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->mNetworkValidationResult:I

    .line 125
    iput v2, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->mTcpMetricsCollectionPeriodMillis:I

    .line 126
    iput v2, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->mTcpPacketFailRate:I

    .line 127
    iput v2, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->mDnsConsecutiveTimeouts:I

    .line 129
    iput-object v0, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->mConnectivityDiagnosticsManager:Landroid/net/ConnectivityDiagnosticsManager;

    .line 130
    iput-object v0, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->mConnectivityDiagnosticsCallback:Landroid/net/ConnectivityDiagnosticsManager$ConnectivityDiagnosticsCallback;

    .line 140
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DSRS-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->mTag:Ljava/lang/String;

    .line 141
    iput-object p1, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 142
    iput-object p2, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->mFeatureFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

    .line 147
    new-instance p2, Landroid/os/HandlerThread;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "-thread"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p2, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 148
    invoke-virtual {p2}, Landroid/os/HandlerThread;->start()V

    .line 149
    new-instance v2, Landroid/os/Handler;

    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {v2, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->mHandler:Landroid/os/Handler;

    .line 152
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p2

    const-class v3, Landroid/telephony/TelephonyManager;

    invoke-virtual {p2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/telephony/TelephonyManager;

    iput-object p2, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 154
    new-instance p2, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats$1;

    .line 155
    new-instance v3, Lcom/android/internal/telephony/NetworkTypeController$$ExternalSyntheticLambda0;

    invoke-direct {v3, v2}, Lcom/android/internal/telephony/NetworkTypeController$$ExternalSyntheticLambda0;-><init>(Landroid/os/Handler;)V

    invoke-direct {p2, p0, v3}, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats$1;-><init>(Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;Ljava/util/concurrent/Executor;)V

    .line 154
    invoke-virtual {p3, p2}, Lcom/android/internal/telephony/data/DataNetworkController;->registerDataNetworkControllerCallback(Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;)V

    .line 175
    :try_start_92
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p1

    const-class p2, Landroid/net/ConnectivityDiagnosticsManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityDiagnosticsManager;

    iput-object p1, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->mConnectivityDiagnosticsManager:Landroid/net/ConnectivityDiagnosticsManager;

    .line 176
    new-instance p1, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats$2;

    invoke-direct {p1, p0}, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats$2;-><init>(Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;)V

    iput-object p1, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->mConnectivityDiagnosticsCallback:Landroid/net/ConnectivityDiagnosticsManager$ConnectivityDiagnosticsCallback;

    .line 194
    iget-object p1, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->mConnectivityDiagnosticsManager:Landroid/net/ConnectivityDiagnosticsManager;

    new-instance p2, Landroid/net/NetworkRequest$Builder;

    invoke-direct {p2}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 196
    invoke-virtual {p2}, Landroid/net/NetworkRequest$Builder;->clearCapabilities()Landroid/net/NetworkRequest$Builder;

    move-result-object p2

    const/16 p3, 0xc

    .line 197
    invoke-virtual {p2, p3}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object p2

    .line 198
    invoke-virtual {p2, v1}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object p2

    .line 199
    invoke-virtual {p2}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object p2

    sget-object p3, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->INLINE_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->mConnectivityDiagnosticsCallback:Landroid/net/ConnectivityDiagnosticsManager$ConnectivityDiagnosticsCallback;

    .line 194
    invoke-virtual {p1, p2, p3, v1}, Landroid/net/ConnectivityDiagnosticsManager;->registerConnectivityDiagnosticsCallback(Landroid/net/NetworkRequest;Ljava/util/concurrent/Executor;Landroid/net/ConnectivityDiagnosticsManager$ConnectivityDiagnosticsCallback;)V
    :try_end_c7
    .catch Ljava/lang/Exception; {:try_start_92 .. :try_end_c7} :catch_c8

    return-void

    .line 204
    :catch_c8
    iput-object v0, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->mConnectivityDiagnosticsManager:Landroid/net/ConnectivityDiagnosticsManager;

    .line 205
    iput-object v0, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->mConnectivityDiagnosticsCallback:Landroid/net/ConnectivityDiagnosticsManager$ConnectivityDiagnosticsCallback;

    return-void
.end method

.method private static blacklist getIsOpportunistic(Lcom/android/internal/telephony/Phone;)Z
    .registers 2

    .line 369
    invoke-static {}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getInstance()Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    move-result-object v0

    .line 370
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getSubscriptionInfoInternal(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;

    move-result-object p0

    if-eqz p0, :cond_16

    .line 371
    invoke-virtual {p0}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->isOpportunistic()Z

    move-result p0

    if-eqz p0, :cond_16

    const/4 p0, 0x1

    return p0

    :cond_16
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic blacklist lambda$uploadMetrics$1(IZIIZI)V
    .registers 29

    move-object/from16 v1, p0

    move/from16 v6, p1

    .line 229
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set recovery action to "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->log(Ljava/lang/String;)V

    .line 233
    :try_start_18
    invoke-direct {v1}, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->refreshMetricsData()V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_1b} :catch_95

    .line 239
    iget v3, v1, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->mCarrierId:I

    iget v4, v1, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->mRat:I

    iget v5, v1, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->mSignalStrength:I

    iget-boolean v7, v1, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->mIsOpportunistic:Z

    iget-boolean v8, v1, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->mIsMultiSim:Z

    iget v9, v1, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->mBand:I

    iget v13, v1, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->mOtherSignalStrength:I

    iget v14, v1, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->mOtherNetworkRegState:I

    iget v15, v1, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->mNetworkRegState:I

    iget v0, v1, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->mPhoneId:I

    iget v2, v1, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->mInternetLinkStatus:I

    iget v10, v1, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->mLinkUpBandwidthKbps:I

    iget v11, v1, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->mLinkDownBandwidthKbps:I

    move/from16 v19, v2

    const/16 v2, 0x13b

    move/from16 v12, p4

    move/from16 v16, p5

    move/from16 v18, p6

    move/from16 v17, v0

    move/from16 v20, v10

    move/from16 v21, v11

    move/from16 v10, p2

    move/from16 v11, p3

    invoke-static/range {v2 .. v21}, Lcom/android/internal/telephony/TelephonyStatsLog;->write(IIIIIZZIZIIIIIZIIIII)V

    .line 261
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Upload stats: Action:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", Recovered:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", Duration:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", Reason:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", First validation:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v2, p5

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", Duration of action:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v2, p6

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->log(Ljava/lang/String;)V

    return-void

    :catch_95
    move-exception v0

    .line 235
    const-string v2, "The metrics data cannot be refreshed."

    invoke-direct {v1, v2, v0}, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private blacklist log(Ljava/lang/String;)V
    .registers 2

    .line 469
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->mTag:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist logd(Ljava/lang/String;)V
    .registers 2

    .line 473
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->mTag:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist loge(Ljava/lang/String;)V
    .registers 2

    .line 477
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->mTag:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    .line 481
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->mTag:Ljava/lang/String;

    invoke-static {p0, p1, p2}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private blacklist refreshMetricsData()V
    .registers 6

    .line 283
    const-string v0, "Refreshes the metrics data."

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->logd(Ljava/lang/String;)V

    .line 285
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->mMetricsReflashTime:J

    .line 287
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->mPhoneId:I

    .line 288
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getCarrierId()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->mCarrierId:I

    .line 289
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getSignalStrength()Landroid/telephony/SignalStrength;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/SignalStrength;->getLevel()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->mSignalStrength:I

    .line 291
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    .line 292
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, -0x1

    if-nez v2, :cond_54

    .line 294
    :try_start_36
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->mConvertedMccMnc:I
    :try_end_3c
    .catch Ljava/lang/NumberFormatException; {:try_start_36 .. :try_end_3c} :catch_3d

    goto :goto_56

    .line 296
    :catch_3d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid MCCMNC format: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->loge(Ljava/lang/String;)V

    .line 297
    iput v3, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->mConvertedMccMnc:I

    goto :goto_56

    .line 300
    :cond_54
    iput v3, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->mConvertedMccMnc:I

    .line 304
    :goto_56
    invoke-direct {p0}, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->updateBandwidths()V

    .line 307
    invoke-direct {p0}, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->updateRatAndBand()V

    .line 310
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v0}, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->getIsOpportunistic(Lcom/android/internal/telephony/Phone;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->mIsOpportunistic:Z

    .line 313
    invoke-static {}, Lcom/android/internal/telephony/metrics/SimSlotState;->getCurrentState()Lcom/android/internal/telephony/metrics/SimSlotState;

    move-result-object v0

    iget v0, v0, Lcom/android/internal/telephony/metrics/SimSlotState;->numActiveSims:I

    if-le v0, v1, :cond_6d

    goto :goto_6e

    :cond_6d
    const/4 v1, 0x0

    :goto_6e
    iput-boolean v1, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->mIsMultiSim:Z

    .line 316
    invoke-direct {p0}, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->updateNetworkRegState()V

    .line 319
    invoke-direct {p0}, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->updateDsdsInfo()V

    return-void
.end method

.method private blacklist updateBandwidths()V
    .registers 3

    const/4 v0, 0x0

    .line 326
    iput v0, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->mLinkUpBandwidthKbps:I

    iput v0, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->mLinkDownBandwidthKbps:I

    .line 328
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->mIfaceName:Ljava/lang/String;

    if-nez v0, :cond_f

    .line 329
    const-string v0, "Interface name is null"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->loge(Ljava/lang/String;)V

    return-void

    .line 333
    :cond_f
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getDataNetworkController()Lcom/android/internal/telephony/data/DataNetworkController;

    move-result-object v0

    if-nez v0, :cond_1d

    .line 335
    const-string v0, "DataNetworkController is null"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->loge(Ljava/lang/String;)V

    return-void

    .line 339
    :cond_1d
    iget-object v1, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->mIfaceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/data/DataNetworkController;->getDataNetworkByInterface(Ljava/lang/String;)Lcom/android/internal/telephony/data/DataNetwork;

    move-result-object v0

    if-nez v0, :cond_2b

    .line 341
    const-string v0, "DataNetwork is null"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->loge(Ljava/lang/String;)V

    return-void

    .line 344
    :cond_2b
    invoke-virtual {v0}, Lcom/android/internal/telephony/data/DataNetwork;->getNetworkCapabilities()Landroid/net/NetworkCapabilities;

    move-result-object v0

    if-nez v0, :cond_37

    .line 346
    const-string v0, "NetworkCapabilities is null"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->loge(Ljava/lang/String;)V

    return-void

    .line 350
    :cond_37
    invoke-virtual {v0}, Landroid/net/NetworkCapabilities;->getLinkDownstreamBandwidthKbps()I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->mLinkDownBandwidthKbps:I

    .line 351
    invoke-virtual {v0}, Landroid/net/NetworkCapabilities;->getLinkUpstreamBandwidthKbps()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->mLinkUpBandwidthKbps:I

    return-void
.end method

.method private blacklist updateDsdsInfo()V
    .registers 7

    const/4 v0, 0x0

    .line 387
    iput v0, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->mOtherSignalStrength:I

    .line 388
    iput v0, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->mOtherNetworkRegState:I

    .line 390
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhones()[Lcom/android/internal/telephony/Phone;

    move-result-object v1

    array-length v2, v1

    :goto_a
    if-ge v0, v2, :cond_41

    aget-object v3, v1, v0

    .line 391
    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v4

    iget-object v5, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v5

    if-ne v4, v5, :cond_1b

    goto :goto_3e

    .line 392
    :cond_1b
    invoke-static {v3}, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->getIsOpportunistic(Lcom/android/internal/telephony/Phone;)Z

    move-result v4

    if-nez v4, :cond_3e

    .line 393
    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getSignalStrength()Landroid/telephony/SignalStrength;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/SignalStrength;->getLevel()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->mOtherSignalStrength:I

    .line 394
    invoke-interface {v3}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    .line 395
    invoke-virtual {v0, v1, v2}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v0

    if-eqz v0, :cond_41

    .line 398
    invoke-virtual {v0}, Landroid/telephony/NetworkRegistrationInfo;->getRegistrationState()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->mOtherNetworkRegState:I

    return-void

    :cond_3e
    :goto_3e
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_41
    return-void
.end method

.method private blacklist updateNetworkRegState()V
    .registers 4

    const/4 v0, 0x0

    .line 375
    iput v0, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->mNetworkRegState:I

    .line 378
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    .line 379
    invoke-virtual {v0, v1, v2}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 382
    invoke-virtual {v0}, Landroid/telephony/NetworkRegistrationInfo;->getRegistrationState()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->mNetworkRegState:I

    :cond_17
    return-void
.end method

.method private blacklist updateRatAndBand()V
    .registers 4

    const/4 v0, 0x0

    .line 355
    iput v0, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->mRat:I

    .line 356
    iput v0, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->mBand:I

    .line 357
    iget-object v1, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    if-nez v1, :cond_13

    .line 359
    const-string v0, "ServiceState is null"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->loge(Ljava/lang/String;)V

    return-void

    .line 363
    :cond_13
    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getDataNetworkType()I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->mRat:I

    const/16 v2, 0x12

    if-ne v1, v2, :cond_1e

    goto :goto_24

    .line 365
    :cond_1e
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v0}, Lcom/android/internal/telephony/metrics/ServiceStateStats;->getBand(Lcom/android/internal/telephony/Phone;)I

    move-result v0

    :goto_24
    iput v0, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->mBand:I

    return-void
.end method


# virtual methods
.method public blacklist getDataStallRecoveryMetricsData(IZIIIII)Landroid/os/Bundle;
    .registers 12

    .line 426
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->mMetricsReflashTime:J

    sub-long/2addr v0, v2

    .line 427
    sget-wide v2, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->REFRESH_DURATION_IN_MILLIS:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_17

    .line 430
    :try_start_d
    invoke-direct {p0}, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->refreshMetricsData()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_10} :catch_11

    goto :goto_17

    :catch_11
    move-exception v0

    .line 432
    const-string v1, "The metrics data cannot be refreshed."

    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 436
    :cond_17
    :goto_17
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 438
    const-string v1, "Action"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 439
    const-string p1, "IsRecovered"

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 440
    const-string p1, "Duration"

    invoke-virtual {v0, p1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 441
    const-string p1, "Reason"

    invoke-virtual {v0, p1, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 442
    const-string p1, "DurationOfAction"

    invoke-virtual {v0, p1, p7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 443
    const-string p1, "ValidationCount"

    invoke-virtual {v0, p1, p5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 444
    const-string p1, "ActionValidationCount"

    invoke-virtual {v0, p1, p6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 445
    const-string p1, "PhoneId"

    iget p2, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->mPhoneId:I

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 446
    const-string p1, "CarrierId"

    iget p2, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->mCarrierId:I

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 447
    const-string p1, "MccMnc"

    iget p2, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->mConvertedMccMnc:I

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 448
    const-string p1, "SignalStrength"

    iget p2, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->mSignalStrength:I

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 449
    const-string p1, "Band"

    iget p2, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->mBand:I

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 450
    const-string p1, "Rat"

    iget p2, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->mRat:I

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 451
    iget-boolean p1, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->mIsOpportunistic:Z

    const-string p2, "IsOpportunistic"

    invoke-virtual {v0, p2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 452
    iget-boolean p1, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->mIsMultiSim:Z

    const-string p2, "IsMultiSim"

    invoke-virtual {v0, p2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 453
    const-string p1, "NetworkRegState"

    iget p2, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->mNetworkRegState:I

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 454
    const-string p1, "OtherSignalStrength"

    iget p2, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->mOtherSignalStrength:I

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 455
    const-string p1, "OtherNetworkRegState"

    iget p2, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->mOtherNetworkRegState:I

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 456
    const-string p1, "InternetLinkStatus"

    iget p2, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->mInternetLinkStatus:I

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 457
    const-string p1, "LinkDownBandwidthKbps"

    iget p2, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->mLinkDownBandwidthKbps:I

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 458
    const-string p1, "LinkUpBandwidthKbps"

    iget p2, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->mLinkUpBandwidthKbps:I

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 459
    const-string p1, "NetworkProbesResult"

    iget p2, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->mNetworkProbesResult:I

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 460
    const-string p1, "NetworkProbesType"

    iget p2, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->mNetworkProbesType:I

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 461
    const-string p1, "NetworkValidationResult"

    iget p2, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->mNetworkValidationResult:I

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 462
    const-string p1, "TcpMetricsCollectionPeriodMillis"

    iget p2, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->mTcpMetricsCollectionPeriodMillis:I

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 463
    const-string p1, "TcpPacketFailRate"

    iget p2, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->mTcpPacketFailRate:I

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 464
    const-string p1, "DnsConsecutiveTimeouts"

    iget p0, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->mDnsConsecutiveTimeouts:I

    invoke-virtual {v0, p1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 486
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DataStallRecoveryStats {Phone id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", Signal strength:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->mSignalStrength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", Band:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->mBand:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", RAT:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->mRat:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", Opportunistic:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->mIsOpportunistic:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", Multi-SIM:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->mIsMultiSim:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", Network reg state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->mNetworkRegState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", Other signal strength:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->mOtherSignalStrength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", Other network reg state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->mOtherNetworkRegState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", Link status:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->mInternetLinkStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", Link down bandwidth:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->mLinkDownBandwidthKbps:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", Link up bandwidth:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->mLinkUpBandwidthKbps:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist uploadMetrics(IZIIZI)V
    .registers 16

    .line 227
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats$$ExternalSyntheticLambda1;

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move v8, p6

    invoke-direct/range {v1 .. v8}, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;IZIIZI)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
