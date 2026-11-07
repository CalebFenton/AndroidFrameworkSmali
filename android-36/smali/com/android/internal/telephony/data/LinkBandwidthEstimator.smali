.class public Lcom/android/internal/telephony/data/LinkBandwidthEstimator;
.super Landroid/os/Handler;
.source "LinkBandwidthEstimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/data/LinkBandwidthEstimator$TelephonyCallbackImpl;,
        Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;,
        Lcom/android/internal/telephony/data/LinkBandwidthEstimator$NetworkBandwidth;,
        Lcom/android/internal/telephony/data/LinkBandwidthEstimator$NetworkKey;,
        Lcom/android/internal/telephony/data/LinkBandwidthEstimator$LinkBandwidthEstimatorCallback;
    }
.end annotation


# static fields
.field private static final blacklist AVG_BW_PER_RAT:[Ljava/lang/String;

.field private static final blacklist AVG_BW_PER_RAT_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final blacklist BW_STATS_COUNT_THRESHOLD:I = 0x5

.field private static final blacklist BYTE_DELTA_THRESHOLD_KB:[[I

.field public static final blacklist LINK_RX:I = 0x1

.field public static final blacklist LINK_TX:I = 0x0

.field static final blacklist MSG_ACTIVE_PHONE_CHANGED:I = 0x8

.field static final blacklist MSG_DATA_REG_STATE_OR_RAT_CHANGED:I = 0x9

.field static final blacklist MSG_DEFAULT_NETWORK_CHANGED:I = 0x4

.field static final blacklist MSG_MODEM_ACTIVITY_RETURNED:I = 0x3

.field static final blacklist MSG_NR_FREQUENCY_CHANGED:I = 0x6

.field static final blacklist MSG_NR_STATE_CHANGED:I = 0x7

.field static final blacklist MSG_SCREEN_STATE_CHANGED:I = 0x1

.field static final blacklist MSG_SIGNAL_STRENGTH_CHANGED:I = 0x5

.field static final blacklist MSG_TRAFFIC_STATS_POLL:I = 0x2

.field public static final blacklist NUM_LINK_DIRECTION:I = 0x2

.field public static final blacklist NUM_SIGNAL_LEVEL:I = 0x5

.field private static final blacklist TAG:Ljava/lang/String; = "LinkBandwidthEstimator"

.field static final blacklist UNKNOWN_TAC:I = 0x7fffffff


# instance fields
.field private blacklist mBandwidthUpdateDataRat:I

.field private blacklist mBandwidthUpdatePlmn:Ljava/lang/String;

.field private blacklist mBandwidthUpdateSignalDbm:I

.field private blacklist mBandwidthUpdateSignalLevel:I

.field private blacklist mDataActivity:I

.field private blacklist mDataRat:I

.field private final blacklist mDefaultNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private final blacklist mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

.field private blacklist mFilterUpdateTimeMs:J

.field private blacklist mIsOnActiveData:Z

.field private blacklist mIsOnDefaultRoute:Z

.field private blacklist mLastDrsOrRatChangeTimeMs:J

.field private blacklist mLastMobileRxBytes:J

.field private blacklist mLastMobileTxBytes:J

.field private blacklist mLastModemActivityInfo:Landroid/telephony/ModemActivityInfo;

.field private blacklist mLastModemPollTimeMs:J

.field private blacklist mLastPlmnOrRatChangeTimeMs:J

.field private blacklist mLastTrafficValid:Z

.field private final blacklist mLinkBandwidthEstimatorCallbacks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/internal/telephony/data/LinkBandwidthEstimator$LinkBandwidthEstimatorCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mLocalLog:Lcom/android/internal/telephony/LocalLog;

.field private blacklist mNetworkCapabilities:Landroid/net/NetworkCapabilities;

.field private final blacklist mNetworkMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/internal/telephony/data/LinkBandwidthEstimator$NetworkKey;",
            "Lcom/android/internal/telephony/data/LinkBandwidthEstimator$NetworkBandwidth;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mOutcomeReceiver:Landroid/os/OutcomeReceiver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/OutcomeReceiver<",
            "Landroid/telephony/ModemActivityInfo;",
            "Landroid/telephony/TelephonyManager$ModemActivityInfoException;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mPhone:Lcom/android/internal/telephony/Phone;

.field private final blacklist mPlaceholderNetwork:Lcom/android/internal/telephony/data/LinkBandwidthEstimator$NetworkBandwidth;

.field private blacklist mPlmn:Ljava/lang/String;

.field private blacklist mRxBytesDeltaAcc:J

.field private final blacklist mRxState:Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;

.field private blacklist mScreenOn:Z

.field private blacklist mSignalLevel:I

.field private blacklist mSignalStrengthDbm:I

.field private blacklist mTac:I

.field private final blacklist mTelephonyCallback:Landroid/telephony/TelephonyCallback;

.field private final blacklist mTelephonyFacade:Lcom/android/internal/telephony/TelephonyFacade;

.field private final blacklist mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private blacklist mTxBytesDeltaAcc:J

.field private final blacklist mTxState:Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;


# direct methods
.method public static synthetic blacklist $r8$lambda$Mdgp2VWUKrudS1LXmAOUibjJBaM(Lcom/android/internal/telephony/data/LinkBandwidthEstimator;Lcom/android/internal/telephony/data/LinkBandwidthEstimator$LinkBandwidthEstimatorCallback;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->lambda$handleTrafficStatsPollConditionChanged$1(Lcom/android/internal/telephony/data/LinkBandwidthEstimator$LinkBandwidthEstimatorCallback;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$OyrvXVisju1fhl2BoWBaMP8kAWc(Lcom/android/internal/telephony/data/LinkBandwidthEstimator$LinkBandwidthEstimatorCallback;I)V
    .registers 2

    .line 486
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$LinkBandwidthEstimatorCallback;->onDataActivityChanged(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$aWnEUR2EMYlLByDPcxKtXGKmXeQ(Lcom/android/internal/telephony/data/LinkBandwidthEstimator;Lcom/android/internal/telephony/data/LinkBandwidthEstimator$LinkBandwidthEstimatorCallback;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->lambda$handleTrafficStatsPollConditionChanged$0(Lcom/android/internal/telephony/data/LinkBandwidthEstimator$LinkBandwidthEstimatorCallback;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$tzl-EdFlwVwykRGVCSFGdxIs04k(IILcom/android/internal/telephony/data/LinkBandwidthEstimator$LinkBandwidthEstimatorCallback;)V
    .registers 4

    .line 927
    new-instance v0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$$ExternalSyntheticLambda5;

    invoke-direct {v0, p2, p0, p1}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$$ExternalSyntheticLambda5;-><init>(Lcom/android/internal/telephony/data/LinkBandwidthEstimator$LinkBandwidthEstimatorCallback;II)V

    invoke-virtual {p2, v0}, Lcom/android/internal/telephony/data/DataCallback;->invokeFromExecutor(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$ygaQF8KT6JtScMwz06lOdNygogo(ILcom/android/internal/telephony/data/LinkBandwidthEstimator$LinkBandwidthEstimatorCallback;)V
    .registers 3

    .line 485
    new-instance v0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1, p0}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$$ExternalSyntheticLambda2;-><init>(Lcom/android/internal/telephony/data/LinkBandwidthEstimator$LinkBandwidthEstimatorCallback;I)V

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/data/DataCallback;->invokeFromExecutor(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$zPWNfvmliL3T63Aed7llUPckHvw(Lcom/android/internal/telephony/data/LinkBandwidthEstimator$LinkBandwidthEstimatorCallback;II)V
    .registers 3

    .line 928
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$LinkBandwidthEstimatorCallback;->onBandwidthChanged(II)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmBandwidthUpdateDataRat(Lcom/android/internal/telephony/data/LinkBandwidthEstimator;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mBandwidthUpdateDataRat:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmBandwidthUpdatePlmn(Lcom/android/internal/telephony/data/LinkBandwidthEstimator;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mBandwidthUpdatePlmn:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmBandwidthUpdateSignalDbm(Lcom/android/internal/telephony/data/LinkBandwidthEstimator;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mBandwidthUpdateSignalDbm:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDataRat(Lcom/android/internal/telephony/data/LinkBandwidthEstimator;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mDataRat:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPhone(Lcom/android/internal/telephony/data/LinkBandwidthEstimator;)Lcom/android/internal/telephony/Phone;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPlmn(Lcom/android/internal/telephony/data/LinkBandwidthEstimator;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mPlmn:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSignalLevel(Lcom/android/internal/telephony/data/LinkBandwidthEstimator;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mSignalLevel:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSignalStrengthDbm(Lcom/android/internal/telephony/data/LinkBandwidthEstimator;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mSignalStrengthDbm:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTac(Lcom/android/internal/telephony/data/LinkBandwidthEstimator;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mTac:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTelephonyFacade(Lcom/android/internal/telephony/data/LinkBandwidthEstimator;)Lcom/android/internal/telephony/TelephonyFacade;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mTelephonyFacade:Lcom/android/internal/telephony/TelephonyFacade;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetNrMode(Lcom/android/internal/telephony/data/LinkBandwidthEstimator;I)I
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->getNrMode(I)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$misScreenOn(Lcom/android/internal/telephony/data/LinkBandwidthEstimator;)Z
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->isScreenOn()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mlookupNetwork(Lcom/android/internal/telephony/data/LinkBandwidthEstimator;Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/telephony/data/LinkBandwidthEstimator$NetworkBandwidth;
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->lookupNetwork(Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/telephony/data/LinkBandwidthEstimator$NetworkBandwidth;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetBYTE_DELTA_THRESHOLD_KB()[[I
    .registers 1

    .line 0
    sget-object v0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->BYTE_DELTA_THRESHOLD_KB:[[I

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    .line 0
    sget-object v0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 20

    const/16 v0, 0xc8

    const/16 v1, 0x12c

    const/16 v2, 0x190

    const/16 v3, 0x258

    const/16 v4, 0x3e8

    .line 140
    filled-new-array {v0, v1, v2, v3, v4}, [I

    move-result-object v0

    const/16 v1, 0x320

    filled-new-array {v2, v3, v1, v4, v4}, [I

    move-result-object v1

    filled-new-array {v0, v1}, [[I

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->BYTE_DELTA_THRESHOLD_KB:[[I

    .line 148
    const-string v18, "NR:145000,60000"

    const-string v19, "NR_MMWAVE:145000,60000"

    const-string v1, "GPRS:24,24"

    const-string v2, "EDGE:70,18"

    const-string v3, "UMTS:115,115"

    const-string v4, "CDMA:14,14"

    const-string v5, "CDMA - 1xRTT:30,30"

    const-string v6, "CDMA - EvDo rev. 0:750,48"

    const-string v7, "CDMA - EvDo rev. A:950,550"

    const-string v8, "HSDPA:4300,620"

    const-string v9, "HSUPA:4300,1800"

    const-string v10, "HSPA:4300,1800"

    const-string v11, "CDMA - EvDo rev. B:1500,550"

    const-string v12, "CDMA - eHRPD:750,48"

    const-string v13, "HSPA+:13000,3400"

    const-string v14, "TD_SCDMA:115,115"

    const-string v15, "LTE:30000,15000"

    const-string v16, "NR_NSA:47000,18000"

    const-string v17, "NR_NSA_MMWAVE:145000,60000"

    filled-new-array/range {v1 .. v19}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->AVG_BW_PER_RAT:[Ljava/lang/String;

    .line 155
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->AVG_BW_PER_RAT_MAP:Ljava/util/Map;

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/telephony/Phone;Landroid/os/Looper;Lcom/android/internal/telephony/TelephonyFacade;)V
    .registers 11

    .line 301
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 169
    new-instance p2, Lcom/android/internal/telephony/LocalLog;

    const/16 v0, 0x200

    invoke-direct {p2, v0}, Lcom/android/internal/telephony/LocalLog;-><init>(I)V

    iput-object p2, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    const/4 p2, 0x0

    .line 170
    iput-boolean p2, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mScreenOn:Z

    .line 171
    iput-boolean p2, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mIsOnDefaultRoute:Z

    .line 172
    iput-boolean p2, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mIsOnActiveData:Z

    const/4 v0, 0x1

    .line 174
    iput-boolean v0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mLastTrafficValid:Z

    const/4 v1, 0x0

    .line 180
    iput-object v1, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mLastModemActivityInfo:Landroid/telephony/ModemActivityInfo;

    .line 181
    new-instance v2, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$TelephonyCallbackImpl;

    invoke-direct {v2, p0, v1}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$TelephonyCallbackImpl;-><init>(Lcom/android/internal/telephony/data/LinkBandwidthEstimator;Lcom/android/internal/telephony/data/LinkBandwidthEstimator-IA;)V

    iput-object v2, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mTelephonyCallback:Landroid/telephony/TelephonyCallback;

    .line 184
    iput p2, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mDataRat:I

    .line 186
    const-string v3, ""

    iput-object v3, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mPlmn:Ljava/lang/String;

    const/4 v4, -0x1

    .line 191
    iput v4, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mBandwidthUpdateSignalDbm:I

    .line 192
    iput v4, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mBandwidthUpdateSignalLevel:I

    .line 193
    iput p2, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mBandwidthUpdateDataRat:I

    .line 194
    iput-object v3, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mBandwidthUpdatePlmn:Ljava/lang/String;

    .line 195
    new-instance v4, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;

    invoke-direct {v4, p0, p2}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;-><init>(Lcom/android/internal/telephony/data/LinkBandwidthEstimator;I)V

    iput-object v4, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mTxState:Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;

    .line 196
    new-instance v4, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;

    invoke-direct {v4, p0, v0}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;-><init>(Lcom/android/internal/telephony/data/LinkBandwidthEstimator;I)V

    iput-object v4, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mRxState:Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;

    .line 200
    iput p2, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mDataActivity:I

    .line 203
    new-instance p2, Landroid/util/ArraySet;

    invoke-direct {p2}, Landroid/util/ArraySet;-><init>()V

    iput-object p2, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mLinkBandwidthEstimatorCallbacks:Ljava/util/Set;

    .line 256
    new-instance p2, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$1;

    invoke-direct {p2, p0}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$1;-><init>(Lcom/android/internal/telephony/data/LinkBandwidthEstimator;)V

    iput-object p2, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    .line 272
    new-instance v4, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$2;

    invoke-direct {v4, p0}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$2;-><init>(Lcom/android/internal/telephony/data/LinkBandwidthEstimator;)V

    iput-object v4, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mOutcomeReceiver:Landroid/os/OutcomeReceiver;

    .line 287
    new-instance v4, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$3;

    invoke-direct {v4, p0}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$3;-><init>(Lcom/android/internal/telephony/data/LinkBandwidthEstimator;)V

    iput-object v4, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mDefaultNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 1130
    new-instance v5, Landroid/util/ArrayMap;

    invoke-direct {v5}, Landroid/util/ArrayMap;-><init>()V

    iput-object v5, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mNetworkMap:Ljava/util/Map;

    .line 302
    iput-object p1, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 303
    iput-object p3, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mTelephonyFacade:Lcom/android/internal/telephony/TelephonyFacade;

    .line 304
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p3

    const-class v5, Landroid/telephony/TelephonyManager;

    .line 305
    invoke-virtual {p3, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/telephony/TelephonyManager;

    .line 306
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v5

    invoke-virtual {p3, v5}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object p3

    iput-object p3, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 307
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "display"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/display/DisplayManager;

    if-eqz v5, :cond_8d

    .line 310
    invoke-virtual {v5, p2, v1}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 312
    :cond_8d
    invoke-direct {p0}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->isScreenOn()Z

    move-result p2

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->handleScreenStateChanged(Z)V

    .line 314
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p2

    const-class v5, Landroid/net/ConnectivityManager;

    .line 315
    invoke-virtual {p2, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/net/ConnectivityManager;

    if-eqz p2, :cond_a5

    .line 317
    invoke-virtual {p2, v4, p0}, Landroid/net/ConnectivityManager;->registerDefaultNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;Landroid/os/Handler;)V

    .line 319
    :cond_a5
    new-instance p2, Landroid/os/HandlerExecutor;

    invoke-direct {p2, p0}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    invoke-virtual {p3, p2, v2}, Landroid/telephony/TelephonyManager;->registerTelephonyCallback(Ljava/util/concurrent/Executor;Landroid/telephony/TelephonyCallback;)V

    .line 320
    new-instance p2, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$NetworkBandwidth;

    invoke-direct {p2, p0, v3}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$NetworkBandwidth;-><init>(Lcom/android/internal/telephony/data/LinkBandwidthEstimator;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mPlaceholderNetwork:Lcom/android/internal/telephony/data/LinkBandwidthEstimator$NetworkBandwidth;

    .line 321
    invoke-static {}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->initAvgBwPerRatTable()V

    .line 322
    invoke-direct {p0}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->registerNrStateFrequencyChange()V

    .line 323
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object p2

    const/16 p3, 0x9

    invoke-virtual {p2, v0, p0, p3, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForDataRegStateOrRatChanged(ILandroid/os/Handler;ILjava/lang/Object;)V

    .line 325
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSignalStrengthController()Lcom/android/internal/telephony/SignalStrengthController;

    move-result-object p1

    const/4 p2, 0x5

    invoke-virtual {p1, p0, p2, v1}, Lcom/android/internal/telephony/SignalStrengthController;->registerForSignalStrengthChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method private blacklist getDataNri()Landroid/telephony/NetworkRegistrationInfo;
    .registers 3

    .line 1042
    iget-object p0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {p0}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object p0

    const/4 v0, 0x2

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist getDataRatName(II)Ljava/lang/String;
    .registers 4

    const/16 v0, 0xd

    if-ne p0, v0, :cond_12

    const/4 v0, 0x2

    if-eq p1, v0, :cond_a

    const/4 v1, 0x3

    if-ne p1, v1, :cond_12

    :cond_a
    if-ne p1, v0, :cond_f

    .line 988
    const-string p0, "NR_NSA"

    return-object p0

    :cond_f
    const-string p0, "NR_NSA_MMWAVE"

    return-object p0

    :cond_12
    const/16 v0, 0x14

    if-ne p0, v0, :cond_21

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1e

    .line 991
    invoke-static {p0}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1e
    const-string p0, "NR_MMWAVE"

    return-object p0

    .line 993
    :cond_21
    invoke-static {p0}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private blacklist getModemTxTimeMs(Landroid/telephony/ModemActivityInfo;)J
    .registers 6

    const-wide/16 v0, 0x0

    const/4 p0, 0x0

    .line 627
    :goto_3
    invoke-static {}, Landroid/telephony/ModemActivityInfo;->getNumTxPowerLevels()I

    move-result v2

    if-ge p0, v2, :cond_11

    .line 628
    invoke-virtual {p1, p0}, Landroid/telephony/ModemActivityInfo;->getTransmitDurationMillisAtPowerLevel(I)J

    move-result-wide v2

    add-long/2addr v0, v2

    add-int/lit8 p0, p0, 0x1

    goto :goto_3

    :cond_11
    return-wide v0
.end method

.method private blacklist getNrMode(I)I
    .registers 4

    const/16 v0, 0xd

    const/4 v1, 0x4

    if-ne p1, v0, :cond_1b

    .line 969
    invoke-direct {p0}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->isNrNsaConnected()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 971
    iget-object p0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 970
    invoke-interface {p0}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getNrFrequencyRange()I

    move-result p0

    if-ne p0, v1, :cond_19

    const/4 p0, 0x3

    return p0

    :cond_19
    const/4 p0, 0x2

    return p0

    :cond_1b
    const/16 v0, 0x14

    if-ne p1, v0, :cond_2e

    .line 975
    iget-object p0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 974
    invoke-interface {p0}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getNrFrequencyRange()I

    move-result p0

    if-ne p0, v1, :cond_2d

    const/4 p0, 0x5

    return p0

    :cond_2d
    return v1

    :cond_2e
    const/4 p0, 0x1

    return p0
.end method

.method private blacklist getTac(Landroid/telephony/CellIdentity;)I
    .registers 2

    .line 1092
    instance-of p0, p1, Landroid/telephony/CellIdentityLte;

    if-eqz p0, :cond_b

    .line 1093
    check-cast p1, Landroid/telephony/CellIdentityLte;

    invoke-virtual {p1}, Landroid/telephony/CellIdentityLte;->getTac()I

    move-result p0

    return p0

    .line 1095
    :cond_b
    instance-of p0, p1, Landroid/telephony/CellIdentityNr;

    if-eqz p0, :cond_16

    .line 1096
    check-cast p1, Landroid/telephony/CellIdentityNr;

    invoke-virtual {p1}, Landroid/telephony/CellIdentityNr;->getTac()I

    move-result p0

    return p0

    .line 1098
    :cond_16
    instance-of p0, p1, Landroid/telephony/CellIdentityWcdma;

    if-eqz p0, :cond_21

    .line 1099
    check-cast p1, Landroid/telephony/CellIdentityWcdma;

    invoke-virtual {p1}, Landroid/telephony/CellIdentityWcdma;->getLac()I

    move-result p0

    return p0

    .line 1101
    :cond_21
    instance-of p0, p1, Landroid/telephony/CellIdentityTdscdma;

    if-eqz p0, :cond_2c

    .line 1102
    check-cast p1, Landroid/telephony/CellIdentityTdscdma;

    invoke-virtual {p1}, Landroid/telephony/CellIdentityTdscdma;->getLac()I

    move-result p0

    return p0

    .line 1104
    :cond_2c
    instance-of p0, p1, Landroid/telephony/CellIdentityGsm;

    if-eqz p0, :cond_37

    .line 1105
    check-cast p1, Landroid/telephony/CellIdentityGsm;

    invoke-virtual {p1}, Landroid/telephony/CellIdentityGsm;->getLac()I

    move-result p0

    return p0

    :cond_37
    const p0, 0x7fffffff

    return p0
.end method

.method private blacklist handleActivePhoneChanged(I)V
    .registers 4

    .line 434
    iget-object v0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v0

    if-ne p1, v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    .line 435
    :goto_b
    iget-boolean v1, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mIsOnActiveData:Z

    if-ne v1, v0, :cond_10

    return-void

    .line 438
    :cond_10
    iput-boolean v0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mIsOnActiveData:Z

    .line 439
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mIsOnActiveData "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mIsOnActiveData:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " activeDataSubId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->logd(Ljava/lang/String;)V

    .line 440
    invoke-direct {p0}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->handleTrafficStatsPollConditionChanged()V

    return-void
.end method

.method private blacklist handleDefaultNetworkChanged(Landroid/net/NetworkCapabilities;)V
    .registers 3

    .line 418
    iput-object p1, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    const/4 v0, 0x0

    if-nez p1, :cond_6

    goto :goto_a

    .line 423
    :cond_6
    invoke-virtual {p1, v0}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v0

    .line 425
    :goto_a
    iget-boolean p1, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mIsOnDefaultRoute:Z

    if-ne p1, v0, :cond_f

    return-void

    .line 428
    :cond_f
    iput-boolean v0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mIsOnDefaultRoute:Z

    .line 429
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mIsOnDefaultRoute "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mIsOnDefaultRoute:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->logd(Ljava/lang/String;)V

    .line 430
    invoke-direct {p0}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->handleTrafficStatsPollConditionChanged()V

    return-void
.end method

.method private blacklist handleDrsOrRatChanged(Landroid/os/AsyncResult;)V
    .registers 4

    .line 445
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Landroid/util/Pair;

    .line 446
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DrsOrRatChanged dataRegState "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " rilRat "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->logd(Ljava/lang/String;)V

    .line 447
    iget-object p1, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mTelephonyFacade:Lcom/android/internal/telephony/TelephonyFacade;

    invoke-virtual {p1}, Lcom/android/internal/telephony/TelephonyFacade;->getElapsedSinceBootMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mLastDrsOrRatChangeTimeMs:J

    return-void
.end method

.method private blacklist handleModemActivityReturned(Landroid/telephony/ModemActivityInfo;)V
    .registers 2

    .line 553
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->updateBandwidthTxRxSamples(Landroid/telephony/ModemActivityInfo;)V

    .line 554
    invoke-direct {p0}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->updateTxRxBandwidthFilterSendToDataConnection()V

    .line 555
    iput-object p1, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mLastModemActivityInfo:Landroid/telephony/ModemActivityInfo;

    .line 557
    invoke-direct {p0}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->resetByteDeltaAcc()V

    return-void
.end method

.method private blacklist handleScreenStateChanged(Z)V
    .registers 3

    .line 410
    iget-boolean v0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mScreenOn:Z

    if-ne v0, p1, :cond_5

    return-void

    .line 413
    :cond_5
    iput-boolean p1, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mScreenOn:Z

    .line 414
    invoke-direct {p0}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->handleTrafficStatsPollConditionChanged()V

    return-void
.end method

.method private blacklist handleSignalStrengthChanged()V
    .registers 3

    .line 932
    iget-object v0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getSignalStrength()Landroid/telephony/SignalStrength;

    move-result-object v0

    .line 934
    invoke-virtual {v0}, Landroid/telephony/SignalStrength;->getDbm()I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mSignalStrengthDbm:I

    .line 935
    invoke-virtual {v0}, Landroid/telephony/SignalStrength;->getLevel()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mSignalLevel:I

    .line 936
    invoke-direct {p0}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->updateByteCountThr()V

    .line 937
    invoke-direct {p0}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->updateDataRatCellIdentityBandwidth()Z

    move-result v0

    if-eqz v0, :cond_1c

    goto :goto_2b

    .line 941
    :cond_1c
    iget v0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mBandwidthUpdateSignalDbm:I

    iget v1, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mSignalStrengthDbm:I

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v1, 0x6

    if-le v0, v1, :cond_2b

    .line 942
    invoke-direct {p0}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->updateTxRxBandwidthFilterSendToDataConnection()V

    :cond_2b
    :goto_2b
    return-void
.end method

.method private blacklist handleTrafficStatsPoll()V
    .registers 19

    move-object/from16 v0, p0

    .line 466
    invoke-direct {v0}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->invalidateTxRxSamples()V

    .line 467
    iget-object v1, v0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mTelephonyFacade:Lcom/android/internal/telephony/TelephonyFacade;

    invoke-virtual {v1}, Lcom/android/internal/telephony/TelephonyFacade;->getMobileTxBytes()J

    move-result-wide v1

    .line 468
    iget-object v3, v0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mTelephonyFacade:Lcom/android/internal/telephony/TelephonyFacade;

    invoke-virtual {v3}, Lcom/android/internal/telephony/TelephonyFacade;->getMobileRxBytes()J

    move-result-wide v3

    .line 469
    iget-wide v5, v0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mLastMobileTxBytes:J

    sub-long v5, v1, v5

    .line 470
    iget-wide v7, v0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mLastMobileRxBytes:J

    sub-long v7, v3, v7

    const-wide/16 v9, 0x0

    cmp-long v11, v5, v9

    const/4 v12, 0x2

    const/4 v13, 0x1

    const/4 v14, 0x0

    if-lez v11, :cond_2a

    cmp-long v15, v7, v9

    if-lez v15, :cond_2a

    const/4 v15, 0x3

    move-wide/from16 v16, v9

    goto :goto_3b

    :cond_2a
    cmp-long v15, v7, v9

    if-lez v15, :cond_32

    move-wide/from16 v16, v9

    move v15, v13

    goto :goto_3b

    :cond_32
    if-lez v11, :cond_38

    move-wide/from16 v16, v9

    move v15, v12

    goto :goto_3b

    :cond_38
    move-wide/from16 v16, v9

    move v15, v14

    .line 483
    :goto_3b
    iget v9, v0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mDataActivity:I

    if-eq v9, v15, :cond_4b

    .line 484
    iput v15, v0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mDataActivity:I

    .line 485
    iget-object v9, v0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mLinkBandwidthEstimatorCallbacks:Ljava/util/Set;

    new-instance v10, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$$ExternalSyntheticLambda0;

    invoke-direct {v10, v15}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-interface {v9, v10}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    :cond_4b
    const-wide/16 v9, 0x3e8

    .line 490
    invoke-virtual {v0, v12, v9, v10}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 492
    iput-wide v1, v0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mLastMobileTxBytes:J

    .line 493
    iput-wide v3, v0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mLastMobileRxBytes:J

    if-ltz v11, :cond_5c

    cmp-long v1, v7, v16

    if-ltz v1, :cond_5c

    move v1, v13

    goto :goto_5d

    :cond_5c
    move v1, v14

    .line 497
    :goto_5d
    iget-boolean v2, v0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mLastTrafficValid:Z

    if-eqz v2, :cond_109

    if-nez v1, :cond_65

    goto/16 :goto_109

    .line 503
    :cond_65
    iget-wide v1, v0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mTxBytesDeltaAcc:J

    add-long/2addr v1, v5

    iput-wide v1, v0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mTxBytesDeltaAcc:J

    .line 504
    iget-wide v1, v0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mRxBytesDeltaAcc:J

    add-long/2addr v1, v7

    iput-wide v1, v0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mRxBytesDeltaAcc:J

    .line 508
    iget-object v1, v0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mTxState:Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;

    iget v1, v1, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;->mByteDeltaAccThr:I

    div-int/lit8 v1, v1, 0x8

    const/16 v2, 0x4e20

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    int-to-long v3, v1

    .line 510
    iget-object v1, v0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mRxState:Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;

    iget v1, v1, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;->mByteDeltaAccThr:I

    div-int/lit8 v1, v1, 0x8

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    int-to-long v1, v1

    cmp-long v3, v5, v3

    if-gez v3, :cond_a6

    cmp-long v1, v7, v1

    if-gez v1, :cond_a6

    .line 512
    iget-wide v1, v0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mTxBytesDeltaAcc:J

    iget-object v3, v0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mTxState:Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;

    iget v3, v3, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;->mByteDeltaAccThr:I

    int-to-long v3, v3

    cmp-long v1, v1, v3

    if-gez v1, :cond_a6

    iget-wide v1, v0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mRxBytesDeltaAcc:J

    iget-object v3, v0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mRxState:Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;

    iget v3, v3, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;->mByteDeltaAccThr:I

    int-to-long v3, v3

    cmp-long v1, v1, v3

    if-gez v1, :cond_a6

    move v13, v14

    .line 518
    :cond_a6
    iget-object v1, v0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mTelephonyFacade:Lcom/android/internal/telephony/TelephonyFacade;

    invoke-virtual {v1}, Lcom/android/internal/telephony/TelephonyFacade;->getElapsedSinceBootMillis()J

    move-result-wide v1

    .line 519
    iget-wide v3, v0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mLastModemPollTimeMs:J

    sub-long v3, v1, v3

    const-wide/16 v9, 0x1388

    cmp-long v3, v3, v9

    if-gez v3, :cond_b7

    goto :goto_b8

    :cond_b7
    move v14, v13

    :goto_b8
    if-eqz v14, :cond_f6

    .line 525
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 526
    const-string v2, "txByteDelta "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " rxByteDelta "

    .line 527
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " txByteDeltaAcc "

    .line 528
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mTxBytesDeltaAcc:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " rxByteDeltaAcc "

    .line 529
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mRxBytesDeltaAcc:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " trigger modem activity request"

    .line 530
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 526
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->logd(Ljava/lang/String;)V

    .line 531
    invoke-direct {v0}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->updateDataRatCellIdentityBandwidth()Z

    .line 533
    invoke-direct {v0}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->makeRequestModemActivity()V

    return-void

    .line 537
    :cond_f6
    iget-wide v3, v0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mFilterUpdateTimeMs:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x13ec

    cmp-long v1, v1, v3

    if-ltz v1, :cond_108

    .line 540
    invoke-direct {v0}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->updateDataRatCellIdentityBandwidth()Z

    move-result v1

    if-nez v1, :cond_108

    .line 541
    invoke-direct {v0}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->updateTxRxBandwidthFilterSendToDataConnection()V

    :cond_108
    return-void

    .line 498
    :cond_109
    :goto_109
    iput-boolean v1, v0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mLastTrafficValid:Z

    .line 499
    sget-object v0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->TAG:Ljava/lang/String;

    const-string v1, " run into invalid traffic count"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist handleTrafficStatsPollConditionChanged()V
    .registers 3

    const/4 v0, 0x2

    .line 451
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 452
    iget-boolean v0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mScreenOn:Z

    if-eqz v0, :cond_17

    iget-boolean v0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mIsOnDefaultRoute:Z

    if-eqz v0, :cond_17

    iget-boolean v0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mIsOnActiveData:Z

    if-eqz v0, :cond_17

    .line 453
    invoke-direct {p0}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->updateDataRatCellIdentityBandwidth()Z

    .line 454
    invoke-direct {p0}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->handleTrafficStatsPoll()V

    return-void

    .line 456
    :cond_17
    const-string v0, "Traffic status poll stopped"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->logd(Ljava/lang/String;)V

    .line 457
    iget v0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mDataActivity:I

    if-eqz v0, :cond_2d

    const/4 v0, 0x0

    .line 458
    iput v0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mDataActivity:I

    .line 459
    iget-object v0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mLinkBandwidthEstimatorCallbacks:Ljava/util/Set;

    new-instance v1, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/telephony/data/LinkBandwidthEstimator;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    :cond_2d
    return-void
.end method

.method private blacklist hasRecentDataRegStatePlmnOrRatChange()Z
    .registers 7

    .line 618
    iget-object v0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mLastModemActivityInfo:Landroid/telephony/ModemActivityInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 621
    :cond_6
    iget-wide v2, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mLastDrsOrRatChangeTimeMs:J

    invoke-virtual {v0}, Landroid/telephony/ModemActivityInfo;->getTimestampMillis()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-gtz v0, :cond_1e

    iget-wide v2, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mLastPlmnOrRatChangeTimeMs:J

    iget-object p0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mLastModemActivityInfo:Landroid/telephony/ModemActivityInfo;

    .line 622
    invoke-virtual {p0}, Landroid/telephony/ModemActivityInfo;->getTimestampMillis()J

    move-result-wide v4

    cmp-long p0, v2, v4

    if-lez p0, :cond_1d

    goto :goto_1e

    :cond_1d
    return v1

    :cond_1e
    :goto_1e
    const/4 p0, 0x1

    return p0
.end method

.method private static blacklist initAvgBwPerRatTable()V
    .registers 10

    .line 238
    sget-object v0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->AVG_BW_PER_RAT:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_5
    if-ge v3, v1, :cond_4a

    aget-object v4, v0, v3

    .line 241
    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 242
    array-length v5, v4

    const/4 v6, 0x2

    if-ne v5, v6, :cond_47

    const/4 v5, 0x1

    .line 243
    aget-object v7, v4, v5

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 244
    array-length v8, v7

    const/16 v9, 0xe

    if-ne v8, v6, :cond_32

    .line 246
    :try_start_21
    aget-object v6, v7, v2

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6
    :try_end_27
    .catch Ljava/lang/NumberFormatException; {:try_start_21 .. :try_end_27} :catch_30

    .line 247
    :try_start_27
    aget-object v5, v7, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9
    :try_end_2d
    .catch Ljava/lang/NumberFormatException; {:try_start_27 .. :try_end_2d} :catch_2d

    :catch_2d
    :goto_2d
    move v5, v9

    move v9, v6

    goto :goto_33

    :catch_30
    move v6, v9

    goto :goto_2d

    :cond_32
    move v5, v9

    .line 251
    :goto_33
    sget-object v6, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->AVG_BW_PER_RAT_MAP:Ljava/util/Map;

    aget-object v4, v4, v2

    new-instance v7, Landroid/util/Pair;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v7, v8, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v6, v4, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_47
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_4a
    return-void
.end method

.method private blacklist invalidateTxRxSamples()V
    .registers 3

    .line 566
    iget-object v0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mTxState:Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;->mBwSampleValid:Z

    .line 567
    iget-object p0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mRxState:Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;

    iput-boolean v1, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;->mBwSampleValid:Z

    return-void
.end method

.method private blacklist isNrNsaConnected()Z
    .registers 2

    .line 1000
    iget-object p0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {p0}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getNrState()I

    move-result p0

    const/4 v0, 0x3

    if-ne p0, v0, :cond_f

    const/4 p0, 0x1

    return p0

    :cond_f
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist isScreenOn()Z
    .registers 6

    .line 390
    iget-object p0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "display"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/display/DisplayManager;

    const/4 v0, 0x0

    if-nez p0, :cond_12

    return v0

    .line 393
    :cond_12
    invoke-virtual {p0}, Landroid/hardware/display/DisplayManager;->getDisplays()[Landroid/view/Display;

    move-result-object p0

    if-eqz p0, :cond_2a

    .line 396
    array-length v1, p0

    move v2, v0

    :goto_1a
    if-ge v2, v1, :cond_2a

    aget-object v3, p0, v2

    .line 399
    invoke-virtual {v3}, Landroid/view/Display;->getState()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_27

    const/4 p0, 0x1

    return p0

    :cond_27
    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    :cond_2a
    return v0
.end method

.method private blacklist isValidNetwork()Z
    .registers 3

    .line 660
    iget-object v0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mPlmn:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    iget p0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mDataRat:I

    if-eqz p0, :cond_10

    const/4 p0, 0x1

    return p0

    :cond_10
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic blacklist lambda$handleTrafficStatsPollConditionChanged$0(Lcom/android/internal/telephony/data/LinkBandwidthEstimator$LinkBandwidthEstimatorCallback;)V
    .registers 2

    .line 460
    iget p0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mDataActivity:I

    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$LinkBandwidthEstimatorCallback;->onDataActivityChanged(I)V

    return-void
.end method

.method private synthetic blacklist lambda$handleTrafficStatsPollConditionChanged$1(Lcom/android/internal/telephony/data/LinkBandwidthEstimator$LinkBandwidthEstimatorCallback;)V
    .registers 3

    .line 459
    new-instance v0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$$ExternalSyntheticLambda4;-><init>(Lcom/android/internal/telephony/data/LinkBandwidthEstimator;Lcom/android/internal/telephony/data/LinkBandwidthEstimator$LinkBandwidthEstimatorCallback;)V

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/data/DataCallback;->invokeFromExecutor(Ljava/lang/Runnable;)V

    return-void
.end method

.method private blacklist lookupNetwork(Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/telephony/data/LinkBandwidthEstimator$NetworkBandwidth;
    .registers 4

    const v0, 0x7fffffff

    .line 1170
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->lookupNetwork(Ljava/lang/String;ILjava/lang/String;)Lcom/android/internal/telephony/data/LinkBandwidthEstimator$NetworkBandwidth;

    move-result-object p0

    return-object p0
.end method

.method private blacklist makeRequestModemActivity()V
    .registers 3

    .line 547
    iget-object v0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mTelephonyFacade:Lcom/android/internal/telephony/TelephonyFacade;

    invoke-virtual {v0}, Lcom/android/internal/telephony/TelephonyFacade;->getElapsedSinceBootMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mLastModemPollTimeMs:J

    .line 549
    iget-object v0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    new-instance v1, Lcom/android/internal/telephony/DisplayInfoController$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/internal/telephony/DisplayInfoController$$ExternalSyntheticLambda0;-><init>()V

    iget-object p0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mOutcomeReceiver:Landroid/os/OutcomeReceiver;

    invoke-virtual {v0, v1, p0}, Landroid/telephony/TelephonyManager;->requestModemActivityInfo(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    return-void
.end method

.method private blacklist registerNrStateFrequencyChange()V
    .registers 4

    .line 947
    iget-object v0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    const/4 v1, 0x7

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForNrStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 949
    iget-object v0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForNrFrequencyChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method private blacklist resetBandwidthFilter()V
    .registers 2

    .line 921
    iget-object v0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mTxState:Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;

    invoke-static {v0}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;->-$$Nest$mresetBandwidthFilter(Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;)V

    .line 922
    iget-object p0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mRxState:Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;

    invoke-static {p0}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;->-$$Nest$mresetBandwidthFilter(Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;)V

    return-void
.end method

.method private blacklist resetByteDeltaAcc()V
    .registers 3

    const-wide/16 v0, 0x0

    .line 561
    iput-wide v0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mTxBytesDeltaAcc:J

    .line 562
    iput-wide v0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mRxBytesDeltaAcc:J

    return-void
.end method

.method private blacklist sendLinkBandwidthToDataConnection(II)V
    .registers 5

    .line 926
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "send to DC tx "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " rx "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->logv(Ljava/lang/String;)V

    .line 927
    iget-object p0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mLinkBandwidthEstimatorCallbacks:Ljava/util/Set;

    new-instance v0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$$ExternalSyntheticLambda3;

    invoke-direct {v0, p1, p2}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$$ExternalSyntheticLambda3;-><init>(II)V

    invoke-interface {p0, v0}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private blacklist updateBandwidthTxRxSamples(Landroid/telephony/ModemActivityInfo;)V
    .registers 10

    .line 571
    iget-object v0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mLastModemActivityInfo:Landroid/telephony/ModemActivityInfo;

    if-eqz v0, :cond_fc

    if-eqz p1, :cond_fc

    iget-object v0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    if-eqz v0, :cond_fc

    .line 572
    invoke-direct {p0}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->hasRecentDataRegStatePlmnOrRatChange()Z

    move-result v0

    if-eqz v0, :cond_12

    goto/16 :goto_fc

    .line 576
    :cond_12
    iget-object v0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mLastModemActivityInfo:Landroid/telephony/ModemActivityInfo;

    invoke-virtual {v0}, Landroid/telephony/ModemActivityInfo;->getTimestampMillis()J

    move-result-wide v0

    .line 577
    invoke-virtual {p1}, Landroid/telephony/ModemActivityInfo;->getTimestampMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    const-wide/16 v0, 0x2710

    cmp-long v0, v2, v0

    if-gtz v0, :cond_fc

    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-gtz v0, :cond_2b

    goto/16 :goto_fc

    .line 583
    :cond_2b
    iget-object v0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mLastModemActivityInfo:Landroid/telephony/ModemActivityInfo;

    invoke-virtual {v0, p1}, Landroid/telephony/ModemActivityInfo;->getDelta(Landroid/telephony/ModemActivityInfo;)Landroid/telephony/ModemActivityInfo;

    move-result-object p1

    .line 584
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->getModemTxTimeMs(Landroid/telephony/ModemActivityInfo;)J

    move-result-wide v0

    .line 585
    invoke-virtual {p1}, Landroid/telephony/ModemActivityInfo;->getReceiveTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x2

    mul-long/2addr v4, v0

    const-wide/16 v6, 0x3

    mul-long/2addr v6, v2

    cmp-long p1, v4, v6

    if-lez p1, :cond_46

    add-long v4, v0, v2

    goto :goto_47

    :cond_46
    move-wide v4, v2

    .line 593
    :goto_47
    iget-object p1, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mTxState:Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;

    iget-wide v6, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mTxBytesDeltaAcc:J

    invoke-static {p1, v6, v7, v0, v1}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;->-$$Nest$mupdateBandwidthSample(Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;JJ)V

    .line 594
    iget-object p1, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mRxState:Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;

    iget-wide v6, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mRxBytesDeltaAcc:J

    invoke-static {p1, v6, v7, v4, v5}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;->-$$Nest$mupdateBandwidthSample(Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;JJ)V

    .line 596
    iget-object p1, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {p1}, Landroid/net/NetworkCapabilities;->getLinkUpstreamBandwidthKbps()I

    move-result p1

    .line 597
    iget-object v4, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v4}, Landroid/net/NetworkCapabilities;->getLinkDownstreamBandwidthKbps()I

    move-result v4

    .line 599
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 600
    const-string v6, "UpdateBwSample"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " dBm "

    .line 601
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mSignalStrengthDbm:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " level "

    .line 602
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mSignalLevel:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " rat "

    .line 603
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mDataRat:I

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->getDataRatName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " plmn "

    .line 604
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mPlmn:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " tac "

    .line 605
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mTac:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " reportedTxKbps "

    .line 606
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " reportedRxKbps "

    .line 607
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " txMs "

    .line 608
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " rxMs "

    .line 609
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " txKB "

    .line 610
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mTxBytesDeltaAcc:J

    const-wide/16 v2, 0x400

    div-long/2addr v0, v2

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " rxKB "

    .line 611
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mRxBytesDeltaAcc:J

    div-long/2addr v0, v2

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " txKBThr "

    .line 612
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mTxState:Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;

    iget p1, p1, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;->mByteDeltaAccThr:I

    div-int/lit16 p1, p1, 0x400

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " rxKBThr "

    .line 613
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mRxState:Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;

    iget p1, p1, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;->mByteDeltaAccThr:I

    div-int/lit16 p1, p1, 0x400

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 614
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 600
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->logd(Ljava/lang/String;)V

    :cond_fc
    :goto_fc
    return-void
.end method

.method private blacklist updateByteCountThr()V
    .registers 2

    .line 914
    iget-object v0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mTxState:Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;

    invoke-static {v0}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;->-$$Nest$mupdateByteCountThr(Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;)V

    .line 915
    iget-object p0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mRxState:Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;

    invoke-static {p0}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;->-$$Nest$mupdateByteCountThr(Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;)V

    return-void
.end method

.method private blacklist updateDataRatCellIdentityBandwidth()Z
    .registers 5

    .line 1047
    iget-object v0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    .line 1048
    iget-object v1, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getCurrentCellIdentity()Landroid/telephony/CellIdentity;

    move-result-object v1

    .line 1056
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->getTac(Landroid/telephony/CellIdentity;)I

    move-result v2

    iput v2, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mTac:I

    .line 1059
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_21

    .line 1060
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    goto :goto_32

    .line 1061
    :cond_21
    invoke-virtual {v1}, Landroid/telephony/CellIdentity;->getPlmn()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_30

    .line 1062
    invoke-virtual {v1}, Landroid/telephony/CellIdentity;->getPlmn()Ljava/lang/String;

    move-result-object v0

    goto :goto_32

    .line 1064
    :cond_30
    const-string v0, ""

    .line 1067
    :goto_32
    iget-object v1, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mPlmn:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_3f

    .line 1069
    iput-object v0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mPlmn:Ljava/lang/String;

    move v0, v2

    goto :goto_40

    :cond_3f
    const/4 v0, 0x0

    .line 1072
    :goto_40
    invoke-direct {p0}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->getDataNri()Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v1

    if-eqz v1, :cond_57

    .line 1074
    invoke-virtual {v1}, Landroid/telephony/NetworkRegistrationInfo;->getAccessNetworkTechnology()I

    move-result v1

    .line 1075
    iget v3, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mDataRat:I

    if-eq v1, v3, :cond_57

    .line 1077
    iput v1, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mDataRat:I

    .line 1078
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->updateStaticBwValue(I)Z

    .line 1079
    invoke-direct {p0}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->updateByteCountThr()V

    goto :goto_58

    :cond_57
    move v2, v0

    :goto_58
    if-eqz v2, :cond_68

    .line 1084
    invoke-direct {p0}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->resetBandwidthFilter()V

    .line 1085
    invoke-direct {p0}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->updateTxRxBandwidthFilterSendToDataConnection()V

    .line 1086
    iget-object v0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mTelephonyFacade:Lcom/android/internal/telephony/TelephonyFacade;

    invoke-virtual {v0}, Lcom/android/internal/telephony/TelephonyFacade;->getElapsedSinceBootMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mLastPlmnOrRatChangeTimeMs:J

    :cond_68
    return v2
.end method

.method private blacklist updateStaticBwValue(I)Z
    .registers 5

    .line 1008
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->getStaticAvgBw(I)Landroid/util/Pair;

    move-result-object p1

    const/4 v0, 0x1

    if-nez p1, :cond_12

    .line 1010
    iget-object p1, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mTxState:Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;

    const/16 v1, 0xe

    iput v1, p1, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;->mStaticBwKbps:I

    .line 1011
    iget-object p0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mRxState:Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;

    iput v1, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;->mStaticBwKbps:I

    return v0

    .line 1014
    :cond_12
    iget-object v1, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mTxState:Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;

    iget v1, v1, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;->mStaticBwKbps:I

    iget-object v2, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v1, v2, :cond_31

    iget-object v1, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mRxState:Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;

    iget v1, v1, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;->mStaticBwKbps:I

    iget-object v2, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    .line 1015
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v1, v2, :cond_2f

    goto :goto_31

    :cond_2f
    const/4 p0, 0x0

    return p0

    .line 1016
    :cond_31
    :goto_31
    iget-object v1, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mTxState:Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;

    iget-object v2, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v1, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;->mStaticBwKbps:I

    .line 1017
    iget-object p0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mRxState:Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;

    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;->mStaticBwKbps:I

    return v0
.end method

.method private blacklist updateStaticBwValueResetFilter()V
    .registers 2

    .line 1034
    iget v0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mDataRat:I

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->updateStaticBwValue(I)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1035
    invoke-direct {p0}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->updateByteCountThr()V

    .line 1036
    invoke-direct {p0}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->resetBandwidthFilter()V

    .line 1037
    invoke-direct {p0}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->updateTxRxBandwidthFilterSendToDataConnection()V

    :cond_11
    return-void
.end method

.method private blacklist updateTxRxBandwidthFilterSendToDataConnection()V
    .registers 5

    .line 634
    iget-object v0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mTelephonyFacade:Lcom/android/internal/telephony/TelephonyFacade;

    invoke-virtual {v0}, Lcom/android/internal/telephony/TelephonyFacade;->getElapsedSinceBootMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mFilterUpdateTimeMs:J

    .line 635
    iget-object v0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mTxState:Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;

    invoke-static {v0}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;->-$$Nest$mupdateBandwidthFilter(Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;)V

    .line 636
    iget-object v0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mRxState:Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;

    invoke-static {v0}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;->-$$Nest$mupdateBandwidthFilter(Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;)V

    .line 638
    iget-object v0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mTxState:Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;

    invoke-virtual {v0}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;->hasLargeBwChange()Z

    move-result v0

    if-nez v0, :cond_3b

    iget-object v0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mRxState:Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;

    .line 639
    invoke-virtual {v0}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;->hasLargeBwChange()Z

    move-result v0

    if-nez v0, :cond_3b

    iget v0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mBandwidthUpdateDataRat:I

    iget v1, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mDataRat:I

    if-ne v0, v1, :cond_3b

    iget v0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mBandwidthUpdateSignalLevel:I

    iget v1, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mSignalLevel:I

    if-ne v0, v1, :cond_3b

    iget-object v0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mBandwidthUpdatePlmn:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mPlmn:Ljava/lang/String;

    .line 642
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_39

    goto :goto_3b

    :cond_39
    const/4 v0, 0x0

    goto :goto_3c

    :cond_3b
    :goto_3b
    const/4 v0, 0x1

    .line 643
    :goto_3c
    invoke-direct {p0}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->isValidNetwork()Z

    move-result v1

    if-eqz v1, :cond_61

    if-eqz v0, :cond_61

    .line 644
    iget-object v0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mTxState:Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;

    iget v1, v0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;->mAvgUsedKbps:I

    const/4 v2, -0x1

    if-gez v1, :cond_4d

    move v1, v2

    goto :goto_4f

    :cond_4d
    iget v1, v0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;->mFilterKbps:I

    :goto_4f
    iput v1, v0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;->mLastReportedBwKbps:I

    .line 645
    iget-object v1, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mRxState:Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;

    iget v3, v1, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;->mAvgUsedKbps:I

    if-gez v3, :cond_58

    goto :goto_5a

    :cond_58
    iget v2, v1, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;->mFilterKbps:I

    :goto_5a
    iput v2, v1, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;->mLastReportedBwKbps:I

    .line 646
    iget v0, v0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;->mLastReportedBwKbps:I

    invoke-direct {p0, v0, v2}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->sendLinkBandwidthToDataConnection(II)V

    .line 650
    :cond_61
    iget v0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mSignalStrengthDbm:I

    iput v0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mBandwidthUpdateSignalDbm:I

    .line 651
    iget v0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mSignalLevel:I

    iput v0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mBandwidthUpdateSignalLevel:I

    .line 652
    iget v0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mDataRat:I

    iput v0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mBandwidthUpdateDataRat:I

    .line 653
    iget-object v0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mPlmn:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mBandwidthUpdatePlmn:Ljava/lang/String;

    .line 655
    iget-object v0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mTxState:Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;

    invoke-virtual {v0}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;->calculateError()V

    .line 656
    iget-object p0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mRxState:Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;

    invoke-virtual {p0}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$BandwidthState;->calculateError()V

    return-void
.end method


# virtual methods
.method public blacklist dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6

    .line 1270
    new-instance v0, Lcom/android/internal/telephony/IndentingPrintWriter;

    const-string v1, " "

    invoke-direct {v0, p2, v1}, Lcom/android/internal/telephony/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 1271
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 1272
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "current PLMN "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mPlmn:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " TAC "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mTac:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " RAT "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mDataRat:I

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->getDataRatName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1273
    const-string p2, "all networks visited since device boot"

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1274
    iget-object p2, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mNetworkMap:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_47
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5b

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$NetworkBandwidth;

    .line 1275
    invoke-virtual {v1}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$NetworkBandwidth;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_47

    .line 1279
    :cond_5b
    :try_start_5b
    iget-object p0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {p0, p1, v0, p3}, Lcom/android/internal/telephony/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_5b .. :try_end_60} :catch_61

    goto :goto_65

    :catch_61
    move-exception p0

    .line 1281
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1283
    :goto_65
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 1284
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->println()V

    .line 1285
    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    return-void
.end method

.method public blacklist getDataActivity()I
    .registers 1

    .line 958
    iget p0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mDataActivity:I

    return p0
.end method

.method public blacklist getDataRatName(I)Ljava/lang/String;
    .registers 2

    .line 965
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->getNrMode(I)I

    move-result p0

    invoke-static {p1, p0}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->getDataRatName(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getStaticAvgBw(I)Landroid/util/Pair;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1025
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->getDataRatName(I)Ljava/lang/String;

    move-result-object p0

    .line 1026
    sget-object p1, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->AVG_BW_PER_RAT_MAP:Ljava/util/Map;

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/Pair;

    if-nez p1, :cond_24

    .line 1028
    sget-object v0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " is not found in Avg BW table"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_24
    return-object p1
.end method

.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 4

    .line 331
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_5a

    .line 359
    sget-object p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid message "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 356
    :pswitch_1e
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->handleDrsOrRatChanged(Landroid/os/AsyncResult;)V

    return-void

    .line 353
    :pswitch_26
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->handleActivePhoneChanged(I)V

    return-void

    .line 350
    :pswitch_32
    invoke-direct {p0}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->updateStaticBwValueResetFilter()V

    return-void

    .line 345
    :pswitch_36
    invoke-direct {p0}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->handleSignalStrengthChanged()V

    return-void

    .line 342
    :pswitch_3a
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/net/NetworkCapabilities;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->handleDefaultNetworkChanged(Landroid/net/NetworkCapabilities;)V

    return-void

    .line 339
    :pswitch_42
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/telephony/ModemActivityInfo;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->handleModemActivityReturned(Landroid/telephony/ModemActivityInfo;)V

    return-void

    .line 336
    :pswitch_4a
    invoke-direct {p0}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->handleTrafficStatsPoll()V

    return-void

    .line 333
    :pswitch_4e
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->handleScreenStateChanged(Z)V

    return-void

    :pswitch_data_5a
    .packed-switch 0x1
        :pswitch_4e
        :pswitch_4a
        :pswitch_42
        :pswitch_3a
        :pswitch_36
        :pswitch_32
        :pswitch_32
        :pswitch_26
        :pswitch_1e
    .end packed-switch
.end method

.method blacklist logd(Ljava/lang/String;)V
    .registers 2

    .line 1124
    iget-object p0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    return-void
.end method

.method blacklist logv(Ljava/lang/String;)V
    .registers 2

    .line 0
    return-void
.end method

.method public blacklist lookupNetwork(Ljava/lang/String;ILjava/lang/String;)Lcom/android/internal/telephony/data/LinkBandwidthEstimator$NetworkBandwidth;
    .registers 5

    const/4 v0, 0x0

    .line 1178
    invoke-static {v0}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v0

    .line 1177
    invoke-virtual {p3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1179
    iget-object p0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mPlaceholderNetwork:Lcom/android/internal/telephony/data/LinkBandwidthEstimator$NetworkBandwidth;

    return-object p0

    .line 1181
    :cond_e
    new-instance v0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$NetworkKey;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$NetworkKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 1182
    iget-object p1, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mNetworkMap:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$NetworkBandwidth;

    if-nez p1, :cond_2b

    .line 1184
    new-instance p1, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$NetworkBandwidth;

    invoke-virtual {v0}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$NetworkKey;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$NetworkBandwidth;-><init>(Lcom/android/internal/telephony/data/LinkBandwidthEstimator;Ljava/lang/String;)V

    .line 1185
    iget-object p0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mNetworkMap:Ljava/util/Map;

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2b
    return-object p1
.end method

.method public blacklist registerCallback(Lcom/android/internal/telephony/data/LinkBandwidthEstimator$LinkBandwidthEstimatorCallback;)V
    .registers 2

    .line 370
    iget-object p0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mLinkBandwidthEstimatorCallbacks:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public blacklist unregisterCallback(Lcom/android/internal/telephony/data/LinkBandwidthEstimator$LinkBandwidthEstimatorCallback;)V
    .registers 2

    .line 379
    iget-object p0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->mLinkBandwidthEstimatorCallbacks:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method
