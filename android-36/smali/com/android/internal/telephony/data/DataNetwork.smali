.class public Lcom/android/internal/telephony/data/DataNetwork;
.super Lcom/android/internal/telephony/StateMachine;
.source "DataNetwork.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/data/DataNetwork$DefaultState;,
        Lcom/android/internal/telephony/data/DataNetwork$ConnectingState;,
        Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;,
        Lcom/android/internal/telephony/data/DataNetwork$HandoverState;,
        Lcom/android/internal/telephony/data/DataNetwork$DisconnectingState;,
        Lcom/android/internal/telephony/data/DataNetwork$DisconnectedState;,
        Lcom/android/internal/telephony/data/DataNetwork$NetworkBandwidth;,
        Lcom/android/internal/telephony/data/DataNetwork$DataNetworkCallback;
    }
.end annotation


# static fields
.field public static final blacklist BANDWIDTH_SOURCE_BANDWIDTH_ESTIMATOR:I = 0x3

.field public static final blacklist BANDWIDTH_SOURCE_CARRIER_CONFIG:I = 0x2

.field public static final blacklist BANDWIDTH_SOURCE_MODEM:I = 0x1

.field public static final blacklist BANDWIDTH_SOURCE_UNKNOWN:I = 0x0

.field private static final blacklist MUTABLE_CAPABILITIES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist TEAR_DOWN_REASON_AIRPLANE_MODE_ON:I = 0x3

.field public static final blacklist TEAR_DOWN_REASON_CDMA_EMERGENCY_CALLBACK_MODE:I = 0x16

.field public static final blacklist TEAR_DOWN_REASON_CONCURRENT_VOICE_DATA_NOT_ALLOWED:I = 0x8

.field public static final blacklist TEAR_DOWN_REASON_CONNECTIVITY_SERVICE_UNWANTED:I = 0x1

.field public static final blacklist TEAR_DOWN_REASON_DATA_CONFIG_NOT_READY:I = 0x13

.field public static final blacklist TEAR_DOWN_REASON_DATA_DISABLED:I = 0x4

.field public static final blacklist TEAR_DOWN_REASON_DATA_LIMIT_REACHED:I = 0x1f

.field public static final blacklist TEAR_DOWN_REASON_DATA_NETWORK_TRANSPORT_NOT_ALLOWED:I = 0x20

.field public static final blacklist TEAR_DOWN_REASON_DATA_PROFILE_INVALID:I = 0x19

.field public static final blacklist TEAR_DOWN_REASON_DATA_PROFILE_NOT_PREFERRED:I = 0x1a

.field public static final blacklist TEAR_DOWN_REASON_DATA_SERVICE_NOT_READY:I = 0xa

.field public static final blacklist TEAR_DOWN_REASON_DATA_STALL:I = 0xc

.field public static final blacklist TEAR_DOWN_REASON_DATA_THROTTLED:I = 0x18

.field public static final blacklist TEAR_DOWN_REASON_DEFAULT_DATA_UNSELECTED:I = 0x11

.field public static final blacklist TEAR_DOWN_REASON_HANDOVER_FAILED:I = 0xd

.field public static final blacklist TEAR_DOWN_REASON_HANDOVER_NOT_ALLOWED:I = 0xe

.field public static final blacklist TEAR_DOWN_REASON_ILLEGAL_STATE:I = 0x1c

.field public static final blacklist TEAR_DOWN_REASON_NONE:I = 0x0

.field public static final blacklist TEAR_DOWN_REASON_NOT_ALLOWED_BY_POLICY:I = 0x1b

.field public static final blacklist TEAR_DOWN_REASON_NOT_IN_SERVICE:I = 0x12

.field public static final blacklist TEAR_DOWN_REASON_NO_LIVE_REQUEST:I = 0x5

.field public static final blacklist TEAR_DOWN_REASON_NO_SUITABLE_DATA_PROFILE:I = 0x15

.field public static final blacklist TEAR_DOWN_REASON_ONLY_ALLOWED_SINGLE_NETWORK:I = 0x1d

.field public static final blacklist TEAR_DOWN_REASON_PENDING_TEAR_DOWN_ALL:I = 0x14

.field public static final blacklist TEAR_DOWN_REASON_POWER_OFF_BY_CARRIER:I = 0xb

.field public static final blacklist TEAR_DOWN_REASON_PREFERRED_DATA_SWITCHED:I = 0x1e

.field public static final blacklist TEAR_DOWN_REASON_RAT_NOT_ALLOWED:I = 0x6

.field public static final blacklist TEAR_DOWN_REASON_RETRY_SCHEDULED:I = 0x17

.field public static final blacklist TEAR_DOWN_REASON_ROAMING_DISABLED:I = 0x7

.field public static final blacklist TEAR_DOWN_REASON_SERVICE_OPTION_NOT_SUPPORTED:I = 0x9

.field public static final blacklist TEAR_DOWN_REASON_SIM_REMOVAL:I = 0x2

.field public static final blacklist TEAR_DOWN_REASON_VCN_REQUESTED:I = 0xf

.field public static final blacklist TEAR_DOWN_REASON_VOPS_NOT_SUPPORTED:I = 0x10


# instance fields
.field private final blacklist mAccessNetworksManager:Lcom/android/internal/telephony/data/AccessNetworksManager;

.field private blacklist mAccessNetworksManagerCallback:Lcom/android/internal/telephony/data/AccessNetworksManager$AccessNetworksManagerCallback;

.field private blacklist mAdministratorUids:[I

.field private final blacklist mAttachedNetworkRequestList:Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;

.field private blacklist mCarrierPrivilegesCallback:Landroid/telephony/TelephonyManager$CarrierPrivilegesCallback;

.field private blacklist mCarrierServicePackageUid:I

.field private final blacklist mCid:Landroid/util/SparseIntArray;

.field private blacklist mCongested:Z

.field private final blacklist mConnectedState:Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;

.field private final blacklist mConnectingState:Lcom/android/internal/telephony/data/DataNetwork$ConnectingState;

.field private final blacklist mDataAllowedReason:Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;

.field private blacklist mDataCallResponse:Landroid/telephony/data/DataCallResponse;

.field private final blacklist mDataCallSessionStats:Lcom/android/internal/telephony/metrics/DataCallSessionStats;

.field private final blacklist mDataConfigManager:Lcom/android/internal/telephony/data/DataConfigManager;

.field private blacklist mDataConfigManagerCallback:Lcom/android/internal/telephony/data/DataConfigManager$DataConfigManagerCallback;

.field private final blacklist mDataNetworkCallback:Lcom/android/internal/telephony/data/DataNetwork$DataNetworkCallback;

.field private final blacklist mDataNetworkController:Lcom/android/internal/telephony/data/DataNetworkController;

.field private final blacklist mDataNetworkControllerCallback:Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;

.field private final blacklist mDataNetworkValidationStats:Lcom/android/internal/telephony/metrics/DataNetworkValidationStats;

.field private blacklist mDataProfile:Landroid/telephony/data/DataProfile;

.field private final blacklist mDataServiceManagers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/internal/telephony/data/DataServiceManager;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mDataSettingsManagerCallback:Lcom/android/internal/telephony/data/DataSettingsManager$DataSettingsManagerCallback;

.field private blacklist mDefaultQos:Landroid/telephony/data/Qos;

.field private final blacklist mDefaultState:Lcom/android/internal/telephony/data/DataNetwork$DefaultState;

.field private final blacklist mDisconnectedState:Lcom/android/internal/telephony/data/DataNetwork$DisconnectedState;

.field private final blacklist mDisconnectingState:Lcom/android/internal/telephony/data/DataNetwork$DisconnectingState;

.field private blacklist mEverConnected:Z

.field private blacklist mFailCause:I

.field private final blacklist mFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

.field private blacklist mHandoverDataProfile:Landroid/telephony/data/DataProfile;

.field private final blacklist mHandoverState:Lcom/android/internal/telephony/data/DataNetwork$HandoverState;

.field private blacklist mInitialNetworkAgentId:I

.field private blacklist mInvokedDataDeactivation:Z

.field private final blacklist mIsSatellite:Z

.field private blacklist mKeepaliveTracker:Lcom/android/internal/telephony/data/KeepaliveTracker;

.field private blacklist mLastKnownDataNetworkType:I

.field private blacklist mLastKnownRoamingState:Z

.field private blacklist mLinkBandwidthEstimatorCallback:Lcom/android/internal/telephony/data/LinkBandwidthEstimator$LinkBandwidthEstimatorCallback;

.field private blacklist mLinkProperties:Landroid/net/LinkProperties;

.field private blacklist mLinkStatus:I

.field private final blacklist mLocalLog:Lcom/android/internal/telephony/LocalLog;

.field private blacklist mLogTag:Ljava/lang/String;

.field private blacklist mNetworkAgent:Lcom/android/internal/telephony/data/TelephonyNetworkAgent;

.field private blacklist mNetworkBandwidth:Lcom/android/internal/telephony/data/DataNetwork$NetworkBandwidth;

.field private blacklist mNetworkCapabilities:Landroid/net/NetworkCapabilities;

.field private blacklist mNetworkScore:Landroid/net/NetworkScore;

.field private blacklist mNetworkSliceInfo:Landroid/telephony/data/NetworkSliceInfo;

.field private blacklist mNetworkValidationResultCodeCallback:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mNetworkValidationStatus:I

.field private blacklist mOnPreferredDataPhone:Z

.field private final blacklist mPcoData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/telephony/PcoData;",
            ">;>;"
        }
    .end annotation
.end field

.field private blacklist mPduSessionId:I

.field private final blacklist mPhone:Lcom/android/internal/telephony/Phone;

.field private final blacklist mPhoneSwitcher:Lcom/android/internal/telephony/data/PhoneSwitcher;

.field private blacklist mPhoneSwitcherCallback:Lcom/android/internal/telephony/data/PhoneSwitcher$PhoneSwitcherCallback;

.field private blacklist mPreciseDataConnectionState:Landroid/telephony/PreciseDataConnectionState;

.field private final blacklist mQosBearerSessions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/data/QosBearerSession;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mQosCallbackTracker:Lcom/android/internal/telephony/data/QosCallbackTracker;

.field private blacklist mRetryDelayMillis:J

.field private final blacklist mRil:Lcom/android/internal/telephony/CommandsInterface;

.field private final blacklist mSubId:I

.field private blacklist mSuspended:Z

.field private blacklist mTcpBufferSizes:Ljava/lang/String;

.field private blacklist mTearDownReason:I

.field private blacklist mTelephonyDisplayInfo:Landroid/telephony/TelephonyDisplayInfo;

.field private blacklist mTempNotMetered:Z

.field private blacklist mTempNotMeteredSupported:Z

.field private final blacklist mTrafficDescriptors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/data/TrafficDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mTransport:I

.field private final blacklist mVcnManager:Landroid/net/vcn/VcnManager;

.field private blacklist mVcnPolicyChangeListener:Landroid/net/vcn/VcnManager$VcnNetworkPolicyChangeListener;


