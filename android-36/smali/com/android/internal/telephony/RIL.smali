.class public Lcom/android/internal/telephony/RIL;
.super Lcom/android/internal/telephony/BaseCommands;
.source "RIL.java"

# interfaces
.implements Lcom/android/internal/telephony/CommandsInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/RIL$RadioProxyDeathRecipient;,
        Lcom/android/internal/telephony/RIL$BinderServiceDeathRecipient;,
        Lcom/android/internal/telephony/RIL$RilHandler;
    }
.end annotation


# static fields
.field private static final blacklist FEATURES_TO_SERVICES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist FOR_ACK_WAKELOCK:I = 0x1

.field public static final blacklist FOR_WAKELOCK:I = 0x0

.field static final blacklist HIDL_SERVICE_NAME:[Ljava/lang/String;

.field public static final blacklist INVALID_WAKELOCK:I = -0x1

.field public static final blacklist MAX_SERVICE_IDX:I = 0x7

.field public static final blacklist MIN_SERVICE_IDX:I

.field public static final blacklist RADIO_HAL_VERSION_1_1:Lcom/android/internal/telephony/HalVersion;

.field public static final blacklist RADIO_HAL_VERSION_1_2:Lcom/android/internal/telephony/HalVersion;

.field public static final blacklist RADIO_HAL_VERSION_1_3:Lcom/android/internal/telephony/HalVersion;

.field public static final blacklist RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

.field public static final blacklist RADIO_HAL_VERSION_1_5:Lcom/android/internal/telephony/HalVersion;

.field public static final blacklist RADIO_HAL_VERSION_1_6:Lcom/android/internal/telephony/HalVersion;

.field public static final blacklist RADIO_HAL_VERSION_2_0:Lcom/android/internal/telephony/HalVersion;

.field public static final blacklist RADIO_HAL_VERSION_2_1:Lcom/android/internal/telephony/HalVersion;

.field public static final blacklist RADIO_HAL_VERSION_2_2:Lcom/android/internal/telephony/HalVersion;

.field public static final blacklist RADIO_HAL_VERSION_2_3:Lcom/android/internal/telephony/HalVersion;

.field public static final blacklist RADIO_HAL_VERSION_2_4:Lcom/android/internal/telephony/HalVersion;

.field public static final blacklist RADIO_HAL_VERSION_UNKNOWN:Lcom/android/internal/telephony/HalVersion;

.field public static final blacklist RADIO_HAL_VERSION_UNSUPPORTED:Lcom/android/internal/telephony/HalVersion;

.field static blacklist sRilTimeHistograms:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/telephony/TelephonyHistogram;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final blacklist mAckWakeLock:Landroid/os/PowerManager$WakeLock;

.field final blacklist mAckWakeLockTimeout:I

.field volatile blacklist mAckWlSequenceNum:I

.field private blacklist mActiveWakelockWorkSource:Landroid/os/WorkSource;

.field private final blacklist mClientWakelockTracker:Lcom/android/internal/telephony/ClientWakelockTracker;

.field private final blacklist mCompatOverrides:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/internal/telephony/HalVersion;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mDataIndication:Lcom/android/internal/telephony/DataIndication;

.field private blacklist mDataResponse:Lcom/android/internal/telephony/DataResponse;

.field private final blacklist mDeathRecipients:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/internal/telephony/RIL$BinderServiceDeathRecipient;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mDisabledRadioServices:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private final blacklist mFeatureFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

.field private final blacklist mHalVersion:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/internal/telephony/HalVersion;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mImsIndication:Lcom/android/internal/telephony/ImsIndication;

.field private blacklist mImsResponse:Lcom/android/internal/telephony/ImsResponse;

.field private blacklist mIsCellularSupported:Z

.field blacklist mIsRadioProxyInitialized:Z

.field blacklist mIsRadioVersion20Cached:Ljava/lang/Boolean;

.field blacklist mLastNITZTimeInfo:[Ljava/lang/Object;

.field blacklist mLastRadioPowerResult:I

.field private blacklist mMessagingIndication:Lcom/android/internal/telephony/MessagingIndication;

.field private blacklist mMessagingResponse:Lcom/android/internal/telephony/MessagingResponse;

.field private blacklist mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

.field private blacklist mMockModem:Lcom/android/internal/telephony/MockModem;

.field private blacklist mModemIndication:Lcom/android/internal/telephony/ModemIndication;

.field private blacklist mModemResponse:Lcom/android/internal/telephony/ModemResponse;

.field private blacklist mNetworkIndication:Lcom/android/internal/telephony/NetworkIndication;

.field private blacklist mNetworkResponse:Lcom/android/internal/telephony/NetworkResponse;

.field final blacklist mPhoneId:Ljava/lang/Integer;

.field private blacklist mRILDefaultWorkSource:Landroid/os/WorkSource;

.field private blacklist mRadioBugDetector:Lcom/android/internal/telephony/RadioBugDetector;

.field private blacklist mRadioIndication:Lcom/android/internal/telephony/RadioIndication;

.field private volatile blacklist mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

.field private final blacklist mRadioProxyDeathRecipient:Lcom/android/internal/telephony/RIL$RadioProxyDeathRecipient;

.field private blacklist mRadioResponse:Lcom/android/internal/telephony/RadioResponse;

.field greylist-max-r mRequestList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/internal/telephony/RILRequest;",
            ">;"
        }
    .end annotation
.end field

.field final blacklist mRilHandler:Lcom/android/internal/telephony/RIL$RilHandler;

.field private final blacklist mServiceCookies:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/concurrent/atomic/AtomicLong;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mServiceProxies:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/internal/telephony/RadioServiceProxy;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mSimIndication:Lcom/android/internal/telephony/SimIndication;

.field private blacklist mSimResponse:Lcom/android/internal/telephony/SimResponse;

.field greylist-max-r mTestingEmergencyCall:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private blacklist mVoiceIndication:Lcom/android/internal/telephony/VoiceIndication;

.field private blacklist mVoiceResponse:Lcom/android/internal/telephony/VoiceResponse;

.field public final greylist mWakeLock:Landroid/os/PowerManager$WakeLock;

.field blacklist mWakeLockCount:I

.field final blacklist mWakeLockTimeout:I

.field volatile blacklist mWlSequenceNum:I


# direct methods
.method public static synthetic blacklist $r8$lambda$0RH-LhxhVUhytZ-a8ECNhNOCprA(Lcom/android/internal/telephony/RadioDataProxy;Lcom/android/internal/telephony/RILRequest;I)V
    .registers 3

    .line 4577
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/RadioDataProxy;->stopKeepalive(II)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$1i_yRCaYgNUpGT-1iMbcSJDephc(Lcom/android/internal/telephony/RadioDataProxy;Lcom/android/internal/telephony/RILRequest;)V
    .registers 2

    .line 2759
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RadioDataProxy;->getDataCallList(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$1zns2NZIHXT2oXL8w3Rde0wMd18(Lcom/android/internal/telephony/RadioNetworkProxy;Lcom/android/internal/telephony/RILRequest;I)V
    .registers 3

    .line 2839
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/RadioNetworkProxy;->setBandMode(II)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$2HnnYeYb9J2Fyu378cHJCXO7XDU(Lcom/android/internal/telephony/RIL;Lcom/android/internal/telephony/RadioNetworkProxy;Lcom/android/internal/telephony/RILRequest;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RIL;->lambda$setPreferredNetworkType$71(Lcom/android/internal/telephony/RadioNetworkProxy;Lcom/android/internal/telephony/RILRequest;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$2LsnXy3lDEvOwdaaX5oevspVCss(Lcom/android/internal/telephony/RadioSimProxy;Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 1505
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-static {p2}, Lcom/android/internal/telephony/RILUtils;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1506
    invoke-static {p3}, Lcom/android/internal/telephony/RILUtils;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 1507
    invoke-static {p4}, Lcom/android/internal/telephony/RILUtils;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 1505
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/RadioSimProxy;->supplyIccPuk2ForApp(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$2Pxw0KOqthmnwW9tRsb2QDQObCA(Lcom/android/internal/telephony/RadioSimProxy;Lcom/android/internal/telephony/RILRequest;)V
    .registers 2

    .line 4823
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RadioSimProxy;->getSimPhonebookCapacity(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$2SsXABi-8ZT-bCnIMeoEzNMgdzI(Lcom/android/internal/telephony/RadioDataProxy;Lcom/android/internal/telephony/RILRequest;ILandroid/telephony/data/DataProfile;ZILandroid/net/LinkProperties;ILandroid/telephony/data/NetworkSliceInfo;Landroid/telephony/data/TrafficDescriptor;Z)V
    .registers 11

    .line 2135
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual/range {p0 .. p10}, Lcom/android/internal/telephony/RadioDataProxy;->setupDataCall(IILandroid/telephony/data/DataProfile;ZILandroid/net/LinkProperties;ILandroid/telephony/data/NetworkSliceInfo;Landroid/telephony/data/TrafficDescriptor;Z)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$3kRogRiV6txP33U0K9GdMNFmglc(Lcom/android/internal/telephony/RadioVoiceProxy;Lcom/android/internal/telephony/RILRequest;I)V
    .registers 3

    .line 2250
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/RadioVoiceProxy;->setClir(II)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$3v1jbJD-JgzYuSuxLo3frKD0QZc(Lcom/android/internal/telephony/RIL;Lcom/android/internal/telephony/RadioMessagingProxy;Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/String;IILandroid/os/Message;)V
    .registers 8

    .line 0
    invoke-direct/range {p0 .. p7}, Lcom/android/internal/telephony/RIL;->lambda$sendImsGsmSms$115(Lcom/android/internal/telephony/RadioMessagingProxy;Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/String;IILandroid/os/Message;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$4Ry-DiVI9tkmCXd1T-mCO0Z58pU(Lcom/android/internal/telephony/RadioNetworkProxy;Lcom/android/internal/telephony/RILRequest;)V
    .registers 2

    .line 2562
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RadioNetworkProxy;->getAvailableNetworks(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$5-WllZqagVEInqrGZuMaKkacDf0(Lcom/android/internal/telephony/RadioSimProxy;Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;)V
    .registers 3

    .line 2921
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    .line 2922
    invoke-static {p2}, Lcom/android/internal/telephony/RILUtils;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 2921
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/RadioSimProxy;->sendEnvelopeWithStatus(ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$5EXMdxQMf3VReGz0wCDsey9lptg(Lcom/android/internal/telephony/RadioNetworkProxy;Lcom/android/internal/telephony/RILRequest;)V
    .registers 2

    .line 5445
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RadioNetworkProxy;->isSatelliteEnabledForCarrier(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$5OyMrkr_oxnp0qYEsG_8KBcsVK8(Lcom/android/internal/telephony/RadioVoiceProxy;Lcom/android/internal/telephony/RILRequest;)V
    .registers 2

    .line 2741
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RadioVoiceProxy;->getClip(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$5TN_m-E43rJZw8Um2uDpnmwzYEg(Lcom/android/internal/telephony/RadioNetworkProxy;Lcom/android/internal/telephony/RILRequest;Ljava/util/List;Ljava/util/List;)V
    .registers 4

    .line 5386
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/RadioNetworkProxy;->setSatellitePlmn(ILjava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$5XA8JoEZ2u3VzsTJ-lNekxmlf1M(Lcom/android/internal/telephony/RadioVoiceProxy;Lcom/android/internal/telephony/RILRequest;C)V
    .registers 4

    .line 2048
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p2, ""

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/RadioVoiceProxy;->sendDtmf(ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$5dud6wWRX4AAbC8Ah6s3CTIglsI(Lcom/android/internal/telephony/RadioDataProxy;Lcom/android/internal/telephony/RILRequest;I)V
    .registers 3

    .line 4743
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/RadioDataProxy;->startHandover(II)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$7qrDCricy4Qqq_NEEROzXXBJGjs(Lcom/android/internal/telephony/RadioVoiceProxy;Lcom/android/internal/telephony/RILRequest;I)V
    .registers 3

    .line 1803
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/RadioVoiceProxy;->hangup(II)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$817UmLX7JIqfRMjw9y30WhV4MMs(Lcom/android/internal/telephony/RadioSimProxy;Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 1558
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    .line 1559
    invoke-static {p2}, Lcom/android/internal/telephony/RILUtils;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1560
    invoke-static {p3}, Lcom/android/internal/telephony/RILUtils;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 1561
    invoke-static {p4}, Lcom/android/internal/telephony/RILUtils;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 1558
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/RadioSimProxy;->changeIccPin2ForApp(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$87-OflRPRGta8va7m8PoHvhfMWs(Lcom/android/internal/telephony/RadioNetworkProxy;Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 2477
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    .line 2478
    invoke-static {p2}, Lcom/android/internal/telephony/RILUtils;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 2479
    invoke-static {p3}, Lcom/android/internal/telephony/RILUtils;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 2480
    invoke-static {p4}, Lcom/android/internal/telephony/RILUtils;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 2477
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/RadioNetworkProxy;->setBarringPassword(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$8OrNGglapaUEvaDydjDxPt7nlfc(Lcom/android/internal/telephony/RadioNetworkProxy;Lcom/android/internal/telephony/RILRequest;)V
    .registers 2

    .line 5354
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RadioNetworkProxy;->isSecurityAlgorithmsUpdatedEnabled(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$8PTn9GkJbXrhHX_9Onp14Qa8CTc(Lcom/android/internal/telephony/RadioVoiceProxy;Lcom/android/internal/telephony/RILRequest;)V
    .registers 2

    .line 1865
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RadioVoiceProxy;->switchWaitingOrHoldingAndActive(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$8a5R0b5ALIXeEWRY4vjOEiL7Qq8(Lcom/android/internal/telephony/RIL;Lcom/android/internal/telephony/RadioNetworkProxy;Lcom/android/internal/telephony/RILRequest;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RIL;->lambda$setAllowedNetworkTypesBitmap$73(Lcom/android/internal/telephony/RadioNetworkProxy;Lcom/android/internal/telephony/RILRequest;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$8bUJqMKLWIciQ-OnWsO03d-ECK8(Lcom/android/internal/telephony/RadioDataProxy;Lcom/android/internal/telephony/RILRequest;)V
    .registers 2

    .line 4785
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RadioDataProxy;->getSlicingConfig(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$8lLUWtYpbNpGFqAE8n_CAMRr6qI(Lcom/android/internal/telephony/RadioSimProxy;Lcom/android/internal/telephony/RILRequest;Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;Ljava/lang/String;)V
    .registers 4

    .line 1610
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    .line 1611
    invoke-static {p3}, Lcom/android/internal/telephony/RILUtils;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 1610
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/RadioSimProxy;->supplySimDepersonalization(ILcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$95wNT_o3fHtkZWMGosHOC8T3oPc(Lcom/android/internal/telephony/RadioDataProxy;Lcom/android/internal/telephony/RILRequest;)V
    .registers 2

    .line 4702
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RadioDataProxy;->allocatePduSessionId(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$9IMM4Ky4FHYEW5RTP_JSoCFZu0g(Lcom/android/internal/telephony/RadioVoiceProxy;Lcom/android/internal/telephony/RILRequest;)V
    .registers 2

    .line 2213
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RadioVoiceProxy;->cancelPendingUssd(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$9LFr3SRVJJENVIELrY71cPS8W9c(Lcom/android/internal/telephony/RadioVoiceProxy;Lcom/android/internal/telephony/RILRequest;)V
    .registers 2

    .line 2723
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RadioVoiceProxy;->getMute(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$9e0YIouyFgoBjFal5HT-ZbLYeaQ(Lcom/android/internal/telephony/RadioModemProxy;Lcom/android/internal/telephony/RILRequest;I)V
    .registers 3

    .line 4151
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/RadioModemProxy;->nvResetConfig(II)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$AHscGU6PGkRqKBkbmTVROzyukaw(Lcom/android/internal/telephony/RadioVoiceProxy;Lcom/android/internal/telephony/RILRequest;)V
    .registers 2

    .line 3264
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RadioVoiceProxy;->getTtyMode(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$AI9EXhXsCmv27UdfvPKL6_RbuEQ(Lcom/android/internal/telephony/RadioModemProxy;Lcom/android/internal/telephony/RILRequest;ZZZ)V
    .registers 5

    .line 2028
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/RadioModemProxy;->setRadioPower(IZZZ)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$ASvPvmyY4dTpJ3KZWW2cJYZJ7qY(Lcom/android/internal/telephony/RadioVoiceProxy;Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;)V
    .registers 5

    .line 1741
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/RadioVoiceProxy;->dial(ILjava/lang/String;ILcom/android/internal/telephony/UUSInfo;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$BmP1ombq1TbWf00zlWn-ZHaYVL8(Lcom/android/internal/telephony/RadioSimProxy;Lcom/android/internal/telephony/RILRequest;IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11

    .line 2170
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    .line 2171
    invoke-static {p4}, Lcom/android/internal/telephony/RILUtils;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 2172
    invoke-static {p8}, Lcom/android/internal/telephony/RILUtils;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p8

    .line 2173
    invoke-static {p9}, Lcom/android/internal/telephony/RILUtils;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p9

    .line 2174
    invoke-static {p10}, Lcom/android/internal/telephony/RILUtils;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p10

    .line 2170
    invoke-virtual/range {p0 .. p10}, Lcom/android/internal/telephony/RadioSimProxy;->iccIoForApp(IIILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$CTwcpF43vqYAlX3wa7VPMrmSYXw(Lcom/android/internal/telephony/RadioSimProxy;Lcom/android/internal/telephony/RILRequest;Z)V
    .registers 3

    .line 4603
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/RadioSimProxy;->enableUiccApplications(IZ)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$D1QJagXtDxeNdHcEKTQK5xmX_YQ(Lcom/android/internal/telephony/RadioVoiceProxy;Lcom/android/internal/telephony/RILRequest;I)V
    .registers 3

    .line 2313
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/RadioVoiceProxy;->getCallWaiting(II)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$D7y9zFOHwMOVXpzm7WilPIw5Srw(Lcom/android/internal/telephony/RadioNetworkProxy;Lcom/android/internal/telephony/RILRequest;Z)V
    .registers 3

    .line 5418
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/RadioNetworkProxy;->setSatelliteEnabledForCarrier(IZ)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$E2-yFtK2MsrhKX3QkqHGc0B8u9Y(Lcom/android/internal/telephony/RadioVoiceProxy;Lcom/android/internal/telephony/RILRequest;)V
    .registers 2

    .line 2648
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RadioVoiceProxy;->stopDtmf(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$E8Tg8t8Zi4sv-fdxTt536yJ31f0(Lcom/android/internal/telephony/RadioVoiceProxy;Lcom/android/internal/telephony/RILRequest;)V
    .registers 2

    .line 1901
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RadioVoiceProxy;->rejectCall(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$E8WU1d18QM-7IkfzDEx1M_1el9U(Lcom/android/internal/telephony/RadioVoiceProxy;Lcom/android/internal/telephony/RILRequest;C)V
    .registers 4

    .line 2630
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p2, ""

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/RadioVoiceProxy;->startDtmf(ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$EPx7h1XdG8teiexwR4699Fq7rls(Lcom/android/internal/telephony/RadioImsProxy;Lcom/android/internal/telephony/RILRequest;III)V
    .registers 5

    .line 5022
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/RadioImsProxy;->sendAnbrQuery(IIII)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$EiKJ0ogCHt-ogi1m99Mjx49le3s(Lcom/android/internal/telephony/RadioVoiceProxy;Lcom/android/internal/telephony/RILRequest;)V
    .registers 2

    .line 1629
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RadioVoiceProxy;->getCurrentCalls(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$EoGAGbykphkQ67LXlUKqIGDsgrs(Lcom/android/internal/telephony/RadioNetworkProxy;Lcom/android/internal/telephony/RILRequest;Z)V
    .registers 3

    .line 5097
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/RadioNetworkProxy;->cancelEmergencyNetworkScan(IZ)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$ErNupRcn2tqrZf0RopgKpvA-RRI(Lcom/android/internal/telephony/RadioSimProxy;Lcom/android/internal/telephony/RILRequest;)V
    .registers 2

    .line 4410
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RadioSimProxy;->getAllowedCarriers(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$EtPZXE2UzkJgQ7uW9f9Z2qjR6lk(Lcom/android/internal/telephony/RadioNetworkProxy;Lcom/android/internal/telephony/RILRequest;I)V
    .registers 3

    .line 3875
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/RadioNetworkProxy;->setCellInfoListRate(II)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$FURavH37Ci4qcGbfmKdzrXqfRD0(Lcom/android/internal/telephony/RadioNetworkProxy;Lcom/android/internal/telephony/RILRequest;I)V
    .registers 3

    .line 4868
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/RadioNetworkProxy;->setUsageSetting(II)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$G5zaB9-z-OPmYU7erNZArzr34Qo(Lcom/android/internal/telephony/RadioSimProxy;Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 1454
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    .line 1455
    invoke-static {p3}, Lcom/android/internal/telephony/RILUtils;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 1456
    invoke-static {p4}, Lcom/android/internal/telephony/RILUtils;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 1454
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/RadioSimProxy;->supplyIccPukForApp(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$GRpz8uObYDTAxLiHmC7EAfE8CVg(Lcom/android/internal/telephony/RadioImsProxy;Lcom/android/internal/telephony/RILRequest;[Lcom/android/internal/telephony/SrvccConnection;)V
    .registers 3

    .line 4911
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-static {p2}, Lcom/android/internal/telephony/RILUtils;->convertToHalSrvccCall([Lcom/android/internal/telephony/SrvccConnection;)[Landroid/hardware/radio/ims/SrvccCall;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/RadioImsProxy;->setSrvccCallInfo(I[Landroid/hardware/radio/ims/SrvccCall;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$Gux6X4Arq3GMx4Gkya5zzNTbjJw(Lcom/android/internal/telephony/RadioSimProxy;Lcom/android/internal/telephony/RILRequest;)V
    .registers 2

    .line 4628
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RadioSimProxy;->areUiccApplicationsEnabled(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$HkR25dQ7ZrcKFKfFFW8JYsNGqLM(Lcom/android/internal/telephony/RadioSimProxy;Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;)V
    .registers 7

    .line 2452
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    .line 2453
    invoke-static {p2}, Lcom/android/internal/telephony/RILUtils;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 2454
    invoke-static {p4}, Lcom/android/internal/telephony/RILUtils;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 2455
    invoke-static {p6}, Lcom/android/internal/telephony/RILUtils;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p6

    .line 2452
    invoke-virtual/range {p0 .. p6}, Lcom/android/internal/telephony/RadioSimProxy;->setFacilityLockForApp(ILjava/lang/String;ZLjava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$HvoF4pK-3HDQnbD_79vOI_NkBsg(Lcom/android/internal/telephony/RadioMessagingProxy;Lcom/android/internal/telephony/RILRequest;ZI)V
    .registers 4

    .line 2352
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/RadioMessagingProxy;->acknowledgeLastIncomingGsmSms(IZI)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$Iggpef-4OmxF_Ow-T7no8rd5GJY(Lcom/android/internal/telephony/RadioSimProxy;Lcom/android/internal/telephony/RILRequest;ILjava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 4234
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    .line 4235
    invoke-static {p3}, Lcom/android/internal/telephony/RILUtils;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 4236
    invoke-static {p4}, Lcom/android/internal/telephony/RILUtils;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 4234
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/RadioSimProxy;->requestIccSimAuthentication(IILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$K-RZrxVp3W8S_KeftNF0CeotnWo(Lcom/android/internal/telephony/RadioSimProxy;Lcom/android/internal/telephony/RILRequest;Lcom/android/internal/telephony/uicc/SimPhonebookRecord;)V
    .registers 3

    .line 4843
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/RadioSimProxy;->updateSimPhonebookRecords(ILcom/android/internal/telephony/uicc/SimPhonebookRecord;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$KdaGJbRrZvCyWngxKjnOgtTcKM8(Lcom/android/internal/telephony/RadioNetworkProxy;Lcom/android/internal/telephony/RILRequest;)V
    .registers 2

    .line 5119
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RadioNetworkProxy;->exitEmergencyMode(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$L20ywnbQar6PZFZH5i_aRh48FoE(Lcom/android/internal/telephony/RadioMessagingProxy;Lcom/android/internal/telephony/RILRequest;)V
    .registers 2

    .line 3461
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RadioMessagingProxy;->getGsmBroadcastConfig(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$M11-WjzSK6JQKJ3m7HHY912tVZw(Lcom/android/internal/telephony/RadioSimProxy;Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 1428
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-static {p2}, Lcom/android/internal/telephony/RILUtils;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1429
    invoke-static {p3}, Lcom/android/internal/telephony/RILUtils;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 1428
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/RadioSimProxy;->supplyIccPinForApp(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$MK489wJmVOcfjZlsgtvNSzX7Mjs(Lcom/android/internal/telephony/RadioMessagingProxy;Lcom/android/internal/telephony/RILRequest;ZLjava/lang/String;)V
    .registers 4

    .line 3816
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    .line 3817
    invoke-static {p3}, Lcom/android/internal/telephony/RILUtils;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 3816
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/RadioMessagingProxy;->acknowledgeIncomingGsmSmsWithPdu(IZLjava/lang/String;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$MPZKyvY-LbqM8UGS4dRxLP7_Kzg(Lcom/android/internal/telephony/RadioNetworkProxy;Lcom/android/internal/telephony/RILRequest;)V
    .registers 2

    .line 1938
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RadioNetworkProxy;->getSignalStrength(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$NDPjBshHMZ8WwmQQsZXuf90cHcA(Lcom/android/internal/telephony/RadioImsProxy;Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/ims/ImsRegistration;)V
    .registers 3

    .line 4943
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/RadioImsProxy;->updateImsRegistrationInfo(ILandroid/hardware/radio/ims/ImsRegistration;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$NWAB2fi0zeDXoUCIMuyaoteoxJs(Lcom/android/internal/telephony/RadioVoiceProxy;Lcom/android/internal/telephony/RILRequest;)V
    .registers 2

    .line 3324
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RadioVoiceProxy;->getPreferredVoicePrivacy(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$NdZnRyyXhhgGVUL9XxSa8apkwR4(Lcom/android/internal/telephony/RadioNetworkProxy;Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;)V
    .registers 3

    .line 1582
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    .line 1583
    invoke-static {p2}, Lcom/android/internal/telephony/RILUtils;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1582
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/RadioNetworkProxy;->supplyNetworkDepersonalization(ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$OQUv52ymN2GzZrr3Bxxi6boHC-c(Lcom/android/internal/telephony/RadioSimProxy;Lcom/android/internal/telephony/RILRequest;Landroid/telephony/ImsiEncryptionInfo;)V
    .registers 3

    .line 4539
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/RadioSimProxy;->setCarrierInfoForImsiEncryption(ILandroid/telephony/ImsiEncryptionInfo;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$OwO2XDwJkNBZihkHjXueXH1Xc3c(Lcom/android/internal/telephony/RadioSimProxy;Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 1531
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    .line 1532
    invoke-static {p2}, Lcom/android/internal/telephony/RILUtils;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1533
    invoke-static {p3}, Lcom/android/internal/telephony/RILUtils;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 1534
    invoke-static {p4}, Lcom/android/internal/telephony/RILUtils;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 1531
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/RadioSimProxy;->changeIccPinForApp(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$P15-zvlnOv3il_EoZGDp5ZvRU4A(Lcom/android/internal/telephony/RadioDataProxy;Lcom/android/internal/telephony/RILRequest;Z)V
    .registers 3

    .line 4192
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/RadioDataProxy;->setDataAllowed(IZ)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$PZRYBD9_QZa7BqQOaB8-VdzeonM(Lcom/android/internal/telephony/RIL;Lcom/android/internal/telephony/RadioDataProxy;Lcom/android/internal/telephony/RILRequest;II)V
    .registers 5

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/RIL;->lambda$deactivateDataCall$44(Lcom/android/internal/telephony/RadioDataProxy;Lcom/android/internal/telephony/RILRequest;II)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$PbZOCVNhY-lxH4QlNtA4f_uAs_0(Lcom/android/internal/telephony/RadioSimProxy;Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;)V
    .registers 3

    .line 2879
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-static {p2}, Lcom/android/internal/telephony/RILUtils;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/RadioSimProxy;->sendEnvelope(ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$Pnw4IB5XsA_mHcCwcZma5rCU14k(Lcom/android/internal/telephony/RadioModemProxy;Lcom/android/internal/telephony/RILRequest;)V
    .registers 2

    .line 2686
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RadioModemProxy;->getBasebandVersion(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$Q1zgzL9Gs25x4ene6zvhceqZ7aE(Lcom/android/internal/telephony/RadioModemProxy;Lcom/android/internal/telephony/RILRequest;Z)V
    .registers 3

    .line 1655
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/RadioModemProxy;->enableModem(IZ)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$QN6buGvu51QPtsabpbC2tWh2FmI(Lcom/android/internal/telephony/RadioMessagingProxy;Lcom/android/internal/telephony/RILRequest;Z)V
    .registers 3

    .line 3754
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/RadioMessagingProxy;->reportSmsMemoryStatus(IZ)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$Qh_jNuU6gd6f4PfG9AhQdg9NPxo(Lcom/android/internal/telephony/RadioImsProxy;Lcom/android/internal/telephony/RILRequest;Ljava/util/List;)V
    .registers 3

    .line 5193
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-static {p2}, Lcom/android/internal/telephony/RILUtils;->convertImsCallInfo(Ljava/util/List;)[Landroid/hardware/radio/ims/ImsCall;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/RadioImsProxy;->updateImsCallStatus(I[Landroid/hardware/radio/ims/ImsCall;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$QnGJ4HDAmst5ccSPGWohbn9jpp4(Lcom/android/internal/telephony/RadioVoiceProxy;Lcom/android/internal/telephony/RILRequest;)V
    .registers 2

    .line 1920
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RadioVoiceProxy;->getLastCallFailCause(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$R1-ZezaDFsH01YmZ6WHIHo_xVDE(Lcom/android/internal/telephony/RIL;Lcom/android/internal/telephony/RadioMessagingProxy;Lcom/android/internal/telephony/RILRequest;[BIILandroid/os/Message;)V
    .registers 7

    .line 0
    invoke-direct/range {p0 .. p6}, Lcom/android/internal/telephony/RIL;->lambda$sendImsCdmaSms$116(Lcom/android/internal/telephony/RadioMessagingProxy;Lcom/android/internal/telephony/RILRequest;[BIILandroid/os/Message;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$RJJuZpmW4SJhbU0lJcoHaPB-xjg(Lcom/android/internal/telephony/RadioImsProxy;Lcom/android/internal/telephony/RILRequest;I)V
    .registers 3

    .line 5004
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/RadioImsProxy;->triggerEpsFallback(II)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$RKPzRCSHNriyJUtFeV09IyDTy0Y(Lcom/android/internal/telephony/RIL;Lcom/android/internal/telephony/RadioModemProxy;Lcom/android/internal/telephony/RILRequest;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RIL;->lambda$getModemActivityInfo$134(Lcom/android/internal/telephony/RadioModemProxy;Lcom/android/internal/telephony/RILRequest;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$ROUPzmSYbGFvyY_pk_va7q9NndQ(Lcom/android/internal/telephony/RadioNetworkProxy;Lcom/android/internal/telephony/RILRequest;)V
    .registers 2

    .line 3032
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RadioNetworkProxy;->getAllowedNetworkTypesBitmap(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$RZaS2YufS64KoznAdfscY4pzRPU(Lcom/android/internal/telephony/RadioModemProxy;Lcom/android/internal/telephony/RILRequest;)V
    .registers 2

    .line 4295
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RadioModemProxy;->getRadioCapability(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$Rw0PSx5iCifdbTeP-7xYpMFdcAE(Lcom/android/internal/telephony/RIL;Lcom/android/internal/telephony/RadioMessagingProxy;Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 6

    .line 0
    invoke-direct/range {p0 .. p5}, Lcom/android/internal/telephony/RIL;->lambda$sendSMS$30(Lcom/android/internal/telephony/RadioMessagingProxy;Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$UAHHkW_X8pimgs1feA13C8bEiro(Lcom/android/internal/telephony/RadioMessagingProxy;Lcom/android/internal/telephony/RILRequest;Z)V
    .registers 3

    .line 3506
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/RadioMessagingProxy;->setGsmBroadcastActivation(IZ)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$UIEMfRI9wqup6bInLBxILYdvvzY(Lcom/android/internal/telephony/RadioSimProxy;Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;I)V
    .registers 4

    .line 4008
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-static {p2}, Lcom/android/internal/telephony/RILUtils;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/RadioSimProxy;->iccOpenLogicalChannel(ILjava/lang/String;I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$WJTNWSXA7iTvRVT5jaYytc_XR3g(Lcom/android/internal/telephony/RadioSimProxy;Lcom/android/internal/telephony/RILRequest;IIIIIILjava/lang/String;Z)V
    .registers 10

    .line 4061
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual/range {p0 .. p9}, Lcom/android/internal/telephony/RadioSimProxy;->iccTransmitApduLogicalChannel(IIIIIIILjava/lang/String;Z)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$WKUmeOri64iVC4eDsK8ZDoa5_LI(Lcom/android/internal/telephony/RadioNetworkProxy;Lcom/android/internal/telephony/RILRequest;Z)V
    .registers 3

    .line 5327
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/RadioNetworkProxy;->setSecurityAlgorithmsUpdatedEnabled(IZ)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$WLwBERvKe_L0QKdYh3JJWmoq9ng(Lcom/android/internal/telephony/RadioNetworkProxy;Lcom/android/internal/telephony/RILRequest;)V
    .registers 2

    .line 2611
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RadioNetworkProxy;->stopNetworkScan(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$Wh1xVeajF9CT1XJ_TNJjD7Y5AE0(Lcom/android/internal/telephony/RadioSimProxy;Lcom/android/internal/telephony/RILRequest;)V
    .registers 2

    .line 4804
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RadioSimProxy;->getSimPhonebookRecords(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$WibymfhlpHEX_yRmmpqhdzMZsRM(Lcom/android/internal/telephony/RadioMessagingProxy;Lcom/android/internal/telephony/RILRequest;ILjava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 2799
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    .line 2800
    invoke-static {p3}, Lcom/android/internal/telephony/RILUtils;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 2801
    invoke-static {p4}, Lcom/android/internal/telephony/RILUtils;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 2799
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/RadioMessagingProxy;->writeSmsToSim(IILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$WyOvTiqg5QH1PEhUsFUN0mAA20g(Lcom/android/internal/telephony/RadioNetworkProxy;Lcom/android/internal/telephony/RILRequest;Lcom/android/internal/telephony/HalVersion;)V
    .registers 3

    .line 1963
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/RadioNetworkProxy;->getVoiceRegistrationState(ILcom/android/internal/telephony/HalVersion;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$X6nJI-99rdD3aP7T5LWH2q2Lw2k(Lcom/android/internal/telephony/RadioNetworkProxy;Lcom/android/internal/telephony/RILRequest;)V
    .registers 2

    .line 2006
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RadioNetworkProxy;->getOperator(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$X81PUjF7DAXg_2Q8erCOBolbS80(Lcom/android/internal/telephony/RadioVoiceProxy;Lcom/android/internal/telephony/RILRequest;I)V
    .registers 3

    .line 3283
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/RadioVoiceProxy;->setTtyMode(II)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$XCcfst-vm96khmg-t-Q7HTkB_c4(Lcom/android/internal/telephony/RadioImsProxy;Lcom/android/internal/telephony/RILRequest;I)V
    .registers 3

    .line 4984
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/RadioImsProxy;->stopImsTraffic(II)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$XaEH3gBTBd4iqQpacDcjXWiGnwI(Lcom/android/internal/telephony/RadioModemProxy;Lcom/android/internal/telephony/RILRequest;)V
    .registers 2

    .line 1716
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RadioModemProxy;->getModemStackStatus(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$YN1gfSgJKoOdDJDrc5M6umqGSlc(Lcom/android/internal/telephony/RadioVoiceProxy;Lcom/android/internal/telephony/RILRequest;)V
    .registers 2

    .line 1883
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RadioVoiceProxy;->conference(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$Z3m-tovS0q75Oym5h7UZsQSTGu8(Lcom/android/internal/telephony/RadioSimProxy;Lcom/android/internal/telephony/RILRequest;I)V
    .registers 3

    .line 4518
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/RadioSimProxy;->setSimCardPower(II)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$Z4dBU9V0-rsDO1vvNLR4w638kbg(Lcom/android/internal/telephony/RadioNetworkProxy;Lcom/android/internal/telephony/RILRequest;Lcom/android/internal/telephony/HalVersion;)V
    .registers 3

    .line 1988
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/RadioNetworkProxy;->getDataRegistrationState(ILcom/android/internal/telephony/HalVersion;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$ZGHIQZyHONntlyIJFd-9hWZV6rs(Lcom/android/internal/telephony/RadioModemProxy;Lcom/android/internal/telephony/RILRequest;)V
    .registers 2

    .line 3658
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RadioModemProxy;->getDeviceIdentity(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$ZrZuMsHX05le24Iv9vpcbU4kYdQ(Lcom/android/internal/telephony/RIL;Lcom/android/internal/telephony/RadioMessagingProxy;Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 6

    .line 0
    invoke-direct/range {p0 .. p5}, Lcom/android/internal/telephony/RIL;->lambda$sendSMSExpectMore$31(Lcom/android/internal/telephony/RadioMessagingProxy;Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$ZyfSf1zYKRxRR379D0GGAwd3kPA(Lcom/android/internal/telephony/RadioVoiceProxy;Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Landroid/telephony/emergency/EmergencyNumber;ZILcom/android/internal/telephony/UUSInfo;)V
    .registers 7

    .line 1760
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-static {p2}, Lcom/android/internal/telephony/RILUtils;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual/range {p0 .. p6}, Lcom/android/internal/telephony/RadioVoiceProxy;->emergencyDial(ILjava/lang/String;Landroid/telephony/emergency/EmergencyNumber;ZILcom/android/internal/telephony/UUSInfo;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$_E0ueja0SYQnOPL-6XKpRB2abCE(Lcom/android/internal/telephony/RadioVoiceProxy;Lcom/android/internal/telephony/RILRequest;ZI)V
    .registers 4

    .line 2332
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/RadioVoiceProxy;->setCallWaiting(IZI)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$b0Y4CM3bVMtCjo0n_1p9532PzEY(Lcom/android/internal/telephony/RadioDataProxy;Lcom/android/internal/telephony/RILRequest;I)V
    .registers 3

    .line 4723
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/RadioDataProxy;->releasePduSessionId(II)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$b1M5-uZldo2soLUFF-HU1kGn7EQ(Lcom/android/internal/telephony/RadioNetworkProxy;Lcom/android/internal/telephony/RILRequest;)V
    .registers 2

    .line 3836
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RadioNetworkProxy;->getVoiceRadioTechnology(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$bL2LsLHMpSYT9WOYHuE6LKquUSs(Lcom/android/internal/telephony/RadioNetworkProxy;Lcom/android/internal/telephony/RILRequest;Z)V
    .registers 3

    .line 5216
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/RadioNetworkProxy;->setN1ModeEnabled(IZ)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$bM4o7ZMFfbvA19gQXrd3aHfUpng(Lcom/android/internal/telephony/RadioNetworkProxy;Lcom/android/internal/telephony/RILRequest;)V
    .registers 2

    .line 3075
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RadioNetworkProxy;->isNrDualConnectivityEnabled(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$bgiX7Iyar9jTSRM1GaXYp2SJMdI(Lcom/android/internal/telephony/RadioNetworkProxy;Lcom/android/internal/telephony/RILRequest;)V
    .registers 2

    .line 2984
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RadioNetworkProxy;->getAllowedNetworkTypesBitmap(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$cBsZKhMr795F9rQHJEt7JYalh5M(Lcom/android/internal/telephony/RadioMessagingProxy;Lcom/android/internal/telephony/RILRequest;I)V
    .registers 3

    .line 2820
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/RadioMessagingProxy;->deleteSmsOnSim(II)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$cFKYd6PGyrOEL8dQNnsChzbjuKM(Lcom/android/internal/telephony/RadioImsProxy;Lcom/android/internal/telephony/RILRequest;IIII)V
    .registers 6

    .line 4964
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-static {p3}, Lcom/android/internal/telephony/RILUtils;->convertImsTrafficType(I)I

    move-result p3

    .line 4965
    invoke-static {p5}, Lcom/android/internal/telephony/RILUtils;->convertImsTrafficDirection(I)I

    move-result p5

    .line 4964
    invoke-virtual/range {p0 .. p5}, Lcom/android/internal/telephony/RadioImsProxy;->startImsTraffic(IIIII)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$cas5Osn4aKFs5HDKjiNvx-IQ_HY(Lcom/android/internal/telephony/RadioModemProxy;Lcom/android/internal/telephony/RILRequest;)V
    .registers 2

    .line 3676
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RadioModemProxy;->getImei(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$cbMnz5xCxfgQHHLj041oOyxu8MQ(Lcom/android/internal/telephony/RIL;Lcom/android/internal/telephony/RadioSimProxy;Lcom/android/internal/telephony/RILRequest;Landroid/telephony/CarrierRestrictionRules;)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/RIL;->lambda$setAllowedCarriers$135(Lcom/android/internal/telephony/RadioSimProxy;Lcom/android/internal/telephony/RILRequest;Landroid/telephony/CarrierRestrictionRules;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$dH1sNswe1ZXNhYvhqyuipAcgOnQ(Lcom/android/internal/telephony/RadioSimProxy;Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;)V
    .registers 3

    .line 1784
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-static {p2}, Lcom/android/internal/telephony/RILUtils;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/RadioSimProxy;->getImsiForApp(ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$dSoRg0Xe_CxSLS4Oz4-6CUAbJWA(Lcom/android/internal/telephony/RadioNetworkProxy;Lcom/android/internal/telephony/RILRequest;I)V
    .registers 3

    .line 5045
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/RadioNetworkProxy;->setEmergencyMode(II)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$dwK04GOXJ6EPYvPKuct3zM2g_rM(Lcom/android/internal/telephony/RadioNetworkProxy;Lcom/android/internal/telephony/RILRequest;)V
    .registers 2

    .line 4891
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RadioNetworkProxy;->getUsageSetting(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$eTKAEjsYi31sU1kP1fXpcU2PDB0(Lcom/android/internal/telephony/RadioDataProxy;Lcom/android/internal/telephony/RILRequest;[Landroid/telephony/data/DataProfile;)V
    .registers 3

    .line 4258
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/RadioDataProxy;->setDataProfile(I[Landroid/telephony/data/DataProfile;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$e_etNWbn2VxJnQz4RAaS6HqGt_o(Lcom/android/internal/telephony/RadioNetworkProxy;Lcom/android/internal/telephony/RILRequest;)V
    .registers 2

    .line 3914
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RadioNetworkProxy;->getImsRegistrationState(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$fxAPXytDu-JsL7L5BNTIjmmBs6Q(Lcom/android/internal/telephony/RadioDataProxy;Lcom/android/internal/telephony/RILRequest;IJ)V
    .registers 5

    .line 4346
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    int-to-byte p2, p2

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/RadioDataProxy;->setDataThrottling(IBJ)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$g5d4zfDVwMEWCbQVyOrmvqPegAE(Lcom/android/internal/telephony/RadioModemProxy;Lcom/android/internal/telephony/RILRequest;)V
    .registers 2

    .line 4276
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RadioModemProxy;->requestShutdown(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$gSog1z1Xh_auV4udQOuBMNVwvsA(Lcom/android/internal/telephony/RadioVoiceProxy;Lcom/android/internal/telephony/RILRequest;Z)V
    .registers 3

    .line 2705
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/RadioVoiceProxy;->setMute(IZ)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$gh4_mb-bwd3xWxFI0HwukutIxFY(Lcom/android/internal/telephony/RadioVoiceProxy;Lcom/android/internal/telephony/RILRequest;IIILjava/lang/String;I)V
    .registers 7

    .line 2292
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual/range {p0 .. p6}, Lcom/android/internal/telephony/RadioVoiceProxy;->setCallForward(IIIILjava/lang/String;I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$gkdmti-EAGWqOpXf0s11mjp7vH0(Lcom/android/internal/telephony/RadioNetworkProxy;Lcom/android/internal/telephony/RILRequest;)V
    .registers 2

    .line 2521
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RadioNetworkProxy;->setNetworkSelectionModeAutomatic(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$gsjGuOTn5gLaJY5cr6fZriZsIXg(Lcom/android/internal/telephony/RadioSimProxy;Lcom/android/internal/telephony/RILRequest;IZ)V
    .registers 4

    .line 4026
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/RadioSimProxy;->iccCloseLogicalChannel(IIZ)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$gzQJNGwUy96wbhR4F-wkT-O3PPk(Lcom/android/internal/telephony/RadioSimProxy;Lcom/android/internal/telephony/RILRequest;IIII)V
    .registers 6

    .line 4173
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual/range {p0 .. p5}, Lcom/android/internal/telephony/RadioSimProxy;->setUiccSubscription(IIIII)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$h9M6YtzscRpX7FueBSyLPtDo_2c(Lcom/android/internal/telephony/RadioVoiceProxy;Lcom/android/internal/telephony/RILRequest;Z)V
    .registers 3

    .line 3179
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/RadioVoiceProxy;->setVoNrEnabled(IZ)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$hbGdV0RZR2ifGxdq0_GQbdXek-8(Lcom/android/internal/telephony/RadioMessagingProxy;Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;)V
    .registers 3

    .line 3733
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-static {p2}, Lcom/android/internal/telephony/RILUtils;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/RadioMessagingProxy;->setSmscAddress(ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$hwVqExXu0iuWsY3inxR-IgouuGs(Lcom/android/internal/telephony/RadioNetworkProxy;Lcom/android/internal/telephony/RILRequest;)V
    .registers 2

    .line 5299
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RadioNetworkProxy;->isCellularIdentifierTransparencyEnabled(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$iNn5JncT29SEMH_XvhKYUQQaCuU(Lcom/android/internal/telephony/RadioSimProxy;Lcom/android/internal/telephony/RILRequest;)V
    .registers 2

    .line 1404
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RadioSimProxy;->getIccCardStatus(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$ibMn4qghfJ5ttK-ZckDh1f2u2iE(Lcom/android/internal/telephony/RadioVoiceProxy;Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;)V
    .registers 3

    .line 2195
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-static {p2}, Lcom/android/internal/telephony/RILUtils;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/RadioVoiceProxy;->sendUssd(ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$ier8TD0iHUMR4vXgjS--3RsUwoQ(Lcom/android/internal/telephony/RadioSimProxy;Lcom/android/internal/telephony/RILRequest;)V
    .registers 2

    .line 3773
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RadioSimProxy;->reportStkServiceIsRunning(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$jFow9Vgr_2hA4yVcjiNRmjE8ofY(Lcom/android/internal/telephony/RadioVoiceProxy;Lcom/android/internal/telephony/RILRequest;)V
    .registers 2

    .line 3144
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RadioVoiceProxy;->isVoNrEnabled(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$jUetrKkWMQZ2nwVdHGz-pJo29cA(Lcom/android/internal/telephony/RadioNetworkProxy;Lcom/android/internal/telephony/RILRequest;Ljava/util/List;)V
    .registers 3

    .line 4472
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/RadioNetworkProxy;->setSignalStrengthReportingCriteria(ILjava/util/List;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$jczgfnAjeuV4L1WJT0qUGHhm0dE(Lcom/android/internal/telephony/RadioVoiceProxy;Lcom/android/internal/telephony/RILRequest;)V
    .registers 2

    .line 1824
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RadioVoiceProxy;->hangupWaitingOrBackground(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$jrpy8EiBBCNjngPeuNNU9ExopEE(Lcom/android/internal/telephony/RadioNetworkProxy;Lcom/android/internal/telephony/RILRequest;Ljava/util/List;)V
    .registers 3

    .line 1677
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/RadioNetworkProxy;->setSystemSelectionChannels(ILjava/util/List;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$jtXSVtFLSFT8ru0qInuJfuHrqYU(Lcom/android/internal/telephony/RadioVoiceProxy;Lcom/android/internal/telephony/RILRequest;)V
    .registers 2

    .line 1845
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RadioVoiceProxy;->hangupForegroundResumeBackground(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$k9Co0r-B3F7pJ6MZgvOsamzMocQ(Lcom/android/internal/telephony/RadioNetworkProxy;Lcom/android/internal/telephony/RILRequest;Z)V
    .registers 3

    .line 3052
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/RadioNetworkProxy;->setLocationUpdates(IZ)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$kTuFzRL_Lapy5vy-eUB6zvIR7kk(Lcom/android/internal/telephony/RadioVoiceProxy;Lcom/android/internal/telephony/RILRequest;)V
    .registers 2

    .line 2231
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RadioVoiceProxy;->getClir(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$lWAWzTEXPORzUQmn6dkw9Zpo0Fw(Lcom/android/internal/telephony/RadioDataProxy;Lcom/android/internal/telephony/RILRequest;I)V
    .registers 3

    .line 4763
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/RadioDataProxy;->cancelHandover(II)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$laeOVObSsxgGOLk426O2pnHG0tQ(Lcom/android/internal/telephony/RadioNetworkProxy;Lcom/android/internal/telephony/RILRequest;)V
    .registers 2

    .line 2500
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RadioNetworkProxy;->getNetworkSelectionMode(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$m9U-W9B3PxPTpMnQjggQd-OYPCw(Lcom/android/internal/telephony/RadioVoiceProxy;Lcom/android/internal/telephony/RILRequest;Z)V
    .registers 3

    .line 3304
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/RadioVoiceProxy;->setPreferredVoicePrivacy(IZ)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$mA0tOfAJ3dMFkK-LWUOYDup4THo(Lcom/android/internal/telephony/RadioNetworkProxy;Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;I)V
    .registers 4

    .line 2542
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    .line 2543
    invoke-static {p2}, Lcom/android/internal/telephony/RILUtils;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 2542
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/RadioNetworkProxy;->setNetworkSelectionModeManual(ILjava/lang/String;I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$mCTh7Ac5szg6veM7q3Rtb7kjrpA(Lcom/android/internal/telephony/RadioVoiceProxy;Lcom/android/internal/telephony/RILRequest;I)V
    .registers 3

    .line 2668
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/RadioVoiceProxy;->separateConnection(II)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$mc1XOofl40-lWPvhmRhqm8Ys7Hw(Lcom/android/internal/telephony/RadioNetworkProxy;Lcom/android/internal/telephony/RILRequest;Z)V
    .registers 3

    .line 2780
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/RadioNetworkProxy;->setSuppServiceNotifications(IZ)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$n8U3CcZBoBSLlMRbTYknbDoXxUI(Lcom/android/internal/telephony/RadioNetworkProxy;Lcom/android/internal/telephony/RILRequest;I)V
    .registers 3

    .line 3108
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    int-to-byte p2, p2

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/RadioNetworkProxy;->setNrDualConnectivityState(IB)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$n9EXWufh5lCmtBI3LTS3dQa27AQ(Lcom/android/internal/telephony/RadioSimProxy;Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;)V
    .registers 3

    .line 2900
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    .line 2901
    invoke-static {p2}, Lcom/android/internal/telephony/RILUtils;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 2900
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/RadioSimProxy;->sendTerminalResponseToSim(ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$naK0phUae06BNL9lGRFSjWaAKZk(Lcom/android/internal/telephony/RadioMessagingProxy;Lcom/android/internal/telephony/RILRequest;I[B)V
    .registers 4

    .line 3617
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/RadioMessagingProxy;->writeSmsToRuim(II[B)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$oY2vB3l-Iy2BCS88jzS7jxKo4ME(Lcom/android/internal/telephony/RadioSimProxy;Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .registers 6

    .line 2421
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    .line 2422
    invoke-static {p2}, Lcom/android/internal/telephony/RILUtils;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 2423
    invoke-static {p3}, Lcom/android/internal/telephony/RILUtils;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 2424
    invoke-static {p5}, Lcom/android/internal/telephony/RILUtils;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    .line 2421
    invoke-virtual/range {p0 .. p5}, Lcom/android/internal/telephony/RadioSimProxy;->getFacilityLockForApp(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$oeDXIqcmCu6WJ-p4CKXqMuRZvrI(Lcom/android/internal/telephony/RadioVoiceProxy;Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;II)V
    .registers 5

    .line 3365
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-static {p2}, Lcom/android/internal/telephony/RILUtils;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/RadioVoiceProxy;->sendBurstDtmf(ILjava/lang/String;II)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$pUp5fbbRJKxiyfgMSD-aQ6WFMfU(Lcom/android/internal/telephony/RadioNetworkProxy;Lcom/android/internal/telephony/RILRequest;)V
    .registers 2

    .line 5238
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RadioNetworkProxy;->isN1ModeEnabled(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$pWf20FeSu72RVNJldNVBVHcWDHU(Lcom/android/internal/telephony/RadioModemProxy;Lcom/android/internal/telephony/RILRequest;)V
    .registers 2

    .line 4212
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RadioModemProxy;->getHardwareConfig(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$qVDUNiEAbZ-8cdL08MNmO_W6cbI(Lcom/android/internal/telephony/RadioNetworkProxy;Lcom/android/internal/telephony/RILRequest;)V
    .registers 2

    .line 2859
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RadioNetworkProxy;->getAvailableBandModes(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$qaUkNQjw-_GRqycoI2N_umxA8kU(Lcom/android/internal/telephony/RadioNetworkProxy;Lcom/android/internal/telephony/RILRequest;Landroid/telephony/NetworkScanRequest;Lcom/android/internal/telephony/HalVersion;Landroid/os/Message;)V
    .registers 5

    .line 2592
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/RadioNetworkProxy;->startNetworkScan(ILandroid/telephony/NetworkScanRequest;Lcom/android/internal/telephony/HalVersion;Landroid/os/Message;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$r-IunojOentWwCin4ADSaldJmHk(Lcom/android/internal/telephony/RadioMessagingProxy;Lcom/android/internal/telephony/RILRequest;[Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;)V
    .registers 3

    .line 3485
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/RadioMessagingProxy;->setGsmBroadcastConfig(I[Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$r1bsRqXZzQmVeE3PUSBWXZlMFNk(Lcom/android/internal/telephony/RadioMessagingProxy;Lcom/android/internal/telephony/RILRequest;)V
    .registers 2

    .line 3714
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RadioMessagingProxy;->getSmscAddress(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$rA9oyKKZ_0q4O3EJ0FFhyZS-bew(Lcom/android/internal/telephony/RadioNetworkProxy;Lcom/android/internal/telephony/RILRequest;[II)V
    .registers 4

    .line 5072
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    .line 5073
    invoke-static {p2, p3}, Lcom/android/internal/telephony/RILUtils;->convertEmergencyNetworkScanTrigger([II)Landroid/hardware/radio/network/EmergencyNetworkScanTrigger;

    move-result-object p2

    .line 5072
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/RadioNetworkProxy;->triggerEmergencyNetworkScan(ILandroid/hardware/radio/network/EmergencyNetworkScanTrigger;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$rLXwNp5tn7Q_ofLRWBOJ2cN-b9g(Lcom/android/internal/telephony/RadioNetworkProxy;Lcom/android/internal/telephony/RILRequest;I)V
    .registers 3

    .line 4450
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/RadioNetworkProxy;->setIndicationFilter(II)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$rbsLSOwCKO1Q6TjDSKkBZ-LNvgE(Lcom/android/internal/telephony/RadioVoiceProxy;Lcom/android/internal/telephony/RILRequest;Z)V
    .registers 3

    .line 4660
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/RadioVoiceProxy;->handleStkCallSetupRequestFromSim(IZ)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$rxkNq_CbaqHFGHdg33x0QAt17gM(Lcom/android/internal/telephony/RadioSimProxy;Lcom/android/internal/telephony/RILRequest;IIIIILjava/lang/String;)V
    .registers 8

    .line 3985
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual/range {p0 .. p7}, Lcom/android/internal/telephony/RadioSimProxy;->iccTransmitApduBasicChannel(IIIIIILjava/lang/String;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$sfMV4JNorXJO4zZo61DmStDBXw0(Lcom/android/internal/telephony/RadioNetworkProxy;Lcom/android/internal/telephony/RILRequest;)V
    .registers 2

    .line 1698
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RadioNetworkProxy;->getSystemSelectionChannels(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$sfrG2X1BJa441j_qr1ekjyFDPNA(Lcom/android/internal/telephony/RadioModemProxy;Lcom/android/internal/telephony/RILRequest;IZ)V
    .registers 4

    .line 4429
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/RadioModemProxy;->sendDeviceState(IIZ)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$tCvkG70cCrzwA-09DUobswVMhaE(Lcom/android/internal/telephony/RadioNetworkProxy;Lcom/android/internal/telephony/RILRequest;)V
    .registers 2

    .line 5171
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RadioNetworkProxy;->isNullCipherAndIntegrityEnabled(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$uOwFGQQREj2wkPHXiOxkn0MBf8w(Lcom/android/internal/telephony/RadioVoiceProxy;Lcom/android/internal/telephony/RILRequest;)V
    .registers 2

    .line 2941
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RadioVoiceProxy;->explicitCallTransfer(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$ujjDW3rB72bqzf_mlsHyjDYRPHE(Lcom/android/internal/telephony/RadioVoiceProxy;Lcom/android/internal/telephony/RILRequest;IILjava/lang/String;)V
    .registers 5

    .line 2271
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/RadioVoiceProxy;->getCallForwardStatus(IIILjava/lang/String;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$vYmUVpuCBMDSAEEyCEXCF__3lhk(Lcom/android/internal/telephony/RIL;Lcom/android/internal/telephony/RadioVoiceProxy;Lcom/android/internal/telephony/RILRequest;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RIL;->lambda$acceptCall$43(Lcom/android/internal/telephony/RadioVoiceProxy;Lcom/android/internal/telephony/RILRequest;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$wEyop62IOGDFf7HtvQ7V7lj5OcI(Lcom/android/internal/telephony/RadioModemProxy;Lcom/android/internal/telephony/RILRequest;Lcom/android/internal/telephony/RadioCapability;)V
    .registers 3

    .line 4315
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/RadioModemProxy;->setRadioCapability(ILcom/android/internal/telephony/RadioCapability;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$wPNfCWu1hiySolUthpxXwRToA28(Lcom/android/internal/telephony/RadioSimProxy;Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 1480
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-static {p2}, Lcom/android/internal/telephony/RILUtils;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1481
    invoke-static {p3}, Lcom/android/internal/telephony/RILUtils;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 1480
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/RadioSimProxy;->supplyIccPin2ForApp(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$x6uTQpprYvYvPbc_vc3_Gx2V9oE(Lcom/android/internal/telephony/RadioNetworkProxy;Lcom/android/internal/telephony/RILRequest;Z)V
    .registers 3

    .line 5269
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/RadioNetworkProxy;->setCellularIdentifierTransparencyEnabled(IZ)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$xA8dMP5xOhcAX3-sEQ_uZ8huXoU(Lcom/android/internal/telephony/RadioDataProxy;Lcom/android/internal/telephony/RILRequest;Landroid/telephony/data/DataProfile;)V
    .registers 3

    .line 3894
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/RadioDataProxy;->setInitialAttachApn(ILandroid/telephony/data/DataProfile;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$xH5_x2jcdkDZ7CRoyCWD4Zkwnoo(Lcom/android/internal/telephony/RadioNetworkProxy;Lcom/android/internal/telephony/RILRequest;III[I[II)V
    .registers 8

    .line 4496
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual/range {p0 .. p7}, Lcom/android/internal/telephony/RadioNetworkProxy;->setLinkCapacityReportingCriteria(IIII[I[II)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$xMTQiRx9xp2QREN_4u10Fkfyq74(Lcom/android/internal/telephony/RadioNetworkProxy;Lcom/android/internal/telephony/RILRequest;Z)V
    .registers 3

    .line 5146
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/RadioNetworkProxy;->setNullCipherAndIntegrityEnabled(IZ)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$xqlms7y3vbXaPLXgzYs5DAhaiBo(Lcom/android/internal/telephony/RadioVoiceProxy;Lcom/android/internal/telephony/RILRequest;)V
    .registers 2

    .line 3696
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RadioVoiceProxy;->exitEmergencyCallbackMode(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$yoLPx-DDIT0lZpB76fsVjAbopUg(Lcom/android/internal/telephony/RadioNetworkProxy;Lcom/android/internal/telephony/RILRequest;)V
    .registers 2

    .line 4681
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RadioNetworkProxy;->getBarringInfo(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$z_4-DkJt-IMTmPGnp6CRqMA9SDg(Lcom/android/internal/telephony/RadioDataProxy;Lcom/android/internal/telephony/RILRequest;ILandroid/net/KeepalivePacketData;ILandroid/os/Message;)V
    .registers 6

    .line 4559
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual/range {p0 .. p5}, Lcom/android/internal/telephony/RadioDataProxy;->startKeepalive(IILandroid/net/KeepalivePacketData;ILandroid/os/Message;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$znhkZ99ee_07DL5N31_oXyK31b4(Lcom/android/internal/telephony/RadioNetworkProxy;Lcom/android/internal/telephony/RILRequest;)V
    .registers 2

    .line 3855
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RadioNetworkProxy;->getCellInfoList(I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMetrics(Lcom/android/internal/telephony/RIL;)Lcom/android/internal/telephony/metrics/TelephonyMetrics;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/RIL;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRadioBugDetector(Lcom/android/internal/telephony/RIL;)Lcom/android/internal/telephony/RadioBugDetector;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/RIL;->mRadioBugDetector:Lcom/android/internal/telephony/RadioBugDetector;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmServiceCookies(Lcom/android/internal/telephony/RIL;)Landroid/util/SparseArray;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/RIL;->mServiceCookies:Landroid/util/SparseArray;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mclearWakeLock(Lcom/android/internal/telephony/RIL;I)Z
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->clearWakeLock(I)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mdecrementWakeLock(Lcom/android/internal/telephony/RIL;Lcom/android/internal/telephony/RILRequest;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->decrementWakeLock(Lcom/android/internal/telephony/RILRequest;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mfindAndRemoveRequestFromList(Lcom/android/internal/telephony/RIL;I)Lcom/android/internal/telephony/RILRequest;
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->findAndRemoveRequestFromList(I)Lcom/android/internal/telephony/RILRequest;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mresetProxyAndRequestList(Lcom/android/internal/telephony/RIL;I)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->resetProxyAndRequestList(I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smgetResponseForTimedOutRILRequest(Lcom/android/internal/telephony/RILRequest;)Ljava/lang/Object;
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/android/internal/telephony/RIL;->getResponseForTimedOutRILRequest(Lcom/android/internal/telephony/RILRequest;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smserviceToString(I)Ljava/lang/String;
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/android/internal/telephony/RIL;->serviceToString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 9

    .line 150
    sget-object v0, Lcom/android/internal/telephony/HalVersion;->UNSUPPORTED:Lcom/android/internal/telephony/HalVersion;

    sput-object v0, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_UNSUPPORTED:Lcom/android/internal/telephony/HalVersion;

    .line 153
    sget-object v0, Lcom/android/internal/telephony/HalVersion;->UNKNOWN:Lcom/android/internal/telephony/HalVersion;

    sput-object v0, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_UNKNOWN:Lcom/android/internal/telephony/HalVersion;

    .line 156
    new-instance v0, Lcom/android/internal/telephony/HalVersion;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v1}, Lcom/android/internal/telephony/HalVersion;-><init>(II)V

    sput-object v0, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_1:Lcom/android/internal/telephony/HalVersion;

    .line 159
    new-instance v0, Lcom/android/internal/telephony/HalVersion;

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/HalVersion;-><init>(II)V

    sput-object v0, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_2:Lcom/android/internal/telephony/HalVersion;

    .line 162
    new-instance v0, Lcom/android/internal/telephony/HalVersion;

    const/4 v3, 0x3

    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/HalVersion;-><init>(II)V

    sput-object v0, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_3:Lcom/android/internal/telephony/HalVersion;

    .line 165
    new-instance v0, Lcom/android/internal/telephony/HalVersion;

    const/4 v4, 0x4

    invoke-direct {v0, v1, v4}, Lcom/android/internal/telephony/HalVersion;-><init>(II)V

    sput-object v0, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    .line 168
    new-instance v0, Lcom/android/internal/telephony/HalVersion;

    const/4 v5, 0x5

    invoke-direct {v0, v1, v5}, Lcom/android/internal/telephony/HalVersion;-><init>(II)V

    sput-object v0, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_5:Lcom/android/internal/telephony/HalVersion;

    .line 171
    new-instance v0, Lcom/android/internal/telephony/HalVersion;

    const/4 v5, 0x6

    invoke-direct {v0, v1, v5}, Lcom/android/internal/telephony/HalVersion;-><init>(II)V

    sput-object v0, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_6:Lcom/android/internal/telephony/HalVersion;

    .line 174
    new-instance v0, Lcom/android/internal/telephony/HalVersion;

    const/4 v6, 0x0

    invoke-direct {v0, v2, v6}, Lcom/android/internal/telephony/HalVersion;-><init>(II)V

    sput-object v0, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_2_0:Lcom/android/internal/telephony/HalVersion;

    .line 177
    new-instance v0, Lcom/android/internal/telephony/HalVersion;

    invoke-direct {v0, v2, v1}, Lcom/android/internal/telephony/HalVersion;-><init>(II)V

    sput-object v0, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_2_1:Lcom/android/internal/telephony/HalVersion;

    .line 180
    new-instance v0, Lcom/android/internal/telephony/HalVersion;

    invoke-direct {v0, v2, v2}, Lcom/android/internal/telephony/HalVersion;-><init>(II)V

    sput-object v0, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_2_2:Lcom/android/internal/telephony/HalVersion;

    .line 183
    new-instance v0, Lcom/android/internal/telephony/HalVersion;

    invoke-direct {v0, v2, v3}, Lcom/android/internal/telephony/HalVersion;-><init>(II)V

    sput-object v0, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_2_3:Lcom/android/internal/telephony/HalVersion;

    .line 186
    new-instance v0, Lcom/android/internal/telephony/HalVersion;

    invoke-direct {v0, v2, v4}, Lcom/android/internal/telephony/HalVersion;-><init>(II)V

    sput-object v0, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_2_4:Lcom/android/internal/telephony/HalVersion;

    .line 209
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/RIL;->sRilTimeHistograms:Landroid/util/SparseArray;

    .line 294
    const-string v0, "slot2"

    const-string v7, "slot3"

    const-string v8, "slot1"

    filled-new-array {v8, v0, v7}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/RIL;->HIDL_SERVICE_NAME:[Ljava/lang/String;

    .line 296
    new-array v0, v4, [Ljava/util/Map$Entry;

    .line 297
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "android.hardware.telephony.calling"

    invoke-static {v5, v4}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v4

    aput-object v4, v0, v6

    .line 298
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "android.hardware.telephony.data"

    invoke-static {v5, v4}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v4

    aput-object v4, v0, v1

    .line 299
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v4, "android.hardware.telephony.messaging"

    invoke-static {v4, v1}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    aput-object v1, v0, v2

    const/4 v1, 0x7

    .line 300
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "android.hardware.telephony.ims"

    invoke-static {v2, v1}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    aput-object v1, v0, v3

    .line 296
    invoke-static {v0}, Ljava/util/Map;->ofEntries([Ljava/util/Map$Entry;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/RIL;->FEATURES_TO_SERVICES:Ljava/util/Map;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;IILjava/lang/Integer;Landroid/util/SparseArray;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II",
            "Ljava/lang/Integer;",
            "Landroid/util/SparseArray<",
            "Lcom/android/internal/telephony/RadioServiceProxy;",
            ">;",
            "Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;",
            ")V"
        }
    .end annotation

    .line 1071
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/BaseCommands;-><init>(Landroid/content/Context;)V

    .line 147
    new-instance p3, Lcom/android/internal/telephony/ClientWakelockTracker;

    invoke-direct {p3}, Lcom/android/internal/telephony/ClientWakelockTracker;-><init>()V

    iput-object p3, p0, Lcom/android/internal/telephony/RIL;->mClientWakelockTracker:Lcom/android/internal/telephony/ClientWakelockTracker;

    .line 189
    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    iput-object p3, p0, Lcom/android/internal/telephony/RIL;->mHalVersion:Ljava/util/Map;

    const/4 v0, 0x0

    .line 1091
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 204
    iput v0, p0, Lcom/android/internal/telephony/RIL;->mWlSequenceNum:I

    .line 205
    iput v0, p0, Lcom/android/internal/telephony/RIL;->mAckWlSequenceNum:I

    .line 207
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/RIL;->mRequestList:Landroid/util/SparseArray;

    .line 213
    iput v0, p0, Lcom/android/internal/telephony/RIL;->mLastRadioPowerResult:I

    .line 215
    iput-boolean v0, p0, Lcom/android/internal/telephony/RIL;->mIsRadioProxyInitialized:Z

    const/4 v2, 0x0

    .line 217
    iput-object v2, p0, Lcom/android/internal/telephony/RIL;->mIsRadioVersion20Cached:Ljava/lang/Boolean;

    .line 221
    new-instance v3, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v3, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v3, p0, Lcom/android/internal/telephony/RIL;->mTestingEmergencyCall:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 240
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    iput-object v3, p0, Lcom/android/internal/telephony/RIL;->mDisabledRadioServices:Landroid/util/SparseArray;

    .line 249
    invoke-static {}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->getInstance()Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/RIL;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    .line 251
    iput-object v2, p0, Lcom/android/internal/telephony/RIL;->mRadioBugDetector:Lcom/android/internal/telephony/RadioBugDetector;

    .line 256
    iput-object v2, p0, Lcom/android/internal/telephony/RIL;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    .line 271
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/RIL;->mServiceProxies:Landroid/util/SparseArray;

    .line 272
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/RIL;->mDeathRecipients:Landroid/util/SparseArray;

    .line 273
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/RIL;->mServiceCookies:Landroid/util/SparseArray;

    .line 282
    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/RIL;->mCompatOverrides:Ljava/util/concurrent/ConcurrentHashMap;

    .line 1072
    iput-object p6, p0, Lcom/android/internal/telephony/RIL;->mFeatureFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

    .line 1077
    new-instance p6, Ljava/lang/StringBuilder;

    invoke-direct {p6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RIL: init allowedNetworkTypes="

    invoke-virtual {p6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " cdmaSubscription="

    invoke-virtual {p6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, -0x1

    invoke-virtual {p6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {p6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p6

    invoke-virtual {p0, p6}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1081
    iput-object p1, p0, Lcom/android/internal/telephony/BaseCommands;->mContext:Landroid/content/Context;

    .line 1082
    iput v2, p0, Lcom/android/internal/telephony/BaseCommands;->mCdmaSubscription:I

    .line 1083
    iput p2, p0, Lcom/android/internal/telephony/BaseCommands;->mAllowedNetworkTypesBitmask:I

    .line 1084
    iput v0, p0, Lcom/android/internal/telephony/BaseCommands;->mPhoneType:I

    if-nez p4, :cond_8c

    move p2, v0

    goto :goto_90

    .line 1085
    :cond_8c
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p2

    :goto_90
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iput-object p2, p0, Lcom/android/internal/telephony/RIL;->mPhoneId:Ljava/lang/Integer;

    .line 1086
    invoke-direct {p0}, Lcom/android/internal/telephony/RIL;->isRadioBugDetectionEnabled()Z

    move-result p4

    if-eqz p4, :cond_a7

    .line 1087
    new-instance p4, Lcom/android/internal/telephony/RadioBugDetector;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-direct {p4, p1, p2}, Lcom/android/internal/telephony/RadioBugDetector;-><init>(Landroid/content/Context;I)V

    iput-object p4, p0, Lcom/android/internal/telephony/RIL;->mRadioBugDetector:Lcom/android/internal/telephony/RadioBugDetector;

    .line 1090
    :cond_a7
    :try_start_a7
    invoke-direct {p0}, Lcom/android/internal/telephony/RIL;->isRadioVersion2_0()Z

    move-result p2

    if-eqz p2, :cond_b5

    .line 1091
    sget-object p2, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_2_0:Lcom/android/internal/telephony/HalVersion;

    invoke-interface {p3, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_bd

    :catch_b3
    move-exception p2

    goto :goto_bb

    .line 1093
    :cond_b5
    sget-object p2, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_UNKNOWN:Lcom/android/internal/telephony/HalVersion;

    invoke-interface {p3, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_ba
    .catch Ljava/lang/SecurityException; {:try_start_a7 .. :try_end_ba} :catch_b3

    goto :goto_bd

    :goto_bb
    if-eqz p5, :cond_2ce

    .line 1102
    :goto_bd
    const-string p2, "phone"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/telephony/TelephonyManager;

    .line 1104
    invoke-virtual {p2}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result p3

    const/4 p4, 0x1

    if-nez p3, :cond_db

    invoke-virtual {p2}, Landroid/telephony/TelephonyManager;->isSmsCapable()Z

    move-result p3

    if-nez p3, :cond_db

    invoke-virtual {p2}, Landroid/telephony/TelephonyManager;->isDataCapable()Z

    move-result p2

    if-eqz p2, :cond_d9

    goto :goto_db

    :cond_d9
    move p2, v0

    goto :goto_dc

    :cond_db
    :goto_db
    move p2, p4

    :goto_dc
    iput-boolean p2, p0, Lcom/android/internal/telephony/RIL;->mIsCellularSupported:Z

    .line 1106
    new-instance p2, Lcom/android/internal/telephony/RadioResponse;

    invoke-direct {p2, p0}, Lcom/android/internal/telephony/RadioResponse;-><init>(Lcom/android/internal/telephony/RIL;)V

    iput-object p2, p0, Lcom/android/internal/telephony/RIL;->mRadioResponse:Lcom/android/internal/telephony/RadioResponse;

    .line 1107
    new-instance p2, Lcom/android/internal/telephony/RadioIndication;

    invoke-direct {p2, p0}, Lcom/android/internal/telephony/RadioIndication;-><init>(Lcom/android/internal/telephony/RIL;)V

    iput-object p2, p0, Lcom/android/internal/telephony/RIL;->mRadioIndication:Lcom/android/internal/telephony/RadioIndication;

    .line 1108
    new-instance p2, Lcom/android/internal/telephony/DataResponse;

    invoke-direct {p2, p0}, Lcom/android/internal/telephony/DataResponse;-><init>(Lcom/android/internal/telephony/RIL;)V

    iput-object p2, p0, Lcom/android/internal/telephony/RIL;->mDataResponse:Lcom/android/internal/telephony/DataResponse;

    .line 1109
    new-instance p2, Lcom/android/internal/telephony/DataIndication;

    invoke-direct {p2, p0}, Lcom/android/internal/telephony/DataIndication;-><init>(Lcom/android/internal/telephony/RIL;)V

    iput-object p2, p0, Lcom/android/internal/telephony/RIL;->mDataIndication:Lcom/android/internal/telephony/DataIndication;

    .line 1110
    new-instance p2, Lcom/android/internal/telephony/ImsResponse;

    invoke-direct {p2, p0}, Lcom/android/internal/telephony/ImsResponse;-><init>(Lcom/android/internal/telephony/RIL;)V

    iput-object p2, p0, Lcom/android/internal/telephony/RIL;->mImsResponse:Lcom/android/internal/telephony/ImsResponse;

    .line 1111
    new-instance p2, Lcom/android/internal/telephony/ImsIndication;

    invoke-direct {p2, p0}, Lcom/android/internal/telephony/ImsIndication;-><init>(Lcom/android/internal/telephony/RIL;)V

    iput-object p2, p0, Lcom/android/internal/telephony/RIL;->mImsIndication:Lcom/android/internal/telephony/ImsIndication;

    .line 1112
    new-instance p2, Lcom/android/internal/telephony/MessagingResponse;

    invoke-direct {p2, p0}, Lcom/android/internal/telephony/MessagingResponse;-><init>(Lcom/android/internal/telephony/RIL;)V

    iput-object p2, p0, Lcom/android/internal/telephony/RIL;->mMessagingResponse:Lcom/android/internal/telephony/MessagingResponse;

    .line 1113
    new-instance p2, Lcom/android/internal/telephony/MessagingIndication;

    invoke-direct {p2, p0}, Lcom/android/internal/telephony/MessagingIndication;-><init>(Lcom/android/internal/telephony/RIL;)V

    iput-object p2, p0, Lcom/android/internal/telephony/RIL;->mMessagingIndication:Lcom/android/internal/telephony/MessagingIndication;

    .line 1114
    new-instance p2, Lcom/android/internal/telephony/ModemResponse;

    invoke-direct {p2, p0}, Lcom/android/internal/telephony/ModemResponse;-><init>(Lcom/android/internal/telephony/RIL;)V

    iput-object p2, p0, Lcom/android/internal/telephony/RIL;->mModemResponse:Lcom/android/internal/telephony/ModemResponse;

    .line 1115
    new-instance p2, Lcom/android/internal/telephony/ModemIndication;

    invoke-direct {p2, p0}, Lcom/android/internal/telephony/ModemIndication;-><init>(Lcom/android/internal/telephony/RIL;)V

    iput-object p2, p0, Lcom/android/internal/telephony/RIL;->mModemIndication:Lcom/android/internal/telephony/ModemIndication;

    .line 1116
    new-instance p2, Lcom/android/internal/telephony/NetworkResponse;

    invoke-direct {p2, p0}, Lcom/android/internal/telephony/NetworkResponse;-><init>(Lcom/android/internal/telephony/RIL;)V

    iput-object p2, p0, Lcom/android/internal/telephony/RIL;->mNetworkResponse:Lcom/android/internal/telephony/NetworkResponse;

    .line 1117
    new-instance p2, Lcom/android/internal/telephony/NetworkIndication;

    invoke-direct {p2, p0}, Lcom/android/internal/telephony/NetworkIndication;-><init>(Lcom/android/internal/telephony/RIL;)V

    iput-object p2, p0, Lcom/android/internal/telephony/RIL;->mNetworkIndication:Lcom/android/internal/telephony/NetworkIndication;

    .line 1118
    new-instance p2, Lcom/android/internal/telephony/SimResponse;

    invoke-direct {p2, p0}, Lcom/android/internal/telephony/SimResponse;-><init>(Lcom/android/internal/telephony/RIL;)V

    iput-object p2, p0, Lcom/android/internal/telephony/RIL;->mSimResponse:Lcom/android/internal/telephony/SimResponse;

    .line 1119
    new-instance p2, Lcom/android/internal/telephony/SimIndication;

    invoke-direct {p2, p0}, Lcom/android/internal/telephony/SimIndication;-><init>(Lcom/android/internal/telephony/RIL;)V

    iput-object p2, p0, Lcom/android/internal/telephony/RIL;->mSimIndication:Lcom/android/internal/telephony/SimIndication;

    .line 1120
    new-instance p2, Lcom/android/internal/telephony/VoiceResponse;

    invoke-direct {p2, p0}, Lcom/android/internal/telephony/VoiceResponse;-><init>(Lcom/android/internal/telephony/RIL;)V

    iput-object p2, p0, Lcom/android/internal/telephony/RIL;->mVoiceResponse:Lcom/android/internal/telephony/VoiceResponse;

    .line 1121
    new-instance p2, Lcom/android/internal/telephony/VoiceIndication;

    invoke-direct {p2, p0}, Lcom/android/internal/telephony/VoiceIndication;-><init>(Lcom/android/internal/telephony/RIL;)V

    iput-object p2, p0, Lcom/android/internal/telephony/RIL;->mVoiceIndication:Lcom/android/internal/telephony/VoiceIndication;

    .line 1122
    new-instance p2, Lcom/android/internal/telephony/RIL$RilHandler;

    invoke-direct {p2, p0}, Lcom/android/internal/telephony/RIL$RilHandler;-><init>(Lcom/android/internal/telephony/RIL;)V

    iput-object p2, p0, Lcom/android/internal/telephony/RIL;->mRilHandler:Lcom/android/internal/telephony/RIL$RilHandler;

    .line 1123
    new-instance p2, Lcom/android/internal/telephony/RIL$RadioProxyDeathRecipient;

    invoke-direct {p2, p0}, Lcom/android/internal/telephony/RIL$RadioProxyDeathRecipient;-><init>(Lcom/android/internal/telephony/RIL;)V

    iput-object p2, p0, Lcom/android/internal/telephony/RIL;->mRadioProxyDeathRecipient:Lcom/android/internal/telephony/RIL$RadioProxyDeathRecipient;

    move p2, v0

    :goto_15d
    const/4 p3, 0x7

    if-gt p2, p3, :cond_1a9

    if-eqz p2, :cond_190

    .line 1127
    :try_start_162
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/RIL;->isRadioServiceSupported(I)Z

    move-result p3

    if-eqz p3, :cond_176

    .line 1128
    iget-object p3, p0, Lcom/android/internal/telephony/RIL;->mHalVersion:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p6

    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_UNKNOWN:Lcom/android/internal/telephony/HalVersion;

    invoke-interface {p3, p6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_184

    :catch_174
    move-exception p3

    goto :goto_182

    .line 1130
    :cond_176
    iget-object p3, p0, Lcom/android/internal/telephony/RIL;->mHalVersion:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p6

    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_UNSUPPORTED:Lcom/android/internal/telephony/HalVersion;

    invoke-interface {p3, p6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_181
    .catch Ljava/lang/SecurityException; {:try_start_162 .. :try_end_181} :catch_174

    goto :goto_184

    :goto_182
    if-eqz p5, :cond_18f

    .line 1139
    :goto_184
    iget-object p3, p0, Lcom/android/internal/telephony/RIL;->mDeathRecipients:Landroid/util/SparseArray;

    new-instance p6, Lcom/android/internal/telephony/RIL$BinderServiceDeathRecipient;

    invoke-direct {p6, p0, p2}, Lcom/android/internal/telephony/RIL$BinderServiceDeathRecipient;-><init>(Lcom/android/internal/telephony/RIL;I)V

    invoke-virtual {p3, p2, p6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_190

    .line 1137
    :cond_18f
    throw p3

    .line 1141
    :cond_190
    :goto_190
    iget-object p3, p0, Lcom/android/internal/telephony/RIL;->mDisabledRadioServices:Landroid/util/SparseArray;

    new-instance p6, Ljava/util/HashSet;

    invoke-direct {p6}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {p3, p2, p6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1142
    iget-object p3, p0, Lcom/android/internal/telephony/RIL;->mServiceCookies:Landroid/util/SparseArray;

    new-instance p6, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {p6, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    invoke-virtual {p3, p2, p6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_15d

    :cond_1a9
    if-nez p5, :cond_1f7

    .line 1145
    iget-object p2, p0, Lcom/android/internal/telephony/RIL;->mServiceProxies:Landroid/util/SparseArray;

    new-instance p6, Lcom/android/internal/telephony/RadioDataProxy;

    invoke-direct {p6}, Lcom/android/internal/telephony/RadioDataProxy;-><init>()V

    invoke-virtual {p2, p4, p6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1146
    iget-object p2, p0, Lcom/android/internal/telephony/RIL;->mServiceProxies:Landroid/util/SparseArray;

    new-instance p6, Lcom/android/internal/telephony/RadioMessagingProxy;

    invoke-direct {p6}, Lcom/android/internal/telephony/RadioMessagingProxy;-><init>()V

    const/4 v1, 0x2

    invoke-virtual {p2, v1, p6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1147
    iget-object p2, p0, Lcom/android/internal/telephony/RIL;->mServiceProxies:Landroid/util/SparseArray;

    new-instance p6, Lcom/android/internal/telephony/RadioModemProxy;

    invoke-direct {p6}, Lcom/android/internal/telephony/RadioModemProxy;-><init>()V

    const/4 v1, 0x3

    invoke-virtual {p2, v1, p6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1148
    iget-object p2, p0, Lcom/android/internal/telephony/RIL;->mServiceProxies:Landroid/util/SparseArray;

    new-instance p6, Lcom/android/internal/telephony/RadioNetworkProxy;

    invoke-direct {p6}, Lcom/android/internal/telephony/RadioNetworkProxy;-><init>()V

    const/4 v1, 0x4

    invoke-virtual {p2, v1, p6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1149
    iget-object p2, p0, Lcom/android/internal/telephony/RIL;->mServiceProxies:Landroid/util/SparseArray;

    new-instance p6, Lcom/android/internal/telephony/RadioSimProxy;

    invoke-direct {p6}, Lcom/android/internal/telephony/RadioSimProxy;-><init>()V

    const/4 v1, 0x5

    invoke-virtual {p2, v1, p6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1150
    iget-object p2, p0, Lcom/android/internal/telephony/RIL;->mServiceProxies:Landroid/util/SparseArray;

    new-instance p6, Lcom/android/internal/telephony/RadioVoiceProxy;

    invoke-direct {p6}, Lcom/android/internal/telephony/RadioVoiceProxy;-><init>()V

    const/4 v1, 0x6

    invoke-virtual {p2, v1, p6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1151
    iget-object p2, p0, Lcom/android/internal/telephony/RIL;->mServiceProxies:Landroid/util/SparseArray;

    new-instance p6, Lcom/android/internal/telephony/RadioImsProxy;

    invoke-direct {p6}, Lcom/android/internal/telephony/RadioImsProxy;-><init>()V

    invoke-virtual {p2, p3, p6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1f9

    .line 1153
    :cond_1f7
    iput-object p5, p0, Lcom/android/internal/telephony/RIL;->mServiceProxies:Landroid/util/SparseArray;

    .line 1156
    :goto_1f9
    const-string p2, "power"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/PowerManager;

    .line 1157
    const-string p6, "*telephony-radio*"

    invoke-virtual {p2, p4, p6}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p6

    iput-object p6, p0, Lcom/android/internal/telephony/RIL;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1158
    invoke-virtual {p6, v0}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 1159
    const-string p6, "RILJ_ACK_WL"

    invoke-virtual {p2, p4, p6}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p2

    iput-object p2, p0, Lcom/android/internal/telephony/RIL;->mAckWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1160
    invoke-virtual {p2, v0}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 1161
    invoke-static {}, Landroid/internal/telephony/sysprop/TelephonyProperties;->wake_lock_timeout()Ljava/util/Optional;

    move-result-object p2

    const p4, 0xea60

    .line 1162
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p2, p4}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iput p2, p0, Lcom/android/internal/telephony/RIL;->mWakeLockTimeout:I

    .line 1163
    invoke-static {}, Landroid/internal/telephony/sysprop/TelephonyProperties;->wake_lock_timeout()Ljava/util/Optional;

    move-result-object p2

    const/16 p4, 0xc8

    .line 1164
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p2, p4}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iput p2, p0, Lcom/android/internal/telephony/RIL;->mAckWakeLockTimeout:I

    .line 1165
    iput v0, p0, Lcom/android/internal/telephony/RIL;->mWakeLockCount:I

    .line 1166
    new-instance p2, Landroid/os/WorkSource;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p4

    iget p4, p4, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1167
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p4, p1}, Landroid/os/WorkSource;-><init>(ILjava/lang/String;)V

    iput-object p2, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    .line 1168
    new-instance p1, Landroid/os/WorkSource;

    invoke-direct {p1}, Landroid/os/WorkSource;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/RIL;->mActiveWakelockWorkSource:Landroid/os/WorkSource;

    .line 1170
    invoke-static {}, Lcom/android/internal/telephony/TelephonyDevController;->getInstance()Lcom/android/internal/telephony/TelephonyDevController;

    if-nez p5, :cond_266

    .line 1174
    invoke-static {p0}, Lcom/android/internal/telephony/TelephonyDevController;->registerRIL(Lcom/android/internal/telephony/CommandsInterface;)V

    .line 1177
    :cond_266
    invoke-direct {p0}, Lcom/android/internal/telephony/RIL;->validateFeatureFlags()V

    :goto_269
    if-gt v0, p3, :cond_2cd

    .line 1182
    invoke-direct {p0}, Lcom/android/internal/telephony/RIL;->isRadioVersion2_0()Z

    move-result p1

    if-eqz p1, :cond_295

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->isRadioServiceSupported(I)Z

    move-result p1

    if-nez p1, :cond_295

    .line 1183
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Not initializing "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/android/internal/telephony/RIL;->serviceToString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " (not supported)"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    goto :goto_2ca

    :cond_295
    if-nez v0, :cond_29b

    .line 1188
    invoke-virtual {p0}, Lcom/android/internal/telephony/RIL;->getRadioProxy()Landroid/hardware/radio/V1_0/IRadio;

    goto :goto_2a0

    :cond_29b
    if-nez p5, :cond_2a0

    .line 1192
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(I)Lcom/android/internal/telephony/RadioServiceProxy;

    .line 1197
    :cond_2a0
    :goto_2a0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "HAL version of "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/android/internal/telephony/RIL;->serviceToString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ": "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/internal/telephony/RIL;->mHalVersion:Ljava/util/Map;

    .line 1198
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-interface {p2, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1197
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    :goto_2ca
    add-int/lit8 v0, v0, 0x1

    goto :goto_269

    :cond_2cd
    return-void

    .line 1099
    :cond_2ce
    throw p2
.end method

.method public constructor greylist <init>(Landroid/content/Context;IILjava/lang/Integer;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)V
    .registers 13

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v6, p5

    .line 1065
    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/RIL;-><init>(Landroid/content/Context;IILjava/lang/Integer;Landroid/util/SparseArray;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)V

    return-void
.end method

.method private greylist-max-r acquireWakeLock(Lcom/android/internal/telephony/RILRequest;I)V
    .registers 9

    .line 5770
    monitor-enter p1

    .line 5771
    :try_start_1
    iget v0, p1, Lcom/android/internal/telephony/RILRequest;->mWakeLockType:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_23

    .line 5772
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to acquire wakelock for "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 5773
    monitor-exit p1

    return-void

    :catchall_20
    move-exception p0

    goto/16 :goto_b9

    :cond_23
    const/4 v0, 0x1

    if-eqz p2, :cond_63

    if-eq p2, v0, :cond_3e

    .line 5808
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Acquiring Invalid Wakelock type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/RIL;->riljLogw(Ljava/lang/String;)V

    .line 5809
    monitor-exit p1

    return-void

    .line 5798
    :cond_3e
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mAckWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v1
    :try_end_41
    .catchall {:try_start_1 .. :try_end_41} :catchall_20

    .line 5799
    :try_start_41
    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mAckWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 5800
    iget v2, p0, Lcom/android/internal/telephony/RIL;->mAckWlSequenceNum:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/android/internal/telephony/RIL;->mAckWlSequenceNum:I

    .line 5802
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mRilHandler:Lcom/android/internal/telephony/RIL$RilHandler;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 5803
    iget v2, p0, Lcom/android/internal/telephony/RIL;->mAckWlSequenceNum:I

    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 5804
    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRilHandler:Lcom/android/internal/telephony/RIL$RilHandler;

    iget p0, p0, Lcom/android/internal/telephony/RIL;->mAckWakeLockTimeout:I

    int-to-long v3, p0

    invoke-virtual {v2, v0, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 5805
    monitor-exit v1

    goto :goto_b3

    :catchall_60
    move-exception p0

    monitor-exit v1
    :try_end_62
    .catchall {:try_start_41 .. :try_end_62} :catchall_60

    :try_start_62
    throw p0

    .line 5778
    :cond_63
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v1
    :try_end_66
    .catchall {:try_start_62 .. :try_end_66} :catchall_20

    .line 5779
    :try_start_66
    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 5780
    iget v2, p0, Lcom/android/internal/telephony/RIL;->mWakeLockCount:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/android/internal/telephony/RIL;->mWakeLockCount:I

    .line 5781
    iget v2, p0, Lcom/android/internal/telephony/RIL;->mWlSequenceNum:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/android/internal/telephony/RIL;->mWlSequenceNum:I

    .line 5783
    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->getWorkSourceClientId()Ljava/lang/String;

    move-result-object v0

    .line 5784
    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mClientWakelockTracker:Lcom/android/internal/telephony/ClientWakelockTracker;

    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/ClientWakelockTracker;->isClientActive(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_92

    .line 5785
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mActiveWakelockWorkSource:Landroid/os/WorkSource;

    iget-object v2, p1, Lcom/android/internal/telephony/RILRequest;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v0, v2}, Landroid/os/WorkSource;->add(Landroid/os/WorkSource;)Z

    .line 5786
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mActiveWakelockWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v0, v2}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    goto :goto_92

    :catchall_90
    move-exception p0

    goto :goto_b7

    .line 5789
    :cond_92
    :goto_92
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mClientWakelockTracker:Lcom/android/internal/telephony/ClientWakelockTracker;

    iget-object v2, p1, Lcom/android/internal/telephony/RILRequest;->mClientId:Ljava/lang/String;

    iget v3, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    iget v4, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    iget v5, p0, Lcom/android/internal/telephony/RIL;->mWakeLockCount:I

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/android/internal/telephony/ClientWakelockTracker;->startTracking(Ljava/lang/String;III)V

    .line 5792
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mRilHandler:Lcom/android/internal/telephony/RIL$RilHandler;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 5793
    iget v2, p0, Lcom/android/internal/telephony/RIL;->mWlSequenceNum:I

    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 5794
    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRilHandler:Lcom/android/internal/telephony/RIL$RilHandler;

    iget p0, p0, Lcom/android/internal/telephony/RIL;->mWakeLockTimeout:I

    int-to-long v3, p0

    invoke-virtual {v2, v0, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 5795
    monitor-exit v1
    :try_end_b3
    .catchall {:try_start_66 .. :try_end_b3} :catchall_90

    .line 5811
    :goto_b3
    :try_start_b3
    iput p2, p1, Lcom/android/internal/telephony/RILRequest;->mWakeLockType:I

    .line 5812
    monitor-exit p1
    :try_end_b6
    .catchall {:try_start_b3 .. :try_end_b6} :catchall_20

    return-void

    .line 5795
    :goto_b7
    :try_start_b7
    monitor-exit v1
    :try_end_b8
    .catchall {:try_start_b7 .. :try_end_b8} :catchall_90

    :try_start_b8
    throw p0

    .line 5812
    :goto_b9
    monitor-exit p1
    :try_end_ba
    .catchall {:try_start_b8 .. :try_end_ba} :catchall_20

    throw p0
.end method

.method private blacklist addRequest(Lcom/android/internal/telephony/RILRequest;)V
    .registers 7

    const/4 v0, 0x0

    .line 1288
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/RIL;->acquireWakeLock(Lcom/android/internal/telephony/RILRequest;I)V

    .line 1289
    const-string v0, "RIL"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    .line 1291
    invoke-static {v2}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    const-wide/32 v3, 0x200000

    .line 1289
    invoke-static {v3, v4, v0, v1, v2}, Landroid/os/Trace;->asyncTraceForTrackBegin(JLjava/lang/String;Ljava/lang/String;I)V

    .line 1292
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mRequestList:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1293
    :try_start_2d
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p1, Lcom/android/internal/telephony/RILRequest;->mStartTimeMs:J

    .line 1294
    iget-object p0, p0, Lcom/android/internal/telephony/RIL;->mRequestList:Landroid/util/SparseArray;

    iget v1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {p0, v1, p1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1295
    monitor-exit v0

    return-void

    :catchall_3c
    move-exception p0

    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_2d .. :try_end_3e} :catchall_3c

    throw p0
.end method

.method private blacklist addToRilHistogram(Lcom/android/internal/telephony/RILRequest;)V
    .registers 7

    .line 5931
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 5932
    iget-wide v2, p1, Lcom/android/internal/telephony/RILRequest;->mStartTimeMs:J

    sub-long/2addr v0, v2

    long-to-int p0, v0

    .line 5934
    sget-object v0, Lcom/android/internal/telephony/RIL;->sRilTimeHistograms:Landroid/util/SparseArray;

    monitor-enter v0

    .line 5935
    :try_start_b
    sget-object v1, Lcom/android/internal/telephony/RIL;->sRilTimeHistograms:Landroid/util/SparseArray;

    iget v2, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyHistogram;

    if-nez v1, :cond_2a

    .line 5938
    new-instance v1, Landroid/telephony/TelephonyHistogram;

    iget v2, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    const/4 v3, 0x5

    const/4 v4, 0x1

    invoke-direct {v1, v4, v2, v3}, Landroid/telephony/TelephonyHistogram;-><init>(III)V

    .line 5940
    sget-object v2, Lcom/android/internal/telephony/RIL;->sRilTimeHistograms:Landroid/util/SparseArray;

    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_2a

    :catchall_28
    move-exception p0

    goto :goto_2f

    .line 5942
    :cond_2a
    :goto_2a
    invoke-virtual {v1, p0}, Landroid/telephony/TelephonyHistogram;->addTimeTaken(I)V

    .line 5943
    monitor-exit v0

    return-void

    :goto_2f
    monitor-exit v0
    :try_end_30
    .catchall {:try_start_b .. :try_end_30} :catchall_28

    throw p0
.end method

.method private blacklist canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z
    .registers 11

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 1335
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;Lcom/android/internal/telephony/HalVersion;)Z

    move-result p0

    return p0
.end method

.method private blacklist canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;Lcom/android/internal/telephony/HalVersion;)Z
    .registers 12

    .line 1341
    instance-of v0, p2, Lcom/android/internal/telephony/RadioDataProxy;

    const/4 v1, 0x6

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_9

    move v0, v2

    goto :goto_2e

    .line 1343
    :cond_9
    instance-of v0, p2, Lcom/android/internal/telephony/RadioMessagingProxy;

    if-eqz v0, :cond_f

    const/4 v0, 0x2

    goto :goto_2e

    .line 1345
    :cond_f
    instance-of v0, p2, Lcom/android/internal/telephony/RadioModemProxy;

    if-eqz v0, :cond_15

    const/4 v0, 0x3

    goto :goto_2e

    .line 1347
    :cond_15
    instance-of v0, p2, Lcom/android/internal/telephony/RadioNetworkProxy;

    if-eqz v0, :cond_1b

    const/4 v0, 0x4

    goto :goto_2e

    .line 1349
    :cond_1b
    instance-of v0, p2, Lcom/android/internal/telephony/RadioSimProxy;

    if-eqz v0, :cond_21

    const/4 v0, 0x5

    goto :goto_2e

    .line 1351
    :cond_21
    instance-of v0, p2, Lcom/android/internal/telephony/RadioVoiceProxy;

    if-eqz v0, :cond_27

    move v0, v1

    goto :goto_2e

    .line 1353
    :cond_27
    instance-of v0, p2, Lcom/android/internal/telephony/RadioImsProxy;

    if-eqz v0, :cond_2d

    const/4 v0, 0x7

    goto :goto_2e

    :cond_2d
    move v0, v3

    :goto_2e
    const/4 v4, 0x0

    if-eqz p2, :cond_9b

    .line 1356
    invoke-virtual {p2}, Lcom/android/internal/telephony/RadioServiceProxy;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_38

    goto :goto_9b

    .line 1366
    :cond_38
    iget-object p2, p0, Lcom/android/internal/telephony/RIL;->mHalVersion:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {p2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {p2, p4}, Lcom/android/internal/telephony/HalVersion;->less(Lcom/android/internal/telephony/HalVersion;)Z

    move-result p2

    if-eqz p2, :cond_68

    .line 1368
    invoke-static {v0}, Lcom/android/internal/telephony/RIL;->serviceToString(I)Ljava/lang/String;

    move-result-object p2

    filled-new-array {p1, p2, p4}, [Ljava/lang/Object;

    move-result-object p1

    .line 1367
    const-string p2, "%s not supported on service %s < %s."

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->riljLoge(Ljava/lang/String;)V

    if-eqz p3, :cond_67

    .line 1371
    invoke-static {v1}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object p0

    .line 1370
    invoke-static {p3, v4, p0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1372
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    :cond_67
    return v3

    :cond_68
    if-eqz p5, :cond_9a

    .line 1377
    iget-object p2, p0, Lcom/android/internal/telephony/RIL;->mHalVersion:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-interface {p2, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {p2, p5}, Lcom/android/internal/telephony/HalVersion;->greater(Lcom/android/internal/telephony/HalVersion;)Z

    move-result p2

    if-eqz p2, :cond_9a

    .line 1379
    invoke-static {v0}, Lcom/android/internal/telephony/RIL;->serviceToString(I)Ljava/lang/String;

    move-result-object p2

    filled-new-array {p1, p2, p5}, [Ljava/lang/Object;

    move-result-object p1

    .line 1378
    const-string p2, "%s not supported on service %s > %s."

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->riljLoge(Ljava/lang/String;)V

    if-eqz p3, :cond_99

    .line 1382
    invoke-static {v1}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object p0

    .line 1381
    invoke-static {p3, v4, p0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1383
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    :cond_99
    return v3

    :cond_9a
    return v2

    .line 1358
    :cond_9b
    :goto_9b
    invoke-static {v0}, Lcom/android/internal/telephony/RIL;->serviceToString(I)Ljava/lang/String;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    .line 1357
    const-string p2, "Unable to complete %s because service %s is not available."

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->riljLoge(Ljava/lang/String;)V

    if-eqz p3, :cond_b8

    .line 1361
    invoke-static {v2}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object p0

    .line 1360
    invoke-static {p3, v4, p0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1362
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    :cond_b8
    return v3
.end method

.method private greylist-max-r clearRequestList(IZ)V
    .registers 9

    .line 5897
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mRequestList:Landroid/util/SparseArray;

    monitor-enter v0

    .line 5898
    :try_start_3
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mRequestList:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-eqz p2, :cond_2c

    .line 5900
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "clearRequestList  mWakeLockCount="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/internal/telephony/RIL;->mWakeLockCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mRequestList="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    goto :goto_2c

    :catchall_2a
    move-exception p0

    goto :goto_74

    :cond_2c
    :goto_2c
    const/4 v2, 0x0

    :goto_2d
    if-ge v2, v1, :cond_6d

    .line 5905
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRequestList:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/RILRequest;

    if-eqz p2, :cond_60

    .line 5907
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ": ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v3, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "] "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v5}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    :cond_60
    const/4 v4, 0x0

    .line 5909
    invoke-virtual {v3, p1, v4}, Lcom/android/internal/telephony/RILRequest;->onError(ILjava/lang/Object;)V

    .line 5910
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/RIL;->decrementWakeLock(Lcom/android/internal/telephony/RILRequest;)V

    .line 5911
    invoke-virtual {v3}, Lcom/android/internal/telephony/RILRequest;->release()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2d

    .line 5913
    :cond_6d
    iget-object p0, p0, Lcom/android/internal/telephony/RIL;->mRequestList:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->clear()V

    .line 5914
    monitor-exit v0

    return-void

    :goto_74
    monitor-exit v0
    :try_end_75
    .catchall {:try_start_3 .. :try_end_75} :catchall_2a

    throw p0
.end method

.method private greylist-max-r clearWakeLock(I)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_49

    .line 5871
    iget-object p1, p0, Lcom/android/internal/telephony/RIL;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter p1

    .line 5872
    :try_start_7
    iget v2, p0, Lcom/android/internal/telephony/RIL;->mWakeLockCount:I

    if-nez v2, :cond_17

    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-nez v2, :cond_17

    monitor-exit p1

    return v1

    :catchall_15
    move-exception p0

    goto :goto_47

    .line 5873
    :cond_17
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NOTE: mWakeLockCount is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/internal/telephony/RIL;->mWakeLockCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " at time of clearing"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 5874
    iput v1, p0, Lcom/android/internal/telephony/RIL;->mWakeLockCount:I

    .line 5875
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 5876
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mClientWakelockTracker:Lcom/android/internal/telephony/ClientWakelockTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/ClientWakelockTracker;->stopTrackingAll()V

    .line 5877
    new-instance v1, Landroid/os/WorkSource;

    invoke-direct {v1}, Landroid/os/WorkSource;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/RIL;->mActiveWakelockWorkSource:Landroid/os/WorkSource;

    .line 5878
    monitor-exit p1

    return v0

    .line 5879
    :goto_47
    monitor-exit p1
    :try_end_48
    .catchall {:try_start_7 .. :try_end_48} :catchall_15

    throw p0

    .line 5881
    :cond_49
    iget-object p1, p0, Lcom/android/internal/telephony/RIL;->mAckWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter p1

    .line 5882
    :try_start_4c
    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mAckWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-nez v2, :cond_58

    monitor-exit p1

    return v1

    :catchall_56
    move-exception p0

    goto :goto_5f

    .line 5883
    :cond_58
    iget-object p0, p0, Lcom/android/internal/telephony/RIL;->mAckWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 5884
    monitor-exit p1

    return v0

    .line 5885
    :goto_5f
    monitor-exit p1
    :try_end_60
    .catchall {:try_start_4c .. :try_end_60} :catchall_56

    throw p0
.end method

.method private greylist-max-r decrementWakeLock(Lcom/android/internal/telephony/RILRequest;)V
    .registers 11

    .line 5835
    monitor-enter p1

    .line 5836
    :try_start_1
    iget v0, p1, Lcom/android/internal/telephony/RILRequest;->mWakeLockType:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6a

    const/4 v2, 0x1

    if-eqz v0, :cond_24

    if-eq v0, v2, :cond_6a

    .line 5862
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Decrementing Invalid Wakelock type "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/internal/telephony/RILRequest;->mWakeLockType:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->riljLogw(Ljava/lang/String;)V

    goto :goto_6a

    :catchall_22
    move-exception p0

    goto :goto_6e

    .line 5838
    :cond_24
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v0
    :try_end_27
    .catchall {:try_start_1 .. :try_end_27} :catchall_22

    .line 5839
    :try_start_27
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mClientWakelockTracker:Lcom/android/internal/telephony/ClientWakelockTracker;

    iget-object v4, p1, Lcom/android/internal/telephony/RILRequest;->mClientId:Ljava/lang/String;

    iget v5, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    iget v6, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    .line 5841
    iget v7, p0, Lcom/android/internal/telephony/RIL;->mWakeLockCount:I

    const/4 v8, 0x0

    if-le v7, v2, :cond_36

    sub-int/2addr v7, v2

    goto :goto_37

    :cond_36
    move v7, v8

    .line 5839
    :goto_37
    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/android/internal/telephony/ClientWakelockTracker;->stopTracking(Ljava/lang/String;III)V

    .line 5842
    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->getWorkSourceClientId()Ljava/lang/String;

    move-result-object v3

    .line 5843
    iget-object v4, p0, Lcom/android/internal/telephony/RIL;->mClientWakelockTracker:Lcom/android/internal/telephony/ClientWakelockTracker;

    invoke-virtual {v4, v3}, Lcom/android/internal/telephony/ClientWakelockTracker;->isClientActive(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_57

    .line 5844
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mActiveWakelockWorkSource:Landroid/os/WorkSource;

    iget-object v4, p1, Lcom/android/internal/telephony/RILRequest;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v3, v4}, Landroid/os/WorkSource;->remove(Landroid/os/WorkSource;)Z

    .line 5845
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object v4, p0, Lcom/android/internal/telephony/RIL;->mActiveWakelockWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v3, v4}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    goto :goto_57

    :catchall_55
    move-exception p0

    goto :goto_68

    .line 5848
    :cond_57
    :goto_57
    iget v3, p0, Lcom/android/internal/telephony/RIL;->mWakeLockCount:I

    if-le v3, v2, :cond_5f

    sub-int/2addr v3, v2

    .line 5849
    iput v3, p0, Lcom/android/internal/telephony/RIL;->mWakeLockCount:I

    goto :goto_66

    .line 5851
    :cond_5f
    iput v8, p0, Lcom/android/internal/telephony/RIL;->mWakeLockCount:I

    .line 5852
    iget-object p0, p0, Lcom/android/internal/telephony/RIL;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 5854
    :goto_66
    monitor-exit v0

    goto :goto_6a

    :goto_68
    monitor-exit v0
    :try_end_69
    .catchall {:try_start_27 .. :try_end_69} :catchall_55

    :try_start_69
    throw p0

    .line 5864
    :cond_6a
    :goto_6a
    iput v1, p1, Lcom/android/internal/telephony/RILRequest;->mWakeLockType:I

    .line 5865
    monitor-exit p1

    return-void

    :goto_6e
    monitor-exit p1
    :try_end_6f
    .catchall {:try_start_69 .. :try_end_6f} :catchall_22

    throw p0
.end method

.method private blacklist emergencyDial(Ljava/lang/String;Landroid/telephony/emergency/EmergencyNumber;ZILcom/android/internal/telephony/UUSInfo;Landroid/os/Message;)V
    .registers 18

    move-object/from16 v0, p6

    .line 1747
    const-class v1, Lcom/android/internal/telephony/RadioVoiceProxy;

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/android/internal/telephony/RadioVoiceProxy;

    .line 1748
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    const-string v10, "emergencyDial"

    invoke-direct {p0, v10, v3, v0, v1}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-nez v1, :cond_16

    return-void

    :cond_16
    const/16 v1, 0xcd

    .line 1752
    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, v0, v2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v4

    .line 1756
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v4, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v1}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1759
    new-instance v2, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda164;

    move-object v5, p1

    move-object v6, p2

    move v7, p3

    move v8, p4

    move-object/from16 v9, p5

    invoke-direct/range {v2 .. v9}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda164;-><init>(Lcom/android/internal/telephony/RadioVoiceProxy;Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Landroid/telephony/emergency/EmergencyNumber;ZILcom/android/internal/telephony/UUSInfo;)V

    const/4 p1, 0x6

    invoke-direct {p0, p1, v4, v10, v2}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method private greylist findAndRemoveRequestFromList(I)Lcom/android/internal/telephony/RILRequest;
    .registers 4

    .line 5920
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mRequestList:Landroid/util/SparseArray;

    monitor-enter v0

    .line 5921
    :try_start_3
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mRequestList:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/RILRequest;

    if-eqz v1, :cond_15

    .line 5923
    iget-object p0, p0, Lcom/android/internal/telephony/RIL;->mRequestList:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_15

    :catchall_13
    move-exception p0

    goto :goto_17

    .line 5925
    :cond_15
    :goto_15
    monitor-exit v0

    return-object v1

    :goto_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_13

    throw p0
.end method

.method private blacklist getDefaultWorkSourceIfInvalid(Landroid/os/WorkSource;)Landroid/os/WorkSource;
    .registers 2

    if-nez p1, :cond_5

    .line 5753
    iget-object p0, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    return-object p0

    :cond_5
    return-object p1
.end method

.method public static blacklist getOutgoingSmsMessageId(Landroid/os/Message;)J
    .registers 3

    if-eqz p0, :cond_e

    .line 2080
    iget-object p0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    if-nez v0, :cond_9

    goto :goto_e

    .line 2083
    :cond_9
    check-cast p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    iget-wide v0, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageId:J

    return-wide v0

    :cond_e
    :goto_e
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method private static greylist-max-r getResponseForTimedOutRILRequest(Lcom/android/internal/telephony/RILRequest;)Ljava/lang/Object;
    .registers 10

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 438
    :cond_4
    iget p0, p0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    const/16 v1, 0x87

    if-eq p0, v1, :cond_b

    return-object v0

    .line 440
    :cond_b
    new-instance v2, Landroid/telephony/ModemActivityInfo;

    .line 441
    invoke-static {}, Landroid/telephony/ModemActivityInfo;->getNumTxPowerLevels()I

    move-result p0

    new-array v7, p0, [I

    const/4 v8, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v2 .. v8}, Landroid/telephony/ModemActivityInfo;-><init>(JII[II)V

    return-object v2
.end method

.method public static blacklist getServiceHalVersion(I)Lcom/android/internal/telephony/HalVersion;
    .registers 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1e

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1b

    const/4 v0, 0x3

    if-eq p0, v0, :cond_18

    const/4 v0, 0x4

    if-eq p0, v0, :cond_15

    const/4 v0, 0x5

    if-eq p0, v0, :cond_12

    .line 6326
    sget-object p0, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_UNKNOWN:Lcom/android/internal/telephony/HalVersion;

    return-object p0

    .line 6325
    :cond_12
    sget-object p0, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_2_4:Lcom/android/internal/telephony/HalVersion;

    return-object p0

    .line 6324
    :cond_15
    sget-object p0, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_2_3:Lcom/android/internal/telephony/HalVersion;

    return-object p0

    .line 6323
    :cond_18
    sget-object p0, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_2_2:Lcom/android/internal/telephony/HalVersion;

    return-object p0

    .line 6322
    :cond_1b
    sget-object p0, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_2_1:Lcom/android/internal/telephony/HalVersion;

    return-object p0

    .line 6321
    :cond_1e
    sget-object p0, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_2_0:Lcom/android/internal/telephony/HalVersion;

    return-object p0
.end method

.method public static blacklist getTelephonyRILTimingHistograms()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telephony/TelephonyHistogram;",
            ">;"
        }
    .end annotation

    .line 305
    sget-object v0, Lcom/android/internal/telephony/RIL;->sRilTimeHistograms:Landroid/util/SparseArray;

    monitor-enter v0

    .line 306
    :try_start_3
    new-instance v1, Ljava/util/ArrayList;

    sget-object v2, Lcom/android/internal/telephony/RIL;->sRilTimeHistograms:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    .line 307
    :goto_f
    sget-object v3, Lcom/android/internal/telephony/RIL;->sRilTimeHistograms:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_2c

    .line 308
    new-instance v3, Landroid/telephony/TelephonyHistogram;

    sget-object v4, Lcom/android/internal/telephony/RIL;->sRilTimeHistograms:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyHistogram;

    invoke-direct {v3, v4}, Landroid/telephony/TelephonyHistogram;-><init>(Landroid/telephony/TelephonyHistogram;)V

    .line 309
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    :catchall_2a
    move-exception v1

    goto :goto_2e

    .line 311
    :cond_2c
    monitor-exit v0

    return-object v1

    :goto_2e
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_3 .. :try_end_2f} :catchall_2a

    throw v1
.end method

.method private blacklist handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V
    .registers 5

    .line 1312
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ": "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/RIL;->riljLoge(Ljava/lang/String;)V

    .line 1313
    invoke-virtual {p3}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p2, 0x0

    .line 1314
    iput-boolean p2, p0, Lcom/android/internal/telephony/RIL;->mIsRadioProxyInitialized:Z

    .line 1315
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->resetProxyAndRequestList(I)V

    return-void
.end method

.method private blacklist isRadioBugDetectionEnabled()Z
    .registers 3

    .line 1273
    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "enable_radio_bug_detection"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_10

    return v1

    :cond_10
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist isRadioServiceSupported(I)Z
    .registers 4

    const/4 v0, 0x1

    if-nez p1, :cond_4

    return v0

    .line 1220
    :cond_4
    const-string v1, ""

    packed-switch p1, :pswitch_data_4c

    move-object p1, v1

    goto :goto_1f

    .line 1240
    :pswitch_b
    sget-object p1, Landroid/hardware/radio/ims/IRadioIms;->DESCRIPTOR:Ljava/lang/String;

    goto :goto_1f

    .line 1238
    :pswitch_e
    sget-object p1, Landroid/hardware/radio/voice/IRadioVoice;->DESCRIPTOR:Ljava/lang/String;

    goto :goto_1f

    .line 1235
    :pswitch_11
    sget-object p1, Landroid/hardware/radio/sim/IRadioSim;->DESCRIPTOR:Ljava/lang/String;

    goto :goto_1f

    .line 1232
    :pswitch_14
    sget-object p1, Landroid/hardware/radio/network/IRadioNetwork;->DESCRIPTOR:Ljava/lang/String;

    goto :goto_1f

    .line 1229
    :pswitch_17
    sget-object p1, Landroid/hardware/radio/modem/IRadioModem;->DESCRIPTOR:Ljava/lang/String;

    goto :goto_1f

    .line 1226
    :pswitch_1a
    sget-object p1, Landroid/hardware/radio/messaging/IRadioMessaging;->DESCRIPTOR:Ljava/lang/String;

    goto :goto_1f

    .line 1223
    :pswitch_1d
    sget-object p1, Landroid/hardware/radio/data/IRadioData;->DESCRIPTOR:Ljava/lang/String;

    .line 1244
    :goto_1f
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4a

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x2f

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/android/internal/telephony/RIL;->HIDL_SERVICE_NAME:[Ljava/lang/String;

    iget-object p0, p0, Lcom/android/internal/telephony/RIL;->mPhoneId:Ljava/lang/Integer;

    .line 1245
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    aget-object p0, p1, p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/os/ServiceManager;->isDeclared(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4a

    return v0

    :cond_4a
    const/4 p0, 0x0

    return p0

    :pswitch_data_4c
    .packed-switch 0x1
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
    .end packed-switch
.end method

.method private blacklist isRadioVersion2_0()Z
    .registers 4

    .line 1204
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mIsRadioVersion20Cached:Ljava/lang/Boolean;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_9
    const/4 v0, 0x1

    move v1, v0

    :goto_b
    const/4 v2, 0x7

    if-gt v1, v2, :cond_1c

    .line 1206
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->isRadioServiceSupported(I)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 1207
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v1, p0, Lcom/android/internal/telephony/RIL;->mIsRadioVersion20Cached:Ljava/lang/Boolean;

    return v0

    :cond_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 1210
    :cond_1c
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/android/internal/telephony/RIL;->mIsRadioVersion20Cached:Ljava/lang/Boolean;

    const/4 p0, 0x0

    return p0
.end method

.method private blacklist isVoNrEnabled()Z
    .registers 3

    .line 3117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "persist.radio.is_vonr_enabled_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/RIL;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method private synthetic blacklist lambda$acceptCall$43(Lcom/android/internal/telephony/RadioVoiceProxy;Lcom/android/internal/telephony/RILRequest;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2370
    iget v0, p2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/RadioVoiceProxy;->acceptCall(I)V

    .line 2371
    iget-object p1, p0, Lcom/android/internal/telephony/RIL;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    iget-object p0, p0, Lcom/android/internal/telephony/RIL;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    iget p2, p2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {p1, p0, p2}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeRilAnswer(II)V

    return-void
.end method

.method private synthetic blacklist lambda$deactivateDataCall$44(Lcom/android/internal/telephony/RadioDataProxy;Lcom/android/internal/telephony/RILRequest;II)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2392
    iget v0, p2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {p1, v0, p3, p4}, Lcom/android/internal/telephony/RadioDataProxy;->deactivateDataCall(III)V

    .line 2393
    iget-object p1, p0, Lcom/android/internal/telephony/RIL;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    iget-object p0, p0, Lcom/android/internal/telephony/RIL;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    iget p2, p2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {p1, p0, p2, p3, p4}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeRilDeactivateDataCall(IIII)V

    return-void
.end method

.method private synthetic blacklist lambda$getModemActivityInfo$134(Lcom/android/internal/telephony/RadioModemProxy;Lcom/android/internal/telephony/RILRequest;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4366
    iget v0, p2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/RadioModemProxy;->getModemActivityInfo(I)V

    .line 4367
    iget-object p1, p0, Lcom/android/internal/telephony/RIL;->mRilHandler:Lcom/android/internal/telephony/RIL$RilHandler;

    iget p2, p2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v0, 0x5

    invoke-virtual {p1, v0, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 4368
    iget-object p0, p0, Lcom/android/internal/telephony/RIL;->mRilHandler:Lcom/android/internal/telephony/RIL$RilHandler;

    const-wide/16 v0, 0x7d0

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private synthetic blacklist lambda$sendImsCdmaSms$116(Lcom/android/internal/telephony/RadioMessagingProxy;Lcom/android/internal/telephony/RILRequest;[BIILandroid/os/Message;)V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3955
    iget v1, p2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p1

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/RadioMessagingProxy;->sendImsSms(ILjava/lang/String;Ljava/lang/String;[BII)V

    move-object p1, p0

    .line 3956
    iget-object p0, p1, Lcom/android/internal/telephony/RIL;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    iget-object p1, p1, Lcom/android/internal/telephony/RIL;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget p2, p2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    const/4 p4, 0x2

    .line 3957
    invoke-static {p6}, Lcom/android/internal/telephony/RIL;->getOutgoingSmsMessageId(Landroid/os/Message;)J

    move-result-wide p5

    const/4 p3, 0x3

    .line 3956
    invoke-virtual/range {p0 .. p6}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeRilSendSms(IIIIJ)V

    return-void
.end method

.method private synthetic blacklist lambda$sendImsGsmSms$115(Lcom/android/internal/telephony/RadioMessagingProxy;Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/String;IILandroid/os/Message;)V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3934
    iget v1, p2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    const/4 v4, 0x0

    move-object v0, p1

    move-object v2, p3

    move-object v3, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/RadioMessagingProxy;->sendImsSms(ILjava/lang/String;Ljava/lang/String;[BII)V

    move-object p1, p0

    .line 3935
    iget-object p0, p1, Lcom/android/internal/telephony/RIL;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    iget-object p1, p1, Lcom/android/internal/telephony/RIL;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget p2, p2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    const/4 p4, 0x1

    .line 3936
    invoke-static {p7}, Lcom/android/internal/telephony/RIL;->getOutgoingSmsMessageId(Landroid/os/Message;)J

    move-result-wide p5

    const/4 p3, 0x3

    .line 3935
    invoke-virtual/range {p0 .. p6}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeRilSendSms(IIIIJ)V

    return-void
.end method

.method private synthetic blacklist lambda$sendSMS$30(Lcom/android/internal/telephony/RadioMessagingProxy;Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2067
    iget v0, p2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {p1, v0, p3, p4}, Lcom/android/internal/telephony/RadioMessagingProxy;->sendSms(ILjava/lang/String;Ljava/lang/String;)V

    .line 2068
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    iget-object p0, p0, Lcom/android/internal/telephony/RIL;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget v3, p2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    const/4 v5, 0x1

    .line 2069
    invoke-static {p5}, Lcom/android/internal/telephony/RIL;->getOutgoingSmsMessageId(Landroid/os/Message;)J

    move-result-wide v6

    const/4 v4, 0x1

    .line 2068
    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeRilSendSms(IIIIJ)V

    return-void
.end method

.method private synthetic blacklist lambda$sendSMSExpectMore$31(Lcom/android/internal/telephony/RadioMessagingProxy;Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2107
    iget v0, p2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {p1, v0, p3, p4}, Lcom/android/internal/telephony/RadioMessagingProxy;->sendSmsExpectMore(ILjava/lang/String;Ljava/lang/String;)V

    .line 2108
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    iget-object p0, p0, Lcom/android/internal/telephony/RIL;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget v3, p2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    const/4 v5, 0x1

    .line 2109
    invoke-static {p5}, Lcom/android/internal/telephony/RIL;->getOutgoingSmsMessageId(Landroid/os/Message;)J

    move-result-wide v6

    const/4 v4, 0x1

    .line 2108
    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeRilSendSms(IIIIJ)V

    return-void
.end method

.method private synthetic blacklist lambda$setAllowedCarriers$135(Lcom/android/internal/telephony/RadioSimProxy;Lcom/android/internal/telephony/RILRequest;Landroid/telephony/CarrierRestrictionRules;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4390
    iget p2, p2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    const/4 v0, 0x5

    .line 4391
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getHalVersion(I)Lcom/android/internal/telephony/HalVersion;

    move-result-object p0

    .line 4390
    invoke-virtual {p1, p2, p3, p0}, Lcom/android/internal/telephony/RadioSimProxy;->setAllowedCarriers(ILandroid/telephony/CarrierRestrictionRules;Lcom/android/internal/telephony/HalVersion;)V

    return-void
.end method

.method private synthetic blacklist lambda$setAllowedNetworkTypesBitmap$73(Lcom/android/internal/telephony/RadioNetworkProxy;Lcom/android/internal/telephony/RILRequest;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3012
    iget p2, p2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    iget p0, p0, Lcom/android/internal/telephony/BaseCommands;->mAllowedNetworkTypesBitmask:I

    invoke-virtual {p1, p2, p0}, Lcom/android/internal/telephony/RadioNetworkProxy;->setAllowedNetworkTypesBitmap(II)V

    return-void
.end method

.method private synthetic blacklist lambda$setPreferredNetworkType$71(Lcom/android/internal/telephony/RadioNetworkProxy;Lcom/android/internal/telephony/RILRequest;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2964
    iget p2, p2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    iget p0, p0, Lcom/android/internal/telephony/BaseCommands;->mAllowedNetworkTypesBitmask:I

    invoke-virtual {p1, p2, p0}, Lcom/android/internal/telephony/RadioNetworkProxy;->setPreferredNetworkTypeBitmap(II)V

    return-void
.end method

.method private blacklist obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;
    .registers 4

    .line 1299
    invoke-static {p1, p2, p3}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p1

    .line 1300
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->addRequest(Lcom/android/internal/telephony/RILRequest;)V

    return-object p1
.end method

.method private varargs blacklist obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;[Ljava/lang/Object;)Lcom/android/internal/telephony/RILRequest;
    .registers 5

    .line 1306
    invoke-static {p1, p2, p3, p4}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;Landroid/os/WorkSource;[Ljava/lang/Object;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p1

    .line 1307
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->addRequest(Lcom/android/internal/telephony/RILRequest;)V

    return-object p1
.end method

.method private blacklist processResponseCleanUp(Lcom/android/internal/telephony/RILRequest;IILjava/lang/Object;)V
    .registers 11

    if-eqz p1, :cond_1b

    .line 5707
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget v2, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    iget v4, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    move v3, p2

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeOnRilSolicitedResponse(IIIILjava/lang/Object;)V

    if-nez p3, :cond_18

    .line 5709
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->decrementWakeLock(Lcom/android/internal/telephony/RILRequest;)V

    .line 5711
    :cond_18
    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->release()V

    :cond_1b
    return-void
.end method

.method private blacklist processResponseDoneInternal(Lcom/android/internal/telephony/RILRequest;IILjava/lang/Object;)V
    .registers 11

    .line 5664
    const-string v0, "RIL"

    const-wide/32 v1, 0x200000

    const-string v3, "< "

    if-nez p2, :cond_40

    .line 5665
    invoke-virtual {p0}, Lcom/android/internal/telephony/RIL;->isLogOrTrace()Z

    move-result v4

    if-eqz v4, :cond_73

    .line 5666
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    .line 5667
    invoke-static {v3, p4}, Lcom/android/internal/telephony/RIL;->retToString(ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 5669
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 5671
    invoke-static {v1, v2, v0, v3}, Landroid/os/Trace;->instantForTrack(JLjava/lang/String;Ljava/lang/String;)V

    goto :goto_73

    .line 5674
    :cond_40
    invoke-virtual {p0}, Lcom/android/internal/telephony/RIL;->isLogOrTrace()Z

    move-result v4

    if-eqz v4, :cond_70

    .line 5675
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " error "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 5678
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 5680
    invoke-static {v1, v2, v0, v3}, Landroid/os/Trace;->instantForTrack(JLjava/lang/String;Ljava/lang/String;)V

    .line 5682
    :cond_70
    invoke-virtual {p1, p2, p4}, Lcom/android/internal/telephony/RILRequest;->onError(ILjava/lang/Object;)V

    .line 5684
    :cond_73
    :goto_73
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/RIL;->processResponseCleanUp(Lcom/android/internal/telephony/RILRequest;IILjava/lang/Object;)V

    return-void
.end method

.method private blacklist processResponseInternal(IIII)Lcom/android/internal/telephony/RILRequest;
    .registers 9

    const/4 v0, 0x1

    if-ne p4, v0, :cond_63

    .line 5526
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mRequestList:Landroid/util/SparseArray;

    monitor-enter v0

    .line 5527
    :try_start_6
    iget-object p4, p0, Lcom/android/internal/telephony/RIL;->mRequestList:Landroid/util/SparseArray;

    invoke-virtual {p4, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/android/internal/telephony/RILRequest;

    .line 5528
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_60

    if-nez p4, :cond_26

    .line 5530
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unexpected solicited ack response! sn: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->riljLogw(Ljava/lang/String;)V

    return-object p4

    .line 5532
    :cond_26
    invoke-direct {p0, p4}, Lcom/android/internal/telephony/RIL;->decrementWakeLock(Lcom/android/internal/telephony/RILRequest;)V

    .line 5533
    iget-object p2, p0, Lcom/android/internal/telephony/RIL;->mRadioBugDetector:Lcom/android/internal/telephony/RadioBugDetector;

    if-eqz p2, :cond_32

    .line 5534
    iget v0, p4, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-virtual {p2, v0, p3}, Lcom/android/internal/telephony/RadioBugDetector;->detectRadioBug(II)V

    .line 5537
    :cond_32
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " Ack from "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/internal/telephony/RIL;->serviceToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " < "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p4, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    .line 5538
    invoke-static {p1}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 5537
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    return-object p4

    :catchall_60
    move-exception p0

    .line 5528
    :try_start_61
    monitor-exit v0
    :try_end_62
    .catchall {:try_start_61 .. :try_end_62} :catchall_60

    throw p0

    .line 5544
    :cond_63
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/RIL;->findAndRemoveRequestFromList(I)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-nez v0, :cond_87

    .line 5546
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "processResponse: Unexpected response! serial: "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", error: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->riljLoge(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    .line 5550
    :cond_87
    const-string p2, "RIL"

    iget v1, v0, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    const-wide/32 v2, 0x200000

    invoke-static {v2, v3, p2, v1}, Landroid/os/Trace;->asyncTraceForTrackEnd(JLjava/lang/String;I)V

    .line 5553
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->addToRilHistogram(Lcom/android/internal/telephony/RILRequest;)V

    .line 5554
    iget-object p2, p0, Lcom/android/internal/telephony/RIL;->mRadioBugDetector:Lcom/android/internal/telephony/RadioBugDetector;

    if-eqz p2, :cond_9d

    .line 5555
    iget v1, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-virtual {p2, v1, p3}, Lcom/android/internal/telephony/RadioBugDetector;->detectRadioBug(II)V

    :cond_9d
    const/4 p2, 0x2

    if-ne p4, p2, :cond_da

    .line 5558
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->sendAck(I)V

    .line 5560
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Response received from "

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/internal/telephony/RIL;->serviceToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " for "

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5561
    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {p1}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " Sending ack to ril.cpp"

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 5560
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 5571
    :cond_da
    iget p1, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    const/4 p4, 0x3

    const/4 v1, 0x0

    if-eq p1, p4, :cond_ec

    const/4 p4, 0x5

    if-eq p1, p4, :cond_ec

    const/16 p4, 0x81

    if-eq p1, p4, :cond_e8

    goto :goto_10f

    .line 5583
    :cond_e8
    invoke-virtual {p0, p2, v1}, Lcom/android/internal/telephony/BaseCommands;->setRadioState(IZ)V

    goto :goto_10f

    .line 5574
    :cond_ec
    iget-object p1, p0, Lcom/android/internal/telephony/BaseCommands;->mIccStatusChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    if-eqz p1, :cond_10f

    .line 5576
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "ON enter sim puk fakeSimStatusChanged: reg count="

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p0, Lcom/android/internal/telephony/BaseCommands;->mIccStatusChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 5577
    invoke-virtual {p4}, Lcom/android/internal/telephony/RegistrantList;->size()I

    move-result p4

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 5576
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 5579
    iget-object p1, p0, Lcom/android/internal/telephony/BaseCommands;->mIccStatusChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p1}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants()V

    :cond_10f
    :goto_10f
    if-eqz p3, :cond_147

    .line 5589
    iget p1, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    if-eq p1, p2, :cond_123

    const/4 p2, 0x4

    if-eq p1, p2, :cond_123

    const/16 p2, 0x2b

    if-eq p1, p2, :cond_123

    const/4 p2, 0x6

    if-eq p1, p2, :cond_123

    const/4 p2, 0x7

    if-eq p1, p2, :cond_123

    goto :goto_164

    .line 5595
    :cond_123
    iget-object p1, p0, Lcom/android/internal/telephony/BaseCommands;->mIccStatusChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    if-eqz p1, :cond_164

    .line 5597
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "ON some errors fakeSimStatusChanged: reg count="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/internal/telephony/BaseCommands;->mIccStatusChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 5598
    invoke-virtual {p2}, Lcom/android/internal/telephony/RegistrantList;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 5597
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 5600
    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mIccStatusChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants()V

    return-object v0

    .line 5606
    :cond_147
    iget p1, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    const/16 p2, 0xe

    if-eq p1, p2, :cond_14e

    goto :goto_164

    .line 5608
    :cond_14e
    iget-object p1, p0, Lcom/android/internal/telephony/RIL;->mTestingEmergencyCall:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result p1

    if-eqz p1, :cond_164

    .line 5609
    iget-object p1, p0, Lcom/android/internal/telephony/BaseCommands;->mEmergencyCallbackModeRegistrant:Lcom/android/internal/telephony/Registrant;

    if-eqz p1, :cond_164

    .line 5610
    const-string p1, "testing emergency call, notify ECM Registrants"

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 5611
    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mEmergencyCallbackModeRegistrant:Lcom/android/internal/telephony/Registrant;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Registrant;->notifyRegistrant()V

    :cond_164
    :goto_164
    return-object v0
.end method

.method private blacklist radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V
    .registers 6

    .line 1321
    :try_start_0
    invoke-interface {p4}, Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;->runOrThrow()V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_3} :catch_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    return-void

    :catch_4
    move-exception p2

    .line 1329
    invoke-direct {p0, p1, p3, p2}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    goto :goto_2d

    :catch_9
    move-exception p4

    .line 1323
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " RuntimeException: "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Lcom/android/internal/telephony/RIL;->riljLoge(Ljava/lang/String;)V

    .line 1326
    iget p3, p2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    const/16 p4, 0x27

    const/4 v0, 0x0

    invoke-direct {p0, p1, p3, p4, v0}, Lcom/android/internal/telephony/RIL;->processResponseInternal(IIII)Lcom/android/internal/telephony/RILRequest;

    const/4 p1, 0x0

    .line 1327
    invoke-direct {p0, p2, p4, v0, p1}, Lcom/android/internal/telephony/RIL;->processResponseDoneInternal(Lcom/android/internal/telephony/RILRequest;IILjava/lang/Object;)V

    :goto_2d
    return-void
.end method

.method private declared-synchronized blacklist resetProxyAndRequestList(I)V
    .registers 7

    monitor-enter p0

    const/4 v0, 0x7

    const/4 v1, 0x0

    if-nez p1, :cond_17

    const/4 v2, 0x0

    .line 504
    :try_start_6
    iput-object v2, p0, Lcom/android/internal/telephony/RIL;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    .line 506
    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mServiceCookies:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    goto :goto_57

    :catchall_14
    move-exception p1

    goto/16 :goto_96

    :cond_17
    move v2, v1

    :goto_18
    if-gt v2, v0, :cond_57

    if-nez v2, :cond_1d

    goto :goto_54

    .line 511
    :cond_1d
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mServiceProxies:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_3e

    .line 513
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Null service proxy for service "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->serviceToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/RIL;->riljLoge(Ljava/lang/String;)V

    goto :goto_54

    .line 516
    :cond_3e
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mServiceProxies:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/RadioServiceProxy;

    invoke-virtual {v3}, Lcom/android/internal/telephony/RadioServiceProxy;->clear()V

    .line 518
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mServiceCookies:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    :goto_54
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    :cond_57
    :goto_57
    const/4 v2, 0x2

    const/4 v3, 0x1

    .line 522
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/BaseCommands;->setRadioState(IZ)V

    .line 524
    invoke-static {}, Lcom/android/internal/telephony/RILRequest;->resetSerial()V

    .line 526
    invoke-direct {p0, v3, v1}, Lcom/android/internal/telephony/RIL;->clearRequestList(IZ)V

    if-nez p1, :cond_68

    .line 529
    invoke-virtual {p0}, Lcom/android/internal/telephony/RIL;->getRadioProxy()Landroid/hardware/radio/V1_0/IRadio;

    goto :goto_94

    :cond_68
    :goto_68
    if-gt v1, v0, :cond_94

    if-nez v1, :cond_6d

    goto :goto_91

    .line 534
    :cond_6d
    iget-object p1, p0, Lcom/android/internal/telephony/RIL;->mServiceProxies:Landroid/util/SparseArray;

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_8e

    .line 536
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Null service proxy for service "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/android/internal/telephony/RIL;->serviceToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->riljLoge(Ljava/lang/String;)V

    goto :goto_91

    .line 539
    :cond_8e
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(I)Lcom/android/internal/telephony/RadioServiceProxy;
    :try_end_91
    .catchall {:try_start_6 .. :try_end_91} :catchall_14

    :goto_91
    add-int/lit8 v1, v1, 0x1

    goto :goto_68

    .line 542
    :cond_94
    :goto_94
    monitor-exit p0

    return-void

    :goto_96
    :try_start_96
    monitor-exit p0
    :try_end_97
    .catchall {:try_start_96 .. :try_end_97} :catchall_14

    throw p1
.end method

.method static greylist retToString(ILjava/lang/Object;)Ljava/lang/String;
    .registers 11

    .line 5964
    const-string v0, ""

    if-nez p1, :cond_5

    return-object v0

    :cond_5
    const/16 v1, 0xb

    if-eq p0, v1, :cond_1dc

    const/16 v1, 0x73

    if-eq p0, v1, :cond_1dc

    const/16 v1, 0x75

    if-eq p0, v1, :cond_1dc

    const/16 v1, 0x26

    if-eq p0, v1, :cond_1dc

    const/16 v1, 0x27

    if-eq p0, v1, :cond_1dc

    .line 5982
    instance-of v0, p1, [I

    const-string v1, "}"

    const-string v2, ", "

    const-string v3, "{"

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v0, :cond_4a

    .line 5983
    check-cast p1, [I

    .line 5984
    array-length p0, p1

    .line 5985
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-lez p0, :cond_42

    .line 5988
    aget v3, p1, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_34
    if-ge v5, p0, :cond_42

    .line 5990
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v5, 0x1

    aget v4, p1, v5

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move v5, v3

    goto :goto_34

    .line 5993
    :cond_42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5994
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 5995
    :cond_4a
    instance-of v0, p1, [Ljava/lang/String;

    const-string v6, "RILJ"

    if-eqz v0, :cond_83

    .line 5996
    check-cast p1, [Ljava/lang/String;

    .line 5997
    array-length v0, p1

    .line 5998
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-lez v0, :cond_7b

    const/16 v3, 0x62

    if-ne p0, v3, :cond_68

    .line 6003
    aget-object p0, p1, v4

    invoke-static {v6, p0}, Lcom/android/telephony/Rlog;->pii(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6d

    .line 6005
    :cond_68
    aget-object p0, p1, v4

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_6d
    if-ge v5, v0, :cond_7b

    .line 6008
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p0, v5, 0x1

    aget-object v3, p1, v5

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v5, p0

    goto :goto_6d

    .line 6011
    :cond_7b
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6012
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_83
    const/16 v0, 0x98

    if-ne p0, v0, :cond_af

    .line 6014
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6015
    check-cast p1, Landroid/hardware/radio/modem/ImeiInfo;

    .line 6017
    iget-object v0, p1, Landroid/hardware/radio/modem/ImeiInfo;->imei:Ljava/lang/String;

    invoke-static {v6, v0}, Lcom/android/telephony/Rlog;->pii(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6018
    iget v0, p1, Landroid/hardware/radio/modem/ImeiInfo;->type:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6019
    iget-object p1, p1, Landroid/hardware/radio/modem/ImeiInfo;->svn:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6021
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6022
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_af
    const/16 v0, 0x9

    .line 6023
    const-string v7, "] "

    const-string v8, "["

    if-ne p0, v0, :cond_de

    .line 6024
    check-cast p1, Ljava/util/ArrayList;

    .line 6025
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6026
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_c2
    if-ge v4, v0, :cond_d6

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v4, v4, 0x1

    check-cast v2, Lcom/android/internal/telephony/DriverCall;

    .line 6027
    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_c2

    .line 6029
    :cond_d6
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6030
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_de
    const/16 v0, 0x4b

    if-ne p0, v0, :cond_109

    .line 6032
    check-cast p1, Ljava/util/ArrayList;

    .line 6033
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6034
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_ed
    if-ge v4, v0, :cond_101

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v4, v4, 0x1

    check-cast v2, Landroid/telephony/NeighboringCellInfo;

    .line 6035
    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_ed

    .line 6037
    :cond_101
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6038
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_109
    const/16 v0, 0x21

    if-ne p0, v0, :cond_12d

    .line 6040
    check-cast p1, [Lcom/android/internal/telephony/CallForwardInfo;

    .line 6041
    array-length p0, p1

    .line 6042
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_115
    if-ge v4, p0, :cond_125

    .line 6044
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, p1, v4

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_115

    .line 6046
    :cond_125
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6047
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_12d
    const/16 v0, 0x7c

    if-ne p0, v0, :cond_157

    .line 6049
    check-cast p1, Ljava/util/ArrayList;

    .line 6050
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6051
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_13e
    if-ge v4, v0, :cond_152

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v4, v4, 0x1

    check-cast v1, Lcom/android/internal/telephony/HardwareConfig;

    .line 6052
    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_13e

    .line 6054
    :cond_152
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_157
    const/16 v0, 0xeb

    if-eq p0, v0, :cond_198

    const/16 v0, 0x454

    if-ne p0, v0, :cond_160

    goto :goto_198

    .line 6078
    :cond_160
    :try_start_160
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    const-string v0, "toString"

    new-array v1, v4, [Ljava/lang/Class;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object p0

    const-class v0, Ljava/lang/Object;
    :try_end_173
    .catch Ljava/lang/NoSuchMethodException; {:try_start_160 .. :try_end_173} :catch_17a

    if-eq p0, v0, :cond_182

    .line 6084
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catch_17a
    move-exception p0

    .line 6081
    invoke-virtual {p0}, Ljava/lang/NoSuchMethodException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v6, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6086
    :cond_182
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/android/internal/telephony/RILUtils;->convertToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " [convertToString]"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 6057
    :cond_198
    :goto_198
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6058
    check-cast p1, [Ljava/lang/Object;

    .line 6059
    aget-object v0, p1, v4

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 6060
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6061
    aget-object p1, p1, v5

    if-eqz p1, :cond_1cf

    .line 6062
    check-cast p1, Landroid/telephony/ims/feature/ConnectionFailureInfo;

    .line 6063
    invoke-virtual {p1}, Landroid/telephony/ims/feature/ConnectionFailureInfo;->getReason()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6064
    invoke-virtual {p1}, Landroid/telephony/ims/feature/ConnectionFailureInfo;->getCauseCode()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6065
    invoke-virtual {p1}, Landroid/telephony/ims/feature/ConnectionFailureInfo;->getWaitTimeMillis()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1d4

    .line 6067
    :cond_1cf
    const-string p1, "null"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6069
    :goto_1d4
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6070
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1dc
    return-object v0
.end method

.method private blacklist sendAck(I)V
    .registers 7

    const/4 v0, 0x0

    .line 5720
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v2, 0x320

    invoke-static {v2, v0, v1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    const/4 v1, 0x1

    .line 5722
    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/RIL;->acquireWakeLock(Lcom/android/internal/telephony/RILRequest;I)V

    .line 5723
    const-string v1, "sendAck: "

    const-string v2, "sendAck"

    if-nez p1, :cond_3b

    .line 5724
    invoke-virtual {p0}, Lcom/android/internal/telephony/RIL;->getRadioProxy()Landroid/hardware/radio/V1_0/IRadio;

    move-result-object p1

    if-eqz p1, :cond_35

    .line 5727
    :try_start_19
    invoke-interface {p1}, Landroid/hardware/radio/V1_0/IRadio;->responseAcknowledgement()V
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_1c} :catch_1d
    .catch Ljava/lang/RuntimeException; {:try_start_19 .. :try_end_1c} :catch_1d

    goto :goto_65

    :catch_1d
    move-exception p1

    const/4 v3, 0x0

    .line 5729
    invoke-direct {p0, v3, v2, p1}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 5730
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->riljLoge(Ljava/lang/String;)V

    goto :goto_65

    .line 5733
    :cond_35
    const-string p1, "Error trying to send ack, radioProxy = null"

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->riljLoge(Ljava/lang/String;)V

    goto :goto_65

    .line 5736
    :cond_3b
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(I)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v3

    .line 5737
    invoke-virtual {v3}, Lcom/android/internal/telephony/RadioServiceProxy;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_60

    .line 5739
    :try_start_45
    invoke-virtual {v3}, Lcom/android/internal/telephony/RadioServiceProxy;->responseAcknowledgement()V
    :try_end_48
    .catch Landroid/os/RemoteException; {:try_start_45 .. :try_end_48} :catch_49
    .catch Ljava/lang/RuntimeException; {:try_start_45 .. :try_end_48} :catch_49

    goto :goto_65

    :catch_49
    move-exception v3

    .line 5741
    invoke-direct {p0, p1, v2, v3}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 5742
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->riljLoge(Ljava/lang/String;)V

    goto :goto_65

    .line 5745
    :cond_60
    const-string p1, "Error trying to send ack, serviceProxy is empty"

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->riljLoge(Ljava/lang/String;)V

    .line 5748
    :goto_65
    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->release()V

    return-void
.end method

.method private static blacklist serviceToString(I)Ljava/lang/String;
    .registers 3

    packed-switch p0, :pswitch_data_2e

    .line 6349
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 6347
    :pswitch_15
    const-string p0, "IMS"

    return-object p0

    .line 6345
    :pswitch_18
    const-string p0, "VOICE"

    return-object p0

    .line 6343
    :pswitch_1b
    const-string p0, "SIM"

    return-object p0

    .line 6341
    :pswitch_1e
    const-string p0, "NETWORK"

    return-object p0

    .line 6339
    :pswitch_21
    const-string p0, "MODEM"

    return-object p0

    .line 6337
    :pswitch_24
    const-string p0, "MESSAGING"

    return-object p0

    .line 6335
    :pswitch_27
    const-string p0, "DATA"

    return-object p0

    .line 6333
    :pswitch_2a
    const-string p0, "RADIO"

    return-object p0

    nop

    :pswitch_data_2e
    .packed-switch 0x0
        :pswitch_2a
        :pswitch_27
        :pswitch_24
        :pswitch_21
        :pswitch_1e
        :pswitch_1b
        :pswitch_18
        :pswitch_15
    .end packed-switch
.end method

.method private blacklist setVoNrEnabled(Z)V
    .registers 4

    .line 3113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "persist.radio.is_vonr_enabled_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/RIL;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private blacklist validateFeatureFlags()V
    .registers 9

    .line 1253
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1254
    sget-object v1, Lcom/android/internal/telephony/RIL;->FEATURES_TO_SERVICES:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_10
    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_87

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1255
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1256
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1258
    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    .line 1259
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/RIL;->isRadioServiceSupported(I)Z

    move-result v5

    if-eqz v4, :cond_5d

    if-nez v5, :cond_5d

    .line 1262
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Feature "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " is declared, but service "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1263
    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->serviceToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " is missing"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1262
    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/RIL;->riljLoge(Ljava/lang/String;)V

    :cond_5d
    if-nez v4, :cond_10

    if-eqz v5, :cond_10

    .line 1266
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Service "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->serviceToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is available, but feature "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is not declared"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/RIL;->riljLoge(Ljava/lang/String;)V

    goto :goto_10

    :cond_87
    return-void
.end method


# virtual methods
.method public blacklist acceptCall(Landroid/os/Message;)V
    .registers 6

    .line 2358
    const-class v0, Lcom/android/internal/telephony/RadioVoiceProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RadioVoiceProxy;

    .line 2359
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    const-string v2, "acceptCall"

    invoke-direct {p0, v2, v0, p1, v1}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-nez v1, :cond_13

    return-void

    :cond_13
    const/16 v1, 0x28

    .line 2363
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p1

    .line 2366
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2369
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda52;

    invoke-direct {v1, p0, v0, p1}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda52;-><init>(Lcom/android/internal/telephony/RIL;Lcom/android/internal/telephony/RadioVoiceProxy;Lcom/android/internal/telephony/RILRequest;)V

    const/4 v0, 0x6

    invoke-direct {p0, v0, p1, v2, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist acknowledgeIncomingGsmSmsWithPdu(ZLjava/lang/String;Landroid/os/Message;)V
    .registers 8

    .line 3800
    const-class v0, Lcom/android/internal/telephony/RadioMessagingProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RadioMessagingProxy;

    .line 3801
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    const-string v2, "acknowledgeIncomingGsmSmsWithPdu"

    invoke-direct {p0, v2, v0, p3, v1}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-nez v1, :cond_13

    return-void

    :cond_13
    const/16 v1, 0x6a

    .line 3806
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p3, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p3

    .line 3810
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " success = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 3814
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda3;

    invoke-direct {v1, v0, p3, p1, p2}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda3;-><init>(Lcom/android/internal/telephony/RadioMessagingProxy;Lcom/android/internal/telephony/RILRequest;ZLjava/lang/String;)V

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3, v2, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist acknowledgeLastIncomingCdmaSms(ZILandroid/os/Message;)V
    .registers 4

    .line 0
    return-void
.end method

.method public blacklist acknowledgeLastIncomingGsmSms(ZILandroid/os/Message;)V
    .registers 8

    .line 2338
    const-class v0, Lcom/android/internal/telephony/RadioMessagingProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RadioMessagingProxy;

    .line 2339
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    const-string v2, "acknowledgeLastIncomingGsmSms"

    invoke-direct {p0, v2, v0, p3, v1}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-nez v1, :cond_13

    return-void

    :cond_13
    const/16 v1, 0x25

    .line 2344
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p3, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p3

    .line 2347
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " success = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " cause = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2351
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda133;

    invoke-direct {v1, v0, p3, p1, p2}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda133;-><init>(Lcom/android/internal/telephony/RadioMessagingProxy;Lcom/android/internal/telephony/RILRequest;ZI)V

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3, v2, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist allocatePduSessionId(Landroid/os/Message;)V
    .registers 6

    .line 4690
    const-class v0, Lcom/android/internal/telephony/RadioDataProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RadioDataProxy;

    .line 4691
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_6:Lcom/android/internal/telephony/HalVersion;

    const-string v2, "allocatePduSessionId"

    invoke-direct {p0, v2, v0, p1, v1}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-nez v1, :cond_13

    return-void

    :cond_13
    const/16 v1, 0xd7

    .line 4695
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p1

    .line 4698
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 4701
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda123;

    invoke-direct {v1, v0, p1}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda123;-><init>(Lcom/android/internal/telephony/RadioDataProxy;Lcom/android/internal/telephony/RILRequest;)V

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, v2, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist areUiccApplicationsEnabled(Landroid/os/Message;)V
    .registers 6

    .line 4614
    const-class v0, Lcom/android/internal/telephony/RadioSimProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RadioSimProxy;

    .line 4615
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_5:Lcom/android/internal/telephony/HalVersion;

    const-string v2, "areUiccApplicationsEnabled"

    invoke-direct {p0, v2, v0, p1, v1}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-nez v1, :cond_13

    return-void

    :cond_13
    const/16 v1, 0xd1

    .line 4620
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p1

    .line 4624
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 4627
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda49;

    invoke-direct {v1, v0, p1}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda49;-><init>(Lcom/android/internal/telephony/RadioSimProxy;Lcom/android/internal/telephony/RILRequest;)V

    const/4 v0, 0x5

    invoke-direct {p0, v0, p1, v2, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist canToggleUiccApplicationsEnablement()Z
    .registers 5

    .line 4637
    const-class v0, Lcom/android/internal/telephony/RadioSimProxy;

    .line 4638
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    const/4 v1, 0x0

    sget-object v2, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_5:Lcom/android/internal/telephony/HalVersion;

    .line 4637
    const-string v3, "canToggleUiccApplicationsEnablement"

    invoke-direct {p0, v3, v0, v1, v2}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result p0

    return p0
.end method

.method public blacklist cancelEmergencyNetworkScan(ZLandroid/os/Message;)V
    .registers 7

    .line 5082
    const-class v0, Lcom/android/internal/telephony/RadioNetworkProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RadioNetworkProxy;

    .line 5083
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_2_1:Lcom/android/internal/telephony/HalVersion;

    const-string v2, "cancelEmergencyNetworkScan"

    invoke-direct {p0, v2, v0, p2, v1}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-nez v1, :cond_13

    return-void

    :cond_13
    const/16 v1, 0xe7

    .line 5088
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p2

    .line 5092
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " resetScan="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 5096
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda26;

    invoke-direct {v1, v0, p2, p1}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda26;-><init>(Lcom/android/internal/telephony/RadioNetworkProxy;Lcom/android/internal/telephony/RILRequest;Z)V

    const/4 p1, 0x4

    invoke-direct {p0, p1, p2, v2, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist cancelHandover(Landroid/os/Message;I)V
    .registers 7

    .line 4752
    const-class v0, Lcom/android/internal/telephony/RadioDataProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RadioDataProxy;

    .line 4753
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_6:Lcom/android/internal/telephony/HalVersion;

    const-string v2, "cancelHandover"

    invoke-direct {p0, v2, v0, p1, v1}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-nez v1, :cond_13

    return-void

    :cond_13
    const/16 v1, 0xda

    .line 4757
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p1

    .line 4759
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 4762
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda159;

    invoke-direct {v1, v0, p1, p2}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda159;-><init>(Lcom/android/internal/telephony/RadioDataProxy;Lcom/android/internal/telephony/RILRequest;I)V

    const/4 p2, 0x1

    invoke-direct {p0, p2, p1, v2, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist cancelPendingUssd(Landroid/os/Message;)V
    .registers 6

    .line 2201
    const-class v0, Lcom/android/internal/telephony/RadioVoiceProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RadioVoiceProxy;

    .line 2202
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    const-string v2, "cancelPendingUssd"

    invoke-direct {p0, v2, v0, p1, v1}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-nez v1, :cond_13

    return-void

    :cond_13
    const/16 v1, 0x1e

    .line 2206
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p1

    .line 2209
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2212
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda152;

    invoke-direct {v1, v0, p1}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda152;-><init>(Lcom/android/internal/telephony/RadioVoiceProxy;Lcom/android/internal/telephony/RILRequest;)V

    const/4 v0, 0x6

    invoke-direct {p0, v0, p1, v2, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist changeBarringPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 13

    .line 2462
    const-class v0, Lcom/android/internal/telephony/RadioNetworkProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/internal/telephony/RadioNetworkProxy;

    .line 2463
    sget-object v0, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    const-string v7, "changeBarringPassword"

    invoke-direct {p0, v7, v2, p4, v0}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-nez v0, :cond_14

    return-void

    :cond_14
    const/16 v0, 0x2c

    .line 2467
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v0, p4, v1}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v3

    .line 2472
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "> "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v0}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "facility = "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p0, p4}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2476
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda154;

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda154;-><init>(Lcom/android/internal/telephony/RadioNetworkProxy;Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x4

    invoke-direct {p0, p1, v3, v7, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist changeIccPin(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 5

    const/4 v0, 0x0

    .line 1513
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/internal/telephony/RIL;->changeIccPinForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method public blacklist changeIccPin2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 5

    const/4 v0, 0x0

    .line 1540
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/internal/telephony/RIL;->changeIccPin2ForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method public blacklist changeIccPin2ForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 13

    .line 1545
    const-class v0, Lcom/android/internal/telephony/RadioSimProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/internal/telephony/RadioSimProxy;

    .line 1546
    sget-object v0, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    const-string v7, "changeIccPin2ForApp"

    invoke-direct {p0, v7, v2, p4, v0}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-nez v0, :cond_14

    return-void

    :cond_14
    const/4 v0, 0x7

    .line 1550
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v0, p4, v1}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v3

    .line 1553
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "> "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v0}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " oldPin = "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " newPin = "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " aid = "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p0, p4}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1557
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda118;

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda118;-><init>(Lcom/android/internal/telephony/RadioSimProxy;Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x5

    invoke-direct {p0, p1, v3, v7, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist changeIccPinForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 13

    .line 1518
    const-class v0, Lcom/android/internal/telephony/RadioSimProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/internal/telephony/RadioSimProxy;

    .line 1519
    sget-object v0, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    const-string v7, "changeIccPinForApp"

    invoke-direct {p0, v7, v2, p4, v0}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-nez v0, :cond_14

    return-void

    :cond_14
    const/4 v0, 0x6

    .line 1523
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v0, p4, v1}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v3

    .line 1526
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "> "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v0}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " oldPin = "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " newPin = "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " aid = "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p0, p4}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1530
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda1;

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/telephony/RadioSimProxy;Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x5

    invoke-direct {p0, p1, v3, v7, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist conference(Landroid/os/Message;)V
    .registers 6

    .line 1871
    const-class v0, Lcom/android/internal/telephony/RadioVoiceProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RadioVoiceProxy;

    .line 1872
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    const-string v2, "conference"

    invoke-direct {p0, v2, v0, p1, v1}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-nez v1, :cond_13

    return-void

    :cond_13
    const/16 v1, 0x10

    .line 1876
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p1

    .line 1879
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1882
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda102;

    invoke-direct {v1, v0, p1}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda102;-><init>(Lcom/android/internal/telephony/RadioVoiceProxy;Lcom/android/internal/telephony/RILRequest;)V

    const/4 v0, 0x6

    invoke-direct {p0, v0, p1, v2, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist deactivateDataCall(IILandroid/os/Message;)V
    .registers 12

    .line 2377
    const-class v0, Lcom/android/internal/telephony/RadioDataProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/internal/telephony/RadioDataProxy;

    .line 2378
    sget-object v0, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    const-string v7, "deactivateDataCall"

    invoke-direct {p0, v7, v3, p3, v0}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-nez v0, :cond_14

    return-void

    :cond_14
    const/16 v0, 0x29

    .line 2382
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v0, p3, v1}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v4

    .line 2386
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "> "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v4, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v0}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " cid = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " reason = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2388
    invoke-static {p2}, Lcom/android/internal/telephony/RILUtils;->deactivateDataReasonToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 2386
    invoke-virtual {p0, p3}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2391
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda17;

    move-object v2, p0

    move v5, p1

    move v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda17;-><init>(Lcom/android/internal/telephony/RIL;Lcom/android/internal/telephony/RadioDataProxy;Lcom/android/internal/telephony/RILRequest;II)V

    const/4 p0, 0x1

    invoke-direct {v2, p0, v4, v7, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist deleteSmsOnRuim(ILandroid/os/Message;)V
    .registers 3

    .line 0
    return-void
.end method

.method public blacklist deleteSmsOnSim(ILandroid/os/Message;)V
    .registers 7

    .line 2807
    const-class v0, Lcom/android/internal/telephony/RadioMessagingProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RadioMessagingProxy;

    .line 2808
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    const-string v2, "deleteSmsOnSim"

    invoke-direct {p0, v2, v0, p2, v1}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-nez v1, :cond_13

    return-void

    :cond_13
    const/16 v1, 0x40

    .line 2812
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p2

    .line 2819
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda23;

    invoke-direct {v1, v0, p2, p1}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda23;-><init>(Lcom/android/internal/telephony/RadioMessagingProxy;Lcom/android/internal/telephony/RILRequest;I)V

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2, v2, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist dial(Ljava/lang/String;ZLandroid/telephony/emergency/EmergencyNumber;ZILandroid/os/Message;)V
    .registers 15

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object v7, p6

    .line 1636
    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/telephony/RIL;->dial(Ljava/lang/String;ZLandroid/telephony/emergency/EmergencyNumber;ZILcom/android/internal/telephony/UUSInfo;Landroid/os/Message;)V

    return-void
.end method

.method public blacklist dial(Ljava/lang/String;ZLandroid/telephony/emergency/EmergencyNumber;ZILcom/android/internal/telephony/UUSInfo;Landroid/os/Message;)V
    .registers 9

    if-eqz p2, :cond_d

    if-eqz p3, :cond_d

    move-object p2, p3

    move p3, p4

    move p4, p5

    move-object p5, p6

    move-object p6, p7

    .line 1724
    invoke-direct/range {p0 .. p6}, Lcom/android/internal/telephony/RIL;->emergencyDial(Ljava/lang/String;Landroid/telephony/emergency/EmergencyNumber;ZILcom/android/internal/telephony/UUSInfo;Landroid/os/Message;)V

    return-void

    :cond_d
    move p4, p5

    move-object p5, p6

    move-object p6, p7

    .line 1728
    const-class p2, Lcom/android/internal/telephony/RadioVoiceProxy;

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object p2

    check-cast p2, Lcom/android/internal/telephony/RadioVoiceProxy;

    .line 1729
    sget-object p3, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    const-string p7, "dial"

    invoke-direct {p0, p7, p2, p6, p3}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result p3

    if-nez p3, :cond_23

    return-void

    :cond_23
    const/16 p3, 0xa

    .line 1733
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, p3, p6, v0}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p3

    .line 1737
    new-instance p6, Ljava/lang/StringBuilder;

    invoke-direct {p6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "> "

    invoke-virtual {p6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v0}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p6

    invoke-virtual {p0, p6}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    move-object p6, p5

    move p5, p4

    move-object p4, p1

    .line 1740
    new-instance p1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda56;

    invoke-direct/range {p1 .. p6}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda56;-><init>(Lcom/android/internal/telephony/RadioVoiceProxy;Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;)V

    const/4 p2, 0x6

    invoke-direct {p0, p2, p3, p7, p1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 8

    .line 6260
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "RIL: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6261
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, " "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/internal/telephony/RIL;->mServiceProxies:Landroid/util/SparseArray;

    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6262
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, " "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/internal/telephony/RIL;->mServiceProxies:Landroid/util/SparseArray;

    const/4 v0, 0x2

    invoke-virtual {p3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6263
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, " "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/internal/telephony/RIL;->mServiceProxies:Landroid/util/SparseArray;

    const/4 v0, 0x3

    invoke-virtual {p3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6264
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, " "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/internal/telephony/RIL;->mServiceProxies:Landroid/util/SparseArray;

    const/4 v0, 0x4

    invoke-virtual {p3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6265
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, " "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/internal/telephony/RIL;->mServiceProxies:Landroid/util/SparseArray;

    const/4 v0, 0x5

    invoke-virtual {p3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6266
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, " "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/internal/telephony/RIL;->mServiceProxies:Landroid/util/SparseArray;

    const/4 v0, 0x6

    invoke-virtual {p3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6267
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, " "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/internal/telephony/RIL;->mServiceProxies:Landroid/util/SparseArray;

    const/4 v0, 0x7

    invoke-virtual {p3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6268
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, " mWakeLock="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/internal/telephony/RIL;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6269
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, " mWakeLockTimeout="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/android/internal/telephony/RIL;->mWakeLockTimeout:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6270
    iget-object p1, p0, Lcom/android/internal/telephony/RIL;->mRequestList:Landroid/util/SparseArray;

    monitor-enter p1

    .line 6271
    :try_start_100
    iget-object p3, p0, Lcom/android/internal/telephony/RIL;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter p3
    :try_end_103
    .catchall {:try_start_100 .. :try_end_103} :catchall_166

    .line 6272
    :try_start_103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mWakeLockCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/RIL;->mWakeLockCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6273
    monitor-exit p3
    :try_end_11a
    .catchall {:try_start_103 .. :try_end_11a} :catchall_1b9

    .line 6274
    :try_start_11a
    iget-object p3, p0, Lcom/android/internal/telephony/RIL;->mRequestList:Landroid/util/SparseArray;

    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    move-result p3

    .line 6275
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mRequestList count="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_135
    if-ge v0, p3, :cond_168

    .line 6277
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mRequestList:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/RILRequest;

    .line 6278
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v1}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_135

    :catchall_166
    move-exception p0

    goto :goto_1bc

    .line 6280
    :cond_168
    monitor-exit p1
    :try_end_169
    .catchall {:try_start_11a .. :try_end_169} :catchall_166

    .line 6281
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, " mLastNITZTimeInfo="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/internal/telephony/RIL;->mLastNITZTimeInfo:[Ljava/lang/Object;

    invoke-static {p3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6282
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, " mLastRadioPowerResult="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/android/internal/telephony/RIL;->mLastRadioPowerResult:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6283
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, " mTestingEmergencyCall="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/internal/telephony/RIL;->mTestingEmergencyCall:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6284
    iget-object p0, p0, Lcom/android/internal/telephony/RIL;->mClientWakelockTracker:Lcom/android/internal/telephony/ClientWakelockTracker;

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/ClientWakelockTracker;->dumpClientRequestTracker(Ljava/io/PrintWriter;)V

    return-void

    :catchall_1b9
    move-exception p0

    .line 6273
    :try_start_1ba
    monitor-exit p3
    :try_end_1bb
    .catchall {:try_start_1ba .. :try_end_1bb} :catchall_1b9

    :try_start_1bb
    throw p0

    .line 6280
    :goto_1bc
    monitor-exit p1
    :try_end_1bd
    .catchall {:try_start_1bb .. :try_end_1bd} :catchall_166

    throw p0
.end method

.method public blacklist enableModem(ZLandroid/os/Message;)V
    .registers 7

    .line 1642
    const-class v0, Lcom/android/internal/telephony/RadioModemProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RadioModemProxy;

    .line 1643
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    const-string v2, "enableModem"

    invoke-direct {p0, v2, v0, p2, v1}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-nez v1, :cond_13

    return-void

    :cond_13
    const/16 v1, 0x92

    .line 1647
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p2

    .line 1650
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " enable = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1654
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda80;

    invoke-direct {v1, v0, p2, p1}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda80;-><init>(Lcom/android/internal/telephony/RadioModemProxy;Lcom/android/internal/telephony/RILRequest;Z)V

    const/4 p1, 0x3

    invoke-direct {p0, p1, p2, v2, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist enableUiccApplications(ZLandroid/os/Message;)V
    .registers 7

    .line 4589
    const-class v0, Lcom/android/internal/telephony/RadioSimProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RadioSimProxy;

    .line 4590
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_5:Lcom/android/internal/telephony/HalVersion;

    const-string v2, "enableUiccApplications"

    invoke-direct {p0, v2, v0, p2, v1}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-nez v1, :cond_13

    return-void

    :cond_13
    const/16 v1, 0xd0

    .line 4594
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p2

    .line 4598
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 4602
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda134;

    invoke-direct {v1, v0, p2, p1}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda134;-><init>(Lcom/android/internal/telephony/RadioSimProxy;Lcom/android/internal/telephony/RILRequest;Z)V

    const/4 p1, 0x5

    invoke-direct {p0, p1, p2, v2, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist exitEmergencyCallbackMode(Landroid/os/Message;)V
    .registers 6

    .line 3682
    const-class v0, Lcom/android/internal/telephony/RadioVoiceProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RadioVoiceProxy;

    .line 3683
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    const-string v2, "exitEmergencyCallbackMode"

    invoke-direct {p0, v2, v0, p1, v1}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-nez v1, :cond_13

    return-void

    :cond_13
    const/16 v1, 0x63

    .line 3688
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p1

    .line 3692
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 3695
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda157;

    invoke-direct {v1, v0, p1}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda157;-><init>(Lcom/android/internal/telephony/RadioVoiceProxy;Lcom/android/internal/telephony/RILRequest;)V

    const/4 v0, 0x6

    invoke-direct {p0, v0, p1, v2, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist exitEmergencyMode(Landroid/os/Message;)V
    .registers 6

    .line 5106
    const-class v0, Lcom/android/internal/telephony/RadioNetworkProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RadioNetworkProxy;

    .line 5107
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_2_1:Lcom/android/internal/telephony/HalVersion;

    const-string v2, "exitEmergencyMode"

    invoke-direct {p0, v2, v0, p1, v1}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-nez v1, :cond_13

    return-void

    :cond_13
    const/16 v1, 0xe8

    .line 5111
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p1

    .line 5115
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 5118
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda24;

    invoke-direct {v1, v0, p1}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda24;-><init>(Lcom/android/internal/telephony/RadioNetworkProxy;Lcom/android/internal/telephony/RILRequest;)V

    const/4 v0, 0x4

    invoke-direct {p0, v0, p1, v2, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist explicitCallTransfer(Landroid/os/Message;)V
    .registers 6

    .line 2928
    const-class v0, Lcom/android/internal/telephony/RadioVoiceProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RadioVoiceProxy;

    .line 2929
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    const-string v2, "explicitCallTransfer"

    invoke-direct {p0, v2, v0, p1, v1}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-nez v1, :cond_13

    return-void

    :cond_13
    const/16 v1, 0x48

    .line 2933
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p1

    .line 2937
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2940
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda50;

    invoke-direct {v1, v0, p1}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda50;-><init>(Lcom/android/internal/telephony/RadioVoiceProxy;Lcom/android/internal/telephony/RILRequest;)V

    const/4 v0, 0x6

    invoke-direct {p0, v0, p1, v2, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist getAllowedCarriers(Landroid/os/Message;Landroid/os/WorkSource;)V
    .registers 6

    .line 4397
    const-class v0, Lcom/android/internal/telephony/RadioSimProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RadioSimProxy;

    .line 4398
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    const-string v2, "getAllowedCarriers"

    invoke-direct {p0, v2, v0, p1, v1}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-nez v1, :cond_13

    return-void

    :cond_13
    const/16 v1, 0x89

    .line 4403
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/RIL;->getDefaultWorkSourceIfInvalid(Landroid/os/WorkSource;)Landroid/os/WorkSource;

    move-result-object p2

    .line 4402
    invoke-direct {p0, v1, p1, p2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p1

    .line 4406
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "> "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v1}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 4409
    new-instance p2, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda12;

    invoke-direct {p2, v0, p1}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda12;-><init>(Lcom/android/internal/telephony/RadioSimProxy;Lcom/android/internal/telephony/RILRequest;)V

    const/4 v0, 0x5

    invoke-direct {p0, v0, p1, v2, p2}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist getAllowedNetworkTypesBitmap(Landroid/os/Message;)V
    .registers 6

    .line 3018
    const-class v0, Lcom/android/internal/telephony/RadioNetworkProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RadioNetworkProxy;

    .line 3019
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    const-string v2, "getAllowedNetworkTypesBitmap"

    invoke-direct {p0, v2, v0, p1, v1}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-nez v1, :cond_13

    return-void

    :cond_13
    const/16 v1, 0xdf

    .line 3024
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p1

    .line 3028
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 3031
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda145;

    invoke-direct {v1, v0, p1}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda145;-><init>(Lcom/android/internal/telephony/RadioNetworkProxy;Lcom/android/internal/telephony/RILRequest;)V

    const/4 v0, 0x4

    invoke-direct {p0, v0, p1, v2, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist getAvailableNetworks(Landroid/os/Message;)V
    .registers 6

    .line 2549
    const-class v0, Lcom/android/internal/telephony/RadioNetworkProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RadioNetworkProxy;

    .line 2550
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    const-string v2, "getAvailableNetworks"

    invoke-direct {p0, v2, v0, p1, v1}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-nez v1, :cond_13

    return-void

    :cond_13
    const/16 v1, 0x30

    .line 2554
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p1

    .line 2558
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2561
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda136;

    invoke-direct {v1, v0, p1}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda136;-><init>(Lcom/android/internal/telephony/RadioNetworkProxy;Lcom/android/internal/telephony/RILRequest;)V

    const/4 v0, 0x4

    invoke-direct {p0, v0, p1, v2, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist getBarringInfo(Landroid/os/Message;)V
    .registers 6

    .line 4669
    const-class v0, Lcom/android/internal/telephony/RadioNetworkProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RadioNetworkProxy;

    .line 4670
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_5:Lcom/android/internal/telephony/HalVersion;

    const-string v2, "getBarringInfo"

    invoke-direct {p0, v2, v0, p1, v1}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-nez v1, :cond_13

    return-void

    :cond_13
    const/16 v1, 0xd3

    .line 4674
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p1

    .line 4677
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 4680
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda41;

    invoke-direct {v1, v0, p1}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda41;-><init>(Lcom/android/internal/telephony/RadioNetworkProxy;Lcom/android/internal/telephony/RILRequest;)V

    const/4 v0, 0x4

    invoke-direct {p0, v0, p1, v2, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist getBasebandVersion(Landroid/os/Message;)V
    .registers 6

    .line 2674
    const-class v0, Lcom/android/internal/telephony/RadioModemProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RadioModemProxy;

    .line 2675
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    const-string v2, "getBasebandVersion"

    invoke-direct {p0, v2, v0, p1, v1}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-nez v1, :cond_13

    return-void

    :cond_13
    const/16 v1, 0x33

    .line 2679
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p1

    .line 2682
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2685
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda98;

    invoke-direct {v1, v0, p1}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda98;-><init>(Lcom/android/internal/telephony/RadioModemProxy;Lcom/android/internal/telephony/RILRequest;)V

    const/4 v0, 0x3

    invoke-direct {p0, v0, p1, v2, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist getCDMASubscription(Landroid/os/Message;)V
    .registers 2

    .line 0
    return-void
.end method

.method public blacklist getCLIR(Landroid/os/Message;)V
    .registers 6

    .line 2219
    const-class v0, Lcom/android/internal/telephony/RadioVoiceProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RadioVoiceProxy;

    .line 2220
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    const-string v2, "getCLIR"

    invoke-direct {p0, v2, v0, p1, v1}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-nez v1, :cond_13

    return-void

    :cond_13
    const/16 v1, 0x1f

    .line 2224
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p1

    .line 2227
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2230
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda16;

    invoke-direct {v1, v0, p1}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda16;-><init>(Lcom/android/internal/telephony/RadioVoiceProxy;Lcom/android/internal/telephony/RILRequest;)V

    const/4 v0, 0x6

    invoke-direct {p0, v0, p1, v2, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist getCdmaBroadcastConfig(Landroid/os/Message;)V
    .registers 2

    .line 0
    return-void
.end method

.method public blacklist getCdmaSubscriptionSource(Landroid/os/Message;)V
    .registers 2

    .line 0
    return-void
.end method

.method public blacklist getCellInfoList(Landroid/os/Message;Landroid/os/WorkSource;)V
    .registers 6

    .line 3842
    const-class v0, Lcom/android/internal/telephony/RadioNetworkProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RadioNetworkProxy;

    .line 3843
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    const-string v2, "getCellInfoList"

    invoke-direct {p0, v2, v0, p1, v1}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-nez v1, :cond_13

    return-void

    :cond_13
    const/16 v1, 0x6d

    .line 3848
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/RIL;->getDefaultWorkSourceIfInvalid(Landroid/os/WorkSource;)Landroid/os/WorkSource;

    move-result-object p2

    .line 3847
    invoke-direct {p0, v1, p1, p2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p1

    .line 3851
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "> "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v1}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 3854
    new-instance p2, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda46;

    invoke-direct {p2, v0, p1}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda46;-><init>(Lcom/android/internal/telephony/RadioNetworkProxy;Lcom/android/internal/telephony/RILRequest;)V

    const/4 v0, 0x4

    invoke-direct {p0, v0, p1, v2, p2}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist getClientRequestStats()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telephony/ClientRequestStats;",
            ">;"
        }
    .end annotation

    .line 6288
    iget-object p0, p0, Lcom/android/internal/telephony/RIL;->mClientWakelockTracker:Lcom/android/internal/telephony/ClientWakelockTracker;

    invoke-virtual {p0}, Lcom/android/internal/telephony/ClientWakelockTracker;->getClientRequestStats()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getCompatVersion(I)Lcom/android/internal/telephony/HalVersion;
    .registers 3

    .line 661
    iget-object p0, p0, Lcom/android/internal/telephony/RIL;->mCompatOverrides:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/HalVersion;

    return-object p0
.end method

.method public blacklist getCurrentCalls(Landroid/os/Message;)V
    .registers 6

    .line 1617
    const-class v0, Lcom/android/internal/telephony/RadioVoiceProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RadioVoiceProxy;

    .line 1618
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    const-string v2, "getCurrentCalls"

    invoke-direct {p0, v2, v0, p1, v1}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-nez v1, :cond_13

    return-void

    :cond_13
    const/16 v1, 0x9

    .line 1622
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p1

    .line 1625
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1628
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda126;

    invoke-direct {v1, v0, p1}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda126;-><init>(Lcom/android/internal/telephony/RadioVoiceProxy;Lcom/android/internal/telephony/RILRequest;)V

    const/4 v0, 0x6

    invoke-direct {p0, v0, p1, v2, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist getDataCallList(Landroid/os/Message;)V
    .registers 6

    .line 2747
    const-class v0, Lcom/android/internal/telephony/RadioDataProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RadioDataProxy;

    .line 2748
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    const-string v2, "getDataCallList"

    invoke-direct {p0, v2, v0, p1, v1}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-nez v1, :cond_13

    return-void

    :cond_13
    const/16 v1, 0x39

    .line 2752
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p1

    .line 2755
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2758
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda75;

    invoke-direct {v1, v0, p1}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda75;-><init>(Lcom/android/internal/telephony/RadioDataProxy;Lcom/android/internal/telephony/RILRequest;)V

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, v2, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist getDataRegistrationState(Landroid/os/Message;)V
    .registers 7

    .line 1969
    const-class v0, Lcom/android/internal/telephony/RadioNetworkProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RadioNetworkProxy;

    .line 1970
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    const-string v2, "getDataRegistrationState"

    invoke-direct {p0, v2, v0, p1, v1}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-nez v1, :cond_13

    return-void

    .line 1975
    :cond_13
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v3, 0x15

    invoke-direct {p0, v3, p1, v1}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p1

    .line 1979
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "> "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v4}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1982
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/RIL;->getCompatVersion(I)Lcom/android/internal/telephony/HalVersion;

    move-result-object v1

    .line 1984
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDataRegistrationState: overrideHalVersion="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1987
    new-instance v3, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda40;

    invoke-direct {v3, v0, p1, v1}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda40;-><init>(Lcom/android/internal/telephony/RadioNetworkProxy;Lcom/android/internal/telephony/RILRequest;Lcom/android/internal/telephony/HalVersion;)V

    const/4 v0, 0x4

    invoke-direct {p0, v0, p1, v2, v3}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist getDeviceIdentity(Landroid/os/Message;)V
    .registers 9

    .line 3645
    const-class v0, Lcom/android/internal/telephony/RadioModemProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/internal/telephony/RadioModemProxy;

    .line 3646
    sget-object v5, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    sget-object v6, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_2_2:Lcom/android/internal/telephony/HalVersion;

    const-string v2, "getDeviceIdentity"

    move-object v1, p0

    move-object v4, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;Lcom/android/internal/telephony/HalVersion;)Z

    move-result p0

    if-nez p0, :cond_18

    return-void

    :cond_18
    const/16 p0, 0x62

    .line 3651
    iget-object p1, v1, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {v1, p0, v4, p1}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p0

    .line 3654
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "> "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v0}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 3657
    new-instance p1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda18;

    invoke-direct {p1, v3, p0}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda18;-><init>(Lcom/android/internal/telephony/RadioModemProxy;Lcom/android/internal/telephony/RILRequest;)V

    const/4 v0, 0x3

    const-string v2, "getDeviceIdentity"

    invoke-direct {v1, v0, p0, v2, p1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist getGsmBroadcastConfig(Landroid/os/Message;)V
    .registers 6

    .line 3447
    const-class v0, Lcom/android/internal/telephony/RadioMessagingProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RadioMessagingProxy;

    .line 3448
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    const-string v2, "getGsmBroadcastConfig"

    invoke-direct {p0, v2, v0, p1, v1}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-nez v1, :cond_13

    return-void

    :cond_13
    const/16 v1, 0x59

    .line 3453
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p1

    .line 3457
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 3460
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda116;

    invoke-direct {v1, v0, p1}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda116;-><init>(Lcom/android/internal/telephony/RadioMessagingProxy;Lcom/android/internal/telephony/RILRequest;)V

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1, v2, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist getHalVersion(I)Lcom/android/internal/telephony/HalVersion;
    .registers 4

    .line 6303
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mHalVersion:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/HalVersion;

    if-nez v0, :cond_1a

    .line 6305
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->isRadioServiceSupported(I)Z

    move-result p0

    if-eqz p0, :cond_17

    .line 6306
    sget-object p0, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_UNKNOWN:Lcom/android/internal/telephony/HalVersion;

    return-object p0

    .line 6308
    :cond_17
    sget-object p0, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_UNSUPPORTED:Lcom/android/internal/telephony/HalVersion;

    return-object p0

    :cond_1a
    return-object v0
.end method

.method public blacklist getHardwareConfig(Landroid/os/Message;)V
    .registers 6

    .line 4198
    const-class v0, Lcom/android/internal/telephony/RadioModemProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RadioModemProxy;

    .line 4199
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    const-string v2, "getHardwareConfig"

    invoke-direct {p0, v2, v0, p1, v1}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-nez v1, :cond_13

    return-void

    :cond_13
    const/16 v1, 0x7c

    .line 4203
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p1

    .line 4208
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 4211
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda32;

    invoke-direct {v1, v0, p1}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda32;-><init>(Lcom/android/internal/telephony/RadioModemProxy;Lcom/android/internal/telephony/RILRequest;)V

    const/4 v0, 0x3

    invoke-direct {p0, v0, p1, v2, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist getIMSI(Landroid/os/Message;)V
    .registers 3

    const/4 v0, 0x0

    .line 1767
    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/RIL;->getIMSIForApp(Ljava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method public blacklist getIMSIForApp(Ljava/lang/String;Landroid/os/Message;)V
    .registers 7

    .line 1772
    const-class v0, Lcom/android/internal/telephony/RadioSimProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RadioSimProxy;

    .line 1773
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    const-string v2, "getIMSIForApp"

    invoke-direct {p0, v2, v0, p2, v1}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-nez v1, :cond_13

    return-void

    :cond_13
    const/16 v1, 0xb

    .line 1777
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p2

    .line 1780
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " aid = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1783
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda143;

    invoke-direct {v1, v0, p2, p1}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda143;-><init>(Lcom/android/internal/telephony/RadioSimProxy;Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;)V

    const/4 p1, 0x5

    invoke-direct {p0, p1, p2, v2, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist getIccCardStatus(Landroid/os/Message;)V
    .registers 6

    .line 1392
    const-class v0, Lcom/android/internal/telephony/RadioSimProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RadioSimProxy;

    .line 1393
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    const-string v2, "getIccCardStatus"

    invoke-direct {p0, v2, v0, p1, v1}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-nez v1, :cond_13

    return-void

    :cond_13
    const/4 v1, 0x1

    .line 1397
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p1

    .line 1400
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1403
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda68;

    invoke-direct {v1, v0, p1}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda68;-><init>(Lcom/android/internal/telephony/RadioSimProxy;Lcom/android/internal/telephony/RILRequest;)V

    const/4 v0, 0x5

    invoke-direct {p0, v0, p1, v2, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist getImei(Landroid/os/Message;)V
    .registers 6

    .line 3664
    const-class v0, Lcom/android/internal/telephony/RadioModemProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RadioModemProxy;

    .line 3665
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_2_1:Lcom/android/internal/telephony/HalVersion;

    const-string v2, "getImei"

    invoke-direct {p0, v2, v0, p1, v1}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-nez v1, :cond_13

    return-void

    :cond_13
    const/16 v1, 0x98

    .line 3669
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p1

    .line 3672
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 3675
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda120;

    invoke-direct {v1, v0, p1}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda120;-><init>(Lcom/android/internal/telephony/RadioModemProxy;Lcom/android/internal/telephony/RILRequest;)V

    const/4 v0, 0x3

    invoke-direct {p0, v0, p1, v2, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist getImsRegistrationState(Landroid/os/Message;)V
    .registers 9

    .line 3900
    const-class v0, Lcom/android/internal/telephony/RadioNetworkProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/internal/telephony/RadioNetworkProxy;

    .line 3901
    sget-object v5, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    sget-object v6, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_2_2:Lcom/android/internal/telephony/HalVersion;

    const-string v2, "getImsRegistrationState"

    move-object v1, p0

    move-object v4, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;Lcom/android/internal/telephony/HalVersion;)Z

    move-result p0

    if-nez p0, :cond_18

    return-void

    :cond_18
    const/16 p0, 0x70

    .line 3906
    iget-object p1, v1, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {v1, p0, v4, p1}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p0

    .line 3910
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "> "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v0}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 3913
    new-instance p1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda22;

    invoke-direct {p1, v3, p0}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda22;-><init>(Lcom/android/internal/telephony/RadioNetworkProxy;Lcom/android/internal/telephony/RILRequest;)V

    const/4 v0, 0x4

    const-string v2, "getImsRegistrationState"

    invoke-direct {v1, v0, p0, v2, p1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist getLastCallFailCause(Landroid/os/Message;)V
    .registers 6

    .line 1907
    const-class v0, Lcom/android/internal/telephony/RadioVoiceProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RadioVoiceProxy;

    .line 1908
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    const-string v2, "getLastCallFailCause"

    invoke-direct {p0, v2, v0, p1, v1}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-nez v1, :cond_13

    return-void

    :cond_13
    const/16 v1, 0x12

    .line 1912
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p1

    .line 1916
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1919
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda82;

    invoke-direct {v1, v0, p1}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda82;-><init>(Lcom/android/internal/telephony/RadioVoiceProxy;Lcom/android/internal/telephony/RILRequest;)V

    const/4 v0, 0x6

    invoke-direct {p0, v0, p1, v2, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist getModemActivityInfo(Landroid/os/Message;Landroid/os/WorkSource;)V
    .registers 6

    .line 4353
    const-class v0, Lcom/android/internal/telephony/RadioModemProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RadioModemProxy;

    .line 4354
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    const-string v2, "getModemActivityInfo"

    invoke-direct {p0, v2, v0, p1, v1}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-nez v1, :cond_13

    return-void

    :cond_13
    const/16 v1, 0x87

    .line 4359
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/RIL;->getDefaultWorkSourceIfInvalid(Landroid/os/WorkSource;)Landroid/os/WorkSource;

    move-result-object p2

    .line 4358
    invoke-direct {p0, v1, p1, p2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p1

    .line 4362
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "> "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v1}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 4365
    new-instance p2, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda127;

    invoke-direct {p2, p0, v0, p1}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda127;-><init>(Lcom/android/internal/telephony/RIL;Lcom/android/internal/telephony/RadioModemProxy;Lcom/android/internal/telephony/RILRequest;)V

    const/4 v0, 0x3

    invoke-direct {p0, v0, p1, v2, p2}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist getModemService()Ljava/lang/String;
    .registers 1

    .line 638
    iget-object p0, p0, Lcom/android/internal/telephony/RIL;->mMockModem:Lcom/android/internal/telephony/MockModem;

    if-eqz p0, :cond_9

    .line 639
    invoke-virtual {p0}, Lcom/android/internal/telephony/MockModem;->getServiceName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 641
    :cond_9
    const-string p0, "default"

    return-object p0
.end method

.method public blacklist getModemStatus(Landroid/os/Message;)V
    .registers 6

    .line 1704
    const-class v0, Lcom/android/internal/telephony/RadioModemProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RadioModemProxy;

    .line 1705
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    const-string v2, "getModemStatus"

    invoke-direct {p0, v2, v0, p1, v1}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-nez v1, :cond_13

    return-void

    :cond_13
    const/16 v1, 0x93

    .line 1709
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p1

    .line 1712
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1715
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda71;

    invoke-direct {v1, v0, p1}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda71;-><init>(Lcom/android/internal/telephony/RadioModemProxy;Lcom/android/internal/telephony/RILRequest;)V

    const/4 v0, 0x3

    invoke-direct {p0, v0, p1, v2, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist getMute(Landroid/os/Message;)V
    .registers 6

    .line 2711
    const-class v0, Lcom/android/internal/telephony/RadioVoiceProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RadioVoiceProxy;

    .line 2712
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    const-string v2, "getMute"

    invoke-direct {p0, v2, v0, p1, v1}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-nez v1, :cond_13

    return-void

    :cond_13
    const/16 v1, 0x36

    .line 2716
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p1

    .line 2719
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2722
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda70;

    invoke-direct {v1, v0, p1}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda70;-><init>(Lcom/android/internal/telephony/RadioVoiceProxy;Lcom/android/internal/telephony/RILRequest;)V

    const/4 v0, 0x6

    invoke-direct {p0, v0, p1, v2, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist getNetworkSelectionMode(Landroid/os/Message;)V
    .registers 6

    .line 2486
    const-class v0, Lcom/android/internal/telephony/RadioNetworkProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RadioNetworkProxy;

    .line 2487
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    const-string v2, "getNetworkSelectionMode"

    invoke-direct {p0, v2, v0, p1, v1}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-nez v1, :cond_13

    return-void

    :cond_13
    const/16 v1, 0x2d

    .line 2492
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p1

    .line 2496
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2499
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda14;

    invoke-direct {v1, v0, p1}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda14;-><init>(Lcom/android/internal/telephony/RadioNetworkProxy;Lcom/android/internal/telephony/RILRequest;)V

    const/4 v0, 0x4

    invoke-direct {p0, v0, p1, v2, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist getOperator(Landroid/os/Message;)V
    .registers 6

    .line 1994
    const-class v0, Lcom/android/internal/telephony/RadioNetworkProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RadioNetworkProxy;

    .line 1995
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    const-string v2, "getOperator"

    invoke-direct {p0, v2, v0, p1, v1}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-nez v1, :cond_13

    return-void

    :cond_13
    const/16 v1, 0x16

    .line 1999
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p1

    .line 2002
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2005
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda38;

    invoke-direct {v1, v0, p1}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda38;-><init>(Lcom/android/internal/telephony/RadioNetworkProxy;Lcom/android/internal/telephony/RILRequest;)V

    const/4 v0, 0x4

    invoke-direct {p0, v0, p1, v2, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist getPreferredNetworkType(Landroid/os/Message;)V
    .registers 6

    .line 2970
    const-class v0, Lcom/android/internal/telephony/RadioNetworkProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RadioNetworkProxy;

    .line 2971
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    const-string v2, "getPreferredNetworkType"

    invoke-direct {p0, v2, v0, p1, v1}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-nez v1, :cond_13

    return-void

    :cond_13
    const/16 v1, 0x4a

    .line 2976
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p1

    .line 2980
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2983
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda81;

    invoke-direct {v1, v0, p1}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda81;-><init>(Lcom/android/internal/telephony/RadioNetworkProxy;Lcom/android/internal/telephony/RILRequest;)V

    const/4 v0, 0x4

    invoke-direct {p0, v0, p1, v2, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist getPreferredVoicePrivacy(Landroid/os/Message;)V
    .registers 6

    .line 3310
    const-class v0, Lcom/android/internal/telephony/RadioVoiceProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RadioVoiceProxy;

    .line 3311
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    const-string v2, "getPreferredVoicePrivacy"

    invoke-direct {p0, v2, v0, p1, v1}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-nez v1, :cond_13

    return-void

    :cond_13
    const/16 v1, 0x53

    .line 3316
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p1

    .line 3320
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 3323
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda2;

    invoke-direct {v1, v0, p1}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda2;-><init>(Lcom/android/internal/telephony/RadioVoiceProxy;Lcom/android/internal/telephony/RILRequest;)V

    const/4 v0, 0x6

    invoke-direct {p0, v0, p1, v2, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist getRadioBugDetector()Lcom/android/internal/telephony/RadioBugDetector;
    .registers 4

    .line 417
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mRadioBugDetector:Lcom/android/internal/telephony/RadioBugDetector;

    if-nez v0, :cond_13

    .line 418
    new-instance v0, Lcom/android/internal/telephony/RadioBugDetector;

    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/RadioBugDetector;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/internal/telephony/RIL;->mRadioBugDetector:Lcom/android/internal/telephony/RadioBugDetector;

    .line 420
    :cond_13
    iget-object p0, p0, Lcom/android/internal/telephony/RIL;->mRadioBugDetector:Lcom/android/internal/telephony/RadioBugDetector;

    return-object p0
.end method

.method public blacklist getRadioCapability(Landroid/os/Message;)V
    .registers 6

    .line 4282
    const-class v0, Lcom/android/internal/telephony/RadioModemProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RadioModemProxy;

    .line 4283
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    const-string v2, "getRadioCapability"

    invoke-direct {p0, v2, v0, p1, v1}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-nez v1, :cond_13

    return-void

    :cond_13
    const/16 v1, 0x82

    .line 4287
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p1

    .line 4291
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 4294
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda103;

    invoke-direct {v1, v0, p1}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda103;-><init>(Lcom/android/internal/telephony/RadioModemProxy;Lcom/android/internal/telephony/RILRequest;)V

    const/4 v0, 0x3

    invoke-direct {p0, v0, p1, v2, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public declared-synchronized blacklist getRadioProxy()Landroid/hardware/radio/V1_0/IRadio;
    .registers 7

    monitor-enter p0

    .line 667
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mHalVersion:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mHalVersion:Ljava/util/Map;

    .line 668
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/HalVersion;

    sget-object v3, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_2_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0
    :try_end_21
    .catchall {:try_start_1 .. :try_end_21} :catchall_25

    if-eqz v0, :cond_28

    .line 669
    monitor-exit p0

    return-object v2

    :catchall_25
    move-exception v0

    goto/16 :goto_15b

    .line 671
    :cond_28
    :try_start_28
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v0
    :try_end_32
    .catchall {:try_start_28 .. :try_end_32} :catchall_25

    if-nez v0, :cond_36

    monitor-exit p0

    return-object v2

    .line 672
    :cond_36
    :try_start_36
    iget-boolean v0, p0, Lcom/android/internal/telephony/RIL;->mIsCellularSupported:Z
    :try_end_38
    .catchall {:try_start_36 .. :try_end_38} :catchall_25

    if-nez v0, :cond_3c

    .line 674
    monitor-exit p0

    return-object v2

    .line 677
    :cond_3c
    :try_start_3c
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    if-eqz v0, :cond_44

    .line 678
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;
    :try_end_42
    .catchall {:try_start_3c .. :try_end_42} :catchall_25

    monitor-exit p0

    return-object v0

    .line 682
    :cond_44
    :try_start_44
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mDisabledRadioServices:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mPhoneId:Ljava/lang/Integer;

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7c

    .line 683
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getRadioProxy: mRadioProxy for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/internal/telephony/RIL;->HIDL_SERVICE_NAME:[Ljava/lang/String;

    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is disabled"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->riljLoge(Ljava/lang/String;)V
    :try_end_77
    .catch Landroid/os/RemoteException; {:try_start_44 .. :try_end_77} :catch_79
    .catchall {:try_start_44 .. :try_end_77} :catchall_25

    .line 685
    monitor-exit p0

    return-object v2

    :catch_79
    move-exception v0

    goto/16 :goto_138

    :cond_7c
    const/4 v0, 0x1

    .line 688
    :try_start_7d
    sget-object v3, Lcom/android/internal/telephony/RIL;->HIDL_SERVICE_NAME:[Ljava/lang/String;

    iget-object v4, p0, Lcom/android/internal/telephony/RIL;->mPhoneId:Ljava/lang/Integer;

    .line 689
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aget-object v3, v3, v4

    .line 688
    invoke-static {v3, v0}, Landroid/hardware/radio/V1_6/IRadio;->getService(Ljava/lang/String;Z)Landroid/hardware/radio/V1_6/IRadio;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/RIL;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    .line 690
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mHalVersion:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_6:Lcom/android/internal/telephony/HalVersion;

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_98
    .catch Ljava/util/NoSuchElementException; {:try_start_7d .. :try_end_98} :catch_98
    .catch Landroid/os/RemoteException; {:try_start_7d .. :try_end_98} :catch_79
    .catchall {:try_start_7d .. :try_end_98} :catchall_25

    .line 694
    :catch_98
    :try_start_98
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;
    :try_end_9a
    .catch Landroid/os/RemoteException; {:try_start_98 .. :try_end_9a} :catch_79
    .catchall {:try_start_98 .. :try_end_9a} :catchall_25

    if-nez v3, :cond_b7

    .line 696
    :try_start_9c
    sget-object v3, Lcom/android/internal/telephony/RIL;->HIDL_SERVICE_NAME:[Ljava/lang/String;

    iget-object v4, p0, Lcom/android/internal/telephony/RIL;->mPhoneId:Ljava/lang/Integer;

    .line 697
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aget-object v3, v3, v4

    .line 696
    invoke-static {v3, v0}, Landroid/hardware/radio/V1_5/IRadio;->getService(Ljava/lang/String;Z)Landroid/hardware/radio/V1_5/IRadio;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/RIL;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    .line 698
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mHalVersion:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_5:Lcom/android/internal/telephony/HalVersion;

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b7
    .catch Ljava/util/NoSuchElementException; {:try_start_9c .. :try_end_b7} :catch_b7
    .catch Landroid/os/RemoteException; {:try_start_9c .. :try_end_b7} :catch_79
    .catchall {:try_start_9c .. :try_end_b7} :catchall_25

    .line 703
    :catch_b7
    :cond_b7
    :try_start_b7
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;
    :try_end_b9
    .catch Landroid/os/RemoteException; {:try_start_b7 .. :try_end_b9} :catch_79
    .catchall {:try_start_b7 .. :try_end_b9} :catchall_25

    if-nez v3, :cond_d6

    .line 705
    :try_start_bb
    sget-object v3, Lcom/android/internal/telephony/RIL;->HIDL_SERVICE_NAME:[Ljava/lang/String;

    iget-object v4, p0, Lcom/android/internal/telephony/RIL;->mPhoneId:Ljava/lang/Integer;

    .line 706
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aget-object v3, v3, v4

    .line 705
    invoke-static {v3, v0}, Landroid/hardware/radio/V1_4/IRadio;->getService(Ljava/lang/String;Z)Landroid/hardware/radio/V1_4/IRadio;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/RIL;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    .line 707
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mHalVersion:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_d6
    .catch Ljava/util/NoSuchElementException; {:try_start_bb .. :try_end_d6} :catch_d6
    .catch Landroid/os/RemoteException; {:try_start_bb .. :try_end_d6} :catch_79
    .catchall {:try_start_bb .. :try_end_d6} :catchall_25

    .line 712
    :catch_d6
    :cond_d6
    :try_start_d6
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    if-nez v3, :cond_df

    .line 713
    const-string v3, "IRadio <1.4 is no longer supported."

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/RIL;->riljLoge(Ljava/lang/String;)V

    .line 716
    :cond_df
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    if-eqz v3, :cond_106

    .line 717
    iget-boolean v3, p0, Lcom/android/internal/telephony/RIL;->mIsRadioProxyInitialized:Z

    if-nez v3, :cond_14e

    .line 718
    iput-boolean v0, p0, Lcom/android/internal/telephony/RIL;->mIsRadioProxyInitialized:Z

    .line 719
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRadioProxyDeathRecipient:Lcom/android/internal/telephony/RIL$RadioProxyDeathRecipient;

    iget-object v4, p0, Lcom/android/internal/telephony/RIL;->mServiceCookies:Landroid/util/SparseArray;

    .line 720
    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v4

    .line 719
    invoke-interface {v0, v3, v4, v5}, Landroid/hardware/radio/V1_0/IRadio;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z

    .line 721
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mRadioResponse:Lcom/android/internal/telephony/RadioResponse;

    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRadioIndication:Lcom/android/internal/telephony/RadioIndication;

    invoke-interface {v0, v1, v3}, Landroid/hardware/radio/V1_0/IRadio;->setResponseFunctions(Landroid/hardware/radio/V1_0/IRadioResponse;Landroid/hardware/radio/V1_0/IRadioIndication;)V

    goto :goto_14e

    .line 724
    :cond_106
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mDisabledRadioServices:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mPhoneId:Ljava/lang/Integer;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 725
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getRadioProxy: set mRadioProxy for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/internal/telephony/RIL;->HIDL_SERVICE_NAME:[Ljava/lang/String;

    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mPhoneId:Ljava/lang/Integer;

    .line 726
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " as disabled"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 725
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->riljLoge(Ljava/lang/String;)V
    :try_end_136
    .catch Landroid/os/RemoteException; {:try_start_d6 .. :try_end_136} :catch_79
    .catchall {:try_start_d6 .. :try_end_136} :catchall_25

    .line 727
    monitor-exit p0

    return-object v2

    .line 731
    :goto_138
    :try_start_138
    iput-object v2, p0, Lcom/android/internal/telephony/RIL;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    .line 732
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RadioProxy getService/setResponseFunctions: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->riljLoge(Ljava/lang/String;)V

    .line 735
    :cond_14e
    :goto_14e
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    if-nez v0, :cond_157

    .line 737
    const-string v0, "getRadioProxy: mRadioProxy == null"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->riljLoge(Ljava/lang/String;)V

    .line 740
    :cond_157
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;
    :try_end_159
    .catchall {:try_start_138 .. :try_end_159} :catchall_25

    monitor-exit p0

    return-object v0

    :goto_15b
    :try_start_15b
    monitor-exit p0
    :try_end_15c
    .catchall {:try_start_15b .. :try_end_15c} :catchall_25

    throw v0
.end method

.method public declared-synchronized blacklist getRadioServiceProxy(I)Lcom/android/internal/telephony/RadioServiceProxy;
    .registers 10

    monitor-enter p0

    .line 782
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v0

    if-nez v0, :cond_1a

    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mServiceProxies:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/telephony/RadioServiceProxy;
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_17

    monitor-exit p0

    return-object p1

    :catchall_17
    move-exception p1

    goto/16 :goto_61a

    :cond_1a
    const/4 v0, 0x7

    if-lt p1, v0, :cond_6a

    .line 783
    :try_start_1d
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->isRadioServiceSupported(I)Z

    move-result v1

    if-nez v1, :cond_6a

    if-eq p1, v0, :cond_60

    .line 786
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getRadioServiceProxy: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/internal/telephony/RIL;->serviceToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/internal/telephony/RIL;->HIDL_SERVICE_NAME:[Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mPhoneId:Ljava/lang/Integer;

    .line 787
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is not supported\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1}, Ljava/lang/RuntimeException;-><init>()V

    .line 788
    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 786
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->riljLogw(Ljava/lang/String;)V

    .line 790
    :cond_60
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mServiceProxies:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/telephony/RadioServiceProxy;
    :try_end_68
    .catchall {:try_start_1d .. :try_end_68} :catchall_17

    monitor-exit p0

    return-object p1

    .line 792
    :cond_6a
    :try_start_6a
    iget-boolean v1, p0, Lcom/android/internal/telephony/RIL;->mIsCellularSupported:Z

    if-nez v1, :cond_78

    .line 794
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mServiceProxies:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/telephony/RadioServiceProxy;
    :try_end_76
    .catchall {:try_start_6a .. :try_end_76} :catchall_17

    monitor-exit p0

    return-object p1

    .line 797
    :cond_78
    :try_start_78
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mServiceProxies:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/RadioServiceProxy;

    .line 798
    invoke-virtual {v1}, Lcom/android/internal/telephony/RadioServiceProxy;->isEmpty()Z

    move-result v2
    :try_end_84
    .catchall {:try_start_78 .. :try_end_84} :catchall_17

    if-nez v2, :cond_88

    .line 799
    monitor-exit p0

    return-object v1

    .line 803
    :cond_88
    :try_start_88
    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mMockModem:Lcom/android/internal/telephony/MockModem;

    if-nez v2, :cond_dd

    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mDisabledRadioServices:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mPhoneId:Ljava/lang/Integer;

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_dd

    .line 804
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRadioServiceProxy: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/internal/telephony/RIL;->serviceToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " for "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/android/internal/telephony/RIL;->HIDL_SERVICE_NAME:[Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mPhoneId:Ljava/lang/Integer;

    .line 805
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aget-object p1, p1, v2

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is disabled\n"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    .line 806
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 804
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->riljLoge(Ljava/lang/String;)V
    :try_end_d7
    .catch Landroid/os/RemoteException; {:try_start_88 .. :try_end_d7} :catch_da
    .catchall {:try_start_88 .. :try_end_d7} :catchall_17

    .line 807
    monitor-exit p0

    const/4 p0, 0x0

    return-object p0

    :catch_da
    move-exception p1

    goto/16 :goto_5f6

    :cond_dd
    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_61c

    goto/16 :goto_31c

    .line 902
    :pswitch_e3
    :try_start_e3
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mMockModem:Lcom/android/internal/telephony/MockModem;

    if-nez v3, :cond_10c

    .line 903
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Landroid/hardware/radio/ims/IRadioIms;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/android/internal/telephony/RIL;->HIDL_SERVICE_NAME:[Ljava/lang/String;

    iget-object v4, p0, Lcom/android/internal/telephony/RIL;->mPhoneId:Ljava/lang/Integer;

    .line 905
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aget-object v3, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 903
    invoke-static {v0}, Landroid/os/ServiceManager;->waitForDeclaredService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    goto :goto_110

    .line 907
    :cond_10c
    invoke-virtual {v3, v0}, Lcom/android/internal/telephony/MockModem;->getServiceBinder(I)Landroid/os/IBinder;

    move-result-object v0

    :goto_110
    if-eqz v0, :cond_31c

    .line 910
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mHalVersion:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object v5, v1

    check-cast v5, Lcom/android/internal/telephony/RadioImsProxy;

    iget-object v6, p0, Lcom/android/internal/telephony/RIL;->mHalVersion:Ljava/util/Map;

    .line 911
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/HalVersion;

    .line 913
    invoke-static {v0}, Landroid/hardware/radio/ims/IRadioIms$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/radio/ims/IRadioIms;

    move-result-object v0

    .line 910
    invoke-virtual {v5, v6, v0}, Lcom/android/internal/telephony/RadioImsProxy;->setAidl(Lcom/android/internal/telephony/HalVersion;Landroid/hardware/radio/ims/IRadioIms;)Lcom/android/internal/telephony/HalVersion;

    move-result-object v0

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_31c

    .line 887
    :pswitch_134
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mMockModem:Lcom/android/internal/telephony/MockModem;

    if-nez v0, :cond_15d

    .line 888
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Landroid/hardware/radio/voice/IRadioVoice;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/android/internal/telephony/RIL;->HIDL_SERVICE_NAME:[Ljava/lang/String;

    iget-object v4, p0, Lcom/android/internal/telephony/RIL;->mPhoneId:Ljava/lang/Integer;

    .line 890
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aget-object v3, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 888
    invoke-static {v0}, Landroid/os/ServiceManager;->waitForDeclaredService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    goto :goto_162

    :cond_15d
    const/4 v3, 0x6

    .line 892
    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/MockModem;->getServiceBinder(I)Landroid/os/IBinder;

    move-result-object v0

    :goto_162
    if-eqz v0, :cond_31c

    .line 895
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mHalVersion:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object v5, v1

    check-cast v5, Lcom/android/internal/telephony/RadioVoiceProxy;

    iget-object v6, p0, Lcom/android/internal/telephony/RIL;->mHalVersion:Ljava/util/Map;

    .line 896
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/HalVersion;

    .line 898
    invoke-static {v0}, Landroid/hardware/radio/voice/IRadioVoice$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/radio/voice/IRadioVoice;

    move-result-object v0

    .line 895
    invoke-virtual {v5, v6, v0}, Lcom/android/internal/telephony/RadioVoiceProxy;->setAidl(Lcom/android/internal/telephony/HalVersion;Landroid/hardware/radio/voice/IRadioVoice;)Lcom/android/internal/telephony/HalVersion;

    move-result-object v0

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_31c

    .line 872
    :pswitch_186
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mMockModem:Lcom/android/internal/telephony/MockModem;

    if-nez v0, :cond_1af

    .line 873
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Landroid/hardware/radio/sim/IRadioSim;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/android/internal/telephony/RIL;->HIDL_SERVICE_NAME:[Ljava/lang/String;

    iget-object v4, p0, Lcom/android/internal/telephony/RIL;->mPhoneId:Ljava/lang/Integer;

    .line 875
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aget-object v3, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 873
    invoke-static {v0}, Landroid/os/ServiceManager;->waitForDeclaredService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    goto :goto_1b4

    :cond_1af
    const/4 v3, 0x5

    .line 877
    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/MockModem;->getServiceBinder(I)Landroid/os/IBinder;

    move-result-object v0

    :goto_1b4
    if-eqz v0, :cond_31c

    .line 880
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mHalVersion:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object v5, v1

    check-cast v5, Lcom/android/internal/telephony/RadioSimProxy;

    iget-object v6, p0, Lcom/android/internal/telephony/RIL;->mHalVersion:Ljava/util/Map;

    .line 881
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/HalVersion;

    .line 883
    invoke-static {v0}, Landroid/hardware/radio/sim/IRadioSim$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/radio/sim/IRadioSim;

    move-result-object v0

    .line 880
    invoke-virtual {v5, v6, v0}, Lcom/android/internal/telephony/RadioSimProxy;->setAidl(Lcom/android/internal/telephony/HalVersion;Landroid/hardware/radio/sim/IRadioSim;)Lcom/android/internal/telephony/HalVersion;

    move-result-object v0

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_31c

    .line 857
    :pswitch_1d8
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mMockModem:Lcom/android/internal/telephony/MockModem;

    if-nez v0, :cond_201

    .line 858
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Landroid/hardware/radio/network/IRadioNetwork;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/android/internal/telephony/RIL;->HIDL_SERVICE_NAME:[Ljava/lang/String;

    iget-object v4, p0, Lcom/android/internal/telephony/RIL;->mPhoneId:Ljava/lang/Integer;

    .line 860
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aget-object v3, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 858
    invoke-static {v0}, Landroid/os/ServiceManager;->waitForDeclaredService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    goto :goto_206

    :cond_201
    const/4 v3, 0x4

    .line 862
    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/MockModem;->getServiceBinder(I)Landroid/os/IBinder;

    move-result-object v0

    :goto_206
    if-eqz v0, :cond_31c

    .line 865
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mHalVersion:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object v5, v1

    check-cast v5, Lcom/android/internal/telephony/RadioNetworkProxy;

    iget-object v6, p0, Lcom/android/internal/telephony/RIL;->mHalVersion:Ljava/util/Map;

    .line 866
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/HalVersion;

    .line 868
    invoke-static {v0}, Landroid/hardware/radio/network/IRadioNetwork$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/radio/network/IRadioNetwork;

    move-result-object v0

    .line 865
    invoke-virtual {v5, v6, v0}, Lcom/android/internal/telephony/RadioNetworkProxy;->setAidl(Lcom/android/internal/telephony/HalVersion;Landroid/hardware/radio/network/IRadioNetwork;)Lcom/android/internal/telephony/HalVersion;

    move-result-object v0

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_31c

    .line 842
    :pswitch_22a
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mMockModem:Lcom/android/internal/telephony/MockModem;

    if-nez v0, :cond_253

    .line 843
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Landroid/hardware/radio/modem/IRadioModem;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/android/internal/telephony/RIL;->HIDL_SERVICE_NAME:[Ljava/lang/String;

    iget-object v4, p0, Lcom/android/internal/telephony/RIL;->mPhoneId:Ljava/lang/Integer;

    .line 845
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aget-object v3, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 843
    invoke-static {v0}, Landroid/os/ServiceManager;->waitForDeclaredService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    goto :goto_258

    :cond_253
    const/4 v3, 0x3

    .line 847
    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/MockModem;->getServiceBinder(I)Landroid/os/IBinder;

    move-result-object v0

    :goto_258
    if-eqz v0, :cond_31c

    .line 850
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mHalVersion:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object v5, v1

    check-cast v5, Lcom/android/internal/telephony/RadioModemProxy;

    iget-object v6, p0, Lcom/android/internal/telephony/RIL;->mHalVersion:Ljava/util/Map;

    .line 851
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/HalVersion;

    .line 853
    invoke-static {v0}, Landroid/hardware/radio/modem/IRadioModem$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/radio/modem/IRadioModem;

    move-result-object v0

    .line 850
    invoke-virtual {v5, v6, v0}, Lcom/android/internal/telephony/RadioModemProxy;->setAidl(Lcom/android/internal/telephony/HalVersion;Landroid/hardware/radio/modem/IRadioModem;)Lcom/android/internal/telephony/HalVersion;

    move-result-object v0

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_31c

    .line 827
    :pswitch_27c
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mMockModem:Lcom/android/internal/telephony/MockModem;

    if-nez v0, :cond_2a5

    .line 828
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Landroid/hardware/radio/messaging/IRadioMessaging;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/android/internal/telephony/RIL;->HIDL_SERVICE_NAME:[Ljava/lang/String;

    iget-object v4, p0, Lcom/android/internal/telephony/RIL;->mPhoneId:Ljava/lang/Integer;

    .line 830
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aget-object v3, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 828
    invoke-static {v0}, Landroid/os/ServiceManager;->waitForDeclaredService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    goto :goto_2aa

    :cond_2a5
    const/4 v3, 0x2

    .line 832
    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/MockModem;->getServiceBinder(I)Landroid/os/IBinder;

    move-result-object v0

    :goto_2aa
    if-eqz v0, :cond_31c

    .line 835
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mHalVersion:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object v5, v1

    check-cast v5, Lcom/android/internal/telephony/RadioMessagingProxy;

    iget-object v6, p0, Lcom/android/internal/telephony/RIL;->mHalVersion:Ljava/util/Map;

    .line 836
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/HalVersion;

    .line 838
    invoke-static {v0}, Landroid/hardware/radio/messaging/IRadioMessaging$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/radio/messaging/IRadioMessaging;

    move-result-object v0

    .line 835
    invoke-virtual {v5, v6, v0}, Lcom/android/internal/telephony/RadioMessagingProxy;->setAidl(Lcom/android/internal/telephony/HalVersion;Landroid/hardware/radio/messaging/IRadioMessaging;)Lcom/android/internal/telephony/HalVersion;

    move-result-object v0

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_31c

    .line 812
    :pswitch_2cd
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mMockModem:Lcom/android/internal/telephony/MockModem;

    if-nez v0, :cond_2f6

    .line 813
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Landroid/hardware/radio/data/IRadioData;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/android/internal/telephony/RIL;->HIDL_SERVICE_NAME:[Ljava/lang/String;

    iget-object v4, p0, Lcom/android/internal/telephony/RIL;->mPhoneId:Ljava/lang/Integer;

    .line 815
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aget-object v3, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 813
    invoke-static {v0}, Landroid/os/ServiceManager;->waitForDeclaredService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    goto :goto_2fa

    .line 817
    :cond_2f6
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/MockModem;->getServiceBinder(I)Landroid/os/IBinder;

    move-result-object v0

    :goto_2fa
    if-eqz v0, :cond_31c

    .line 820
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mHalVersion:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object v5, v1

    check-cast v5, Lcom/android/internal/telephony/RadioDataProxy;

    iget-object v6, p0, Lcom/android/internal/telephony/RIL;->mHalVersion:Ljava/util/Map;

    .line 821
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/HalVersion;

    .line 822
    invoke-static {v0}, Landroid/hardware/radio/data/IRadioData$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/radio/data/IRadioData;

    move-result-object v0

    .line 820
    invoke-virtual {v5, v6, v0}, Lcom/android/internal/telephony/RadioDataProxy;->setAidl(Lcom/android/internal/telephony/HalVersion;Landroid/hardware/radio/data/IRadioData;)Lcom/android/internal/telephony/HalVersion;

    move-result-object v0

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 918
    :cond_31c
    :goto_31c
    invoke-virtual {v1}, Lcom/android/internal/telephony/RadioServiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_35e

    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mHalVersion:Ljava/util/Map;

    .line 919
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/HalVersion;

    sget-object v3, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_2_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/HalVersion;->less(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0
    :try_end_334
    .catch Landroid/os/RemoteException; {:try_start_e3 .. :try_end_334} :catch_da
    .catchall {:try_start_e3 .. :try_end_334} :catchall_17

    if-eqz v0, :cond_35e

    .line 921
    :try_start_336
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mHalVersion:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_6:Lcom/android/internal/telephony/HalVersion;

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 922
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mHalVersion:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/HalVersion;

    sget-object v3, Lcom/android/internal/telephony/RIL;->HIDL_SERVICE_NAME:[Ljava/lang/String;

    iget-object v4, p0, Lcom/android/internal/telephony/RIL;->mPhoneId:Ljava/lang/Integer;

    .line 924
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aget-object v3, v3, v4

    .line 923
    invoke-static {v3, v2}, Landroid/hardware/radio/V1_6/IRadio;->getService(Ljava/lang/String;Z)Landroid/hardware/radio/V1_6/IRadio;

    move-result-object v3

    .line 922
    invoke-virtual {v1, v0, v3}, Lcom/android/internal/telephony/RadioServiceProxy;->setHidl(Lcom/android/internal/telephony/HalVersion;Landroid/hardware/radio/V1_4/IRadio;)V
    :try_end_35e
    .catch Ljava/util/NoSuchElementException; {:try_start_336 .. :try_end_35e} :catch_35e
    .catch Landroid/os/RemoteException; {:try_start_336 .. :try_end_35e} :catch_da
    .catchall {:try_start_336 .. :try_end_35e} :catchall_17

    .line 929
    :catch_35e
    :cond_35e
    :try_start_35e
    invoke-virtual {v1}, Lcom/android/internal/telephony/RadioServiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3a0

    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mHalVersion:Ljava/util/Map;

    .line 930
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/HalVersion;

    sget-object v3, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_2_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/HalVersion;->less(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0
    :try_end_376
    .catch Landroid/os/RemoteException; {:try_start_35e .. :try_end_376} :catch_da
    .catchall {:try_start_35e .. :try_end_376} :catchall_17

    if-eqz v0, :cond_3a0

    .line 932
    :try_start_378
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mHalVersion:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_5:Lcom/android/internal/telephony/HalVersion;

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 933
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mHalVersion:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/HalVersion;

    sget-object v3, Lcom/android/internal/telephony/RIL;->HIDL_SERVICE_NAME:[Ljava/lang/String;

    iget-object v4, p0, Lcom/android/internal/telephony/RIL;->mPhoneId:Ljava/lang/Integer;

    .line 935
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aget-object v3, v3, v4

    .line 934
    invoke-static {v3, v2}, Landroid/hardware/radio/V1_5/IRadio;->getService(Ljava/lang/String;Z)Landroid/hardware/radio/V1_5/IRadio;

    move-result-object v3

    .line 933
    invoke-virtual {v1, v0, v3}, Lcom/android/internal/telephony/RadioServiceProxy;->setHidl(Lcom/android/internal/telephony/HalVersion;Landroid/hardware/radio/V1_4/IRadio;)V
    :try_end_3a0
    .catch Ljava/util/NoSuchElementException; {:try_start_378 .. :try_end_3a0} :catch_3a0
    .catch Landroid/os/RemoteException; {:try_start_378 .. :try_end_3a0} :catch_da
    .catchall {:try_start_378 .. :try_end_3a0} :catchall_17

    .line 940
    :catch_3a0
    :cond_3a0
    :try_start_3a0
    invoke-virtual {v1}, Lcom/android/internal/telephony/RadioServiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3e2

    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mHalVersion:Ljava/util/Map;

    .line 941
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/HalVersion;

    sget-object v3, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_2_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/HalVersion;->less(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0
    :try_end_3b8
    .catch Landroid/os/RemoteException; {:try_start_3a0 .. :try_end_3b8} :catch_da
    .catchall {:try_start_3a0 .. :try_end_3b8} :catchall_17

    if-eqz v0, :cond_3e2

    .line 943
    :try_start_3ba
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mHalVersion:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 944
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mHalVersion:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/HalVersion;

    sget-object v3, Lcom/android/internal/telephony/RIL;->HIDL_SERVICE_NAME:[Ljava/lang/String;

    iget-object v4, p0, Lcom/android/internal/telephony/RIL;->mPhoneId:Ljava/lang/Integer;

    .line 946
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aget-object v3, v3, v4

    .line 945
    invoke-static {v3, v2}, Landroid/hardware/radio/V1_4/IRadio;->getService(Ljava/lang/String;Z)Landroid/hardware/radio/V1_4/IRadio;

    move-result-object v3

    .line 944
    invoke-virtual {v1, v0, v3}, Lcom/android/internal/telephony/RadioServiceProxy;->setHidl(Lcom/android/internal/telephony/HalVersion;Landroid/hardware/radio/V1_4/IRadio;)V
    :try_end_3e2
    .catch Ljava/util/NoSuchElementException; {:try_start_3ba .. :try_end_3e2} :catch_3e2
    .catch Landroid/os/RemoteException; {:try_start_3ba .. :try_end_3e2} :catch_da
    .catchall {:try_start_3ba .. :try_end_3e2} :catchall_17

    .line 951
    :catch_3e2
    :cond_3e2
    :try_start_3e2
    invoke-virtual {v1}, Lcom/android/internal/telephony/RadioServiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_401

    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mHalVersion:Ljava/util/Map;

    .line 952
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/HalVersion;

    sget-object v3, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_2_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/HalVersion;->less(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_401

    .line 953
    const-string v0, "IRadio <1.4 is no longer supported."

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->riljLoge(Ljava/lang/String;)V

    .line 956
    :cond_401
    invoke-virtual {v1}, Lcom/android/internal/telephony/RadioServiceProxy;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_561

    .line 957
    invoke-virtual {v1}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_51c

    packed-switch p1, :pswitch_data_62e

    goto/16 :goto_60d

    .line 996
    :pswitch_412
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mDeathRecipients:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/telephony/RIL$BinderServiceDeathRecipient;

    move-object v0, v1

    check-cast v0, Lcom/android/internal/telephony/RadioImsProxy;

    .line 997
    invoke-virtual {v0}, Lcom/android/internal/telephony/RadioImsProxy;->getAidl()Landroid/hardware/radio/ims/IRadioIms;

    move-result-object v0

    invoke-interface {v0}, Landroid/hardware/radio/ims/IRadioIms;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 996
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/RIL$BinderServiceDeathRecipient;->linkToDeath(Landroid/os/IBinder;)V

    .line 998
    move-object p1, v1

    check-cast p1, Lcom/android/internal/telephony/RadioImsProxy;

    invoke-virtual {p1}, Lcom/android/internal/telephony/RadioImsProxy;->getAidl()Landroid/hardware/radio/ims/IRadioIms;

    move-result-object p1

    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mImsResponse:Lcom/android/internal/telephony/ImsResponse;

    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mImsIndication:Lcom/android/internal/telephony/ImsIndication;

    invoke-interface {p1, v0, v2}, Landroid/hardware/radio/ims/IRadioIms;->setResponseFunctions(Landroid/hardware/radio/ims/IRadioImsResponse;Landroid/hardware/radio/ims/IRadioImsIndication;)V

    goto/16 :goto_60d

    .line 990
    :pswitch_438
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mDeathRecipients:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/telephony/RIL$BinderServiceDeathRecipient;

    move-object v0, v1

    check-cast v0, Lcom/android/internal/telephony/RadioVoiceProxy;

    .line 991
    invoke-virtual {v0}, Lcom/android/internal/telephony/RadioVoiceProxy;->getAidl()Landroid/hardware/radio/voice/IRadioVoice;

    move-result-object v0

    invoke-interface {v0}, Landroid/hardware/radio/voice/IRadioVoice;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 990
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/RIL$BinderServiceDeathRecipient;->linkToDeath(Landroid/os/IBinder;)V

    .line 992
    move-object p1, v1

    check-cast p1, Lcom/android/internal/telephony/RadioVoiceProxy;

    invoke-virtual {p1}, Lcom/android/internal/telephony/RadioVoiceProxy;->getAidl()Landroid/hardware/radio/voice/IRadioVoice;

    move-result-object p1

    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mVoiceResponse:Lcom/android/internal/telephony/VoiceResponse;

    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mVoiceIndication:Lcom/android/internal/telephony/VoiceIndication;

    invoke-interface {p1, v0, v2}, Landroid/hardware/radio/voice/IRadioVoice;->setResponseFunctions(Landroid/hardware/radio/voice/IRadioVoiceResponse;Landroid/hardware/radio/voice/IRadioVoiceIndication;)V

    goto/16 :goto_60d

    .line 984
    :pswitch_45e
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mDeathRecipients:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/telephony/RIL$BinderServiceDeathRecipient;

    move-object v0, v1

    check-cast v0, Lcom/android/internal/telephony/RadioSimProxy;

    .line 985
    invoke-virtual {v0}, Lcom/android/internal/telephony/RadioSimProxy;->getAidl()Landroid/hardware/radio/sim/IRadioSim;

    move-result-object v0

    invoke-interface {v0}, Landroid/hardware/radio/sim/IRadioSim;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 984
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/RIL$BinderServiceDeathRecipient;->linkToDeath(Landroid/os/IBinder;)V

    .line 986
    move-object p1, v1

    check-cast p1, Lcom/android/internal/telephony/RadioSimProxy;

    invoke-virtual {p1}, Lcom/android/internal/telephony/RadioSimProxy;->getAidl()Landroid/hardware/radio/sim/IRadioSim;

    move-result-object p1

    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mSimResponse:Lcom/android/internal/telephony/SimResponse;

    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mSimIndication:Lcom/android/internal/telephony/SimIndication;

    invoke-interface {p1, v0, v2}, Landroid/hardware/radio/sim/IRadioSim;->setResponseFunctions(Landroid/hardware/radio/sim/IRadioSimResponse;Landroid/hardware/radio/sim/IRadioSimIndication;)V

    goto/16 :goto_60d

    .line 978
    :pswitch_484
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mDeathRecipients:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/telephony/RIL$BinderServiceDeathRecipient;

    move-object v0, v1

    check-cast v0, Lcom/android/internal/telephony/RadioNetworkProxy;

    .line 979
    invoke-virtual {v0}, Lcom/android/internal/telephony/RadioNetworkProxy;->getAidl()Landroid/hardware/radio/network/IRadioNetwork;

    move-result-object v0

    invoke-interface {v0}, Landroid/hardware/radio/network/IRadioNetwork;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 978
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/RIL$BinderServiceDeathRecipient;->linkToDeath(Landroid/os/IBinder;)V

    .line 980
    move-object p1, v1

    check-cast p1, Lcom/android/internal/telephony/RadioNetworkProxy;

    invoke-virtual {p1}, Lcom/android/internal/telephony/RadioNetworkProxy;->getAidl()Landroid/hardware/radio/network/IRadioNetwork;

    move-result-object p1

    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mNetworkResponse:Lcom/android/internal/telephony/NetworkResponse;

    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mNetworkIndication:Lcom/android/internal/telephony/NetworkIndication;

    invoke-interface {p1, v0, v2}, Landroid/hardware/radio/network/IRadioNetwork;->setResponseFunctions(Landroid/hardware/radio/network/IRadioNetworkResponse;Landroid/hardware/radio/network/IRadioNetworkIndication;)V

    goto/16 :goto_60d

    .line 972
    :pswitch_4aa
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mDeathRecipients:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/telephony/RIL$BinderServiceDeathRecipient;

    move-object v0, v1

    check-cast v0, Lcom/android/internal/telephony/RadioModemProxy;

    .line 973
    invoke-virtual {v0}, Lcom/android/internal/telephony/RadioModemProxy;->getAidl()Landroid/hardware/radio/modem/IRadioModem;

    move-result-object v0

    invoke-interface {v0}, Landroid/hardware/radio/modem/IRadioModem;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 972
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/RIL$BinderServiceDeathRecipient;->linkToDeath(Landroid/os/IBinder;)V

    .line 974
    move-object p1, v1

    check-cast p1, Lcom/android/internal/telephony/RadioModemProxy;

    invoke-virtual {p1}, Lcom/android/internal/telephony/RadioModemProxy;->getAidl()Landroid/hardware/radio/modem/IRadioModem;

    move-result-object p1

    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mModemResponse:Lcom/android/internal/telephony/ModemResponse;

    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mModemIndication:Lcom/android/internal/telephony/ModemIndication;

    invoke-interface {p1, v0, v2}, Landroid/hardware/radio/modem/IRadioModem;->setResponseFunctions(Landroid/hardware/radio/modem/IRadioModemResponse;Landroid/hardware/radio/modem/IRadioModemIndication;)V

    goto/16 :goto_60d

    .line 966
    :pswitch_4d0
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mDeathRecipients:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/telephony/RIL$BinderServiceDeathRecipient;

    move-object v0, v1

    check-cast v0, Lcom/android/internal/telephony/RadioMessagingProxy;

    .line 967
    invoke-virtual {v0}, Lcom/android/internal/telephony/RadioMessagingProxy;->getAidl()Landroid/hardware/radio/messaging/IRadioMessaging;

    move-result-object v0

    invoke-interface {v0}, Landroid/hardware/radio/messaging/IRadioMessaging;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 966
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/RIL$BinderServiceDeathRecipient;->linkToDeath(Landroid/os/IBinder;)V

    .line 968
    move-object p1, v1

    check-cast p1, Lcom/android/internal/telephony/RadioMessagingProxy;

    invoke-virtual {p1}, Lcom/android/internal/telephony/RadioMessagingProxy;->getAidl()Landroid/hardware/radio/messaging/IRadioMessaging;

    move-result-object p1

    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mMessagingResponse:Lcom/android/internal/telephony/MessagingResponse;

    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mMessagingIndication:Lcom/android/internal/telephony/MessagingIndication;

    invoke-interface {p1, v0, v2}, Landroid/hardware/radio/messaging/IRadioMessaging;->setResponseFunctions(Landroid/hardware/radio/messaging/IRadioMessagingResponse;Landroid/hardware/radio/messaging/IRadioMessagingIndication;)V

    goto/16 :goto_60d

    .line 960
    :pswitch_4f6
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mDeathRecipients:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/telephony/RIL$BinderServiceDeathRecipient;

    move-object v0, v1

    check-cast v0, Lcom/android/internal/telephony/RadioDataProxy;

    .line 961
    invoke-virtual {v0}, Lcom/android/internal/telephony/RadioDataProxy;->getAidl()Landroid/hardware/radio/data/IRadioData;

    move-result-object v0

    invoke-interface {v0}, Landroid/hardware/radio/data/IRadioData;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 960
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/RIL$BinderServiceDeathRecipient;->linkToDeath(Landroid/os/IBinder;)V

    .line 962
    move-object p1, v1

    check-cast p1, Lcom/android/internal/telephony/RadioDataProxy;

    invoke-virtual {p1}, Lcom/android/internal/telephony/RadioDataProxy;->getAidl()Landroid/hardware/radio/data/IRadioData;

    move-result-object p1

    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mDataResponse:Lcom/android/internal/telephony/DataResponse;

    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mDataIndication:Lcom/android/internal/telephony/DataIndication;

    invoke-interface {p1, v0, v2}, Landroid/hardware/radio/data/IRadioData;->setResponseFunctions(Landroid/hardware/radio/data/IRadioDataResponse;Landroid/hardware/radio/data/IRadioDataIndication;)V

    goto/16 :goto_60d

    .line 1003
    :cond_51c
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mHalVersion:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/telephony/HalVersion;

    sget-object v0, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_2_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result p1

    if-nez p1, :cond_559

    .line 1006
    iget-boolean p1, p0, Lcom/android/internal/telephony/RIL;->mIsRadioProxyInitialized:Z

    if-nez p1, :cond_60d

    .line 1007
    iput-boolean v2, p0, Lcom/android/internal/telephony/RIL;->mIsRadioProxyInitialized:Z

    .line 1008
    invoke-virtual {v1}, Lcom/android/internal/telephony/RadioServiceProxy;->getHidl()Landroid/hardware/radio/V1_4/IRadio;

    move-result-object p1

    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mRadioProxyDeathRecipient:Lcom/android/internal/telephony/RIL$RadioProxyDeathRecipient;

    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mServiceCookies:Landroid/util/SparseArray;

    const/4 v3, 0x0

    .line 1009
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v2

    .line 1008
    invoke-interface {p1, v0, v2, v3}, Landroid/hardware/radio/V1_4/IRadio;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z

    .line 1010
    invoke-virtual {v1}, Lcom/android/internal/telephony/RadioServiceProxy;->getHidl()Landroid/hardware/radio/V1_4/IRadio;

    move-result-object p1

    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mRadioResponse:Lcom/android/internal/telephony/RadioResponse;

    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRadioIndication:Lcom/android/internal/telephony/RadioIndication;

    invoke-interface {p1, v0, v2}, Landroid/hardware/radio/V1_4/IRadio;->setResponseFunctions(Landroid/hardware/radio/V1_0/IRadioResponse;Landroid/hardware/radio/V1_0/IRadioIndication;)V

    goto/16 :goto_60d

    .line 1004
    :cond_559
    new-instance p1, Ljava/lang/AssertionError;

    const-string v0, "serviceProxy shouldn\'t be HIDL with HAL 2.0"

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 1015
    :cond_561
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mDisabledRadioServices:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mPhoneId:Ljava/lang/Integer;

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1016
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->isRadioServiceSupported(I)Z

    move-result v0

    if-eqz v0, :cond_5bb

    .line 1017
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mHalVersion:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_UNKNOWN:Lcom/android/internal/telephony/HalVersion;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1018
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRadioServiceProxy: set "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/internal/telephony/RIL;->serviceToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " for "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/android/internal/telephony/RIL;->HIDL_SERVICE_NAME:[Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mPhoneId:Ljava/lang/Integer;

    .line 1019
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aget-object p1, p1, v2

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " as disabled\n"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    .line 1020
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1018
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->riljLoge(Ljava/lang/String;)V

    goto :goto_60d

    .line 1022
    :cond_5bb
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mHalVersion:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_UNSUPPORTED:Lcom/android/internal/telephony/HalVersion;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1023
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRadioServiceProxy: set "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/internal/telephony/RIL;->serviceToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " for "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/android/internal/telephony/RIL;->HIDL_SERVICE_NAME:[Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mPhoneId:Ljava/lang/Integer;

    .line 1024
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aget-object p1, p1, v2

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " as disabled (unsupported)"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1023
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V
    :try_end_5f5
    .catch Landroid/os/RemoteException; {:try_start_3e2 .. :try_end_5f5} :catch_da
    .catchall {:try_start_3e2 .. :try_end_5f5} :catchall_17

    goto :goto_60d

    .line 1029
    :goto_5f6
    :try_start_5f6
    invoke-virtual {v1}, Lcom/android/internal/telephony/RadioServiceProxy;->clear()V

    .line 1030
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ServiceProxy getService/setResponseFunctions: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->riljLoge(Ljava/lang/String;)V

    .line 1033
    :cond_60d
    :goto_60d
    invoke-virtual {v1}, Lcom/android/internal/telephony/RadioServiceProxy;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_618

    .line 1035
    const-string p1, "getRadioServiceProxy: serviceProxy == null"

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->riljLoge(Ljava/lang/String;)V
    :try_end_618
    .catchall {:try_start_5f6 .. :try_end_618} :catchall_17

    .line 1038
    :cond_618
    monitor-exit p0

    return-object v1

    :goto_61a
    :try_start_61a
    monitor-exit p0
    :try_end_61b
    .catchall {:try_start_61a .. :try_end_61b} :catchall_17

    throw p1

    :pswitch_data_61c
    .packed-switch 0x1
        :pswitch_2cd
        :pswitch_27c
        :pswitch_22a
        :pswitch_1d8
        :pswitch_186
        :pswitch_134
        :pswitch_e3
    .end packed-switch

    :pswitch_data_62e
    .packed-switch 0x1
        :pswitch_4f6
        :pswitch_4d0
        :pswitch_4aa
        :pswitch_484
        :pswitch_45e
        :pswitch_438
        :pswitch_412
    .end packed-switch
.end method

.method public blacklist getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/internal/telephony/RadioServiceProxy;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 750
    const-class v0, Lcom/android/internal/telephony/RadioDataProxy;

    if-ne p1, v0, :cond_a

    const/4 p1, 0x1

    .line 751
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(I)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object p0

    return-object p0

    .line 753
    :cond_a
    const-class v0, Lcom/android/internal/telephony/RadioMessagingProxy;

    if-ne p1, v0, :cond_14

    const/4 p1, 0x2

    .line 754
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(I)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object p0

    return-object p0

    .line 756
    :cond_14
    const-class v0, Lcom/android/internal/telephony/RadioModemProxy;

    if-ne p1, v0, :cond_1e

    const/4 p1, 0x3

    .line 757
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(I)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object p0

    return-object p0

    .line 759
    :cond_1e
    const-class v0, Lcom/android/internal/telephony/RadioNetworkProxy;

    if-ne p1, v0, :cond_28

    const/4 p1, 0x4

    .line 760
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(I)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object p0

    return-object p0

    .line 762
    :cond_28
    const-class v0, Lcom/android/internal/telephony/RadioSimProxy;

    if-ne p1, v0, :cond_32

    const/4 p1, 0x5

    .line 763
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(I)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object p0

    return-object p0

    .line 765
    :cond_32
    const-class v0, Lcom/android/internal/telephony/RadioVoiceProxy;

    if-ne p1, v0, :cond_3c

    const/4 p1, 0x6

    .line 766
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(I)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object p0

    return-object p0

    .line 768
    :cond_3c
    const-class v0, Lcom/android/internal/telephony/RadioImsProxy;

    if-ne p1, v0, :cond_46

    const/4 p1, 0x7

    .line 769
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(I)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object p0

    return-object p0

    .line 771
    :cond_46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getRadioServiceProxy: unrecognized "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->riljLoge(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist getRilHandler()Lcom/android/internal/telephony/RIL$RilHandler;
    .registers 1

    .line 5824
    iget-object p0, p0, Lcom/android/internal/telephony/RIL;->mRilHandler:Lcom/android/internal/telephony/RIL$RilHandler;

    return-object p0
.end method

.method public blacklist getRilRequestList()Landroid/util/SparseArray;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Lcom/android/internal/telephony/RILRequest;",
            ">;"
        }
    .end annotation

    .line 5830
    iget-object p0, p0, Lcom/android/internal/telephony/RIL;->mRequestList:Landroid/util/SparseArray;

    return-object p0
.end method

.method public blacklist getSignalStrength(Landroid/os/Message;)V
    .registers 6

    .line 1926
    const-class v0, Lcom/android/internal/telephony/RadioNetworkProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RadioNetworkProxy;

    .line 1927
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    const-string v2, "getSignalStrength"

    invoke-direct {p0, v2, v0, p1, v1}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-nez v1, :cond_13

    return-void

    :cond_13
    const/16 v1, 0x13

    .line 1931
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p1

    .line 1934
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1937
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda91;

    invoke-direct {v1, v0, p1}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda91;-><init>(Lcom/android/internal/telephony/RadioNetworkProxy;Lcom/android/internal/telephony/RILRequest;)V

    const/4 v0, 0x4

    invoke-direct {p0, v0, p1, v2, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist getSimPhonebookCapacity(Landroid/os/Message;)V
    .registers 6

    .line 4810
    const-class v0, Lcom/android/internal/telephony/RadioSimProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RadioSimProxy;

    .line 4811
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_6:Lcom/android/internal/telephony/HalVersion;

    const-string v2, "getSimPhonebookCapacity"

    invoke-direct {p0, v2, v0, p1, v1}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-nez v1, :cond_13

    return-void

    :cond_13
    const/16 v1, 0x95

    .line 4815
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p1

    .line 4819
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 4822
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda161;

    invoke-direct {v1, v0, p1}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda161;-><init>(Lcom/android/internal/telephony/RadioSimProxy;Lcom/android/internal/telephony/RILRequest;)V

    const/4 v0, 0x5

    invoke-direct {p0, v0, p1, v2, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist getSimPhonebookRecords(Landroid/os/Message;)V
    .registers 6

    .line 4791
    const-class v0, Lcom/android/internal/telephony/RadioSimProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RadioSimProxy;

    .line 4792
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_6:Lcom/android/internal/telephony/HalVersion;

    const-string v2, "getSimPhonebookRecords"

    invoke-direct {p0, v2, v0, p1, v1}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-nez v1, :cond_13

    return-void

    :cond_13
    const/16 v1, 0x96

    .line 4796
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p1

    .line 4800
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 4803
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda144;

    invoke-direct {v1, v0, p1}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda144;-><init>(Lcom/android/internal/telephony/RadioSimProxy;Lcom/android/internal/telephony/RILRequest;)V

    const/4 v0, 0x5

    invoke-direct {p0, v0, p1, v2, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist getSlicingConfig(Landroid/os/Message;)V
    .registers 6

    .line 4772
    const-class v0, Lcom/android/internal/telephony/RadioDataProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RadioDataProxy;

    .line 4773
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_6:Lcom/android/internal/telephony/HalVersion;

    const-string v2, "getSlicingConfig"

    invoke-direct {p0, v2, v0, p1, v1}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-nez v1, :cond_13

    return-void

    :cond_13
    const/16 v1, 0xe0

    .line 4777
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p1

    .line 4781
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 4784
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda140;

    invoke-direct {v1, v0, p1}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda140;-><init>(Lcom/android/internal/telephony/RadioDataProxy;Lcom/android/internal/telephony/RILRequest;)V

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, v2, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist getSmscAddress(Landroid/os/Message;)V
    .registers 6

    .line 3702
    const-class v0, Lcom/android/internal/telephony/RadioMessagingProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RadioMessagingProxy;

    .line 3703
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    const-string v2, "getSmscAddress"

    invoke-direct {p0, v2, v0, p1, v1}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-nez v1, :cond_13

    return-void

    :cond_13
    const/16 v1, 0x64

    .line 3707
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p1

    .line 3710
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 3713
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda84;

    invoke-direct {v1, v0, p1}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda84;-><init>(Lcom/android/internal/telephony/RadioMessagingProxy;Lcom/android/internal/telephony/RILRequest;)V

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1, v2, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist getSystemSelectionChannels(Landroid/os/Message;)V
    .registers 6

    .line 1683
    const-class v0, Lcom/android/internal/telephony/RadioNetworkProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RadioNetworkProxy;

    .line 1684
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_6:Lcom/android/internal/telephony/HalVersion;

    const-string v2, "getSystemSelectionChannels"

    invoke-direct {p0, v2, v0, p1, v1}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-nez v1, :cond_13

    return-void

    :cond_13
    const/16 v1, 0xdb

    .line 1689
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p1

    .line 1693
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " getSystemSelectionChannels"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1697
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda132;

    invoke-direct {v1, v0, p1}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda132;-><init>(Lcom/android/internal/telephony/RadioNetworkProxy;Lcom/android/internal/telephony/RILRequest;)V

    const/4 v0, 0x4

    invoke-direct {p0, v0, p1, v2, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist getUsageSetting(Landroid/os/Message;)V
    .registers 6

    .line 4879
    const-class v0, Lcom/android/internal/telephony/RadioNetworkProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RadioNetworkProxy;

    .line 4880
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_2_0:Lcom/android/internal/telephony/HalVersion;

    const-string v2, "getUsageSetting"

    invoke-direct {p0, v2, v0, p1, v1}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-nez v1, :cond_13

    return-void

    :cond_13
    const/16 v1, 0xe4

    .line 4884
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p1

    .line 4887
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 4890
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda15;

    invoke-direct {v1, v0, p1}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda15;-><init>(Lcom/android/internal/telephony/RadioNetworkProxy;Lcom/android/internal/telephony/RILRequest;)V

    const/4 v0, 0x4

    invoke-direct {p0, v0, p1, v2, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist getVoiceRadioTechnology(Landroid/os/Message;)V
    .registers 6

    .line 3823
    const-class v0, Lcom/android/internal/telephony/RadioNetworkProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RadioNetworkProxy;

    .line 3824
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    const-string v2, "getVoiceRadioTechnology"

    invoke-direct {p0, v2, v0, p1, v1}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-nez v1, :cond_13

    return-void

    :cond_13
    const/16 v1, 0x6c

    .line 3829
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p1

    .line 3832
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 3835
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda76;

    invoke-direct {v1, v0, p1}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda76;-><init>(Lcom/android/internal/telephony/RadioNetworkProxy;Lcom/android/internal/telephony/RILRequest;)V

    const/4 v0, 0x4

    invoke-direct {p0, v0, p1, v2, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist getVoiceRegistrationState(Landroid/os/Message;)V
    .registers 7

    .line 1944
    const-class v0, Lcom/android/internal/telephony/RadioNetworkProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RadioNetworkProxy;

    .line 1945
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    const-string v2, "getVoiceRegistrationState"

    invoke-direct {p0, v2, v0, p1, v1}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-nez v1, :cond_13

    return-void

    .line 1950
    :cond_13
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v3, 0x14

    invoke-direct {p0, v3, p1, v1}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p1

    .line 1954
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "> "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v4}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1957
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/RIL;->getCompatVersion(I)Lcom/android/internal/telephony/HalVersion;

    move-result-object v1

    .line 1959
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getVoiceRegistrationState: overrideHalVersion="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1962
    new-instance v3, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda21;

    invoke-direct {v3, v0, p1, v1}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda21;-><init>(Lcom/android/internal/telephony/RadioNetworkProxy;Lcom/android/internal/telephony/RILRequest;Lcom/android/internal/telephony/HalVersion;)V

    const/4 v0, 0x4

    invoke-direct {p0, v0, p1, v2, v3}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist getWakeLock(I)Landroid/os/PowerManager$WakeLock;
    .registers 2

    if-nez p1, :cond_5

    .line 5818
    iget-object p0, p0, Lcom/android/internal/telephony/RIL;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object p0

    :cond_5
    iget-object p0, p0, Lcom/android/internal/telephony/RIL;->mAckWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object p0
.end method

.method public blacklist handleCallSetupRequestFromSim(ZLandroid/os/Message;)V
    .registers 7

    .line 4646
    const-class v0, Lcom/android/internal/telephony/RadioVoiceProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RadioVoiceProxy;

    .line 4647
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    const-string v2, "handleCallSetupRequestFromSim"

    invoke-direct {p0, v2, v0, p2, v1}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-nez v1, :cond_13

    return-void

    :cond_13
    const/16 v1, 0x47

    .line 4652
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p2

    .line 4656
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 4659
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda78;

    invoke-direct {v1, v0, p2, p1}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda78;-><init>(Lcom/android/internal/telephony/RadioVoiceProxy;Lcom/android/internal/telephony/RILRequest;Z)V

    const/4 p1, 0x6

    invoke-direct {p0, p1, p2, v2, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist hangupConnection(ILandroid/os/Message;)V
    .registers 7

    .line 1790
    const-class v0, Lcom/android/internal/telephony/RadioVoiceProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RadioVoiceProxy;

    .line 1791
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    const-string v2, "hangupConnection"

    invoke-direct {p0, v2, v0, p2, v1}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-nez v1, :cond_13

    return-void

    :cond_13
    const/16 v1, 0xc

    .line 1795
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p2

    .line 1798
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " gsmIndex = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1802
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda115;

    invoke-direct {v1, v0, p2, p1}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda115;-><init>(Lcom/android/internal/telephony/RadioVoiceProxy;Lcom/android/internal/telephony/RILRequest;I)V

    const/4 p1, 0x6

    invoke-direct {p0, p1, p2, v2, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public greylist-max-r hangupForegroundResumeBackground(Landroid/os/Message;)V
    .registers 6

    .line 1831
    const-class v0, Lcom/android/internal/telephony/RadioVoiceProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RadioVoiceProxy;

    .line 1832
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    const-string v2, "hangupForegroundResumeBackground"

    invoke-direct {p0, v2, v0, p1, v1}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-nez v1, :cond_13

    return-void

    :cond_13
    const/16 v1, 0xe

    .line 1837
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p1

    .line 1841
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1844
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda34;

    invoke-direct {v1, v0, p1}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda34;-><init>(Lcom/android/internal/telephony/RadioVoiceProxy;Lcom/android/internal/telephony/RILRequest;)V

    const/4 v0, 0x6

    invoke-direct {p0, v0, p1, v2, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public greylist-max-r hangupWaitingOrBackground(Landroid/os/Message;)V
    .registers 6

    .line 1810
    const-class v0, Lcom/android/internal/telephony/RadioVoiceProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RadioVoiceProxy;

    .line 1811
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    const-string v2, "hangupWaitingOrBackground"

    invoke-direct {p0, v2, v0, p1, v1}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-nez v1, :cond_13

    return-void

    :cond_13
    const/16 v1, 0xd

    .line 1816
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p1

    .line 1820
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1823
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda37;

    invoke-direct {v1, v0, p1}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda37;-><init>(Lcom/android/internal/telephony/RadioVoiceProxy;Lcom/android/internal/telephony/RILRequest;)V

    const/4 v0, 0x6

    invoke-direct {p0, v0, p1, v2, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist iccCloseLogicalChannel(IZLandroid/os/Message;)V
    .registers 8

    .line 4014
    const-class v0, Lcom/android/internal/telephony/RadioSimProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RadioSimProxy;

    .line 4015
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    const-string v2, "iccCloseLogicalChannel"

    invoke-direct {p0, v2, v0, p3, v1}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-nez v1, :cond_13

    return-void

    :cond_13
    const/16 v1, 0x74

    .line 4019
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p3, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p3

    .line 4022
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " channel = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " isEs10 = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 4025
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda148;

    invoke-direct {v1, v0, p3, p1, p2}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda148;-><init>(Lcom/android/internal/telephony/RadioSimProxy;Lcom/android/internal/telephony/RILRequest;IZ)V

    const/4 p1, 0x5

    invoke-direct {p0, p1, p3, v2, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist iccIO(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 21

    const/4 v9, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v10, p9

    .line 2144
    invoke-virtual/range {v0 .. v10}, Lcom/android/internal/telephony/RIL;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method public blacklist iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 27

    move-object/from16 v0, p0

    move-object/from16 v1, p10

    .line 2150
    const-class v2, Lcom/android/internal/telephony/RadioSimProxy;

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lcom/android/internal/telephony/RadioSimProxy;

    .line 2151
    sget-object v2, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    const-string v15, "iccIOForApp"

    invoke-direct {v0, v15, v4, v1, v2}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v2

    if-nez v2, :cond_18

    return-void

    :cond_18
    const/16 v2, 0x1c

    .line 2155
    iget-object v3, v0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {v0, v2, v1, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v5

    .line 2158
    sget-boolean v1, Lcom/android/internal/telephony/util/TelephonyUtils;->IS_DEBUGGABLE:Z

    const-string v2, "> iccIO: "

    if-eqz v1, :cond_90

    .line 2159
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v5, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " command = 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2160
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " fileId = 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2161
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " path = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v8, p3

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " p1 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v9, p4

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " p2 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v10, p5

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " p3 =  data = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v12, p7

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " aid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v14, p9

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2159
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    goto :goto_b9

    :cond_90
    move-object/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    move-object/from16 v12, p7

    move-object/from16 v14, p9

    .line 2164
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v5, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    .line 2165
    invoke-static {v2}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2164
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2169
    :goto_b9
    new-instance v3, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda94;

    move/from16 v6, p1

    move/from16 v7, p2

    move/from16 v11, p6

    move-object/from16 v13, p8

    invoke-direct/range {v3 .. v14}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda94;-><init>(Lcom/android/internal/telephony/RadioSimProxy;Lcom/android/internal/telephony/RILRequest;IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x5

    invoke-direct {v0, v1, v5, v15, v3}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist iccOpenLogicalChannel(Ljava/lang/String;ILandroid/os/Message;)V
    .registers 9

    .line 3991
    const-class v0, Lcom/android/internal/telephony/RadioSimProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RadioSimProxy;

    .line 3992
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    const-string v2, "iccOpenLogicalChannel"

    invoke-direct {p0, v2, v0, p3, v1}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-nez v1, :cond_13

    return-void

    :cond_13
    const/16 v1, 0x73

    .line 3996
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p3, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p3

    .line 3999
    sget-boolean v1, Lcom/android/internal/telephony/util/TelephonyUtils;->IS_DEBUGGABLE:Z

    const-string v3, "> "

    if-eqz v1, :cond_51

    .line 4000
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " aid = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " p2 = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    goto :goto_70

    .line 4003
    :cond_51
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 4007
    :goto_70
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda10;

    invoke-direct {v1, v0, p3, p1, p2}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda10;-><init>(Lcom/android/internal/telephony/RadioSimProxy;Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;I)V

    const/4 p1, 0x5

    invoke-direct {p0, p1, p3, v2, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist iccTransmitApduBasicChannel(IIIIILjava/lang/String;Landroid/os/Message;)V
    .registers 20

    move-object/from16 v0, p7

    .line 3964
    const-class v1, Lcom/android/internal/telephony/RadioSimProxy;

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/android/internal/telephony/RadioSimProxy;

    .line 3965
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    const-string v11, "iccTransmitApduBasicChannel"

    invoke-direct {p0, v11, v3, v0, v1}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-nez v1, :cond_16

    return-void

    :cond_16
    const/16 v1, 0x72

    .line 3970
    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, v0, v2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v4

    .line 3974
    sget-boolean v0, Lcom/android/internal/telephony/util/TelephonyUtils;->IS_DEBUGGABLE:Z

    const-string v1, "> "

    if-eqz v0, :cond_7c

    .line 3975
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v4, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v1}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3976
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, " cla = 0x%02X ins = 0x%02X"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3977
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v1, v2, v5}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, " p1 = 0x%02X p2 = 0x%02X p3 = 0x%02X"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " data = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v10, p6

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3975
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    goto :goto_9d

    :cond_7c
    move-object/from16 v10, p6

    .line 3980
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v4, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v1}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 3984
    :goto_9d
    new-instance v2, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda11;

    move v5, p1

    move v6, p2

    move v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    invoke-direct/range {v2 .. v10}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda11;-><init>(Lcom/android/internal/telephony/RadioSimProxy;Lcom/android/internal/telephony/RILRequest;IIIIILjava/lang/String;)V

    const/4 p1, 0x5

    invoke-direct {p0, p1, v4, v11, v2}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist iccTransmitApduLogicalChannel(IIIIIILjava/lang/String;ZLandroid/os/Message;)V
    .registers 23

    move-object/from16 v1, p9

    if-lez p1, :cond_cf

    .line 4038
    const-class v2, Lcom/android/internal/telephony/RadioSimProxy;

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/RadioSimProxy;

    .line 4039
    sget-object v3, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    const-string v12, "iccTransmitApduLogicalChannel"

    invoke-direct {p0, v12, v2, v1, v3}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v3

    if-nez v3, :cond_17

    return-void

    :cond_17
    const/16 v3, 0x75

    .line 4044
    iget-object v4, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v3, v1, v4}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v3

    .line 4048
    sget-boolean v1, Lcom/android/internal/telephony/util/TelephonyUtils;->IS_DEBUGGABLE:Z

    const-string v4, "> "

    if-eqz v1, :cond_98

    .line 4049
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v4}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4050
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, " channel = %d"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4051
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v4, v5}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, " cla = 0x%02X ins = 0x%02X"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4052
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v4, v5, v6}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, " p1 = 0x%02X p2 = 0x%02X p3 = 0x%02X"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " isEs10Command = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v11, p8

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " data = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v10, p7

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4049
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    goto :goto_bb

    :cond_98
    move-object/from16 v10, p7

    move/from16 v11, p8

    .line 4056
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v4}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 4060
    :goto_bb
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda111;

    move v4, p1

    move v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    invoke-direct/range {v1 .. v11}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda111;-><init>(Lcom/android/internal/telephony/RadioSimProxy;Lcom/android/internal/telephony/RILRequest;IIIIIILjava/lang/String;Z)V

    const/4 v2, 0x5

    invoke-direct {p0, v2, v3, v12, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void

    .line 4034
    :cond_cf
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid channel in iccTransmitApduLogicalChannel: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist isCellularIdentifierTransparencyEnabled(Landroid/os/Message;)V
    .registers 6

    .line 5278
    const-class v0, Lcom/android/internal/telephony/RadioNetworkProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RadioNetworkProxy;

    .line 5279
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_2_2:Lcom/android/internal/telephony/HalVersion;

    const-string v2, "isCellularIdentifierTransparencyEnabled"

    invoke-direct {p0, v2, v0, p1, v1}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-nez v1, :cond_13

    return-void

    :cond_13
    const/16 v1, 0xf6

    .line 5287
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p1

    .line 5291
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 5294
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda25;

    invoke-direct {v1, v0, p1}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda25;-><init>(Lcom/android/internal/telephony/RadioNetworkProxy;Lcom/android/internal/telephony/RILRequest;)V

    const/4 v0, 0x4

    invoke-direct {p0, v0, p1, v2, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method blacklist isLogOrTrace()Z
    .registers 1

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method blacklist isLogvOrTrace()Z
    .registers 3

    const-wide/32 v0, 0x200000

    .line 6205
    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result p0

    return p0
.end method

.method public blacklist isN1ModeEnabled(Landroid/os/Message;)V
    .registers 6

    .line 5225
    const-class v0, Lcom/android/internal/telephony/RadioNetworkProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RadioNetworkProxy;

    .line 5226
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_2_1:Lcom/android/internal/telephony/HalVersion;

    const-string v2, "isN1ModeEnabled"

    invoke-direct {p0, v2, v0, p1, v1}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-nez v1, :cond_13

    return-void

    :cond_13
    const/16 v1, 0xf2

    .line 5230
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p1

    .line 5234
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 5237
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda27;

    invoke-direct {v1, v0, p1}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda27;-><init>(Lcom/android/internal/telephony/RadioNetworkProxy;Lcom/android/internal/telephony/RILRequest;)V

    const/4 v0, 0x4

    invoke-direct {p0, v0, p1, v2, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist isNrDualConnectivityEnabled(Landroid/os/Message;Landroid/os/WorkSource;)V
    .registers 6

    .line 3061
    const-class v0, Lcom/android/internal/telephony/RadioNetworkProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RadioNetworkProxy;

    .line 3062
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_6:Lcom/android/internal/telephony/HalVersion;

    const-string v2, "isNrDualConnectivityEnabled"

    invoke-direct {p0, v2, v0, p1, v1}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-nez v1, :cond_13

    return-void

    :cond_13
    const/16 v1, 0xd6

    .line 3068
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/RIL;->getDefaultWorkSourceIfInvalid(Landroid/os/WorkSource;)Landroid/os/WorkSource;

    move-result-object p2

    .line 3067
    invoke-direct {p0, v1, p1, p2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p1

    .line 3071
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "> "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v1}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 3074
    new-instance p2, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda30;

    invoke-direct {p2, v0, p1}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda30;-><init>(Lcom/android/internal/telephony/RadioNetworkProxy;Lcom/android/internal/telephony/RILRequest;)V

    const/4 v0, 0x4

    invoke-direct {p0, v0, p1, v2, p2}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist isNullCipherAndIntegrityEnabled(Landroid/os/Message;)V
    .registers 6

    .line 5157
    const-class v0, Lcom/android/internal/telephony/RadioNetworkProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RadioNetworkProxy;

    .line 5158
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_2_1:Lcom/android/internal/telephony/HalVersion;

    const-string v2, "isNullCipherAndIntegrityEnabled"

    invoke-direct {p0, v2, v0, p1, v1}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-nez v1, :cond_13

    return-void

    :cond_13
    const/16 v1, 0xf5

    .line 5163
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p1

    .line 5167
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 5170
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda54;

    invoke-direct {v1, v0, p1}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda54;-><init>(Lcom/android/internal/telephony/RadioNetworkProxy;Lcom/android/internal/telephony/RILRequest;)V

    const/4 v0, 0x4

    invoke-direct {p0, v0, p1, v2, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist isSatelliteEnabledForCarrier(ILandroid/os/Message;)V
    .registers 7

    .line 5427
    const-class v0, Lcom/android/internal/telephony/RadioNetworkProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RadioNetworkProxy;

    const/4 v1, 0x4

    .line 5428
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->getHalVersion(I)Lcom/android/internal/telephony/HalVersion;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_2_3:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/HalVersion;->less(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 5429
    const-string v0, "isSatelliteEnabledForCarrier: SatelliteModemInterface is used."

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 5430
    invoke-static {}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->getInstance()Lcom/android/internal/telephony/satellite/SatelliteModemInterface;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->requestIsSatelliteEnabledForCarrier(ILandroid/os/Message;)V

    return-void

    :cond_22
    const/16 v2, 0xfd

    .line 5435
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v2, p2, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p2

    .line 5439
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " simSlot="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 5443
    new-instance p1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda66;

    invoke-direct {p1, v0, p2}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda66;-><init>(Lcom/android/internal/telephony/RadioNetworkProxy;Lcom/android/internal/telephony/RILRequest;)V

    const-string v0, "isSatelliteEnabledForCarrier"

    invoke-direct {p0, v1, p2, v0, p1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist isSecurityAlgorithmsUpdatedEnabled(Landroid/os/Message;)V
    .registers 6

    .line 5336
    const-class v0, Lcom/android/internal/telephony/RadioNetworkProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RadioNetworkProxy;

    .line 5337
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_2_2:Lcom/android/internal/telephony/HalVersion;

    const-string v2, "isSecurityAlgorithmsUpdatedEnabled"

    invoke-direct {p0, v2, v0, p1, v1}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-nez v1, :cond_13

    return-void

    :cond_13
    const/16 v1, 0xf9

    .line 5345
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p1

    .line 5349
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 5352
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda5;

    invoke-direct {v1, v0, p1}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda5;-><init>(Lcom/android/internal/telephony/RadioNetworkProxy;Lcom/android/internal/telephony/RILRequest;)V

    const/4 v0, 0x4

    invoke-direct {p0, v0, p1, v2, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist isVoNrEnabled(Landroid/os/Message;Landroid/os/WorkSource;)V
    .registers 7

    .line 3125
    const-class v0, Lcom/android/internal/telephony/RadioVoiceProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RadioVoiceProxy;

    .line 3127
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_2_0:Lcom/android/internal/telephony/HalVersion;

    const-string v2, "isVoNrEnabled"

    const/4 v3, 0x0

    invoke-direct {p0, v2, v0, v3, v1}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-nez v1, :cond_24

    .line 3128
    invoke-direct {p0}, Lcom/android/internal/telephony/RIL;->isVoNrEnabled()Z

    move-result p0

    if-eqz p1, :cond_23

    .line 3130
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-static {p1, p0, v3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 3131
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_23
    return-void

    :cond_24
    const/16 v1, 0xe2

    .line 3137
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/RIL;->getDefaultWorkSourceIfInvalid(Landroid/os/WorkSource;)Landroid/os/WorkSource;

    move-result-object p2

    .line 3136
    invoke-direct {p0, v1, p1, p2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p1

    .line 3140
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "> "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v1}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 3143
    new-instance p2, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda117;

    invoke-direct {p2, v0, p1}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda117;-><init>(Lcom/android/internal/telephony/RadioVoiceProxy;Lcom/android/internal/telephony/RILRequest;)V

    const/4 v0, 0x6

    invoke-direct {p0, v0, p1, v2, p2}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method greylist-max-r makeStaticRadioCapability()Lcom/android/internal/telephony/RadioCapability;
    .registers 9

    .line 5951
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10402ba

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 5953
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_19

    .line 5954
    invoke-static {v0}, Landroid/telephony/RadioAccessFamily;->rafTypeFromString(Ljava/lang/String;)I

    move-result v0

    :goto_17
    move v5, v0

    goto :goto_1b

    :cond_19
    const/4 v0, 0x0

    goto :goto_17

    .line 5956
    :goto_1b
    new-instance v1, Lcom/android/internal/telephony/RadioCapability;

    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-string v6, ""

    const/4 v7, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/telephony/RadioCapability;-><init>(IIIILjava/lang/String;I)V

    .line 5958
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Faking RIL_REQUEST_GET_RADIO_CAPABILITY response using "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    return-object v1
.end method

.method blacklist notifyBarringInfoChanged(Landroid/telephony/BarringInfo;)V
    .registers 4

    .line 6292
    iput-object p1, p0, Lcom/android/internal/telephony/BaseCommands;->mLastBarringInfo:Landroid/telephony/BarringInfo;

    .line 6293
    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mBarringInfoChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    new-instance v0, Landroid/os/AsyncResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    return-void
.end method

.method greylist notifyRegistrantsCdmaInfoRec(Lcom/android/internal/telephony/cdma/CdmaInformationRecords;)V
    .registers 2

    .line 0
    return-void
.end method

.method blacklist notifyRegistrantsImeiMappingChanged(Landroid/hardware/radio/modem/ImeiInfo;)V
    .registers 4

    .line 6177
    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mImeiInfoRegistrants:Lcom/android/internal/telephony/RegistrantList;

    if-eqz p0, :cond_d

    .line 6178
    new-instance v0, Landroid/os/AsyncResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    :cond_d
    return-void
.end method

.method greylist-max-r notifyRegistrantsRilConnectionChanged(I)V
    .registers 4

    .line 6117
    iput p1, p0, Lcom/android/internal/telephony/BaseCommands;->mRilVersion:I

    .line 6118
    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mRilConnectedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    if-eqz p0, :cond_14

    .line 6119
    new-instance v0, Landroid/os/AsyncResult;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    const/4 p1, 0x0

    invoke-direct {v0, p1, v1, p1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    :cond_14
    return-void
.end method

.method public blacklist nvReadItem(ILandroid/os/Message;Landroid/os/WorkSource;)V
    .registers 4

    .line 0
    return-void
.end method

.method public blacklist nvResetConfig(ILandroid/os/Message;)V
    .registers 7

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    goto :goto_16

    .line 4138
    :cond_4
    const-class v0, Lcom/android/internal/telephony/RadioModemProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RadioModemProxy;

    .line 4139
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    const-string v2, "nvResetConfig"

    invoke-direct {p0, v2, v0, p2, v1}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-nez v1, :cond_17

    :goto_16
    return-void

    :cond_17
    const/16 v1, 0x79

    .line 4143
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p2

    .line 4146
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " resetType = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 4150
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda137;

    invoke-direct {v1, v0, p2, p1}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda137;-><init>(Lcom/android/internal/telephony/RadioModemProxy;Lcom/android/internal/telephony/RILRequest;I)V

    const/4 p1, 0x3

    invoke-direct {p0, p1, p2, v2, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist nvWriteCdmaPrl([BLandroid/os/Message;)V
    .registers 3

    .line 0
    return-void
.end method

.method public blacklist nvWriteItem(ILjava/lang/String;Landroid/os/Message;Landroid/os/WorkSource;)V
    .registers 5

    .line 0
    return-void
.end method

.method public declared-synchronized blacklist onSlotActiveStatusChange(Z)V
    .registers 3

    monitor-enter p0

    const/4 v0, 0x0

    .line 1043
    :try_start_2
    iput-boolean v0, p0, Lcom/android/internal/telephony/RIL;->mIsRadioProxyInitialized:Z

    if-eqz p1, :cond_17

    :goto_6
    const/4 p1, 0x7

    if-gt v0, p1, :cond_1e

    if-nez v0, :cond_11

    .line 1048
    invoke-virtual {p0}, Lcom/android/internal/telephony/RIL;->getRadioProxy()Landroid/hardware/radio/V1_0/IRadio;

    goto :goto_14

    :catchall_f
    move-exception p1

    goto :goto_20

    .line 1050
    :cond_11
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(I)Lcom/android/internal/telephony/RadioServiceProxy;

    :goto_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 1055
    :cond_17
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->resetProxyAndRequestList(I)V

    const/4 p1, 0x1

    .line 1056
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->resetProxyAndRequestList(I)V
    :try_end_1e
    .catchall {:try_start_2 .. :try_end_1e} :catchall_f

    .line 1058
    :cond_1e
    monitor-exit p0

    return-void

    :goto_20
    :try_start_20
    monitor-exit p0
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_f

    throw p1
.end method

.method blacklist processIndication(II)V
    .registers 4

    const/4 v0, 0x1

    if-ne p2, v0, :cond_b

    .line 5459
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->sendAck(I)V

    .line 5460
    const-string p1, "Unsol response received; Sending ack to ril.cpp"

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    :cond_b
    return-void
.end method

.method blacklist processRequestAck(I)V
    .registers 4

    .line 5468
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mRequestList:Landroid/util/SparseArray;

    monitor-enter v0

    .line 5469
    :try_start_3
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mRequestList:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/RILRequest;

    .line 5470
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_48

    if-nez v1, :cond_23

    .line 5472
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "processRequestAck: Unexpected solicited ack response! serial: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->riljLogw(Ljava/lang/String;)V

    return-void

    .line 5474
    :cond_23
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->decrementWakeLock(Lcom/android/internal/telephony/RILRequest;)V

    .line 5476
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " Ack < "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v0}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    return-void

    :catchall_48
    move-exception p0

    .line 5470
    :try_start_49
    monitor-exit v0
    :try_end_4a
    .catchall {:try_start_49 .. :try_end_4a} :catchall_48

    throw p0
.end method

.method public blacklist processResponse(ILandroid/hardware/radio/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;
    .registers 5

    .line 5518
    iget v0, p2, Landroid/hardware/radio/RadioResponseInfo;->serial:I

    iget v1, p2, Landroid/hardware/radio/RadioResponseInfo;->error:I

    iget p2, p2, Landroid/hardware/radio/RadioResponseInfo;->type:I

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/android/internal/telephony/RIL;->processResponseInternal(IIII)Lcom/android/internal/telephony/RILRequest;

    move-result-object p0

    return-object p0
.end method

.method public blacklist processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;
    .registers 5

    .line 5490
    iget v0, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->serial:I

    iget v1, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    iget p1, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->type:I

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processResponseInternal(IIII)Lcom/android/internal/telephony/RILRequest;

    move-result-object p0

    return-object p0
.end method

.method public blacklist processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/RadioResponseInfo;Ljava/lang/Object;)V
    .registers 5

    .line 5659
    iget v0, p2, Landroid/hardware/radio/RadioResponseInfo;->error:I

    iget p2, p2, Landroid/hardware/radio/RadioResponseInfo;->type:I

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/android/internal/telephony/RIL;->processResponseDoneInternal(Lcom/android/internal/telephony/RILRequest;IILjava/lang/Object;)V

    return-void
.end method

.method public blacklist processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V
    .registers 5

    .line 5629
    iget v0, p2, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    iget p2, p2, Landroid/hardware/radio/V1_0/RadioResponseInfo;->type:I

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/android/internal/telephony/RIL;->processResponseDoneInternal(Lcom/android/internal/telephony/RILRequest;IILjava/lang/Object;)V

    return-void
.end method

.method public blacklist processResponseDone_1_6(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_6/RadioResponseInfo;Ljava/lang/Object;)V
    .registers 5

    .line 5644
    iget v0, p2, Landroid/hardware/radio/V1_6/RadioResponseInfo;->error:I

    iget p2, p2, Landroid/hardware/radio/V1_6/RadioResponseInfo;->type:I

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/android/internal/telephony/RIL;->processResponseDoneInternal(Lcom/android/internal/telephony/RILRequest;IILjava/lang/Object;)V

    return-void
.end method

.method public blacklist processResponseFallback(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V
    .registers 6

    .line 5698
    iget v0, p2, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_2b

    .line 5699
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "< "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v1}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " request not supported, falling back"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 5702
    :cond_2b
    iget v0, p2, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    iget p2, p2, Landroid/hardware/radio/V1_0/RadioResponseInfo;->type:I

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/android/internal/telephony/RIL;->processResponseCleanUp(Lcom/android/internal/telephony/RILRequest;IILjava/lang/Object;)V

    return-void
.end method

.method public blacklist processResponse_1_6(Landroid/hardware/radio/V1_6/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;
    .registers 5

    .line 5504
    iget v0, p1, Landroid/hardware/radio/V1_6/RadioResponseInfo;->serial:I

    iget v1, p1, Landroid/hardware/radio/V1_6/RadioResponseInfo;->error:I

    iget p1, p1, Landroid/hardware/radio/V1_6/RadioResponseInfo;->type:I

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processResponseInternal(IIII)Lcom/android/internal/telephony/RILRequest;

    move-result-object p0

    return-object p0
.end method

.method public blacklist queryAvailableBandMode(Landroid/os/Message;)V
    .registers 6

    .line 2845
    const-class v0, Lcom/android/internal/telephony/RadioNetworkProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RadioNetworkProxy;

    .line 2846
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    const-string v2, "queryAvailableBandMode"

    invoke-direct {p0, v2, v0, p1, v1}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-nez v1, :cond_13

    return-void

    :cond_13
    const/16 v1, 0x42

    .line 2851
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p1

    .line 2855
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2858
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda64;

    invoke-direct {v1, v0, p1}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda64;-><init>(Lcom/android/internal/telephony/RadioNetworkProxy;Lcom/android/internal/telephony/RILRequest;)V

    const/4 v0, 0x4

    invoke-direct {p0, v0, p1, v2, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist queryCLIP(Landroid/os/Message;)V
    .registers 6

    .line 2729
    const-class v0, Lcom/android/internal/telephony/RadioVoiceProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RadioVoiceProxy;

    .line 2730
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    const-string v2, "queryCLIP"

    invoke-direct {p0, v2, v0, p1, v1}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-nez v1, :cond_13

    return-void

    :cond_13
    const/16 v1, 0x37

    .line 2734
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p1

    .line 2737
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2740
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda60;

    invoke-direct {v1, v0, p1}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda60;-><init>(Lcom/android/internal/telephony/RadioVoiceProxy;Lcom/android/internal/telephony/RILRequest;)V

    const/4 v0, 0x6

    invoke-direct {p0, v0, p1, v2, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist queryCallForwardStatus(IILjava/lang/String;Landroid/os/Message;)V
    .registers 13

    .line 2257
    const-class v0, Lcom/android/internal/telephony/RadioVoiceProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/internal/telephony/RadioVoiceProxy;

    .line 2258
    sget-object v0, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    const-string v7, "queryCallForwardStatus"

    invoke-direct {p0, v7, v2, p4, v0}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-nez v0, :cond_14

    return-void

    :cond_14
    const/16 v0, 0x21

    .line 2262
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v0, p4, v1}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v3

    .line 2266
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "> "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v0}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " cfReason = "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " serviceClass = "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p0, p4}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2270
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda48;

    move v4, p1

    move v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda48;-><init>(Lcom/android/internal/telephony/RadioVoiceProxy;Lcom/android/internal/telephony/RILRequest;IILjava/lang/String;)V

    const/4 p1, 0x6

    invoke-direct {p0, p1, v3, v7, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist queryCallWaiting(ILandroid/os/Message;)V
    .registers 7

    .line 2299
    const-class v0, Lcom/android/internal/telephony/RadioVoiceProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RadioVoiceProxy;

    .line 2300
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    const-string v2, "queryCallWaiting"

    invoke-direct {p0, v2, v0, p2, v1}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-nez v1, :cond_13

    return-void

    :cond_13
    const/16 v1, 0x23

    .line 2304
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p2

    .line 2308
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " serviceClass = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2312
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda112;

    invoke-direct {v1, v0, p2, p1}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda112;-><init>(Lcom/android/internal/telephony/RadioVoiceProxy;Lcom/android/internal/telephony/RILRequest;I)V

    const/4 p1, 0x6

    invoke-direct {p0, p1, p2, v2, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist queryCdmaRoamingPreference(Landroid/os/Message;)V
    .registers 2

    .line 0
    return-void
.end method

.method public blacklist queryFacilityLock(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V
    .registers 11

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p4

    .line 2400
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/RIL;->queryFacilityLockForApp(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method public blacklist queryFacilityLockForApp(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/os/Message;)V
    .registers 15

    .line 2406
    const-class v0, Lcom/android/internal/telephony/RadioSimProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/internal/telephony/RadioSimProxy;

    .line 2407
    sget-object v0, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    const-string v8, "queryFacilityLockForApp"

    invoke-direct {p0, v8, v2, p5, v0}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-nez v0, :cond_14

    return-void

    :cond_14
    const/16 v0, 0x2a

    .line 2411
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v0, p5, v1}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v3

    .line 2415
    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "> "

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v0}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " facility = "

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " serviceClass = "

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " appId = "

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p0, p5}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2420
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda53;

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move-object v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda53;-><init>(Lcom/android/internal/telephony/RadioSimProxy;Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/4 p1, 0x5

    invoke-direct {p0, p1, v3, v8, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist queryTTYMode(Landroid/os/Message;)V
    .registers 6

    .line 3252
    const-class v0, Lcom/android/internal/telephony/RadioVoiceProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RadioVoiceProxy;

    .line 3253
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    const-string v2, "queryTTYMode"

    invoke-direct {p0, v2, v0, p1, v1}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-nez v1, :cond_13

    return-void

    :cond_13
    const/16 v1, 0x51

    .line 3257
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p1

    .line 3260
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 3263
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda4;

    invoke-direct {v1, v0, p1}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda4;-><init>(Lcom/android/internal/telephony/RadioVoiceProxy;Lcom/android/internal/telephony/RILRequest;)V

    const/4 v0, 0x6

    invoke-direct {p0, v0, p1, v2, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist rejectCall(Landroid/os/Message;)V
    .registers 6

    .line 1889
    const-class v0, Lcom/android/internal/telephony/RadioVoiceProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RadioVoiceProxy;

    .line 1890
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    const-string v2, "rejectCall"

    invoke-direct {p0, v2, v0, p1, v1}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-nez v1, :cond_13

    return-void

    :cond_13
    const/16 v1, 0x11

    .line 1894
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p1

    .line 1897
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1900
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda29;

    invoke-direct {v1, v0, p1}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda29;-><init>(Lcom/android/internal/telephony/RadioVoiceProxy;Lcom/android/internal/telephony/RILRequest;)V

    const/4 v0, 0x6

    invoke-direct {p0, v0, p1, v2, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist releasePduSessionId(Landroid/os/Message;I)V
    .registers 7

    .line 4711
    const-class v0, Lcom/android/internal/telephony/RadioDataProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RadioDataProxy;

    .line 4712
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_6:Lcom/android/internal/telephony/HalVersion;

    const-string v2, "releasePduSessionId"

    invoke-direct {p0, v2, v0, p1, v1}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-nez v1, :cond_13

    return-void

    :cond_13
    const/16 v1, 0xd8

    .line 4716
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p1

    .line 4719
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 4722
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda85;

    invoke-direct {v1, v0, p1, p2}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda85;-><init>(Lcom/android/internal/telephony/RadioDataProxy;Lcom/android/internal/telephony/RILRequest;I)V

    const/4 p2, 0x1

    invoke-direct {p0, p2, p1, v2, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist reportSmsMemoryStatus(ZLandroid/os/Message;)V
    .registers 7

    .line 3739
    const-class v0, Lcom/android/internal/telephony/RadioMessagingProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RadioMessagingProxy;

    .line 3740
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    const-string v2, "reportSmsMemoryStatus"

    invoke-direct {p0, v2, v0, p2, v1}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-nez v1, :cond_13

    return-void

    :cond_13
    const/16 v1, 0x66

    .line 3745
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p2

    .line 3749
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " available = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 3753
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda105;

    invoke-direct {v1, v0, p2, p1}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda105;-><init>(Lcom/android/internal/telephony/RadioMessagingProxy;Lcom/android/internal/telephony/RILRequest;Z)V

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2, v2, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist reportStkServiceIsRunning(Landroid/os/Message;)V
    .registers 6

    .line 3760
    const-class v0, Lcom/android/internal/telephony/RadioSimProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RadioSimProxy;

    .line 3761
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    const-string v2, "reportStkServiceIsRunning"

    invoke-direct {p0, v2, v0, p1, v1}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-nez v1, :cond_13

    return-void

    :cond_13
    const/16 v1, 0x67

    .line 3765
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p1

    .line 3769
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 3772
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda90;

    invoke-direct {v1, v0, p1}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda90;-><init>(Lcom/android/internal/telephony/RadioSimProxy;Lcom/android/internal/telephony/RILRequest;)V

    const/4 v0, 0x5

    invoke-direct {p0, v0, p1, v2, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist requestIccSimAuthentication(ILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 13

    .line 4219
    const-class v0, Lcom/android/internal/telephony/RadioSimProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/internal/telephony/RadioSimProxy;

    .line 4220
    sget-object v0, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    const-string v7, "requestIccSimAuthentication"

    invoke-direct {p0, v7, v2, p4, v0}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-nez v0, :cond_14

    return-void

    :cond_14
    const/16 v0, 0x7d

    .line 4225
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v0, p4, v1}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v3

    .line 4230
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "> "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v0}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p0, p4}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 4233
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda35;

    move v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda35;-><init>(Lcom/android/internal/telephony/RadioSimProxy;Lcom/android/internal/telephony/RILRequest;ILjava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x5

    invoke-direct {p0, p1, v3, v7, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist requestShutdown(Landroid/os/Message;)V
    .registers 6

    .line 4264
    const-class v0, Lcom/android/internal/telephony/RadioModemProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RadioModemProxy;

    .line 4265
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    const-string v2, "requestShutdown"

    invoke-direct {p0, v2, v0, p1, v1}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-nez v1, :cond_13

    return-void

    :cond_13
    const/16 v1, 0x81

    .line 4269
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p1

    .line 4272
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 4275
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda113;

    invoke-direct {v1, v0, p1}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda113;-><init>(Lcom/android/internal/telephony/RadioModemProxy;Lcom/android/internal/telephony/RILRequest;)V

    const/4 v0, 0x3

    invoke-direct {p0, v0, p1, v2, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method greylist riljLog(Ljava/lang/String;)V
    .registers 3

    .line 6185
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " [PHONE"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/RIL;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RILJ"

    invoke-static {p1, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method blacklist riljLoge(Ljava/lang/String;)V
    .registers 3

    .line 6189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " [PHONE"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/RIL;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RILJ"

    invoke-static {p1, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method blacklist riljLogw(Ljava/lang/String;)V
    .registers 3

    .line 6197
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " [PHONE"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/RIL;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RILJ"

    invoke-static {p1, p0}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public blacklist sendAnbrQuery(IIILandroid/os/Message;)V
    .registers 13

    .line 5010
    const-class v0, Lcom/android/internal/telephony/RadioImsProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/internal/telephony/RadioImsProxy;

    .line 5011
    sget-object v0, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_2_0:Lcom/android/internal/telephony/HalVersion;

    const-string v7, "sendAnbrQuery"

    invoke-direct {p0, v7, v2, p4, v0}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-nez v0, :cond_14

    return-void

    :cond_14
    const/16 v0, 0xed

    .line 5015
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v0, p4, v1}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v3

    .line 5018
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "> "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v0}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p0, p4}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 5021
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda156;

    move v4, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda156;-><init>(Lcom/android/internal/telephony/RadioImsProxy;Lcom/android/internal/telephony/RILRequest;III)V

    const/4 p1, 0x7

    invoke-direct {p0, p1, v3, v7, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist sendBurstDtmf(Ljava/lang/String;IILandroid/os/Message;)V
    .registers 13

    .line 3352
    const-class v0, Lcom/android/internal/telephony/RadioVoiceProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/internal/telephony/RadioVoiceProxy;

    .line 3353
    sget-object v0, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    const-string v7, "sendBurstDtmf"

    invoke-direct {p0, v7, v2, p4, v0}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-nez v0, :cond_14

    return-void

    :cond_14
    const/16 v0, 0x55

    .line 3357
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v0, p4, v1}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v3

    .line 3360
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "> "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v0}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " dtmfString = "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " on = "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " off = "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p0, p4}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 3364
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda42;

    move-object v4, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda42;-><init>(Lcom/android/internal/telephony/RadioVoiceProxy;Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;II)V

    const/4 p1, 0x6

    invoke-direct {p0, p1, v3, v7, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist sendCDMAFeatureCode(Ljava/lang/String;Landroid/os/Message;)V
    .registers 3

    .line 0
    return-void
.end method

.method public blacklist sendCdmaSMSExpectMore([BLandroid/os/Message;)V
    .registers 3

    .line 0
    return-void
.end method

.method public blacklist sendCdmaSms([BLandroid/os/Message;)V
    .registers 3

    .line 0
    return-void
.end method

.method public blacklist sendDeviceState(IZLandroid/os/Message;)V
    .registers 8

    .line 4416
    const-class v0, Lcom/android/internal/telephony/RadioModemProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RadioModemProxy;

    .line 4417
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    const-string v2, "sendDeviceState"

    invoke-direct {p0, v2, v0, p3, v1}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-nez v1, :cond_13

    return-void

    :cond_13
    const/16 v1, 0x8a

    .line 4421
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p3, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p3

    .line 4424
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 4428
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda101;

    invoke-direct {v1, v0, p3, p1, p2}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda101;-><init>(Lcom/android/internal/telephony/RadioModemProxy;Lcom/android/internal/telephony/RILRequest;IZ)V

    const/4 p1, 0x3

    invoke-direct {p0, p1, p3, v2, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist sendDtmf(CLandroid/os/Message;)V
    .registers 7

    .line 2035
    const-class v0, Lcom/android/internal/telephony/RadioVoiceProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RadioVoiceProxy;

    .line 2036
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    const-string v2, "sendDtmf"

    invoke-direct {p0, v2, v0, p2, v1}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-nez v1, :cond_13

    return-void

    :cond_13
    const/16 v1, 0x18

    .line 2040
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p2

    .line 2044
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2047
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda138;

    invoke-direct {v1, v0, p2, p1}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda138;-><init>(Lcom/android/internal/telephony/RadioVoiceProxy;Lcom/android/internal/telephony/RILRequest;C)V

    const/4 p1, 0x6

    invoke-direct {p0, p1, p2, v2, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist sendEnvelope(Ljava/lang/String;Landroid/os/Message;)V
    .registers 7

    .line 2865
    const-class v0, Lcom/android/internal/telephony/RadioSimProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RadioSimProxy;

    .line 2866
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    const-string v2, "sendEnvelope"

    invoke-direct {p0, v2, v0, p2, v1}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-nez v1, :cond_13

    return-void

    :cond_13
    const/16 v1, 0x45

    .line 2870
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p2

    .line 2874
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " contents = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2878
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda67;

    invoke-direct {v1, v0, p2, p1}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda67;-><init>(Lcom/android/internal/telephony/RadioSimProxy;Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;)V

    const/4 p1, 0x5

    invoke-direct {p0, p1, p2, v2, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist sendEnvelopeWithStatus(Ljava/lang/String;Landroid/os/Message;)V
    .registers 7

    .line 2907
    const-class v0, Lcom/android/internal/telephony/RadioSimProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RadioSimProxy;

    .line 2908
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    const-string v2, "sendEnvelopeWithStatus"

    invoke-direct {p0, v2, v0, p2, v1}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-nez v1, :cond_13

    return-void

    :cond_13
    const/16 v1, 0x6b

    .line 2912
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p2

    .line 2916
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " contents = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2920
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda61;

    invoke-direct {v1, v0, p2, p1}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda61;-><init>(Lcom/android/internal/telephony/RadioSimProxy;Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;)V

    const/4 p1, 0x5

    invoke-direct {p0, p1, p2, v2, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist sendImsCdmaSms([BIILandroid/os/Message;)V
    .registers 15

    .line 3942
    const-class v0, Lcom/android/internal/telephony/RadioMessagingProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/internal/telephony/RadioMessagingProxy;

    .line 3943
    sget-object v0, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    const-string v9, "sendImsCdmaSms"

    invoke-direct {p0, v9, v3, p4, v0}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-nez v0, :cond_14

    return-void

    :cond_14
    const/16 v0, 0x71

    .line 3947
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v0, p4, v1}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v4

    .line 3951
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v4, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v1}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 3954
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda36;

    move-object v2, p0

    move-object v5, p1

    move v6, p2

    move v7, p3

    move-object v8, p4

    invoke-direct/range {v1 .. v8}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda36;-><init>(Lcom/android/internal/telephony/RIL;Lcom/android/internal/telephony/RadioMessagingProxy;Lcom/android/internal/telephony/RILRequest;[BIILandroid/os/Message;)V

    const/4 p0, 0x2

    invoke-direct {v2, p0, v4, v9, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist sendImsGsmSms(Ljava/lang/String;Ljava/lang/String;IILandroid/os/Message;)V
    .registers 16

    .line 3921
    const-class v0, Lcom/android/internal/telephony/RadioMessagingProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/internal/telephony/RadioMessagingProxy;

    .line 3922
    sget-object v0, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    const-string v9, "sendImsGsmSms"

    invoke-direct {p0, v9, v2, p5, v0}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-nez v0, :cond_14

    return-void

    :cond_14
    const/16 v0, 0x71

    .line 3926
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v0, p5, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v3

    .line 3930
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "> "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v4}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 3933
    new-instance v0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda135;

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move v7, p4

    move-object v8, p5

    invoke-direct/range {v0 .. v8}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda135;-><init>(Lcom/android/internal/telephony/RIL;Lcom/android/internal/telephony/RadioMessagingProxy;Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/String;IILandroid/os/Message;)V

    const/4 v2, 0x2

    invoke-direct {p0, v2, v3, v9, v0}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist sendSMS(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 13

    .line 2054
    const-class v0, Lcom/android/internal/telephony/RadioMessagingProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/internal/telephony/RadioMessagingProxy;

    .line 2055
    sget-object v0, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    const-string v8, "sendSMS"

    invoke-direct {p0, v8, v3, p3, v0}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-nez v0, :cond_14

    return-void

    :cond_14
    const/16 v0, 0x19

    .line 2059
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v0, p3, v1}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v4

    .line 2063
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v4, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v1}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2066
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda104;

    move-object v2, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda104;-><init>(Lcom/android/internal/telephony/RIL;Lcom/android/internal/telephony/RadioMessagingProxy;Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    const/4 p0, 0x2

    invoke-direct {v2, p0, v4, v8, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist sendSMSExpectMore(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 13

    .line 2093
    const-class v0, Lcom/android/internal/telephony/RadioMessagingProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/internal/telephony/RadioMessagingProxy;

    .line 2094
    sget-object v0, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    const-string v8, "sendSMSExpectMore"

    invoke-direct {p0, v8, v3, p3, v0}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-nez v0, :cond_14

    return-void

    :cond_14
    const/16 v0, 0x1a

    .line 2098
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v0, p3, v1}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v4

    .line 2103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v4, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v1}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2106
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda95;

    move-object v2, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda95;-><init>(Lcom/android/internal/telephony/RIL;Lcom/android/internal/telephony/RadioMessagingProxy;Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    const/4 p0, 0x2

    invoke-direct {v2, p0, v4, v8, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist sendTerminalResponse(Ljava/lang/String;Landroid/os/Message;)V
    .registers 7

    .line 2885
    const-class v0, Lcom/android/internal/telephony/RadioSimProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RadioSimProxy;

    .line 2886
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    const-string v2, "sendTerminalResponse"

    invoke-direct {p0, v2, v0, p2, v1}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-nez v1, :cond_13

    return-void

    :cond_13
    const/16 v1, 0x46

    .line 2890
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p2

    .line 2894
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " contents = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2895
    sget-boolean v3, Lcom/android/internal/telephony/util/TelephonyUtils;->IS_DEBUGGABLE:Z

    if-eqz v3, :cond_40

    move-object v3, p1

    goto :goto_44

    .line 2896
    :cond_40
    invoke-static {p1}, Lcom/android/internal/telephony/RILUtils;->convertToCensoredTerminalResponse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_44
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2894
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2899
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda79;

    invoke-direct {v1, v0, p2, p1}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda79;-><init>(Lcom/android/internal/telephony/RadioSimProxy;Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;)V

    const/4 p1, 0x5

    invoke-direct {p0, p1, p2, v2, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist sendUSSD(Ljava/lang/String;Landroid/os/Message;)V
    .registers 7

    .line 2180
    const-class v0, Lcom/android/internal/telephony/RadioVoiceProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RadioVoiceProxy;

    .line 2181
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    const-string v2, "sendUSSD"

    invoke-direct {p0, v2, v0, p2, v1}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-nez v1, :cond_13

    return-void

    :cond_13
    const/16 v1, 0x1d

    .line 2185
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p2

    .line 2190
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ussd = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "*******"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2194
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda107;

    invoke-direct {v1, v0, p2, p1}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda107;-><init>(Lcom/android/internal/telephony/RadioVoiceProxy;Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;)V

    const/4 p1, 0x6

    invoke-direct {p0, p1, p2, v2, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist separateConnection(ILandroid/os/Message;)V
    .registers 7

    .line 2654
    const-class v0, Lcom/android/internal/telephony/RadioVoiceProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RadioVoiceProxy;

    .line 2655
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    const-string v2, "separateConnection"

    invoke-direct {p0, v2, v0, p2, v1}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-nez v1, :cond_13

    return-void

    :cond_13
    const/16 v1, 0x34

    .line 2659
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p2

    .line 2663
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " gsmIndex = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2667
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda128;

    invoke-direct {v1, v0, p2, p1}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda128;-><init>(Lcom/android/internal/telephony/RadioVoiceProxy;Lcom/android/internal/telephony/RILRequest;I)V

    const/4 p1, 0x6

    invoke-direct {p0, p1, p2, v2, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist setAllowedCarriers(Landroid/telephony/CarrierRestrictionRules;Landroid/os/Message;Landroid/os/WorkSource;)V
    .registers 7

    .line 4375
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4377
    const-class v0, Lcom/android/internal/telephony/RadioSimProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RadioSimProxy;

    .line 4378
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    const-string v2, "setAllowedCarriers"

    invoke-direct {p0, v2, v0, p2, v1}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-nez v1, :cond_16

    return-void

    :cond_16
    const/16 v1, 0x88

    .line 4383
    invoke-direct {p0, p3}, Lcom/android/internal/telephony/RIL;->getDefaultWorkSourceIfInvalid(Landroid/os/WorkSource;)Landroid/os/WorkSource;

    move-result-object p3

    .line 4382
    invoke-direct {p0, v1, p2, p3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p2

    .line 4386
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "> "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v1}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " params: "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 4389
    new-instance p3, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda97;

    invoke-direct {p3, p0, v0, p2, p1}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda97;-><init>(Lcom/android/internal/telephony/RIL;Lcom/android/internal/telephony/RadioSimProxy;Lcom/android/internal/telephony/RILRequest;Landroid/telephony/CarrierRestrictionRules;)V

    const/4 p1, 0x5

    invoke-direct {p0, p1, p2, v2, p3}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist setAllowedNetworkTypesBitmap(ILandroid/os/Message;)V
    .registers 8

    .line 2991
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mHalVersion:Ljava/util/Map;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/HalVersion;

    sget-object v2, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_6:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/HalVersion;->less(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 2994
    invoke-static {p1}, Landroid/telephony/RadioAccessFamily;->getNetworkTypeFromRaf(I)I

    move-result p1

    .line 2993
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/RIL;->setPreferredNetworkType(ILandroid/os/Message;)V

    return-void

    .line 2997
    :cond_1d
    const-class v0, Lcom/android/internal/telephony/RadioNetworkProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RadioNetworkProxy;

    .line 2998
    const-string v3, "setAllowedNetworkTypesBitmap"

    invoke-direct {p0, v3, v0, p2, v2}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v2

    if-nez v2, :cond_2e

    return-void

    :cond_2e
    const/16 v2, 0xde

    .line 3003
    iget-object v4, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v2, p2, v4}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p2

    .line 3007
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "> "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v4}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 3009
    iput p1, p0, Lcom/android/internal/telephony/BaseCommands;->mAllowedNetworkTypesBitmask:I

    .line 3011
    new-instance p1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda130;

    invoke-direct {p1, p0, v0, p2}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda130;-><init>(Lcom/android/internal/telephony/RIL;Lcom/android/internal/telephony/RadioNetworkProxy;Lcom/android/internal/telephony/RILRequest;)V

    invoke-direct {p0, v1, p2, v3, p1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist setBandMode(ILandroid/os/Message;)V
    .registers 7

    .line 2826
    const-class v0, Lcom/android/internal/telephony/RadioNetworkProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RadioNetworkProxy;

    .line 2827
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    const-string v2, "setBandMode"

    invoke-direct {p0, v2, v0, p2, v1}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-nez v1, :cond_13

    return-void

    :cond_13
    const/16 v1, 0x41

    .line 2831
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p2

    .line 2834
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " bandMode = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2838
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda122;

    invoke-direct {v1, v0, p2, p1}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda122;-><init>(Lcom/android/internal/telephony/RadioNetworkProxy;Lcom/android/internal/telephony/RILRequest;I)V

    const/4 p1, 0x4

    invoke-direct {p0, p1, p2, v2, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist setCLIR(ILandroid/os/Message;)V
    .registers 7

    .line 2237
    const-class v0, Lcom/android/internal/telephony/RadioVoiceProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RadioVoiceProxy;

    .line 2238
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    const-string v2, "setCLIR"

    invoke-direct {p0, v2, v0, p2, v1}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-nez v1, :cond_13

    return-void

    :cond_13
    const/16 v1, 0x20

    .line 2242
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p2

    .line 2245
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " clirMode = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2249
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda51;

    invoke-direct {v1, v0, p2, p1}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda51;-><init>(Lcom/android/internal/telephony/RadioVoiceProxy;Lcom/android/internal/telephony/RILRequest;I)V

    const/4 p1, 0x6

    invoke-direct {p0, p1, p2, v2, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist setCallForward(IIILjava/lang/String;ILandroid/os/Message;)V
    .registers 18

    move-object/from16 v0, p6

    .line 2278
    const-class v1, Lcom/android/internal/telephony/RadioVoiceProxy;

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/android/internal/telephony/RadioVoiceProxy;

    .line 2279
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    const-string v10, "setCallForward"

    invoke-direct {p0, v10, v3, v0, v1}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-nez v1, :cond_16

    return-void

    :cond_16
    const/16 v1, 0x22

    .line 2283
    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, v0, v2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v4

    .line 2286
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v4, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v1}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " action = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " cfReason = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " serviceClass = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " timeSeconds = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v9, p5

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2291
    new-instance v2, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda74;

    move v5, p1

    move v6, p2

    move v7, p3

    move-object v8, p4

    invoke-direct/range {v2 .. v9}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda74;-><init>(Lcom/android/internal/telephony/RadioVoiceProxy;Lcom/android/internal/telephony/RILRequest;IIILjava/lang/String;I)V

    const/4 p1, 0x6

    invoke-direct {p0, p1, v4, v10, v2}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist setCallWaiting(ZILandroid/os/Message;)V
    .registers 8

    .line 2319
    const-class v0, Lcom/android/internal/telephony/RadioVoiceProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RadioVoiceProxy;

    .line 2320
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    const-string v2, "setCallWaiting"

    invoke-direct {p0, v2, v0, p3, v1}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-nez v1, :cond_13

    return-void

    :cond_13
    const/16 v1, 0x24

    .line 2324
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p3, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p3

    .line 2327
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " enable = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " serviceClass = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2331
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda13;

    invoke-direct {v1, v0, p3, p1, p2}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda13;-><init>(Lcom/android/internal/telephony/RadioVoiceProxy;Lcom/android/internal/telephony/RILRequest;ZI)V

    const/4 p1, 0x6

    invoke-direct {p0, p1, p3, v2, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist setCarrierInfoForImsiEncryption(Landroid/telephony/ImsiEncryptionInfo;Landroid/os/Message;)V
    .registers 7

    .line 4525
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4526
    const-class v0, Lcom/android/internal/telephony/RadioSimProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RadioSimProxy;

    .line 4527
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    const-string v2, "setCarrierInfoForImsiEncryption"

    invoke-direct {p0, v2, v0, p2, v1}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-nez v1, :cond_16

    return-void

    :cond_16
    const/16 v1, 0x8d

    .line 4532
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p2

    .line 4535
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 4538
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda72;

    invoke-direct {v1, v0, p2, p1}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda72;-><init>(Lcom/android/internal/telephony/RadioSimProxy;Lcom/android/internal/telephony/RILRequest;Landroid/telephony/ImsiEncryptionInfo;)V

    const/4 p1, 0x5

    invoke-direct {p0, p1, p2, v2, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist setCdmaBroadcastActivation(ZLandroid/os/Message;)V
    .registers 3

    .line 0
    return-void
.end method

.method public blacklist setCdmaBroadcastConfig([Lcom/android/internal/telephony/cdma/CdmaSmsBroadcastConfigInfo;Landroid/os/Message;)V
    .registers 3

    .line 0
    return-void
.end method

.method public blacklist setCdmaRoamingPreference(ILandroid/os/Message;)V
    .registers 3

    .line 0
    return-void
.end method

.method public blacklist setCdmaSubscriptionSource(ILandroid/os/Message;)V
    .registers 3

    .line 0
    return-void
.end method

.method public blacklist setCellInfoListRate(ILandroid/os/Message;Landroid/os/WorkSource;)V
    .registers 7

    .line 3861
    const-class v0, Lcom/android/internal/telephony/RadioNetworkProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RadioNetworkProxy;

    .line 3862
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    const-string v2, "setCellInfoListRate"

    invoke-direct {p0, v2, v0, p2, v1}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-nez v1, :cond_13

    return-void

    :cond_13
    const/16 v1, 0x6e

    .line 3867
    invoke-direct {p0, p3}, Lcom/android/internal/telephony/RIL;->getDefaultWorkSourceIfInvalid(Landroid/os/WorkSource;)Landroid/os/WorkSource;

    move-result-object p3

    .line 3866
    invoke-direct {p0, v1, p2, p3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p2

    .line 3870
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "> "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v1}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " rateInMillis = "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 3874
    new-instance p3, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda163;

    invoke-direct {p3, v0, p2, p1}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda163;-><init>(Lcom/android/internal/telephony/RadioNetworkProxy;Lcom/android/internal/telephony/RILRequest;I)V

    const/4 p1, 0x4

    invoke-direct {p0, p1, p2, v2, p3}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist setCellularIdentifierTransparencyEnabled(ZLandroid/os/Message;)V
    .registers 7

    .line 5247
    const-class v0, Lcom/android/internal/telephony/RadioNetworkProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RadioNetworkProxy;

    .line 5248
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_2_2:Lcom/android/internal/telephony/HalVersion;

    const-string v2, "setCellularIdentifierTransparencyEnabled"

    invoke-direct {p0, v2, v0, p2, v1}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-nez v1, :cond_13

    return-void

    :cond_13
    const/16 v1, 0xf7

    .line 5256
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p2

    .line 5260
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " enable="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 5264
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda147;

    invoke-direct {v1, v0, p2, p1}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda147;-><init>(Lcom/android/internal/telephony/RadioNetworkProxy;Lcom/android/internal/telephony/RILRequest;Z)V

    const/4 p1, 0x4

    invoke-direct {p0, p1, p2, v2, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist setCompatVersion(ILcom/android/internal/telephony/HalVersion;)V
    .registers 5

    .line 648
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->getCompatVersion(I)Lcom/android/internal/telephony/HalVersion;

    move-result-object v0

    if-eqz v0, :cond_29

    .line 650
    invoke-virtual {p2, v0}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 651
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCompatVersion with equal or greater one, ignored, halVersion="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", oldVersion="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->riljLoge(Ljava/lang/String;)V

    return-void

    .line 655
    :cond_29
    iget-object p0, p0, Lcom/android/internal/telephony/RIL;->mCompatOverrides:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public blacklist setDataAllowed(ZLandroid/os/Message;)V
    .registers 7

    .line 4179
    const-class v0, Lcom/android/internal/telephony/RadioDataProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RadioDataProxy;

    .line 4180
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    const-string v2, "setDataAllowed"

    invoke-direct {p0, v2, v0, p2, v1}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-nez v1, :cond_13

    return-void

    :cond_13
    const/16 v1, 0x7b

    .line 4184
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p2

    .line 4187
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " allowed = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 4191
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda87;

    invoke-direct {v1, v0, p2, p1}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda87;-><init>(Lcom/android/internal/telephony/RadioDataProxy;Lcom/android/internal/telephony/RILRequest;Z)V

    const/4 p1, 0x1

    invoke-direct {p0, p1, p2, v2, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist setDataProfile([Landroid/telephony/data/DataProfile;Landroid/os/Message;)V
    .registers 9

    .line 4242
    const-class v0, Lcom/android/internal/telephony/RadioDataProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RadioDataProxy;

    .line 4243
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    const-string v2, "setDataProfile"

    invoke-direct {p0, v2, v0, p2, v1}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-nez v1, :cond_13

    return-void

    :cond_13
    const/16 v1, 0x80

    .line 4247
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p2

    .line 4250
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " with data profiles : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 4252
    array-length v1, p1

    const/4 v3, 0x0

    :goto_43
    if-ge v3, v1, :cond_53

    aget-object v4, p1, v3

    .line 4253
    const-string v5, "DataProfile is null"

    invoke-static {v4, v5}, Ljava/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_43

    .line 4257
    :cond_53
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda63;

    invoke-direct {v1, v0, p2, p1}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda63;-><init>(Lcom/android/internal/telephony/RadioDataProxy;Lcom/android/internal/telephony/RILRequest;[Landroid/telephony/data/DataProfile;)V

    const/4 p1, 0x1

    invoke-direct {p0, p1, p2, v2, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist setDataThrottling(Landroid/os/Message;Landroid/os/WorkSource;IJ)V
    .registers 14

    .line 4331
    const-class v0, Lcom/android/internal/telephony/RadioDataProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/internal/telephony/RadioDataProxy;

    .line 4332
    sget-object v0, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_6:Lcom/android/internal/telephony/HalVersion;

    const-string v7, "setDataThrottling"

    invoke-direct {p0, v7, v2, p1, v0}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-nez v0, :cond_14

    return-void

    :cond_14
    const/16 v0, 0xdd

    .line 4337
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/RIL;->getDefaultWorkSourceIfInvalid(Landroid/os/WorkSource;)Landroid/os/WorkSource;

    move-result-object p2

    .line 4336
    invoke-direct {p0, v0, p1, p2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v3

    .line 4340
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "> "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, v3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {p2}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " dataThrottlingAction = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " completionWindowMillis "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 4345
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda99;

    move v4, p3

    move-wide v5, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda99;-><init>(Lcom/android/internal/telephony/RadioDataProxy;Lcom/android/internal/telephony/RILRequest;IJ)V

    const/4 p1, 0x1

    invoke-direct {p0, p1, v3, v7, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist setEmergencyMode(ILandroid/os/Message;)V
    .registers 7

    .line 5031
    const-class v0, Lcom/android/internal/telephony/RadioNetworkProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RadioNetworkProxy;

    .line 5032
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_2_1:Lcom/android/internal/telephony/HalVersion;

    const-string v2, "setEmergencyMode"

    invoke-direct {p0, v2, v0, p2, v1}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-nez v1, :cond_13

    return-void

    :cond_13
    const/16 v1, 0xe5

    .line 5036
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p2

    .line 5040
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " mode="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5041
    invoke-static {p1}, Lcom/android/internal/telephony/emergency/EmergencyConstants;->emergencyModeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5040
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 5044
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda33;

    invoke-direct {v1, v0, p2, p1}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda33;-><init>(Lcom/android/internal/telephony/RadioNetworkProxy;Lcom/android/internal/telephony/RILRequest;I)V

    const/4 p1, 0x4

    invoke-direct {p0, p1, p2, v2, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist setFacilityLock(Ljava/lang/String;ZLjava/lang/String;ILandroid/os/Message;)V
    .registers 13

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v6, p5

    .line 2432
    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/RIL;->setFacilityLockForApp(Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method public blacklist setFacilityLockForApp(Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;Landroid/os/Message;)V
    .registers 18

    move-object/from16 v0, p6

    .line 2438
    const-class v1, Lcom/android/internal/telephony/RadioSimProxy;

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/android/internal/telephony/RadioSimProxy;

    .line 2439
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    const-string v10, "setFacilityLockForApp"

    invoke-direct {p0, v10, v3, v0, v1}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-nez v1, :cond_16

    return-void

    :cond_16
    const/16 v1, 0x2b

    .line 2443
    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, v0, v2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v4

    .line 2446
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v4, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v1}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " facility = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " lockstate = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " serviceClass = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " appId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v9, p5

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2451
    new-instance v2, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda124;

    move-object v5, p1

    move v6, p2

    move-object v7, p3

    move v8, p4

    invoke-direct/range {v2 .. v9}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda124;-><init>(Lcom/android/internal/telephony/RadioSimProxy;Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;)V

    const/4 p1, 0x5

    invoke-direct {p0, p1, v4, v10, v2}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist setGsmBroadcastActivation(ZLandroid/os/Message;)V
    .registers 7

    .line 3491
    const-class v0, Lcom/android/internal/telephony/RadioMessagingProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RadioMessagingProxy;

    .line 3492
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    const-string v2, "setGsmBroadcastActivation"

    invoke-direct {p0, v2, v0, p2, v1}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-nez v1, :cond_13

    return-void

    :cond_13
    const/16 v1, 0x5b

    .line 3497
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p2

    .line 3501
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " activate = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 3505
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda77;

    invoke-direct {v1, v0, p2, p1}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda77;-><init>(Lcom/android/internal/telephony/RadioMessagingProxy;Lcom/android/internal/telephony/RILRequest;Z)V

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2, v2, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist setGsmBroadcastConfig([Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;Landroid/os/Message;)V
    .registers 7

    .line 3467
    const-class v0, Lcom/android/internal/telephony/RadioMessagingProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RadioMessagingProxy;

    .line 3468
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    const-string v2, "setGsmBroadcastConfig"

    invoke-direct {p0, v2, v0, p2, v1}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-nez v1, :cond_13

    return-void

    :cond_13
    const/16 v1, 0x5a

    .line 3473
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p2

    .line 3477
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " with "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, p1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " configs : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 3479
    :goto_4b
    array-length v3, p1

    if-ge v1, v3, :cond_5a

    .line 3480
    aget-object v3, p1, v1

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4b

    .line 3484
    :cond_5a
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda162;

    invoke-direct {v1, v0, p2, p1}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda162;-><init>(Lcom/android/internal/telephony/RadioMessagingProxy;Lcom/android/internal/telephony/RILRequest;[Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;)V

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2, v2, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist setInitialAttachApn(Landroid/telephony/data/DataProfile;Landroid/os/Message;)V
    .registers 7

    .line 3881
    const-class v0, Lcom/android/internal/telephony/RadioDataProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RadioDataProxy;

    .line 3882
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    const-string v2, "setInitialAttachApn"

    invoke-direct {p0, v2, v0, p2, v1}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-nez v1, :cond_13

    return-void

    :cond_13
    const/16 v1, 0x6f

    .line 3886
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p2

    .line 3890
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 3893
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda146;

    invoke-direct {v1, v0, p2, p1}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda146;-><init>(Lcom/android/internal/telephony/RadioDataProxy;Lcom/android/internal/telephony/RILRequest;Landroid/telephony/data/DataProfile;)V

    const/4 p1, 0x1

    invoke-direct {p0, p1, p2, v2, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist setLinkCapacityReportingCriteria(III[I[IILandroid/os/Message;)V
    .registers 20

    move-object/from16 v0, p7

    .line 4481
    const-class v1, Lcom/android/internal/telephony/RadioNetworkProxy;

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/android/internal/telephony/RadioNetworkProxy;

    .line 4482
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    const-string v11, "setLinkCapacityReportingCriteria"

    invoke-direct {p0, v11, v3, v0, v1}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-nez v1, :cond_16

    return-void

    :cond_16
    const/16 v1, 0xcb

    .line 4487
    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, v0, v2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v4

    .line 4491
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v4, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v1}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 4494
    new-instance v2, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda44;

    move v5, p1

    move v6, p2

    move v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move/from16 v10, p6

    invoke-direct/range {v2 .. v10}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda44;-><init>(Lcom/android/internal/telephony/RadioNetworkProxy;Lcom/android/internal/telephony/RILRequest;III[I[II)V

    const/4 p1, 0x4

    invoke-direct {p0, p1, v4, v11, v2}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist setLocationUpdates(ZLandroid/os/WorkSource;Landroid/os/Message;)V
    .registers 7

    .line 3038
    const-class v0, Lcom/android/internal/telephony/RadioNetworkProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RadioNetworkProxy;

    .line 3039
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    const-string v2, "setLocationUpdates"

    invoke-direct {p0, v2, v0, p3, v1}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-nez v1, :cond_13

    return-void

    :cond_13
    const/16 v1, 0x4c

    .line 3044
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/RIL;->getDefaultWorkSourceIfInvalid(Landroid/os/WorkSource;)Landroid/os/WorkSource;

    move-result-object p2

    .line 3043
    invoke-direct {p0, v1, p3, p2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p2

    .line 3047
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "> "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v1}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " enable = "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 3051
    new-instance p3, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda158;

    invoke-direct {p3, v0, p2, p1}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda158;-><init>(Lcom/android/internal/telephony/RadioNetworkProxy;Lcom/android/internal/telephony/RILRequest;Z)V

    const/4 p1, 0x4

    invoke-direct {p0, p1, p2, v2, p3}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist setModemService(Ljava/lang/String;)Z
    .registers 11

    const/4 v0, 0x7

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p1, :cond_a2

    .line 554
    const-string v4, "Binding to MockModemService"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 555
    iput-object v1, p0, Lcom/android/internal/telephony/RIL;->mMockModem:Lcom/android/internal/telephony/MockModem;

    .line 557
    new-instance v4, Lcom/android/internal/telephony/MockModem;

    iget-object v5, p0, Lcom/android/internal/telephony/BaseCommands;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/internal/telephony/RIL;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-direct {v4, v5, p1, v6}, Lcom/android/internal/telephony/MockModem;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    iput-object v4, p0, Lcom/android/internal/telephony/RIL;->mMockModem:Lcom/android/internal/telephony/MockModem;

    .line 560
    iget-object v4, p0, Lcom/android/internal/telephony/RIL;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    if-eqz v4, :cond_32

    .line 561
    const-string v4, "Disable HIDL service"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 562
    iget-object v4, p0, Lcom/android/internal/telephony/RIL;->mDisabledRadioServices:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    iget-object v5, p0, Lcom/android/internal/telephony/RIL;->mPhoneId:Ljava/lang/Integer;

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 565
    :cond_32
    iget-object v4, p0, Lcom/android/internal/telephony/RIL;->mMockModem:Lcom/android/internal/telephony/MockModem;

    invoke-virtual {v4}, Lcom/android/internal/telephony/MockModem;->bindAllMockModemService()V

    move v4, v2

    :goto_38
    if-gt v4, v0, :cond_96

    if-nez v4, :cond_3d

    goto :goto_93

    :cond_3d
    move v5, v2

    .line 573
    :cond_3e
    iget-object v6, p0, Lcom/android/internal/telephony/RIL;->mMockModem:Lcom/android/internal/telephony/MockModem;

    invoke-virtual {v6, v4}, Lcom/android/internal/telephony/MockModem;->getServiceBinder(I)Landroid/os/IBinder;

    move-result-object v6

    add-int/2addr v5, v3

    if-nez v6, :cond_6c

    .line 577
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Retry("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ") Service "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lcom/android/internal/telephony/RIL;->serviceToString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    const-wide/16 v7, 0x12c

    .line 579
    :try_start_69
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_6c
    .catch Ljava/lang/InterruptedException; {:try_start_69 .. :try_end_6c} :catch_6c

    :catch_6c
    :cond_6c
    if-nez v6, :cond_72

    const/16 v7, 0xa

    if-lt v5, v7, :cond_3e

    :cond_72
    if-nez v6, :cond_93

    .line 586
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Service "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lcom/android/internal/telephony/RIL;->serviceToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " bind fail"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/RIL;->riljLoge(Ljava/lang/String;)V

    move v4, v2

    goto :goto_97

    :cond_93
    :goto_93
    add-int/lit8 v4, v4, 0x1

    goto :goto_38

    :cond_96
    move v4, v3

    :goto_97
    if-eqz v4, :cond_a3

    .line 593
    iput-boolean v2, p0, Lcom/android/internal/telephony/RIL;->mIsRadioProxyInitialized:Z

    .line 595
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/RIL;->resetProxyAndRequestList(I)V

    .line 596
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/RIL;->resetProxyAndRequestList(I)V

    goto :goto_a3

    :cond_a2
    move v4, v3

    :cond_a3
    :goto_a3
    if-eqz p1, :cond_a7

    if-nez v4, :cond_118

    :cond_a7
    if-eqz v4, :cond_ae

    .line 601
    const-string p1, "Unbinding to MockModemService"

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 603
    :cond_ae
    iget-object p1, p0, Lcom/android/internal/telephony/RIL;->mDisabledRadioServices:Landroid/util/SparseArray;

    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    iget-object v5, p0, Lcom/android/internal/telephony/RIL;->mPhoneId:Ljava/lang/Integer;

    invoke-interface {p1, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c9

    .line 604
    iget-object p1, p0, Lcom/android/internal/telephony/RIL;->mDisabledRadioServices:Landroid/util/SparseArray;

    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    .line 607
    :cond_c9
    iget-object p1, p0, Lcom/android/internal/telephony/RIL;->mMockModem:Lcom/android/internal/telephony/MockModem;

    if-eqz p1, :cond_118

    .line 608
    iput-object v1, p0, Lcom/android/internal/telephony/RIL;->mMockModem:Lcom/android/internal/telephony/MockModem;

    move p1, v2

    :goto_d0
    if-gt p1, v0, :cond_112

    if-nez p1, :cond_f2

    .line 611
    invoke-direct {p0}, Lcom/android/internal/telephony/RIL;->isRadioVersion2_0()Z

    move-result v1

    if-eqz v1, :cond_e6

    .line 612
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mHalVersion:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_2_0:Lcom/android/internal/telephony/HalVersion;

    invoke-interface {v1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_10f

    .line 614
    :cond_e6
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mHalVersion:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_UNKNOWN:Lcom/android/internal/telephony/HalVersion;

    invoke-interface {v1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_10f

    .line 617
    :cond_f2
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->isRadioServiceSupported(I)Z

    move-result v1

    if-eqz v1, :cond_104

    .line 618
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mHalVersion:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_UNKNOWN:Lcom/android/internal/telephony/HalVersion;

    invoke-interface {v1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_10f

    .line 620
    :cond_104
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mHalVersion:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_UNSUPPORTED:Lcom/android/internal/telephony/HalVersion;

    invoke-interface {v1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_10f
    add-int/lit8 p1, p1, 0x1

    goto :goto_d0

    .line 626
    :cond_112
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/RIL;->resetProxyAndRequestList(I)V

    .line 627
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/RIL;->resetProxyAndRequestList(I)V

    :cond_118
    return v4
.end method

.method public blacklist setMute(ZLandroid/os/Message;)V
    .registers 7

    .line 2692
    const-class v0, Lcom/android/internal/telephony/RadioVoiceProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RadioVoiceProxy;

    .line 2693
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    const-string v2, "setMute"

    invoke-direct {p0, v2, v0, p2, v1}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-nez v1, :cond_13

    return-void

    :cond_13
    const/16 v1, 0x35

    .line 2697
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p2

    .line 2700
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " enableMute = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2704
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda83;

    invoke-direct {v1, v0, p2, p1}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda83;-><init>(Lcom/android/internal/telephony/RadioVoiceProxy;Lcom/android/internal/telephony/RILRequest;Z)V

    const/4 p1, 0x6

    invoke-direct {p0, p1, p2, v2, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist setN1ModeEnabled(ZLandroid/os/Message;)V
    .registers 7

    .line 5202
    const-class v0, Lcom/android/internal/telephony/RadioNetworkProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RadioNetworkProxy;

    .line 5203
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_2_1:Lcom/android/internal/telephony/HalVersion;

    const-string v2, "setN1ModeEnabled"

    invoke-direct {p0, v2, v0, p2, v1}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-nez v1, :cond_13

    return-void

    :cond_13
    const/16 v1, 0xf1

    .line 5207
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p2

    .line 5211
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " enable="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 5215
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda43;

    invoke-direct {v1, v0, p2, p1}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda43;-><init>(Lcom/android/internal/telephony/RadioNetworkProxy;Lcom/android/internal/telephony/RILRequest;Z)V

    const/4 p1, 0x4

    invoke-direct {p0, p1, p2, v2, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist setNetworkSelectionModeAutomatic(Landroid/os/Message;)V
    .registers 6

    .line 2506
    const-class v0, Lcom/android/internal/telephony/RadioNetworkProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RadioNetworkProxy;

    .line 2507
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    const-string v2, "setNetworkSelectionModeAutomatic"

    invoke-direct {p0, v2, v0, p1, v1}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-nez v1, :cond_13

    return-void

    :cond_13
    const/16 v1, 0x2e

    .line 2512
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p1

    .line 2516
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2519
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda7;

    invoke-direct {v1, v0, p1}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda7;-><init>(Lcom/android/internal/telephony/RadioNetworkProxy;Lcom/android/internal/telephony/RILRequest;)V

    const/4 v0, 0x4

    invoke-direct {p0, v0, p1, v2, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist setNetworkSelectionModeManual(Ljava/lang/String;ILandroid/os/Message;)V
    .registers 8

    .line 2527
    const-class v0, Lcom/android/internal/telephony/RadioNetworkProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RadioNetworkProxy;

    .line 2528
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    const-string v2, "setNetworkSelectionModeManual"

    invoke-direct {p0, v2, v0, p3, v1}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-nez v1, :cond_13

    return-void

    :cond_13
    const/16 v1, 0x2f

    .line 2533
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p3, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p3

    .line 2537
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " operatorNumeric = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", ran = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2541
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda28;

    invoke-direct {v1, v0, p3, p1, p2}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda28;-><init>(Lcom/android/internal/telephony/RadioNetworkProxy;Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;I)V

    const/4 p1, 0x4

    invoke-direct {p0, p1, p3, v2, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist setNrDualConnectivityState(ILandroid/os/Message;Landroid/os/WorkSource;)V
    .registers 7

    .line 3093
    const-class v0, Lcom/android/internal/telephony/RadioNetworkProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RadioNetworkProxy;

    .line 3094
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_6:Lcom/android/internal/telephony/HalVersion;

    const-string v2, "setNrDualConnectivityState"

    invoke-direct {p0, v2, v0, p2, v1}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-nez v1, :cond_13

    return-void

    :cond_13
    const/16 v1, 0xd5

    .line 3100
    invoke-direct {p0, p3}, Lcom/android/internal/telephony/RIL;->getDefaultWorkSourceIfInvalid(Landroid/os/WorkSource;)Landroid/os/WorkSource;

    move-result-object p3

    .line 3099
    invoke-direct {p0, v1, p2, p3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p2

    .line 3103
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "> "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v1}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " enable = "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 3107
    new-instance p3, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda73;

    invoke-direct {p3, v0, p2, p1}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda73;-><init>(Lcom/android/internal/telephony/RadioNetworkProxy;Lcom/android/internal/telephony/RILRequest;I)V

    const/4 p1, 0x4

    invoke-direct {p0, p1, p2, v2, p3}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist setNullCipherAndIntegrityEnabled(ZLandroid/os/Message;)V
    .registers 7

    .line 5131
    const-class v0, Lcom/android/internal/telephony/RadioNetworkProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RadioNetworkProxy;

    .line 5132
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_2_1:Lcom/android/internal/telephony/HalVersion;

    const-string v2, "setNullCipherAndIntegrityEnabled"

    invoke-direct {p0, v2, v0, p2, v1}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-nez v1, :cond_13

    return-void

    :cond_13
    const/16 v1, 0xef

    .line 5137
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p2

    .line 5141
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 5144
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda106;

    invoke-direct {v1, v0, p2, p1}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda106;-><init>(Lcom/android/internal/telephony/RadioNetworkProxy;Lcom/android/internal/telephony/RILRequest;Z)V

    const/4 p1, 0x4

    invoke-direct {p0, p1, p2, v2, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist setOnNITZTime(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4

    .line 1279
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/BaseCommands;->setOnNITZTime(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1282
    iget-object p1, p0, Lcom/android/internal/telephony/RIL;->mLastNITZTimeInfo:[Ljava/lang/Object;

    if-eqz p1, :cond_14

    .line 1283
    iget-object p1, p0, Lcom/android/internal/telephony/BaseCommands;->mNITZTimeRegistrant:Lcom/android/internal/telephony/Registrant;

    new-instance p2, Landroid/os/AsyncResult;

    iget-object p0, p0, Lcom/android/internal/telephony/RIL;->mLastNITZTimeInfo:[Ljava/lang/Object;

    const/4 p3, 0x0

    invoke-direct {p2, p3, p0, p3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    :cond_14
    return-void
.end method

.method public blacklist setPhoneType(I)V
    .registers 4

    .line 6246
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setPhoneType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " old value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/BaseCommands;->mPhoneType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 6247
    iput p1, p0, Lcom/android/internal/telephony/BaseCommands;->mPhoneType:I

    return-void
.end method

.method public blacklist setPreferredNetworkType(ILandroid/os/Message;)V
    .registers 7

    .line 2947
    const-class v0, Lcom/android/internal/telephony/RadioNetworkProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RadioNetworkProxy;

    .line 2948
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    const-string v2, "setPreferredNetworkType"

    invoke-direct {p0, v2, v0, p2, v1}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-nez v1, :cond_13

    return-void

    :cond_13
    const/16 v1, 0x49

    .line 2953
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p2

    .line 2957
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " networkType = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2960
    invoke-static {p1}, Landroid/telephony/RadioAccessFamily;->getRafFromNetworkType(I)I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/BaseCommands;->mAllowedNetworkTypesBitmask:I

    .line 2961
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v1, v3, p1}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeSetPreferredNetworkType(II)V

    .line 2963
    new-instance p1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda96;

    invoke-direct {p1, p0, v0, p2}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda96;-><init>(Lcom/android/internal/telephony/RIL;Lcom/android/internal/telephony/RadioNetworkProxy;Lcom/android/internal/telephony/RILRequest;)V

    const/4 v0, 0x4

    invoke-direct {p0, v0, p2, v2, p1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist setPreferredVoicePrivacy(ZLandroid/os/Message;)V
    .registers 7

    .line 3289
    const-class v0, Lcom/android/internal/telephony/RadioVoiceProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RadioVoiceProxy;

    .line 3290
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    const-string v2, "setPreferredVoicePrivacy"

    invoke-direct {p0, v2, v0, p2, v1}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-nez v1, :cond_13

    return-void

    :cond_13
    const/16 v1, 0x52

    .line 3295
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p2

    .line 3299
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " enable = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 3303
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda47;

    invoke-direct {v1, v0, p2, p1}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda47;-><init>(Lcom/android/internal/telephony/RadioVoiceProxy;Lcom/android/internal/telephony/RILRequest;Z)V

    const/4 p1, 0x6

    invoke-direct {p0, p1, p2, v2, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist setRadioCapability(Lcom/android/internal/telephony/RadioCapability;Landroid/os/Message;)V
    .registers 7

    .line 4301
    const-class v0, Lcom/android/internal/telephony/RadioModemProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RadioModemProxy;

    .line 4302
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    const-string v2, "setRadioCapability"

    invoke-direct {p0, v2, v0, p2, v1}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-nez v1, :cond_13

    return-void

    :cond_13
    const/16 v1, 0x83

    .line 4306
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p2

    .line 4310
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " RadioCapability = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4311
    invoke-virtual {p1}, Lcom/android/internal/telephony/RadioCapability;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4310
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 4314
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda92;

    invoke-direct {v1, v0, p2, p1}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda92;-><init>(Lcom/android/internal/telephony/RadioModemProxy;Lcom/android/internal/telephony/RILRequest;Lcom/android/internal/telephony/RadioCapability;)V

    const/4 p1, 0x3

    invoke-direct {p0, p1, p2, v2, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public greylist setRadioPower(ZZZLandroid/os/Message;)V
    .registers 13

    .line 2014
    const-class v0, Lcom/android/internal/telephony/RadioModemProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/internal/telephony/RadioModemProxy;

    .line 2015
    sget-object v0, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    const-string v7, "setRadioPower"

    invoke-direct {p0, v7, v2, p4, v0}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-nez v0, :cond_14

    return-void

    :cond_14
    const/16 v0, 0x17

    .line 2019
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v0, p4, v1}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v3

    .line 2022
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "> "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v0}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " on = "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " forEmergencyCall= "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " preferredForEmergencyCall="

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p0, p4}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2027
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda108;

    move v4, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda108;-><init>(Lcom/android/internal/telephony/RadioModemProxy;Lcom/android/internal/telephony/RILRequest;ZZZ)V

    const/4 p1, 0x3

    invoke-direct {p0, p1, v3, v7, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist setSatelliteEnabledForCarrier(IZLandroid/os/Message;)V
    .registers 8

    .line 5397
    const-class v0, Lcom/android/internal/telephony/RadioNetworkProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RadioNetworkProxy;

    const/4 v1, 0x4

    .line 5398
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->getHalVersion(I)Lcom/android/internal/telephony/HalVersion;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_2_3:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/HalVersion;->less(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 5399
    const-string v0, "setSatelliteEnabledForCarrier: SatelliteModemInterface is used."

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 5400
    invoke-static {}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->getInstance()Lcom/android/internal/telephony/satellite/SatelliteModemInterface;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->requestSetSatelliteEnabledForCarrier(IZLandroid/os/Message;)V

    return-void

    :cond_22
    const/16 v2, 0xfc

    .line 5405
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v2, p3, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p3

    .line 5409
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " simSlot="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " satelliteEnabled="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 5413
    new-instance p1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda141;

    invoke-direct {p1, v0, p3, p2}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda141;-><init>(Lcom/android/internal/telephony/RadioNetworkProxy;Lcom/android/internal/telephony/RILRequest;Z)V

    const-string p2, "setSatelliteEnabledForCarrier"

    invoke-direct {p0, v1, p3, p2, p1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist setSatellitePlmn(ILjava/util/List;Ljava/util/List;Landroid/os/Message;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Message;",
            ")V"
        }
    .end annotation

    .line 5364
    const-class v0, Lcom/android/internal/telephony/RadioNetworkProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RadioNetworkProxy;

    const/4 v1, 0x4

    .line 5365
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->getHalVersion(I)Lcom/android/internal/telephony/HalVersion;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_2_3:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/HalVersion;->less(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 5366
    const-string v0, "setSatellitePlmn: SatelliteModemInterface is used."

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 5367
    invoke-static {}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->getInstance()Lcom/android/internal/telephony/satellite/SatelliteModemInterface;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->setSatellitePlmn(ILjava/util/List;Ljava/util/List;Landroid/os/Message;)V

    return-void

    :cond_22
    const/16 v2, 0xfb

    .line 5372
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v2, p4, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p4

    .line 5376
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p4, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " simSlot="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " carrierPlmnList="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " allSatellitePlmnList="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 5381
    new-instance p1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda59;

    invoke-direct {p1, v0, p4, p2, p3}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda59;-><init>(Lcom/android/internal/telephony/RadioNetworkProxy;Lcom/android/internal/telephony/RILRequest;Ljava/util/List;Ljava/util/List;)V

    const-string p2, "setSatellitePlmn"

    invoke-direct {p0, v1, p4, p2, p1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist setSecurityAlgorithmsUpdatedEnabled(ZLandroid/os/Message;)V
    .registers 7

    .line 5308
    const-class v0, Lcom/android/internal/telephony/RadioNetworkProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RadioNetworkProxy;

    .line 5309
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_2_2:Lcom/android/internal/telephony/HalVersion;

    const-string v2, "setSecurityAlgorithmsUpdatedEnabled"

    invoke-direct {p0, v2, v0, p2, v1}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-nez v1, :cond_13

    return-void

    :cond_13
    const/16 v1, 0xf8

    .line 5317
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p2

    .line 5321
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " enable="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 5325
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda62;

    invoke-direct {v1, v0, p2, p1}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda62;-><init>(Lcom/android/internal/telephony/RadioNetworkProxy;Lcom/android/internal/telephony/RILRequest;Z)V

    const/4 p1, 0x4

    invoke-direct {p0, p1, p2, v2, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist setSignalStrengthReportingCriteria(Ljava/util/List;Landroid/os/Message;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/SignalThresholdInfo;",
            ">;",
            "Landroid/os/Message;",
            ")V"
        }
    .end annotation

    .line 4457
    const-class v0, Lcom/android/internal/telephony/RadioNetworkProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RadioNetworkProxy;

    .line 4458
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    const-string v2, "setSignalStrengthReportingCriteria"

    invoke-direct {p0, v2, v0, p2, v1}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-nez v1, :cond_13

    return-void

    :cond_13
    const/16 v1, 0xca

    .line 4463
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p2

    .line 4467
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 4470
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda155;

    invoke-direct {v1, v0, p2, p1}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda155;-><init>(Lcom/android/internal/telephony/RadioNetworkProxy;Lcom/android/internal/telephony/RILRequest;Ljava/util/List;)V

    const/4 p1, 0x4

    invoke-direct {p0, p1, p2, v2, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist setSimCardPower(ILandroid/os/Message;Landroid/os/WorkSource;)V
    .registers 7

    .line 4504
    const-class v0, Lcom/android/internal/telephony/RadioSimProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RadioSimProxy;

    .line 4505
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    const-string v2, "setSimCardPower"

    invoke-direct {p0, v2, v0, p2, v1}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-nez v1, :cond_13

    return-void

    :cond_13
    const/16 v1, 0x8c

    .line 4510
    invoke-direct {p0, p3}, Lcom/android/internal/telephony/RIL;->getDefaultWorkSourceIfInvalid(Landroid/os/WorkSource;)Landroid/os/WorkSource;

    move-result-object p3

    .line 4509
    invoke-direct {p0, v1, p2, p3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p2

    .line 4513
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "> "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v1}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 4517
    new-instance p3, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda0;

    invoke-direct {p3, v0, p2, p1}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/telephony/RadioSimProxy;Lcom/android/internal/telephony/RILRequest;I)V

    const/4 p1, 0x5

    invoke-direct {p0, p1, p2, v2, p3}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist setSmscAddress(Ljava/lang/String;Landroid/os/Message;)V
    .registers 7

    .line 3720
    const-class v0, Lcom/android/internal/telephony/RadioMessagingProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RadioMessagingProxy;

    .line 3721
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    const-string v2, "setSmscAddress"

    invoke-direct {p0, v2, v0, p2, v1}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-nez v1, :cond_13

    return-void

    :cond_13
    const/16 v1, 0x65

    .line 3725
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p2

    .line 3728
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " address = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 3732
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda149;

    invoke-direct {v1, v0, p2, p1}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda149;-><init>(Lcom/android/internal/telephony/RadioMessagingProxy;Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;)V

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2, v2, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist setSrvccCallInfo([Lcom/android/internal/telephony/SrvccConnection;Landroid/os/Message;)V
    .registers 7

    .line 4897
    const-class v0, Lcom/android/internal/telephony/RadioImsProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RadioImsProxy;

    .line 4898
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_2_0:Lcom/android/internal/telephony/HalVersion;

    const-string v2, "setSrvccCallInfo"

    invoke-direct {p0, v2, v0, p2, v1}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-nez v1, :cond_13

    return-void

    :cond_13
    const/16 v1, 0xe9

    .line 4902
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p2

    .line 4907
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 4910
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda39;

    invoke-direct {v1, v0, p2, p1}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda39;-><init>(Lcom/android/internal/telephony/RadioImsProxy;Lcom/android/internal/telephony/RILRequest;[Lcom/android/internal/telephony/SrvccConnection;)V

    const/4 p1, 0x7

    invoke-direct {p0, p1, p2, v2, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist setSuppServiceNotifications(ZLandroid/os/Message;)V
    .registers 7

    .line 2765
    const-class v0, Lcom/android/internal/telephony/RadioNetworkProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RadioNetworkProxy;

    .line 2766
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    const-string v2, "setSuppServiceNotifications"

    invoke-direct {p0, v2, v0, p2, v1}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-nez v1, :cond_13

    return-void

    :cond_13
    const/16 v1, 0x3e

    .line 2771
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p2

    .line 2775
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " enable = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2779
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda65;

    invoke-direct {v1, v0, p2, p1}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda65;-><init>(Lcom/android/internal/telephony/RadioNetworkProxy;Lcom/android/internal/telephony/RILRequest;Z)V

    const/4 p1, 0x4

    invoke-direct {p0, p1, p2, v2, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist setSystemSelectionChannels(Ljava/util/List;Landroid/os/Message;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/RadioAccessSpecifier;",
            ">;",
            "Landroid/os/Message;",
            ")V"
        }
    .end annotation

    .line 1662
    const-class v0, Lcom/android/internal/telephony/RadioNetworkProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RadioNetworkProxy;

    .line 1663
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    const-string v2, "setSystemSelectionChannels"

    invoke-direct {p0, v2, v0, p2, v1}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-nez v1, :cond_13

    return-void

    :cond_13
    const/16 v1, 0xd2

    .line 1668
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p2

    .line 1672
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " setSystemSelectionChannels= "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1676
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda6;

    invoke-direct {v1, v0, p2, p1}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda6;-><init>(Lcom/android/internal/telephony/RadioNetworkProxy;Lcom/android/internal/telephony/RILRequest;Ljava/util/List;)V

    const/4 p1, 0x4

    invoke-direct {p0, p1, p2, v2, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist setTTYMode(ILandroid/os/Message;)V
    .registers 7

    .line 3270
    const-class v0, Lcom/android/internal/telephony/RadioVoiceProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RadioVoiceProxy;

    .line 3271
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    const-string v2, "setTTYMode"

    invoke-direct {p0, v2, v0, p2, v1}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-nez v1, :cond_13

    return-void

    :cond_13
    const/16 v1, 0x50

    .line 3275
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p2

    .line 3278
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ttyMode = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 3282
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda114;

    invoke-direct {v1, v0, p2, p1}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda114;-><init>(Lcom/android/internal/telephony/RadioVoiceProxy;Lcom/android/internal/telephony/RILRequest;I)V

    const/4 p1, 0x6

    invoke-direct {p0, p1, p2, v2, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist setUiccSubscription(IIIILandroid/os/Message;)V
    .registers 15

    .line 4158
    const-class v0, Lcom/android/internal/telephony/RadioSimProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/internal/telephony/RadioSimProxy;

    .line 4159
    sget-object v0, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    const-string v8, "setUiccSubscription"

    invoke-direct {p0, v8, v2, p5, v0}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-nez v0, :cond_14

    return-void

    :cond_14
    const/16 v0, 0x7a

    .line 4163
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v0, p5, v1}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v3

    .line 4167
    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "> "

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v0}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " slot = "

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " appIndex = "

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " subId = "

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " subStatus = "

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p0, p5}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 4172
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda8;

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda8;-><init>(Lcom/android/internal/telephony/RadioSimProxy;Lcom/android/internal/telephony/RILRequest;IIII)V

    const/4 p1, 0x5

    invoke-direct {p0, p1, v3, v8, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist setUnsolResponseFilter(ILandroid/os/Message;)V
    .registers 7

    .line 4435
    const-class v0, Lcom/android/internal/telephony/RadioNetworkProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RadioNetworkProxy;

    .line 4436
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    const-string v2, "setUnsolResponseFilter"

    invoke-direct {p0, v2, v0, p2, v1}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-nez v1, :cond_13

    return-void

    :cond_13
    const/16 v1, 0x8b

    .line 4441
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p2

    .line 4445
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 4449
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda110;

    invoke-direct {v1, v0, p2, p1}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda110;-><init>(Lcom/android/internal/telephony/RadioNetworkProxy;Lcom/android/internal/telephony/RILRequest;I)V

    const/4 p1, 0x4

    invoke-direct {p0, p1, p2, v2, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist setUsageSetting(Landroid/os/Message;I)V
    .registers 7

    .line 4856
    const-class v0, Lcom/android/internal/telephony/RadioNetworkProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RadioNetworkProxy;

    .line 4857
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_2_0:Lcom/android/internal/telephony/HalVersion;

    const-string v2, "setUsageSetting"

    invoke-direct {p0, v2, v0, p1, v1}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-nez v1, :cond_13

    return-void

    :cond_13
    const/16 v1, 0xe3

    .line 4861
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p1

    .line 4864
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 4867
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda58;

    invoke-direct {v1, v0, p1, p2}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda58;-><init>(Lcom/android/internal/telephony/RadioNetworkProxy;Lcom/android/internal/telephony/RILRequest;I)V

    const/4 p2, 0x4

    invoke-direct {p0, p2, p1, v2, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist setVoNrEnabled(ZLandroid/os/Message;Landroid/os/WorkSource;)V
    .registers 8

    .line 3154
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->setVoNrEnabled(Z)V

    .line 3155
    const-class v0, Lcom/android/internal/telephony/RadioVoiceProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RadioVoiceProxy;

    .line 3157
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_2_0:Lcom/android/internal/telephony/HalVersion;

    const-string v2, "setVoNrEnabled"

    const/4 v3, 0x0

    invoke-direct {p0, v2, v0, v3, v1}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-nez v1, :cond_22

    .line 3163
    invoke-virtual {p0, v3, p3}, Lcom/android/internal/telephony/RIL;->isNrDualConnectivityEnabled(Landroid/os/Message;Landroid/os/WorkSource;)V

    if-eqz p2, :cond_21

    .line 3165
    invoke-static {p2, v3, v3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 3166
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    :cond_21
    return-void

    :cond_22
    const/16 v1, 0xe1

    .line 3172
    invoke-direct {p0, p3}, Lcom/android/internal/telephony/RIL;->getDefaultWorkSourceIfInvalid(Landroid/os/WorkSource;)Landroid/os/WorkSource;

    move-result-object p3

    .line 3171
    invoke-direct {p0, v1, p2, p3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p2

    .line 3175
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "> "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v1}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 3178
    new-instance p3, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda131;

    invoke-direct {p3, v0, p2, p1}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda131;-><init>(Lcom/android/internal/telephony/RadioVoiceProxy;Lcom/android/internal/telephony/RILRequest;Z)V

    const/4 p1, 0x6

    invoke-direct {p0, p1, p2, v2, p3}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist setupDataCall(ILandroid/telephony/data/DataProfile;ZILandroid/net/LinkProperties;ILandroid/telephony/data/NetworkSliceInfo;Landroid/telephony/data/TrafficDescriptor;ZLandroid/os/Message;)V
    .registers 27

    move-object/from16 v0, p0

    move-object/from16 v1, p10

    .line 2117
    const-class v2, Lcom/android/internal/telephony/RadioDataProxy;

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lcom/android/internal/telephony/RadioDataProxy;

    .line 2118
    sget-object v2, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    const-string v15, "setupDataCall"

    invoke-direct {v0, v15, v4, v1, v2}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v2

    if-nez v2, :cond_18

    return-void

    :cond_18
    const/16 v2, 0x1b

    .line 2122
    iget-object v3, v0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {v0, v2, v1, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v5

    .line 2125
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v5, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",reason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2126
    invoke-static/range {p4 .. p4}, Lcom/android/internal/telephony/RILUtils;->setupDataReasonToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",accessNetworkType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2127
    invoke-static/range {p1 .. p1}, Landroid/telephony/AccessNetworkConstants$AccessNetworkType;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",dataProfile="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v7, p2

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",allowRoaming="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v8, p3

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",linkProperties="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v10, p5

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",pduSessionId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v11, p6

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",sliceInfo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v12, p7

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",trafficDescriptor="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v13, p8

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",matchAllRuleAllowed="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v14, p9

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2125
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2134
    new-instance v3, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda19;

    move/from16 v6, p1

    move/from16 v9, p4

    invoke-direct/range {v3 .. v14}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda19;-><init>(Lcom/android/internal/telephony/RadioDataProxy;Lcom/android/internal/telephony/RILRequest;ILandroid/telephony/data/DataProfile;ZILandroid/net/LinkProperties;ILandroid/telephony/data/NetworkSliceInfo;Landroid/telephony/data/TrafficDescriptor;Z)V

    const/4 v1, 0x1

    invoke-direct {v0, v1, v5, v15, v3}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist startDtmf(CLandroid/os/Message;)V
    .registers 7

    .line 2617
    const-class v0, Lcom/android/internal/telephony/RadioVoiceProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RadioVoiceProxy;

    .line 2618
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    const-string v2, "startDtmf"

    invoke-direct {p0, v2, v0, p2, v1}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-nez v1, :cond_13

    return-void

    :cond_13
    const/16 v1, 0x31

    .line 2622
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p2

    .line 2626
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2629
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda69;

    invoke-direct {v1, v0, p2, p1}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda69;-><init>(Lcom/android/internal/telephony/RadioVoiceProxy;Lcom/android/internal/telephony/RILRequest;C)V

    const/4 p1, 0x6

    invoke-direct {p0, p1, p2, v2, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist startHandover(Landroid/os/Message;I)V
    .registers 7

    .line 4732
    const-class v0, Lcom/android/internal/telephony/RadioDataProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RadioDataProxy;

    .line 4733
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_6:Lcom/android/internal/telephony/HalVersion;

    const-string v2, "startHandover"

    invoke-direct {p0, v2, v0, p1, v1}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-nez v1, :cond_13

    return-void

    :cond_13
    const/16 v1, 0xd9

    .line 4737
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p1

    .line 4739
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 4742
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda88;

    invoke-direct {v1, v0, p1, p2}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda88;-><init>(Lcom/android/internal/telephony/RadioDataProxy;Lcom/android/internal/telephony/RILRequest;I)V

    const/4 p2, 0x1

    invoke-direct {p0, p2, p1, v2, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist startImsTraffic(IIIILandroid/os/Message;)V
    .registers 15

    .line 4950
    const-class v0, Lcom/android/internal/telephony/RadioImsProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/internal/telephony/RadioImsProxy;

    .line 4951
    sget-object v0, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_2_0:Lcom/android/internal/telephony/HalVersion;

    const-string v8, "startImsTraffic"

    invoke-direct {p0, v8, v2, p5, v0}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-nez v0, :cond_14

    return-void

    :cond_14
    const/16 v0, 0xeb

    .line 4955
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v0, p5, v1}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v3

    .line 4958
    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "> "

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v0}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "{"

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "}"

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p0, p5}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 4963
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda142;

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda142;-><init>(Lcom/android/internal/telephony/RadioImsProxy;Lcom/android/internal/telephony/RILRequest;IIII)V

    const/4 p1, 0x7

    invoke-direct {p0, p1, v3, v8, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist startNattKeepalive(ILandroid/net/KeepalivePacketData;ILandroid/os/Message;)V
    .registers 14

    .line 4546
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4547
    const-class v0, Lcom/android/internal/telephony/RadioDataProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/internal/telephony/RadioDataProxy;

    .line 4548
    sget-object v0, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    const-string v8, "startNattKeepalive"

    invoke-direct {p0, v8, v2, p4, v0}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-nez v0, :cond_17

    return-void

    :cond_17
    const/16 v0, 0x90

    .line 4552
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v0, p4, v1}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v3

    .line 4555
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v1}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 4558
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda31;

    move v4, p1

    move-object v5, p2

    move v6, p3

    move-object v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda31;-><init>(Lcom/android/internal/telephony/RadioDataProxy;Lcom/android/internal/telephony/RILRequest;ILandroid/net/KeepalivePacketData;ILandroid/os/Message;)V

    const/4 p1, 0x1

    invoke-direct {p0, p1, v3, v8, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist startNetworkScan(Landroid/telephony/NetworkScanRequest;Landroid/os/Message;)V
    .registers 11

    .line 2574
    const-class v0, Lcom/android/internal/telephony/RadioNetworkProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/internal/telephony/RadioNetworkProxy;

    .line 2575
    sget-object v0, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    const-string v7, "startNetworkScan"

    invoke-direct {p0, v7, v2, p2, v0}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-nez v0, :cond_14

    return-void

    :cond_14
    const/16 v0, 0x8e

    .line 2579
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getCompatVersion(I)Lcom/android/internal/telephony/HalVersion;

    move-result-object v5

    .line 2581
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startNetworkScan: overrideHalVersion="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2584
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, v0, p2, v1, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;[Ljava/lang/Object;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v3

    .line 2588
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v1}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2591
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda89;

    move-object v4, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda89;-><init>(Lcom/android/internal/telephony/RadioNetworkProxy;Lcom/android/internal/telephony/RILRequest;Landroid/telephony/NetworkScanRequest;Lcom/android/internal/telephony/HalVersion;Landroid/os/Message;)V

    const/4 p1, 0x4

    invoke-direct {p0, p1, v3, v7, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist stopDtmf(Landroid/os/Message;)V
    .registers 6

    .line 2636
    const-class v0, Lcom/android/internal/telephony/RadioVoiceProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RadioVoiceProxy;

    .line 2637
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    const-string v2, "stopDtmf"

    invoke-direct {p0, v2, v0, p1, v1}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-nez v1, :cond_13

    return-void

    :cond_13
    const/16 v1, 0x32

    .line 2641
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p1

    .line 2644
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2647
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda125;

    invoke-direct {v1, v0, p1}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda125;-><init>(Lcom/android/internal/telephony/RadioVoiceProxy;Lcom/android/internal/telephony/RILRequest;)V

    const/4 v0, 0x6

    invoke-direct {p0, v0, p1, v2, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist stopImsTraffic(ILandroid/os/Message;)V
    .registers 7

    .line 4971
    const-class v0, Lcom/android/internal/telephony/RadioImsProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RadioImsProxy;

    .line 4972
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_2_0:Lcom/android/internal/telephony/HalVersion;

    const-string v2, "stopImsTraffic"

    invoke-direct {p0, v2, v0, p2, v1}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-nez v1, :cond_13

    return-void

    :cond_13
    const/16 v1, 0xec

    .line 4976
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p2

    .line 4979
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "{"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "}"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 4983
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda129;

    invoke-direct {v1, v0, p2, p1}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda129;-><init>(Lcom/android/internal/telephony/RadioImsProxy;Lcom/android/internal/telephony/RILRequest;I)V

    const/4 p1, 0x7

    invoke-direct {p0, p1, p2, v2, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist stopNattKeepalive(ILandroid/os/Message;)V
    .registers 7

    .line 4565
    const-class v0, Lcom/android/internal/telephony/RadioDataProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RadioDataProxy;

    .line 4566
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    const-string v2, "stopNattKeepalive"

    invoke-direct {p0, v2, v0, p2, v1}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-nez v1, :cond_13

    return-void

    :cond_13
    const/16 v1, 0x91

    .line 4570
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p2

    .line 4573
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 4576
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda45;

    invoke-direct {v1, v0, p2, p1}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda45;-><init>(Lcom/android/internal/telephony/RadioDataProxy;Lcom/android/internal/telephony/RILRequest;I)V

    const/4 p1, 0x1

    invoke-direct {p0, p1, p2, v2, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist stopNetworkScan(Landroid/os/Message;)V
    .registers 6

    .line 2599
    const-class v0, Lcom/android/internal/telephony/RadioNetworkProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RadioNetworkProxy;

    .line 2600
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    const-string v2, "stopNetworkScan"

    invoke-direct {p0, v2, v0, p1, v1}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-nez v1, :cond_13

    return-void

    :cond_13
    const/16 v1, 0x8f

    .line 2604
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p1

    .line 2607
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2610
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda93;

    invoke-direct {v1, v0, p1}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda93;-><init>(Lcom/android/internal/telephony/RadioNetworkProxy;Lcom/android/internal/telephony/RILRequest;)V

    const/4 v0, 0x4

    invoke-direct {p0, v0, p1, v2, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist supplyIccPin(Ljava/lang/String;Landroid/os/Message;)V
    .registers 4

    const/4 v0, 0x0

    .line 1410
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/internal/telephony/RIL;->supplyIccPinForApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method public blacklist supplyIccPin2(Ljava/lang/String;Landroid/os/Message;)V
    .registers 4

    const/4 v0, 0x0

    .line 1462
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/internal/telephony/RIL;->supplyIccPin2ForApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method public blacklist supplyIccPin2ForApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 8

    .line 1467
    const-class v0, Lcom/android/internal/telephony/RadioSimProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RadioSimProxy;

    .line 1468
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    const-string v2, "supplyIccPin2ForApp"

    invoke-direct {p0, v2, v0, p3, v1}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-nez v1, :cond_13

    return-void

    :cond_13
    const/4 v1, 0x4

    .line 1472
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p3, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p3

    .line 1475
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " aid = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1479
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda139;

    invoke-direct {v1, v0, p3, p1, p2}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda139;-><init>(Lcom/android/internal/telephony/RadioSimProxy;Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x5

    invoke-direct {p0, p1, p3, v2, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist supplyIccPinForApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 8

    .line 1415
    const-class v0, Lcom/android/internal/telephony/RadioSimProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RadioSimProxy;

    .line 1416
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    const-string v2, "supplyIccPinForApp"

    invoke-direct {p0, v2, v0, p3, v1}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-nez v1, :cond_13

    return-void

    :cond_13
    const/4 v1, 0x2

    .line 1420
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p3, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p3

    .line 1423
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " aid = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1427
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda20;

    invoke-direct {v1, v0, p3, p1, p2}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda20;-><init>(Lcom/android/internal/telephony/RadioSimProxy;Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x5

    invoke-direct {p0, p1, p3, v2, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist supplyIccPuk(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 5

    const/4 v0, 0x0

    .line 1435
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/internal/telephony/RIL;->supplyIccPukForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method public blacklist supplyIccPuk2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 5

    const/4 v0, 0x0

    .line 1487
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/internal/telephony/RIL;->supplyIccPuk2ForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method public blacklist supplyIccPuk2ForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 14

    .line 1492
    const-class v0, Lcom/android/internal/telephony/RadioSimProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/internal/telephony/RadioSimProxy;

    .line 1493
    sget-object v0, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    const-string v7, "supplyIccPuk2ForApp"

    invoke-direct {p0, v7, v2, p4, v0}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-nez v0, :cond_14

    return-void

    .line 1497
    :cond_14
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/4 v8, 0x5

    invoke-direct {p0, v8, p4, v0}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v3

    .line 1500
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "> "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v0}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " aid = "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p0, p4}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1504
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda160;

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda160;-><init>(Lcom/android/internal/telephony/RadioSimProxy;Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v8, v3, v7, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist supplyIccPukForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 13

    .line 1440
    const-class v0, Lcom/android/internal/telephony/RadioSimProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/internal/telephony/RadioSimProxy;

    .line 1441
    sget-object v0, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    const-string v7, "supplyIccPukForApp"

    invoke-direct {p0, v7, v2, p4, v0}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-nez v0, :cond_14

    return-void

    :cond_14
    const/4 v0, 0x3

    .line 1445
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v0, p4, v1}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v3

    .line 1447
    invoke-static {p1}, Lcom/android/internal/telephony/RILUtils;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1449
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "> "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p4, v3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {p4}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " isPukEmpty = "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1450
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result p4

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p4, " aid = "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1449
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1453
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda119;

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda119;-><init>(Lcom/android/internal/telephony/RadioSimProxy;Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x5

    invoke-direct {p0, p1, v3, v7, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist supplyNetworkDepersonalization(Ljava/lang/String;Landroid/os/Message;)V
    .registers 7

    .line 1567
    const-class v0, Lcom/android/internal/telephony/RadioNetworkProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RadioNetworkProxy;

    .line 1568
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    const-string v2, "supplyNetworkDepersonalization"

    invoke-direct {p0, v2, v0, p2, v1}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-nez v1, :cond_13

    return-void

    :cond_13
    const/16 v1, 0x8

    .line 1573
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p2

    .line 1577
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " netpin = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1581
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda121;

    invoke-direct {v1, v0, p2, p1}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda121;-><init>(Lcom/android/internal/telephony/RadioNetworkProxy;Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;)V

    const/4 p1, 0x4

    invoke-direct {p0, p1, p2, v2, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist supplySimDepersonalization(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;Ljava/lang/String;Landroid/os/Message;)V
    .registers 9

    .line 1590
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mHalVersion:Ljava/util/Map;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/HalVersion;

    sget-object v2, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_5:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/HalVersion;->less(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_1d

    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_SIM_NETWORK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    if-ne v0, p1, :cond_1d

    .line 1592
    invoke-virtual {p0, p2, p3}, Lcom/android/internal/telephony/RIL;->supplyNetworkDepersonalization(Ljava/lang/String;Landroid/os/Message;)V

    return-void

    .line 1595
    :cond_1d
    const-class v0, Lcom/android/internal/telephony/RadioSimProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RadioSimProxy;

    .line 1596
    const-string v3, "supplySimDepersonalization"

    invoke-direct {p0, v3, v0, p3, v2}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v2

    if-nez v2, :cond_2e

    return-void

    :cond_2e
    const/16 v2, 0xd4

    .line 1601
    iget-object v4, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v2, p3, v4}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p3

    .line 1605
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "> "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v4}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " controlKey = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " persoType"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1609
    new-instance v2, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda153;

    invoke-direct {v2, v0, p3, p1, p2}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda153;-><init>(Lcom/android/internal/telephony/RadioSimProxy;Lcom/android/internal/telephony/RILRequest;Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;Ljava/lang/String;)V

    invoke-direct {p0, v1, p3, v3, v2}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist switchWaitingOrHoldingAndActive(Landroid/os/Message;)V
    .registers 6

    .line 1851
    const-class v0, Lcom/android/internal/telephony/RadioVoiceProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RadioVoiceProxy;

    .line 1852
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    const-string v2, "switchWaitingOrHoldingAndActive"

    invoke-direct {p0, v2, v0, p1, v1}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-nez v1, :cond_13

    return-void

    :cond_13
    const/16 v1, 0xf

    .line 1857
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p1

    .line 1861
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1864
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda9;

    invoke-direct {v1, v0, p1}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda9;-><init>(Lcom/android/internal/telephony/RadioVoiceProxy;Lcom/android/internal/telephony/RILRequest;)V

    const/4 v0, 0x6

    invoke-direct {p0, v0, p1, v2, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist testingEmergencyCall()V
    .registers 2

    .line 6255
    const-string v0, "testingEmergencyCall"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 6256
    iget-object p0, p0, Lcom/android/internal/telephony/RIL;->mTestingEmergencyCall:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public blacklist triggerEmergencyNetworkScan([IILandroid/os/Message;)V
    .registers 8

    .line 5056
    const-class v0, Lcom/android/internal/telephony/RadioNetworkProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RadioNetworkProxy;

    .line 5057
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_2_1:Lcom/android/internal/telephony/HalVersion;

    const-string v2, "triggerEmergencyNetworkScan"

    invoke-direct {p0, v2, v0, p3, v1}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-nez v1, :cond_13

    return-void

    :cond_13
    const/16 v1, 0xe6

    .line 5062
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p3, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p3

    .line 5066
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " networkType="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5067
    invoke-static {p1}, Lcom/android/internal/telephony/RILUtils;->accessNetworkTypesToString([I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", scanType="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5068
    invoke-static {p2}, Lcom/android/internal/telephony/RILUtils;->scanTypeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5066
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 5071
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda109;

    invoke-direct {v1, v0, p3, p1, p2}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda109;-><init>(Lcom/android/internal/telephony/RadioNetworkProxy;Lcom/android/internal/telephony/RILRequest;[II)V

    const/4 p1, 0x4

    invoke-direct {p0, p1, p3, v2, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist triggerEpsFallback(ILandroid/os/Message;)V
    .registers 7

    .line 4990
    const-class v0, Lcom/android/internal/telephony/RadioImsProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RadioImsProxy;

    .line 4991
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_2_0:Lcom/android/internal/telephony/HalVersion;

    const-string v2, "triggerEpsFallback"

    invoke-direct {p0, v2, v0, p2, v1}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-nez v1, :cond_13

    return-void

    :cond_13
    const/16 v1, 0xee

    .line 4995
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p2

    .line 4999
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " reason="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 5003
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda86;

    invoke-direct {v1, v0, p2, p1}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda86;-><init>(Lcom/android/internal/telephony/RadioImsProxy;Lcom/android/internal/telephony/RILRequest;I)V

    const/4 p1, 0x7

    invoke-direct {p0, p1, p2, v2, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method greylist unsljLog(I)V
    .registers 4

    .line 6210
    invoke-static {p1}, Lcom/android/internal/telephony/RILUtils;->responseToString(I)Ljava/lang/String;

    move-result-object p1

    .line 6212
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[UNSL]< "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    const-wide/32 v0, 0x200000

    .line 6214
    const-string p0, "RIL"

    invoke-static {v0, v1, p0, p1}, Landroid/os/Trace;->instantForTrack(JLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method greylist unsljLogMore(ILjava/lang/String;)V
    .registers 5

    .line 6219
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/android/internal/telephony/RILUtils;->responseToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 6221
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[UNSL]< "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    const-wide/32 v0, 0x200000

    .line 6223
    const-string p0, "RIL"

    invoke-static {v0, v1, p0, p1}, Landroid/os/Trace;->instantForTrack(JLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method greylist unsljLogRet(ILjava/lang/Object;)V
    .registers 5

    .line 6228
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/android/internal/telephony/RILUtils;->responseToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Lcom/android/internal/telephony/RIL;->retToString(ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 6230
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[UNSL]< "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    const-wide/32 v0, 0x200000

    .line 6232
    const-string p0, "RIL"

    invoke-static {v0, v1, p0, p1}, Landroid/os/Trace;->instantForTrack(JLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method greylist unsljLogvRet(ILjava/lang/Object;)V
    .registers 4

    .line 6237
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/android/internal/telephony/RILUtils;->responseToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Lcom/android/internal/telephony/RIL;->retToString(ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-wide/32 p1, 0x200000

    .line 6241
    const-string v0, "RIL"

    invoke-static {p1, p2, v0, p0}, Landroid/os/Trace;->instantForTrack(JLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public blacklist updateImsCallStatus(Ljava/util/List;Landroid/os/Message;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/imsphone/ImsCallInfo;",
            ">;",
            "Landroid/os/Message;",
            ")V"
        }
    .end annotation

    .line 5180
    const-class v0, Lcom/android/internal/telephony/RadioImsProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RadioImsProxy;

    .line 5181
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_2_0:Lcom/android/internal/telephony/HalVersion;

    const-string v2, "updateImsCallStatus"

    invoke-direct {p0, v2, v0, p2, v1}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-nez v1, :cond_13

    return-void

    :cond_13
    const/16 v1, 0xf0

    .line 5185
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p2

    .line 5189
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 5192
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda57;

    invoke-direct {v1, v0, p2, p1}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda57;-><init>(Lcom/android/internal/telephony/RadioImsProxy;Lcom/android/internal/telephony/RILRequest;Ljava/util/List;)V

    const/4 p1, 0x7

    invoke-direct {p0, p1, p2, v2, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist updateImsRegistrationInfo(IIIILandroid/os/Message;)V
    .registers 10

    .line 4921
    const-class v0, Lcom/android/internal/telephony/RadioImsProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RadioImsProxy;

    .line 4922
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_2_0:Lcom/android/internal/telephony/HalVersion;

    const-string v2, "updateImsRegistrationInfo"

    invoke-direct {p0, v2, v0, p5, v1}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-nez v1, :cond_13

    return-void

    :cond_13
    const/16 v1, 0xea

    .line 4926
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p5, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p5

    .line 4930
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p5}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p5, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " state="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", radioTech="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", suggested="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", cap="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 4935
    new-instance v1, Landroid/hardware/radio/ims/ImsRegistration;

    invoke-direct {v1}, Landroid/hardware/radio/ims/ImsRegistration;-><init>()V

    .line 4937
    invoke-static {p1}, Lcom/android/internal/telephony/RILUtils;->convertImsRegistrationState(I)I

    move-result p1

    iput p1, v1, Landroid/hardware/radio/ims/ImsRegistration;->regState:I

    .line 4938
    invoke-static {p2}, Lcom/android/internal/telephony/RILUtils;->convertImsRegistrationTech(I)I

    move-result p1

    iput p1, v1, Landroid/hardware/radio/ims/ImsRegistration;->accessNetworkType:I

    .line 4939
    iput p3, v1, Landroid/hardware/radio/ims/ImsRegistration;->suggestedAction:I

    .line 4940
    invoke-static {p4}, Lcom/android/internal/telephony/RILUtils;->convertImsCapability(I)I

    move-result p1

    iput p1, v1, Landroid/hardware/radio/ims/ImsRegistration;->capabilities:I

    .line 4942
    new-instance p1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda151;

    invoke-direct {p1, v0, p5, v1}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda151;-><init>(Lcom/android/internal/telephony/RadioImsProxy;Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/ims/ImsRegistration;)V

    const/4 p2, 0x7

    invoke-direct {p0, p2, p5, v2, p1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist updateSimPhonebookRecord(Lcom/android/internal/telephony/uicc/SimPhonebookRecord;Landroid/os/Message;)V
    .registers 7

    .line 4829
    const-class v0, Lcom/android/internal/telephony/RadioSimProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RadioSimProxy;

    .line 4830
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_6:Lcom/android/internal/telephony/HalVersion;

    const-string v2, "updateSimPhonebookRecord"

    invoke-direct {p0, v2, v0, p2, v1}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-nez v1, :cond_13

    return-void

    :cond_13
    const/16 v1, 0x97

    .line 4834
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p2

    .line 4838
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " with "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4839
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/SimPhonebookRecord;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4838
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 4842
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda150;

    invoke-direct {v1, v0, p2, p1}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda150;-><init>(Lcom/android/internal/telephony/RadioSimProxy;Lcom/android/internal/telephony/RILRequest;Lcom/android/internal/telephony/uicc/SimPhonebookRecord;)V

    const/4 p1, 0x5

    invoke-direct {p0, p1, p2, v2, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method blacklist writeMetricsCallRing([C)V
    .registers 3

    .line 6093
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    iget-object p0, p0, Lcom/android/internal/telephony/RIL;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {v0, p0, p1}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeRilCallRing(I[C)V

    return-void
.end method

.method blacklist writeMetricsModemRestartEvent(Ljava/lang/String;)V
    .registers 4

    .line 6102
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeModemRestartEvent(ILjava/lang/String;)V

    .line 6105
    iget-object p0, p0, Lcom/android/internal/telephony/RIL;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-nez p0, :cond_16

    .line 6106
    invoke-static {p1}, Lcom/android/internal/telephony/metrics/ModemRestartStats;->onModemRestart(Ljava/lang/String;)V

    :cond_16
    return-void
.end method

.method blacklist writeMetricsSrvcc(I)V
    .registers 4

    .line 6097
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeRilSrvcc(II)V

    .line 6098
    iget-object p0, p0, Lcom/android/internal/telephony/RIL;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getVoiceCallSessionStats()Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->onRilSrvccStateChanged(I)V

    return-void
.end method

.method public blacklist writeSmsToRuim(I[BLandroid/os/Message;)V
    .registers 8

    .line 3603
    const-class v0, Lcom/android/internal/telephony/RadioMessagingProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RadioMessagingProxy;

    .line 3604
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    const-string v2, "writeSmsToRuim"

    invoke-direct {p0, v2, v0, p3, v1}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-nez v1, :cond_13

    return-void

    :cond_13
    const/16 v1, 0x60

    .line 3608
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p3, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p3

    .line 3616
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda55;

    invoke-direct {v1, v0, p3, p1, p2}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda55;-><init>(Lcom/android/internal/telephony/RadioMessagingProxy;Lcom/android/internal/telephony/RILRequest;I[B)V

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3, v2, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist writeSmsToSim(ILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 13

    .line 2786
    const-class v0, Lcom/android/internal/telephony/RadioMessagingProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/internal/telephony/RadioMessagingProxy;

    .line 2787
    sget-object v0, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    const-string v7, "writeSmsToSim"

    invoke-direct {p0, v7, v2, p4, v0}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-nez v0, :cond_14

    return-void

    :cond_14
    const/16 v0, 0x3f

    .line 2791
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v0, p4, v1}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v3

    .line 2798
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda100;

    move v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda100;-><init>(Lcom/android/internal/telephony/RadioMessagingProxy;Lcom/android/internal/telephony/RILRequest;ILjava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x2

    invoke-direct {p0, p1, v3, v7, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method