# direct methods
.method public static synthetic blacklist $r8$lambda$-NdktIKU6LQoloSDzfHZ47Jg9og(Lcom/android/internal/telephony/data/DataNetwork;Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetwork;->lambda$onAttachNetworkRequests$0(Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$21WTLUjq7qqUelvnfdmU435SLQ4(Landroid/net/LinkAddress;)Z
    .registers 1

    .line 2951
    invoke-virtual {p0}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object p0

    instance-of p0, p0, Ljava/net/Inet4Address;

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$4KrVV2TDIJoXUXRDFH0lusQrR4Q(Ljava/lang/Integer;)Ljava/util/Map;
    .registers 1

    .line 3798
    new-instance p0, Landroid/util/ArrayMap;

    invoke-direct {p0}, Landroid/util/ArrayMap;-><init>()V

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$6E-SKVwrY5QQ-jR4xE0AygJNA8k(Ljava/lang/Integer;)Z
    .registers 1

    .line 2384
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-ltz p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$ETmF1tnWWhjnFyVZo5XLYRxK7wY(Landroid/net/LinkAddress;)Z
    .registers 1

    .line 2960
    invoke-virtual {p0}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object p0

    instance-of p0, p0, Ljava/net/Inet6Address;

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$HfthCYVp4mRcluMaJUBw6afXnnQ(Lcom/android/internal/telephony/data/DataNetwork;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetwork;->lambda$onPcoDataChanged$15()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$JjEPZeOoK0CHCGApIZ-D1kL1joE(Lcom/android/internal/telephony/data/DataNetwork;I)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetwork;->lambda$tearDownWhenConditionMet$10(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$LuKEAd32t3jfUBIwN-HO9gkcDO0(Lcom/android/internal/telephony/data/DataNetwork;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetwork;->lambda$updateSuspendState$6()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$N90D7rtq1FKgUYT70fk0gcv-Iws(ILcom/android/internal/telephony/data/TelephonyNetworkRequest;)Z
    .registers 2

    .line 3855
    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->hasCapability(I)Z

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$OuyyTJbtYfyimR1lPce7xuU8Fg8(Landroid/net/LinkAddress;)Ljava/lang/Integer;
    .registers 3

    .line 2284
    invoke-virtual {p0}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    .line 2285
    invoke-virtual {p0}, Landroid/net/LinkAddress;->getPrefixLength()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0}, Landroid/net/LinkAddress;->getScope()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v0, v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 2284
    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$XbOtVrF6z-ddYEf_v5l5c0z4tbI(Ljava/lang/Integer;)Z
    .registers 1

    .line 3428
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/android/internal/telephony/data/DataUtils;->networkCapabilityToApnType(I)I

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$_dsVQFb94bdgxXdFq-tadK1ulks(Lcom/android/internal/telephony/data/DataNetwork;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetwork;->lambda$updateNetworkCapabilities$5()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$bDemWd7_dYPmO1x018r6cZ4ayMg(Lcom/android/internal/telephony/data/DataNetwork;JI)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/data/DataNetwork;->lambda$onHandoverResponse$14(JI)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$f1cGYCkxPNBonOxt7kyVD4qHBoU(Lcom/android/internal/telephony/data/DataNetwork;Lcom/android/internal/telephony/data/TelephonyNetworkRequest;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetwork;->lambda$onDetachNetworkRequest$1(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$nhyGD01w0d2Bf8nO7C6WTlxLnOo(Lcom/android/internal/telephony/data/DataNetwork;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetwork;->lambda$onHandoverResponse$13()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$qAh2u0VXXaeTRLcU7c-4hnlv7AU(Lcom/android/internal/telephony/data/DataNetwork;Ljava/lang/Integer;)Z
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetwork;->lambda$updateNetworkCapabilities$4(Ljava/lang/Integer;)Z

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$xYyXVm5IcKWpj2tGYcz1n0QnYR0(Lcom/android/internal/telephony/data/DataNetwork;Landroid/telephony/data/DataCallResponse;)Z
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetwork;->lambda$onDataStateChanged$11(Landroid/telephony/data/DataCallResponse;)Z

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$xrBLcLMqDyPxjNekHinVjQRqaDs(Lcom/android/internal/telephony/data/DataNetwork;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetwork;->lambda$updateDataNetwork$7()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmAccessNetworksManager(Lcom/android/internal/telephony/data/DataNetwork;)Lcom/android/internal/telephony/data/AccessNetworksManager;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mAccessNetworksManager:Lcom/android/internal/telephony/data/AccessNetworksManager;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmAccessNetworksManagerCallback(Lcom/android/internal/telephony/data/DataNetwork;)Lcom/android/internal/telephony/data/AccessNetworksManager$AccessNetworksManagerCallback;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mAccessNetworksManagerCallback:Lcom/android/internal/telephony/data/AccessNetworksManager$AccessNetworksManagerCallback;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmAttachedNetworkRequestList(Lcom/android/internal/telephony/data/DataNetwork;)Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mAttachedNetworkRequestList:Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCarrierPrivilegesCallback(Lcom/android/internal/telephony/data/DataNetwork;)Landroid/telephony/TelephonyManager$CarrierPrivilegesCallback;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mCarrierPrivilegesCallback:Landroid/telephony/TelephonyManager$CarrierPrivilegesCallback;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCid(Lcom/android/internal/telephony/data/DataNetwork;)Landroid/util/SparseIntArray;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mCid:Landroid/util/SparseIntArray;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmConnectedState(Lcom/android/internal/telephony/data/DataNetwork;)Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mConnectedState:Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDataCallSessionStats(Lcom/android/internal/telephony/data/DataNetwork;)Lcom/android/internal/telephony/metrics/DataCallSessionStats;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataCallSessionStats:Lcom/android/internal/telephony/metrics/DataCallSessionStats;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDataConfigManager(Lcom/android/internal/telephony/data/DataNetwork;)Lcom/android/internal/telephony/data/DataConfigManager;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataConfigManager:Lcom/android/internal/telephony/data/DataConfigManager;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDataConfigManagerCallback(Lcom/android/internal/telephony/data/DataNetwork;)Lcom/android/internal/telephony/data/DataConfigManager$DataConfigManagerCallback;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataConfigManagerCallback:Lcom/android/internal/telephony/data/DataConfigManager$DataConfigManagerCallback;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDataNetworkCallback(Lcom/android/internal/telephony/data/DataNetwork;)Lcom/android/internal/telephony/data/DataNetwork$DataNetworkCallback;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataNetworkCallback:Lcom/android/internal/telephony/data/DataNetwork$DataNetworkCallback;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDataNetworkController(Lcom/android/internal/telephony/data/DataNetwork;)Lcom/android/internal/telephony/data/DataNetworkController;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataNetworkController:Lcom/android/internal/telephony/data/DataNetworkController;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDataNetworkControllerCallback(Lcom/android/internal/telephony/data/DataNetwork;)Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataNetworkControllerCallback:Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDataNetworkValidationStats(Lcom/android/internal/telephony/data/DataNetwork;)Lcom/android/internal/telephony/metrics/DataNetworkValidationStats;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataNetworkValidationStats:Lcom/android/internal/telephony/metrics/DataNetworkValidationStats;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDataProfile(Lcom/android/internal/telephony/data/DataNetwork;)Landroid/telephony/data/DataProfile;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataProfile:Landroid/telephony/data/DataProfile;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDataServiceManagers(Lcom/android/internal/telephony/data/DataNetwork;)Landroid/util/SparseArray;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataServiceManagers:Landroid/util/SparseArray;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDataSettingsManagerCallback(Lcom/android/internal/telephony/data/DataNetwork;)Lcom/android/internal/telephony/data/DataSettingsManager$DataSettingsManagerCallback;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataSettingsManagerCallback:Lcom/android/internal/telephony/data/DataSettingsManager$DataSettingsManagerCallback;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDisconnectedState(Lcom/android/internal/telephony/data/DataNetwork;)Lcom/android/internal/telephony/data/DataNetwork$DisconnectedState;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDisconnectedState:Lcom/android/internal/telephony/data/DataNetwork$DisconnectedState;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDisconnectingState(Lcom/android/internal/telephony/data/DataNetwork;)Lcom/android/internal/telephony/data/DataNetwork$DisconnectingState;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDisconnectingState:Lcom/android/internal/telephony/data/DataNetwork$DisconnectingState;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmEverConnected(Lcom/android/internal/telephony/data/DataNetwork;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mEverConnected:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFailCause(Lcom/android/internal/telephony/data/DataNetwork;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mFailCause:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHandoverState(Lcom/android/internal/telephony/data/DataNetwork;)Lcom/android/internal/telephony/data/DataNetwork$HandoverState;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mHandoverState:Lcom/android/internal/telephony/data/DataNetwork$HandoverState;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmInitialNetworkAgentId(Lcom/android/internal/telephony/data/DataNetwork;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mInitialNetworkAgentId:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmInvokedDataDeactivation(Lcom/android/internal/telephony/data/DataNetwork;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mInvokedDataDeactivation:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLinkProperties(Lcom/android/internal/telephony/data/DataNetwork;)Landroid/net/LinkProperties;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mLinkProperties:Landroid/net/LinkProperties;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLinkStatus(Lcom/android/internal/telephony/data/DataNetwork;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mLinkStatus:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmNetworkAgent(Lcom/android/internal/telephony/data/DataNetwork;)Lcom/android/internal/telephony/data/TelephonyNetworkAgent;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mNetworkAgent:Lcom/android/internal/telephony/data/TelephonyNetworkAgent;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmNetworkCapabilities(Lcom/android/internal/telephony/data/DataNetwork;)Landroid/net/NetworkCapabilities;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOnPreferredDataPhone(Lcom/android/internal/telephony/data/DataNetwork;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mOnPreferredDataPhone:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPcoData(Lcom/android/internal/telephony/data/DataNetwork;)Ljava/util/Map;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mPcoData:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPduSessionId(Lcom/android/internal/telephony/data/DataNetwork;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mPduSessionId:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPhone(Lcom/android/internal/telephony/data/DataNetwork;)Lcom/android/internal/telephony/Phone;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPhoneSwitcher(Lcom/android/internal/telephony/data/DataNetwork;)Lcom/android/internal/telephony/data/PhoneSwitcher;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mPhoneSwitcher:Lcom/android/internal/telephony/data/PhoneSwitcher;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPhoneSwitcherCallback(Lcom/android/internal/telephony/data/DataNetwork;)Lcom/android/internal/telephony/data/PhoneSwitcher$PhoneSwitcherCallback;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mPhoneSwitcherCallback:Lcom/android/internal/telephony/data/PhoneSwitcher$PhoneSwitcherCallback;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmQosBearerSessions(Lcom/android/internal/telephony/data/DataNetwork;)Ljava/util/List;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mQosBearerSessions:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmQosCallbackTracker(Lcom/android/internal/telephony/data/DataNetwork;)Lcom/android/internal/telephony/data/QosCallbackTracker;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mQosCallbackTracker:Lcom/android/internal/telephony/data/QosCallbackTracker;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRetryDelayMillis(Lcom/android/internal/telephony/data/DataNetwork;)J
    .registers 3

    .line 0
    iget-wide v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mRetryDelayMillis:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRil(Lcom/android/internal/telephony/data/DataNetwork;)Lcom/android/internal/telephony/CommandsInterface;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mRil:Lcom/android/internal/telephony/CommandsInterface;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTearDownReason(Lcom/android/internal/telephony/data/DataNetwork;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mTearDownReason:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTransport(Lcom/android/internal/telephony/data/DataNetwork;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mTransport:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmVcnManager(Lcom/android/internal/telephony/data/DataNetwork;)Landroid/net/vcn/VcnManager;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mVcnManager:Landroid/net/vcn/VcnManager;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmVcnPolicyChangeListener(Lcom/android/internal/telephony/data/DataNetwork;)Landroid/net/vcn/VcnManager$VcnNetworkPolicyChangeListener;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mVcnPolicyChangeListener:Landroid/net/vcn/VcnManager$VcnNetworkPolicyChangeListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmAccessNetworksManagerCallback(Lcom/android/internal/telephony/data/DataNetwork;Lcom/android/internal/telephony/data/AccessNetworksManager$AccessNetworksManagerCallback;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mAccessNetworksManagerCallback:Lcom/android/internal/telephony/data/AccessNetworksManager$AccessNetworksManagerCallback;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmAdministratorUids(Lcom/android/internal/telephony/data/DataNetwork;[I)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mAdministratorUids:[I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmCarrierPrivilegesCallback(Lcom/android/internal/telephony/data/DataNetwork;Landroid/telephony/TelephonyManager$CarrierPrivilegesCallback;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mCarrierPrivilegesCallback:Landroid/telephony/TelephonyManager$CarrierPrivilegesCallback;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmCarrierServicePackageUid(Lcom/android/internal/telephony/data/DataNetwork;I)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mCarrierServicePackageUid:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmDataConfigManagerCallback(Lcom/android/internal/telephony/data/DataNetwork;Lcom/android/internal/telephony/data/DataConfigManager$DataConfigManagerCallback;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataConfigManagerCallback:Lcom/android/internal/telephony/data/DataConfigManager$DataConfigManagerCallback;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmDataSettingsManagerCallback(Lcom/android/internal/telephony/data/DataNetwork;Lcom/android/internal/telephony/data/DataSettingsManager$DataSettingsManagerCallback;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataSettingsManagerCallback:Lcom/android/internal/telephony/data/DataSettingsManager$DataSettingsManagerCallback;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmEverConnected(Lcom/android/internal/telephony/data/DataNetwork;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mEverConnected:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmFailCause(Lcom/android/internal/telephony/data/DataNetwork;I)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mFailCause:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmInitialNetworkAgentId(Lcom/android/internal/telephony/data/DataNetwork;I)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mInitialNetworkAgentId:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmKeepaliveTracker(Lcom/android/internal/telephony/data/DataNetwork;Lcom/android/internal/telephony/data/KeepaliveTracker;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mKeepaliveTracker:Lcom/android/internal/telephony/data/KeepaliveTracker;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmLastKnownDataNetworkType(Lcom/android/internal/telephony/data/DataNetwork;I)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mLastKnownDataNetworkType:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmLastKnownRoamingState(Lcom/android/internal/telephony/data/DataNetwork;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mLastKnownRoamingState:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmLinkStatus(Lcom/android/internal/telephony/data/DataNetwork;I)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mLinkStatus:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmLogTag(Lcom/android/internal/telephony/data/DataNetwork;Ljava/lang/String;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mLogTag:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmNetworkAgent(Lcom/android/internal/telephony/data/DataNetwork;Lcom/android/internal/telephony/data/TelephonyNetworkAgent;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mNetworkAgent:Lcom/android/internal/telephony/data/TelephonyNetworkAgent;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmNetworkValidationStatus(Lcom/android/internal/telephony/data/DataNetwork;I)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mNetworkValidationStatus:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmOnPreferredDataPhone(Lcom/android/internal/telephony/data/DataNetwork;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mOnPreferredDataPhone:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmPduSessionId(Lcom/android/internal/telephony/data/DataNetwork;I)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mPduSessionId:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmPhoneSwitcherCallback(Lcom/android/internal/telephony/data/DataNetwork;Lcom/android/internal/telephony/data/PhoneSwitcher$PhoneSwitcherCallback;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mPhoneSwitcherCallback:Lcom/android/internal/telephony/data/PhoneSwitcher$PhoneSwitcherCallback;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmQosCallbackTracker(Lcom/android/internal/telephony/data/DataNetwork;Lcom/android/internal/telephony/data/QosCallbackTracker;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mQosCallbackTracker:Lcom/android/internal/telephony/data/QosCallbackTracker;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmRetryDelayMillis(Lcom/android/internal/telephony/data/DataNetwork;J)V
    .registers 3

    .line 0
    iput-wide p1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mRetryDelayMillis:J

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmVcnPolicyChangeListener(Lcom/android/internal/telephony/data/DataNetwork;Landroid/net/vcn/VcnManager$VcnNetworkPolicyChangeListener;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mVcnPolicyChangeListener:Landroid/net/vcn/VcnManager$VcnNetworkPolicyChangeListener;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mallocatePduSessionId(Lcom/android/internal/telephony/data/DataNetwork;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetwork;->allocatePduSessionId()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mcreateNetworkAgent(Lcom/android/internal/telephony/data/DataNetwork;)Lcom/android/internal/telephony/data/TelephonyNetworkAgent;
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetwork;->createNetworkAgent()Lcom/android/internal/telephony/data/TelephonyNetworkAgent;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetDataNetworkType(Lcom/android/internal/telephony/data/DataNetwork;)I
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetwork;->getDataNetworkType()I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetFailCauseFromDataCallResponse(Lcom/android/internal/telephony/data/DataNetwork;ILandroid/telephony/data/DataCallResponse;)I
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/data/DataNetwork;->getFailCauseFromDataCallResponse(ILandroid/telephony/data/DataCallResponse;)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetNetworkRegistrationInfo(Lcom/android/internal/telephony/data/DataNetwork;)Landroid/telephony/NetworkRegistrationInfo;
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetwork;->getNetworkRegistrationInfo()Landroid/telephony/NetworkRegistrationInfo;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleDataNetworkValidationRequest(Lcom/android/internal/telephony/data/DataNetwork;Ljava/util/function/Consumer;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetwork;->handleDataNetworkValidationRequest(Ljava/util/function/Consumer;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleDataNetworkValidationRequestResultCode(Lcom/android/internal/telephony/data/DataNetwork;I)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetwork;->handleDataNetworkValidationRequestResultCode(I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleErrorDataNetworkValidationRequest(Lcom/android/internal/telephony/data/DataNetwork;Ljava/util/function/Consumer;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetwork;->handleErrorDataNetworkValidationRequest(Ljava/util/function/Consumer;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mlogl(Lcom/android/internal/telephony/data/DataNetwork;Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetwork;->logl(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mnotifyPreciseDataConnectionState(Lcom/android/internal/telephony/data/DataNetwork;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetwork;->notifyPreciseDataConnectionState()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monBandwidthUpdated(Lcom/android/internal/telephony/data/DataNetwork;II)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/data/DataNetwork;->onBandwidthUpdated(II)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monBandwidthUpdatedFromModem(Lcom/android/internal/telephony/data/DataNetwork;Ljava/util/List;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetwork;->onBandwidthUpdatedFromModem(Ljava/util/List;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monCarrierConfigUpdated(Lcom/android/internal/telephony/data/DataNetwork;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetwork;->onCarrierConfigUpdated()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monDataStateChanged(Lcom/android/internal/telephony/data/DataNetwork;ILjava/util/List;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/data/DataNetwork;->onDataStateChanged(ILjava/util/List;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monDeactivateResponse(Lcom/android/internal/telephony/data/DataNetwork;I)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetwork;->onDeactivateResponse(I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monDetachNetworkRequest(Lcom/android/internal/telephony/data/DataNetwork;Lcom/android/internal/telephony/data/TelephonyNetworkRequest;Z)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/data/DataNetwork;->onDetachNetworkRequest(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;Z)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monDisplayInfoChanged(Lcom/android/internal/telephony/data/DataNetwork;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetwork;->onDisplayInfoChanged()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monHandoverResponse(Lcom/android/internal/telephony/data/DataNetwork;ILandroid/telephony/data/DataCallResponse;Lcom/android/internal/telephony/data/DataRetryManager$DataHandoverRetryEntry;)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/data/DataNetwork;->onHandoverResponse(ILandroid/telephony/data/DataCallResponse;Lcom/android/internal/telephony/data/DataRetryManager$DataHandoverRetryEntry;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monPcoDataChanged(Lcom/android/internal/telephony/data/DataNetwork;Landroid/telephony/PcoData;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetwork;->onPcoDataChanged(Landroid/telephony/PcoData;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monPcoDataReceived(Lcom/android/internal/telephony/data/DataNetwork;Landroid/telephony/PcoData;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetwork;->onPcoDataReceived(Landroid/telephony/PcoData;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monStartHandover(Lcom/android/internal/telephony/data/DataNetwork;ILcom/android/internal/telephony/data/DataRetryManager$DataHandoverRetryEntry;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/data/DataNetwork;->onStartHandover(ILcom/android/internal/telephony/data/DataRetryManager$DataHandoverRetryEntry;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monTearDown(Lcom/android/internal/telephony/data/DataNetwork;I)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetwork;->onTearDown(I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mregisterForWwanEvents(Lcom/android/internal/telephony/data/DataNetwork;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetwork;->registerForWwanEvents()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mreportAnomaly(Lcom/android/internal/telephony/data/DataNetwork;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/data/DataNetwork;->reportAnomaly(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$munregisterForWwanEvents(Lcom/android/internal/telephony/data/DataNetwork;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetwork;->unregisterForWwanEvents()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mupdateDataNetwork(Lcom/android/internal/telephony/data/DataNetwork;Landroid/telephony/data/DataCallResponse;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetwork;->updateDataNetwork(Landroid/telephony/data/DataCallResponse;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mupdateMeteredAndCongested(Lcom/android/internal/telephony/data/DataNetwork;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetwork;->updateMeteredAndCongested()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mupdateNetworkCapabilities(Lcom/android/internal/telephony/data/DataNetwork;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetwork;->updateNetworkCapabilities()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mupdateNetworkScore(Lcom/android/internal/telephony/data/DataNetwork;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetwork;->updateNetworkScore()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mupdateNetworkScore(Lcom/android/internal/telephony/data/DataNetwork;Z)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetwork;->updateNetworkScore(Z)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mupdateSuspendState(Lcom/android/internal/telephony/data/DataNetwork;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetwork;->updateSuspendState()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mvalidateDataCallResponse(Lcom/android/internal/telephony/data/DataNetwork;Landroid/telephony/data/DataCallResponse;I)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/data/DataNetwork;->validateDataCallResponse(Landroid/telephony/data/DataCallResponse;I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smeventToString(I)Ljava/lang/String;
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/android/internal/telephony/data/DataNetwork;->eventToString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 15

    const/16 v0, 0xe

    .line 450
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v0, 0x10

    .line 451
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v0, 0x11

    .line 452
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v0, 0x12

    .line 453
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v0, 0x13

    .line 454
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v0, 0x14

    .line 455
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/16 v0, 0x15

    .line 456
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/16 v0, 0x18

    .line 457
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/16 v0, 0x19

    .line 458
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/16 v0, 0x1c

    .line 459
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/16 v0, 0x20

    .line 460
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/16 v0, 0xb

    .line 463
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/16 v0, 0x21

    .line 467
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/4 v0, 0x0

    .line 470
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    filled-new-array/range {v1 .. v14}, [Ljava/lang/Integer;

    move-result-object v0

    .line 449
    invoke-static {v0}, Ljava/util/List;->of([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/data/DataNetwork;->MUTABLE_CAPABILITIES:Ljava/util/List;

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;Landroid/os/Looper;Landroid/util/SparseArray;Landroid/telephony/data/DataProfile;Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;ILcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;Lcom/android/internal/telephony/data/DataNetwork$DataNetworkCallback;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/Phone;",
            "Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;",
            "Landroid/os/Looper;",
            "Landroid/util/SparseArray<",
            "Lcom/android/internal/telephony/data/DataServiceManager;",
            ">;",
            "Landroid/telephony/data/DataProfile;",
            "Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;",
            "I",
            "Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;",
            "Lcom/android/internal/telephony/data/DataNetwork$DataNetworkCallback;",
            ")V"
        }
    .end annotation

    .line 1036
    const-string v0, "DataNetwork"

    invoke-direct {p0, v0, p3}, Lcom/android/internal/telephony/StateMachine;-><init>(Ljava/lang/String;Landroid/os/Looper;)V

    .line 474
    new-instance p3, Lcom/android/internal/telephony/data/DataNetwork$DefaultState;

    const/4 v0, 0x0

    invoke-direct {p3, p0, v0}, Lcom/android/internal/telephony/data/DataNetwork$DefaultState;-><init>(Lcom/android/internal/telephony/data/DataNetwork;Lcom/android/internal/telephony/data/DataNetwork-IA;)V

    iput-object p3, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDefaultState:Lcom/android/internal/telephony/data/DataNetwork$DefaultState;

    .line 481
    new-instance p3, Lcom/android/internal/telephony/data/DataNetwork$ConnectingState;

    invoke-direct {p3, p0, v0}, Lcom/android/internal/telephony/data/DataNetwork$ConnectingState;-><init>(Lcom/android/internal/telephony/data/DataNetwork;Lcom/android/internal/telephony/data/DataNetwork-IA;)V

    iput-object p3, p0, Lcom/android/internal/telephony/data/DataNetwork;->mConnectingState:Lcom/android/internal/telephony/data/DataNetwork$ConnectingState;

    .line 488
    new-instance p3, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;

    invoke-direct {p3, p0, v0}, Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;-><init>(Lcom/android/internal/telephony/data/DataNetwork;Lcom/android/internal/telephony/data/DataNetwork-IA;)V

    iput-object p3, p0, Lcom/android/internal/telephony/data/DataNetwork;->mConnectedState:Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;

    .line 495
    new-instance p3, Lcom/android/internal/telephony/data/DataNetwork$HandoverState;

    invoke-direct {p3, p0, v0}, Lcom/android/internal/telephony/data/DataNetwork$HandoverState;-><init>(Lcom/android/internal/telephony/data/DataNetwork;Lcom/android/internal/telephony/data/DataNetwork-IA;)V

    iput-object p3, p0, Lcom/android/internal/telephony/data/DataNetwork;->mHandoverState:Lcom/android/internal/telephony/data/DataNetwork$HandoverState;

    .line 505
    new-instance p3, Lcom/android/internal/telephony/data/DataNetwork$DisconnectingState;

    invoke-direct {p3, p0, v0}, Lcom/android/internal/telephony/data/DataNetwork$DisconnectingState;-><init>(Lcom/android/internal/telephony/data/DataNetwork;Lcom/android/internal/telephony/data/DataNetwork-IA;)V

    iput-object p3, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDisconnectingState:Lcom/android/internal/telephony/data/DataNetwork$DisconnectingState;

    .line 512
    new-instance p3, Lcom/android/internal/telephony/data/DataNetwork$DisconnectedState;

    invoke-direct {p3, p0, v0}, Lcom/android/internal/telephony/data/DataNetwork$DisconnectedState;-><init>(Lcom/android/internal/telephony/data/DataNetwork;Lcom/android/internal/telephony/data/DataNetwork-IA;)V

    iput-object p3, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDisconnectedState:Lcom/android/internal/telephony/data/DataNetwork$DisconnectedState;

    const/4 p3, 0x0

    .line 537
    iput-boolean p3, p0, Lcom/android/internal/telephony/data/DataNetwork;->mInvokedDataDeactivation:Z

    .line 542
    iput-boolean p3, p0, Lcom/android/internal/telephony/data/DataNetwork;->mEverConnected:Z

    .line 549
    new-instance v1, Lcom/android/internal/telephony/LocalLog;

    const/16 v2, 0x80

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/LocalLog;-><init>(I)V

    iput-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    .line 571
    new-instance v1, Landroid/util/SparseIntArray;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mCid:Landroid/util/SparseIntArray;

    .line 581
    iput p3, p0, Lcom/android/internal/telephony/data/DataNetwork;->mPduSessionId:I

    .line 651
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mTrafficDescriptors:Ljava/util/List;

    const/4 v2, -0x1

    .line 663
    iput v2, p0, Lcom/android/internal/telephony/data/DataNetwork;->mLinkStatus:I

    .line 667
    new-instance v3, Lcom/android/internal/telephony/data/DataNetwork$NetworkBandwidth;

    const/16 v4, 0xe

    invoke-direct {v3, v4, v4}, Lcom/android/internal/telephony/data/DataNetwork$NetworkBandwidth;-><init>(II)V

    iput-object v3, p0, Lcom/android/internal/telephony/data/DataNetwork;->mNetworkBandwidth:Lcom/android/internal/telephony/data/DataNetwork$NetworkBandwidth;

    .line 679
    iput-boolean p3, p0, Lcom/android/internal/telephony/data/DataNetwork;->mTempNotMeteredSupported:Z

    .line 682
    iput-boolean p3, p0, Lcom/android/internal/telephony/data/DataNetwork;->mTempNotMetered:Z

    .line 685
    iput-boolean p3, p0, Lcom/android/internal/telephony/data/DataNetwork;->mCongested:Z

    .line 695
    new-instance v3, Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;

    invoke-direct {v3}, Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;-><init>()V

    iput-object v3, p0, Lcom/android/internal/telephony/data/DataNetwork;->mAttachedNetworkRequestList:Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;

    .line 705
    iput-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataCallResponse:Landroid/telephony/data/DataCallResponse;

    .line 712
    iput p3, p0, Lcom/android/internal/telephony/data/DataNetwork;->mFailCause:I

    .line 718
    iput p3, p0, Lcom/android/internal/telephony/data/DataNetwork;->mTearDownReason:I

    const-wide/16 v3, -0x1

    .line 724
    iput-wide v3, p0, Lcom/android/internal/telephony/data/DataNetwork;->mRetryDelayMillis:J

    .line 733
    iput-boolean p3, p0, Lcom/android/internal/telephony/data/DataNetwork;->mSuspended:Z

    .line 766
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mPcoData:Ljava/util/Map;

    .line 770
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mQosBearerSessions:Ljava/util/List;

    .line 780
    new-array v0, p3, [I

    iput-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mAdministratorUids:[I

    .line 790
    iput v2, p0, Lcom/android/internal/telephony/data/DataNetwork;->mCarrierServicePackageUid:I

    .line 808
    iput p3, p0, Lcom/android/internal/telephony/data/DataNetwork;->mNetworkValidationStatus:I

    .line 1040
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetwork;->initializeStateMachine()V

    .line 1042
    iput-object p1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 1043
    iput-object p2, p0, Lcom/android/internal/telephony/data/DataNetwork;->mFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

    .line 1044
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result p2

    iput p2, p0, Lcom/android/internal/telephony/data/DataNetwork;->mSubId:I

    .line 1045
    iget-object p2, p1, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iput-object p2, p0, Lcom/android/internal/telephony/data/DataNetwork;->mRil:Lcom/android/internal/telephony/CommandsInterface;

    .line 1046
    new-instance p2, Landroid/net/LinkProperties;

    invoke-direct {p2}, Landroid/net/LinkProperties;-><init>()V

    iput-object p2, p0, Lcom/android/internal/telephony/data/DataNetwork;->mLinkProperties:Landroid/net/LinkProperties;

    .line 1047
    iput-object p4, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataServiceManagers:Landroid/util/SparseArray;

    .line 1048
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getAccessNetworksManager()Lcom/android/internal/telephony/data/AccessNetworksManager;

    move-result-object p2

    iput-object p2, p0, Lcom/android/internal/telephony/data/DataNetwork;->mAccessNetworksManager:Lcom/android/internal/telephony/data/AccessNetworksManager;

    .line 1049
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p4

    const-class v0, Landroid/net/vcn/VcnManager;

    invoke-virtual {p4, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/net/vcn/VcnManager;

    iput-object p4, p0, Lcom/android/internal/telephony/data/DataNetwork;->mVcnManager:Landroid/net/vcn/VcnManager;

    .line 1050
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getDataNetworkController()Lcom/android/internal/telephony/data/DataNetworkController;

    move-result-object p4

    iput-object p4, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataNetworkController:Lcom/android/internal/telephony/data/DataNetworkController;

    .line 1051
    invoke-static {}, Lcom/android/internal/telephony/data/PhoneSwitcher;->getInstance()Lcom/android/internal/telephony/data/PhoneSwitcher;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mPhoneSwitcher:Lcom/android/internal/telephony/data/PhoneSwitcher;

    .line 1052
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v3

    invoke-virtual {v0}, Lcom/android/internal/telephony/data/PhoneSwitcher;->getPreferredDataPhoneId()I

    move-result v0

    const/4 v4, 0x1

    if-ne v3, v0, :cond_d1

    move v0, v4

    goto :goto_d2

    :cond_d1
    move v0, p3

    :goto_d2
    iput-boolean v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mOnPreferredDataPhone:Z

    .line 1053
    new-instance v0, Lcom/android/internal/telephony/data/DataNetwork$1;

    .line 1054
    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Lcom/android/internal/telephony/NetworkTypeController$$ExternalSyntheticLambda0;

    invoke-direct {v5, v3}, Lcom/android/internal/telephony/NetworkTypeController$$ExternalSyntheticLambda0;-><init>(Landroid/os/Handler;)V

    invoke-direct {v0, p0, v5}, Lcom/android/internal/telephony/data/DataNetwork$1;-><init>(Lcom/android/internal/telephony/data/DataNetwork;Ljava/util/concurrent/Executor;)V

    iput-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataNetworkControllerCallback:Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;

    .line 1059
    invoke-virtual {p4, v0}, Lcom/android/internal/telephony/data/DataNetworkController;->registerDataNetworkControllerCallback(Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;)V

    .line 1061
    invoke-virtual {p4}, Lcom/android/internal/telephony/data/DataNetworkController;->getDataConfigManager()Lcom/android/internal/telephony/data/DataConfigManager;

    move-result-object p4

    iput-object p4, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataConfigManager:Lcom/android/internal/telephony/data/DataConfigManager;

    .line 1062
    new-instance p4, Lcom/android/internal/telephony/metrics/DataCallSessionStats;

    invoke-direct {p4, p1}, Lcom/android/internal/telephony/metrics/DataCallSessionStats;-><init>(Lcom/android/internal/telephony/Phone;)V

    iput-object p4, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataCallSessionStats:Lcom/android/internal/telephony/metrics/DataCallSessionStats;

    .line 1063
    new-instance p4, Lcom/android/internal/telephony/metrics/DataNetworkValidationStats;

    invoke-direct {p4, p1}, Lcom/android/internal/telephony/metrics/DataNetworkValidationStats;-><init>(Lcom/android/internal/telephony/Phone;)V

    iput-object p4, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataNetworkValidationStats:Lcom/android/internal/telephony/metrics/DataNetworkValidationStats;

    .line 1064
    iput-object p9, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataNetworkCallback:Lcom/android/internal/telephony/data/DataNetwork$DataNetworkCallback;

    .line 1065
    iput-object p5, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataProfile:Landroid/telephony/data/DataProfile;

    .line 1066
    invoke-virtual {p5}, Landroid/telephony/data/DataProfile;->getTrafficDescriptor()Landroid/telephony/data/TrafficDescriptor;

    move-result-object p4

    if-eqz p4, :cond_10f

    .line 1070
    invoke-virtual {p5}, Landroid/telephony/data/DataProfile;->getTrafficDescriptor()Landroid/telephony/data/TrafficDescriptor;

    move-result-object p4

    invoke-interface {v1, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1072
    :cond_10f
    iput p7, p0, Lcom/android/internal/telephony/data/DataNetwork;->mTransport:I

    .line 1073
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetwork;->getDataNetworkType()I

    move-result p4

    iput p4, p0, Lcom/android/internal/telephony/data/DataNetwork;->mLastKnownDataNetworkType:I

    .line 1074
    invoke-interface {p1}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object p4

    invoke-virtual {p4}, Landroid/telephony/ServiceState;->getDataRoamingFromRegistration()Z

    move-result p4

    iput-boolean p4, p0, Lcom/android/internal/telephony/data/DataNetwork;->mLastKnownRoamingState:Z

    .line 1075
    invoke-interface {p1}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object p1

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->isUsingNonTerrestrialNetwork()Z

    move-result p1

    if-eqz p1, :cond_12f

    if-ne p7, v4, :cond_12f

    move p1, v4

    goto :goto_130

    :cond_12f
    move p1, p3

    :goto_130
    iput-boolean p1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mIsSatellite:Z

    .line 1077
    iput-object p8, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataAllowedReason:Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;

    .line 1078
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p7

    invoke-virtual {p5, p7, p8}, Landroid/telephony/data/DataProfile;->setLastSetupTimestamp(J)V

    .line 1079
    invoke-virtual {p2}, Lcom/android/internal/telephony/data/AccessNetworksManager;->getAvailableTransports()[I

    move-result-object p1

    array-length p2, p1

    :goto_140
    if-ge p3, p2, :cond_14c

    aget p4, p1, p3

    .line 1080
    iget-object p5, p0, Lcom/android/internal/telephony/data/DataNetwork;->mCid:Landroid/util/SparseIntArray;

    invoke-virtual {p5, p4, v2}, Landroid/util/SparseIntArray;->put(II)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_140

    .line 1082
    :cond_14c
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getDisplayInfoController()Lcom/android/internal/telephony/DisplayInfoController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/telephony/DisplayInfoController;->getTelephonyDisplayInfo()Landroid/telephony/TelephonyDisplayInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mTelephonyDisplayInfo:Landroid/telephony/TelephonyDisplayInfo;

    .line 1083
    iget-object p2, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataConfigManager:Lcom/android/internal/telephony/data/DataConfigManager;

    invoke-virtual {p2, p1}, Lcom/android/internal/telephony/data/DataConfigManager;->getTcpConfigString(Landroid/telephony/TelephonyDisplayInfo;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mTcpBufferSizes:Ljava/lang/String;

    .line 1091
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mAttachedNetworkRequestList:Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;

    invoke-virtual {p1, p6}, Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;->addAll(Ljava/util/Collection;)Z

    .line 1096
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetwork;->updateNetworkCapabilities()V

    .line 1099
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mAttachedNetworkRequestList:Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->listIterator()Ljava/util/ListIterator;

    move-result-object p1

    .line 1100
    :goto_16e
    invoke-interface {p1}, Ljava/util/ListIterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_18d

    .line 1101
    invoke-interface {p1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;

    .line 1102
    iget-object p3, p0, Lcom/android/internal/telephony/data/DataNetwork;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {p2, p3}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->canBeSatisfiedBy(Landroid/net/NetworkCapabilities;)Z

    move-result p3

    if-eqz p3, :cond_189

    .line 1103
    invoke-virtual {p2, p0}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->setAttachedNetwork(Lcom/android/internal/telephony/data/DataNetwork;)V

    .line 1104
    invoke-virtual {p2, v4}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->setState(I)V

    goto :goto_16e

    .line 1106
    :cond_189
    invoke-interface {p1}, Ljava/util/ListIterator;->remove()V

    goto :goto_16e

    :cond_18d
    return-void
.end method

.method static synthetic blacklist access$000(Lcom/android/internal/telephony/data/DataNetwork;I)V
    .registers 2

    .line 171
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->removeMessages(I)V

    return-void
.end method

.method static synthetic blacklist access$100(Lcom/android/internal/telephony/data/DataNetwork;I)V
    .registers 2

    .line 171
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->removeMessages(I)V

    return-void
.end method

.method static synthetic blacklist access$200(Lcom/android/internal/telephony/data/DataNetwork;I)V
    .registers 2

    .line 171
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->removeMessages(I)V

    return-void
.end method

.method static synthetic blacklist access$300(Lcom/android/internal/telephony/data/DataNetwork;I)V
    .registers 2

    .line 171
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->removeDeferredMessages(I)V

    return-void
.end method

.method static synthetic blacklist access$400(Lcom/android/internal/telephony/data/DataNetwork;I)V
    .registers 2

    .line 171
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->removeMessages(I)V

    return-void
.end method

.method static synthetic blacklist access$500(Lcom/android/internal/telephony/data/DataNetwork;I)V
    .registers 2

    .line 171
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->removeMessages(I)V

    return-void
.end method

.method static synthetic blacklist access$600(Lcom/android/internal/telephony/data/DataNetwork;I)V
    .registers 2

    .line 171
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->removeMessages(I)V

    return-void
.end method

.method static synthetic blacklist access$700(Lcom/android/internal/telephony/data/DataNetwork;I)V
    .registers 2

    .line 171
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->removeMessages(I)V

    return-void
.end method

.method static synthetic blacklist access$800(Lcom/android/internal/telephony/data/DataNetwork;I)V
    .registers 2

    .line 171
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->removeDeferredMessages(I)V

    return-void
.end method

.method private blacklist allocatePduSessionId()V
    .registers 3

    .line 2715
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mRil:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/StateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->allocatePduSessionId(Landroid/os/Message;)V

    return-void
.end method

.method private static blacklist areImmutableCapabilitiesChanged(Landroid/net/NetworkCapabilities;Landroid/net/NetworkCapabilities;)Z
    .registers 5

    .line 2313
    invoke-virtual {p0}, Landroid/net/NetworkCapabilities;->getCapabilities()[I

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    return v1

    .line 2317
    :cond_c
    invoke-virtual {p0}, Landroid/net/NetworkCapabilities;->getCapabilities()[I

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object p0

    .line 2318
    invoke-interface {p0}, Ljava/util/stream/IntStream;->boxed()Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    .line 2319
    sget-object v0, Lcom/android/internal/telephony/data/DataNetwork;->MUTABLE_CAPABILITIES:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 2320
    invoke-virtual {p1}, Landroid/net/NetworkCapabilities;->getCapabilities()[I

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object p1

    .line 2321
    invoke-interface {p1}, Ljava/util/stream/IntStream;->boxed()Ljava/util/stream/Stream;

    move-result-object p1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 2322
    invoke-interface {p1, v0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 2323
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ne v0, v2, :cond_52

    .line 2324
    invoke-interface {p0, p1}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result p0

    if-nez p0, :cond_51

    goto :goto_52

    :cond_51
    return v1

    :cond_52
    :goto_52
    const/4 p0, 0x1

    return p0
.end method

.method private blacklist createNetworkAgent()Lcom/android/internal/telephony/data/TelephonyNetworkAgent;
    .registers 12

    .line 1154
    new-instance v0, Landroid/net/NetworkAgentConfig$Builder;

    invoke-direct {v0}, Landroid/net/NetworkAgentConfig$Builder;-><init>()V

    const/4 v1, 0x0

    .line 1155
    invoke-virtual {v0, v1}, Landroid/net/NetworkAgentConfig$Builder;->setLegacyType(I)Landroid/net/NetworkAgentConfig$Builder;

    .line 1156
    const-string v2, "MOBILE"

    invoke-virtual {v0, v2}, Landroid/net/NetworkAgentConfig$Builder;->setLegacyTypeName(Ljava/lang/String;)Landroid/net/NetworkAgentConfig$Builder;

    .line 1157
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetwork;->getDataNetworkType()I

    move-result v2

    .line 1158
    invoke-virtual {v0, v2}, Landroid/net/NetworkAgentConfig$Builder;->setLegacySubType(I)Landroid/net/NetworkAgentConfig$Builder;

    .line 1159
    invoke-static {v2}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/net/NetworkAgentConfig$Builder;->setLegacySubTypeName(Ljava/lang/String;)Landroid/net/NetworkAgentConfig$Builder;

    .line 1160
    iget-object v2, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataProfile:Landroid/telephony/data/DataProfile;

    invoke-virtual {v2}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v2

    if-eqz v2, :cond_31

    .line 1161
    iget-object v2, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataProfile:Landroid/telephony/data/DataProfile;

    invoke-virtual {v2}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/data/ApnSetting;->getApnName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/net/NetworkAgentConfig$Builder;->setLegacyExtraInfo(Ljava/lang/String;)Landroid/net/NetworkAgentConfig$Builder;

    .line 1164
    :cond_31
    iget-object v2, p0, Lcom/android/internal/telephony/data/DataNetwork;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getCarrierSignalAgent()Lcom/android/internal/telephony/CarrierSignalAgent;

    move-result-object v2

    .line 1165
    const-string v3, "android.telephony.action.CARRIER_SIGNAL_REDIRECTED"

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/CarrierSignalAgent;->hasRegisteredReceivers(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_42

    .line 1168
    invoke-virtual {v0, v1}, Landroid/net/NetworkAgentConfig$Builder;->setProvisioningNotificationEnabled(Z)Landroid/net/NetworkAgentConfig$Builder;

    .line 1172
    :cond_42
    iget-object v2, p0, Lcom/android/internal/telephony/data/DataNetwork;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/PhoneInternalInterface;->getSubscriberId()Ljava/lang/String;

    move-result-object v2

    .line 1173
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_51

    .line 1174
    invoke-virtual {v0, v2}, Landroid/net/NetworkAgentConfig$Builder;->setSubscriberId(Ljava/lang/String;)Landroid/net/NetworkAgentConfig$Builder;

    .line 1178
    :cond_51
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetwork;->shouldSkip464Xlat()Z

    move-result v2

    if-eqz v2, :cond_5a

    .line 1179
    invoke-virtual {v0, v1}, Landroid/net/NetworkAgentConfig$Builder;->setNat64DetectionEnabled(Z)Landroid/net/NetworkAgentConfig$Builder;

    .line 1183
    :cond_5a
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getNetworkProvider()Lcom/android/internal/telephony/data/TelephonyNetworkProvider;

    move-result-object v9

    .line 1185
    new-instance v1, Landroid/net/NetworkScore$Builder;

    invoke-direct {v1}, Landroid/net/NetworkScore$Builder;-><init>()V

    .line 1186
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataNetwork;->isHandoverInProgress()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/net/NetworkScore$Builder;->setKeepConnectedReason(I)Landroid/net/NetworkScore$Builder;

    move-result-object v1

    .line 1189
    iget-boolean v2, p0, Lcom/android/internal/telephony/data/DataNetwork;->mOnPreferredDataPhone:Z

    invoke-virtual {v1, v2}, Landroid/net/NetworkScore$Builder;->setTransportPrimary(Z)Landroid/net/NetworkScore$Builder;

    .line 1190
    invoke-virtual {v1}, Landroid/net/NetworkScore$Builder;->build()Landroid/net/NetworkScore;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mNetworkScore:Landroid/net/NetworkScore;

    .line 1191
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mNetworkScore: isPrimary="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/data/DataNetwork;->mNetworkScore:Landroid/net/NetworkScore;

    invoke-virtual {v2}, Landroid/net/NetworkScore;->isTransportPrimary()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", keepConnectedReason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/data/DataNetwork;->mNetworkScore:Landroid/net/NetworkScore;

    .line 1192
    invoke-virtual {v2}, Landroid/net/NetworkScore;->getKeepConnectedReason()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1191
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/data/DataNetwork;->logl(Ljava/lang/String;)V

    .line 1194
    new-instance v3, Lcom/android/internal/telephony/data/TelephonyNetworkAgent;

    iget-object v4, p0, Lcom/android/internal/telephony/data/DataNetwork;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v5

    iget-object v7, p0, Lcom/android/internal/telephony/data/DataNetwork;->mNetworkScore:Landroid/net/NetworkScore;

    .line 1195
    invoke-virtual {v0}, Landroid/net/NetworkAgentConfig$Builder;->build()Landroid/net/NetworkAgentConfig;

    move-result-object v8

    new-instance v10, Lcom/android/internal/telephony/data/DataNetwork$2;

    .line 1196
    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/android/internal/telephony/NetworkTypeController$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/android/internal/telephony/NetworkTypeController$$ExternalSyntheticLambda0;-><init>(Landroid/os/Handler;)V

    invoke-direct {v10, p0, v1}, Lcom/android/internal/telephony/data/DataNetwork$2;-><init>(Lcom/android/internal/telephony/data/DataNetwork;Ljava/util/concurrent/Executor;)V

    move-object v6, p0

    invoke-direct/range {v3 .. v10}, Lcom/android/internal/telephony/data/TelephonyNetworkAgent;-><init>(Lcom/android/internal/telephony/Phone;Landroid/os/Looper;Lcom/android/internal/telephony/data/DataNetwork;Landroid/net/NetworkScore;Landroid/net/NetworkAgentConfig;Landroid/net/NetworkProvider;Lcom/android/internal/telephony/data/TelephonyNetworkAgent$TelephonyNetworkAgentCallback;)V

    return-object v3
.end method

.method private static blacklist eventToString(I)Ljava/lang/String;
    .registers 3

    packed-switch p0, :pswitch_data_6e

    .line 4031
    :pswitch_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 4030
    :pswitch_1a
    const-string p0, "EVENT_DATA_NETWORK_VALIDATION_RESPONSE"

    return-object p0

    .line 4029
    :pswitch_1d
    const-string p0, "EVENT_DATA_NETWORK_VALIDATION_REQUESTED"

    return-object p0

    .line 4027
    :pswitch_20
    const-string p0, "EVENT_NOTIFY_HANDOVER_CANCELLED_RESPONSE"

    return-object p0

    .line 4025
    :pswitch_23
    const-string p0, "EVENT_NOTIFY_HANDOVER_STARTED_RESPONSE"

    return-object p0

    .line 4024
    :pswitch_26
    const-string p0, "EVENT_NOTIFY_HANDOVER_STARTED"

    return-object p0

    .line 4023
    :pswitch_29
    const-string p0, "EVENT_CSS_INDICATOR_CHANGED"

    return-object p0

    .line 4022
    :pswitch_2c
    const-string p0, "EVENT_VOICE_CALL_ENDED"

    return-object p0

    .line 4021
    :pswitch_2f
    const-string p0, "EVENT_VOICE_CALL_STARTED"

    return-object p0

    .line 4020
    :pswitch_32
    const-string p0, "EVENT_WAITING_FOR_TEARING_DOWN_CONDITION_MET"

    return-object p0

    .line 4018
    :pswitch_35
    const-string p0, "EVENT_STUCK_IN_TRANSIENT_STATE"

    return-object p0

    .line 4017
    :pswitch_38
    const-string p0, "EVENT_DEACTIVATE_DATA_NETWORK_RESPONSE"

    return-object p0

    .line 4016
    :pswitch_3b
    const-string p0, "EVENT_CARRIER_PRIVILEGED_UIDS_CHANGED"

    return-object p0

    .line 4015
    :pswitch_3e
    const-string p0, "EVENT_PCO_DATA_RECEIVED"

    return-object p0

    .line 4014
    :pswitch_41
    const-string p0, "EVENT_SUBSCRIPTION_PLAN_OVERRIDE"

    return-object p0

    .line 4013
    :pswitch_44
    const-string p0, "EVENT_HANDOVER_RESPONSE"

    return-object p0

    .line 4012
    :pswitch_47
    const-string p0, "EVENT_DISPLAY_INFO_CHANGED"

    return-object p0

    .line 4011
    :pswitch_4a
    const-string p0, "EVENT_CANCEL_HANDOVER_NO_RESPONSE"

    return-object p0

    .line 4010
    :pswitch_4d
    const-string p0, "EVENT_BANDWIDTH_ESTIMATE_FROM_MODEM_CHANGED"

    return-object p0

    .line 4008
    :pswitch_50
    const-string p0, "EVENT_DETACH_ALL_NETWORK_REQUESTS"

    return-object p0

    .line 4007
    :pswitch_53
    const-string p0, "EVENT_DATA_NETWORK_TYPE_REG_STATE_CHANGED"

    return-object p0

    .line 4006
    :pswitch_56
    const-string p0, "EVENT_DATA_STATE_CHANGED"

    return-object p0

    .line 4005
    :pswitch_59
    const-string p0, "EVENT_TEAR_DOWN_NETWORK"

    return-object p0

    .line 4004
    :pswitch_5c
    const-string p0, "EVENT_SETUP_DATA_NETWORK_RESPONSE"

    return-object p0

    .line 4003
    :pswitch_5f
    const-string p0, "EVENT_ALLOCATE_PDU_SESSION_ID_RESPONSE"

    return-object p0

    .line 4002
    :pswitch_62
    const-string p0, "EVENT_RADIO_NOT_AVAILABLE"

    return-object p0

    .line 4001
    :pswitch_65
    const-string p0, "EVENT_DETACH_NETWORK_REQUEST"

    return-object p0

    .line 4000
    :pswitch_68
    const-string p0, "EVENT_ATTACH_NETWORK_REQUEST"

    return-object p0

    .line 3999
    :pswitch_6b
    const-string p0, "EVENT_DATA_CONFIG_UPDATED"

    return-object p0

    :pswitch_data_6e
    .packed-switch 0x1
        :pswitch_6b
        :pswitch_68
        :pswitch_65
        :pswitch_62
        :pswitch_5f
        :pswitch_5c
        :pswitch_59
        :pswitch_56
        :pswitch_53
        :pswitch_50
        :pswitch_4d
        :pswitch_4a
        :pswitch_47
        :pswitch_3
        :pswitch_44
        :pswitch_41
        :pswitch_3e
        :pswitch_3b
        :pswitch_38
        :pswitch_35
        :pswitch_32
        :pswitch_2f
        :pswitch_2c
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
    .end packed-switch
.end method

.method private blacklist getDataNetworkType()I
    .registers 2

    .line 3333
    iget v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mTransport:I

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataNetwork;->getDataNetworkType(I)I

    move-result p0

    return p0
.end method

.method private blacklist getDataNetworkType(I)I
    .registers 3

    const/4 v0, 0x2

    if-ne p1, v0, :cond_6

    const/16 p0, 0x12

    return p0

    .line 3351
    :cond_6
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {p0}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object p0

    .line 3352
    invoke-virtual {p0, v0, p1}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object p0

    if-eqz p0, :cond_17

    .line 3355
    invoke-virtual {p0}, Landroid/telephony/NetworkRegistrationInfo;->getAccessNetworkTechnology()I

    move-result p0

    return p0

    :cond_17
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist getFailCauseFromDataCallResponse(ILandroid/telephony/data/DataCallResponse;)I
    .registers 3

    if-eqz p1, :cond_22

    const/4 p0, 0x1

    if-eq p1, p0, :cond_1e

    const/4 p0, 0x2

    if-eq p1, p0, :cond_1a

    const/4 p0, 0x3

    if-eq p1, p0, :cond_16

    const/4 p0, 0x4

    if-eq p1, p0, :cond_12

    const/4 p0, 0x5

    if-eq p1, p0, :cond_16

    goto :goto_2d

    :cond_12
    const p0, 0x10001

    return p0

    :cond_16
    const p0, 0x10009

    return p0

    :cond_1a
    const p0, 0x10002

    return p0

    :cond_1e
    const p0, 0x1000a

    return p0

    :cond_22
    if-eqz p2, :cond_2d

    .line 2748
    invoke-virtual {p2}, Landroid/telephony/data/DataCallResponse;->getCause()I

    move-result p0

    invoke-static {p0}, Landroid/telephony/DataFailCause;->getFailCause(I)I

    move-result p0

    return p0

    :cond_2d
    :goto_2d
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist getNetworkRegistrationInfo()Landroid/telephony/NetworkRegistrationInfo;
    .registers 4

    .line 3400
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/ServiceStateTracker;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    const/4 v1, 0x2

    iget v2, p0, Lcom/android/internal/telephony/data/DataNetwork;->mTransport:I

    .line 3401
    invoke-virtual {v0, v1, v2}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v0

    if-nez v0, :cond_2f

    .line 3403
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can\'t get network registration info for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mTransport:I

    .line 3404
    invoke-static {v1}, Landroid/telephony/AccessNetworkConstants;->transportTypeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3403
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/DataNetwork;->loge(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2f
    return-object v0
.end method

.method private blacklist getPreciseDataConnectionState()Landroid/telephony/PreciseDataConnectionState;
    .registers 4

    .line 3561
    new-instance v0, Landroid/telephony/PreciseDataConnectionState$Builder;

    invoke-direct {v0}, Landroid/telephony/PreciseDataConnectionState$Builder;-><init>()V

    iget v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mTransport:I

    .line 3562
    invoke-virtual {v0, v1}, Landroid/telephony/PreciseDataConnectionState$Builder;->setTransportType(I)Landroid/telephony/PreciseDataConnectionState$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mCid:Landroid/util/SparseIntArray;

    iget v2, p0, Lcom/android/internal/telephony/data/DataNetwork;->mTransport:I

    .line 3563
    invoke-virtual {v1, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/PreciseDataConnectionState$Builder;->setId(I)Landroid/telephony/PreciseDataConnectionState$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mNetworkAgent:Lcom/android/internal/telephony/data/TelephonyNetworkAgent;

    .line 3564
    invoke-virtual {v1}, Lcom/android/internal/telephony/data/TelephonyNetworkAgent;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/PreciseDataConnectionState$Builder;->setNetworkAgentId(I)Landroid/telephony/PreciseDataConnectionState$Builder;

    move-result-object v0

    .line 3565
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetwork;->getState()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/PreciseDataConnectionState$Builder;->setState(I)Landroid/telephony/PreciseDataConnectionState$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataProfile:Landroid/telephony/data/DataProfile;

    .line 3566
    invoke-virtual {v1}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/telephony/PreciseDataConnectionState$Builder;->setApnSetting(Landroid/telephony/data/ApnSetting;)Landroid/telephony/PreciseDataConnectionState$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mLinkProperties:Landroid/net/LinkProperties;

    .line 3567
    invoke-virtual {v0, v1}, Landroid/telephony/PreciseDataConnectionState$Builder;->setLinkProperties(Landroid/net/LinkProperties;)Landroid/telephony/PreciseDataConnectionState$Builder;

    move-result-object v0

    .line 3568
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetwork;->getDataNetworkType()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/PreciseDataConnectionState$Builder;->setNetworkType(I)Landroid/telephony/PreciseDataConnectionState$Builder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mFailCause:I

    .line 3569
    invoke-virtual {v0, v1}, Landroid/telephony/PreciseDataConnectionState$Builder;->setFailCause(I)Landroid/telephony/PreciseDataConnectionState$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDefaultQos:Landroid/telephony/data/Qos;

    .line 3570
    invoke-virtual {v0, v1}, Landroid/telephony/PreciseDataConnectionState$Builder;->setDefaultQos(Landroid/telephony/data/Qos;)Landroid/telephony/PreciseDataConnectionState$Builder;

    move-result-object v0

    iget p0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mNetworkValidationStatus:I

    .line 3571
    invoke-virtual {v0, p0}, Landroid/telephony/PreciseDataConnectionState$Builder;->setNetworkValidationStatus(I)Landroid/telephony/PreciseDataConnectionState$Builder;

    move-result-object p0

    .line 3572
    invoke-virtual {p0}, Landroid/telephony/PreciseDataConnectionState$Builder;->build()Landroid/telephony/PreciseDataConnectionState;

    move-result-object p0

    return-object p0
.end method

.method private blacklist getState()I
    .registers 2

    .line 3520
    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getCurrentState()Lcom/android/internal/telephony/IState;

    move-result-object v0

    if-eqz v0, :cond_35

    .line 3521
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataNetwork;->isDisconnected()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_35

    .line 3523
    :cond_d
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataNetwork;->isConnecting()Z

    move-result v0

    if-eqz v0, :cond_15

    const/4 p0, 0x1

    return p0

    .line 3525
    :cond_15
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataNetwork;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 3527
    iget-boolean p0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mSuspended:Z

    if-eqz p0, :cond_21

    const/4 p0, 0x3

    return p0

    :cond_21
    const/4 p0, 0x2

    return p0

    .line 3531
    :cond_23
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataNetwork;->isDisconnecting()Z

    move-result v0

    if-eqz v0, :cond_2b

    const/4 p0, 0x4

    return p0

    .line 3533
    :cond_2b
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataNetwork;->isHandoverInProgress()Z

    move-result p0

    if-eqz p0, :cond_33

    const/4 p0, 0x5

    return p0

    :cond_33
    const/4 p0, -0x1

    return p0

    :cond_35
    :goto_35
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist getVcnPolicy(Landroid/net/NetworkCapabilities;)Landroid/net/vcn/VcnNetworkPolicyResult;
    .registers 3

    .line 3840
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mVcnManager:Landroid/net/vcn/VcnManager;

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return-object p0

    .line 3844
    :cond_6
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataNetwork;->getLinkProperties()Landroid/net/LinkProperties;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Landroid/net/vcn/VcnManager;->applyVcnNetworkPolicy(Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;)Landroid/net/vcn/VcnNetworkPolicyResult;

    move-result-object p0

    return-object p0
.end method

.method private blacklist handleDataNetworkValidationRequest(Ljava/util/function/Consumer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 3871
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mNetworkValidationResultCodeCallback:Ljava/util/function/Consumer;

    if-eqz v0, :cond_1e

    .line 3872
    const-string v0, "requestNetworkValidation: previous networkValidationRequest is in progress."

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/DataNetwork;->loge(Ljava/lang/String;)V

    .line 3873
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/android/internal/telephony/data/DataNetwork$$ExternalSyntheticLambda8;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetwork$$ExternalSyntheticLambda8;-><init>(Ljava/util/function/Consumer;)V

    invoke-static {p0}, Lcom/android/internal/util/FunctionalUtils;->ignoreRemoteException(Lcom/android/internal/util/FunctionalUtils$RemoteExceptionIgnoringConsumer;)Ljava/util/function/Consumer;

    move-result-object p0

    const/4 p1, 0x3

    .line 3874
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void

    .line 3878
    :cond_1e
    iput-object p1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mNetworkValidationResultCodeCallback:Ljava/util/function/Consumer;

    .line 3881
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataServiceManagers:Landroid/util/SparseArray;

    iget v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mTransport:I

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/telephony/data/DataServiceManager;

    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mCid:Landroid/util/SparseIntArray;

    iget v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mTransport:I

    .line 3882
    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    const/16 v1, 0x1d

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/StateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 3881
    invoke-virtual {p1, v0, v1}, Lcom/android/internal/telephony/data/DataServiceManager;->requestNetworkValidation(ILandroid/os/Message;)V

    .line 3884
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataProfile:Landroid/telephony/data/DataProfile;

    invoke-virtual {p1}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object p1

    if-eqz p1, :cond_4e

    .line 3885
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataProfile:Landroid/telephony/data/DataProfile;

    invoke-virtual {p1}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object p1

    invoke-virtual {p1}, Landroid/telephony/data/ApnSetting;->getApnTypeBitmask()I

    move-result p1

    goto :goto_4f

    :cond_4e
    const/4 p1, 0x0

    .line 3886
    :goto_4f
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataNetworkValidationStats:Lcom/android/internal/telephony/metrics/DataNetworkValidationStats;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/metrics/DataNetworkValidationStats;->onRequestNetworkValidation(I)V

    .line 3888
    const-string p1, "handleDataNetworkValidationRequest, network validation requested"

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/DataNetwork;->log(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist handleDataNetworkValidationRequestResultCode(I)V
    .registers 4

    .line 3905
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mNetworkValidationResultCodeCallback:Ljava/util/function/Consumer;

    if-eqz v0, :cond_34

    .line 3906
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleDataNetworkValidationRequestResultCode, resultCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3907
    invoke-static {p1}, Landroid/telephony/data/DataServiceCallback;->resultCodeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3906
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/DataNetwork;->log(Ljava/lang/String;)V

    .line 3908
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mNetworkValidationResultCodeCallback:Ljava/util/function/Consumer;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/android/internal/telephony/data/DataNetwork$$ExternalSyntheticLambda8;

    invoke-direct {v1, v0}, Lcom/android/internal/telephony/data/DataNetwork$$ExternalSyntheticLambda8;-><init>(Ljava/util/function/Consumer;)V

    invoke-static {v1}, Lcom/android/internal/util/FunctionalUtils;->ignoreRemoteException(Lcom/android/internal/util/FunctionalUtils$RemoteExceptionIgnoringConsumer;)Ljava/util/function/Consumer;

    move-result-object v0

    .line 3909
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 3910
    iput-object p1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mNetworkValidationResultCodeCallback:Ljava/util/function/Consumer;

    :cond_34
    return-void
.end method

.method private blacklist handleErrorDataNetworkValidationRequest(Ljava/util/function/Consumer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 3893
    const-string v0, "handleErrorDataNetworkValidationRequest: DataNetwork is not in Connected state"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/DataNetwork;->loge(Ljava/lang/String;)V

    .line 3894
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/android/internal/telephony/data/DataNetwork$$ExternalSyntheticLambda8;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetwork$$ExternalSyntheticLambda8;-><init>(Ljava/util/function/Consumer;)V

    invoke-static {p0}, Lcom/android/internal/util/FunctionalUtils;->ignoreRemoteException(Lcom/android/internal/util/FunctionalUtils$RemoteExceptionIgnoringConsumer;)Ljava/util/function/Consumer;

    move-result-object p0

    const/4 p1, 0x4

    .line 3895
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method private blacklist initializeStateMachine()V
    .registers 3

    .line 1115
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDefaultState:Lcom/android/internal/telephony/data/DataNetwork$DefaultState;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/StateMachine;->addState(Lcom/android/internal/telephony/State;)V

    .line 1116
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mConnectingState:Lcom/android/internal/telephony/data/DataNetwork$ConnectingState;

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDefaultState:Lcom/android/internal/telephony/data/DataNetwork$DefaultState;

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/StateMachine;->addState(Lcom/android/internal/telephony/State;Lcom/android/internal/telephony/State;)V

    .line 1117
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mConnectedState:Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDefaultState:Lcom/android/internal/telephony/data/DataNetwork$DefaultState;

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/StateMachine;->addState(Lcom/android/internal/telephony/State;Lcom/android/internal/telephony/State;)V

    .line 1118
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mHandoverState:Lcom/android/internal/telephony/data/DataNetwork$HandoverState;

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDefaultState:Lcom/android/internal/telephony/data/DataNetwork$DefaultState;

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/StateMachine;->addState(Lcom/android/internal/telephony/State;Lcom/android/internal/telephony/State;)V

    .line 1119
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDisconnectingState:Lcom/android/internal/telephony/data/DataNetwork$DisconnectingState;

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDefaultState:Lcom/android/internal/telephony/data/DataNetwork$DefaultState;

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/StateMachine;->addState(Lcom/android/internal/telephony/State;Lcom/android/internal/telephony/State;)V

    .line 1120
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDisconnectedState:Lcom/android/internal/telephony/data/DataNetwork$DisconnectedState;

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDefaultState:Lcom/android/internal/telephony/data/DataNetwork$DefaultState;

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/StateMachine;->addState(Lcom/android/internal/telephony/State;Lcom/android/internal/telephony/State;)V

    .line 1121
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mConnectingState:Lcom/android/internal/telephony/data/DataNetwork$ConnectingState;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/StateMachine;->setInitialState(Lcom/android/internal/telephony/State;)V

    .line 1122
    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->start()V

    return-void
.end method

.method private blacklist isLinkPropertiesCompatible(Landroid/net/LinkProperties;Landroid/net/LinkProperties;)Z
    .registers 8

    .line 2276
    invoke-static {p1, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    return v1

    .line 2278
    :cond_8
    invoke-static {p1, p2}, Lcom/android/internal/telephony/util/LinkPropertiesUtils;->isIdenticalAddresses(Landroid/net/LinkProperties;Landroid/net/LinkProperties;)Z

    move-result v0

    if-nez v0, :cond_78

    .line 2280
    new-instance v0, Lcom/android/internal/telephony/util/LinkPropertiesUtils$CompareOrUpdateResult;

    .line 2282
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/List;

    move-result-object v2

    .line 2283
    invoke-virtual {p2}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/List;

    move-result-object v3

    new-instance v4, Lcom/android/internal/telephony/data/DataNetwork$$ExternalSyntheticLambda24;

    invoke-direct {v4}, Lcom/android/internal/telephony/data/DataNetwork$$ExternalSyntheticLambda24;-><init>()V

    invoke-direct {v0, v2, v3, v4}, Lcom/android/internal/telephony/util/LinkPropertiesUtils$CompareOrUpdateResult;-><init>(Ljava/util/Collection;Ljava/util/Collection;Ljava/util/function/Function;)V

    .line 2286
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isLinkPropertiesCompatible: old="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " new="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " result="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/DataNetwork;->log(Ljava/lang/String;)V

    .line 2288
    iget-object p0, v0, Lcom/android/internal/telephony/util/LinkPropertiesUtils$CompareOrUpdateResult;->added:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_78

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/LinkAddress;

    .line 2289
    iget-object p2, v0, Lcom/android/internal/telephony/util/LinkPropertiesUtils$CompareOrUpdateResult;->removed:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_5c
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4a

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/LinkAddress;

    .line 2290
    invoke-virtual {v2}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/util/NetUtils;->addressTypeMatches(Ljava/net/InetAddress;Ljava/net/InetAddress;)Z

    move-result v2

    if-eqz v2, :cond_5c

    const/4 p0, 0x0

    return p0

    :cond_78
    return v1
.end method

.method private blacklist isNetworkTypeUnmetered(I)Z
    .registers 13

    .line 3293
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataNetworkController:Lcom/android/internal/telephony/data/DataNetworkController;

    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataNetworkController;->getSubscriptionPlans()Ljava/util/List;

    move-result-object p0

    .line 3294
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    return v1

    .line 3296
    :cond_e
    invoke-static {}, Landroid/telephony/TelephonyManager;->getAllNetworkTypes()[I

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v0

    .line 3297
    invoke-interface {v0}, Ljava/util/stream/IntStream;->boxed()Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 3298
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v2, 0x1

    move v3, v2

    :cond_2a
    :goto_2a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/SubscriptionPlan;

    .line 3300
    invoke-virtual {v4}, Landroid/telephony/SubscriptionPlan;->getNetworkTypes()[I

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/stream/IntStream;->boxed()Ljava/util/stream/Stream;

    move-result-object v5

    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    .line 3301
    invoke-interface {v5, v0}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v5

    const-wide v6, 0x7fffffffffffffffL

    if-eqz v5, :cond_61

    .line 3302
    invoke-virtual {v4}, Landroid/telephony/SubscriptionPlan;->getDataLimitBytes()J

    move-result-wide v4

    cmp-long v4, v4, v6

    if-eqz v4, :cond_2a

    move v3, v1

    goto :goto_2a

    :cond_61
    if-eqz p1, :cond_2a

    .line 3309
    invoke-virtual {v4}, Landroid/telephony/SubscriptionPlan;->getNetworkTypes()[I

    move-result-object v5

    array-length v8, v5

    move v9, v1

    :goto_69
    if-ge v9, v8, :cond_2a

    aget v10, v5, v9

    if-ne v10, p1, :cond_79

    .line 3311
    invoke-virtual {v4}, Landroid/telephony/SubscriptionPlan;->getDataLimitBytes()J

    move-result-wide p0

    cmp-long p0, p0, v6

    if-nez p0, :cond_78

    return v2

    :cond_78
    return v1

    :cond_79
    add-int/lit8 v9, v9, 0x1

    goto :goto_69

    :cond_7c
    return v3
.end method

.method private synthetic blacklist lambda$onAttachNetworkRequests$0(Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;)V
    .registers 3

    .line 2144
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataNetworkCallback:Lcom/android/internal/telephony/data/DataNetwork$DataNetworkCallback;

    .line 2145
    invoke-virtual {v0, p0, p1}, Lcom/android/internal/telephony/data/DataNetwork$DataNetworkCallback;->onAttachFailed(Lcom/android/internal/telephony/data/DataNetwork;Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;)V

    return-void
.end method

.method private synthetic blacklist lambda$onDataStateChanged$11(Landroid/telephony/data/DataCallResponse;)Z
    .registers 3

    .line 3097
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mCid:Landroid/util/SparseIntArray;

    iget p0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mTransport:I

    invoke-virtual {v0, p0}, Landroid/util/SparseIntArray;->get(I)I

    move-result p0

    invoke-virtual {p1}, Landroid/telephony/data/DataCallResponse;->getId()I

    move-result p1

    if-ne p0, p1, :cond_10

    const/4 p0, 0x1

    return p0

    :cond_10
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic blacklist lambda$onDetachNetworkRequest$1(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;)V
    .registers 2

    .line 2169
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataNetworkCallback:Lcom/android/internal/telephony/data/DataNetwork$DataNetworkCallback;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/DataNetwork$DataNetworkCallback;->onRetryUnsatisfiedNetworkRequest(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;)V

    return-void
.end method

.method private synthetic blacklist lambda$onHandoverResponse$13()V
    .registers 2

    .line 3724
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataNetworkCallback:Lcom/android/internal/telephony/data/DataNetwork$DataNetworkCallback;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/data/DataNetwork$DataNetworkCallback;->onHandoverSucceeded(Lcom/android/internal/telephony/data/DataNetwork;)V

    return-void
.end method

.method private synthetic blacklist lambda$onHandoverResponse$14(JI)V
    .registers 10

    .line 3743
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataNetworkCallback:Lcom/android/internal/telephony/data/DataNetwork$DataNetworkCallback;

    iget v2, p0, Lcom/android/internal/telephony/data/DataNetwork;->mFailCause:I

    move-object v1, p0

    move-wide v3, p1

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/data/DataNetwork$DataNetworkCallback;->onHandoverFailed(Lcom/android/internal/telephony/data/DataNetwork;IJI)V

    return-void
.end method

.method private synthetic blacklist lambda$onPcoDataChanged$15()V
    .registers 2

    .line 3774
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataNetworkCallback:Lcom/android/internal/telephony/data/DataNetwork$DataNetworkCallback;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/data/DataNetwork$DataNetworkCallback;->onPcoDataChanged(Lcom/android/internal/telephony/data/DataNetwork;)V

    return-void
.end method

.method private synthetic blacklist lambda$tearDownWhenConditionMet$10(I)V
    .registers 2

    .line 3076
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/DataNetwork;->tearDown(I)V

    return-void
.end method

.method private synthetic blacklist lambda$updateDataNetwork$7()V
    .registers 3

    .line 2782
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataNetworkCallback:Lcom/android/internal/telephony/data/DataNetwork$DataNetworkCallback;

    iget v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mLinkStatus:I

    .line 2783
    invoke-virtual {v0, p0, v1}, Lcom/android/internal/telephony/data/DataNetwork$DataNetworkCallback;->onLinkStatusChanged(Lcom/android/internal/telephony/data/DataNetwork;I)V

    return-void
.end method

.method private synthetic blacklist lambda$updateNetworkCapabilities$4(Ljava/lang/Integer;)Z
    .registers 2

    .line 2482
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mAccessNetworksManager:Lcom/android/internal/telephony/data/AccessNetworksManager;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/AccessNetworksManager;->getPreferredTransportByNetworkCapability(I)I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_e

    return p1

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic blacklist lambda$updateNetworkCapabilities$5()V
    .registers 2

    .line 2637
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataNetworkCallback:Lcom/android/internal/telephony/data/DataNetwork$DataNetworkCallback;

    .line 2638
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/data/DataNetwork$DataNetworkCallback;->onNetworkCapabilitiesChanged(Lcom/android/internal/telephony/data/DataNetwork;)V

    return-void
.end method

.method private synthetic blacklist lambda$updateSuspendState$6()V
    .registers 3

    .line 2706
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataNetworkCallback:Lcom/android/internal/telephony/data/DataNetwork$DataNetworkCallback;

    iget-boolean v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mSuspended:Z

    invoke-virtual {v0, p0, v1}, Lcom/android/internal/telephony/data/DataNetwork$DataNetworkCallback;->onSuspendedStateChanged(Lcom/android/internal/telephony/data/DataNetwork;Z)V

    return-void
.end method

.method private blacklist logl(Ljava/lang/String;)V
    .registers 5

    .line 4098
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/DataNetwork;->log(Ljava/lang/String;)V

    .line 4099
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getCurrentState()Lcom/android/internal/telephony/IState;

    move-result-object v2

    if-eqz v2, :cond_2a

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getCurrentState()Lcom/android/internal/telephony/IState;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/internal/telephony/IState;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ": "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_2c

    :cond_2a
    const-string p0, ""

    :goto_2c
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist notifyPreciseDataConnectionState()V
    .registers 4

    .line 3584
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetwork;->getPreciseDataConnectionState()Landroid/telephony/PreciseDataConnectionState;

    move-result-object v0

    .line 3585
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mPreciseDataConnectionState:Landroid/telephony/PreciseDataConnectionState;

    if-eqz v1, :cond_2c

    .line 3586
    invoke-virtual {v1}, Landroid/telephony/PreciseDataConnectionState;->getState()I

    move-result v1

    invoke-virtual {v0}, Landroid/telephony/PreciseDataConnectionState;->getState()I

    move-result v2

    if-ne v1, v2, :cond_2c

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mPreciseDataConnectionState:Landroid/telephony/PreciseDataConnectionState;

    .line 3587
    invoke-virtual {v1}, Landroid/telephony/PreciseDataConnectionState;->getNetworkValidationStatus()I

    move-result v1

    .line 3588
    invoke-virtual {v0}, Landroid/telephony/PreciseDataConnectionState;->getNetworkValidationStatus()I

    move-result v2

    if-ne v1, v2, :cond_2c

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mPreciseDataConnectionState:Landroid/telephony/PreciseDataConnectionState;

    .line 3589
    invoke-virtual {v1}, Landroid/telephony/PreciseDataConnectionState;->getNetId()I

    move-result v1

    invoke-virtual {v0}, Landroid/telephony/PreciseDataConnectionState;->getNetId()I

    move-result v2

    if-eq v1, v2, :cond_2b

    goto :goto_2c

    :cond_2b
    return-void

    .line 3590
    :cond_2c
    :goto_2c
    iput-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mPreciseDataConnectionState:Landroid/telephony/PreciseDataConnectionState;

    .line 3591
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyPreciseDataConnectionState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/data/DataNetwork;->logv(Ljava/lang/String;)V

    .line 3592
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/Phone;->notifyDataConnection(Landroid/telephony/PreciseDataConnectionState;)V

    return-void
.end method

.method private blacklist onBandwidthUpdated(II)V
    .registers 5

    .line 3176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBandwidthUpdated: downlinkBandwidthKbps="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", uplinkBandwidthKbps="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/DataNetwork;->log(Ljava/lang/String;)V

    .line 3178
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataConfigManager:Lcom/android/internal/telephony/data/DataConfigManager;

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mTelephonyDisplayInfo:Landroid/telephony/TelephonyDisplayInfo;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/data/DataConfigManager;->getBandwidthForNetworkType(Landroid/telephony/TelephonyDisplayInfo;)Lcom/android/internal/telephony/data/DataNetwork$NetworkBandwidth;

    move-result-object v0

    const/4 v1, -0x1

    if-ne p2, v1, :cond_29

    .line 3183
    iget p2, v0, Lcom/android/internal/telephony/data/DataNetwork$NetworkBandwidth;->downlinkBandwidthKbps:I

    :cond_29
    if-ne p1, v1, :cond_2d

    .line 3188
    iget p1, v0, Lcom/android/internal/telephony/data/DataNetwork$NetworkBandwidth;->uplinkBandwidthKbps:I

    .line 3192
    :cond_2d
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 3193
    new-instance v0, Lcom/android/internal/telephony/data/DataNetwork$NetworkBandwidth;

    invoke-direct {v0, p2, p1}, Lcom/android/internal/telephony/data/DataNetwork$NetworkBandwidth;-><init>(II)V

    iput-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mNetworkBandwidth:Lcom/android/internal/telephony/data/DataNetwork$NetworkBandwidth;

    .line 3195
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetwork;->updateNetworkCapabilities()V

    return-void
.end method

.method private blacklist onBandwidthUpdatedFromModem(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/LinkCapacityEstimate;",
            ">;)V"
        }
    .end annotation

    .line 3149
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3150
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    return-void

    .line 3153
    :cond_a
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    move v1, v0

    :goto_10
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/LinkCapacityEstimate;

    .line 3154
    invoke-virtual {v2}, Landroid/telephony/LinkCapacityEstimate;->getType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2c

    .line 3155
    invoke-virtual {v2}, Landroid/telephony/LinkCapacityEstimate;->getUplinkCapacityKbps()I

    move-result v0

    .line 3156
    invoke-virtual {v2}, Landroid/telephony/LinkCapacityEstimate;->getDownlinkCapacityKbps()I

    move-result v1

    goto :goto_5e

    .line 3158
    :cond_2c
    invoke-virtual {v2}, Landroid/telephony/LinkCapacityEstimate;->getType()I

    move-result v3

    if-eqz v3, :cond_53

    .line 3159
    invoke-virtual {v2}, Landroid/telephony/LinkCapacityEstimate;->getType()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3a

    goto :goto_53

    .line 3163
    :cond_3a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid LinkCapacityEstimate type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/telephony/LinkCapacityEstimate;->getType()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/data/DataNetwork;->loge(Ljava/lang/String;)V

    goto :goto_10

    .line 3160
    :cond_53
    :goto_53
    invoke-virtual {v2}, Landroid/telephony/LinkCapacityEstimate;->getUplinkCapacityKbps()I

    move-result v3

    add-int/2addr v0, v3

    .line 3161
    invoke-virtual {v2}, Landroid/telephony/LinkCapacityEstimate;->getDownlinkCapacityKbps()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_10

    .line 3166
    :cond_5e
    :goto_5e
    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/data/DataNetwork;->onBandwidthUpdated(II)V

    return-void
.end method

.method private blacklist onCarrierConfigUpdated()V
    .registers 2

    .line 3135
    const-string v0, "onCarrierConfigUpdated"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/DataNetwork;->log(Ljava/lang/String;)V

    .line 3137
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetwork;->updateBandwidthFromDataConfig()V

    .line 3138
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetwork;->updateTcpBufferSizes()V

    .line 3139
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetwork;->updateMeteredAndCongested()V

    return-void
.end method

.method private blacklist onDataStateChanged(ILjava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/telephony/data/DataCallResponse;",
            ">;)V"
        }
    .end annotation

    .line 3091
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDataStateChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/DataNetwork;->logv(Ljava/lang/String;)V

    .line 3092
    iget v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mTransport:I

    if-ne p1, v0, :cond_d2

    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mCid:Landroid/util/SparseIntArray;

    invoke-virtual {p1, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_d2

    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataNetwork;->isDisconnected()Z

    move-result p1

    if-eqz p1, :cond_29

    goto/16 :goto_d2

    .line 3096
    :cond_29
    invoke-interface {p2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance p2, Lcom/android/internal/telephony/data/DataNetwork$$ExternalSyntheticLambda19;

    invoke-direct {p2, p0}, Lcom/android/internal/telephony/data/DataNetwork$$ExternalSyntheticLambda19;-><init>(Lcom/android/internal/telephony/data/DataNetwork;)V

    .line 3097
    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    .line 3098
    invoke-interface {p1}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p1

    const/4 p2, 0x0

    .line 3099
    invoke-virtual {p1, p2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/data/DataCallResponse;

    const-wide/16 v2, -0x1

    const p2, 0x1000b

    .line 3100
    const-string v4, " data service."

    if-eqz p1, :cond_a5

    .line 3101
    iget-object v5, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataCallResponse:Landroid/telephony/data/DataCallResponse;

    invoke-virtual {p1, v5}, Landroid/telephony/data/DataCallResponse;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_d2

    .line 3102
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/data/DataNetwork;->log(Ljava/lang/String;)V

    .line 3103
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/data/DataNetwork;->validateDataCallResponse(Landroid/telephony/data/DataCallResponse;I)V

    .line 3104
    iput-object p1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataCallResponse:Landroid/telephony/data/DataCallResponse;

    .line 3105
    invoke-virtual {p1}, Landroid/telephony/data/DataCallResponse;->getLinkStatus()I

    move-result v0

    if-eqz v0, :cond_76

    .line 3106
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetwork;->updateDataNetwork(Landroid/telephony/data/DataCallResponse;)V

    .line 3107
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetwork;->notifyPreciseDataConnectionState()V

    return-void

    .line 3109
    :cond_76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDataStateChanged: PDN inactive reported by "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mTransport:I

    .line 3110
    invoke-static {v1}, Landroid/telephony/AccessNetworkConstants;->transportTypeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3109
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/DataNetwork;->log(Ljava/lang/String;)V

    .line 3112
    iget-boolean v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mEverConnected:Z

    if-eqz v0, :cond_9b

    invoke-virtual {p1}, Landroid/telephony/data/DataCallResponse;->getCause()I

    move-result p2

    .line 3113
    :cond_9b
    iput p2, p0, Lcom/android/internal/telephony/data/DataNetwork;->mFailCause:I

    .line 3114
    iput-wide v2, p0, Lcom/android/internal/telephony/data/DataNetwork;->mRetryDelayMillis:J

    .line 3115
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDisconnectedState:Lcom/android/internal/telephony/data/DataNetwork$DisconnectedState;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->transitionTo(Lcom/android/internal/telephony/IState;)V

    return-void

    .line 3122
    :cond_a5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onDataStateChanged: PDN disconnected reported by "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mTransport:I

    .line 3123
    invoke-static {v0}, Landroid/telephony/AccessNetworkConstants;->transportTypeToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3122
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/DataNetwork;->log(Ljava/lang/String;)V

    .line 3124
    iget-boolean p1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mEverConnected:Z

    if-eqz p1, :cond_c9

    const p2, 0x10004

    .line 3125
    :cond_c9
    iput p2, p0, Lcom/android/internal/telephony/data/DataNetwork;->mFailCause:I

    .line 3126
    iput-wide v2, p0, Lcom/android/internal/telephony/data/DataNetwork;->mRetryDelayMillis:J

    .line 3127
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDisconnectedState:Lcom/android/internal/telephony/data/DataNetwork$DisconnectedState;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->transitionTo(Lcom/android/internal/telephony/IState;)V

    :cond_d2
    :goto_d2
    return-void
.end method

.method private blacklist onDeactivateResponse(I)V
    .registers 4

    .line 2984
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDeactivateResponse: resultCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2985
    invoke-static {p1}, Landroid/telephony/data/DataServiceCallback;->resultCodeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2984
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataNetwork;->logl(Ljava/lang/String;)V

    const/4 v0, 0x4

    if-ne p1, v0, :cond_2b

    .line 2987
    const-string p1, "Remove network since deactivate request returned an error."

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/DataNetwork;->log(Ljava/lang/String;)V

    const p1, 0x10001

    .line 2988
    iput p1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mFailCause:I

    .line 2989
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDisconnectedState:Lcom/android/internal/telephony/data/DataNetwork$DisconnectedState;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->transitionTo(Lcom/android/internal/telephony/IState;)V

    return-void

    .line 2990
    :cond_2b
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mPhone:Lcom/android/internal/telephony/Phone;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/Phone;->getHalVersion(I)Lcom/android/internal/telephony/HalVersion;

    move-result-object p1

    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_2_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/HalVersion;->less(Lcom/android/internal/telephony/HalVersion;)Z

    move-result p1

    if-eqz p1, :cond_5e

    .line 2991
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Remove network on deactivate data response on old HAL "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 2992
    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/Phone;->getHalVersion(I)Lcom/android/internal/telephony/HalVersion;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2991
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/DataNetwork;->log(Ljava/lang/String;)V

    const p1, 0x10004

    .line 2993
    iput p1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mFailCause:I

    .line 2994
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDisconnectedState:Lcom/android/internal/telephony/data/DataNetwork$DisconnectedState;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->transitionTo(Lcom/android/internal/telephony/IState;)V

    :cond_5e
    return-void
.end method

.method private blacklist onDetachNetworkRequest(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;Z)V
    .registers 4

    .line 2157
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mAttachedNetworkRequestList:Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 2161
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->getAttachedNetwork()Lcom/android/internal/telephony/data/DataNetwork;

    move-result-object v0

    if-ne v0, p0, :cond_1f

    const/4 v0, 0x0

    .line 2162
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->setState(I)V

    const/4 v0, 0x0

    .line 2163
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->setAttachedNetwork(Lcom/android/internal/telephony/data/DataNetwork;)V

    if-eqz p2, :cond_1f

    .line 2168
    iget-object p2, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataNetworkCallback:Lcom/android/internal/telephony/data/DataNetwork$DataNetworkCallback;

    new-instance v0, Lcom/android/internal/telephony/data/DataNetwork$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/telephony/data/DataNetwork$$ExternalSyntheticLambda9;-><init>(Lcom/android/internal/telephony/data/DataNetwork;Lcom/android/internal/telephony/data/TelephonyNetworkRequest;)V

    invoke-virtual {p2, v0}, Lcom/android/internal/telephony/data/DataCallback;->invokeFromExecutor(Ljava/lang/Runnable;)V

    .line 2173
    :cond_1f
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mAttachedNetworkRequestList:Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_44

    .line 2174
    const-string p1, "All network requests are detached."

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/DataNetwork;->log(Ljava/lang/String;)V

    .line 2180
    invoke-static {}, Lcom/android/internal/telephony/data/PhoneSwitcher;->getInstance()Lcom/android/internal/telephony/data/PhoneSwitcher;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/telephony/data/PhoneSwitcher;->getPreferredDataPhoneId()I

    move-result p1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_44

    .line 2181
    iget-object p2, p0, Lcom/android/internal/telephony/data/DataNetwork;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 2182
    invoke-virtual {p2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p2

    if-eq p1, p2, :cond_44

    const/16 p1, 0x1e

    .line 2183
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/DataNetwork;->tearDown(I)V

    :cond_44
    return-void
.end method

.method private blacklist onDisplayInfoChanged()V
    .registers 2

    .line 3203
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getDisplayInfoController()Lcom/android/internal/telephony/DisplayInfoController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/DisplayInfoController;->getTelephonyDisplayInfo()Landroid/telephony/TelephonyDisplayInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mTelephonyDisplayInfo:Landroid/telephony/TelephonyDisplayInfo;

    .line 3204
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetwork;->updateBandwidthFromDataConfig()V

    .line 3205
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetwork;->updateTcpBufferSizes()V

    .line 3206
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetwork;->updateMeteredAndCongested()V

    return-void
.end method

.method private blacklist onHandoverResponse(ILandroid/telephony/data/DataCallResponse;Lcom/android/internal/telephony/data/DataRetryManager$DataHandoverRetryEntry;)V
    .registers 7

    .line 3697
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onHandoverResponse: resultCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/telephony/data/DataServiceCallback;->resultCodeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", response="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataNetwork;->logl(Ljava/lang/String;)V

    .line 3699
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/data/DataNetwork;->getFailCauseFromDataCallResponse(ILandroid/telephony/data/DataCallResponse;)I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mFailCause:I

    const/4 p1, -0x1

    .line 3700
    invoke-direct {p0, p2, p1}, Lcom/android/internal/telephony/data/DataNetwork;->validateDataCallResponse(Landroid/telephony/data/DataCallResponse;I)V

    .line 3701
    iget v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mFailCause:I

    if-nez v0, :cond_96

    .line 3705
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataServiceManagers:Landroid/util/SparseArray;

    iget v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mTransport:I

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/telephony/data/DataServiceManager;

    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mCid:Landroid/util/SparseIntArray;

    iget v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mTransport:I

    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-virtual {p1, v0, v2, v1}, Lcom/android/internal/telephony/data/DataServiceManager;->deactivateDataCall(IILandroid/os/Message;)V

    .line 3708
    iget p1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mTransport:I

    invoke-static {p1}, Lcom/android/internal/telephony/data/DataUtils;->getTargetTransport(I)I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mTransport:I

    .line 3710
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "DN-"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mInitialNetworkAgentId:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "-"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3711
    iget v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mTransport:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_69

    const-string v0, "C"

    goto :goto_6b

    :cond_69
    const-string v0, "I"

    :goto_6b
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mLogTag:Ljava/lang/String;

    .line 3714
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mHandoverDataProfile:Landroid/telephony/data/DataProfile;

    iput-object p1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataProfile:Landroid/telephony/data/DataProfile;

    .line 3715
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/data/DataNetwork;->updateDataNetwork(Landroid/telephony/data/DataCallResponse;)V

    .line 3716
    iget p1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mTransport:I

    if-eq p1, v1, :cond_83

    .line 3717
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetwork;->unregisterForWwanEvents()V

    goto :goto_86

    .line 3720
    :cond_83
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetwork;->registerForWwanEvents()V

    :goto_86
    if-eqz p3, :cond_8b

    .line 3722
    invoke-virtual {p3, v2}, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryEntry;->setState(I)V

    .line 3723
    :cond_8b
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataNetworkCallback:Lcom/android/internal/telephony/data/DataNetwork$DataNetworkCallback;

    new-instance p2, Lcom/android/internal/telephony/data/DataNetwork$$ExternalSyntheticLambda17;

    invoke-direct {p2, p0}, Lcom/android/internal/telephony/data/DataNetwork$$ExternalSyntheticLambda17;-><init>(Lcom/android/internal/telephony/data/DataNetwork;)V

    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/data/DataCallback;->invokeFromExecutor(Ljava/lang/Runnable;)V

    goto :goto_e8

    .line 3730
    :cond_96
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataServiceManagers:Landroid/util/SparseArray;

    iget v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mTransport:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/data/DataServiceManager;

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mCid:Landroid/util/SparseIntArray;

    iget v2, p0, Lcom/android/internal/telephony/data/DataNetwork;->mTransport:I

    invoke-virtual {v1, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    const/16 v2, 0x1b

    .line 3731
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/StateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 3730
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/data/DataServiceManager;->cancelHandover(ILandroid/os/Message;)V

    .line 3732
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataConfigManager:Lcom/android/internal/telephony/data/DataConfigManager;

    .line 3733
    invoke-virtual {v0}, Lcom/android/internal/telephony/data/DataConfigManager;->getNetworkHandoverTimeoutMs()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0xc

    .line 3732
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/internal/telephony/StateMachine;->sendMessageDelayed(IJ)V

    if-eqz p2, :cond_c4

    .line 3735
    invoke-virtual {p2}, Landroid/telephony/data/DataCallResponse;->getRetryDurationMillis()J

    move-result-wide v0

    goto :goto_c6

    :cond_c4
    const-wide/16 v0, -0x1

    :goto_c6
    if-eqz p2, :cond_cc

    .line 3739
    invoke-virtual {p2}, Landroid/telephony/data/DataCallResponse;->getHandoverFailureMode()I

    move-result p1

    :cond_cc
    if-eqz p3, :cond_d2

    const/4 v2, 0x2

    .line 3741
    invoke-virtual {p3, v2}, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryEntry;->setState(I)V

    .line 3742
    :cond_d2
    iget-object p3, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataNetworkCallback:Lcom/android/internal/telephony/data/DataNetwork$DataNetworkCallback;

    new-instance v2, Lcom/android/internal/telephony/data/DataNetwork$$ExternalSyntheticLambda18;

    invoke-direct {v2, p0, v0, v1, p1}, Lcom/android/internal/telephony/data/DataNetwork$$ExternalSyntheticLambda18;-><init>(Lcom/android/internal/telephony/data/DataNetwork;JI)V

    invoke-virtual {p3, v2}, Lcom/android/internal/telephony/data/DataCallback;->invokeFromExecutor(Ljava/lang/Runnable;)V

    if-eqz p2, :cond_e3

    .line 3745
    invoke-virtual {p2}, Landroid/telephony/data/DataCallResponse;->getCause()I

    move-result p1

    goto :goto_e5

    :cond_e3
    iget p1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mFailCause:I

    :goto_e5
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetwork;->trackHandoverFailure(I)V

    .line 3749
    :goto_e8
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mConnectedState:Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->transitionTo(Lcom/android/internal/telephony/IState;)V

    return-void
.end method

.method private blacklist onPcoDataChanged(Landroid/telephony/PcoData;)V
    .registers 6

    .line 3772
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPcoDataChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/DataNetwork;->log(Ljava/lang/String;)V

    .line 3773
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataNetworkCallback:Lcom/android/internal/telephony/data/DataNetwork$DataNetworkCallback;

    new-instance v1, Lcom/android/internal/telephony/data/DataNetwork$$ExternalSyntheticLambda20;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/data/DataNetwork$$ExternalSyntheticLambda20;-><init>(Lcom/android/internal/telephony/data/DataNetwork;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/data/DataCallback;->invokeFromExecutor(Ljava/lang/Runnable;)V

    .line 3775
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataProfile:Landroid/telephony/data/DataProfile;

    invoke-virtual {v0}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v0

    if-eqz v0, :cond_73

    .line 3776
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataProfile:Landroid/telephony/data/DataProfile;

    invoke-virtual {v0}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/data/ApnSetting;->getApnTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_34
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_73

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 3777
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.telephony.action.CARRIER_SIGNAL_PCO_VALUE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3778
    const-string v3, "android.telephony.extra.APN_TYPE"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3779
    iget-object v1, p1, Landroid/telephony/PcoData;->bearerProto:Ljava/lang/String;

    .line 3780
    invoke-static {v1}, Landroid/telephony/data/ApnSetting;->getProtocolIntFromString(Ljava/lang/String;)I

    move-result v1

    .line 3779
    const-string v3, "android.telephony.extra.APN_PROTOCOL"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3781
    const-string v1, "android.telephony.extra.PCO_ID"

    iget v3, p1, Landroid/telephony/PcoData;->pcoId:I

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3782
    const-string v1, "android.telephony.extra.PCO_VALUE"

    iget-object v3, p1, Landroid/telephony/PcoData;->contents:[B

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 3783
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getCarrierSignalAgent()Lcom/android/internal/telephony/CarrierSignalAgent;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/CarrierSignalAgent;->notifyCarrierSignalReceivers(Landroid/content/Intent;)V

    goto :goto_34

    :cond_73
    return-void
.end method

.method private blacklist onPcoDataReceived(Landroid/telephony/PcoData;)V
    .registers 5

    .line 3797
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPcoDataReceived: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/DataNetwork;->log(Ljava/lang/String;)V

    .line 3798
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mPcoData:Ljava/util/Map;

    iget v1, p1, Landroid/telephony/PcoData;->cid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/android/internal/telephony/data/DataNetwork$$ExternalSyntheticLambda7;

    invoke-direct {v2}, Lcom/android/internal/telephony/data/DataNetwork$$ExternalSyntheticLambda7;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iget v1, p1, Landroid/telephony/PcoData;->pcoId:I

    .line 3799
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/PcoData;

    .line 3800
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataNetwork;->getId()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_4c

    iget v1, p1, Landroid/telephony/PcoData;->cid:I

    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataNetwork;->getId()I

    move-result v2

    if-eq v1, v2, :cond_43

    goto :goto_4c

    .line 3801
    :cond_43
    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4c

    .line 3802
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetwork;->onPcoDataChanged(Landroid/telephony/PcoData;)V

    :cond_4c
    :goto_4c
    return-void
.end method

.method private blacklist onStartHandover(ILcom/android/internal/telephony/data/DataRetryManager$DataHandoverRetryEntry;)V
    .registers 16

    .line 3634
    iget v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mTransport:I

    if-ne v0, p1, :cond_2a

    .line 3635
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onStartHandover: The network is already on "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mTransport:I

    .line 3636
    invoke-static {v0}, Landroid/telephony/AccessNetworkConstants;->transportTypeToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", handover is not needed."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3635
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/DataNetwork;->log(Ljava/lang/String;)V

    if-eqz p2, :cond_29

    const/4 p0, 0x4

    .line 3638
    invoke-virtual {p2, p0}, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryEntry;->setState(I)V

    :cond_29
    return-void

    .line 3645
    :cond_2a
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getDataRoamingFromRegistration()Z

    move-result v4

    .line 3650
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/PhoneInternalInterface;->getDataRoamingEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_4e

    if-eqz v4, :cond_4c

    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 3651
    invoke-interface {v0}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v0

    if-nez v0, :cond_4c

    goto :goto_4e

    :cond_4c
    move v5, v1

    goto :goto_50

    :cond_4e
    :goto_4e
    const/4 v0, 0x1

    move v5, v0

    .line 3653
    :goto_50
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataProfile:Landroid/telephony/data/DataProfile;

    iput-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mHandoverDataProfile:Landroid/telephony/data/DataProfile;

    .line 3654
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetwork;->getDataNetworkType(I)I

    move-result v8

    if-eqz v8, :cond_ce

    .line 3655
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mAttachedNetworkRequestList:Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;

    .line 3656
    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_ce

    .line 3657
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mAttachedNetworkRequestList:Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;

    .line 3658
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataNetworkController:Lcom/android/internal/telephony/data/DataNetworkController;

    invoke-virtual {v0}, Lcom/android/internal/telephony/data/DataNetworkController;->getDataProfileManager()Lcom/android/internal/telephony/data/DataProfileManager;

    move-result-object v6

    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 3660
    invoke-interface {v0}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->isUsingNonTerrestrialNetwork()Z

    move-result v9

    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataNetworkController:Lcom/android/internal/telephony/data/DataNetworkController;

    .line 3661
    invoke-virtual {v0}, Lcom/android/internal/telephony/data/DataNetworkController;->isEsimBootStrapProvisioningActivated()Z

    move-result v10

    const/4 v11, 0x0

    .line 3659
    invoke-virtual/range {v6 .. v11}, Lcom/android/internal/telephony/data/DataProfileManager;->getDataProfileForNetworkRequest(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;IZZZ)Landroid/telephony/data/DataProfile;

    move-result-object v0

    if-eqz v0, :cond_ce

    .line 3664
    invoke-virtual {v0}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v1

    if-eqz v1, :cond_ce

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataProfile:Landroid/telephony/data/DataProfile;

    .line 3665
    invoke-virtual {v1}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v1

    if-eqz v1, :cond_ce

    .line 3666
    invoke-virtual {v0}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/data/ApnSetting;->getApnName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataProfile:Landroid/telephony/data/DataProfile;

    .line 3667
    invoke-virtual {v2}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/data/ApnSetting;->getApnName()Ljava/lang/String;

    move-result-object v2

    .line 3666
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_ce

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataProfile:Landroid/telephony/data/DataProfile;

    .line 3668
    invoke-virtual {v0, v1}, Landroid/telephony/data/DataProfile;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_ce

    .line 3669
    iput-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mHandoverDataProfile:Landroid/telephony/data/DataProfile;

    .line 3670
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Used different data profile for handover. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataProfile:Landroid/telephony/data/DataProfile;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/DataNetwork;->log(Ljava/lang/String;)V

    .line 3674
    :cond_ce
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Start handover from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mTransport:I

    invoke-static {v1}, Landroid/telephony/AccessNetworkConstants;->transportTypeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3675
    invoke-static {p1}, Landroid/telephony/AccessNetworkConstants;->transportTypeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3674
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataNetwork;->logl(Ljava/lang/String;)V

    .line 3677
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataServiceManagers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/internal/telephony/data/DataServiceManager;

    .line 3678
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetwork;->getDataNetworkType(I)I

    move-result p1

    invoke-static {p1}, Lcom/android/internal/telephony/data/DataUtils;->networkTypeToAccessNetworkType(I)I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/telephony/data/DataNetwork;->mHandoverDataProfile:Landroid/telephony/data/DataProfile;

    iget-object v7, p0, Lcom/android/internal/telephony/data/DataNetwork;->mLinkProperties:Landroid/net/LinkProperties;

    iget v8, p0, Lcom/android/internal/telephony/data/DataNetwork;->mPduSessionId:I

    iget-object v9, p0, Lcom/android/internal/telephony/data/DataNetwork;->mNetworkSliceInfo:Landroid/telephony/data/NetworkSliceInfo;

    .line 3681
    invoke-virtual {v3}, Landroid/telephony/data/DataProfile;->getTrafficDescriptor()Landroid/telephony/data/TrafficDescriptor;

    move-result-object v10

    const/16 p1, 0xf

    .line 3682
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/StateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v12

    const/4 v6, 0x3

    const/4 v11, 0x1

    .line 3677
    invoke-virtual/range {v1 .. v12}, Lcom/android/internal/telephony/data/DataServiceManager;->setupDataCall(ILandroid/telephony/data/DataProfile;ZZILandroid/net/LinkProperties;ILandroid/telephony/data/NetworkSliceInfo;Landroid/telephony/data/TrafficDescriptor;ZLandroid/os/Message;)V

    .line 3684
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataNetworkValidationStats:Lcom/android/internal/telephony/metrics/DataNetworkValidationStats;

    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/DataNetworkValidationStats;->onHandoverAttempted()V

    return-void
.end method

.method private blacklist onTearDown(I)V
    .registers 7

    .line 3012
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTearDown: reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/internal/telephony/data/DataNetwork;->tearDownReasonToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataNetwork;->logl(Ljava/lang/String;)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_39

    .line 3016
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataNetwork;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_39

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    const/4 v2, 0x4

    .line 3017
    invoke-virtual {v1, v2}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v1

    if-nez v1, :cond_34

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    const/16 v2, 0xc

    .line 3018
    invoke-virtual {v1, v2}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v1

    if-eqz v1, :cond_39

    .line 3020
    :cond_34
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataNetworkCallback:Lcom/android/internal/telephony/data/DataNetwork$DataNetworkCallback;

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/data/DataNetwork$DataNetworkCallback;->onTrackNetworkUnwanted(Lcom/android/internal/telephony/data/DataNetwork;)V

    .line 3023
    :cond_39
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataServiceManagers:Landroid/util/SparseArray;

    iget v2, p0, Lcom/android/internal/telephony/data/DataNetwork;->mTransport:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/data/DataServiceManager;

    iget-object v2, p0, Lcom/android/internal/telephony/data/DataNetwork;->mCid:Landroid/util/SparseIntArray;

    iget v3, p0, Lcom/android/internal/telephony/data/DataNetwork;->mTransport:I

    invoke-virtual {v2, v3}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    const/4 v3, 0x3

    if-ne p1, v3, :cond_50

    const/4 v3, 0x2

    goto :goto_51

    :cond_50
    move v3, v0

    :goto_51
    const/16 v4, 0x13

    .line 3026
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/StateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 3023
    invoke-virtual {v1, v2, v3, v4}, Lcom/android/internal/telephony/data/DataServiceManager;->deactivateDataCall(IILandroid/os/Message;)V

    .line 3027
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataCallSessionStats:Lcom/android/internal/telephony/metrics/DataCallSessionStats;

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/metrics/DataCallSessionStats;->setDeactivateDataCallReason(I)V

    .line 3028
    iput-boolean v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mInvokedDataDeactivation:Z

    return-void
.end method

.method private blacklist recreateNetworkAgent()V
    .registers 3

    .line 2332
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataNetwork;->isConnecting()Z

    move-result v0

    if-nez v0, :cond_46

    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataNetwork;->isDisconnected()Z

    move-result v0

    if-nez v0, :cond_46

    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataNetwork;->isDisconnecting()Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_46

    .line 2338
    :cond_13
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mNetworkAgent:Lcom/android/internal/telephony/data/TelephonyNetworkAgent;

    invoke-virtual {v0}, Lcom/android/internal/telephony/data/TelephonyNetworkAgent;->abandon()V

    .line 2341
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetwork;->createNetworkAgent()Lcom/android/internal/telephony/data/TelephonyNetworkAgent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mNetworkAgent:Lcom/android/internal/telephony/data/TelephonyNetworkAgent;

    .line 2342
    invoke-virtual {v0}, Landroid/net/NetworkAgent;->markConnected()V

    .line 2343
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetwork;->notifyPreciseDataConnectionState()V

    .line 2346
    iget-boolean v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mSuspended:Z

    if-eqz v0, :cond_45

    .line 2347
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "recreateNetworkAgent: The network is in suspended state. Update the network capability again. nc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/DataNetwork;->log(Ljava/lang/String;)V

    .line 2349
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mNetworkAgent:Lcom/android/internal/telephony/data/TelephonyNetworkAgent;

    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v0, p0}, Landroid/net/NetworkAgent;->sendNetworkCapabilities(Landroid/net/NetworkCapabilities;)V

    :cond_45
    return-void

    .line 2333
    :cond_46
    :goto_46
    const-string v0, "Incorrect state for re-creating the network agent."

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/DataNetwork;->loge(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist registerForBandwidthUpdate()V
    .registers 4

    .line 2208
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataConfigManager:Lcom/android/internal/telephony/data/DataConfigManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/data/DataConfigManager;->getBandwidthEstimateSource()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_18

    .line 2210
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v0, v0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 2211
    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object p0

    const/16 v1, 0xb

    const/4 v2, 0x0

    .line 2210
    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForLceInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void

    :cond_18
    const/4 v1, 0x3

    if-ne v0, v1, :cond_3e

    .line 2213
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mLinkBandwidthEstimatorCallback:Lcom/android/internal/telephony/data/LinkBandwidthEstimator$LinkBandwidthEstimatorCallback;

    if-nez v0, :cond_3d

    .line 2214
    new-instance v0, Lcom/android/internal/telephony/data/DataNetwork$3;

    .line 2215
    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/android/internal/telephony/NetworkTypeController$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Lcom/android/internal/telephony/NetworkTypeController$$ExternalSyntheticLambda0;-><init>(Landroid/os/Handler;)V

    invoke-direct {v0, p0, v2}, Lcom/android/internal/telephony/data/DataNetwork$3;-><init>(Lcom/android/internal/telephony/data/DataNetwork;Ljava/util/concurrent/Executor;)V

    iput-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mLinkBandwidthEstimatorCallback:Lcom/android/internal/telephony/data/LinkBandwidthEstimator$LinkBandwidthEstimatorCallback;

    .line 2224
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getLinkBandwidthEstimator()Lcom/android/internal/telephony/data/LinkBandwidthEstimator;

    move-result-object v0

    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mLinkBandwidthEstimatorCallback:Lcom/android/internal/telephony/data/LinkBandwidthEstimator$LinkBandwidthEstimatorCallback;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->registerCallback(Lcom/android/internal/telephony/data/LinkBandwidthEstimator$LinkBandwidthEstimatorCallback;)V

    :cond_3d
    return-void

    .line 2228
    :cond_3e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid bandwidth source configuration: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/DataNetwork;->loge(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist registerForWwanEvents()V
    .registers 1

    .line 2077
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetwork;->registerForBandwidthUpdate()V

    .line 2078
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mKeepaliveTracker:Lcom/android/internal/telephony/data/KeepaliveTracker;

    invoke-virtual {p0}, Lcom/android/internal/telephony/data/KeepaliveTracker;->registerForKeepaliveStatus()V

    return-void
.end method

.method private blacklist removeUnsatisfiedNetworkRequests(Z)V
    .registers 6

    .line 2256
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mAttachedNetworkRequestList:Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_37

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;

    .line 2257
    iget-object v2, p0, Lcom/android/internal/telephony/data/DataNetwork;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->canBeSatisfiedBy(Landroid/net/NetworkCapabilities;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 2258
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeUnsatisfiedNetworkRequests: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " can\'t be satisfied anymore. Will be detached."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/data/DataNetwork;->log(Ljava/lang/String;)V

    .line 2260
    invoke-virtual {p0, v1, p1}, Lcom/android/internal/telephony/data/DataNetwork;->detachNetworkRequest(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;Z)V

    goto :goto_6

    :cond_37
    return-void
.end method

.method private blacklist reportAnomaly(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 4057
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetwork;->logl(Ljava/lang/String;)V

    .line 4058
    invoke-static {p2}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object p2

    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getCarrierId()I

    move-result p0

    invoke-static {p2, p1, p0}, Landroid/telephony/AnomalyReporter;->reportAnomaly(Ljava/util/UUID;Ljava/lang/String;I)V

    return-void
.end method

.method private blacklist shouldSkip464Xlat()Z
    .registers 4

    .line 1129
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataProfile:Landroid/telephony/data/DataProfile;

    invoke-virtual {v0}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1b

    .line 1130
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataProfile:Landroid/telephony/data/DataProfile;

    invoke-virtual {v0}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/data/ApnSetting;->getSkip464Xlat()I

    move-result v0

    if-eqz v0, :cond_1a

    if-eq v0, v2, :cond_19

    goto :goto_1b

    :cond_19
    return v2

    :cond_1a
    return v1

    .line 1142
    :cond_1b
    :goto_1b
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataNetwork;->getNetworkCapabilities()Landroid/net/NetworkCapabilities;

    move-result-object p0

    const/4 v0, 0x4

    .line 1143
    invoke-virtual {p0, v0}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v0

    if-eqz v0, :cond_2f

    const/16 v0, 0xc

    .line 1144
    invoke-virtual {p0, v0}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result p0

    if-nez p0, :cond_2f

    return v2

    :cond_2f
    return v1
.end method

.method public static blacklist tearDownReasonToString(I)Ljava/lang/String;
    .registers 3

    packed-switch p0, :pswitch_data_7e

    .line 3986
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 3985
    :pswitch_1a
    const-string p0, "TEAR_DOWN_REASON_DATA_NETWORK_TRANSPORT_NOT_ALLOWED"

    return-object p0

    .line 3983
    :pswitch_1d
    const-string p0, "TEAR_DOWN_REASON_DATA_LIMIT_REACHED"

    return-object p0

    .line 3982
    :pswitch_20
    const-string p0, "TEAR_DOWN_REASON_PREFERRED_DATA_SWITCHED"

    return-object p0

    .line 3980
    :pswitch_23
    const-string p0, "TEAR_DOWN_REASON_ONLY_ALLOWED_SINGLE_NETWORK"

    return-object p0

    .line 3978
    :pswitch_26
    const-string p0, "TEAR_DOWN_REASON_ILLEGAL_STATE"

    return-object p0

    .line 3977
    :pswitch_29
    const-string p0, "TEAR_DOWN_REASON_NOT_ALLOWED_BY_POLICY"

    return-object p0

    .line 3976
    :pswitch_2c
    const-string p0, "TEAR_DOWN_REASON_DATA_PROFILE_NOT_PREFERRED"

    return-object p0

    .line 3974
    :pswitch_2f
    const-string p0, "TEAR_DOWN_REASON_DATA_PROFILE_INVALID"

    return-object p0

    .line 3973
    :pswitch_32
    const-string p0, "TEAR_DOWN_REASON_DATA_THROTTLED"

    return-object p0

    .line 3972
    :pswitch_35
    const-string p0, "TEAR_DOWN_REASON_RETRY_SCHEDULED"

    return-object p0

    .line 3971
    :pswitch_38
    const-string p0, "TEAR_DOWN_REASON_CDMA_EMERGENCY_CALLBACK_MODE"

    return-object p0

    .line 3969
    :pswitch_3b
    const-string p0, "TEAR_DOWN_REASON_NO_SUITABLE_DATA_PROFILE"

    return-object p0

    .line 3967
    :pswitch_3e
    const-string p0, "TEAR_DOWN_REASON_PENDING_TEAR_DOWN_ALL"

    return-object p0

    .line 3966
    :pswitch_41
    const-string p0, "TEAR_DOWN_REASON_DATA_CONFIG_NOT_READY"

    return-object p0

    .line 3965
    :pswitch_44
    const-string p0, "TEAR_DOWN_REASON_NOT_IN_SERVICE"

    return-object p0

    .line 3964
    :pswitch_47
    const-string p0, "TEAR_DOWN_REASON_DEFAULT_DATA_UNSELECTED"

    return-object p0

    .line 3962
    :pswitch_4a
    const-string p0, "TEAR_DOWN_REASON_VOPS_NOT_SUPPORTED"

    return-object p0

    .line 3961
    :pswitch_4d
    const-string p0, "TEAR_DOWN_REASON_VCN_REQUESTED"

    return-object p0

    .line 3960
    :pswitch_50
    const-string p0, "TEAR_DOWN_REASON_HANDOVER_NOT_ALLOWED"

    return-object p0

    .line 3959
    :pswitch_53
    const-string p0, "TEAR_DOWN_REASON_HANDOVER_FAILED"

    return-object p0

    .line 3958
    :pswitch_56
    const-string p0, "TEAR_DOWN_REASON_DATA_STALL"

    return-object p0

    .line 3957
    :pswitch_59
    const-string p0, "TEAR_DOWN_REASON_POWER_OFF_BY_CARRIER"

    return-object p0

    .line 3956
    :pswitch_5c
    const-string p0, "TEAR_DOWN_REASON_DATA_SERVICE_NOT_READY"

    return-object p0

    .line 3954
    :pswitch_5f
    const-string p0, "TEAR_DOWN_REASON_SERVICE_OPTION_NOT_SUPPORTED"

    return-object p0

    .line 3952
    :pswitch_62
    const-string p0, "TEAR_DOWN_REASON_CONCURRENT_VOICE_DATA_NOT_ALLOWED"

    return-object p0

    .line 3950
    :pswitch_65
    const-string p0, "TEAR_DOWN_REASON_ROAMING_DISABLED"

    return-object p0

    .line 3949
    :pswitch_68
    const-string p0, "TEAR_DOWN_REASON_RAT_NOT_ALLOWED"

    return-object p0

    .line 3948
    :pswitch_6b
    const-string p0, "TEAR_DOWN_REASON_NO_LIVE_REQUEST"

    return-object p0

    .line 3947
    :pswitch_6e
    const-string p0, "DATA_DISABLED"

    return-object p0

    .line 3946
    :pswitch_71
    const-string p0, "AIRPLANE_MODE_ON"

    return-object p0

    .line 3945
    :pswitch_74
    const-string p0, "SIM_REMOVAL"

    return-object p0

    .line 3944
    :pswitch_77
    const-string p0, "CONNECTIVITY_SERVICE_UNWANTED"

    return-object p0

    .line 3943
    :pswitch_7a
    const-string p0, "NONE"

    return-object p0

    nop

    :pswitch_data_7e
    .packed-switch 0x0
        :pswitch_7a
        :pswitch_77
        :pswitch_74
        :pswitch_71
        :pswitch_6e
        :pswitch_6b
        :pswitch_68
        :pswitch_65
        :pswitch_62
        :pswitch_5f
        :pswitch_5c
        :pswitch_59
        :pswitch_56
        :pswitch_53
        :pswitch_50
        :pswitch_4d
        :pswitch_4a
        :pswitch_47
        :pswitch_44
        :pswitch_41
        :pswitch_3e
        :pswitch_3b
        :pswitch_38
        :pswitch_35
        :pswitch_32
        :pswitch_2f
        :pswitch_2c
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
    .end packed-switch
.end method

.method private blacklist trackHandoverFailure(I)V
    .registers 4

    .line 3759
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetwork;->getDataNetworkType()I

    move-result v0

    .line 3760
    iget v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mTransport:I

    invoke-static {v1}, Lcom/android/internal/telephony/data/DataUtils;->getTargetTransport(I)I

    move-result v1

    .line 3761
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/data/DataNetwork;->getDataNetworkType(I)I

    move-result v1

    .line 3763
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataCallSessionStats:Lcom/android/internal/telephony/metrics/DataCallSessionStats;

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/internal/telephony/metrics/DataCallSessionStats;->onHandoverFailure(III)V

    return-void
.end method

.method private blacklist unregisterForBandwidthUpdate()V
    .registers 4

    .line 2236
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataConfigManager:Lcom/android/internal/telephony/data/DataConfigManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/data/DataConfigManager;->getBandwidthEstimateSource()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_15

    .line 2238
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v0, v0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForLceInfo(Landroid/os/Handler;)V

    return-void

    :cond_15
    const/4 v1, 0x3

    if-ne v0, v1, :cond_2b

    .line 2240
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mLinkBandwidthEstimatorCallback:Lcom/android/internal/telephony/data/LinkBandwidthEstimator$LinkBandwidthEstimatorCallback;

    if-eqz v0, :cond_2a

    .line 2241
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getLinkBandwidthEstimator()Lcom/android/internal/telephony/data/LinkBandwidthEstimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mLinkBandwidthEstimatorCallback:Lcom/android/internal/telephony/data/LinkBandwidthEstimator$LinkBandwidthEstimatorCallback;

    .line 2242
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->unregisterCallback(Lcom/android/internal/telephony/data/LinkBandwidthEstimator$LinkBandwidthEstimatorCallback;)V

    const/4 v0, 0x0

    .line 2243
    iput-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mLinkBandwidthEstimatorCallback:Lcom/android/internal/telephony/data/LinkBandwidthEstimator$LinkBandwidthEstimatorCallback;

    :cond_2a
    return-void

    .line 2246
    :cond_2b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid bandwidth source configuration: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/DataNetwork;->loge(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist unregisterForWwanEvents()V
    .registers 1

    .line 2085
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetwork;->unregisterForBandwidthUpdate()V

    .line 2086
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mKeepaliveTracker:Lcom/android/internal/telephony/data/KeepaliveTracker;

    invoke-virtual {p0}, Lcom/android/internal/telephony/data/KeepaliveTracker;->unregisterForKeepaliveStatus()V

    return-void
.end method

.method private blacklist updateBandwidthFromDataConfig()V
    .registers 3

    .line 3214
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataConfigManager:Lcom/android/internal/telephony/data/DataConfigManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/data/DataConfigManager;->getBandwidthEstimateSource()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_a

    return-void

    .line 3217
    :cond_a
    const-string v0, "updateBandwidthFromDataConfig"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/DataNetwork;->log(Ljava/lang/String;)V

    .line 3218
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataConfigManager:Lcom/android/internal/telephony/data/DataConfigManager;

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mTelephonyDisplayInfo:Landroid/telephony/TelephonyDisplayInfo;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/data/DataConfigManager;->getBandwidthForNetworkType(Landroid/telephony/TelephonyDisplayInfo;)Lcom/android/internal/telephony/data/DataNetwork$NetworkBandwidth;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mNetworkBandwidth:Lcom/android/internal/telephony/data/DataNetwork$NetworkBandwidth;

    .line 3219
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetwork;->updateNetworkCapabilities()V

    return-void
.end method

.method private blacklist updateDataNetwork(Landroid/telephony/data/DataCallResponse;)V
    .registers 13

    if-nez p1, :cond_3

    return-void

    .line 2762
    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mCid:Landroid/util/SparseIntArray;

    iget v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mTransport:I

    invoke-virtual {p1}, Landroid/telephony/data/DataCallResponse;->getId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 2763
    new-instance v0, Landroid/net/LinkProperties;

    invoke-direct {v0}, Landroid/net/LinkProperties;-><init>()V

    .line 2766
    invoke-virtual {p1}, Landroid/telephony/data/DataCallResponse;->getInterfaceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/LinkProperties;->setInterfaceName(Ljava/lang/String;)V

    .line 2769
    iget v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mPduSessionId:I

    invoke-virtual {p1}, Landroid/telephony/data/DataCallResponse;->getPduSessionId()I

    move-result v2

    if-eq v1, v2, :cond_3e

    .line 2770
    invoke-virtual {p1}, Landroid/telephony/data/DataCallResponse;->getPduSessionId()I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mPduSessionId:I

    .line 2771
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PDU session id updated to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/telephony/data/DataNetwork;->mPduSessionId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/data/DataNetwork;->log(Ljava/lang/String;)V

    .line 2775
    :cond_3e
    iget v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mLinkStatus:I

    invoke-virtual {p1}, Landroid/telephony/data/DataCallResponse;->getLinkStatus()I

    move-result v2

    if-eq v1, v2, :cond_76

    .line 2776
    invoke-virtual {p1}, Landroid/telephony/data/DataCallResponse;->getLinkStatus()I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mLinkStatus:I

    .line 2777
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Link status updated to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/telephony/data/DataNetwork;->mLinkStatus:I

    invoke-static {v2}, Lcom/android/internal/telephony/data/DataUtils;->linkStatusToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/data/DataNetwork;->log(Ljava/lang/String;)V

    .line 2778
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataNetwork;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_76

    .line 2782
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataNetworkCallback:Lcom/android/internal/telephony/data/DataNetwork$DataNetworkCallback;

    new-instance v2, Lcom/android/internal/telephony/data/DataNetwork$$ExternalSyntheticLambda21;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/data/DataNetwork$$ExternalSyntheticLambda21;-><init>(Lcom/android/internal/telephony/data/DataNetwork;)V

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/data/DataCallback;->invokeFromExecutor(Ljava/lang/Runnable;)V

    .line 2788
    :cond_76
    invoke-virtual {p1}, Landroid/telephony/data/DataCallResponse;->getAddresses()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_c6

    .line 2789
    invoke-virtual {p1}, Landroid/telephony/data/DataCallResponse;->getAddresses()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_88
    :goto_88
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_de

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/LinkAddress;

    .line 2790
    invoke-virtual {v2}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    move-result v3

    if-nez v3, :cond_88

    .line 2791
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addr/pl="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/net/LinkAddress;->getPrefixLength()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/data/DataNetwork;->logv(Ljava/lang/String;)V

    .line 2792
    invoke-virtual {v0, v2}, Landroid/net/LinkProperties;->addLinkAddress(Landroid/net/LinkAddress;)Z

    goto :goto_88

    .line 2796
    :cond_c6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no address for ifname="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/telephony/data/DataCallResponse;->getInterfaceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/data/DataNetwork;->loge(Ljava/lang/String;)V

    .line 2800
    :cond_de
    invoke-virtual {p1}, Landroid/telephony/data/DataCallResponse;->getDnsAddresses()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_106

    .line 2801
    invoke-virtual {p1}, Landroid/telephony/data/DataCallResponse;->getDnsAddresses()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_f0
    :goto_f0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_10b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/InetAddress;

    .line 2802
    invoke-virtual {v2}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    move-result v3

    if-nez v3, :cond_f0

    .line 2803
    invoke-virtual {v0, v2}, Landroid/net/LinkProperties;->addDnsServer(Ljava/net/InetAddress;)Z

    goto :goto_f0

    .line 2807
    :cond_106
    const-string v1, "Empty dns response"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/data/DataNetwork;->loge(Ljava/lang/String;)V

    .line 2811
    :cond_10b
    invoke-virtual {p1}, Landroid/telephony/data/DataCallResponse;->getPcscfAddresses()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_12d

    .line 2812
    invoke-virtual {p1}, Landroid/telephony/data/DataCallResponse;->getPcscfAddresses()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_12d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/InetAddress;

    .line 2813
    invoke-virtual {v0, v2}, Landroid/net/LinkProperties;->addPcscfServer(Ljava/net/InetAddress;)Z

    goto :goto_11d

    .line 2818
    :cond_12d
    invoke-virtual {p1}, Landroid/telephony/data/DataCallResponse;->getMtuV4()I

    move-result v1

    if-lez v1, :cond_138

    invoke-virtual {p1}, Landroid/telephony/data/DataCallResponse;->getMtuV4()I

    move-result v1

    goto :goto_13c

    :cond_138
    invoke-virtual {p1}, Landroid/telephony/data/DataCallResponse;->getMtu()I

    move-result v1

    :goto_13c
    if-gtz v1, :cond_158

    .line 2822
    iget-object v2, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataProfile:Landroid/telephony/data/DataProfile;

    invoke-virtual {v2}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v2

    if-eqz v2, :cond_150

    .line 2823
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataProfile:Landroid/telephony/data/DataProfile;

    invoke-virtual {v1}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/data/ApnSetting;->getMtuV4()I

    move-result v1

    :cond_150
    if-gtz v1, :cond_158

    .line 2826
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataConfigManager:Lcom/android/internal/telephony/data/DataConfigManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/data/DataConfigManager;->getDefaultMtu()I

    move-result v1

    .line 2831
    :cond_158
    invoke-virtual {p1}, Landroid/telephony/data/DataCallResponse;->getMtuV6()I

    move-result v2

    if-lez v2, :cond_163

    invoke-virtual {p1}, Landroid/telephony/data/DataCallResponse;->getMtuV6()I

    move-result v2

    goto :goto_167

    :cond_163
    invoke-virtual {p1}, Landroid/telephony/data/DataCallResponse;->getMtu()I

    move-result v2

    :goto_167
    if-gtz v2, :cond_183

    .line 2834
    iget-object v3, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataProfile:Landroid/telephony/data/DataProfile;

    invoke-virtual {v3}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v3

    if-eqz v3, :cond_17b

    .line 2835
    iget-object v2, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataProfile:Landroid/telephony/data/DataProfile;

    invoke-virtual {v2}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/data/ApnSetting;->getMtuV6()I

    move-result v2

    :cond_17b
    if-gtz v2, :cond_183

    .line 2838
    iget-object v2, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataConfigManager:Lcom/android/internal/telephony/data/DataConfigManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/data/DataConfigManager;->getDefaultMtu()I

    move-result v2

    .line 2843
    :cond_183
    invoke-virtual {p1}, Landroid/telephony/data/DataCallResponse;->getGatewayAddresses()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_18b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1ab

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v7, v4

    check-cast v7, Ljava/net/InetAddress;

    .line 2844
    instance-of v4, v7, Ljava/net/Inet6Address;

    if-eqz v4, :cond_19e

    move v10, v2

    goto :goto_19f

    :cond_19e
    move v10, v1

    .line 2845
    :goto_19f
    new-instance v5, Landroid/net/RouteInfo;

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v6, 0x0

    invoke-direct/range {v5 .. v10}, Landroid/net/RouteInfo;-><init>(Landroid/net/IpPrefix;Ljava/net/InetAddress;Ljava/lang/String;II)V

    invoke-virtual {v0, v5}, Landroid/net/LinkProperties;->addRoute(Landroid/net/RouteInfo;)Z

    goto :goto_18b

    .line 2852
    :cond_1ab
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/net/LinkProperties;->setMtu(I)V

    .line 2854
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataProfile:Landroid/telephony/data/DataProfile;

    invoke-virtual {v1}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v1

    if-eqz v1, :cond_1ea

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataProfile:Landroid/telephony/data/DataProfile;

    .line 2855
    invoke-virtual {v1}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/data/ApnSetting;->getProxyAddressAsString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1ea

    .line 2856
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataProfile:Landroid/telephony/data/DataProfile;

    invoke-virtual {v1}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/data/ApnSetting;->getProxyPort()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1d9

    const/16 v1, 0x1f90

    .line 2860
    :cond_1d9
    iget-object v2, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataProfile:Landroid/telephony/data/DataProfile;

    .line 2861
    invoke-virtual {v2}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/data/ApnSetting;->getProxyAddressAsString()Ljava/lang/String;

    move-result-object v2

    .line 2860
    invoke-static {v2, v1}, Landroid/net/ProxyInfo;->buildDirectProxy(Ljava/lang/String;I)Landroid/net/ProxyInfo;

    move-result-object v1

    .line 2862
    invoke-virtual {v0, v1}, Landroid/net/LinkProperties;->setHttpProxy(Landroid/net/ProxyInfo;)V

    .line 2865
    :cond_1ea
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mTcpBufferSizes:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/net/LinkProperties;->setTcpBufferSizes(Ljava/lang/String;)V

    .line 2867
    invoke-virtual {p1}, Landroid/telephony/data/DataCallResponse;->getSliceInfo()Landroid/telephony/data/NetworkSliceInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mNetworkSliceInfo:Landroid/telephony/data/NetworkSliceInfo;

    .line 2869
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mTrafficDescriptors:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 2870
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mTrafficDescriptors:Ljava/util/List;

    invoke-virtual {p1}, Landroid/telephony/data/DataCallResponse;->getTrafficDescriptors()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2872
    invoke-virtual {p1}, Landroid/telephony/data/DataCallResponse;->getDefaultQos()Landroid/telephony/data/Qos;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDefaultQos:Landroid/telephony/data/Qos;

    .line 2875
    new-instance v1, Ljava/util/HashSet;

    invoke-virtual {p1}, Landroid/telephony/data/DataCallResponse;->getQosBearerSessions()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 2876
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/telephony/data/DataNetwork;->mQosBearerSessions:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ne v2, v3, :cond_226

    iget-object v2, p0, Lcom/android/internal/telephony/data/DataNetwork;->mQosBearerSessions:Ljava/util/List;

    .line 2877
    invoke-interface {v1, v2}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_22f

    .line 2878
    :cond_226
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataNetworkCallback:Lcom/android/internal/telephony/data/DataNetwork$DataNetworkCallback;

    invoke-virtual {p1}, Landroid/telephony/data/DataCallResponse;->getQosBearerSessions()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/data/DataNetwork$DataNetworkCallback;->onQosSessionsChanged(Ljava/util/List;)V

    .line 2880
    :cond_22f
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mQosBearerSessions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 2881
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mQosBearerSessions:Ljava/util/List;

    invoke-virtual {p1}, Landroid/telephony/data/DataCallResponse;->getQosBearerSessions()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2882
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mQosCallbackTracker:Lcom/android/internal/telephony/data/QosCallbackTracker;

    if-eqz v1, :cond_246

    .line 2883
    iget-object v2, p0, Lcom/android/internal/telephony/data/DataNetwork;->mQosBearerSessions:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/data/QosCallbackTracker;->updateSessions(Ljava/util/List;)V

    .line 2886
    :cond_246
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2a5

    .line 2889
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataNetwork;->isConnected()Z

    move-result v1

    if-nez v1, :cond_25a

    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataNetwork;->isHandoverInProgress()Z

    move-result v1

    if-eqz v1, :cond_286

    :cond_25a
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mLinkProperties:Landroid/net/LinkProperties;

    .line 2890
    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/data/DataNetwork;->isLinkPropertiesCompatible(Landroid/net/LinkProperties;Landroid/net/LinkProperties;)Z

    move-result v1

    if-nez v1, :cond_286

    .line 2891
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateDataNetwork: Incompatible link properties detected. Re-create the network agent. Changed from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/data/DataNetwork;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/data/DataNetwork;->logl(Ljava/lang/String;)V

    .line 2895
    iput-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mLinkProperties:Landroid/net/LinkProperties;

    .line 2896
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetwork;->recreateNetworkAgent()V

    goto :goto_2a5

    .line 2898
    :cond_286
    iput-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mLinkProperties:Landroid/net/LinkProperties;

    .line 2899
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendLinkProperties "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/DataNetwork;->log(Ljava/lang/String;)V

    .line 2900
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mNetworkAgent:Lcom/android/internal/telephony/data/TelephonyNetworkAgent;

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0, v1}, Landroid/net/NetworkAgent;->sendLinkProperties(Landroid/net/LinkProperties;)V

    .line 2904
    :cond_2a5
    :goto_2a5
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetwork;->updateNetworkCapabilities()V

    .line 2905
    invoke-virtual {p1}, Landroid/telephony/data/DataCallResponse;->getNetworkValidationStatus()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetwork;->updateValidationStatus(I)V

    return-void
.end method

.method private blacklist updateMeteredAndCongested()V
    .registers 8

    .line 3241
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mTelephonyDisplayInfo:Landroid/telephony/TelephonyDisplayInfo;

    invoke-virtual {v0}, Landroid/telephony/TelephonyDisplayInfo;->getNetworkType()I

    move-result v0

    .line 3242
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mTelephonyDisplayInfo:Landroid/telephony/TelephonyDisplayInfo;

    invoke-virtual {v1}, Landroid/telephony/TelephonyDisplayInfo;->getOverrideNetworkType()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1c

    const/4 v3, 0x2

    if-eq v1, v3, :cond_1c

    const/4 v3, 0x3

    if-eq v1, v3, :cond_19

    const/4 v3, 0x5

    if-eq v1, v3, :cond_19

    goto :goto_1e

    :cond_19
    const/16 v0, 0x14

    goto :goto_1e

    :cond_1c
    const/16 v0, 0x13

    .line 3252
    :goto_1e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateMeteredAndCongested: networkType="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3253
    invoke-static {v0}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3252
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/data/DataNetwork;->log(Ljava/lang/String;)V

    .line 3255
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataConfigManager:Lcom/android/internal/telephony/data/DataConfigManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/data/DataConfigManager;->isTempNotMeteredSupportedByCarrier()Z

    move-result v1

    iget-boolean v3, p0, Lcom/android/internal/telephony/data/DataNetwork;->mTempNotMeteredSupported:Z

    const/4 v4, 0x0

    if-eq v1, v3, :cond_5d

    xor-int/lit8 v1, v3, 0x1

    .line 3256
    iput-boolean v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mTempNotMeteredSupported:Z

    .line 3258
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateMeteredAndCongested: mTempNotMeteredSupported changed to "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/internal/telephony/data/DataNetwork;->mTempNotMeteredSupported:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/data/DataNetwork;->log(Ljava/lang/String;)V

    move v1, v2

    goto :goto_5e

    :cond_5d
    move v1, v4

    .line 3261
    :goto_5e
    iget-object v3, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataConfigManager:Lcom/android/internal/telephony/data/DataConfigManager;

    iget-object v5, p0, Lcom/android/internal/telephony/data/DataNetwork;->mTelephonyDisplayInfo:Landroid/telephony/TelephonyDisplayInfo;

    iget-object v6, p0, Lcom/android/internal/telephony/data/DataNetwork;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 3262
    invoke-interface {v6}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v6

    .line 3261
    invoke-virtual {v3, v5, v6}, Lcom/android/internal/telephony/data/DataConfigManager;->isNetworkTypeUnmetered(Landroid/telephony/TelephonyDisplayInfo;Landroid/telephony/ServiceState;)Z

    move-result v3

    if-eqz v3, :cond_85

    iget-object v3, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataNetworkController:Lcom/android/internal/telephony/data/DataNetworkController;

    .line 3263
    invoke-virtual {v3}, Lcom/android/internal/telephony/data/DataNetworkController;->getUnmeteredOverrideNetworkTypes()Ljava/util/Set;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_84

    .line 3264
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataNetwork;->isNetworkTypeUnmetered(I)Z

    move-result v3

    if-eqz v3, :cond_85

    :cond_84
    move v4, v2

    .line 3265
    :cond_85
    iget-boolean v3, p0, Lcom/android/internal/telephony/data/DataNetwork;->mTempNotMetered:Z

    if-eq v4, v3, :cond_a2

    .line 3266
    iput-boolean v4, p0, Lcom/android/internal/telephony/data/DataNetwork;->mTempNotMetered:Z

    .line 3268
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateMeteredAndCongested: mTempNotMetered changed to "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/internal/telephony/data/DataNetwork;->mTempNotMetered:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/data/DataNetwork;->log(Ljava/lang/String;)V

    move v1, v2

    .line 3270
    :cond_a2
    iget-object v3, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataNetworkController:Lcom/android/internal/telephony/data/DataNetworkController;

    invoke-virtual {v3}, Lcom/android/internal/telephony/data/DataNetworkController;->getCongestedOverrideNetworkTypes()Ljava/util/Set;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    iget-boolean v4, p0, Lcom/android/internal/telephony/data/DataNetwork;->mCongested:Z

    if-eq v3, v4, :cond_cf

    xor-int/lit8 v1, v4, 0x1

    .line 3272
    iput-boolean v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mCongested:Z

    .line 3274
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateMeteredAndCongested: mCongested changed to "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/internal/telephony/data/DataNetwork;->mCongested:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/data/DataNetwork;->log(Ljava/lang/String;)V

    goto :goto_d0

    :cond_cf
    move v2, v1

    :goto_d0
    if-eqz v2, :cond_d5

    .line 3277
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetwork;->updateNetworkCapabilities()V

    .line 3279
    :cond_d5
    iget-boolean v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mTempNotMetered:Z

    if-eqz v1, :cond_e4

    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataNetwork;->isInternetSupported()Z

    move-result v1

    if-eqz v1, :cond_e4

    .line 3281
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataCallSessionStats:Lcom/android/internal/telephony/metrics/DataCallSessionStats;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/metrics/DataCallSessionStats;->onUnmeteredUpdate(I)V

    :cond_e4
    return-void
.end method

.method private blacklist updateNetworkCapabilities()V
    .registers 14

    .line 2364
    new-instance v1, Landroid/net/NetworkCapabilities$Builder;

    invoke-direct {v1}, Landroid/net/NetworkCapabilities$Builder;-><init>()V

    .line 2366
    iget-boolean v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mIsSatellite:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataConfigManager:Lcom/android/internal/telephony/data/DataConfigManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/data/DataConfigManager;->getForcedCellularTransportCapabilities()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v3, Lcom/android/internal/telephony/data/DataNetwork$$ExternalSyntheticLambda10;

    invoke-direct {v3, p0}, Lcom/android/internal/telephony/data/DataNetwork$$ExternalSyntheticLambda10;-><init>(Lcom/android/internal/telephony/data/DataNetwork;)V

    .line 2367
    invoke-interface {v0, v3}, Ljava/util/stream/Stream;->noneMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    if-eqz v0, :cond_25

    const/16 v0, 0xa

    .line 2368
    invoke-virtual {v1, v0}, Landroid/net/NetworkCapabilities$Builder;->addTransportType(I)Landroid/net/NetworkCapabilities$Builder;

    goto :goto_28

    .line 2370
    :cond_25
    invoke-virtual {v1, v2}, Landroid/net/NetworkCapabilities$Builder;->addTransportType(I)Landroid/net/NetworkCapabilities$Builder;

    .line 2373
    :goto_28
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v3

    .line 2375
    new-instance v0, Landroid/net/TelephonyNetworkSpecifier$Builder;

    invoke-direct {v0}, Landroid/net/TelephonyNetworkSpecifier$Builder;-><init>()V

    iget v4, p0, Lcom/android/internal/telephony/data/DataNetwork;->mSubId:I

    .line 2376
    invoke-virtual {v0, v4}, Landroid/net/TelephonyNetworkSpecifier$Builder;->setSubscriptionId(I)Landroid/net/TelephonyNetworkSpecifier$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/TelephonyNetworkSpecifier$Builder;->build()Landroid/net/TelephonyNetworkSpecifier;

    move-result-object v0

    .line 2375
    invoke-virtual {v1, v0}, Landroid/net/NetworkCapabilities$Builder;->setNetworkSpecifier(Landroid/net/NetworkSpecifier;)Landroid/net/NetworkCapabilities$Builder;

    .line 2377
    iget v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mSubId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/net/NetworkCapabilities$Builder;->setSubscriptionIds(Ljava/util/Set;)Landroid/net/NetworkCapabilities$Builder;

    .line 2379
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataProfile:Landroid/telephony/data/DataProfile;

    invoke-virtual {v0}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v0

    const/16 v4, 0xc

    if-eqz v0, :cond_90

    .line 2382
    invoke-virtual {v0}, Landroid/telephony/data/ApnSetting;->getApnTypes()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v5

    new-instance v6, Lcom/android/internal/telephony/data/DataConfigManager$$ExternalSyntheticLambda14;

    invoke-direct {v6}, Lcom/android/internal/telephony/data/DataConfigManager$$ExternalSyntheticLambda14;-><init>()V

    .line 2383
    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v5

    new-instance v6, Lcom/android/internal/telephony/data/DataNetwork$$ExternalSyntheticLambda11;

    invoke-direct {v6}, Lcom/android/internal/telephony/data/DataNetwork$$ExternalSyntheticLambda11;-><init>()V

    .line 2384
    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v5

    .line 2385
    new-instance v6, Lcom/android/internal/telephony/data/DataNetwork$$ExternalSyntheticLambda12;

    invoke-direct {v6, v1}, Lcom/android/internal/telephony/data/DataNetwork$$ExternalSyntheticLambda12;-><init>(Landroid/net/NetworkCapabilities$Builder;)V

    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 2386
    invoke-virtual {v0}, Landroid/telephony/data/ApnSetting;->getApnTypes()Ljava/util/List;

    move-result-object v0

    const/16 v5, 0x4000

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_90

    .line 2387
    invoke-virtual {v1, v4}, Landroid/net/NetworkCapabilities$Builder;->addCapability(I)Landroid/net/NetworkCapabilities$Builder;

    :cond_90
    const/16 v0, 0x21

    .line 2394
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/DataNetwork;->hasNetworkCapabilityInNetworkRequests(I)Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_9d

    .line 2396
    invoke-virtual {v1, v0}, Landroid/net/NetworkCapabilities$Builder;->addCapability(I)Landroid/net/NetworkCapabilities$Builder;

    goto :goto_e0

    .line 2397
    :cond_9d
    iget-object v5, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataProfile:Landroid/telephony/data/DataProfile;

    const/4 v7, 0x4

    invoke-virtual {v5, v7}, Landroid/telephony/data/DataProfile;->canSatisfy(I)Z

    move-result v5

    if-eqz v5, :cond_e0

    .line 2401
    invoke-virtual {v1, v0}, Landroid/net/NetworkCapabilities$Builder;->addCapability(I)Landroid/net/NetworkCapabilities$Builder;

    .line 2402
    iget v5, p0, Lcom/android/internal/telephony/data/DataNetwork;->mTransport:I

    if-ne v5, v6, :cond_e0

    .line 2403
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetwork;->getNetworkRegistrationInfo()Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v5

    if-eqz v5, :cond_e0

    .line 2405
    invoke-virtual {v5}, Landroid/telephony/NetworkRegistrationInfo;->getDataSpecificInfo()Landroid/telephony/DataSpecificRegistrationInfo;

    move-result-object v5

    if-eqz v5, :cond_cc

    .line 2407
    invoke-virtual {v5}, Landroid/telephony/DataSpecificRegistrationInfo;->getVopsSupportInfo()Landroid/telephony/VopsSupportInfo;

    move-result-object v7

    if-eqz v7, :cond_cc

    .line 2408
    invoke-virtual {v5}, Landroid/telephony/DataSpecificRegistrationInfo;->getVopsSupportInfo()Landroid/telephony/VopsSupportInfo;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/VopsSupportInfo;->isVopsSupported()Z

    move-result v7

    if-nez v7, :cond_cc

    .line 2409
    invoke-virtual {v1, v0}, Landroid/net/NetworkCapabilities$Builder;->removeCapability(I)Landroid/net/NetworkCapabilities$Builder;

    .line 2411
    :cond_cc
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateNetworkCapabilities: dsri="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/DataNetwork;->log(Ljava/lang/String;)V

    .line 2417
    :cond_e0
    :goto_e0
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mTrafficDescriptors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_e6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_19b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/telephony/data/TrafficDescriptor;

    .line 2419
    :try_start_f3
    invoke-virtual {v7}, Landroid/telephony/data/TrafficDescriptor;->getOsAppId()[B

    move-result-object v0

    if-nez v0, :cond_fa

    goto :goto_e6

    .line 2420
    :cond_fa
    new-instance v0, Landroid/telephony/data/TrafficDescriptor$OsAppId;

    invoke-virtual {v7}, Landroid/telephony/data/TrafficDescriptor;->getOsAppId()[B

    move-result-object v8

    invoke-direct {v0, v8}, Landroid/telephony/data/TrafficDescriptor$OsAppId;-><init>([B)V

    .line 2421
    invoke-virtual {v0}, Landroid/telephony/data/TrafficDescriptor$OsAppId;->getOsId()Ljava/util/UUID;

    move-result-object v8

    sget-object v9, Landroid/telephony/data/TrafficDescriptor$OsAppId;->ANDROID_OS_ID:Ljava/util/UUID;

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_12a

    .line 2422
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Received non-Android OS id "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/telephony/data/TrafficDescriptor$OsAppId;->getOsId()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/DataNetwork;->loge(Ljava/lang/String;)V

    goto :goto_e6

    :catch_128
    move-exception v0

    goto :goto_16e

    .line 2426
    :cond_12a
    invoke-virtual {v0}, Landroid/telephony/data/TrafficDescriptor$OsAppId;->getAppId()Ljava/lang/String;

    move-result-object v8

    .line 2425
    invoke-static {v8}, Lcom/android/internal/telephony/data/DataUtils;->getNetworkCapabilityFromString(Ljava/lang/String;)I

    move-result v8

    const/4 v9, 0x5

    if-eq v8, v9, :cond_169

    const/16 v9, 0x1d

    if-eq v8, v9, :cond_15a

    const/16 v9, 0x22

    if-eq v8, v9, :cond_169

    const/16 v9, 0x23

    if-eq v8, v9, :cond_169

    .line 2440
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Invalid app id "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/telephony/data/TrafficDescriptor$OsAppId;->getAppId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/DataNetwork;->loge(Ljava/lang/String;)V

    goto :goto_e6

    .line 2429
    :cond_15a
    invoke-virtual {v1, v8}, Landroid/net/NetworkCapabilities$Builder;->addCapability(I)Landroid/net/NetworkCapabilities$Builder;

    .line 2431
    invoke-virtual {v1, v4}, Landroid/net/NetworkCapabilities$Builder;->addCapability(I)Landroid/net/NetworkCapabilities$Builder;

    .line 2432
    invoke-virtual {v0}, Landroid/telephony/data/TrafficDescriptor$OsAppId;->getDifferentiator()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/net/NetworkCapabilities$Builder;->addEnterpriseId(I)Landroid/net/NetworkCapabilities$Builder;

    goto/16 :goto_e6

    .line 2437
    :cond_169
    invoke-virtual {v1, v8}, Landroid/net/NetworkCapabilities$Builder;->addCapability(I)Landroid/net/NetworkCapabilities$Builder;
    :try_end_16c
    .catch Ljava/lang/Exception; {:try_start_f3 .. :try_end_16c} :catch_128

    goto/16 :goto_e6

    .line 2443
    :goto_16e
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ". Failed to create osAppId from "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/math/BigInteger;

    .line 2444
    invoke-virtual {v7}, Landroid/telephony/data/TrafficDescriptor;->getOsAppId()[B

    move-result-object v7

    invoke-direct {v0, v6, v7}, Ljava/math/BigInteger;-><init>(I[B)V

    const/16 v7, 0x10

    invoke-virtual {v0, v7}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2443
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/DataNetwork;->loge(Ljava/lang/String;)V

    goto/16 :goto_e6

    .line 2448
    :cond_19b
    iget-boolean v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mCongested:Z

    if-nez v0, :cond_1a4

    const/16 v0, 0x14

    .line 2449
    invoke-virtual {v1, v0}, Landroid/net/NetworkCapabilities$Builder;->addCapability(I)Landroid/net/NetworkCapabilities$Builder;

    .line 2452
    :cond_1a4
    iget-boolean v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mTempNotMeteredSupported:Z

    if-eqz v0, :cond_1b1

    iget-boolean v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mTempNotMetered:Z

    if-eqz v0, :cond_1b1

    const/16 v0, 0x19

    .line 2453
    invoke-virtual {v1, v0}, Landroid/net/NetworkCapabilities$Builder;->addCapability(I)Landroid/net/NetworkCapabilities$Builder;

    :cond_1b1
    const/16 v0, 0x1c

    .line 2458
    invoke-virtual {v1, v0}, Landroid/net/NetworkCapabilities$Builder;->addCapability(I)Landroid/net/NetworkCapabilities$Builder;

    .line 2459
    invoke-virtual {v1}, Landroid/net/NetworkCapabilities$Builder;->build()Landroid/net/NetworkCapabilities;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/data/DataNetwork;->getVcnPolicy(Landroid/net/NetworkCapabilities;)Landroid/net/vcn/VcnNetworkPolicyResult;

    move-result-object v4

    if-eqz v4, :cond_1cd

    .line 2460
    invoke-virtual {v4}, Landroid/net/vcn/VcnNetworkPolicyResult;->getNetworkCapabilities()Landroid/net/NetworkCapabilities;

    move-result-object v5

    .line 2461
    invoke-virtual {v5, v0}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v5

    if-nez v5, :cond_1cd

    .line 2462
    invoke-virtual {v1, v0}, Landroid/net/NetworkCapabilities$Builder;->removeCapability(I)Landroid/net/NetworkCapabilities$Builder;

    :cond_1cd
    if-nez v3, :cond_1d4

    const/16 v0, 0x12

    .line 2466
    invoke-virtual {v1, v0}, Landroid/net/NetworkCapabilities$Builder;->addCapability(I)Landroid/net/NetworkCapabilities$Builder;

    .line 2469
    :cond_1d4
    iget-boolean v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mSuspended:Z

    if-nez v0, :cond_1dd

    const/16 v0, 0x15

    .line 2470
    invoke-virtual {v1, v0}, Landroid/net/NetworkCapabilities$Builder;->addCapability(I)Landroid/net/NetworkCapabilities$Builder;

    .line 2473
    :cond_1dd
    iget v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mCarrierServicePackageUid:I

    const/4 v5, -0x1

    if-eq v0, v5, :cond_1fc

    iget-object v5, p0, Lcom/android/internal/telephony/data/DataNetwork;->mAdministratorUids:[I

    .line 2474
    invoke-static {v5, v0}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v0

    if-eqz v0, :cond_1fc

    .line 2475
    iget v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mCarrierServicePackageUid:I

    invoke-virtual {v1, v0}, Landroid/net/NetworkCapabilities$Builder;->setOwnerUid(I)Landroid/net/NetworkCapabilities$Builder;

    .line 2476
    iget v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mCarrierServicePackageUid:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/net/NetworkCapabilities$Builder;->setAllowedUids(Ljava/util/Set;)Landroid/net/NetworkCapabilities$Builder;

    .line 2478
    :cond_1fc
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mAdministratorUids:[I

    invoke-virtual {v1, v0}, Landroid/net/NetworkCapabilities$Builder;->setAdministratorUids([I)Landroid/net/NetworkCapabilities$Builder;

    .line 2480
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataConfigManager:Lcom/android/internal/telephony/data/DataConfigManager;

    .line 2481
    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/data/DataConfigManager;->getMeteredNetworkCapabilities(Z)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v3, Lcom/android/internal/telephony/data/DataNetwork$$ExternalSyntheticLambda13;

    invoke-direct {v3, p0}, Lcom/android/internal/telephony/data/DataNetwork$$ExternalSyntheticLambda13;-><init>(Lcom/android/internal/telephony/data/DataNetwork;)V

    .line 2482
    invoke-interface {v0, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 2484
    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 2485
    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    .line 2486
    invoke-virtual {v1}, Landroid/net/NetworkCapabilities$Builder;->build()Landroid/net/NetworkCapabilities;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/NetworkCapabilities;->getCapabilities()[I

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/stream/IntStream;->boxed()Ljava/util/stream/Stream;

    move-result-object v5

    .line 2487
    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v7, Lcom/android/internal/telephony/data/DataNetwork$$ExternalSyntheticLambda14;

    invoke-direct {v7, v5}, Lcom/android/internal/telephony/data/DataNetwork$$ExternalSyntheticLambda14;-><init>(Ljava/util/Set;)V

    .line 2485
    invoke-interface {v3, v7}, Ljava/util/stream/Stream;->noneMatch(Ljava/util/function/Predicate;)Z

    move-result v3

    if-eqz v3, :cond_24f

    const/16 v3, 0xb

    .line 2490
    invoke-virtual {v1, v3}, Landroid/net/NetworkCapabilities$Builder;->addCapability(I)Landroid/net/NetworkCapabilities$Builder;

    :cond_24f
    const/16 v3, 0xd

    .line 2495
    invoke-virtual {v1, v3}, Landroid/net/NetworkCapabilities$Builder;->addCapability(I)Landroid/net/NetworkCapabilities$Builder;

    .line 2499
    iget-object v5, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataNetworkController:Lcom/android/internal/telephony/data/DataNetworkController;

    invoke-virtual {v5}, Lcom/android/internal/telephony/data/DataNetworkController;->getDataSettingsManager()Lcom/android/internal/telephony/data/DataSettingsManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/data/DataSettingsManager;->isDataEnabled()Z

    move-result v5

    if-eqz v5, :cond_278

    iget-object v5, p0, Lcom/android/internal/telephony/data/DataNetwork;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 2500
    invoke-interface {v5}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v5

    if-eqz v5, :cond_2b7

    iget-object v5, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataNetworkController:Lcom/android/internal/telephony/data/DataNetworkController;

    .line 2501
    invoke-virtual {v5}, Lcom/android/internal/telephony/data/DataNetworkController;->getDataSettingsManager()Lcom/android/internal/telephony/data/DataSettingsManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/data/DataSettingsManager;->isDataRoamingEnabled()Z

    move-result v5

    if-nez v5, :cond_2b7

    .line 2506
    :cond_278
    iget-object v5, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataAllowedReason:Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;

    sget-object v7, Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;->RESTRICTED_REQUEST:Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;

    if-ne v5, v7, :cond_282

    .line 2507
    invoke-virtual {v1, v3}, Landroid/net/NetworkCapabilities$Builder;->removeCapability(I)Landroid/net/NetworkCapabilities$Builder;

    goto :goto_2b7

    .line 2508
    :cond_282
    sget-object v7, Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;->UNMETERED_USAGE:Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;

    if-eq v5, v7, :cond_28e

    sget-object v7, Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;->MMS_REQUEST:Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;

    if-eq v5, v7, :cond_28e

    sget-object v7, Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;->EMERGENCY_SUPL:Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;

    if-ne v5, v7, :cond_2b7

    .line 2513
    :cond_28e
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_292
    :goto_292
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2b7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-nez v5, :cond_2aa

    .line 2517
    iget-object v7, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataAllowedReason:Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;

    sget-object v8, Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;->MMS_REQUEST:Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;

    if-eq v7, v8, :cond_292

    :cond_2aa
    if-ne v5, v6, :cond_2b3

    iget-object v7, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataAllowedReason:Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;

    sget-object v8, Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;->EMERGENCY_SUPL:Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;

    if-ne v7, v8, :cond_2b3

    goto :goto_292

    .line 2524
    :cond_2b3
    invoke-virtual {v1, v5}, Landroid/net/NetworkCapabilities$Builder;->removeCapability(I)Landroid/net/NetworkCapabilities$Builder;

    goto :goto_292

    .line 2529
    :cond_2b7
    :goto_2b7
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataNetworkController:Lcom/android/internal/telephony/data/DataNetworkController;

    invoke-virtual {v0}, Lcom/android/internal/telephony/data/DataNetworkController;->isEsimBootStrapProvisioningActivated()Z

    move-result v0

    if-eqz v0, :cond_2c2

    .line 2530
    invoke-virtual {v1, v3}, Landroid/net/NetworkCapabilities$Builder;->removeCapability(I)Landroid/net/NetworkCapabilities$Builder;

    .line 2536
    :cond_2c2
    invoke-virtual {v1}, Landroid/net/NetworkCapabilities$Builder;->build()Landroid/net/NetworkCapabilities;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v0

    if-eqz v0, :cond_332

    .line 2540
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mAccessNetworksManager:Lcom/android/internal/telephony/data/AccessNetworksManager;

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/data/AccessNetworksManager;->getPreferredTransportByNetworkCapability(I)I

    move-result v0

    const/4 v5, 0x2

    if-ne v0, v5, :cond_332

    iget v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mTransport:I

    if-ne v0, v6, :cond_332

    .line 2545
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataNetworkController:Lcom/android/internal/telephony/data/DataNetworkController;

    invoke-virtual {v0}, Lcom/android/internal/telephony/data/DataNetworkController;->getDataProfileManager()Lcom/android/internal/telephony/data/DataProfileManager;

    move-result-object v7

    new-instance v8, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;

    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 2547
    invoke-virtual {v0, v2}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    .line 2548
    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    iget-object v5, p0, Lcom/android/internal/telephony/data/DataNetwork;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v9, p0, Lcom/android/internal/telephony/data/DataNetwork;->mFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

    invoke-direct {v8, v0, v5, v9}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;-><init>(Landroid/net/NetworkRequest;Lcom/android/internal/telephony/Phone;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)V

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v9, 0x12

    const/4 v10, 0x0

    .line 2546
    invoke-virtual/range {v7 .. v12}, Lcom/android/internal/telephony/data/DataProfileManager;->getDataProfileForNetworkRequest(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;IZZZ)Landroid/telephony/data/DataProfile;

    move-result-object v0

    if-eqz v0, :cond_332

    .line 2553
    invoke-virtual {v0}, Landroid/telephony/data/DataProfile;->getApn()Ljava/lang/String;

    move-result-object v0

    iget-object v5, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataProfile:Landroid/telephony/data/DataProfile;

    invoke-virtual {v5}, Landroid/telephony/data/DataProfile;->getApn()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_332

    .line 2554
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Found a different apn name "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataProfile:Landroid/telephony/data/DataProfile;

    invoke-virtual {v5}, Landroid/telephony/data/DataProfile;->getApn()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " that can serve MMS on IWLAN."

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/DataNetwork;->log(Ljava/lang/String;)V

    .line 2556
    invoke-virtual {v1, v2}, Landroid/net/NetworkCapabilities$Builder;->removeCapability(I)Landroid/net/NetworkCapabilities$Builder;

    .line 2563
    :cond_332
    invoke-virtual {v1}, Landroid/net/NetworkCapabilities$Builder;->build()Landroid/net/NetworkCapabilities;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/util/NetworkCapabilitiesUtils;->inferRestrictedCapability(Landroid/net/NetworkCapabilities;)Z

    move-result v0

    if-nez v0, :cond_348

    if-eqz v4, :cond_34b

    .line 2564
    invoke-virtual {v4}, Landroid/net/vcn/VcnNetworkPolicyResult;->getNetworkCapabilities()Landroid/net/NetworkCapabilities;

    move-result-object v0

    .line 2565
    invoke-virtual {v0, v3}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v0

    if-nez v0, :cond_34b

    .line 2566
    :cond_348
    invoke-virtual {v1, v3}, Landroid/net/NetworkCapabilities$Builder;->removeCapability(I)Landroid/net/NetworkCapabilities$Builder;

    .line 2570
    :cond_34b
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mNetworkBandwidth:Lcom/android/internal/telephony/data/DataNetwork$NetworkBandwidth;

    iget v0, v0, Lcom/android/internal/telephony/data/DataNetwork$NetworkBandwidth;->downlinkBandwidthKbps:I

    invoke-virtual {v1, v0}, Landroid/net/NetworkCapabilities$Builder;->setLinkDownstreamBandwidthKbps(I)Landroid/net/NetworkCapabilities$Builder;

    .line 2571
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mNetworkBandwidth:Lcom/android/internal/telephony/data/DataNetwork$NetworkBandwidth;

    iget v0, v0, Lcom/android/internal/telephony/data/DataNetwork$NetworkBandwidth;->uplinkBandwidthKbps:I

    invoke-virtual {v1, v0}, Landroid/net/NetworkCapabilities$Builder;->setLinkUpstreamBandwidthKbps(I)Landroid/net/NetworkCapabilities$Builder;

    .line 2574
    iget-boolean v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mIsSatellite:Z

    if-eqz v0, :cond_389

    invoke-virtual {v1}, Landroid/net/NetworkCapabilities$Builder;->build()Landroid/net/NetworkCapabilities;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v0

    if-eqz v0, :cond_389

    .line 2579
    invoke-static {}, Lcom/android/internal/telephony/satellite/SatelliteController;->getInstance()Lcom/android/internal/telephony/satellite/SatelliteController;

    move-result-object v0

    .line 2580
    iget v4, p0, Lcom/android/internal/telephony/data/DataNetwork;->mSubId:I

    iget-object v5, p0, Lcom/android/internal/telephony/data/DataNetwork;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 2581
    invoke-interface {v5}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v5

    .line 2580
    invoke-virtual {v0, v4, v5}, Lcom/android/internal/telephony/satellite/SatelliteController;->getSatelliteDataServicePolicyForPlmn(ILjava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_386

    if-eq v0, v6, :cond_380

    goto :goto_389

    :cond_380
    const/16 v0, 0x25

    .line 2591
    :try_start_382
    invoke-virtual {v1, v0}, Landroid/net/NetworkCapabilities$Builder;->removeCapability(I)Landroid/net/NetworkCapabilities$Builder;
    :try_end_385
    .catch Ljava/lang/Exception; {:try_start_382 .. :try_end_385} :catch_389

    goto :goto_389

    .line 2587
    :cond_386
    invoke-virtual {v1, v3}, Landroid/net/NetworkCapabilities$Builder;->removeCapability(I)Landroid/net/NetworkCapabilities$Builder;

    .line 2599
    :catch_389
    :cond_389
    :goto_389
    invoke-virtual {v1}, Landroid/net/NetworkCapabilities$Builder;->build()Landroid/net/NetworkCapabilities;

    move-result-object v0

    .line 2600
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    if-eqz v1, :cond_419

    iget-object v3, p0, Lcom/android/internal/telephony/data/DataNetwork;->mNetworkAgent:Lcom/android/internal/telephony/data/TelephonyNetworkAgent;

    if-nez v3, :cond_397

    goto/16 :goto_419

    .line 2609
    :cond_397
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_413

    .line 2614
    iget-boolean v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mEverConnected:Z

    if-eqz v1, :cond_3d9

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-static {v1, v0}, Lcom/android/internal/telephony/data/DataNetwork;->areImmutableCapabilitiesChanged(Landroid/net/NetworkCapabilities;Landroid/net/NetworkCapabilities;)Z

    move-result v1

    if-eqz v1, :cond_3d9

    .line 2615
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataNetwork;->isConnected()Z

    move-result v1

    if-nez v1, :cond_3b5

    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataNetwork;->isHandoverInProgress()Z

    move-result v1

    if-eqz v1, :cond_3d9

    .line 2619
    :cond_3b5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateNetworkCapabilities: Immutable capabilities changed. Re-create the network agent. Attempted to change from "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/data/DataNetwork;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " to "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/data/DataNetwork;->logl(Ljava/lang/String;)V

    .line 2622
    iput-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    .line 2623
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetwork;->recreateNetworkAgent()V

    goto :goto_3f8

    .line 2627
    :cond_3d9
    iput-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    .line 2628
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Capabilities changed to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/DataNetwork;->log(Ljava/lang/String;)V

    .line 2629
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mNetworkAgent:Lcom/android/internal/telephony/data/TelephonyNetworkAgent;

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v0, v1}, Landroid/net/NetworkAgent;->sendNetworkCapabilities(Landroid/net/NetworkCapabilities;)V

    .line 2635
    :goto_3f8
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataNetwork;->isConnected()Z

    move-result v0

    if-nez v0, :cond_404

    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataNetwork;->isHandoverInProgress()Z

    move-result v0

    if-eqz v0, :cond_405

    :cond_404
    move v2, v6

    .line 2636
    :cond_405
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/data/DataNetwork;->removeUnsatisfiedNetworkRequests(Z)V

    .line 2637
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataNetworkCallback:Lcom/android/internal/telephony/data/DataNetwork$DataNetworkCallback;

    new-instance v1, Lcom/android/internal/telephony/data/DataNetwork$$ExternalSyntheticLambda15;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/data/DataNetwork$$ExternalSyntheticLambda15;-><init>(Lcom/android/internal/telephony/data/DataNetwork;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/data/DataCallback;->invokeFromExecutor(Ljava/lang/Runnable;)V

    goto :goto_418

    .line 2640
    :cond_413
    const-string v0, "updateNetworkCapabilities: Capabilities not changed."

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/DataNetwork;->log(Ljava/lang/String;)V

    :goto_418
    return-void

    .line 2604
    :cond_419
    :goto_419
    iput-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    .line 2605
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Initial capabilities "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataNetwork;->logl(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist updateNetworkScore()V
    .registers 2

    .line 3372
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataNetwork;->isHandoverInProgress()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataNetwork;->updateNetworkScore(Z)V

    return-void
.end method

.method private blacklist updateNetworkScore(Z)V
    .registers 4

    .line 3383
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mNetworkScore:Landroid/net/NetworkScore;

    invoke-virtual {v0}, Landroid/net/NetworkScore;->getKeepConnectedReason()I

    move-result v0

    if-ne v0, p1, :cond_14

    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mNetworkScore:Landroid/net/NetworkScore;

    .line 3384
    invoke-virtual {v0}, Landroid/net/NetworkScore;->isTransportPrimary()Z

    move-result v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mOnPreferredDataPhone:Z

    if-eq v0, v1, :cond_13

    goto :goto_14

    :cond_13
    return-void

    .line 3385
    :cond_14
    :goto_14
    new-instance v0, Landroid/net/NetworkScore$Builder;

    invoke-direct {v0}, Landroid/net/NetworkScore$Builder;-><init>()V

    .line 3386
    invoke-virtual {v0, p1}, Landroid/net/NetworkScore$Builder;->setKeepConnectedReason(I)Landroid/net/NetworkScore$Builder;

    move-result-object v0

    .line 3387
    iget-boolean v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mOnPreferredDataPhone:Z

    invoke-virtual {v0, v1}, Landroid/net/NetworkScore$Builder;->setTransportPrimary(Z)Landroid/net/NetworkScore$Builder;

    .line 3388
    invoke-virtual {v0}, Landroid/net/NetworkScore$Builder;->build()Landroid/net/NetworkScore;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mNetworkScore:Landroid/net/NetworkScore;

    .line 3389
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mNetworkAgent:Lcom/android/internal/telephony/data/TelephonyNetworkAgent;

    invoke-virtual {v1, v0}, Landroid/net/NetworkAgent;->sendNetworkScore(Landroid/net/NetworkScore;)V

    .line 3390
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateNetworkScore: isPrimary="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mNetworkScore:Landroid/net/NetworkScore;

    invoke-virtual {v1}, Landroid/net/NetworkScore;->isTransportPrimary()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", keepConnectedForHandover="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetwork;->logl(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist updateSuspendState()V
    .registers 5

    .line 2672
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataNetwork;->isConnecting()Z

    move-result v0

    if-nez v0, :cond_8c

    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataNetwork;->isDisconnected()Z

    move-result v0

    if-eqz v0, :cond_e

    goto/16 :goto_8c

    .line 2679
    :cond_e
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetwork;->getNetworkRegistrationInfo()Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v0

    if-nez v0, :cond_16

    goto/16 :goto_8c

    .line 2684
    :cond_16
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_22

    goto :goto_59

    .line 2686
    :cond_22
    invoke-virtual {v0}, Landroid/telephony/NetworkRegistrationInfo;->getRegistrationState()I

    move-result v1

    const/4 v3, 0x1

    if-eq v1, v3, :cond_32

    .line 2688
    invoke-virtual {v0}, Landroid/telephony/NetworkRegistrationInfo;->getRegistrationState()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_32

    :goto_30
    move v2, v3

    goto :goto_59

    .line 2692
    :cond_32
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/ServiceStateTracker;->isConcurrentVoiceAndDataAllowed()Z

    move-result v0

    if-nez v0, :cond_59

    iget v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mTransport:I

    if-ne v0, v3, :cond_59

    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 2694
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v0

    if-eqz v0, :cond_59

    .line 2695
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallTracker;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v0, v1, :cond_59

    goto :goto_30

    .line 2699
    :cond_59
    :goto_59
    iget-boolean v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mSuspended:Z

    if-eq v0, v2, :cond_8c

    .line 2700
    iput-boolean v2, p0, Lcom/android/internal/telephony/data/DataNetwork;->mSuspended:Z

    .line 2701
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Network becomes "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mSuspended:Z

    if-eqz v1, :cond_70

    const-string v1, "suspended"

    goto :goto_72

    :cond_70
    const-string v1, "unsuspended"

    :goto_72
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataNetwork;->logl(Ljava/lang/String;)V

    .line 2703
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetwork;->updateNetworkCapabilities()V

    .line 2704
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetwork;->notifyPreciseDataConnectionState()V

    .line 2705
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataNetworkCallback:Lcom/android/internal/telephony/data/DataNetwork$DataNetworkCallback;

    new-instance v1, Lcom/android/internal/telephony/data/DataNetwork$$ExternalSyntheticLambda16;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/data/DataNetwork$$ExternalSyntheticLambda16;-><init>(Lcom/android/internal/telephony/data/DataNetwork;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/data/DataCallback;->invokeFromExecutor(Ljava/lang/Runnable;)V

    :cond_8c
    :goto_8c
    return-void
.end method

.method private blacklist updateTcpBufferSizes()V
    .registers 3

    .line 3226
    const-string v0, "updateTcpBufferSizes"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/DataNetwork;->log(Ljava/lang/String;)V

    .line 3227
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataConfigManager:Lcom/android/internal/telephony/data/DataConfigManager;

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mTelephonyDisplayInfo:Landroid/telephony/TelephonyDisplayInfo;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/data/DataConfigManager;->getTcpConfigString(Landroid/telephony/TelephonyDisplayInfo;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mTcpBufferSizes:Ljava/lang/String;

    .line 3228
    new-instance v0, Landroid/net/LinkProperties;

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-direct {v0, v1}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    .line 3229
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mTcpBufferSizes:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/net/LinkProperties;->setTcpBufferSizes(Ljava/lang/String;)V

    .line 3230
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_42

    .line 3231
    iput-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mLinkProperties:Landroid/net/LinkProperties;

    .line 3232
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendLinkProperties "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/DataNetwork;->log(Ljava/lang/String;)V

    .line 3233
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mNetworkAgent:Lcom/android/internal/telephony/data/TelephonyNetworkAgent;

    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0, p0}, Landroid/net/NetworkAgent;->sendLinkProperties(Landroid/net/LinkProperties;)V

    :cond_42
    return-void
.end method

.method private blacklist updateValidationStatus(I)V
    .registers 4

    .line 3923
    iget v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mNetworkValidationStatus:I

    if-eq v0, p1, :cond_1e

    .line 3924
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateValidationStatus:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3925
    invoke-static {p1}, Landroid/telephony/PreciseDataConnectionState;->networkValidationStatusToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3924
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/DataNetwork;->log(Ljava/lang/String;)V

    .line 3927
    iput p1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mNetworkValidationStatus:I

    .line 3930
    :cond_1e
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataNetworkValidationStats:Lcom/android/internal/telephony/metrics/DataNetworkValidationStats;

    iget v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mNetworkValidationStatus:I

    .line 3931
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetwork;->getDataNetworkType()I

    move-result p0

    .line 3930
    invoke-virtual {p1, v0, p0}, Lcom/android/internal/telephony/metrics/DataNetworkValidationStats;->onUpdateNetworkValidationState(II)V

    return-void
.end method

.method private blacklist validateDataCallResponse(Landroid/telephony/data/DataCallResponse;I)V
    .registers 7

    if-eqz p1, :cond_164

    .line 2917
    invoke-virtual {p1}, Landroid/telephony/data/DataCallResponse;->getLinkStatus()I

    move-result v0

    if-nez v0, :cond_a

    goto/16 :goto_164

    .line 2918
    :cond_a
    invoke-virtual {p1}, Landroid/telephony/data/DataCallResponse;->getCause()I

    move-result v0

    if-nez v0, :cond_12b

    .line 2920
    invoke-virtual {p1}, Landroid/telephony/data/DataCallResponse;->getInterfaceName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x5

    const/4 v2, -0x1

    if-nez v0, :cond_4c

    .line 2921
    invoke-virtual {p1}, Landroid/telephony/data/DataCallResponse;->getAddresses()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4c

    .line 2923
    invoke-virtual {p1}, Landroid/telephony/data/DataCallResponse;->getLinkStatus()I

    move-result v0

    if-lt v0, v2, :cond_4c

    .line 2924
    invoke-virtual {p1}, Landroid/telephony/data/DataCallResponse;->getLinkStatus()I

    move-result v0

    const/4 v3, 0x2

    if-gt v0, v3, :cond_4c

    .line 2925
    invoke-virtual {p1}, Landroid/telephony/data/DataCallResponse;->getProtocolType()I

    move-result v0

    if-lt v0, v2, :cond_4c

    .line 2926
    invoke-virtual {p1}, Landroid/telephony/data/DataCallResponse;->getProtocolType()I

    move-result v0

    if-gt v0, v1, :cond_4c

    .line 2927
    invoke-virtual {p1}, Landroid/telephony/data/DataCallResponse;->getHandoverFailureMode()I

    move-result v0

    if-lt v0, v2, :cond_4c

    .line 2929
    invoke-virtual {p1}, Landroid/telephony/data/DataCallResponse;->getHandoverFailureMode()I

    move-result v0

    const/4 v3, 0x3

    if-le v0, v3, :cond_67

    .line 2931
    :cond_4c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid DataCallResponse:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/DataNetwork;->loge(Ljava/lang/String;)V

    .line 2932
    const-string v0, "Invalid DataCallResponse detected"

    const-string v3, "1f273e9d-b09c-46eb-ad1c-421d01f61164"

    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/data/DataNetwork;->reportAnomaly(Ljava/lang/String;Ljava/lang/String;)V

    .line 2936
    :cond_67
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetwork;->getNetworkRegistrationInfo()Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v0

    if-eq p2, v2, :cond_164

    .line 2937
    iget-object v2, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataProfile:Landroid/telephony/data/DataProfile;

    .line 2938
    invoke-virtual {v2}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v2

    if-eqz v2, :cond_164

    if-eqz v0, :cond_164

    invoke-virtual {v0}, Landroid/telephony/NetworkRegistrationInfo;->isInService()Z

    move-result v2

    if-eqz v2, :cond_164

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne p2, v1, :cond_83

    move p2, v3

    goto :goto_84

    :cond_83
    move p2, v2

    .line 2941
    :goto_84
    invoke-virtual {v0}, Landroid/telephony/NetworkRegistrationInfo;->getNetworkRegistrationState()I

    move-result v0

    if-ne v0, v1, :cond_8b

    move v2, v3

    :cond_8b
    if-ne p2, v2, :cond_164

    if-eqz v2, :cond_9a

    .line 2944
    iget-object p2, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataProfile:Landroid/telephony/data/DataProfile;

    invoke-virtual {p2}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object p2

    invoke-virtual {p2}, Landroid/telephony/data/ApnSetting;->getRoamingProtocol()I

    move-result p2

    goto :goto_a4

    .line 2945
    :cond_9a
    iget-object p2, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataProfile:Landroid/telephony/data/DataProfile;

    invoke-virtual {p2}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object p2

    invoke-virtual {p2}, Landroid/telephony/data/ApnSetting;->getProtocol()I

    move-result p2

    .line 2947
    :goto_a4
    iget v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mTransport:I

    if-ne v0, v3, :cond_ab

    .line 2948
    const-string v0, "RIL"

    goto :goto_ad

    :cond_ab
    const-string v0, "IWLAN data service"

    .line 2949
    :goto_ad
    const-string v1, "7744f920-fb64-4db0-ba47-de0eae485a82"

    if-nez p2, :cond_ed

    .line 2950
    invoke-virtual {p1}, Landroid/telephony/data/DataCallResponse;->getAddresses()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v2, Lcom/android/internal/telephony/data/DataNetwork$$ExternalSyntheticLambda22;

    invoke-direct {v2}, Lcom/android/internal/telephony/data/DataNetwork$$ExternalSyntheticLambda22;-><init>()V

    invoke-interface {p2, v2}, Ljava/util/stream/Stream;->noneMatch(Ljava/util/function/Predicate;)Z

    move-result p2

    if-eqz p2, :cond_164

    .line 2952
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid DataCallResponse. Requested IPv4 but didn\'t get an IPv4 address."

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/DataNetwork;->loge(Ljava/lang/String;)V

    .line 2954
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " reported mismatched IP type. Requested IPv4 but didn\'t get an IPv4 address."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v1}, Lcom/android/internal/telephony/data/DataNetwork;->reportAnomaly(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_ed
    if-ne p2, v3, :cond_164

    .line 2959
    invoke-virtual {p1}, Landroid/telephony/data/DataCallResponse;->getAddresses()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v2, Lcom/android/internal/telephony/data/DataNetwork$$ExternalSyntheticLambda23;

    invoke-direct {v2}, Lcom/android/internal/telephony/data/DataNetwork$$ExternalSyntheticLambda23;-><init>()V

    invoke-interface {p2, v2}, Ljava/util/stream/Stream;->noneMatch(Ljava/util/function/Predicate;)Z

    move-result p2

    if-eqz p2, :cond_164

    .line 2961
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid DataCallResponse. Requested IPv6 but didn\'t get an IPv6 address."

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/DataNetwork;->loge(Ljava/lang/String;)V

    .line 2963
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " reported mismatched IP type. Requested IPv6 but didn\'t get an IPv6 address."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v1}, Lcom/android/internal/telephony/data/DataNetwork;->reportAnomaly(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 2970
    :cond_12b
    invoke-static {v0}, Landroid/telephony/DataFailCause;->isFailCauseExisting(I)Z

    move-result p2

    if-nez p2, :cond_164

    .line 2971
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid DataFailCause in "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/DataNetwork;->loge(Ljava/lang/String;)V

    .line 2972
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Invalid DataFailCause: (0x"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "6b264f28-9f58-4cbd-9e0e-d7624ba30879"

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/data/DataNetwork;->reportAnomaly(Ljava/lang/String;Ljava/lang/String;)V

    :cond_164
    :goto_164
    return-void
.end method


# virtual methods
.method public blacklist attachNetworkRequests(Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;)Z
    .registers 3

    .line 2112
    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getCurrentState()Lcom/android/internal/telephony/IState;

    move-result-object v0

    if-eqz v0, :cond_17

    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataNetwork;->isDisconnected()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_17

    :cond_d
    const/4 v0, 0x2

    .line 2116
    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/StateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->sendMessage(Landroid/os/Message;)V

    const/4 p0, 0x1

    return p0

    :cond_17
    :goto_17
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist detachNetworkRequest(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;Z)V
    .registers 5

    .line 2197
    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getCurrentState()Lcom/android/internal/telephony/IState;

    move-result-object v0

    if-eqz v0, :cond_16

    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataNetwork;->isDisconnected()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_16

    :cond_d
    const/4 v0, 0x0

    const/4 v1, 0x3

    .line 2200
    invoke-virtual {p0, v1, p2, v0, p1}, Lcom/android/internal/telephony/StateMachine;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->sendMessage(Landroid/os/Message;)V

    :cond_16
    :goto_16
    return-void
.end method

.method public blacklist dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 7

    .line 4110
    new-instance v0, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p2, v1}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 4111
    invoke-super {p0, p1, v0, p3}, Lcom/android/internal/telephony/StateMachine;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 4112
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Tag: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataNetwork;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4113
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 4114
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mSubId="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mSubId:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4115
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mOnPreferredDataPhone="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mOnPreferredDataPhone:Z

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4116
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mTransport="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mTransport:I

    invoke-static {v1}, Landroid/telephony/AccessNetworkConstants;->transportTypeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4117
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mLastKnownDataNetworkType="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mLastKnownDataNetworkType:I

    .line 4118
    invoke-static {v1}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 4117
    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4119
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WWAN cid="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mCid:Landroid/util/SparseIntArray;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4120
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WLAN cid="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mCid:Landroid/util/SparseIntArray;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4121
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mNetworkScore="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mNetworkScore:Landroid/net/NetworkScore;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4122
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "keepConnectedReason="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mNetworkScore:Landroid/net/NetworkScore;

    invoke-virtual {v1}, Landroid/net/NetworkScore;->getKeepConnectedReason()I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4123
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mDataAllowedReason="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataAllowedReason:Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4124
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mPduSessionId="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mPduSessionId:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4125
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mDataProfile="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataProfile:Landroid/telephony/data/DataProfile;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4126
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mNetworkCapabilities="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4127
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mLinkProperties="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4128
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mNetworkSliceInfo="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mNetworkSliceInfo:Landroid/telephony/data/NetworkSliceInfo;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4129
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mNetworkBandwidth="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mNetworkBandwidth:Lcom/android/internal/telephony/data/DataNetwork$NetworkBandwidth;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4130
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mTcpBufferSizes="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mTcpBufferSizes:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4131
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mTelephonyDisplayInfo="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mTelephonyDisplayInfo:Landroid/telephony/TelephonyDisplayInfo;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4132
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mTempNotMeteredSupported="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mTempNotMeteredSupported:Z

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4133
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mTempNotMetered="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mTempNotMetered:Z

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4134
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mCongested="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mCongested:Z

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4135
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mSuspended="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mSuspended:Z

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4136
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mDataCallResponse="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataCallResponse:Landroid/telephony/data/DataCallResponse;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4137
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mFailCause="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mFailCause:I

    invoke-static {v1}, Landroid/telephony/DataFailCause;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4138
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mAdministratorUids="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mAdministratorUids:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4139
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mCarrierServicePackageUid="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mCarrierServicePackageUid:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4140
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mEverConnected="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mEverConnected:Z

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4141
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mInvokedDataDeactivation="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mInvokedDataDeactivation:Z

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4143
    const-string p2, "Attached network requests:"

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4144
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 4145
    iget-object p2, p0, Lcom/android/internal/telephony/data/DataNetwork;->mAttachedNetworkRequestList:Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;

    invoke-virtual {p2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2a3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2b3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;

    .line 4146
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_2a3

    .line 4148
    :cond_2b3
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 4149
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mQosBearerSessions="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mQosBearerSessions:Ljava/util/List;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4151
    iget-object p2, p0, Lcom/android/internal/telephony/data/DataNetwork;->mNetworkAgent:Lcom/android/internal/telephony/data/TelephonyNetworkAgent;

    invoke-virtual {p2, p1, v0, p3}, Lcom/android/internal/telephony/data/TelephonyNetworkAgent;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 4152
    const-string p2, "Local logs:"

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4153
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 4154
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {p0, p1, v0, p3}, Lcom/android/internal/telephony/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 4155
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 4156
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 4157
    const-string p0, "---------------"

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist getApnTypeNetworkCapability()I
    .registers 3

    .line 3423
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mAttachedNetworkRequestList:Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_16

    .line 3425
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mAttachedNetworkRequestList:Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;

    invoke-virtual {p0}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->getHighestPriorityApnTypeNetworkCapability()I

    move-result p0

    return p0

    .line 3427
    :cond_16
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataNetwork;->getNetworkCapabilities()Landroid/net/NetworkCapabilities;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkCapabilities;->getCapabilities()[I

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/IntStream;->boxed()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/internal/telephony/data/DataNetwork$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/internal/telephony/data/DataNetwork$$ExternalSyntheticLambda0;-><init>()V

    .line 3428
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataConfigManager:Lcom/android/internal/telephony/data/DataConfigManager;

    .line 3430
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/android/internal/telephony/data/DataNetwork$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/data/DataNetwork$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/telephony/data/DataConfigManager;)V

    invoke-static {v1}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/stream/Stream;->max(Ljava/util/Comparator;)Ljava/util/Optional;

    move-result-object p0

    const/4 v0, -0x1

    .line 3431
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public blacklist getAttachedNetworkRequestList()Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;
    .registers 1

    .line 3465
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mAttachedNetworkRequestList:Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;

    return-object p0
.end method

.method public blacklist getDataProfile()Landroid/telephony/data/DataProfile;
    .registers 1

    .line 2665
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataProfile:Landroid/telephony/data/DataProfile;

    return-object p0
.end method

.method public blacklist getId()I
    .registers 2

    .line 3325
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mCid:Landroid/util/SparseIntArray;

    iget p0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mTransport:I

    invoke-virtual {v0, p0}, Landroid/util/SparseIntArray;->get(I)I

    move-result p0

    return p0
.end method

.method public blacklist getLastKnownDataNetworkType()I
    .registers 1

    .line 3811
    iget p0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mLastKnownDataNetworkType:I

    return p0
.end method

.method public blacklist getLastKnownRoamingState()Z
    .registers 1

    .line 3818
    iget-boolean p0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mLastKnownRoamingState:Z

    return p0
.end method

.method public blacklist getLinkProperties()Landroid/net/LinkProperties;
    .registers 1

    .line 2657
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mLinkProperties:Landroid/net/LinkProperties;

    return-object p0
.end method

.method public blacklist getLinkStatus()I
    .registers 1

    .line 3365
    iget p0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mLinkStatus:I

    return p0
.end method

.method public blacklist getNetworkCapabilities()Landroid/net/NetworkCapabilities;
    .registers 1

    .line 2649
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    return-object p0
.end method

.method public blacklist getPcoData()Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/telephony/PcoData;",
            ">;"
        }
    .end annotation

    .line 3826
    iget v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mTransport:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_26

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mCid:Landroid/util/SparseIntArray;

    .line 3827
    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_f

    goto :goto_26

    .line 3830
    :cond_f
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mPcoData:Ljava/util/Map;

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mCid:Landroid/util/SparseIntArray;

    iget p0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mTransport:I

    invoke-virtual {v1, p0}, Landroid/util/SparseIntArray;->get(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    sget-object v1, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    return-object p0

    .line 3828
    :cond_26
    :goto_26
    sget-object p0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    return-object p0
.end method

.method public blacklist getPriority()I
    .registers 4

    .line 3447
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mAttachedNetworkRequestList:Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_16

    .line 3449
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mAttachedNetworkRequestList:Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;

    invoke-virtual {p0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;

    invoke-virtual {p0}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->getPriority()I

    move-result p0

    return p0

    .line 3453
    :cond_16
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataNetwork;->getNetworkCapabilities()Landroid/net/NetworkCapabilities;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkCapabilities;->getCapabilities()[I

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/IntStream;->boxed()Ljava/util/stream/Stream;

    move-result-object v0

    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataConfigManager:Lcom/android/internal/telephony/data/DataConfigManager;

    .line 3454
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/android/internal/telephony/data/DataNetwork$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/data/DataNetwork$$ExternalSyntheticLambda5;-><init>(Lcom/android/internal/telephony/data/DataConfigManager;)V

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/internal/telephony/data/DataNetwork$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Lcom/android/internal/telephony/data/DataNetwork$$ExternalSyntheticLambda6;-><init>()V

    .line 3455
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->max(Ljava/util/Comparator;)Ljava/util/Optional;

    move-result-object p0

    .line 3456
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public blacklist getTransport()I
    .registers 1

    .line 3515
    iget p0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mTransport:I

    return p0
.end method

.method public blacklist hasNetworkCapabilityInNetworkRequests(I)Z
    .registers 3

    .line 3854
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mAttachedNetworkRequestList:Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;

    invoke-virtual {p0}, Ljava/util/LinkedList;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/internal/telephony/data/DataNetwork$$ExternalSyntheticLambda4;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/data/DataNetwork$$ExternalSyntheticLambda4;-><init>(I)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public blacklist isConnected()Z
    .registers 2

    .line 3479
    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getCurrentState()Lcom/android/internal/telephony/IState;

    move-result-object v0

    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mConnectedState:Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;

    if-ne v0, p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist isConnecting()Z
    .registers 2

    .line 3472
    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getCurrentState()Lcom/android/internal/telephony/IState;

    move-result-object v0

    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mConnectingState:Lcom/android/internal/telephony/data/DataNetwork$ConnectingState;

    if-ne v0, p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist isDisconnected()Z
    .registers 2

    .line 3493
    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getCurrentState()Lcom/android/internal/telephony/IState;

    move-result-object v0

    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDisconnectedState:Lcom/android/internal/telephony/data/DataNetwork$DisconnectedState;

    if-ne v0, p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist isDisconnecting()Z
    .registers 2

    .line 3486
    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getCurrentState()Lcom/android/internal/telephony/IState;

    move-result-object v0

    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDisconnectingState:Lcom/android/internal/telephony/data/DataNetwork$DisconnectingState;

    if-ne v0, p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist isEmergencySupl()Z
    .registers 2

    .line 3552
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataAllowedReason:Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;

    sget-object v0, Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;->EMERGENCY_SUPL:Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;

    if-ne p0, v0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist isHandoverInProgress()Z
    .registers 2

    .line 3500
    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getCurrentState()Lcom/android/internal/telephony/IState;

    move-result-object v0

    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mHandoverState:Lcom/android/internal/telephony/data/DataNetwork$HandoverState;

    if-ne v0, p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist isInternetSupported()Z
    .registers 2

    .line 3544
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result p0

    return p0
.end method

.method public blacklist isSatellite()Z
    .registers 1

    .line 2357
    iget-boolean p0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mIsSatellite:Z

    return p0
.end method

.method public blacklist isSuspended()Z
    .registers 2

    .line 3507
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetwork;->getState()I

    move-result p0

    const/4 v0, 0x3

    if-ne p0, v0, :cond_9

    const/4 p0, 0x1

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method protected blacklist log(Ljava/lang/String;)V
    .registers 5

    .line 4067
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mLogTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getCurrentState()Lcom/android/internal/telephony/IState;

    move-result-object v2

    if-eqz v2, :cond_27

    .line 4068
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getCurrentState()Lcom/android/internal/telephony/IState;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/internal/telephony/IState;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ": "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_29

    :cond_27
    const-string p0, ""

    :goto_29
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 4067
    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected blacklist loge(Ljava/lang/String;)V
    .registers 5

    .line 4077
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mLogTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getCurrentState()Lcom/android/internal/telephony/IState;

    move-result-object v2

    if-eqz v2, :cond_27

    .line 4078
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getCurrentState()Lcom/android/internal/telephony/IState;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/internal/telephony/IState;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ": "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_29

    :cond_27
    const-string p0, ""

    :goto_29
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 4077
    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected blacklist logv(Ljava/lang/String;)V
    .registers 2

    .line 0
    return-void
.end method

.method public blacklist name()Ljava/lang/String;
    .registers 1

    .line 4047
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mLogTag:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist onAttachNetworkRequests(Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;)V
    .registers 6

    .line 2126
    new-instance v0, Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;

    invoke-direct {v0}, Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;-><init>()V

    .line 2127
    invoke-virtual {p1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_78

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;

    .line 2128
    iget-object v2, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataNetworkController:Lcom/android/internal/telephony/data/DataNetworkController;

    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/data/DataNetworkController;->isNetworkRequestExisting(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;)Z

    move-result v2

    if-nez v2, :cond_35

    .line 2129
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;->add(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;)Z

    .line 2130
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attached failed. Network request was already removed. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/data/DataNetwork;->log(Ljava/lang/String;)V

    goto :goto_9

    .line 2131
    :cond_35
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataNetwork;->getNetworkCapabilities()Landroid/net/NetworkCapabilities;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->canBeSatisfiedBy(Landroid/net/NetworkCapabilities;)Z

    move-result v2

    if-nez v2, :cond_57

    .line 2132
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;->add(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;)Z

    .line 2133
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attached failed. Cannot satisfy the network request "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/data/DataNetwork;->log(Ljava/lang/String;)V

    goto :goto_9

    .line 2136
    :cond_57
    iget-object v2, p0, Lcom/android/internal/telephony/data/DataNetwork;->mAttachedNetworkRequestList:Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;

    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;->add(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;)Z

    .line 2137
    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->setAttachedNetwork(Lcom/android/internal/telephony/data/DataNetwork;)V

    const/4 v2, 0x1

    .line 2138
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->setState(I)V

    .line 2140
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Successfully attached network request "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/data/DataNetwork;->log(Ljava/lang/String;)V

    goto :goto_9

    .line 2143
    :cond_78
    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_88

    .line 2144
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataNetworkCallback:Lcom/android/internal/telephony/data/DataNetwork$DataNetworkCallback;

    new-instance v1, Lcom/android/internal/telephony/data/DataNetwork$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, v0}, Lcom/android/internal/telephony/data/DataNetwork$$ExternalSyntheticLambda3;-><init>(Lcom/android/internal/telephony/data/DataNetwork;Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;)V

    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/data/DataCallback;->invokeFromExecutor(Ljava/lang/Runnable;)V

    :cond_88
    return-void
.end method

.method public blacklist requestNetworkValidation(Ljava/util/function/Consumer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const/16 v0, 0x1c

    .line 3864
    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/StateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public blacklist shouldDelayImsTearDownDueToInCall()Z
    .registers 3

    .line 3037
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataConfigManager:Lcom/android/internal/telephony/data/DataConfigManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/data/DataConfigManager;->isImsDelayTearDownUntilVoiceCallEndEnabled()Z

    move-result v0

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    if-eqz v0, :cond_2f

    const/4 v1, 0x4

    .line 3039
    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v0

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 3040
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    if-eqz v0, :cond_2f

    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 3041
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallTracker;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object p0

    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq p0, v0, :cond_2f

    const/4 p0, 0x1

    return p0

    :cond_2f
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist startHandover(ILcom/android/internal/telephony/data/DataRetryManager$DataHandoverRetryEntry;)Z
    .registers 5

    .line 3612
    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getCurrentState()Lcom/android/internal/telephony/IState;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1f

    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataNetwork;->isDisconnected()Z

    move-result v0

    if-nez v0, :cond_1f

    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataNetwork;->isDisconnecting()Z

    move-result v0

    if-eqz v0, :cond_14

    goto :goto_1f

    :cond_14
    const/16 v0, 0x19

    .line 3621
    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/android/internal/telephony/StateMachine;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->sendMessage(Landroid/os/Message;)V

    const/4 p0, 0x1

    return p0

    :cond_1f
    :goto_1f
    if-eqz p2, :cond_25

    const/4 p0, 0x4

    .line 3614
    invoke-virtual {p2, p0}, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryEntry;->setState(I)V

    :cond_25
    return v1
.end method

.method public blacklist tearDown(I)V
    .registers 3

    .line 3004
    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getCurrentState()Lcom/android/internal/telephony/IState;

    move-result-object v0

    if-eqz v0, :cond_17

    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataNetwork;->isDisconnected()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_17

    .line 3007
    :cond_d
    iput p1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mTearDownReason:I

    const/4 v0, 0x7

    .line 3008
    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/StateMachine;->obtainMessage(II)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->sendMessage(Landroid/os/Message;)V

    :cond_17
    :goto_17
    return-void
.end method

.method public blacklist tearDownWhenConditionMet(IJ)Ljava/lang/Runnable;
    .registers 6

    .line 3069
    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getCurrentState()Lcom/android/internal/telephony/IState;

    move-result-object v0

    if-eqz v0, :cond_44

    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataNetwork;->isDisconnected()Z

    move-result v0

    if-nez v0, :cond_44

    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataNetwork;->isDisconnecting()Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_44

    .line 3073
    :cond_13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "tearDownWhenConditionMet: reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/internal/telephony/data/DataNetwork;->tearDownReasonToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", timeout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "ms."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataNetwork;->logl(Ljava/lang/String;)V

    const/16 v0, 0x15

    long-to-int p2, p2

    .line 3075
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/telephony/StateMachine;->sendMessage(III)V

    .line 3076
    new-instance p2, Lcom/android/internal/telephony/data/DataNetwork$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0, p1}, Lcom/android/internal/telephony/data/DataNetwork$$ExternalSyntheticLambda2;-><init>(Lcom/android/internal/telephony/data/DataNetwork;I)V

    return-object p2

    .line 3070
    :cond_44
    :goto_44
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "tearDownWhenConditionMet: Not in the right state. State="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getCurrentState()Lcom/android/internal/telephony/IState;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/DataNetwork;->loge(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 4037
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[DataNetwork: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mLogTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataProfile:Landroid/telephony/data/DataProfile;

    invoke-virtual {v1}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_28

    .line 4038
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork;->mDataProfile:Landroid/telephony/data/DataProfile;

    invoke-virtual {v1}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/data/ApnSetting;->getApnName()Ljava/lang/String;

    move-result-object v1

    goto :goto_29

    :cond_28
    move-object v1, v2

    :goto_29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4039
    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getCurrentState()Lcom/android/internal/telephony/IState;

    move-result-object v1

    if-eqz v1, :cond_3f

    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getCurrentState()Lcom/android/internal/telephony/IState;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/internal/telephony/IState;->getName()Ljava/lang/String;

    move-result-object v2

    :cond_3f
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected blacklist unhandledMessage(Landroid/os/Message;)V
    .registers 5

    .line 2091
    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getCurrentState()Lcom/android/internal/telephony/IState;

    move-result-object v0

    .line 2092
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unhandled message "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " in state "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v0, :cond_1d

    .line 2093
    const-string p1, "null"

    goto :goto_21

    :cond_1d
    invoke-interface {v0}, Lcom/android/internal/telephony/IState;->getName()Ljava/lang/String;

    move-result-object p1

    :goto_21
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2092
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/DataNetwork;->loge(Ljava/lang/String;)V

    return-void
.end method
