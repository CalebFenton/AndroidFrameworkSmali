.class public Lcom/android/internal/telephony/ServiceStateTracker;
.super Landroid/os/Handler;
.source "ServiceStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/ServiceStateTracker$SstSubscriptionsChangedListener;,
        Lcom/android/internal/telephony/ServiceStateTracker$SatelliteModemStateListener;
    }
.end annotation


# static fields
.field public static final blacklist CARRIER_NAME_DISPLAY_BITMASK_SHOW_PLMN:I = 0x2

.field public static final blacklist CARRIER_NAME_DISPLAY_BITMASK_SHOW_SPN:I = 0x1

.field public static final blacklist CS_DISABLED:I = 0x3ec

.field public static final blacklist CS_EMERGENCY_ENABLED:I = 0x3ee

.field public static final blacklist CS_ENABLED:I = 0x3eb

.field public static final blacklist CS_NORMAL_ENABLED:I = 0x3ed

.field public static final blacklist CS_NOTIFICATION:I = 0x3e7

.field public static final blacklist CS_REJECT_CAUSE_DISABLED:I = 0x7d2

.field public static final blacklist CS_REJECT_CAUSE_ENABLED:I = 0x7d1

.field public static final blacklist CS_REJECT_CAUSE_NOTIFICATION:I = 0x6f

.field public static final blacklist DEFAULT_GPRS_CHECK_PERIOD_MILLIS:I = 0xea60

.field public static final blacklist DEFAULT_MNC:Ljava/lang/String; = "00"

.field protected static final blacklist EVENT_ALL_DATA_DISCONNECTED:I = 0x31

.field protected static final blacklist EVENT_CDMA_PRL_VERSION_CHANGED:I = 0x28

.field protected static final blacklist EVENT_CDMA_SUBSCRIPTION_SOURCE_CHANGED:I = 0x27

.field protected static final blacklist EVENT_CELL_LOCATION_RESPONSE:I = 0x38

.field protected static final blacklist EVENT_CHANGE_IMS_STATE:I = 0x2d

.field protected static final blacklist EVENT_CHECK_REPORT_GPRS:I = 0x16

.field protected static final blacklist EVENT_GET_ALLOWED_NETWORK_TYPES:I = 0x13

.field protected static final blacklist EVENT_GET_CELL_INFO_LIST:I = 0x2b

.field protected static final blacklist EVENT_GET_LOC_DONE:I = 0xf

.field public static final blacklist EVENT_ICC_CHANGED:I = 0x2a

.field protected static final blacklist EVENT_IMS_CAPABILITY_CHANGED:I = 0x30

.field protected static final blacklist EVENT_IMS_SERVICE_STATE_CHANGED:I = 0x35

.field protected static final blacklist EVENT_IMS_STATE_CHANGED:I = 0x2e

.field protected static final blacklist EVENT_IMS_STATE_DONE:I = 0x2f

.field protected static final blacklist EVENT_LOCATION_UPDATES_ENABLED:I = 0x12

.field protected static final blacklist EVENT_NETWORK_STATE_CHANGED:I = 0x2

.field protected static final blacklist EVENT_NITZ_TIME:I = 0xb

.field protected static final blacklist EVENT_NV_READY:I = 0x23

.field protected static final blacklist EVENT_OTA_PROVISION_STATUS_CHANGE:I = 0x25

.field protected static final blacklist EVENT_PHONE_TYPE_SWITCHED:I = 0x32

.field protected static final blacklist EVENT_PHYSICAL_CHANNEL_CONFIG:I = 0x37

.field protected static final blacklist EVENT_POLL_STATE_CDMA_SUBSCRIPTION:I = 0x22

.field protected static final blacklist EVENT_POLL_STATE_CS_CELLULAR_REGISTRATION:I = 0x4

.field protected static final blacklist EVENT_POLL_STATE_NETWORK_SELECTION_MODE:I = 0xe

.field protected static final blacklist EVENT_POLL_STATE_OPERATOR:I = 0x7

.field protected static final blacklist EVENT_POLL_STATE_PS_CELLULAR_REGISTRATION:I = 0x5

.field protected static final blacklist EVENT_POLL_STATE_PS_IWLAN_REGISTRATION:I = 0x6

.field protected static final blacklist EVENT_RADIO_ON:I = 0x29

.field protected static final blacklist EVENT_RADIO_POWER_FROM_CARRIER:I = 0x33

.field protected static final blacklist EVENT_RADIO_POWER_OFF_DONE:I = 0x36

.field protected static final blacklist EVENT_RADIO_STATE_CHANGED:I = 0x1

.field protected static final blacklist EVENT_RESET_ALLOWED_NETWORK_TYPES:I = 0x15

.field protected static final blacklist EVENT_RESET_LAST_KNOWN_CELL_IDENTITY:I = 0x3f

.field protected static final blacklist EVENT_RESTRICTED_STATE_CHANGED:I = 0x17

.field protected static final blacklist EVENT_RUIM_READY:I = 0x1a

.field protected static final blacklist EVENT_RUIM_RECORDS_LOADED:I = 0x1b

.field protected static final blacklist EVENT_SET_ALLOWED_NETWORK_TYPES:I = 0x14

.field protected static final blacklist EVENT_SET_RADIO_POWER_OFF:I = 0x26

.field protected static final blacklist EVENT_SIM_READY:I = 0x11

.field protected static final blacklist EVENT_SIM_RECORDS_LOADED:I = 0x10

.field protected static final blacklist EVENT_TELECOM_VOICE_SERVICE_STATE_OVERRIDE_CHANGED:I = 0x41

.field protected static final blacklist EVENT_UNSOL_CELL_INFO_LIST:I = 0x2c

.field public static final blacklist INVALID_MCC:Ljava/lang/String; = "000"

.field private static final blacklist POWER_OFF_ALL_DATA_NETWORKS_DISCONNECTED_TIMEOUT:J

.field public static final blacklist PS_DISABLED:I = 0x3ea

.field public static final blacklist PS_ENABLED:I = 0x3e9

.field public static final blacklist PS_NOTIFICATION:I = 0x378

.field protected static final blacklist REGISTRATION_DENIED_AUTH:Ljava/lang/String; = "Authentication Failure"

.field protected static final blacklist REGISTRATION_DENIED_GEN:Ljava/lang/String; = "General"

.field public static final blacklist UNACTIVATED_MIN2_VALUE:Ljava/lang/String; = "000000"

.field public static final blacklist UNACTIVATED_MIN_VALUE:Ljava/lang/String; = "1111110111"


# instance fields
.field private final blacklist mAccessNetworksManager:Lcom/android/internal/telephony/data/AccessNetworksManager;

.field private blacklist mAccessNetworksManagerCallback:Lcom/android/internal/telephony/data/AccessNetworksManager$AccessNetworksManagerCallback;

.field private final blacklist mAirplaneModeChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field private greylist-max-r mAllowedNetworkTypes:I

.field private final blacklist mAreaCodeChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field private final blacklist mAttachLog:Lcom/android/internal/telephony/LocalLog;

.field protected blacklist mAttachedRegistrants:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/internal/telephony/RegistrantList;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mCSEmergencyOnly:Z

.field private blacklist mCSST:Lcom/android/internal/telephony/CarrierServiceStateTracker;

.field private blacklist mCarrierConfig:Landroid/os/PersistableBundle;

.field private final blacklist mCarrierConfigChangeListener:Landroid/telephony/CarrierConfigManager$CarrierConfigChangeListener;

.field private blacklist mCarrierDisplayNameData:Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData;

.field private blacklist mCdmaForSubscriptionInfoReadyRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field private blacklist mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

.field private blacklist mCdnr:Lcom/android/internal/telephony/cdnr/CarrierDisplayNameResolver;

.field private final blacklist mCdnrLogs:Lcom/android/internal/telephony/LocalLog;

.field private blacklist mCellIdentity:Landroid/telephony/CellIdentity;

.field private blacklist mCellInfoMinIntervalMs:I

.field private greylist-max-r mCi:Lcom/android/internal/telephony/CommandsInterface;

.field private final greylist-max-r mCr:Landroid/content/ContentResolver;

.field private blacklist mCssIndicatorChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field private blacklist mCurrentCarrier:Ljava/lang/String;

.field private blacklist mCurrentOtaspMode:I

.field private blacklist mDataDisconnectedCallback:Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;

.field private blacklist mDataRegStateOrRatChangedRegistrants:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/internal/telephony/RegistrantList;",
            ">;"
        }
    .end annotation
.end field

.field private greylist mDataRoamingOffRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field private greylist mDataRoamingOnRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field private greylist-max-r mDefaultRoamingIndicator:I

.field private greylist mDesiredPowerState:Z

.field protected blacklist mDetachedRegistrants:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/internal/telephony/RegistrantList;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-r mDeviceShuttingDown:Z

.field private greylist-max-r mEmergencyOnly:Z

.field private final blacklist mEriManager:Lcom/android/internal/telephony/cdma/EriManager;

.field private blacklist mEriText:Ljava/lang/String;

.field private final blacklist mFeatureFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

.field private blacklist mGsmDataRoaming:Z

.field private blacklist mGsmVoiceRoaming:Z

.field private blacklist mHbpcdUtils:Lcom/android/internal/telephony/HbpcdUtils;

.field private blacklist mHomeNetworkId:[I

.field private blacklist mHomeSystemId:[I

.field private greylist-max-r mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

.field private blacklist mImsCapabilityChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field private blacklist mImsRegistered:Z

.field private blacklist mImsRegistrationOnOff:Z

.field private greylist-max-r mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private blacklist mIsEriTextLoaded:Z

.field private blacklist mIsInPrl:Z

.field private blacklist mIsMinInfoReady:Z

.field private blacklist mIsPendingCellInfoRequest:Z

.field private blacklist mIsSimReady:Z

.field private greylist-max-r mIsSubscriptionFromRuim:Z

.field private blacklist mLastCellInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/CellInfo;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mLastCellInfoReqTime:J

.field private blacklist mLastKnownAreaCode:I

.field private blacklist mLastKnownCellIdentity:Landroid/telephony/CellIdentity;

.field private blacklist mLastKnownNetworkCountry:Ljava/lang/String;

.field private blacklist mLastNitzData:Lcom/android/internal/telephony/NitzData;

.field private blacklist mLastPhysicalChannelConfigList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/PhysicalChannelConfig;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mLocaleTracker:Lcom/android/internal/telephony/LocaleTracker;

.field private greylist-max-r mMaxDataCalls:I

.field private blacklist mMdn:Ljava/lang/String;

.field private blacklist mMin:Ljava/lang/String;

.field private greylist mNetworkAttachedRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field private blacklist mNetworkDetachedRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field private greylist-max-r mNewMaxDataCalls:I

.field private greylist-max-r mNewReasonDataDenied:I

.field private blacklist mNewRejectCode:I

.field private greylist-max-r mNewSS:Landroid/telephony/ServiceState;

.field private final blacklist mNitzState:Lcom/android/internal/telephony/NitzStateMachine;

.field private blacklist mNotification:Landroid/app/Notification;

.field private blacklist mNrFrequencyChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field private blacklist mNrStateChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field private final greylist-max-r mOnSubscriptionsChangedListener:Lcom/android/internal/telephony/ServiceStateTracker$SstSubscriptionsChangedListener;

.field private blacklist mOperatorNameStringPattern:Ljava/util/regex/Pattern;

.field private final blacklist mOutOfServiceSS:Landroid/telephony/ServiceState;

.field private blacklist mPSEmergencyOnly:Z

.field private blacklist mPendingCellInfoRequests:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field private volatile blacklist mPendingRadioPowerOffAfterDataOff:Z

.field protected final greylist-max-r mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

.field private final blacklist mPhoneTypeLog:Lcom/android/internal/telephony/LocalLog;

.field public blacklist mPollingContext:[I

.field private blacklist mPrevSubId:I

.field private blacklist mPrlVersion:Ljava/lang/String;

.field private blacklist mPsRestrictDisabledRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field private blacklist mPsRestrictEnabledRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field private final blacklist mRadioPowerLog:Lcom/android/internal/telephony/LocalLog;

.field private final blacklist mRadioPowerOffReasons:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mRatLog:Lcom/android/internal/telephony/LocalLog;

.field private final blacklist mRatRatcheter:Lcom/android/internal/telephony/RatRatcheter;

.field private greylist-max-r mReasonDataDenied:I

.field private final blacklist mRegStateManagers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/internal/telephony/NetworkRegistrationManager;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mRegistrationDeniedReason:Ljava/lang/String;

.field private blacklist mRegistrationState:I

.field private blacklist mRejectCode:I

.field private greylist-max-r mReportedGprsNoReg:Z

.field public blacklist mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

.field private greylist-max-r mRoamingIndicator:I

.field private final blacklist mRoamingLog:Lcom/android/internal/telephony/LocalLog;

.field public greylist-max-r mSS:Landroid/telephony/ServiceState;

.field private blacklist mSatelliteModemStateListener:Lcom/android/internal/telephony/ServiceStateTracker$SatelliteModemStateListener;

.field private blacklist mServiceStateChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field private blacklist mServiceStateStats:Lcom/android/internal/telephony/metrics/ServiceStateStats;

.field private greylist-max-r mStartedGprsRegCheck:Z

.field public greylist-max-r mSubId:I

.field private greylist-max-r mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private blacklist mSubscriptionManagerService:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

.field private greylist-max-r mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

.field private greylist-max-r mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

.field private blacklist mVoiceCapable:Z

.field private blacklist mVoiceRegStateOrRatChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field private greylist mVoiceRoamingOffRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field private greylist mVoiceRoamingOnRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field private blacklist mWantContinuousLocationUpdates:Z

.field private blacklist mWantSingleLocationUpdate:Z


# direct methods
.method public static synthetic blacklist $r8$lambda$4Xc7TrjYFBGcmzwQnfmGf7Gfufk(Landroid/telephony/NetworkRegistrationInfo;)Z
    .registers 2

    .line 3551
    invoke-virtual {p0}, Landroid/telephony/NetworkRegistrationInfo;->getTransportType()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_8

    return v0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$ct4jHHG4j5eAElnX0vTT-nuT8hY(Landroid/telephony/NetworkRegistrationInfo;)Z
    .registers 1

    .line 3550
    invoke-virtual {p0}, Landroid/telephony/NetworkRegistrationInfo;->getCellIdentity()Landroid/telephony/CellIdentity;

    move-result-object p0

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$qXIeg9MgjHgxKIHxo3JFauDzghc(Landroid/telephony/NetworkRegistrationInfo;)Ljava/lang/Integer;
    .registers 1

    .line 3554
    invoke-virtual {p0}, Landroid/telephony/NetworkRegistrationInfo;->getDomain()I

    move-result p0

    and-int/lit8 p0, p0, 0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$rk8VaFz2inNe2neP1EPuTdu7baI(Lcom/android/internal/telephony/ServiceStateTracker;IIII)V
    .registers 5

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/ServiceStateTracker;->lambda$new$0(IIII)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$wcoCea4YecTjWLfBsINTsxVnHak(Landroid/telephony/NetworkRegistrationInfo;)Landroid/telephony/CellIdentity;
    .registers 1

    .line 3556
    invoke-virtual {p0}, Landroid/telephony/NetworkRegistrationInfo;->getCellIdentity()Landroid/telephony/CellIdentity;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmAccessNetworksManager(Lcom/android/internal/telephony/ServiceStateTracker;)Lcom/android/internal/telephony/data/AccessNetworksManager;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mAccessNetworksManager:Lcom/android/internal/telephony/data/AccessNetworksManager;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLastKnownNetworkCountry(Lcom/android/internal/telephony/ServiceStateTracker;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mLastKnownNetworkCountry:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOutOfServiceSS(Lcom/android/internal/telephony/ServiceStateTracker;)Landroid/telephony/ServiceState;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mOutOfServiceSS:Landroid/telephony/ServiceState;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPrevSubId(Lcom/android/internal/telephony/ServiceStateTracker;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPrevSubId:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmPrevSubId(Lcom/android/internal/telephony/ServiceStateTracker;I)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPrevSubId:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msetDataNetworkTypeForPhone(Lcom/android/internal/telephony/ServiceStateTracker;I)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ServiceStateTracker;->setDataNetworkTypeForPhone(I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mupdateServiceStateToDb(Lcom/android/internal/telephony/ServiceStateTracker;Landroid/telephony/ServiceState;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ServiceStateTracker;->updateServiceStateToDb(Landroid/telephony/ServiceState;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 240
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xa

    .line 241
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/internal/telephony/ServiceStateTracker;->POWER_OFF_ALL_DATA_NETWORKS_DISCONNECTED_TIMEOUT:J

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/telephony/GsmCdmaPhone;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)V
    .registers 15

    .line 705
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const/4 v0, 0x0

    .line 155
    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    .line 157
    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 159
    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    const/16 v1, 0x7d0

    .line 180
    iput v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCellInfoMinIntervalMs:I

    .line 189
    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mLastCellInfoList:Ljava/util/List;

    .line 190
    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mLastPhysicalChannelConfigList:Ljava/util/List;

    .line 192
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRadioPowerOffReasons:Ljava/util/Set;

    .line 206
    new-instance v1, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v1}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mVoiceRoamingOnRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 208
    new-instance v1, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v1}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mVoiceRoamingOffRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 210
    new-instance v1, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v1}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDataRoamingOnRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 212
    new-instance v1, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v1}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDataRoamingOffRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 214
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mAttachedRegistrants:Landroid/util/SparseArray;

    .line 215
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDetachedRegistrants:Landroid/util/SparseArray;

    .line 216
    new-instance v1, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v1}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mVoiceRegStateOrRatChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 217
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDataRegStateOrRatChangedRegistrants:Landroid/util/SparseArray;

    .line 218
    new-instance v1, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v1}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNetworkAttachedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 220
    new-instance v1, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v1}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNetworkDetachedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 221
    new-instance v1, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v1}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mServiceStateChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 222
    new-instance v1, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v1}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPsRestrictEnabledRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 223
    new-instance v1, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v1}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPsRestrictDisabledRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 224
    new-instance v1, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v1}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mImsCapabilityChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 225
    new-instance v1, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v1}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNrStateChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 226
    new-instance v1, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v1}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNrFrequencyChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 227
    new-instance v1, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v1}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCssIndicatorChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 228
    new-instance v1, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v1}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mAirplaneModeChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 229
    new-instance v1, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v1}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mAreaCodeChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    const/4 v1, 0x0

    .line 232
    iput-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPendingRadioPowerOffAfterDataOff:Z

    .line 319
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPendingCellInfoRequests:Ljava/util/List;

    .line 321
    iput-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIsPendingCellInfoRequest:Z

    .line 329
    iput-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mImsRegistrationOnOff:Z

    .line 330
    iput-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDeviceShuttingDown:Z

    .line 332
    new-instance v2, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData$Builder;

    invoke-direct {v2}, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData$Builder;-><init>()V

    .line 333
    invoke-virtual {v2}, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData$Builder;->build()Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCarrierDisplayNameData:Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData;

    const/4 v2, -0x1

    .line 335
    iput v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSubId:I

    .line 338
    iput v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPrevSubId:I

    .line 340
    iput-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mImsRegistered:Z

    .line 345
    new-instance v3, Lcom/android/internal/telephony/ServiceStateTracker$SstSubscriptionsChangedListener;

    invoke-direct {v3, p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker$SstSubscriptionsChangedListener;-><init>(Lcom/android/internal/telephony/ServiceStateTracker;Lcom/android/internal/telephony/ServiceStateTracker-IA;)V

    iput-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mOnSubscriptionsChangedListener:Lcom/android/internal/telephony/ServiceStateTracker$SstSubscriptionsChangedListener;

    .line 353
    new-instance v4, Lcom/android/internal/telephony/LocalLog;

    const/16 v5, 0x8

    invoke-direct {v4, v5}, Lcom/android/internal/telephony/LocalLog;-><init>(I)V

    iput-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRoamingLog:Lcom/android/internal/telephony/LocalLog;

    .line 354
    new-instance v4, Lcom/android/internal/telephony/LocalLog;

    invoke-direct {v4, v5}, Lcom/android/internal/telephony/LocalLog;-><init>(I)V

    iput-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mAttachLog:Lcom/android/internal/telephony/LocalLog;

    .line 355
    new-instance v4, Lcom/android/internal/telephony/LocalLog;

    invoke-direct {v4, v5}, Lcom/android/internal/telephony/LocalLog;-><init>(I)V

    iput-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhoneTypeLog:Lcom/android/internal/telephony/LocalLog;

    .line 356
    new-instance v4, Lcom/android/internal/telephony/LocalLog;

    const/16 v5, 0x10

    invoke-direct {v4, v5}, Lcom/android/internal/telephony/LocalLog;-><init>(I)V

    iput-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRatLog:Lcom/android/internal/telephony/LocalLog;

    .line 357
    new-instance v4, Lcom/android/internal/telephony/LocalLog;

    invoke-direct {v4, v5}, Lcom/android/internal/telephony/LocalLog;-><init>(I)V

    iput-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRadioPowerLog:Lcom/android/internal/telephony/LocalLog;

    .line 358
    new-instance v4, Lcom/android/internal/telephony/LocalLog;

    const/16 v5, 0x40

    invoke-direct {v4, v5}, Lcom/android/internal/telephony/LocalLog;-><init>(I)V

    iput-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCdnrLogs:Lcom/android/internal/telephony/LocalLog;

    const/4 v4, 0x1

    .line 483
    iput v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mMaxDataCalls:I

    .line 485
    iput v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewMaxDataCalls:I

    .line 487
    iput v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mReasonDataDenied:I

    .line 489
    iput v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewReasonDataDenied:I

    .line 503
    iput-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mGsmVoiceRoaming:Z

    .line 508
    iput-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mGsmDataRoaming:Z

    .line 512
    iput-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mEmergencyOnly:Z

    .line 514
    iput-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCSEmergencyOnly:Z

    .line 515
    iput-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPSEmergencyOnly:Z

    .line 544
    iput-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIsSimReady:Z

    .line 546
    const-string v5, ""

    iput-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mLastKnownNetworkCountry:Ljava/lang/String;

    .line 548
    new-instance v5, Lcom/android/internal/telephony/ServiceStateTracker$1;

    invoke-direct {v5, p0}, Lcom/android/internal/telephony/ServiceStateTracker$1;-><init>(Lcom/android/internal/telephony/ServiceStateTracker;)V

    iput-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 570
    new-instance v5, Lcom/android/internal/telephony/ServiceStateTracker$$ExternalSyntheticLambda5;

    invoke-direct {v5, p0}, Lcom/android/internal/telephony/ServiceStateTracker$$ExternalSyntheticLambda5;-><init>(Lcom/android/internal/telephony/ServiceStateTracker;)V

    iput-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCarrierConfigChangeListener:Landroid/telephony/CarrierConfigManager$CarrierConfigChangeListener;

    .line 579
    iput v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCurrentOtaspMode:I

    .line 588
    iput v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRegistrationState:I

    .line 589
    new-instance v2, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v2}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCdmaForSubscriptionInfoReadyRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 591
    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mHomeSystemId:[I

    .line 592
    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mHomeNetworkId:[I

    .line 595
    iput-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIsMinInfoReady:Z

    .line 596
    iput-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIsEriTextLoaded:Z

    .line 598
    iput-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIsSubscriptionFromRuim:Z

    .line 603
    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mHbpcdUtils:Lcom/android/internal/telephony/HbpcdUtils;

    .line 606
    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCurrentCarrier:Ljava/lang/String;

    .line 609
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRegStateManagers:Landroid/util/SparseArray;

    const v2, 0x7fffffff

    .line 612
    iput v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mLastKnownAreaCode:I

    .line 625
    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mAccessNetworksManagerCallback:Lcom/android/internal/telephony/data/AccessNetworksManager$AccessNetworksManagerCallback;

    .line 630
    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSatelliteModemStateListener:Lcom/android/internal/telephony/ServiceStateTracker$SatelliteModemStateListener;

    .line 706
    invoke-static {}, Lcom/android/internal/telephony/TelephonyComponentFactory;->getInstance()Lcom/android/internal/telephony/TelephonyComponentFactory;

    move-result-object v2

    const-class v6, Lcom/android/internal/telephony/NitzStateMachine;

    .line 707
    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/android/internal/telephony/TelephonyComponentFactory;->inject(Ljava/lang/String;)Lcom/android/internal/telephony/TelephonyComponentFactory;

    move-result-object v2

    .line 708
    invoke-virtual {v2, p1}, Lcom/android/internal/telephony/TelephonyComponentFactory;->makeNitzStateMachine(Lcom/android/internal/telephony/GsmCdmaPhone;)Lcom/android/internal/telephony/NitzStateMachine;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNitzState:Lcom/android/internal/telephony/NitzStateMachine;

    .line 709
    iput-object p1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    .line 710
    iput-object p2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 711
    iput-object p3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mFeatureFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

    .line 713
    new-instance p2, Lcom/android/internal/telephony/metrics/ServiceStateStats;

    invoke-direct {p2, p1}, Lcom/android/internal/telephony/metrics/ServiceStateStats;-><init>(Lcom/android/internal/telephony/Phone;)V

    iput-object p2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mServiceStateStats:Lcom/android/internal/telephony/metrics/ServiceStateStats;

    .line 715
    new-instance p2, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameResolver;

    invoke-direct {p2, p1}, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameResolver;-><init>(Lcom/android/internal/telephony/GsmCdmaPhone;)V

    iput-object p2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCdnr:Lcom/android/internal/telephony/cdnr/CarrierDisplayNameResolver;

    .line 723
    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mEriManager:Lcom/android/internal/telephony/cdma/EriManager;

    .line 726
    new-instance p2, Lcom/android/internal/telephony/RatRatcheter;

    invoke-direct {p2, p1}, Lcom/android/internal/telephony/RatRatcheter;-><init>(Lcom/android/internal/telephony/Phone;)V

    iput-object p2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRatRatcheter:Lcom/android/internal/telephony/RatRatcheter;

    .line 727
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string v2, "phone"

    .line 728
    invoke-virtual {p2, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/telephony/TelephonyManager;

    .line 729
    invoke-virtual {p2}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mVoiceCapable:Z

    .line 730
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object p2

    iput-object p2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    const/16 v2, 0x2a

    .line 732
    invoke-virtual {p2, p0, v2, v0}, Lcom/android/internal/telephony/uicc/UiccController;->registerForIccChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 733
    iget-object p2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0x2c

    invoke-interface {p2, p0, v2, v0}, Lcom/android/internal/telephony/CommandsInterface;->registerForCellInfoList(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 734
    iget-object p2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0x37

    invoke-interface {p2, p0, v2, v0}, Lcom/android/internal/telephony/CommandsInterface;->registerForPhysicalChannelConfiguration(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 736
    invoke-static {}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getInstance()Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    move-result-object p2

    iput-object p2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSubscriptionManagerService:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    .line 737
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object p2

    iput-object p2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 738
    new-instance v2, Landroid/os/HandlerExecutor;

    invoke-direct {v2, p0}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    invoke-virtual {p2, v2, v3}, Landroid/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Ljava/util/concurrent/Executor;Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 740
    new-instance p2, Lcom/android/internal/telephony/RestrictedState;

    invoke-direct {p2}, Lcom/android/internal/telephony/RestrictedState;-><init>()V

    iput-object p2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    .line 742
    invoke-direct {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getCarrierConfig()Landroid/os/PersistableBundle;

    move-result-object p2

    iput-object p2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCarrierConfig:Landroid/os/PersistableBundle;

    .line 743
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p2

    const-class v2, Landroid/telephony/CarrierConfigManager;

    invoke-virtual {p2, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/telephony/CarrierConfigManager;

    if-eqz p2, :cond_1de

    .line 746
    new-instance v2, Lcom/android/internal/telephony/ServiceStateTracker$$ExternalSyntheticLambda6;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/ServiceStateTracker$$ExternalSyntheticLambda6;-><init>(Lcom/android/internal/telephony/ServiceStateTracker;)V

    invoke-virtual {p2, v2, v5}, Landroid/telephony/CarrierConfigManager;->registerCarrierConfigChangeListener(Ljava/util/concurrent/Executor;Landroid/telephony/CarrierConfigManager$CarrierConfigChangeListener;)V

    .line 749
    :cond_1de
    invoke-virtual {p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getAccessNetworksManager()Lcom/android/internal/telephony/data/AccessNetworksManager;

    move-result-object p2

    iput-object p2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mAccessNetworksManager:Lcom/android/internal/telephony/data/AccessNetworksManager;

    .line 750
    new-instance v2, Landroid/telephony/ServiceState;

    invoke-direct {v2}, Landroid/telephony/ServiceState;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mOutOfServiceSS:Landroid/telephony/ServiceState;

    .line 751
    invoke-virtual {v2, v1}, Landroid/telephony/ServiceState;->setOutOfService(Z)V

    .line 753
    invoke-virtual {p2}, Lcom/android/internal/telephony/data/AccessNetworksManager;->getAvailableTransports()[I

    move-result-object p2

    array-length v2, p2

    move v3, v1

    :goto_1f4
    if-ge v3, v2, :cond_211

    aget v5, p2, v3

    .line 754
    iget-object v6, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRegStateManagers:Landroid/util/SparseArray;

    new-instance v7, Lcom/android/internal/telephony/NetworkRegistrationManager;

    invoke-direct {v7, v5, p1}, Lcom/android/internal/telephony/NetworkRegistrationManager;-><init>(ILcom/android/internal/telephony/Phone;)V

    invoke-virtual {v6, v5, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 756
    iget-object v6, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRegStateManagers:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/NetworkRegistrationManager;

    const/4 v6, 0x2

    invoke-virtual {v5, p0, v6, v0}, Lcom/android/internal/telephony/NetworkRegistrationManager;->registerForNetworkRegistrationInfoChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1f4

    .line 759
    :cond_211
    invoke-static {}, Lcom/android/internal/telephony/TelephonyComponentFactory;->getInstance()Lcom/android/internal/telephony/TelephonyComponentFactory;

    move-result-object p2

    const-class v2, Lcom/android/internal/telephony/LocaleTracker;

    .line 760
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/android/internal/telephony/TelephonyComponentFactory;->inject(Ljava/lang/String;)Lcom/android/internal/telephony/TelephonyComponentFactory;

    move-result-object p2

    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNitzState:Lcom/android/internal/telephony/NitzStateMachine;

    .line 761
    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-virtual {p2, v2, v3, v5, p3}, Lcom/android/internal/telephony/TelephonyComponentFactory;->makeLocaleTracker(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/NitzStateMachine;Landroid/os/Looper;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)Lcom/android/internal/telephony/LocaleTracker;

    move-result-object p2

    iput-object p2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mLocaleTracker:Lcom/android/internal/telephony/LocaleTracker;

    .line 763
    iget-object p2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0x2e

    invoke-interface {p2, p0, v2, v0}, Lcom/android/internal/telephony/CommandsInterface;->registerForImsNetworkStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 764
    iget-object p2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {p2, p0, v4, v0}, Lcom/android/internal/telephony/CommandsInterface;->registerForRadioStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 765
    iget-object p2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0xb

    invoke-interface {p2, p0, v2, v0}, Lcom/android/internal/telephony/CommandsInterface;->setOnNITZTime(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 767
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    iput-object p2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCr:Landroid/content/ContentResolver;

    .line 769
    const-string v2, "airplane_mode_on"

    invoke-static {p2, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 770
    const-string v3, "enable_cellular_on_boot"

    .line 771
    invoke-direct {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getDefaultEnableCellularOnBoot()I

    move-result v5

    .line 770
    invoke-static {p2, v3, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p2

    if-lez p2, :cond_260

    if-gtz v2, :cond_260

    move v3, v4

    goto :goto_261

    :cond_260
    move v3, v1

    .line 772
    :goto_261
    iput-boolean v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDesiredPowerState:Z

    if-nez v3, :cond_26e

    .line 774
    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRadioPowerOffReasons:Ljava/util/Set;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 776
    :cond_26e
    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRadioPowerLog:Lcom/android/internal/telephony/LocalLog;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "init : airplane mode = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " enableCellularOnBoot = "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    .line 779
    iget-object p2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {p2}, Lcom/android/internal/telephony/Phone;->getCarrierActionAgent()Lcom/android/internal/telephony/CarrierActionAgent;

    move-result-object v5

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v6, 0x1

    const/16 v8, 0x33

    move-object v7, p0

    invoke-virtual/range {v5 .. v10}, Lcom/android/internal/telephony/CarrierActionAgent;->registerForCarrierAction(ILandroid/os/Handler;ILjava/lang/Object;Z)V

    .line 783
    iget-object p0, v7, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p0

    .line 784
    new-instance p2, Landroid/content/IntentFilter;

    invoke-direct {p2}, Landroid/content/IntentFilter;-><init>()V

    .line 785
    const-string v2, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {p2, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 786
    const-string v2, "android.telephony.action.NETWORK_COUNTRY_CHANGED"

    invoke-virtual {p2, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 787
    iget-object v2, v7, Lcom/android/internal/telephony/ServiceStateTracker;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 789
    iget-object p0, v7, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/Phone;->notifyOtaspChanged(I)V

    .line 791
    iget-object p0, v7, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 p2, 0x17

    invoke-interface {p0, v7, p2, v0}, Lcom/android/internal/telephony/CommandsInterface;->setOnRestrictedStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 792
    invoke-virtual {v7}, Lcom/android/internal/telephony/ServiceStateTracker;->updatePhoneType()V

    .line 794
    new-instance p0, Lcom/android/internal/telephony/CarrierServiceStateTracker;

    invoke-direct {p0, p1, v7, p3}, Lcom/android/internal/telephony/CarrierServiceStateTracker;-><init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/ServiceStateTracker;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)V

    iput-object p0, v7, Lcom/android/internal/telephony/ServiceStateTracker;->mCSST:Lcom/android/internal/telephony/CarrierServiceStateTracker;

    const/16 p1, 0x65

    .line 796
    invoke-virtual {v7, p0, p1, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForNetworkAttached(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 798
    iget-object p0, v7, Lcom/android/internal/telephony/ServiceStateTracker;->mCSST:Lcom/android/internal/telephony/CarrierServiceStateTracker;

    const/16 p1, 0x66

    invoke-virtual {v7, p0, p1, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForNetworkDetached(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 800
    iget-object p0, v7, Lcom/android/internal/telephony/ServiceStateTracker;->mCSST:Lcom/android/internal/telephony/CarrierServiceStateTracker;

    const/16 p1, 0x67

    invoke-virtual {v7, v4, p0, p1, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForDataConnectionAttached(ILandroid/os/Handler;ILjava/lang/Object;)V

    .line 802
    iget-object p0, v7, Lcom/android/internal/telephony/ServiceStateTracker;->mCSST:Lcom/android/internal/telephony/CarrierServiceStateTracker;

    const/16 p1, 0x68

    invoke-virtual {v7, v4, p0, p1, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForDataConnectionDetached(ILandroid/os/Handler;ILjava/lang/Object;)V

    .line 804
    iget-object p0, v7, Lcom/android/internal/telephony/ServiceStateTracker;->mCSST:Lcom/android/internal/telephony/CarrierServiceStateTracker;

    const/16 p1, 0x69

    invoke-virtual {v7, p0, p1, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForImsCapabilityChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 807
    new-instance p0, Lcom/android/internal/telephony/ServiceStateTracker$2;

    new-instance p1, Lcom/android/internal/telephony/ServiceStateTracker$$ExternalSyntheticLambda6;

    invoke-direct {p1, v7}, Lcom/android/internal/telephony/ServiceStateTracker$$ExternalSyntheticLambda6;-><init>(Lcom/android/internal/telephony/ServiceStateTracker;)V

    invoke-direct {p0, v7, p1}, Lcom/android/internal/telephony/ServiceStateTracker$2;-><init>(Lcom/android/internal/telephony/ServiceStateTracker;Ljava/util/concurrent/Executor;)V

    iput-object p0, v7, Lcom/android/internal/telephony/ServiceStateTracker;->mDataDisconnectedCallback:Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;

    .line 817
    new-instance p0, Lcom/android/internal/telephony/ServiceStateTracker$3;

    new-instance p1, Lcom/android/internal/telephony/ServiceStateTracker$$ExternalSyntheticLambda6;

    invoke-direct {p1, v7}, Lcom/android/internal/telephony/ServiceStateTracker$$ExternalSyntheticLambda6;-><init>(Lcom/android/internal/telephony/ServiceStateTracker;)V

    invoke-direct {p0, v7, p1}, Lcom/android/internal/telephony/ServiceStateTracker$3;-><init>(Lcom/android/internal/telephony/ServiceStateTracker;Ljava/util/concurrent/Executor;)V

    iput-object p0, v7, Lcom/android/internal/telephony/ServiceStateTracker;->mAccessNetworksManagerCallback:Lcom/android/internal/telephony/data/AccessNetworksManager$AccessNetworksManagerCallback;

    .line 831
    iget-object p1, v7, Lcom/android/internal/telephony/ServiceStateTracker;->mAccessNetworksManager:Lcom/android/internal/telephony/data/AccessNetworksManager;

    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/data/AccessNetworksManager;->registerCallback(Lcom/android/internal/telephony/data/AccessNetworksManager$AccessNetworksManagerCallback;)V

    return-void
.end method

.method private blacklist cancelAllNotifications()V
    .registers 4

    .line 4647
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cancelAllNotifications: mPrevSubId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPrevSubId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4648
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    .line 4649
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 4650
    iget v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPrevSubId:I

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v1

    if-eqz v1, :cond_5b

    .line 4651
    iget v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPrevSubId:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x378

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 4652
    iget v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPrevSubId:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x3e7

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 4653
    iget v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPrevSubId:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x6f

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 4656
    const-string v1, "EmergencyNetworkNotification"

    iget v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPrevSubId:I

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 4658
    const-string v1, "PrefNetworkNotification"

    iget p0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPrevSubId:I

    invoke-virtual {v0, v1, p0}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    :cond_5b
    return-void
.end method

.method private blacklist cancelDelayRadioOffWaitingForImsDeregTimeout()V
    .registers 3

    const/16 v0, 0x3e

    .line 3295
    invoke-virtual {p0, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 3296
    const-string v1, "cancelDelayRadioOffWaitingForImsDeregTimeout: cancelling."

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3297
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    :cond_10
    return-void
.end method

.method private blacklist combinePsRegistrationStates(Landroid/telephony/ServiceState;)V
    .registers 8

    const/4 v0, 0x2

    .line 2281
    invoke-virtual {p1, v0, v0}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v1

    const/4 v2, 0x1

    .line 2283
    invoke-virtual {p1, v0, v2}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v0

    .line 2287
    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mAccessNetworksManager:Lcom/android/internal/telephony/data/AccessNetworksManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/data/AccessNetworksManager;->isAnyApnOnIwlan()Z

    move-result v3

    .line 2288
    invoke-virtual {p1, v3}, Landroid/telephony/ServiceState;->setIwlanPreferred(Z)V

    if-eqz v1, :cond_2a

    .line 2290
    invoke-virtual {v1}, Landroid/telephony/NetworkRegistrationInfo;->getAccessNetworkTechnology()I

    move-result v4

    const/16 v5, 0x12

    if-ne v4, v5, :cond_2a

    .line 2292
    invoke-virtual {v1}, Landroid/telephony/NetworkRegistrationInfo;->getNetworkRegistrationState()I

    move-result v1

    if-ne v1, v2, :cond_2a

    if-eqz v3, :cond_2a

    const/4 v0, 0x0

    .line 2295
    invoke-virtual {p1, v0}, Landroid/telephony/ServiceState;->setDataRegState(I)V

    goto :goto_37

    :cond_2a
    if-eqz v0, :cond_37

    .line 2299
    invoke-virtual {v0}, Landroid/telephony/NetworkRegistrationInfo;->getNetworkRegistrationState()I

    move-result v0

    .line 2300
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->regCodeToServiceState(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/telephony/ServiceState;->setDataRegState(I)V

    .line 2303
    :cond_37
    :goto_37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "combinePsRegistrationStates: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist currentMccEqualsSimMcc(Landroid/telephony/ServiceState;)Z
    .registers 4

    .line 4383
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    .line 4384
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 4385
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getPhoneId()I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/telephony/TelephonyManager;->getSimOperatorNumericForPhone(I)Ljava/lang/String;

    move-result-object p0

    .line 4386
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x3

    const/4 v1, 0x0

    .line 4390
    :try_start_1c
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 4391
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_28} :catch_29

    return p0

    :catch_29
    const/4 p0, 0x1

    return p0
.end method

.method private blacklist dumpCellInfoList(Ljava/io/PrintWriter;)V
    .registers 4

    .line 5393
    const-string v0, " mLastCellInfoList={"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5394
    iget-object p0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mLastCellInfoList:Ljava/util/List;

    if-eqz p0, :cond_2a

    .line 5396
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x1

    :goto_e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/CellInfo;

    if-nez v0, :cond_21

    .line 5398
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5401
    :cond_21
    invoke-virtual {v1}, Landroid/telephony/CellInfo;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_e

    .line 5404
    :cond_2a
    const-string p0, "}"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method private greylist-max-r fixUnknownMcc(Ljava/lang/String;I)Ljava/lang/String;
    .registers 7

    if-gtz p2, :cond_3

    goto :goto_3d

    .line 4302
    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mLastNitzData:Lcom/android/internal/telephony/NitzData;

    const/4 v1, 0x0

    if-eqz v0, :cond_21

    .line 4304
    invoke-virtual {v0}, Lcom/android/internal/telephony/NitzData;->getLocalOffsetMillis()I

    move-result v2

    const v3, 0x36ee80

    div-int/2addr v2, v3

    .line 4305
    invoke-virtual {v0}, Lcom/android/internal/telephony/NitzData;->getDstAdjustmentMillis()Ljava/lang/Integer;

    move-result-object v0

    const/4 v3, 0x1

    if-eqz v0, :cond_1e

    .line 4306
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_1e

    move v1, v3

    :cond_1e
    move v0, v1

    move v1, v2

    goto :goto_23

    :cond_21
    move v0, v1

    move v3, v0

    .line 4309
    :goto_23
    iget-object p0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mHbpcdUtils:Lcom/android/internal/telephony/HbpcdUtils;

    invoke-virtual {p0, p2, v1, v0, v3}, Lcom/android/internal/telephony/HbpcdUtils;->getMcc(IIIZ)I

    move-result p0

    if-lez p0, :cond_3d

    .line 4311
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "00"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3d
    :goto_3d
    return-object p1
.end method

.method private static blacklist getAreaCodeFromCellIdentity(Landroid/telephony/CellIdentity;)I
    .registers 4

    const v0, 0x7fffffff

    if-nez p0, :cond_6

    return v0

    .line 2597
    :cond_6
    invoke-virtual {p0}, Landroid/telephony/CellIdentity;->getType()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_36

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2f

    const/4 v2, 0x4

    if-eq v1, v2, :cond_28

    const/4 v2, 0x5

    if-eq v1, v2, :cond_21

    const/4 v2, 0x6

    if-eq v1, v2, :cond_1a

    return v0

    .line 2602
    :cond_1a
    check-cast p0, Landroid/telephony/CellIdentityNr;

    invoke-virtual {p0}, Landroid/telephony/CellIdentityNr;->getTac()I

    move-result p0

    return p0

    .line 2600
    :cond_21
    check-cast p0, Landroid/telephony/CellIdentityTdscdma;

    invoke-virtual {p0}, Landroid/telephony/CellIdentityTdscdma;->getLac()I

    move-result p0

    return p0

    .line 2599
    :cond_28
    check-cast p0, Landroid/telephony/CellIdentityWcdma;

    invoke-virtual {p0}, Landroid/telephony/CellIdentityWcdma;->getLac()I

    move-result p0

    return p0

    .line 2601
    :cond_2f
    check-cast p0, Landroid/telephony/CellIdentityLte;

    invoke-virtual {p0}, Landroid/telephony/CellIdentityLte;->getTac()I

    move-result p0

    return p0

    .line 2598
    :cond_36
    check-cast p0, Landroid/telephony/CellIdentityGsm;

    invoke-virtual {p0}, Landroid/telephony/CellIdentityGsm;->getLac()I

    move-result p0

    return p0
.end method

.method private static blacklist getBandwidthsFromConfigs(Ljava/util/List;)[I
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/PhysicalChannelConfig;",
            ">;)[I"
        }
    .end annotation

    .line 1867
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/internal/telephony/ServiceStateTracker$$ExternalSyntheticLambda7;

    invoke-direct {v0}, Lcom/android/internal/telephony/ServiceStateTracker$$ExternalSyntheticLambda7;-><init>()V

    .line 1868
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/internal/telephony/RILUtils$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/internal/telephony/RILUtils$$ExternalSyntheticLambda0;-><init>()V

    .line 1869
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object p0

    .line 1870
    invoke-interface {p0}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object p0

    return-object p0
.end method

.method private blacklist getCarrierConfig()Landroid/os/PersistableBundle;
    .registers 3

    .line 5818
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "carrier_config"

    .line 5819
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    if-eqz v0, :cond_1d

    .line 5822
    iget-object p0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object p0

    if-eqz p0, :cond_1d

    return-object p0

    .line 5828
    :cond_1d
    invoke-static {}, Landroid/telephony/CarrierConfigManager;->getDefaultConfig()Landroid/os/PersistableBundle;

    move-result-object p0

    return-object p0
.end method

.method private blacklist getCarrierDisplayNameLegacy()Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData;
    .registers 15

    .line 2920
    const-string v0, "getCarrierDisplayNameLegacy+"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2931
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->getCombinedRegState(Landroid/telephony/ServiceState;)I

    move-result v0

    .line 2932
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    const-string v2, "wfc_spn_use_root_locale"

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v1, :cond_ad

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->isWifiCallingEnabled()Z

    move-result v1

    if-eqz v1, :cond_ad

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    .line 2933
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->isImsRegistered()Z

    move-result v1

    if-eqz v1, :cond_ad

    if-nez v0, :cond_ad

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 2935
    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getDataNetworkType()I

    move-result v1

    const/16 v5, 0x12

    if-ne v1, v5, :cond_ad

    .line 2949
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCarrierConfig:Landroid/os/PersistableBundle;

    const-string v5, "wfc_spn_format_idx_int"

    invoke-virtual {v1, v5}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 2950
    iget-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCarrierConfig:Landroid/os/PersistableBundle;

    const-string v6, "wfc_data_spn_format_idx_int"

    invoke-virtual {v5, v6}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 2951
    iget-object v6, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCarrierConfig:Landroid/os/PersistableBundle;

    const-string v7, "wfc_flight_mode_spn_format_idx_int"

    invoke-virtual {v6, v7}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 2953
    iget-object v7, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCarrierConfig:Landroid/os/PersistableBundle;

    .line 2954
    invoke-virtual {v7, v2}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    .line 2956
    iget-object v8, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v8}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    .line 2957
    invoke-virtual {v9}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v9

    .line 2956
    invoke-static {v8, v9, v7}, Landroid/telephony/SubscriptionManager;->getResourcesForSubId(Landroid/content/Context;IZ)Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x1070123

    .line 2958
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    if-ltz v1, :cond_71

    .line 2960
    array-length v8, v7

    if-lt v1, v8, :cond_86

    .line 2961
    :cond_71
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "updateCarrierDisplayName: KEY_WFC_SPN_FORMAT_IDX_INT out of bounds: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->loge(Ljava/lang/String;)V

    move v1, v4

    :cond_86
    if-ltz v5, :cond_8b

    .line 2965
    array-length v8, v7

    if-lt v5, v8, :cond_a0

    .line 2966
    :cond_8b
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "updateCarrierDisplayName: KEY_WFC_DATA_SPN_FORMAT_IDX_INT out of bounds: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/ServiceStateTracker;->loge(Ljava/lang/String;)V

    move v5, v4

    :cond_a0
    if-ltz v6, :cond_a5

    .line 2970
    array-length v8, v7

    if-lt v6, v8, :cond_a6

    :cond_a5
    move v6, v1

    .line 2976
    :cond_a6
    aget-object v1, v7, v1

    .line 2977
    aget-object v5, v7, v5

    .line 2978
    aget-object v6, v7, v6

    goto :goto_b0

    :cond_ad
    move-object v1, v3

    move-object v5, v1

    move-object v6, v5

    .line 2982
    :goto_b0
    invoke-direct {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getImsRegistrationTech()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_101

    iget-object v7, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    .line 2983
    invoke-virtual {v7}, Lcom/android/internal/telephony/Phone;->isImsRegistered()Z

    move-result v7

    if-eqz v7, :cond_101

    .line 2990
    iget-object v7, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCarrierConfig:Landroid/os/PersistableBundle;

    const-string v9, "cross_sim_spn_format_int"

    .line 2991
    invoke-virtual {v7, v9}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v7

    .line 2992
    iget-object v9, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCarrierConfig:Landroid/os/PersistableBundle;

    .line 2993
    invoke-virtual {v9, v2}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 2995
    iget-object v9, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    .line 2996
    invoke-virtual {v9}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v9

    iget-object v10, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v10}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v10

    .line 2995
    invoke-static {v9, v10, v2}, Landroid/telephony/SubscriptionManager;->getResourcesForSubId(Landroid/content/Context;IZ)Landroid/content/res/Resources;

    move-result-object v2

    const v9, 0x10700ea

    .line 2997
    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    if-ltz v7, :cond_e9

    .line 2999
    array-length v9, v2

    if-lt v7, v9, :cond_fe

    .line 3000
    :cond_e9
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "updateCarrierDisplayName: KEY_CROSS_SIM_SPN_FORMAT_INT out of bounds: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/ServiceStateTracker;->loge(Ljava/lang/String;)V

    move v7, v4

    .line 3004
    :cond_fe
    aget-object v2, v2, v7

    goto :goto_102

    :cond_101
    move-object v2, v3

    .line 3008
    :goto_102
    invoke-direct {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getSatelliteModemStateListener()Lcom/android/internal/telephony/ServiceStateTracker$SatelliteModemStateListener;

    move-result-object v7

    if-eqz v7, :cond_113

    .line 3010
    invoke-virtual {v7}, Lcom/android/internal/telephony/ServiceStateTracker$SatelliteModemStateListener;->isInConnectedState()Z

    move-result v7

    if-eqz v7, :cond_113

    .line 3011
    invoke-direct {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getSatelliteDisplayName()Ljava/lang/String;

    move-result-object v7

    goto :goto_114

    :cond_113
    move-object v7, v3

    .line 3013
    :goto_114
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "updateCarrierDisplayName: satellitePlmn="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3015
    iget-object v9, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v9}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v9

    const-string v10, "\'"

    const v11, 0x10405a4

    const/4 v12, 0x1

    if-eqz v9, :cond_2db

    .line 3034
    iget-object v9, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/ServiceStateTracker;->getCarrierNameDisplayBitmask(Landroid/telephony/ServiceState;)I

    move-result v9

    if-eq v0, v12, :cond_18e

    if-ne v0, v8, :cond_141

    goto :goto_18e

    :cond_141
    if-nez v0, :cond_16e

    .line 3059
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getOperatorAlpha()Ljava/lang/String;

    move-result-object v0

    .line 3060
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_155

    and-int/lit8 v10, v9, 0x2

    if-ne v10, v8, :cond_155

    move v8, v12

    goto :goto_156

    :cond_155
    move v8, v4

    .line 3063
    :goto_156
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "updateCarrierDisplayName: rawPlmn = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    move v10, v8

    move v8, v4

    goto/16 :goto_1da

    .line 3069
    :cond_16e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateCarrierDisplayName: radio is off w/ showPlmn="

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, " plmn="

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    move-object v0, v3

    move v8, v4

    :goto_18c
    move v10, v12

    goto :goto_1da

    .line 3041
    :cond_18e
    :goto_18e
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->shouldForceDisplayNoService()Z

    move-result v0

    if-eqz v0, :cond_199

    iget-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIsSimReady:Z

    if-nez v0, :cond_199

    goto :goto_1a4

    .line 3042
    :cond_199
    iget-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mEmergencyOnly:Z

    if-nez v0, :cond_1b2

    invoke-static {}, Lcom/android/internal/telephony/Phone;->isEmergencyCallOnly()Z

    move-result v0

    if-eqz v0, :cond_1a4

    goto :goto_1b2

    .line 3048
    :cond_1a4
    :goto_1a4
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    .line 3049
    invoke-virtual {v0, v11}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 3050
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    move v8, v12

    goto :goto_1c2

    .line 3044
    :cond_1b2
    :goto_1b2
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v8, 0x10403a5

    .line 3045
    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    move v8, v4

    .line 3054
    :goto_1c2
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "updateCarrierDisplayName: radio is on but out of service, set plmn=\'"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    goto :goto_18c

    .line 3078
    :goto_1da
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getServiceProviderName()Ljava/lang/String;

    move-result-object v11

    if-nez v8, :cond_1ec

    .line 3080
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1ec

    and-int/lit8 v8, v9, 0x1

    if-ne v8, v12, :cond_1ec

    move v8, v12

    goto :goto_1ed

    :cond_1ec
    move v8, v4

    .line 3083
    :goto_1ed
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "updateCarrierDisplayName: rawSpn = "

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3084
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_21f

    .line 3088
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateCarrierDisplayName: Update satellite network name:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    move-object v3, v11

    move v10, v12

    goto/16 :goto_36d

    .line 3089
    :cond_21f
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    const-string v9, "wfc_carrier_name_override_by_pnn_bool"

    if-nez v7, :cond_267

    .line 3090
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_23f

    .line 3093
    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 3094
    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object v7, v0

    move-object v11, v3

    :goto_23b
    move v10, v4

    move v4, v12

    goto/16 :goto_36d

    .line 3098
    :cond_23f
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2d6

    .line 3100
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 3101
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v1, :cond_25b

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCarrierConfig:Landroid/os/PersistableBundle;

    invoke-virtual {v1, v9}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_25b

    .line 3103
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getPnnHomeName()Ljava/lang/String;

    move-result-object v0

    .line 3105
    :cond_25b
    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    :goto_263
    move v4, v8

    move-object v3, v11

    goto/16 :goto_36d

    .line 3107
    :cond_267
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v7, 0x3

    if-nez v2, :cond_29a

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_29a

    .line 3108
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_29a

    .line 3113
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    if-ne v2, v7, :cond_283

    move-object v1, v6

    .line 3117
    :cond_283
    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 3118
    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 3119
    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v5, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    move-object v7, v0

    move-object v11, v1

    goto :goto_23b

    .line 3122
    :cond_29a
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2c5

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2c5

    .line 3124
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 3126
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v2, :cond_2bc

    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCarrierConfig:Landroid/os/PersistableBundle;

    invoke-virtual {v2, v9}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2bc

    .line 3128
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getPnnHomeName()Ljava/lang/String;

    move-result-object v0

    .line 3131
    :cond_2bc
    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    goto :goto_263

    .line 3132
    :cond_2c5
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    if-eq v1, v7, :cond_2d8

    if-eqz v10, :cond_2d6

    .line 3133
    invoke-static {v11, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2d6

    goto :goto_2d8

    :cond_2d6
    move-object v7, v0

    goto :goto_263

    :cond_2d8
    :goto_2d8
    move-object v7, v0

    goto/16 :goto_36d

    .line 3139
    :cond_2db
    invoke-direct {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getOperatorNameFromEri()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2e6

    .line 3140
    iget-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v5, v2}, Landroid/telephony/ServiceState;->setOperatorAlphaLong(Ljava/lang/String;)V

    .line 3143
    :cond_2e6
    invoke-direct {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->updateOperatorNameFromCarrierConfig()V

    .line 3146
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getOperatorAlpha()Ljava/lang/String;

    move-result-object v2

    .line 3147
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateCarrierDisplayName: cdma rawPlmn = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    if-eqz v2, :cond_307

    move v5, v12

    goto :goto_308

    :cond_307
    move v5, v4

    .line 3151
    :goto_308
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_322

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_322

    .line 3153
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 3154
    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    move-object v7, v1

    goto :goto_346

    .line 3155
    :cond_322
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()I

    move-result v1

    if-nez v1, :cond_345

    .line 3159
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateCarrierDisplayName: overwriting plmn from "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " to null as radio state is off"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    move-object v7, v3

    goto :goto_346

    :cond_345
    move-object v7, v2

    :goto_346
    if-ne v0, v12, :cond_36b

    .line 3165
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 3166
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    .line 3168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateCarrierDisplayName: radio is on but out of svc, set plmn=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    :cond_36b
    move-object v11, v3

    move v10, v5

    .line 3174
    :goto_36d
    const-string v0, "getCarrierDisplayNameLegacy-"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3176
    new-instance p0, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData$Builder;

    invoke-direct {p0}, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData$Builder;-><init>()V

    .line 3177
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData$Builder;->setSpn(Ljava/lang/String;)Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData$Builder;

    move-result-object p0

    .line 3178
    invoke-virtual {p0, v11}, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData$Builder;->setDataSpn(Ljava/lang/String;)Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData$Builder;

    move-result-object p0

    .line 3179
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData$Builder;->setShowSpn(Z)Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData$Builder;

    move-result-object p0

    .line 3180
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData$Builder;->setPlmn(Ljava/lang/String;)Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData$Builder;

    move-result-object p0

    .line 3181
    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData$Builder;->setShowPlmn(Z)Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData$Builder;

    move-result-object p0

    .line 3182
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData$Builder;->build()Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData;

    move-result-object p0

    return-object p0
.end method

.method private blacklist getCarrierName(Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData;)Ljava/lang/String;
    .registers 5

    .line 2871
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData;->shouldShowPlmn()Z

    move-result v0

    .line 2872
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData;->shouldShowSpn()Z

    move-result v1

    .line 2873
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData;->getPlmn()Ljava/lang/String;

    move-result-object v2

    .line 2874
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData;->getSpn()Ljava/lang/String;

    move-result-object p1

    if-eqz v0, :cond_4b

    if-eqz v1, :cond_51

    .line 2880
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1b

    goto :goto_4d

    .line 2882
    :cond_1b
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_51

    invoke-static {p1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_51

    .line 2884
    iget-object p0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p0

    const v0, 0x1040581

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 2885
    invoke-virtual {p0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2886
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2887
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_51

    :cond_4b
    if-eqz v1, :cond_4f

    :goto_4d
    move-object v2, p1

    goto :goto_51

    .line 2890
    :cond_4f
    const-string v2, ""

    .line 2893
    :cond_51
    :goto_51
    invoke-static {v2}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist getCellIdentityFromCellInfo(Ljava/util/List;)Landroid/telephony/CellIdentity;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/CellInfo;",
            ">;)",
            "Landroid/telephony/CellIdentity;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_3e

    .line 4592
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3e

    .line 4594
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    move-object v1, v0

    :cond_e
    :goto_e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_39

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/CellInfo;

    .line 4595
    invoke-virtual {v2}, Landroid/telephony/CellInfo;->getCellIdentity()Landroid/telephony/CellIdentity;

    move-result-object v2

    .line 4596
    instance-of v3, v2, Landroid/telephony/CellIdentityLte;

    const-wide/16 v4, -0x1

    if-eqz v3, :cond_30

    if-nez v1, :cond_30

    .line 4597
    invoke-static {v2}, Lcom/android/internal/telephony/ServiceStateTracker;->getCidFromCellIdentity(Landroid/telephony/CellIdentity;)J

    move-result-wide v6

    cmp-long v3, v6, v4

    if-eqz v3, :cond_e

    move-object v1, v2

    goto :goto_e

    .line 4600
    :cond_30
    invoke-static {v2}, Lcom/android/internal/telephony/ServiceStateTracker;->getCidFromCellIdentity(Landroid/telephony/CellIdentity;)J

    move-result-wide v6

    cmp-long v3, v6, v4

    if-eqz v3, :cond_e

    move-object v0, v2

    :cond_39
    if-nez v0, :cond_3e

    if-eqz v1, :cond_3e

    return-object v1

    :cond_3e
    return-object v0
.end method

.method private static blacklist getCidFromCellIdentity(Landroid/telephony/CellIdentity;)J
    .registers 7

    const-wide/16 v0, -0x1

    if-nez p0, :cond_5

    return-wide v0

    .line 2577
    :cond_5
    invoke-virtual {p0}, Landroid/telephony/CellIdentity;->getType()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x6

    if-eq v2, v3, :cond_3b

    const/4 v3, 0x3

    if-eq v2, v3, :cond_33

    const/4 v3, 0x4

    if-eq v2, v3, :cond_2b

    const/4 v3, 0x5

    if-eq v2, v3, :cond_22

    if-eq v2, v4, :cond_1a

    move-wide v2, v0

    goto :goto_43

    .line 2582
    :cond_1a
    move-object v2, p0

    check-cast v2, Landroid/telephony/CellIdentityNr;

    invoke-virtual {v2}, Landroid/telephony/CellIdentityNr;->getNci()J

    move-result-wide v2

    goto :goto_43

    .line 2580
    :cond_22
    move-object v2, p0

    check-cast v2, Landroid/telephony/CellIdentityTdscdma;

    invoke-virtual {v2}, Landroid/telephony/CellIdentityTdscdma;->getCid()I

    move-result v2

    :goto_29
    int-to-long v2, v2

    goto :goto_43

    .line 2579
    :cond_2b
    move-object v2, p0

    check-cast v2, Landroid/telephony/CellIdentityWcdma;

    invoke-virtual {v2}, Landroid/telephony/CellIdentityWcdma;->getCid()I

    move-result v2

    goto :goto_29

    .line 2581
    :cond_33
    move-object v2, p0

    check-cast v2, Landroid/telephony/CellIdentityLte;

    invoke-virtual {v2}, Landroid/telephony/CellIdentityLte;->getCi()I

    move-result v2

    goto :goto_29

    .line 2578
    :cond_3b
    move-object v2, p0

    check-cast v2, Landroid/telephony/CellIdentityGsm;

    invoke-virtual {v2}, Landroid/telephony/CellIdentityGsm;->getCid()I

    move-result v2

    goto :goto_29

    .line 2586
    :goto_43
    invoke-virtual {p0}, Landroid/telephony/CellIdentity;->getType()I

    move-result p0

    if-ne p0, v4, :cond_4f

    const-wide v4, 0x7fffffffffffffffL

    goto :goto_52

    :cond_4f
    const-wide/32 v4, 0x7fffffff

    :goto_52
    cmp-long p0, v2, v4

    if-nez p0, :cond_57

    return-wide v0

    :cond_57
    return-wide v2
.end method

.method private blacklist getContentValuesForServiceState(Landroid/telephony/ServiceState;)Landroid/content/ContentValues;
    .registers 4

    .line 6038
    new-instance p0, Landroid/content/ContentValues;

    invoke-direct {p0}, Landroid/content/ContentValues;-><init>()V

    .line 6039
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    const/4 v1, 0x0

    .line 6040
    invoke-virtual {p1, v0, v1}, Landroid/telephony/ServiceState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 6043
    const-string p1, "service_state"

    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    return-object p0
.end method

.method private blacklist getDefaultEnableCellularOnBoot()I
    .registers 2

    .line 836
    iget-object p0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x111019d

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method private blacklist getImsRegistrationTech()I
    .registers 1

    .line 6083
    iget-object p0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/imsphone/ImsPhone;

    if-eqz p0, :cond_f

    .line 6085
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getImsRegistrationTech()I

    move-result p0

    return p0

    :cond_f
    const/4 p0, -0x1

    return p0
.end method

.method private blacklist getOperatorBrandOverride()Ljava/lang/String;
    .registers 2

    .line 4230
    iget-object p0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getUiccPort()Lcom/android/internal/telephony/uicc/UiccPort;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_a

    return-object v0

    .line 4232
    :cond_a
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccPort;->getUiccProfile()Lcom/android/internal/telephony/uicc/UiccProfile;

    move-result-object p0

    if-nez p0, :cond_11

    return-object v0

    .line 4234
    :cond_11
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->getOperatorBrandOverride()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private blacklist getOperatorNameFromEri()Ljava/lang/String;
    .registers 6

    .line 4087
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeCdma()Z

    move-result v0

    const v1, 0x104094b

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_37

    .line 4088
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()I

    move-result v0

    if-ne v0, v2, :cond_124

    iget-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIsSubscriptionFromRuim:Z

    if-nez v0, :cond_124

    .line 4091
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    if-nez v0, :cond_28

    .line 4092
    iget-object p0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getCdmaEriText()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 4096
    :cond_28
    iget-object p0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    .line 4097
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 4100
    :cond_37
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeCdmaLte()Z

    move-result v0

    if-eqz v0, :cond_124

    .line 4101
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getPhoneId()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccPort(I)Lcom/android/internal/telephony/uicc/UiccPort;

    move-result-object v0

    if-eqz v0, :cond_5d

    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    .line 4102
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getPhoneId()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccPort(I)Lcom/android/internal/telephony/uicc/UiccPort;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccPort;->getOperatorBrandOverride()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5d

    goto/16 :goto_d3

    .line 4103
    :cond_5d
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()I

    move-result v0

    if-ne v0, v2, :cond_d3

    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mEriManager:Lcom/android/internal/telephony/cdma/EriManager;

    if-eqz v0, :cond_d3

    .line 4104
    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/EriManager;->isEriFileLoaded()Z

    move-result v0

    if-eqz v0, :cond_d3

    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 4105
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/ServiceState;->isPsOnlyTech(I)Z

    move-result v0

    if-eqz v0, :cond_8e

    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    .line 4106
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x1110013

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_d3

    .line 4109
    :cond_8e
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getOperatorAlpha()Ljava/lang/String;

    move-result-object v3

    .line 4111
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    if-nez v0, :cond_a3

    .line 4112
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getCdmaEriText()Ljava/lang/String;

    move-result-object v3

    goto :goto_d3

    .line 4113
    :cond_a3
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    const/4 v4, 0x3

    if-ne v0, v4, :cond_bd

    .line 4114
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getServiceProviderName()Ljava/lang/String;

    move-result-object v3

    .line 4115
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d3

    .line 4118
    const-string v0, "ro.cdma.home.operator.alpha"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_d3

    .line 4120
    :cond_bd
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getDataRegistrationState()I

    move-result v0

    if-eqz v0, :cond_d3

    .line 4123
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 4124
    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4128
    :cond_d3
    :goto_d3
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v0, :cond_124

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getState()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_READY:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    if-ne v0, v1, :cond_124

    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v0, :cond_124

    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 4130
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->getCombinedRegState(Landroid/telephony/ServiceState;)I

    move-result v0

    if-nez v0, :cond_124

    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 4131
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/ServiceState;->isPsOnlyTech(I)Z

    move-result v0

    if-nez v0, :cond_124

    .line 4135
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    check-cast v0, Lcom/android/internal/telephony/uicc/RuimRecords;

    .line 4136
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/RuimRecords;->getCsimSpnDisplayCondition()Z

    move-result v0

    .line 4137
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getCdmaEriIconIndex()I

    move-result v1

    if-eqz v0, :cond_124

    if-ne v1, v2, :cond_124

    .line 4139
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 4140
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getCdmaSystemId()I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getCdmaNetworkId()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->isInHomeSidNid(II)Z

    move-result v0

    if-eqz v0, :cond_124

    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v0, :cond_124

    .line 4142
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getServiceProviderName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_124
    return-object v3
.end method

.method private static blacklist getPrimaryPhysicalChannelConfigForCell(Ljava/util/List;Landroid/telephony/CellIdentity;)Landroid/telephony/PhysicalChannelConfig;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/PhysicalChannelConfig;",
            ">;",
            "Landroid/telephony/CellIdentity;",
            ")",
            "Landroid/telephony/PhysicalChannelConfig;"
        }
    .end annotation

    .line 2693
    invoke-static {p0}, Lcom/android/internal/telephony/util/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_47

    instance-of v0, p1, Landroid/telephony/CellIdentityLte;

    if-nez v0, :cond_10

    instance-of v2, p1, Landroid/telephony/CellIdentityNr;

    if-nez v2, :cond_10

    goto :goto_47

    :cond_10
    if-eqz v0, :cond_1b

    .line 2701
    check-cast p1, Landroid/telephony/CellIdentityLte;

    invoke-virtual {p1}, Landroid/telephony/CellIdentityLte;->getPci()I

    move-result p1

    const/16 v0, 0xd

    goto :goto_23

    .line 2704
    :cond_1b
    check-cast p1, Landroid/telephony/CellIdentityNr;

    invoke-virtual {p1}, Landroid/telephony/CellIdentityNr;->getPci()I

    move-result p1

    const/16 v0, 0x14

    .line 2707
    :goto_23
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_27
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_47

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/PhysicalChannelConfig;

    .line 2708
    invoke-virtual {v2}, Landroid/telephony/PhysicalChannelConfig;->getConnectionStatus()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_27

    .line 2709
    invoke-virtual {v2}, Landroid/telephony/PhysicalChannelConfig;->getNetworkType()I

    move-result v3

    if-ne v3, v0, :cond_27

    invoke-virtual {v2}, Landroid/telephony/PhysicalChannelConfig;->getPhysicalCellId()I

    move-result v3

    if-ne v3, p1, :cond_27

    return-object v2

    :cond_47
    :goto_47
    return-object v1
.end method

.method public static blacklist getPrioritizedCellIdentities(Landroid/telephony/ServiceState;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telephony/ServiceState;",
            ")",
            "Ljava/util/List<",
            "Landroid/telephony/CellIdentity;",
            ">;"
        }
    .end annotation

    .line 3546
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfoList()Ljava/util/List;

    move-result-object p0

    .line 3547
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0

    .line 3549
    :cond_d
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/internal/telephony/ServiceStateTracker$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/internal/telephony/ServiceStateTracker$$ExternalSyntheticLambda0;-><init>()V

    .line 3550
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/internal/telephony/ServiceStateTracker$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/internal/telephony/ServiceStateTracker$$ExternalSyntheticLambda1;-><init>()V

    .line 3551
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/internal/telephony/ServiceStateTracker$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/android/internal/telephony/ServiceStateTracker$$ExternalSyntheticLambda2;-><init>()V

    .line 3553
    invoke-static {v0}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v0

    new-instance v1, Lcom/android/internal/telephony/ServiceStateTracker$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lcom/android/internal/telephony/ServiceStateTracker$$ExternalSyntheticLambda3;-><init>()V

    .line 3554
    invoke-interface {v0, v1}, Ljava/util/Comparator;->thenComparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v0

    .line 3555
    invoke-interface {v0}, Ljava/util/Comparator;->reversed()Ljava/util/Comparator;

    move-result-object v0

    .line 3552
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/internal/telephony/ServiceStateTracker$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lcom/android/internal/telephony/ServiceStateTracker$$ExternalSyntheticLambda4;-><init>()V

    .line 3556
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 3557
    invoke-interface {p0}, Ljava/util/stream/Stream;->distinct()Ljava/util/stream/Stream;

    move-result-object p0

    .line 3558
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method private blacklist getRegistrationInfo(I)Landroid/util/Pair;
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

    .line 1023
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object p1

    if-eqz p1, :cond_27

    .line 1027
    invoke-virtual {p1}, Landroid/telephony/NetworkRegistrationInfo;->getAccessNetworkTechnology()I

    move-result v0

    .line 1026
    invoke-static {v0}, Landroid/telephony/ServiceState;->networkTypeToRilRadioTechnology(I)I

    move-result v0

    .line 1028
    invoke-virtual {p1}, Landroid/telephony/NetworkRegistrationInfo;->getNetworkRegistrationState()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ServiceStateTracker;->regCodeToServiceState(I)I

    move-result p0

    .line 1029
    new-instance p1, Landroid/util/Pair;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    :cond_27
    const/4 p0, 0x0

    return-object p0
.end method

.method private static blacklist getRilDataRadioTechnologyForWwan(Landroid/telephony/ServiceState;)I
    .registers 3

    const/4 v0, 0x2

    const/4 v1, 0x1

    .line 5921
    invoke-virtual {p0, v0, v1}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object p0

    if-eqz p0, :cond_d

    .line 5925
    invoke-virtual {p0}, Landroid/telephony/NetworkRegistrationInfo;->getAccessNetworkTechnology()I

    move-result p0

    goto :goto_e

    :cond_d
    const/4 p0, 0x0

    .line 5927
    :goto_e
    invoke-static {p0}, Landroid/telephony/ServiceState;->networkTypeToRilRadioTechnology(I)I

    move-result p0

    return p0
.end method

.method private blacklist getSatelliteDisplayName()Ljava/lang/String;
    .registers 2

    .line 3227
    iget-object p0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCarrierConfig:Landroid/os/PersistableBundle;

    const-string v0, "satellite_display_name_string"

    invoke-virtual {p0, v0}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private blacklist getSatelliteModemStateListener()Lcom/android/internal/telephony/ServiceStateTracker$SatelliteModemStateListener;
    .registers 3

    .line 3210
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSatelliteModemStateListener:Lcom/android/internal/telephony/ServiceStateTracker$SatelliteModemStateListener;

    if-eqz v0, :cond_5

    return-object v0

    .line 3214
    :cond_5
    invoke-static {}, Lcom/android/internal/telephony/satellite/SatelliteController;->getInstance()Lcom/android/internal/telephony/satellite/SatelliteController;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 3216
    new-instance v1, Lcom/android/internal/telephony/ServiceStateTracker$SatelliteModemStateListener;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/ServiceStateTracker$SatelliteModemStateListener;-><init>(Lcom/android/internal/telephony/ServiceStateTracker;)V

    .line 3217
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/satellite/SatelliteController;->registerForSatelliteModemStateChanged(Landroid/telephony/satellite/ISatelliteModemStateCallback;)I

    move-result v0

    if-nez v0, :cond_1d

    .line 3219
    iput-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSatelliteModemStateListener:Lcom/android/internal/telephony/ServiceStateTracker$SatelliteModemStateListener;

    .line 3220
    const-string v0, "created SatelliteModemStateListener"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3223
    :cond_1d
    iget-object p0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSatelliteModemStateListener:Lcom/android/internal/telephony/ServiceStateTracker$SatelliteModemStateListener;

    return-object p0
.end method

.method private blacklist getSubscriptionInfoAndStartPollingThreads()V
    .registers 3

    .line 5368
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x22

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getCDMASubscription(Landroid/os/Message;)V

    const/4 v0, 0x0

    .line 5371
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->pollStateInternal(Z)V

    return-void
.end method

.method private blacklist getUiccCardApplication()Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .registers 3

    .line 4862
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 4863
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    iget-object p0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p0

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCardApplication(II)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object p0

    return-object p0

    .line 4866
    :cond_16
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    iget-object p0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p0

    const/4 v1, 0x2

    invoke-virtual {v0, p0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCardApplication(II)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object p0

    return-object p0
.end method

.method private blacklist handleCdmaSubscriptionSource(I)V
    .registers 2

    .line 0
    return-void
.end method

.method private blacklist handlePollStateInternalForRadioOffOrUnavailable(Z)V
    .registers 4

    .line 3519
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v1}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v0

    .line 3522
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1, p1}, Landroid/telephony/ServiceState;->setOutOfService(Z)V

    if-eqz v0, :cond_13

    .line 3525
    iget-object p1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {p1, v0}, Landroid/telephony/ServiceState;->addNetworkRegistrationInfo(Landroid/telephony/NetworkRegistrationInfo;)V

    .line 3527
    :cond_13
    iget-object p1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getSignalStrengthController()Lcom/android/internal/telephony/SignalStrengthController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/telephony/SignalStrengthController;->setSignalStrengthDefaultValues()V

    const/4 p1, 0x0

    .line 3528
    iput-object p1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mLastNitzData:Lcom/android/internal/telephony/NitzData;

    .line 3529
    iget-object p0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNitzState:Lcom/android/internal/telephony/NitzStateMachine;

    invoke-interface {p0}, Lcom/android/internal/telephony/NitzStateMachine;->handleNetworkUnavailable()V

    return-void
.end method

.method private greylist-max-r isGprsConsistent(II)Z
    .registers 3

    .line 0
    if-nez p2, :cond_7

    if-nez p1, :cond_5

    goto :goto_7

    :cond_5
    const/4 p0, 0x0

    return p0

    :cond_7
    :goto_7
    const/4 p0, 0x1

    return p0
.end method

.method private blacklist isHomeSid(I)Z
    .registers 6

    .line 1895
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mHomeSystemId:[I

    const/4 v1, 0x0

    if-eqz v0, :cond_14

    move v0, v1

    .line 1896
    :goto_6
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mHomeSystemId:[I

    array-length v3, v2

    if-ge v0, v3, :cond_14

    .line 1897
    aget v2, v2, v0

    if-ne p1, v2, :cond_11

    const/4 p0, 0x1

    return p0

    :cond_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_14
    return v1
.end method

.method private greylist-max-r isInHomeSidNid(II)Z
    .registers 8

    .line 4246
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->isSidsAllZeros()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    return v1

    .line 4249
    :cond_8
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mHomeSystemId:[I

    array-length v0, v0

    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mHomeNetworkId:[I

    array-length v2, v2

    if-eq v0, v2, :cond_11

    return v1

    :cond_11
    if-nez p1, :cond_14

    return v1

    :cond_14
    const/4 v0, 0x0

    move v2, v0

    .line 4253
    :goto_16
    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mHomeSystemId:[I

    array-length v4, v3

    if-ge v2, v4, :cond_34

    .line 4256
    aget v3, v3, v2

    if-ne v3, p1, :cond_31

    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mHomeNetworkId:[I

    aget v3, v3, v2

    if-eqz v3, :cond_30

    const v4, 0xffff

    if-eq v3, v4, :cond_30

    if-eqz p2, :cond_30

    if-eq p2, v4, :cond_30

    if-ne v3, p2, :cond_31

    :cond_30
    return v1

    :cond_31
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    :cond_34
    return v0
.end method

.method private blacklist isInNetwork(Landroid/os/BaseBundle;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    .line 5756
    invoke-virtual {p1, p3}, Landroid/os/BaseBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_12

    .line 5758
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_12

    const/4 p0, 0x1

    return p0

    :cond_12
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist isInternetPhysicalChannelConfig(Landroid/telephony/PhysicalChannelConfig;)Z
    .registers 7

    .line 2263
    invoke-virtual {p1}, Landroid/telephony/PhysicalChannelConfig;->getContextIds()[I

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_7
    if-ge v2, v0, :cond_1c

    aget v3, p1, v2

    .line 2264
    iget-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getDataNetworkController()Lcom/android/internal/telephony/data/DataNetworkController;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/internal/telephony/data/DataNetworkController;->isInternetNetwork(I)Z

    move-result v3

    if-eqz v3, :cond_19

    const/4 p0, 0x1

    return p0

    :cond_19
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_1c
    return v1
.end method

.method private greylist-max-r isInvalidOperatorNumeric(Ljava/lang/String;)Z
    .registers 3

    if-eqz p1, :cond_14

    .line 4286
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    const/4 v0, 0x5

    if-lt p0, v0, :cond_14

    const-string p0, "000"

    .line 4287
    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_12

    goto :goto_14

    :cond_12
    const/4 p0, 0x0

    return p0

    :cond_14
    :goto_14
    const/4 p0, 0x1

    return p0
.end method

.method private blacklist isNrPhysicalChannelConfig(Landroid/telephony/PhysicalChannelConfig;)Z
    .registers 2

    .line 2259
    invoke-virtual {p1}, Landroid/telephony/PhysicalChannelConfig;->getNetworkType()I

    move-result p0

    const/16 p1, 0x14

    if-ne p0, p1, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist isOperatorConsideredNonRoaming(Landroid/telephony/ServiceState;)Z
    .registers 7

    .line 4409
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object p1

    .line 4411
    iget-object p0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCarrierConfig:Landroid/os/PersistableBundle;

    const-string v0, "non_roaming_operator_string_array"

    invoke-virtual {p0, v0}, Landroid/os/PersistableBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 4414
    invoke-static {p0}, Lcom/android/internal/telephony/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2d

    if-nez p1, :cond_16

    goto :goto_2d

    .line 4418
    :cond_16
    array-length v0, p0

    move v2, v1

    :goto_18
    if-ge v2, v0, :cond_2d

    aget-object v3, p0, v2

    .line 4419
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2a

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2a

    const/4 p0, 0x1

    return p0

    :cond_2a
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    :cond_2d
    :goto_2d
    return v1
.end method

.method private blacklist isOperatorConsideredRoaming(Landroid/telephony/ServiceState;)Z
    .registers 7

    .line 4427
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object p1

    .line 4428
    iget-object p0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCarrierConfig:Landroid/os/PersistableBundle;

    const-string v0, "roaming_operator_string_array"

    invoke-virtual {p0, v0}, Landroid/os/PersistableBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 4430
    invoke-static {p0}, Lcom/android/internal/telephony/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2d

    if-nez p1, :cond_16

    goto :goto_2d

    .line 4434
    :cond_16
    array-length v0, p0

    move v2, v1

    :goto_18
    if-ge v2, v0, :cond_2d

    aget-object v3, p0, v2

    .line 4435
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2a

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2a

    const/4 p0, 0x1

    return p0

    :cond_2a
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    :cond_2d
    :goto_2d
    return v1
.end method

.method private blacklist isRoamIndForHomeSystem(I)Z
    .registers 7

    .line 2726
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCarrierConfig:Landroid/os/PersistableBundle;

    const-string v1, "cdma_enhanced_roaming_indicator_for_home_network_int_array"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    .line 2729
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isRoamIndForHomeSystem: homeRoamIndicators="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    const/4 v1, 0x0

    if-eqz v0, :cond_45

    .line 2734
    array-length v2, v0

    move v3, v1

    :goto_25
    if-ge v3, v2, :cond_30

    aget v4, v0, v3

    if-ne v4, p1, :cond_2d

    const/4 p0, 0x1

    return p0

    :cond_2d
    add-int/lit8 v3, v3, 0x1

    goto :goto_25

    .line 2740
    :cond_30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isRoamIndForHomeSystem: No match found against list for roamInd="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    return v1

    .line 2745
    :cond_45
    const-string p1, "isRoamIndForHomeSystem: No list found"

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    return v1
.end method

.method private blacklist isRoamingBetweenOperators(ZLandroid/telephony/ServiceState;)Z
    .registers 3

    if-eqz p1, :cond_a

    .line 2195
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/ServiceStateTracker;->isSameOperatorNameFromSimAndSS(Landroid/telephony/ServiceState;)Z

    move-result p0

    if-nez p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist isSameNamedOperators(Landroid/telephony/ServiceState;)Z
    .registers 3

    .line 4373
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ServiceStateTracker;->currentMccEqualsSimMcc(Landroid/telephony/ServiceState;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ServiceStateTracker;->isSameOperatorNameFromSimAndSS(Landroid/telephony/ServiceState;)Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist isSameOperatorNameFromSimAndSS(Landroid/telephony/ServiceState;)Z
    .registers 6

    .line 4350
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    .line 4351
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 4352
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getPhoneId()I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/telephony/TelephonyManager;->getSimOperatorNameForPhone(I)Ljava/lang/String;

    move-result-object p0

    .line 4356
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v0

    .line 4357
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorAlphaShort()Ljava/lang/String;

    move-result-object p1

    .line 4359
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_2e

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2e

    move v0, v3

    goto :goto_2f

    :cond_2e
    move v0, v2

    .line 4360
    :goto_2f
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3d

    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3d

    move p0, v3

    goto :goto_3e

    :cond_3d
    move p0, v2

    :goto_3e
    if-nez v0, :cond_44

    if-eqz p0, :cond_43

    goto :goto_44

    :cond_43
    return v2

    :cond_44
    :goto_44
    return v3
.end method

.method private blacklist isSimAbsent()Z
    .registers 3

    .line 1853
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    const/4 v1, 0x1

    if-nez v0, :cond_6

    return v1

    .line 1856
    :cond_6
    iget-object p0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object p0

    if-nez p0, :cond_13

    return v1

    .line 1860
    :cond_13
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccCard;->getCardState()Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    move-result-object p0

    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-ne p0, v0, :cond_1c

    return v1

    :cond_1c
    const/4 p0, 0x0

    return p0
.end method

.method private static blacklist isValidLteBandwidthKhz(I)Z
    .registers 2

    .line 0
    const/16 v0, 0x578

    if-eq p0, v0, :cond_1a

    const/16 v0, 0xbb8

    if-eq p0, v0, :cond_1a

    const/16 v0, 0x1388

    if-eq p0, v0, :cond_1a

    const/16 v0, 0x2710

    if-eq p0, v0, :cond_1a

    const/16 v0, 0x3a98

    if-eq p0, v0, :cond_1a

    const/16 v0, 0x4e20

    if-eq p0, v0, :cond_1a

    const/4 p0, 0x0

    return p0

    :cond_1a
    const/4 p0, 0x1

    return p0
.end method

.method private static blacklist isValidNrBandwidthKhz(I)Z
    .registers 1

    .line 0
    sparse-switch p0, :sswitch_data_8

    const/4 p0, 0x0

    return p0

    :sswitch_5
    const/4 p0, 0x1

    return p0

    nop

    :sswitch_data_8
    .sparse-switch
        0x1388 -> :sswitch_5
        0x2710 -> :sswitch_5
        0x3a98 -> :sswitch_5
        0x4e20 -> :sswitch_5
        0x61a8 -> :sswitch_5
        0x7530 -> :sswitch_5
        0x9c40 -> :sswitch_5
        0xc350 -> :sswitch_5
        0xea60 -> :sswitch_5
        0x11170 -> :sswitch_5
        0x13880 -> :sswitch_5
        0x15f90 -> :sswitch_5
        0x186a0 -> :sswitch_5
    .end sparse-switch
.end method

.method private synthetic blacklist lambda$new$0(IIII)V
    .registers 5

    .line 572
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ServiceStateTracker;->onCarrierConfigurationChanged(I)V

    return-void
.end method

.method private blacklist logAttachChange()V
    .registers 2

    .line 3350
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mAttachLog:Lcom/android/internal/telephony/LocalLog;

    iget-object p0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {p0}, Landroid/telephony/ServiceState;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist logPhoneTypeChange()V
    .registers 2

    .line 3354
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhoneTypeLog:Lcom/android/internal/telephony/LocalLog;

    iget-object p0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneType()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist logRatChange()V
    .registers 2

    .line 3358
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRatLog:Lcom/android/internal/telephony/LocalLog;

    iget-object p0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {p0}, Landroid/telephony/ServiceState;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist logRoamingChange()V
    .registers 2

    .line 3346
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRoamingLog:Lcom/android/internal/telephony/LocalLog;

    iget-object p0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {p0}, Landroid/telephony/ServiceState;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist notifyCarrierDisplayNameDataChanged()V
    .registers 4

    .line 2849
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 2852
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->getCarrierNameDisplayBitmask(Landroid/telephony/ServiceState;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCarrierDisplayNameData:Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData;

    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    .line 2854
    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    .line 2849
    const-string v1, "notifyCarrierDisplayNameDataChanged: changed sending intent, rule=%d, CarrierDisplayNameData=%s, subId=%d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2855
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCdnrLogs:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    .line 2856
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2859
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.telephony.action.SERVICE_PROVIDERS_UPDATED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2860
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCarrierDisplayNameData:Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData;->shouldShowSpn()Z

    move-result v1

    const-string v2, "android.telephony.extra.SHOW_SPN"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2861
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCarrierDisplayNameData:Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData;->getSpn()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.telephony.extra.SPN"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2862
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCarrierDisplayNameData:Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData;->getDataSpn()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.telephony.extra.DATA_SPN"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2863
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCarrierDisplayNameData:Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData;->shouldShowPlmn()Z

    move-result v1

    const-string v2, "android.telephony.extra.SHOW_PLMN"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2864
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCarrierDisplayNameData:Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData;->getPlmn()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.telephony.extra.PLMN"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2865
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    invoke-static {v0, v1}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    .line 2866
    iget-object p0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p0

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method private blacklist notifyCdmaSubscriptionInfoReady()V
    .registers 2

    .line 4872
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCdmaForSubscriptionInfoReadyRegistrants:Lcom/android/internal/telephony/RegistrantList;

    if-eqz v0, :cond_e

    .line 4873
    const-string v0, "CDMA_SUBSCRIPTION: call notifyRegistrants()"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4874
    iget-object p0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCdmaForSubscriptionInfoReadyRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants()V

    :cond_e
    return-void
.end method

.method private blacklist onCarrierConfigurationChanged(I)V
    .registers 3

    .line 5192
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    if-eq p1, v0, :cond_9

    return-void

    .line 5194
    :cond_9
    invoke-direct {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getCarrierConfig()Landroid/os/PersistableBundle;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCarrierConfig:Landroid/os/PersistableBundle;

    .line 5195
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "CarrierConfigChange "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCarrierConfig:Landroid/os/PersistableBundle;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 5198
    iget-object p1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mEriManager:Lcom/android/internal/telephony/cdma/EriManager;

    if-eqz p1, :cond_35

    .line 5199
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/EriManager;->loadEriFile()V

    .line 5200
    iget-object p1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCdnr:Lcom/android/internal/telephony/cdnr/CarrierDisplayNameResolver;

    invoke-direct {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getOperatorNameFromEri()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameResolver;->updateEfForEri(Ljava/lang/String;)V

    .line 5203
    :cond_35
    iget-object p1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCarrierConfig:Landroid/os/PersistableBundle;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ServiceStateTracker;->updateOperatorNamePattern(Landroid/os/PersistableBundle;)V

    .line 5204
    iget-object p1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCdnr:Lcom/android/internal/telephony/cdnr/CarrierDisplayNameResolver;

    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCarrierConfig:Landroid/os/PersistableBundle;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameResolver;->updateEfFromCarrierConfig(Landroid/os/PersistableBundle;)V

    .line 5205
    iget-object p1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifyCallForwardingIndicator()V

    const/4 p1, 0x0

    .line 5210
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ServiceStateTracker;->pollStateInternal(Z)V

    return-void
.end method

.method private blacklist onRestrictedStateChanged(Landroid/os/AsyncResult;)V
    .registers 7

    .line 4450
    new-instance v0, Lcom/android/internal/telephony/RestrictedState;

    invoke-direct {v0}, Lcom/android/internal/telephony/RestrictedState;-><init>()V

    .line 4452
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRestrictedStateChanged: E rs "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4454
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_14e

    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz p1, :cond_14e

    .line 4455
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    and-int/lit8 v1, p1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_36

    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_34

    goto :goto_36

    :cond_34
    move v1, v2

    goto :goto_37

    :cond_36
    :goto_36
    move v1, v3

    .line 4457
    :goto_37
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/RestrictedState;->setCsEmergencyRestricted(Z)V

    .line 4461
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v1, :cond_5d

    .line 4462
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getState()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    move-result-object v1

    sget-object v4, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_READY:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    if-ne v1, v4, :cond_5d

    and-int/lit8 v1, p1, 0x2

    if-nez v1, :cond_51

    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_4f

    goto :goto_51

    :cond_4f
    move v1, v2

    goto :goto_52

    :cond_51
    :goto_51
    move v1, v3

    .line 4463
    :goto_52
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/RestrictedState;->setCsNormalRestricted(Z)V

    and-int/lit8 p1, p1, 0x10

    if-eqz p1, :cond_5a

    move v2, v3

    .line 4466
    :cond_5a
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/RestrictedState;->setPsRestricted(Z)V

    .line 4469
    :cond_5d
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRestrictedStateChanged: new rs "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4471
    iget-object p1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    invoke-virtual {p1}, Lcom/android/internal/telephony/RestrictedState;->isPsRestricted()Z

    move-result p1

    if-nez p1, :cond_8a

    invoke-virtual {v0}, Lcom/android/internal/telephony/RestrictedState;->isPsRestricted()Z

    move-result p1

    if-eqz p1, :cond_8a

    .line 4472
    iget-object p1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPsRestrictEnabledRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p1}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants()V

    const/16 p1, 0x3e9

    .line 4473
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ServiceStateTracker;->setNotification(I)V

    goto :goto_a2

    .line 4474
    :cond_8a
    iget-object p1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    invoke-virtual {p1}, Lcom/android/internal/telephony/RestrictedState;->isPsRestricted()Z

    move-result p1

    if-eqz p1, :cond_a2

    invoke-virtual {v0}, Lcom/android/internal/telephony/RestrictedState;->isPsRestricted()Z

    move-result p1

    if-nez p1, :cond_a2

    .line 4475
    iget-object p1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPsRestrictDisabledRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p1}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants()V

    const/16 p1, 0x3ea

    .line 4476
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ServiceStateTracker;->setNotification(I)V

    .line 4484
    :cond_a2
    :goto_a2
    iget-object p1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    invoke-virtual {p1}, Lcom/android/internal/telephony/RestrictedState;->isCsRestricted()Z

    move-result p1

    const/16 v1, 0x3ed

    const/16 v2, 0x3ee

    const/16 v3, 0x3ec

    if-eqz p1, :cond_d1

    .line 4485
    invoke-virtual {v0}, Lcom/android/internal/telephony/RestrictedState;->isAnyCsRestricted()Z

    move-result p1

    if-nez p1, :cond_bb

    .line 4487
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->setNotification(I)V

    goto/16 :goto_14c

    .line 4488
    :cond_bb
    invoke-virtual {v0}, Lcom/android/internal/telephony/RestrictedState;->isCsNormalRestricted()Z

    move-result p1

    if-nez p1, :cond_c6

    .line 4490
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->setNotification(I)V

    goto/16 :goto_14c

    .line 4491
    :cond_c6
    invoke-virtual {v0}, Lcom/android/internal/telephony/RestrictedState;->isCsEmergencyRestricted()Z

    move-result p1

    if-nez p1, :cond_14c

    .line 4493
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->setNotification(I)V

    goto/16 :goto_14c

    .line 4495
    :cond_d1
    iget-object p1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    invoke-virtual {p1}, Lcom/android/internal/telephony/RestrictedState;->isCsEmergencyRestricted()Z

    move-result p1

    const/16 v4, 0x3eb

    if-eqz p1, :cond_101

    iget-object p1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    .line 4496
    invoke-virtual {p1}, Lcom/android/internal/telephony/RestrictedState;->isCsNormalRestricted()Z

    move-result p1

    if-nez p1, :cond_101

    .line 4497
    invoke-virtual {v0}, Lcom/android/internal/telephony/RestrictedState;->isAnyCsRestricted()Z

    move-result p1

    if-nez p1, :cond_ed

    .line 4499
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->setNotification(I)V

    goto :goto_14c

    .line 4500
    :cond_ed
    invoke-virtual {v0}, Lcom/android/internal/telephony/RestrictedState;->isCsRestricted()Z

    move-result p1

    if-eqz p1, :cond_f7

    .line 4502
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/ServiceStateTracker;->setNotification(I)V

    goto :goto_14c

    .line 4503
    :cond_f7
    invoke-virtual {v0}, Lcom/android/internal/telephony/RestrictedState;->isCsNormalRestricted()Z

    move-result p1

    if-eqz p1, :cond_14c

    .line 4505
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->setNotification(I)V

    goto :goto_14c

    .line 4507
    :cond_101
    iget-object p1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    invoke-virtual {p1}, Lcom/android/internal/telephony/RestrictedState;->isCsEmergencyRestricted()Z

    move-result p1

    if-nez p1, :cond_12f

    iget-object p1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    .line 4508
    invoke-virtual {p1}, Lcom/android/internal/telephony/RestrictedState;->isCsNormalRestricted()Z

    move-result p1

    if-eqz p1, :cond_12f

    .line 4509
    invoke-virtual {v0}, Lcom/android/internal/telephony/RestrictedState;->isAnyCsRestricted()Z

    move-result p1

    if-nez p1, :cond_11b

    .line 4511
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->setNotification(I)V

    goto :goto_14c

    .line 4512
    :cond_11b
    invoke-virtual {v0}, Lcom/android/internal/telephony/RestrictedState;->isCsRestricted()Z

    move-result p1

    if-eqz p1, :cond_125

    .line 4514
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/ServiceStateTracker;->setNotification(I)V

    goto :goto_14c

    .line 4515
    :cond_125
    invoke-virtual {v0}, Lcom/android/internal/telephony/RestrictedState;->isCsEmergencyRestricted()Z

    move-result p1

    if-eqz p1, :cond_14c

    .line 4517
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->setNotification(I)V

    goto :goto_14c

    .line 4520
    :cond_12f
    invoke-virtual {v0}, Lcom/android/internal/telephony/RestrictedState;->isCsRestricted()Z

    move-result p1

    if-eqz p1, :cond_139

    .line 4522
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/ServiceStateTracker;->setNotification(I)V

    goto :goto_14c

    .line 4523
    :cond_139
    invoke-virtual {v0}, Lcom/android/internal/telephony/RestrictedState;->isCsEmergencyRestricted()Z

    move-result p1

    if-eqz p1, :cond_143

    .line 4525
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->setNotification(I)V

    goto :goto_14c

    .line 4526
    :cond_143
    invoke-virtual {v0}, Lcom/android/internal/telephony/RestrictedState;->isCsNormalRestricted()Z

    move-result p1

    if-eqz p1, :cond_14c

    .line 4528
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->setNotification(I)V

    .line 4532
    :cond_14c
    :goto_14c
    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    .line 4534
    :cond_14e
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onRestrictedStateChanged: X rs "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist pollStateDone()V
    .registers 38

    move-object/from16 v0, p0

    .line 3562
    iget-object v1, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v1

    if-nez v1, :cond_d

    .line 3563
    invoke-virtual {v0}, Lcom/android/internal/telephony/ServiceStateTracker;->updateRoamingState()V

    .line 3566
    :cond_d
    sget-boolean v1, Lcom/android/internal/telephony/util/TelephonyUtils;->IS_DEBUGGABLE:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_20

    const-string v1, "telephony.test.forceRoaming"

    .line 3567
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 3568
    iget-object v1, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1, v3}, Landroid/telephony/ServiceState;->setRoaming(Z)V

    .line 3570
    :cond_20
    invoke-virtual {v0}, Lcom/android/internal/telephony/ServiceStateTracker;->useDataRegStateForDataOnlyDevices()V

    .line 3571
    invoke-direct {v0}, Lcom/android/internal/telephony/ServiceStateTracker;->processIwlanRegistrationInfo()V

    .line 3573
    iget-object v1, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mLastPhysicalChannelConfigList:Ljava/util/List;

    iget-object v4, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-direct {v0, v1, v4}, Lcom/android/internal/telephony/ServiceStateTracker;->updateNrFrequencyRangeFromPhysicalChannelConfigs(Ljava/util/List;Landroid/telephony/ServiceState;)Z

    .line 3574
    iget-object v1, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mLastPhysicalChannelConfigList:Ljava/util/List;

    iget-object v4, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-direct {v0, v1, v4}, Lcom/android/internal/telephony/ServiceStateTracker;->updateNrStateFromPhysicalChannelConfigs(Ljava/util/List;Landroid/telephony/ServiceState;)Z

    .line 3575
    invoke-direct {v0}, Lcom/android/internal/telephony/ServiceStateTracker;->updateNtnCapability()V

    .line 3577
    sget-boolean v1, Lcom/android/internal/telephony/util/TelephonyUtils;->IS_DEBUGGABLE:Z

    if-eqz v1, :cond_4e

    iget-object v1, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getTelephonyTester()Lcom/android/internal/telephony/TelephonyTester;

    move-result-object v1

    if-eqz v1, :cond_4e

    .line 3578
    iget-object v1, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getTelephonyTester()Lcom/android/internal/telephony/TelephonyTester;

    move-result-object v1

    iget-object v4, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1, v4}, Lcom/android/internal/telephony/TelephonyTester;->overrideServiceState(Landroid/telephony/ServiceState;)V

    .line 3581
    :cond_4e
    iget-object v1, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    const/4 v4, 0x2

    invoke-virtual {v1, v4, v3}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v1

    .line 3583
    iget-object v5, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/NetworkRegistrationInfo;->getCellIdentity()Landroid/telephony/CellIdentity;

    move-result-object v1

    invoke-direct {v0, v5, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->setPhyCellInfoFromCellIdentity(Landroid/telephony/ServiceState;Landroid/telephony/CellIdentity;)V

    .line 3586
    invoke-direct {v0}, Lcom/android/internal/telephony/ServiceStateTracker;->getSatelliteModemStateListener()Lcom/android/internal/telephony/ServiceStateTracker$SatelliteModemStateListener;

    move-result-object v1

    if-eqz v1, :cond_85

    .line 3589
    invoke-virtual {v1}, Lcom/android/internal/telephony/ServiceStateTracker$SatelliteModemStateListener;->needToUpdateSatelliteCarrierDisplay()Z

    move-result v5

    if-eqz v5, :cond_86

    .line 3591
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Poll ServiceState done : hasSatelliteConnectionChanged="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3593
    invoke-virtual {v1}, Lcom/android/internal/telephony/ServiceStateTracker$SatelliteModemStateListener;->doneForUpdateSatelliteCarrierDisplay()V

    .line 3594
    invoke-direct {v0}, Lcom/android/internal/telephony/ServiceStateTracker;->updateSatelliteDisplayOverride()V

    goto :goto_86

    :cond_85
    move v5, v2

    .line 3599
    :cond_86
    :goto_86
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Poll ServiceState done: oldSS="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3600
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Poll ServiceState done: newSS="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3601
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Poll ServiceState done: oldMaxDataCalls="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mMaxDataCalls:I

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " mNewMaxDataCalls="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewMaxDataCalls:I

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " oldReasonDataDenied="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mReasonDataDenied:I

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " mNewReasonDataDenied="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewReasonDataDenied:I

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3607
    iget-object v1, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 3608
    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    if-eqz v1, :cond_f8

    iget-object v1, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    .line 3609
    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    if-nez v1, :cond_f8

    move v1, v3

    goto :goto_f9

    :cond_f8
    move v1, v2

    .line 3611
    :goto_f9
    iget-object v6, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 3612
    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getState()I

    move-result v6

    if-nez v6, :cond_10b

    iget-object v6, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    .line 3613
    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getState()I

    move-result v6

    if-eqz v6, :cond_10b

    move v6, v3

    goto :goto_10c

    :cond_10b
    move v6, v2

    .line 3615
    :goto_10c
    iget-object v7, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 3616
    invoke-virtual {v7}, Landroid/telephony/ServiceState;->getState()I

    move-result v7

    const/4 v8, 0x3

    if-eq v7, v8, :cond_11f

    iget-object v7, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    .line 3617
    invoke-virtual {v7}, Landroid/telephony/ServiceState;->getState()I

    move-result v7

    if-ne v7, v8, :cond_11f

    move v7, v3

    goto :goto_120

    :cond_11f
    move v7, v2

    .line 3618
    :goto_120
    iget-object v9, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 3619
    invoke-virtual {v9}, Landroid/telephony/ServiceState;->getState()I

    move-result v9

    if-ne v9, v8, :cond_132

    iget-object v9, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    .line 3620
    invoke-virtual {v9}, Landroid/telephony/ServiceState;->getState()I

    move-result v9

    if-eq v9, v8, :cond_132

    move v8, v3

    goto :goto_133

    :cond_132
    move v8, v2

    .line 3622
    :goto_133
    new-instance v9, Landroid/util/SparseBooleanArray;

    invoke-direct {v9}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 3623
    new-instance v10, Landroid/util/SparseBooleanArray;

    invoke-direct {v10}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 3624
    new-instance v11, Landroid/util/SparseBooleanArray;

    invoke-direct {v11}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 3625
    new-instance v12, Landroid/util/SparseBooleanArray;

    invoke-direct {v12}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 3628
    iget-object v13, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 3629
    invoke-virtual {v13}, Landroid/telephony/ServiceState;->getOperatorAlphaLongRaw()Ljava/lang/String;

    move-result-object v13

    iget-object v14, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v14}, Landroid/telephony/ServiceState;->getOperatorAlphaLongRaw()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_16e

    iget-object v13, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 3630
    invoke-virtual {v13}, Landroid/telephony/ServiceState;->getOperatorAlphaShortRaw()Ljava/lang/String;

    move-result-object v13

    iget-object v14, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    .line 3631
    invoke-virtual {v14}, Landroid/telephony/ServiceState;->getOperatorAlphaShortRaw()Ljava/lang/String;

    move-result-object v14

    .line 3630
    invoke-static {v13, v14}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_16c

    goto :goto_16e

    :cond_16c
    move v13, v2

    goto :goto_16f

    :cond_16e
    :goto_16e
    move v13, v3

    .line 3633
    :goto_16f
    iget-object v14, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mAccessNetworksManager:Lcom/android/internal/telephony/data/AccessNetworksManager;

    invoke-virtual {v14}, Lcom/android/internal/telephony/data/AccessNetworksManager;->getAvailableTransports()[I

    move-result-object v14

    array-length v15, v14

    move v3, v2

    move/from16 v16, v3

    move/from16 v17, v16

    :goto_17b
    if-ge v3, v15, :cond_22b

    aget v2, v14, v3

    move/from16 v19, v3

    .line 3634
    iget-object v3, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v3, v4, v2}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v3

    move-object/from16 v20, v3

    .line 3636
    iget-object v3, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v3, v4, v2}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v3

    if-eqz v20, :cond_199

    .line 3639
    invoke-virtual/range {v20 .. v20}, Landroid/telephony/NetworkRegistrationInfo;->isInService()Z

    move-result v21

    if-eqz v21, :cond_199

    if-eqz v7, :cond_1a3

    :cond_199
    if-eqz v3, :cond_1a3

    .line 3640
    invoke-virtual {v3}, Landroid/telephony/NetworkRegistrationInfo;->isInService()Z

    move-result v21

    if-eqz v21, :cond_1a3

    const/4 v4, 0x1

    goto :goto_1a4

    :cond_1a3
    const/4 v4, 0x0

    .line 3641
    :goto_1a4
    invoke-virtual {v9, v2, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    if-eqz v20, :cond_1b9

    .line 3643
    invoke-virtual/range {v20 .. v20}, Landroid/telephony/NetworkRegistrationInfo;->isInService()Z

    move-result v4

    if-eqz v4, :cond_1b9

    if-eqz v3, :cond_1b7

    .line 3644
    invoke-virtual {v3}, Landroid/telephony/NetworkRegistrationInfo;->isInService()Z

    move-result v4

    if-nez v4, :cond_1b9

    :cond_1b7
    const/4 v4, 0x1

    goto :goto_1ba

    :cond_1b9
    const/4 v4, 0x0

    .line 3645
    :goto_1ba
    invoke-virtual {v10, v2, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    if-eqz v20, :cond_1c4

    .line 3647
    invoke-virtual/range {v20 .. v20}, Landroid/telephony/NetworkRegistrationInfo;->getAccessNetworkTechnology()I

    move-result v4

    goto :goto_1c5

    :cond_1c4
    const/4 v4, 0x0

    :goto_1c5
    if-eqz v3, :cond_1d2

    .line 3649
    invoke-virtual {v3}, Landroid/telephony/NetworkRegistrationInfo;->getAccessNetworkTechnology()I

    move-result v22

    move/from16 v36, v22

    move-object/from16 v22, v3

    move/from16 v3, v36

    goto :goto_1d5

    :cond_1d2
    move-object/from16 v22, v3

    const/4 v3, 0x0

    :goto_1d5
    if-eqz v20, :cond_1e2

    .line 3652
    invoke-virtual/range {v20 .. v20}, Landroid/telephony/NetworkRegistrationInfo;->isUsingCarrierAggregation()Z

    move-result v23

    move/from16 v36, v23

    move/from16 v23, v5

    move/from16 v5, v36

    goto :goto_1e5

    :cond_1e2
    move/from16 v23, v5

    const/4 v5, 0x0

    :goto_1e5
    if-eqz v22, :cond_1f2

    .line 3653
    invoke-virtual/range {v22 .. v22}, Landroid/telephony/NetworkRegistrationInfo;->isUsingCarrierAggregation()Z

    move-result v24

    move/from16 v36, v24

    move/from16 v24, v8

    move/from16 v8, v36

    goto :goto_1f5

    :cond_1f2
    move/from16 v24, v8

    const/4 v8, 0x0

    :goto_1f5
    if-ne v4, v3, :cond_1fe

    if-ne v5, v8, :cond_1fe

    if-eqz v13, :cond_1fc

    goto :goto_1fe

    :cond_1fc
    const/4 v5, 0x0

    goto :goto_1ff

    :cond_1fe
    :goto_1fe
    const/4 v5, 0x1

    .line 3657
    :goto_1ff
    invoke-virtual {v11, v2, v5}, Landroid/util/SparseBooleanArray;->put(IZ)V

    if-eq v4, v3, :cond_206

    const/16 v16, 0x1

    :cond_206
    if-eqz v20, :cond_20d

    .line 3663
    invoke-virtual/range {v20 .. v20}, Landroid/telephony/NetworkRegistrationInfo;->getNetworkRegistrationState()I

    move-result v3

    goto :goto_20e

    :cond_20d
    const/4 v3, 0x4

    :goto_20e
    if-eqz v22, :cond_215

    .line 3665
    invoke-virtual/range {v22 .. v22}, Landroid/telephony/NetworkRegistrationInfo;->getNetworkRegistrationState()I

    move-result v4

    goto :goto_216

    :cond_215
    const/4 v4, 0x4

    :goto_216
    if-eq v3, v4, :cond_21a

    const/4 v5, 0x1

    goto :goto_21b

    :cond_21a
    const/4 v5, 0x0

    .line 3667
    :goto_21b
    invoke-virtual {v12, v2, v5}, Landroid/util/SparseBooleanArray;->put(IZ)V

    if-eq v3, v4, :cond_222

    const/16 v17, 0x1

    :cond_222
    add-int/lit8 v3, v19, 0x1

    move/from16 v5, v23

    move/from16 v8, v24

    const/4 v4, 0x2

    goto/16 :goto_17b

    :cond_22b
    move/from16 v23, v5

    move/from16 v24, v8

    if-nez v16, :cond_241

    .line 3675
    iget-object v2, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 3676
    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v2

    iget-object v3, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v3

    if-eq v2, v3, :cond_241

    const/4 v2, 0x1

    goto :goto_242

    :cond_241
    const/4 v2, 0x0

    .line 3678
    :goto_242
    iget-object v3, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 3679
    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    iget-object v4, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getState()I

    move-result v4

    if-eq v3, v4, :cond_252

    const/4 v3, 0x1

    goto :goto_253

    :cond_252
    const/4 v3, 0x0

    .line 3681
    :goto_253
    iget-object v4, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 3682
    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getNrFrequencyRange()I

    move-result v4

    iget-object v5, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getNrFrequencyRange()I

    move-result v5

    if-eq v4, v5, :cond_263

    const/4 v4, 0x1

    goto :goto_264

    :cond_263
    const/4 v4, 0x0

    .line 3684
    :goto_264
    iget-object v5, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getNrState()I

    move-result v5

    iget-object v8, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v8}, Landroid/telephony/ServiceState;->getNrState()I

    move-result v8

    if-eq v5, v8, :cond_274

    const/4 v5, 0x1

    goto :goto_275

    :cond_274
    const/4 v5, 0x0

    .line 3686
    :goto_275
    iget-object v8, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-static {v8}, Lcom/android/internal/telephony/ServiceStateTracker;->getPrioritizedCellIdentities(Landroid/telephony/ServiceState;)Ljava/util/List;

    move-result-object v8

    .line 3688
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_283

    const/4 v15, 0x0

    goto :goto_28a

    :cond_283
    const/4 v13, 0x0

    .line 3689
    invoke-interface {v8, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/telephony/CellIdentity;

    .line 3691
    :goto_28a
    iget-object v13, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mCellIdentity:Landroid/telephony/CellIdentity;

    if-nez v13, :cond_294

    if-eqz v15, :cond_292

    :goto_290
    const/4 v13, 0x1

    goto :goto_29b

    :cond_292
    const/4 v13, 0x0

    goto :goto_29b

    .line 3692
    :cond_294
    invoke-virtual {v13, v15}, Landroid/telephony/CellIdentity;->isSameCell(Landroid/telephony/CellIdentity;)Z

    move-result v13

    if-nez v13, :cond_292

    goto :goto_290

    .line 3695
    :goto_29b
    iget-object v14, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move/from16 v20, v3

    const/4 v3, 0x1

    invoke-virtual {v14, v3}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfoListForTransportType(I)Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v14, 0x0

    :goto_2a9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_2bc

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/telephony/NetworkRegistrationInfo;

    .line 3697
    invoke-virtual/range {v22 .. v22}, Landroid/telephony/NetworkRegistrationInfo;->isRegistered()Z

    move-result v22

    or-int v14, v14, v22

    goto :goto_2a9

    :cond_2bc
    if-eqz v14, :cond_2cc

    if-nez v13, :cond_2cc

    .line 3702
    iget-object v3, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mRatRatcheter:Lcom/android/internal/telephony/RatRatcheter;

    iget-object v14, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v22, v8

    iget-object v8, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v3, v14, v8}, Lcom/android/internal/telephony/RatRatcheter;->ratchet(Landroid/telephony/ServiceState;Landroid/telephony/ServiceState;)V

    goto :goto_2ce

    :cond_2cc
    move-object/from16 v22, v8

    .line 3705
    :goto_2ce
    iget-object v3, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 3706
    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v3

    iget-object v8, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v8}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v8

    if-eq v3, v8, :cond_2de

    const/4 v3, 0x1

    goto :goto_2df

    :cond_2de
    const/4 v3, 0x0

    .line 3708
    :goto_2df
    iget-object v8, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    iget-object v14, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v8, v14}, Landroid/telephony/ServiceState;->equals(Ljava/lang/Object;)Z

    move-result v8

    xor-int/lit8 v14, v8, 0x1

    move/from16 v25, v8

    .line 3710
    iget-object v8, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v8}, Landroid/telephony/ServiceState;->getVoiceRoaming()Z

    move-result v8

    if-nez v8, :cond_2ff

    iget-object v8, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v8}, Landroid/telephony/ServiceState;->getVoiceRoaming()Z

    move-result v8

    if-eqz v8, :cond_2ff

    const/4 v8, 0x1

    :goto_2fc
    move-object/from16 v26, v15

    goto :goto_301

    :cond_2ff
    const/4 v8, 0x0

    goto :goto_2fc

    .line 3712
    :goto_301
    iget-object v15, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v15}, Landroid/telephony/ServiceState;->getVoiceRoaming()Z

    move-result v15

    if-eqz v15, :cond_315

    iget-object v15, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v15}, Landroid/telephony/ServiceState;->getVoiceRoaming()Z

    move-result v15

    if-nez v15, :cond_315

    const/4 v15, 0x1

    :goto_312
    move/from16 v27, v7

    goto :goto_317

    :cond_315
    const/4 v15, 0x0

    goto :goto_312

    .line 3714
    :goto_317
    iget-object v7, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v7}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v7

    if-nez v7, :cond_32b

    iget-object v7, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v7}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v7

    if-eqz v7, :cond_32b

    const/4 v7, 0x1

    :goto_328
    move/from16 v28, v5

    goto :goto_32d

    :cond_32b
    const/4 v7, 0x0

    goto :goto_328

    .line 3716
    :goto_32d
    iget-object v5, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v5

    if-eqz v5, :cond_341

    iget-object v5, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v5

    if-nez v5, :cond_341

    const/4 v5, 0x1

    :goto_33e
    move/from16 v29, v4

    goto :goto_343

    :cond_341
    const/4 v5, 0x0

    goto :goto_33e

    .line 3718
    :goto_343
    iget v4, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mRejectCode:I

    move/from16 v30, v13

    iget v13, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewRejectCode:I

    if-eq v4, v13, :cond_34d

    const/4 v4, 0x1

    goto :goto_34e

    :cond_34d
    const/4 v4, 0x0

    .line 3720
    :goto_34e
    iget-object v13, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v13}, Landroid/telephony/ServiceState;->getCssIndicator()I

    move-result v13

    move/from16 v31, v4

    iget-object v4, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getCssIndicator()I

    move-result v4

    if-eq v13, v4, :cond_360

    const/4 v4, 0x1

    goto :goto_361

    :cond_360
    const/4 v4, 0x0

    .line 3725
    :goto_361
    iget-object v13, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v13}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeCdmaLte()Z

    move-result v13

    if-eqz v13, :cond_3bb

    .line 3726
    iget-object v13, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-static {v13}, Lcom/android/internal/telephony/ServiceStateTracker;->getRilDataRadioTechnologyForWwan(Landroid/telephony/ServiceState;)I

    move-result v13

    move/from16 v32, v4

    .line 3727
    iget-object v4, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-static {v4}, Lcom/android/internal/telephony/ServiceStateTracker;->getRilDataRadioTechnologyForWwan(Landroid/telephony/ServiceState;)I

    move-result v4

    move/from16 v33, v5

    .line 3728
    iget-object v5, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getDataRegistrationState()I

    move-result v5

    move/from16 v34, v5

    const/16 v5, 0xd

    if-nez v34, :cond_398

    .line 3729
    invoke-static {v13}, Landroid/telephony/ServiceState;->isPsOnlyTech(I)Z

    move-result v34

    if-eqz v34, :cond_38d

    if-eq v4, v5, :cond_395

    :cond_38d
    if-ne v13, v5, :cond_398

    .line 3732
    invoke-static {v4}, Landroid/telephony/ServiceState;->isPsOnlyTech(I)Z

    move-result v34

    if-eqz v34, :cond_398

    :cond_395
    const/16 v34, 0x1

    goto :goto_39a

    :cond_398
    const/16 v34, 0x0

    .line 3734
    :goto_39a
    invoke-static {v4}, Landroid/telephony/ServiceState;->isPsOnlyTech(I)Z

    move-result v35

    if-nez v35, :cond_3a2

    if-ne v4, v5, :cond_3ad

    .line 3736
    :cond_3a2
    invoke-static {v13}, Landroid/telephony/ServiceState;->isPsOnlyTech(I)Z

    move-result v35

    if-nez v35, :cond_3ad

    if-eq v13, v5, :cond_3ad

    const/4 v5, 0x1

    :goto_3ab
    const/4 v13, 0x4

    goto :goto_3af

    :cond_3ad
    const/4 v5, 0x0

    goto :goto_3ab

    :goto_3af
    if-lt v4, v13, :cond_3b7

    const/16 v13, 0x8

    if-gt v4, v13, :cond_3b7

    const/4 v4, 0x1

    goto :goto_3b8

    :cond_3b7
    const/4 v4, 0x0

    :goto_3b8
    move/from16 v13, v34

    goto :goto_3c2

    :cond_3bb
    move/from16 v32, v4

    move/from16 v33, v5

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v13, 0x0

    .line 3744
    :goto_3c2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v18, v4

    const-string v4, "pollStateDone: hasRegistered = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " hasDeregistered = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " hasDataAttached = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " hasDataDetached = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " hasDataRegStateChanged = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " hasRilVoiceRadioTechnologyChanged = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " hasRilDataRadioTechnologyChanged = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " hasDataTransportPreferenceChanged = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " hasChanged = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " hasVoiceRoamingOn = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " hasVoiceRoamingOff = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " hasDataRoamingOn ="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " hasDataRoamingOff = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v4, v33

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v14, " hasLocationChanged = "

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v14, v30

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move/from16 v30, v1

    const-string v1, " has4gHandoff = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " hasMultiApnSupport = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " hasLostMultiApnSupport = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " hasCssIndicatorChanged = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " hasNrFrequencyRangeChanged = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v5, v29

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " hasNrStateChanged = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " hasAirplaneModeOnlChanged = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, p0

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    if-nez v20, :cond_498

    if-eqz v17, :cond_48f

    goto :goto_498

    :cond_48f
    move/from16 v17, v2

    move/from16 v18, v3

    move/from16 v33, v4

    move/from16 v29, v5

    goto :goto_4df

    .line 3770
    :cond_498
    :goto_498
    iget-object v0, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-eqz v0, :cond_4a6

    const v0, 0xc3c2

    :goto_4a3
    move/from16 v17, v2

    goto :goto_4aa

    :cond_4a6
    const v0, 0xc3c4

    goto :goto_4a3

    .line 3771
    :goto_4aa
    iget-object v2, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 3772
    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move/from16 v18, v3

    iget-object v3, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getDataRegistrationState()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move/from16 v33, v4

    iget-object v4, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    .line 3773
    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getState()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move/from16 v29, v5

    iget-object v5, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getDataRegistrationState()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v2, v3, v4, v5}, [Ljava/lang/Object;

    move-result-object v2

    .line 3770
    invoke-static {v0, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 3776
    :goto_4df
    iget-object v0, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-eqz v0, :cond_553

    if-eqz v18, :cond_547

    .line 3781
    invoke-static/range {v26 .. v26}, Lcom/android/internal/telephony/ServiceStateTracker;->getCidFromCellIdentity(Landroid/telephony/CellIdentity;)J

    move-result-wide v2

    .line 3786
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-object v4, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 3787
    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    .line 3788
    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v0, v4, v5}, [Ljava/lang/Object;

    move-result-object v0

    const v4, 0xc3cb

    .line 3786
    invoke-static {v4, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 3790
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RAT switched "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 3792
    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v4

    .line 3791
    invoke-static {v4}, Landroid/telephony/ServiceState;->rilRadioTechnologyToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " -> "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    .line 3795
    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v4

    .line 3794
    invoke-static {v4}, Landroid/telephony/ServiceState;->rilRadioTechnologyToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " at cell "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3790
    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3799
    :cond_547
    iget v0, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mNewReasonDataDenied:I

    iput v0, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mReasonDataDenied:I

    .line 3800
    iget v0, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mNewMaxDataCalls:I

    iput v0, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mMaxDataCalls:I

    .line 3801
    iget v0, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mNewRejectCode:I

    iput v0, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mRejectCode:I

    .line 3804
    :cond_553
    iget-object v0, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    iget-object v2, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_562

    .line 3805
    iget-object v0, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mServiceStateChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v0}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants()V

    .line 3808
    :cond_562
    new-instance v0, Landroid/telephony/ServiceState;

    iget-object v2, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/telephony/ServiceState;-><init>(Landroid/telephony/ServiceState;)V

    .line 3809
    new-instance v2, Landroid/telephony/ServiceState;

    iget-object v3, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-direct {v2, v3}, Landroid/telephony/ServiceState;-><init>(Landroid/telephony/ServiceState;)V

    iput-object v2, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 3811
    iget-object v2, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/telephony/ServiceState;->setOutOfService(Z)V

    move-object/from16 v2, v26

    .line 3813
    iput-object v2, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mCellIdentity:Landroid/telephony/CellIdentity;

    .line 3814
    iget-object v2, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v3}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v2

    .line 3815
    invoke-virtual {v2}, Landroid/telephony/NetworkRegistrationInfo;->isNetworkRegistered()Z

    move-result v2

    .line 3816
    iget-object v4, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    const/4 v5, 0x2

    invoke-virtual {v4, v5, v3}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v4

    .line 3817
    invoke-virtual {v4}, Landroid/telephony/NetworkRegistrationInfo;->isNetworkRegistered()Z

    move-result v3

    const/16 v4, 0x3f

    if-nez v2, :cond_59c

    if-eqz v3, :cond_5a3

    .line 3819
    :cond_59c
    iget-object v2, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mCellIdentity:Landroid/telephony/CellIdentity;

    iput-object v2, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mLastKnownCellIdentity:Landroid/telephony/CellIdentity;

    .line 3820
    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    :cond_5a3
    if-eqz v6, :cond_5b8

    .line 3823
    invoke-virtual {v1, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_5b8

    .line 3824
    sget-object v2, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    move v3, v6

    const-wide/16 v5, 0x1

    .line 3825
    invoke-virtual {v2, v5, v6}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v5

    .line 3824
    invoke-virtual {v1, v4, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_5b9

    :cond_5b8
    move v3, v6

    .line 3828
    :goto_5b9
    iget-object v2, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mCellIdentity:Landroid/telephony/CellIdentity;

    invoke-static {v2}, Lcom/android/internal/telephony/ServiceStateTracker;->getAreaCodeFromCellIdentity(Landroid/telephony/CellIdentity;)I

    move-result v2

    .line 3829
    iget v4, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mLastKnownAreaCode:I

    if-eq v2, v4, :cond_5cf

    const v4, 0x7fffffff

    if-eq v2, v4, :cond_5cf

    .line 3830
    iput v2, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mLastKnownAreaCode:I

    .line 3831
    iget-object v2, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mAreaCodeChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v2}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants()V

    :cond_5cf
    if-eqz v18, :cond_5d4

    .line 3835
    invoke-virtual {v1}, Lcom/android/internal/telephony/ServiceStateTracker;->updatePhoneObject()V

    .line 3838
    :cond_5d4
    iget-object v2, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v4, "phone"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    if-eqz v16, :cond_608

    .line 3841
    iget-object v4, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v4

    iget-object v5, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v5

    invoke-virtual {v2, v4, v5}, Landroid/telephony/TelephonyManager;->setDataNetworkTypeForPhone(II)V

    .line 3842
    iget-object v4, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 3844
    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v4

    .line 3843
    invoke-static {v4}, Landroid/telephony/ServiceState;->rilRadioTechnologyToNetworkType(I)I

    move-result v4

    iget-object v5, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    .line 3844
    invoke-virtual {v5}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v5

    const/16 v6, 0x4c

    .line 3842
    invoke-static {v6, v4, v5}, Lcom/android/internal/telephony/TelephonyStatsLog;->write(III)V

    :cond_608
    if-eqz v30, :cond_614

    .line 3848
    iget-object v4, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mNetworkAttachedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v4}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants()V

    .line 3849
    iget-object v4, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mNitzState:Lcom/android/internal/telephony/NitzStateMachine;

    invoke-interface {v4}, Lcom/android/internal/telephony/NitzStateMachine;->handleNetworkAvailable()V

    :cond_614
    if-eqz v3, :cond_620

    .line 3853
    iget-object v4, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mNetworkDetachedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v4}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants()V

    .line 3854
    iget-object v4, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mNitzState:Lcom/android/internal/telephony/NitzStateMachine;

    invoke-interface {v4}, Lcom/android/internal/telephony/NitzStateMachine;->handleNetworkUnavailable()V

    :cond_620
    if-eqz v32, :cond_627

    .line 3858
    iget-object v4, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mCssIndicatorChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v4}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants()V

    :cond_627
    if-eqz v31, :cond_62e

    const/16 v4, 0x7d1

    .line 3862
    invoke-virtual {v1, v4}, Lcom/android/internal/telephony/ServiceStateTracker;->setNotification(I)V

    .line 3865
    :cond_62e
    iget-object v4, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/GsmCdmaPhone;->getCdmaEriText()Ljava/lang/String;

    move-result-object v4

    .line 3866
    iget-object v5, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mEriText:Ljava/lang/String;

    invoke-static {v5, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    .line 3867
    iput-object v4, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mEriText:Ljava/lang/String;

    if-eqz v25, :cond_64a

    .line 3871
    iget-object v4, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v4

    if-nez v4, :cond_648

    if-eqz v5, :cond_64a

    :cond_648
    if-eqz v23, :cond_64d

    .line 3873
    :cond_64a
    invoke-virtual {v1}, Lcom/android/internal/telephony/ServiceStateTracker;->updateCarrierDisplayName()V

    :cond_64d
    if-nez v25, :cond_78d

    .line 3877
    iget-object v4, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v4

    iget-object v5, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getOperatorAlpha()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/telephony/TelephonyManager;->setNetworkOperatorNameForPhone(ILjava/lang/String;)V

    .line 3878
    iget-object v4, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v4

    .line 3880
    iget-object v5, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v5

    if-nez v5, :cond_67c

    .line 3882
    invoke-direct {v1, v4}, Lcom/android/internal/telephony/ServiceStateTracker;->isInvalidOperatorNumeric(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_67c

    .line 3883
    iget-object v5, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getCdmaSystemId()I

    move-result v5

    .line 3884
    invoke-direct {v1, v4, v5}, Lcom/android/internal/telephony/ServiceStateTracker;->fixUnknownMcc(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 3888
    :cond_67c
    iget-object v5, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v5

    invoke-virtual {v2, v5, v4}, Landroid/telephony/TelephonyManager;->setNetworkOperatorNumericForPhone(ILjava/lang/String;)V

    .line 3900
    iget-object v5, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getDataNetworkType()I

    move-result v5

    const/16 v6, 0x12

    if-eq v5, v6, :cond_698

    if-nez v5, :cond_699

    .line 3903
    invoke-direct {v1}, Lcom/android/internal/telephony/ServiceStateTracker;->getImsRegistrationTech()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_699

    :cond_698
    const/4 v4, 0x0

    .line 3911
    :cond_699
    invoke-direct {v1, v4}, Lcom/android/internal/telephony/ServiceStateTracker;->isInvalidOperatorNumeric(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6bd

    .line 3912
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_6a3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6bd

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/CellIdentity;

    .line 3913
    invoke-virtual {v6}, Landroid/telephony/CellIdentity;->getPlmn()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_6a3

    .line 3914
    invoke-virtual {v6}, Landroid/telephony/CellIdentity;->getPlmn()Ljava/lang/String;

    move-result-object v4

    .line 3920
    :cond_6bd
    invoke-direct {v1, v4}, Lcom/android/internal/telephony/ServiceStateTracker;->isInvalidOperatorNumeric(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6e4

    .line 3921
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "localeOperator "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " is invalid"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3925
    iget-object v4, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mLocaleTracker:Lcom/android/internal/telephony/LocaleTracker;

    const-string v5, ""

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/LocaleTracker;->updateOperatorNumeric(Ljava/lang/String;)V

    goto :goto_6f4

    .line 3927
    :cond_6e4
    iget-object v5, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v5

    if-nez v5, :cond_6ef

    .line 3928
    invoke-virtual {v1, v4}, Lcom/android/internal/telephony/ServiceStateTracker;->setOperatorIdd(Ljava/lang/String;)V

    .line 3930
    :cond_6ef
    iget-object v5, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mLocaleTracker:Lcom/android/internal/telephony/LocaleTracker;

    invoke-virtual {v5, v4}, Lcom/android/internal/telephony/LocaleTracker;->updateOperatorNumeric(Ljava/lang/String;)V

    .line 3933
    :goto_6f4
    iget-object v4, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v4

    .line 3934
    iget-object v5, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v5

    if-eqz v5, :cond_709

    iget-object v5, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getVoiceRoaming()Z

    move-result v5

    goto :goto_71d

    .line 3935
    :cond_709
    iget-object v5, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getVoiceRoaming()Z

    move-result v5

    if-nez v5, :cond_71c

    iget-object v5, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v5

    if-eqz v5, :cond_71a

    goto :goto_71c

    :cond_71a
    const/4 v5, 0x0

    goto :goto_71d

    :cond_71c
    :goto_71c
    const/4 v5, 0x1

    .line 3933
    :goto_71d
    invoke-virtual {v2, v4, v5}, Landroid/telephony/TelephonyManager;->setNetworkRoamingForPhone(IZ)V

    .line 3937
    iget-object v2, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->setRoamingType(Landroid/telephony/ServiceState;)V

    .line 3938
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Broadcasting ServiceState : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3941
    iget-object v2, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/telephony/ServiceState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_750

    .line 3942
    iget-object v0, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifyServiceStateChanged(Landroid/telephony/ServiceState;)V

    .line 3945
    :cond_750
    iget-object v0, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->updateServiceStateToDb(Landroid/telephony/ServiceState;)V

    .line 3947
    invoke-static {}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->getInstance()Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    move-result-object v0

    iget-object v2, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    iget-object v4, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0, v2, v4}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeServiceStateChanged(ILandroid/telephony/ServiceState;)V

    .line 3948
    iget-object v0, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getVoiceCallSessionStats()Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;

    move-result-object v0

    iget-object v2, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->onServiceStateChanged(Landroid/telephony/ServiceState;)V

    .line 3949
    iget-object v0, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/imsphone/ImsPhone;

    if-eqz v0, :cond_786

    .line 3951
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getImsStats()Lcom/android/internal/telephony/metrics/ImsStats;

    move-result-object v0

    iget-object v2, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/metrics/ImsStats;->onServiceStateChanged(Landroid/telephony/ServiceState;)V

    .line 3953
    :cond_786
    iget-object v0, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mServiceStateStats:Lcom/android/internal/telephony/metrics/ServiceStateStats;

    iget-object v2, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/metrics/ServiceStateStats;->onServiceStateChanged(Landroid/telephony/ServiceState;)V

    :cond_78d
    if-nez v30, :cond_794

    if-eqz v3, :cond_792

    goto :goto_794

    :cond_792
    const/4 v0, 0x0

    goto :goto_795

    :cond_794
    :goto_794
    const/4 v0, 0x1

    :goto_795
    if-eqz v13, :cond_7a5

    .line 3964
    iget-object v0, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mAttachedRegistrants:Landroid/util/SparseArray;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RegistrantList;

    .line 3965
    invoke-virtual {v0}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants()V

    const/4 v3, 0x1

    goto :goto_7a6

    :cond_7a5
    move v3, v0

    :goto_7a6
    if-eqz v18, :cond_7b3

    .line 3973
    iget-object v0, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getSignalStrengthController()Lcom/android/internal/telephony/SignalStrengthController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/SignalStrengthController;->notifySignalStrength()V

    const/4 v13, 0x1

    goto :goto_7b4

    :cond_7b3
    const/4 v13, 0x0

    .line 3976
    :goto_7b4
    iget-object v0, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mAccessNetworksManager:Lcom/android/internal/telephony/data/AccessNetworksManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/data/AccessNetworksManager;->getAvailableTransports()[I

    move-result-object v0

    array-length v2, v0

    const/4 v4, 0x0

    :goto_7bc
    if-ge v4, v2, :cond_821

    aget v5, v0, v4

    .line 3977
    invoke-virtual {v11, v5}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v6

    if-eqz v6, :cond_7d0

    .line 3979
    iget-object v6, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v6}, Lcom/android/internal/telephony/GsmCdmaPhone;->getSignalStrengthController()Lcom/android/internal/telephony/SignalStrengthController;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/SignalStrengthController;->notifySignalStrength()V

    const/4 v13, 0x1

    .line 3982
    :cond_7d0
    invoke-virtual {v12, v5}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v6

    if-nez v6, :cond_7de

    .line 3983
    invoke-virtual {v11, v5}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v6

    if-nez v6, :cond_7de

    if-eqz v17, :cond_7ea

    .line 3987
    :cond_7de
    iget-object v6, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v6

    invoke-direct {v1, v6}, Lcom/android/internal/telephony/ServiceStateTracker;->setDataNetworkTypeForPhone(I)V

    .line 3988
    invoke-virtual {v1, v5}, Lcom/android/internal/telephony/ServiceStateTracker;->notifyDataRegStateRilRadioTechnologyChanged(I)V

    .line 3991
    :cond_7ea
    invoke-virtual {v9, v5}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v6

    if-eqz v6, :cond_804

    .line 3993
    iget-object v3, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mAttachedRegistrants:Landroid/util/SparseArray;

    invoke-virtual {v3, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_803

    .line 3994
    iget-object v3, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mAttachedRegistrants:Landroid/util/SparseArray;

    invoke-virtual {v3, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v3}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants()V

    :cond_803
    const/4 v3, 0x1

    .line 3997
    :cond_804
    invoke-virtual {v10, v5}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v6

    if-eqz v6, :cond_81e

    .line 3999
    iget-object v3, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mDetachedRegistrants:Landroid/util/SparseArray;

    invoke-virtual {v3, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_81d

    .line 4000
    iget-object v3, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mDetachedRegistrants:Landroid/util/SparseArray;

    invoke-virtual {v3, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v3}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants()V

    :cond_81d
    const/4 v3, 0x1

    :cond_81e
    add-int/lit8 v4, v4, 0x1

    goto :goto_7bc

    :cond_821
    if-eqz v24, :cond_82c

    .line 4011
    iget-object v0, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getSignalStrengthController()Lcom/android/internal/telephony/SignalStrengthController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/SignalStrengthController;->getSignalStrengthFromCi()V

    :cond_82c
    if-eqz v3, :cond_831

    .line 4015
    invoke-direct {v1}, Lcom/android/internal/telephony/ServiceStateTracker;->logAttachChange()V

    :cond_831
    if-eqz v13, :cond_836

    .line 4018
    invoke-direct {v1}, Lcom/android/internal/telephony/ServiceStateTracker;->logRatChange()V

    :cond_836
    if-nez v20, :cond_83a

    if-eqz v18, :cond_83d

    .line 4022
    :cond_83a
    invoke-virtual {v1}, Lcom/android/internal/telephony/ServiceStateTracker;->notifyVoiceRegStateRilRadioTechnologyChanged()V

    :cond_83d
    if-nez v8, :cond_845

    if-nez v15, :cond_845

    if-nez v7, :cond_845

    if-eqz v33, :cond_848

    .line 4026
    :cond_845
    invoke-direct {v1}, Lcom/android/internal/telephony/ServiceStateTracker;->logRoamingChange()V

    :cond_848
    if-eqz v8, :cond_84f

    .line 4030
    iget-object v0, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mVoiceRoamingOnRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v0}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants()V

    :cond_84f
    if-eqz v15, :cond_856

    .line 4034
    iget-object v0, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mVoiceRoamingOffRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v0}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants()V

    :cond_856
    if-eqz v7, :cond_85d

    .line 4038
    iget-object v0, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mDataRoamingOnRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v0}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants()V

    :cond_85d
    if-eqz v33, :cond_864

    .line 4042
    iget-object v0, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mDataRoamingOffRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v0}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants()V

    :cond_864
    if-eqz v14, :cond_86f

    .line 4046
    iget-object v0, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/ServiceStateTracker;->getCellIdentity()Landroid/telephony/CellIdentity;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifyLocationChanged(Landroid/telephony/CellIdentity;)V

    :cond_86f
    if-eqz v28, :cond_876

    .line 4050
    iget-object v0, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mNrStateChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v0}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants()V

    :cond_876
    if-eqz v29, :cond_87d

    .line 4054
    iget-object v0, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mNrFrequencyChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v0}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants()V

    .line 4057
    :cond_87d
    iget-object v0, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-eqz v0, :cond_8c3

    .line 4058
    iget-object v0, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getDataRegistrationState()I

    move-result v0

    iget-object v2, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    invoke-direct {v1, v0, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->isGprsConsistent(II)Z

    move-result v0

    if-nez v0, :cond_8c0

    .line 4059
    iget-boolean v0, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mStartedGprsRegCheck:Z

    if-nez v0, :cond_8c3

    iget-boolean v0, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mReportedGprsNoReg:Z

    if-nez v0, :cond_8c3

    const/4 v3, 0x1

    .line 4060
    iput-boolean v3, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mStartedGprsRegCheck:Z

    .line 4062
    iget-object v0, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    .line 4063
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "gprs_register_check_period_ms"

    const v3, 0xea60

    .line 4062
    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/16 v2, 0x16

    .line 4066
    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    int-to-long v3, v0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    :cond_8c0
    const/4 v3, 0x0

    .line 4070
    iput-boolean v3, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mReportedGprsNoReg:Z

    :cond_8c3
    return-void
.end method

.method private blacklist pollStateInternal(Z)V
    .registers 7

    const/4 v0, 0x1

    .line 3462
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPollingContext:[I

    .line 3464
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pollState: modemTriggered="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", radioState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3466
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eqz v1, :cond_3b

    if-eq v1, v2, :cond_34

    goto :goto_50

    .line 3468
    :cond_34
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->handlePollStateInternalForRadioOffOrUnavailable(Z)V

    .line 3469
    invoke-direct {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->pollStateDone()V

    return-void

    .line 3473
    :cond_3b
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->handlePollStateInternalForRadioOffOrUnavailable(Z)V

    .line 3476
    iget-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDeviceShuttingDown:Z

    if-nez v1, :cond_cf

    if-nez p1, :cond_50

    iget-object p1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 3478
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result p1

    const/16 v1, 0x12

    if-eq v1, p1, :cond_50

    goto/16 :goto_cf

    .line 3486
    :cond_50
    :goto_50
    iget-object p1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPollingContext:[I

    aget v1, p1, v3

    add-int/2addr v1, v0

    aput v1, p1, v3

    .line 3487
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v4, 0x7

    invoke-virtual {p0, v4, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/CommandsInterface;->getOperator(Landroid/os/Message;)V

    .line 3489
    iget-object p1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPollingContext:[I

    aget v1, p1, v3

    add-int/2addr v1, v0

    aput v1, p1, v3

    .line 3490
    iget-object p1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRegStateManagers:Landroid/util/SparseArray;

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/telephony/NetworkRegistrationManager;

    const/4 v1, 0x5

    iget-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPollingContext:[I

    .line 3492
    invoke-virtual {p0, v1, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 3491
    invoke-virtual {p1, v2, v1}, Lcom/android/internal/telephony/NetworkRegistrationManager;->requestNetworkRegistrationInfo(ILandroid/os/Message;)V

    .line 3495
    iget-object p1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPollingContext:[I

    aget v1, p1, v3

    add-int/2addr v1, v0

    aput v1, p1, v3

    .line 3496
    iget-object p1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRegStateManagers:Landroid/util/SparseArray;

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/telephony/NetworkRegistrationManager;

    const/4 v1, 0x4

    iget-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPollingContext:[I

    .line 3498
    invoke-virtual {p0, v1, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 3497
    invoke-virtual {p1, v0, v1}, Lcom/android/internal/telephony/NetworkRegistrationManager;->requestNetworkRegistrationInfo(ILandroid/os/Message;)V

    .line 3500
    iget-object p1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRegStateManagers:Landroid/util/SparseArray;

    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_b4

    .line 3501
    iget-object p1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPollingContext:[I

    aget v1, p1, v3

    add-int/2addr v1, v0

    aput v1, p1, v3

    .line 3502
    iget-object p1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRegStateManagers:Landroid/util/SparseArray;

    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/telephony/NetworkRegistrationManager;

    const/4 v1, 0x6

    iget-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPollingContext:[I

    .line 3504
    invoke-virtual {p0, v1, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 3503
    invoke-virtual {p1, v2, v1}, Lcom/android/internal/telephony/NetworkRegistrationManager;->requestNetworkRegistrationInfo(ILandroid/os/Message;)V

    .line 3508
    :cond_b4
    iget-object p1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result p1

    if-eqz p1, :cond_ce

    .line 3509
    iget-object p1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPollingContext:[I

    aget v1, p1, v3

    add-int/2addr v1, v0

    aput v1, p1, v3

    .line 3510
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xe

    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->getNetworkSelectionMode(Landroid/os/Message;)V

    :cond_ce
    return-void

    .line 3479
    :cond_cf
    :goto_cf
    invoke-direct {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->pollStateDone()V

    return-void
.end method

.method private blacklist processIwlanRegistrationInfo()V
    .registers 8

    .line 5689
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()I

    move-result v0

    if-nez v0, :cond_92

    .line 5691
    const-string v0, "set service state as POWER_OFF"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 5692
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    .line 5693
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v0

    const-string v1, "pollStateDone: mNewSS = "

    const/16 v2, 0x12

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v2, v0, :cond_36

    .line 5694
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 5695
    const-string v0, "pollStateDone: reset iwlan RAT value"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    move v0, v4

    goto :goto_37

    :cond_36
    move v0, v3

    .line 5699
    :goto_37
    iget-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v5

    .line 5700
    iget-object v6, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v6, v4}, Landroid/telephony/ServiceState;->setOutOfService(Z)V

    if-eqz v0, :cond_92

    .line 5702
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0, v3}, Landroid/telephony/ServiceState;->setDataRegState(I)V

    .line 5703
    new-instance v0, Landroid/telephony/NetworkRegistrationInfo$Builder;

    invoke-direct {v0}, Landroid/telephony/NetworkRegistrationInfo$Builder;-><init>()V

    const/4 v3, 0x2

    .line 5704
    invoke-virtual {v0, v3}, Landroid/telephony/NetworkRegistrationInfo$Builder;->setTransportType(I)Landroid/telephony/NetworkRegistrationInfo$Builder;

    move-result-object v0

    .line 5705
    invoke-virtual {v0, v3}, Landroid/telephony/NetworkRegistrationInfo$Builder;->setDomain(I)Landroid/telephony/NetworkRegistrationInfo$Builder;

    move-result-object v0

    .line 5706
    invoke-virtual {v0, v2}, Landroid/telephony/NetworkRegistrationInfo$Builder;->setAccessNetworkTechnology(I)Landroid/telephony/NetworkRegistrationInfo$Builder;

    move-result-object v0

    .line 5707
    invoke-virtual {v0, v4}, Landroid/telephony/NetworkRegistrationInfo$Builder;->setRegistrationState(I)Landroid/telephony/NetworkRegistrationInfo$Builder;

    move-result-object v0

    .line 5708
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/telephony/NetworkRegistrationInfo$Builder;->setAvailableServices(Ljava/util/List;)Landroid/telephony/NetworkRegistrationInfo$Builder;

    move-result-object v0

    .line 5709
    invoke-virtual {v0}, Landroid/telephony/NetworkRegistrationInfo$Builder;->build()Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v0

    .line 5710
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v2, v0}, Landroid/telephony/ServiceState;->addNetworkRegistrationInfo(Landroid/telephony/NetworkRegistrationInfo;)V

    .line 5711
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0, v5}, Landroid/telephony/ServiceState;->setOperatorAlphaLong(Ljava/lang/String;)V

    .line 5715
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0, v4}, Landroid/telephony/ServiceState;->setIwlanPreferred(Z)V

    .line 5716
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    :cond_92
    return-void
.end method

.method private blacklist regCodeIsRoaming(I)Z
    .registers 2

    .line 0
    const/4 p0, 0x5

    if-ne p0, p1, :cond_5

    const/4 p0, 0x1

    return p0

    :cond_5
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist regCodeToServiceState(I)I
    .registers 3

    .line 0
    const/4 p0, 0x1

    if-eq p1, p0, :cond_7

    const/4 v0, 0x5

    if-eq p1, v0, :cond_7

    return p0

    :cond_7
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist selectResourceForRejectCode(IZ)I
    .registers 3

    .line 0
    const/4 p0, 0x1

    if-eq p1, p0, :cond_2c

    const/4 p0, 0x2

    if-eq p1, p0, :cond_22

    const/4 p0, 0x3

    if-eq p1, p0, :cond_18

    const/4 p0, 0x6

    if-eq p1, p0, :cond_e

    const/4 p0, 0x0

    return p0

    :cond_e
    if-eqz p2, :cond_14

    const p0, 0x104067e

    return p0

    :cond_14
    const p0, 0x104067d

    return p0

    :cond_18
    if-eqz p2, :cond_1e

    const p0, 0x1040680

    return p0

    :cond_1e
    const p0, 0x104067f

    return p0

    :cond_22
    if-eqz p2, :cond_28

    const p0, 0x1040682

    return p0

    :cond_28
    const p0, 0x1040681

    return p0

    :cond_2c
    if-eqz p2, :cond_32

    const p0, 0x104067c

    return p0

    :cond_32
    const p0, 0x104067b

    return p0
.end method

.method private blacklist setDataNetworkTypeForPhone(I)V
    .registers 4

    .line 6010
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getUnitTestMode()Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 6013
    :cond_9
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 6015
    iget-object p0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p0

    invoke-virtual {v0, p0, p1}, Landroid/telephony/TelephonyManager;->setDataNetworkTypeForPhone(II)V

    return-void
.end method

.method private blacklist setPhyCellInfoFromCellIdentity(Landroid/telephony/ServiceState;Landroid/telephony/CellIdentity;)V
    .registers 13

    if-nez p2, :cond_8

    .line 2610
    const-string p1, "Could not set ServiceState channel number. CellIdentity null"

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    return-void

    .line 2615
    :cond_8
    invoke-virtual {p2}, Landroid/telephony/CellIdentity;->getChannelNumber()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/telephony/ServiceState;->setChannelNumber(I)V

    .line 2620
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mLastPhysicalChannelConfigList:Ljava/util/List;

    invoke-static {v0, p2}, Lcom/android/internal/telephony/ServiceStateTracker;->getPrimaryPhysicalChannelConfigForCell(Ljava/util/List;Landroid/telephony/CellIdentity;)Landroid/telephony/PhysicalChannelConfig;

    move-result-object v0

    .line 2622
    instance-of v1, p2, Landroid/telephony/CellIdentityLte;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_79

    .line 2623
    check-cast p2, Landroid/telephony/CellIdentityLte;

    .line 2626
    const-string v1, "Invalid LTE Bandwidth in RegistrationState, "

    if-eqz v0, :cond_4b

    .line 2627
    iget-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mLastPhysicalChannelConfigList:Ljava/util/List;

    invoke-static {v5}, Lcom/android/internal/telephony/ServiceStateTracker;->getBandwidthsFromConfigs(Ljava/util/List;)[I

    move-result-object v5

    .line 2628
    array-length v6, v5

    move v7, v3

    :goto_2a
    if-ge v7, v6, :cond_4a

    aget v8, v5, v7

    .line 2629
    invoke-static {v8}, Lcom/android/internal/telephony/ServiceStateTracker;->isValidLteBandwidthKhz(I)Z

    move-result v9

    if-nez v9, :cond_47

    .line 2630
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/ServiceStateTracker;->loge(Ljava/lang/String;)V

    goto :goto_4b

    :cond_47
    add-int/lit8 v7, v7, 0x1

    goto :goto_2a

    :cond_4a
    move-object v2, v5

    :cond_4b
    :goto_4b
    if-eqz v2, :cond_50

    .line 2648
    array-length v5, v2

    if-ne v5, v4, :cond_aa

    .line 2649
    :cond_50
    invoke-virtual {p2}, Landroid/telephony/CellIdentityLte;->getBandwidth()I

    move-result p2

    .line 2650
    invoke-static {p2}, Lcom/android/internal/telephony/ServiceStateTracker;->isValidLteBandwidthKhz(I)Z

    move-result v5

    if-eqz v5, :cond_60

    .line 2651
    new-array p0, v4, [I

    aput p2, p0, v3

    move-object v2, p0

    goto :goto_aa

    :cond_60
    const v5, 0x7fffffff

    if-ne p2, v5, :cond_66

    goto :goto_aa

    .line 2656
    :cond_66
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/ServiceStateTracker;->loge(Ljava/lang/String;)V

    goto :goto_aa

    .line 2659
    :cond_79
    instance-of p2, p2, Landroid/telephony/CellIdentityNr;

    if-eqz p2, :cond_aa

    if-eqz v0, :cond_aa

    .line 2663
    iget-object p2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mLastPhysicalChannelConfigList:Ljava/util/List;

    invoke-static {p2}, Lcom/android/internal/telephony/ServiceStateTracker;->getBandwidthsFromConfigs(Ljava/util/List;)[I

    move-result-object p2

    .line 2664
    array-length v1, p2

    move v5, v3

    :goto_87
    if-ge v5, v1, :cond_a9

    aget v6, p2, v5

    .line 2665
    invoke-static {v6}, Lcom/android/internal/telephony/ServiceStateTracker;->isValidNrBandwidthKhz(I)Z

    move-result v7

    if-nez v7, :cond_a6

    .line 2666
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid NR Bandwidth in RegistrationState, "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/ServiceStateTracker;->loge(Ljava/lang/String;)V

    goto :goto_aa

    :cond_a6
    add-int/lit8 v5, v5, 0x1

    goto :goto_87

    :cond_a9
    move-object v2, p2

    :cond_aa
    :goto_aa
    if-nez v2, :cond_bc

    if-eqz v0, :cond_bc

    .line 2679
    invoke-virtual {v0}, Landroid/telephony/PhysicalChannelConfig;->getCellBandwidthDownlinkKhz()I

    move-result p0

    if-eqz p0, :cond_bc

    .line 2681
    new-array v2, v4, [I

    invoke-virtual {v0}, Landroid/telephony/PhysicalChannelConfig;->getCellBandwidthDownlinkKhz()I

    move-result p0

    aput p0, v2, v3

    :cond_bc
    if-eqz v2, :cond_c1

    .line 2687
    invoke-virtual {p1, v2}, Landroid/telephony/ServiceState;->setCellBandwidths([I)V

    :cond_c1
    return-void
.end method

.method private blacklist setRoamingOff()V
    .registers 3

    .line 2825
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/telephony/ServiceState;->setRoaming(Z)V

    .line 2826
    iget-object p0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/telephony/ServiceState;->setCdmaEriIconIndex(I)V

    return-void
.end method

.method private blacklist setRoamingOn()V
    .registers 3

    .line 2819
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/telephony/ServiceState;->setRoaming(Z)V

    .line 2820
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/telephony/ServiceState;->setCdmaEriIconIndex(I)V

    .line 2821
    iget-object p0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {p0, v1}, Landroid/telephony/ServiceState;->setCdmaEriIconMode(I)V

    return-void
.end method

.method private blacklist setTimeFromNITZString(Ljava/lang/String;JJ)V
    .registers 18

    .line 4621
    const-string v6, " dur="

    const-string v7, "NITZ: end="

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 4623
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NITZ: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", ageMs="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v4, p4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " start="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " delay="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v10, v8, p2

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v10, "SST"

    invoke-static {v10, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4626
    invoke-static {p1}, Lcom/android/internal/telephony/NitzData;->parse(Ljava/lang/String;)Lcom/android/internal/telephony/NitzData;

    move-result-object v3

    .line 4627
    iput-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mLastNitzData:Lcom/android/internal/telephony/NitzData;

    if-eqz v3, :cond_93

    .line 4630
    :try_start_4a
    new-instance v0, Lcom/android/internal/telephony/NitzSignal;

    move-wide v1, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/NitzSignal;-><init>(JLcom/android/internal/telephony/NitzData;J)V

    .line 4631
    iget-object p0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNitzState:Lcom/android/internal/telephony/NitzStateMachine;

    invoke-interface {p0, v0}, Lcom/android/internal/telephony/NitzStateMachine;->handleNitzReceived(Lcom/android/internal/telephony/NitzSignal;)V
    :try_end_55
    .catchall {:try_start_4a .. :try_end_55} :catchall_73

    .line 4634
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p0

    .line 4635
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr p0, v8

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v10, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_73
    move-exception v0

    move-object p0, v0

    .line 4634
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 4635
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr v0, v8

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v10, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4637
    throw p0

    :cond_93
    return-void
.end method

.method private blacklist updateNrFrequencyRangeFromPhysicalChannelConfigs(Ljava/util/List;Landroid/telephony/ServiceState;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/PhysicalChannelConfig;",
            ">;",
            "Landroid/telephony/ServiceState;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_29

    .line 2202
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move v1, v0

    :cond_8
    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/PhysicalChannelConfig;

    .line 2203
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->isNrPhysicalChannelConfig(Landroid/telephony/PhysicalChannelConfig;)Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->isInternetPhysicalChannelConfig(Landroid/telephony/PhysicalChannelConfig;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 2207
    invoke-virtual {v2}, Landroid/telephony/PhysicalChannelConfig;->getFrequencyRange()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_8

    :cond_29
    move v1, v0

    .line 2212
    :cond_2a
    invoke-virtual {p2}, Landroid/telephony/ServiceState;->getNrFrequencyRange()I

    move-result p1

    if-eq v1, p1, :cond_31

    const/4 v0, 0x1

    :cond_31
    if-eqz v0, :cond_4c

    .line 2215
    invoke-virtual {p2}, Landroid/telephony/ServiceState;->getNrFrequencyRange()I

    move-result p1

    invoke-static {p1}, Landroid/telephony/ServiceState;->frequencyRangeToString(I)Ljava/lang/String;

    move-result-object p1

    .line 2216
    invoke-static {v1}, Landroid/telephony/ServiceState;->frequencyRangeToString(I)Ljava/lang/String;

    move-result-object v2

    filled-new-array {p1, v2}, [Ljava/lang/Object;

    move-result-object p1

    .line 2214
    const-string v2, "NR frequency range changed from %s to %s."

    invoke-static {v2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2218
    :cond_4c
    invoke-virtual {p2, v1}, Landroid/telephony/ServiceState;->setNrFrequencyRange(I)V

    return v0
.end method

.method private blacklist updateNrStateFromPhysicalChannelConfigs(Ljava/util/List;Landroid/telephony/ServiceState;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/PhysicalChannelConfig;",
            ">;",
            "Landroid/telephony/ServiceState;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x2

    const/4 v1, 0x1

    .line 2224
    invoke-virtual {p2, v0, v1}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_62

    if-nez p1, :cond_c

    goto :goto_62

    .line 2229
    :cond_c
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_10
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_30

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/PhysicalChannelConfig;

    .line 2230
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/ServiceStateTracker;->isNrPhysicalChannelConfig(Landroid/telephony/PhysicalChannelConfig;)Z

    move-result v5

    if-eqz v5, :cond_10

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/ServiceStateTracker;->isInternetPhysicalChannelConfig(Landroid/telephony/PhysicalChannelConfig;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 2231
    invoke-virtual {v4}, Landroid/telephony/PhysicalChannelConfig;->getConnectionStatus()I

    move-result v4

    if-ne v4, v0, :cond_10

    move p1, v1

    goto :goto_31

    :cond_30
    move p1, v3

    .line 2238
    :goto_31
    invoke-virtual {v2}, Landroid/telephony/NetworkRegistrationInfo;->getNrState()I

    move-result v0

    if-eqz p1, :cond_39

    const/4 p1, 0x3

    goto :goto_40

    .line 2243
    :cond_39
    invoke-virtual {v2}, Landroid/telephony/NetworkRegistrationInfo;->updateNrState()V

    .line 2244
    invoke-virtual {v2}, Landroid/telephony/NetworkRegistrationInfo;->getNrState()I

    move-result p1

    :goto_40
    if-eq p1, v0, :cond_43

    goto :goto_44

    :cond_43
    move v1, v3

    :goto_44
    if-eqz v1, :cond_5b

    .line 2250
    invoke-static {v0}, Landroid/telephony/NetworkRegistrationInfo;->nrStateToString(I)Ljava/lang/String;

    move-result-object v0

    .line 2251
    invoke-static {p1}, Landroid/telephony/NetworkRegistrationInfo;->nrStateToString(I)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v0, v3}, [Ljava/lang/Object;

    move-result-object v0

    .line 2249
    const-string v3, "NR state changed from %s to %s."

    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2253
    :cond_5b
    invoke-virtual {v2, p1}, Landroid/telephony/NetworkRegistrationInfo;->setNrState(I)V

    .line 2254
    invoke-virtual {p2, v2}, Landroid/telephony/ServiceState;->addNetworkRegistrationInfo(Landroid/telephony/NetworkRegistrationInfo;)V

    return v1

    :cond_62
    :goto_62
    return v3
.end method

.method private blacklist updateNtnCapability()V
    .registers 4

    .line 5723
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfoListForTransportType(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_b
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/NetworkRegistrationInfo;

    .line 5725
    iget v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSubId:I

    invoke-static {v1, v2}, Lcom/android/internal/telephony/satellite/NtnCapabilityResolver;->resolveNtnCapability(Landroid/telephony/NetworkRegistrationInfo;I)V

    .line 5726
    invoke-virtual {v1}, Landroid/telephony/NetworkRegistrationInfo;->isNonTerrestrialNetwork()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 5728
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v2, v1}, Landroid/telephony/ServiceState;->addNetworkRegistrationInfo(Landroid/telephony/NetworkRegistrationInfo;)V

    goto :goto_b

    :cond_28
    return-void
.end method

.method private blacklist updateOperatorNameForCellIdentity(Landroid/telephony/CellIdentity;)V
    .registers 3

    if-nez p1, :cond_3

    return-void

    .line 5877
    :cond_3
    invoke-virtual {p1}, Landroid/telephony/CellIdentity;->getOperatorAlphaLong()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->filterOperatorNameByPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5876
    invoke-virtual {p1, v0}, Landroid/telephony/CellIdentity;->setOperatorAlphaLong(Ljava/lang/String;)V

    .line 5879
    invoke-virtual {p1}, Landroid/telephony/CellIdentity;->getOperatorAlphaShort()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->filterOperatorNameByPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 5878
    invoke-virtual {p1, p0}, Landroid/telephony/CellIdentity;->setOperatorAlphaShort(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist updateOperatorNameForServiceState(Landroid/telephony/ServiceState;)V
    .registers 5

    if-nez p1, :cond_3

    goto :goto_44

    .line 5856
    :cond_3
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->filterOperatorNameByPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5857
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorAlphaShort()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->filterOperatorNameByPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5858
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v2

    .line 5855
    invoke-virtual {p1, v0, v1, v2}, Landroid/telephony/ServiceState;->setOperatorName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 5861
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfoList()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 5863
    :goto_1f
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_44

    .line 5864
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_41

    .line 5866
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/NetworkRegistrationInfo;

    invoke-virtual {v2}, Landroid/telephony/NetworkRegistrationInfo;->getCellIdentity()Landroid/telephony/CellIdentity;

    move-result-object v2

    .line 5865
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->updateOperatorNameForCellIdentity(Landroid/telephony/CellIdentity;)V

    .line 5867
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/NetworkRegistrationInfo;

    invoke-virtual {p1, v2}, Landroid/telephony/ServiceState;->addNetworkRegistrationInfo(Landroid/telephony/NetworkRegistrationInfo;)V

    :cond_41
    add-int/lit8 v1, v1, 0x1

    goto :goto_1f

    :cond_44
    :goto_44
    return-void
.end method

.method private blacklist updateOperatorNameFromCarrierConfig()V
    .registers 4

    .line 2833
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-nez v0, :cond_6a

    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v0

    if-nez v0, :cond_6a

    .line 2834
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccPort(I)Lcom/android/internal/telephony/uicc/UiccPort;

    move-result-object v0

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    .line 2835
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccPort(I)Lcom/android/internal/telephony/uicc/UiccPort;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccPort;->getOperatorBrandOverride()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2d

    return-void

    .line 2836
    :cond_2d
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCarrierConfig:Landroid/os/PersistableBundle;

    const-string v1, "cdma_home_registered_plmn_name_override_bool"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6a

    .line 2838
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCarrierConfig:Landroid/os/PersistableBundle;

    const-string v1, "cdma_home_registered_plmn_name_string"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2840
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateOperatorNameFromCarrierConfig: changing from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 2841
    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getOperatorAlpha()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2840
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2843
    iget-object p0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v0, v1}, Landroid/telephony/ServiceState;->setOperatorName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_6a
    return-void
.end method

.method private blacklist updateOperatorNamePattern(Landroid/os/PersistableBundle;)V
    .registers 3

    .line 5840
    const-string v0, "operator_name_filter_pattern_string"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 5842
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2c

    .line 5843
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mOperatorNameStringPattern:Ljava/util/regex/Pattern;

    .line 5845
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mOperatorNameStringPattern: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mOperatorNameStringPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    :cond_2c
    return-void
.end method

.method private blacklist updateSatelliteDisplayOverride()V
    .registers 5

    .line 3186
    invoke-direct {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getSatelliteDisplayName()Ljava/lang/String;

    move-result-object v0

    .line 3187
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b

    goto :goto_4c

    .line 3192
    :cond_b
    invoke-direct {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getSatelliteModemStateListener()Lcom/android/internal/telephony/ServiceStateTracker$SatelliteModemStateListener;

    move-result-object v1

    .line 3193
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v2

    .line 3194
    invoke-static {}, Lcom/android/internal/telephony/satellite/SatelliteController;->getInstance()Lcom/android/internal/telephony/satellite/SatelliteController;

    move-result-object v3

    if-eqz v1, :cond_21

    .line 3198
    invoke-virtual {v1}, Lcom/android/internal/telephony/ServiceStateTracker$SatelliteModemStateListener;->isInConnectedState()Z

    move-result v1

    if-nez v1, :cond_2f

    .line 3199
    :cond_21
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4c

    if-eqz v3, :cond_4c

    .line 3200
    invoke-virtual {v3}, Lcom/android/internal/telephony/satellite/SatelliteController;->isInCarrierRoamingNbIotNtn()Z

    move-result v1

    if-eqz v1, :cond_4c

    .line 3202
    :cond_2f
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    .line 3203
    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v2

    .line 3202
    invoke-virtual {v1, v0, v0, v2}, Landroid/telephony/ServiceState;->setOperatorName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3204
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Override satellite display name to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    :cond_4c
    :goto_4c
    return-void
.end method

.method private blacklist updateServiceStateToDb(Landroid/telephony/ServiceState;)V
    .registers 4

    .line 4080
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    .line 4081
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v1

    invoke-static {v1}, Landroid/provider/Telephony$ServiceStateTable;->getUriForSubscriptionId(I)Landroid/net/Uri;

    move-result-object v1

    .line 4082
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ServiceStateTracker;->getContentValuesForServiceState(Landroid/telephony/ServiceState;)Landroid/content/ContentValues;

    move-result-object p0

    .line 4081
    invoke-virtual {v0, v1, p0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method protected final blacklist alwaysOnHomeNetwork(Landroid/os/BaseBundle;)Z
    .registers 2

    .line 5741
    const-string p0, "force_home_network_bool"

    invoke-virtual {p1, p0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method protected blacklist cancelPollState()V
    .registers 2

    const/4 v0, 0x1

    .line 5231
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPollingContext:[I

    return-void
.end method

.method protected blacklist checkCorrectThread()V
    .registers 2

    .line 5520
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object p0

    if-ne v0, p0, :cond_f

    return-void

    .line 5521
    :cond_f
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "ServiceStateTracker must be used from within one thread"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist clearAllRadioOffReasons()V
    .registers 1

    .line 1192
    iget-object p0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRadioPowerOffReasons:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method public blacklist disableLocationUpdates()V
    .registers 3

    const/4 v0, 0x0

    .line 1289
    iput-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mWantContinuousLocationUpdates:Z

    .line 1290
    iget-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mWantSingleLocationUpdate:Z

    if-nez v1, :cond_d

    .line 1291
    iget-object p0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1, v1}, Lcom/android/internal/telephony/CommandsInterface;->setLocationUpdates(ZLandroid/os/WorkSource;Landroid/os/Message;)V

    :cond_d
    return-void
.end method

.method protected blacklist disableSingleLocationUpdate()V
    .registers 3

    const/4 v0, 0x0

    .line 1282
    iput-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mWantSingleLocationUpdate:Z

    .line 1283
    iget-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mWantContinuousLocationUpdates:Z

    if-nez v1, :cond_d

    .line 1284
    iget-object p0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1, v1}, Lcom/android/internal/telephony/CommandsInterface;->setLocationUpdates(ZLandroid/os/WorkSource;Landroid/os/Message;)V

    :cond_d
    return-void
.end method

.method public blacklist dispose()V
    .registers 4

    .line 963
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getSignalStrengthController()Lcom/android/internal/telephony/SignalStrengthController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/SignalStrengthController;->dispose()V

    .line 964
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/UiccController;->unregisterForIccChanged(Landroid/os/Handler;)V

    .line 965
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForCellInfoList(Landroid/os/Handler;)V

    .line 966
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForPhysicalChannelConfiguration(Landroid/os/Handler;)V

    .line 967
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mOnSubscriptionsChangedListener:Lcom/android/internal/telephony/ServiceStateTracker$SstSubscriptionsChangedListener;

    .line 968
    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager;->removeOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 969
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForImsNetworkStateChanged(Landroid/os/Handler;)V

    .line 970
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getCarrierActionAgent()Lcom/android/internal/telephony/CarrierActionAgent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/android/internal/telephony/CarrierActionAgent;->unregisterForCarrierAction(Landroid/os/Handler;I)V

    .line 972
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 973
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/telephony/CarrierConfigManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    if-eqz v0, :cond_50

    .line 974
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCarrierConfigChangeListener:Landroid/telephony/CarrierConfigManager$CarrierConfigChangeListener;

    if-eqz v1, :cond_50

    .line 975
    invoke-virtual {v0, v1}, Landroid/telephony/CarrierConfigManager;->unregisterCarrierConfigChangeListener(Landroid/telephony/CarrierConfigManager$CarrierConfigChangeListener;)V

    .line 977
    :cond_50
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCSST:Lcom/android/internal/telephony/CarrierServiceStateTracker;

    const/4 v1, 0x0

    if-eqz v0, :cond_5a

    .line 978
    invoke-virtual {v0}, Lcom/android/internal/telephony/CarrierServiceStateTracker;->dispose()V

    .line 979
    iput-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCSST:Lcom/android/internal/telephony/CarrierServiceStateTracker;

    .line 981
    :cond_5a
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mAccessNetworksManagerCallback:Lcom/android/internal/telephony/data/AccessNetworksManager$AccessNetworksManagerCallback;

    if-eqz v0, :cond_65

    .line 982
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mAccessNetworksManager:Lcom/android/internal/telephony/data/AccessNetworksManager;

    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/data/AccessNetworksManager;->unregisterCallback(Lcom/android/internal/telephony/data/AccessNetworksManager$AccessNetworksManagerCallback;)V

    .line 983
    iput-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mAccessNetworksManagerCallback:Lcom/android/internal/telephony/data/AccessNetworksManager$AccessNetworksManagerCallback;

    :cond_65
    return-void
.end method

.method public blacklist dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 7

    .line 5408
    const-string v0, "ServiceStateTracker:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5409
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mSubId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSubId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5410
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mSS="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5411
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mNewSS="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5412
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mVoiceCapable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mVoiceCapable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5413
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mRestrictedState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5414
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mPollingContext="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPollingContext:[I

    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5415
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mDesiredPowerState="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDesiredPowerState:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5416
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5417
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mPendingRadioPowerOffAfterDataOff="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPendingRadioPowerOffAfterDataOff:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5418
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mCellIdentity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCellIdentity:Landroid/telephony/CellIdentity;

    invoke-static {v1, v2}, Lcom/android/telephony/Rlog;->pii(ZLjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5419
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mLastCellInfoReqTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mLastCellInfoReqTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5420
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/ServiceStateTracker;->dumpCellInfoList(Ljava/io/PrintWriter;)V

    .line 5421
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 5422
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mAllowedNetworkTypes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mAllowedNetworkTypes:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5423
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mMaxDataCalls="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mMaxDataCalls:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5424
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mNewMaxDataCalls="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewMaxDataCalls:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5425
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mReasonDataDenied="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mReasonDataDenied:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5426
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mNewReasonDataDenied="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewReasonDataDenied:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5427
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mGsmVoiceRoaming="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mGsmVoiceRoaming:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5428
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mGsmDataRoaming="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mGsmDataRoaming:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5429
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mEmergencyOnly="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mEmergencyOnly:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5430
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mCSEmergencyOnly="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCSEmergencyOnly:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5431
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mPSEmergencyOnly="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPSEmergencyOnly:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5432
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 5433
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNitzState:Lcom/android/internal/telephony/NitzStateMachine;

    invoke-interface {v0, p2}, Lcom/android/internal/telephony/NitzStateMachine;->dumpState(Ljava/io/PrintWriter;)V

    .line 5434
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mLastNitzData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mLastNitzData:Lcom/android/internal/telephony/NitzData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5435
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 5436
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mStartedGprsRegCheck="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mStartedGprsRegCheck:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5437
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mReportedGprsNoReg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mReportedGprsNoReg:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5438
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mNotification="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNotification:Landroid/app/Notification;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5439
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mCarrierDisplayNameData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCarrierDisplayNameData:Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5440
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 5441
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mCurrentOtaspMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCurrentOtaspMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5442
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mRoamingIndicator="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRoamingIndicator:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5443
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mIsInPrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIsInPrl:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5444
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mDefaultRoamingIndicator="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDefaultRoamingIndicator:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5445
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mRegistrationState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRegistrationState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5446
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mMdn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mMdn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5447
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mHomeSystemId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mHomeSystemId:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5448
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mHomeNetworkId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mHomeNetworkId:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5449
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mMin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mMin:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5450
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mPrlVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPrlVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5451
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mIsMinInfoReady="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIsMinInfoReady:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5452
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mIsEriTextLoaded="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIsEriTextLoaded:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5453
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mIsSubscriptionFromRuim="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIsSubscriptionFromRuim:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5454
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mCdmaSSM="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5455
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mRegistrationDeniedReason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRegistrationDeniedReason:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5456
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mCurrentCarrier="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCurrentCarrier:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5457
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 5458
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mImsRegistered="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mImsRegistered:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5459
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mImsRegistrationOnOff="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mImsRegistrationOnOff:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5460
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " pending radio off event="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3e

    .line 5461
    invoke-virtual {p0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5460
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5462
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mRadioPowerOffReasons="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRadioPowerOffReasons:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5463
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mDeviceShuttingDown="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDeviceShuttingDown:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5464
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mCellInfoMinIntervalMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCellInfoMinIntervalMs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5465
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mEriManager="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mEriManager:Lcom/android/internal/telephony/cdma/EriManager;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5467
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mLocaleTracker:Lcom/android/internal/telephony/LocaleTracker;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/LocaleTracker;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 5468
    new-instance v0, Lcom/android/internal/telephony/IndentingPrintWriter;

    const-string v1, "    "

    invoke-direct {v0, p2, v1}, Lcom/android/internal/telephony/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 5470
    iget-object p2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCdnr:Lcom/android/internal/telephony/cdnr/CarrierDisplayNameResolver;

    invoke-virtual {p2, v0}, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameResolver;->dump(Lcom/android/internal/telephony/IndentingPrintWriter;)V

    .line 5472
    const-string p2, " Carrier Display Name update records:"

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5473
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 5474
    iget-object p2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCdnrLogs:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {p2, p1, v0, p3}, Lcom/android/internal/telephony/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 5475
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 5477
    const-string p2, " Roaming Log:"

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5478
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 5479
    iget-object p2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRoamingLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {p2, p1, v0, p3}, Lcom/android/internal/telephony/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 5480
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 5482
    const-string p2, " Attach Log:"

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5483
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 5484
    iget-object p2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mAttachLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {p2, p1, v0, p3}, Lcom/android/internal/telephony/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 5485
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 5487
    const-string p2, " Phone Change Log:"

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5488
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 5489
    iget-object p2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhoneTypeLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {p2, p1, v0, p3}, Lcom/android/internal/telephony/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 5490
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 5492
    const-string p2, " Rat Change Log:"

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5493
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 5494
    iget-object p2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRatLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {p2, p1, v0, p3}, Lcom/android/internal/telephony/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 5495
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 5497
    const-string p2, " Radio power Log:"

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5498
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 5499
    iget-object p2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRadioPowerLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {p2, p1, v0, p3}, Lcom/android/internal/telephony/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 5500
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 5502
    iget-object p0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNitzState:Lcom/android/internal/telephony/NitzStateMachine;

    invoke-interface {p0, p1, v0, p3}, Lcom/android/internal/telephony/NitzStateMachine;->dumpLogs(Ljava/io/FileDescriptor;Lcom/android/internal/telephony/IndentingPrintWriter;[Ljava/lang/String;)V

    .line 5504
    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    return-void
.end method

.method public blacklist enableLocationUpdates()V
    .registers 4

    .line 1276
    iget-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mWantSingleLocationUpdate:Z

    if-nez v0, :cond_18

    iget-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mWantContinuousLocationUpdates:Z

    if-eqz v0, :cond_9

    goto :goto_18

    :cond_9
    const/4 v0, 0x1

    .line 1277
    iput-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mWantContinuousLocationUpdates:Z

    .line 1278
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0x12

    invoke-virtual {p0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2, p0}, Lcom/android/internal/telephony/CommandsInterface;->setLocationUpdates(ZLandroid/os/WorkSource;Landroid/os/Message;)V

    :cond_18
    :goto_18
    return-void
.end method

.method public blacklist enableSingleLocationUpdate(Landroid/os/WorkSource;)V
    .registers 5

    .line 1270
    iget-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mWantSingleLocationUpdate:Z

    if-nez v0, :cond_17

    iget-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mWantContinuousLocationUpdates:Z

    if-eqz v0, :cond_9

    goto :goto_17

    :cond_9
    const/4 v0, 0x1

    .line 1271
    iput-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mWantSingleLocationUpdate:Z

    .line 1272
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0x12

    invoke-virtual {p0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-interface {v1, v0, p1, p0}, Lcom/android/internal/telephony/CommandsInterface;->setLocationUpdates(ZLandroid/os/WorkSource;Landroid/os/Message;)V

    :cond_17
    :goto_17
    return-void
.end method

.method public blacklist filterOperatorNameByPattern(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 5905
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mOperatorNameStringPattern:Ljava/util/regex/Pattern;

    if-eqz v0, :cond_28

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_28

    .line 5908
    :cond_b
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mOperatorNameStringPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 5909
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_28

    .line 5910
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v1

    if-lez v1, :cond_23

    const/4 p0, 0x1

    .line 5911
    invoke-virtual {v0, p0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 5913
    :cond_23
    const-string v0, "filterOperatorNameByPattern: pattern no group"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    :cond_28
    :goto_28
    return-object p1
.end method

.method public blacklist getAllCellInfo()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telephony/CellInfo;",
            ">;"
        }
    .end annotation

    .line 5273
    iget-object p0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mLastCellInfoList:Ljava/util/List;

    return-object p0
.end method

.method public blacklist getCarrierNameDisplayBitmask(Landroid/telephony/ServiceState;)I
    .registers 6

    .line 4182
    invoke-direct {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getOperatorBrandOverride()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_c

    return v1

    .line 4186
    :cond_c
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getServiceProviderName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x2

    if-eqz v0, :cond_18

    return v2

    .line 4191
    :cond_18
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCarrierConfig:Landroid/os/PersistableBundle;

    const-string v3, "spn_display_rule_use_roaming_from_service_state_bool"

    invoke-virtual {v0, v3}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 4194
    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-nez v3, :cond_26

    const/4 v3, 0x0

    goto :goto_2a

    :cond_26
    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/IccRecords;->getCarrierNameDisplayCondition()I

    move-result v3

    :goto_2a
    if-eqz v0, :cond_31

    .line 4198
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result p0

    goto :goto_44

    .line 4200
    :cond_31
    iget-object p0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz p0, :cond_3a

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccRecords;->getHomePlmns()[Ljava/lang/String;

    move-result-object p0

    goto :goto_3b

    :cond_3a
    const/4 p0, 0x0

    .line 4201
    :goto_3b
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/internal/telephony/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    xor-int/2addr p0, v1

    :goto_44
    const/4 p1, 0x3

    if-eqz p0, :cond_4d

    and-int/lit8 p0, v3, 0x2

    if-ne p0, v2, :cond_4c

    return p1

    :cond_4c
    return v2

    :cond_4d
    and-int/lit8 p0, v3, 0x1

    if-ne p0, v1, :cond_52

    return p1

    :cond_52
    return v1
.end method

.method blacklist getCdmaEriText(II)Ljava/lang/String;
    .registers 3

    .line 5836
    iget-object p0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mEriManager:Lcom/android/internal/telephony/cdma/EriManager;

    if-eqz p0, :cond_9

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/cdma/EriManager;->getCdmaEriText(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_9
    const-string p0, "no ERI"

    return-object p0
.end method

.method public blacklist getCdmaMin()Ljava/lang/String;
    .registers 1

    .line 1910
    iget-object p0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mMin:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getCellIdentity()Landroid/telephony/CellIdentity;
    .registers 2

    .line 4550
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCellIdentity:Landroid/telephony/CellIdentity;

    if-eqz v0, :cond_5

    return-object v0

    .line 4552
    :cond_5
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getAllCellInfo()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ServiceStateTracker;->getCellIdentityFromCellInfo(Ljava/util/List;)Landroid/telephony/CellIdentity;

    move-result-object v0

    if-eqz v0, :cond_10

    return-object v0

    .line 4555
    :cond_10
    iget-object p0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneType()I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_1f

    .line 4556
    new-instance p0, Landroid/telephony/CellIdentityCdma;

    invoke-direct {p0}, Landroid/telephony/CellIdentityCdma;-><init>()V

    return-object p0

    :cond_1f
    new-instance p0, Landroid/telephony/CellIdentityGsm;

    invoke-direct {p0}, Landroid/telephony/CellIdentityGsm;-><init>()V

    return-object p0
.end method

.method public blacklist getCombinedRegState(Landroid/telephony/ServiceState;)I
    .registers 5

    .line 5791
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    .line 5792
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getDataRegistrationState()I

    move-result v1

    const/4 v2, 0x1

    if-eq v0, v2, :cond_e

    const/4 v2, 0x3

    if-ne v0, v2, :cond_38

    :cond_e
    if-nez v1, :cond_38

    .line 5796
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getDataNetworkType()I

    move-result p1

    const/16 v2, 0x12

    if-ne p1, v2, :cond_32

    .line 5797
    iget-object p1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object p1

    if-eqz p1, :cond_38

    iget-object p1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->isWifiCallingEnabled()Z

    move-result p1

    if-eqz p1, :cond_38

    .line 5798
    const-string p1, "getCombinedRegState: return STATE_IN_SERVICE for IWLAN as Data is in service and WFC is enabled"

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    return v1

    .line 5803
    :cond_32
    const-string p1, "getCombinedRegState: return STATE_IN_SERVICE as Data is in service"

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    return v1

    :cond_38
    return v0
.end method

.method public greylist-max-r getCurrentDataConnectionState()I
    .registers 1

    .line 3377
    iget-object p0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getDataRegistrationState()I

    move-result p0

    return p0
.end method

.method public greylist-max-r getDesiredPowerState()Z
    .registers 1

    .line 989
    iget-boolean p0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDesiredPowerState:Z

    return p0
.end method

.method protected blacklist getHomeOperatorNumeric()Ljava/lang/String;
    .registers 3

    .line 5671
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    .line 5672
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    .line 5673
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getSimOperatorNumericForPhone(I)Ljava/lang/String;

    move-result-object v0

    .line 5674
    iget-object p0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result p0

    if-nez p0, :cond_2f

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2f

    .line 5675
    const-string p0, "ro.cdma.home.operator.numeric"

    const-string v0, ""

    invoke-static {p0, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2f
    return-object v0
.end method

.method public blacklist getImsi()Ljava/lang/String;
    .registers 3

    .line 1923
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    .line 1924
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    .line 1925
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getSimOperatorNumericForPhone(I)Ljava/lang/String;

    move-result-object v0

    .line 1927
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_38

    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getCdmaMin()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_38

    .line 1928
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getCdmaMin()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_38
    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist getLastKnownCellIdentity()Landroid/telephony/CellIdentity;
    .registers 1

    .line 6074
    iget-object p0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mLastKnownCellIdentity:Landroid/telephony/CellIdentity;

    return-object p0
.end method

.method public blacklist getLocaleTracker()Lcom/android/internal/telephony/LocaleTracker;
    .registers 1

    .line 5832
    iget-object p0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mLocaleTracker:Lcom/android/internal/telephony/LocaleTracker;

    return-object p0
.end method

.method public blacklist getMdnNumber()Ljava/lang/String;
    .registers 1

    .line 1906
    iget-object p0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mMdn:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getNrContextIds()Ljava/util/Set;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 5994
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 5996
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mLastPhysicalChannelConfigList:Ljava/util/List;

    invoke-static {v1}, Lcom/android/internal/telephony/util/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_39

    .line 5997
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mLastPhysicalChannelConfigList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_39

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/PhysicalChannelConfig;

    .line 5998
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->isNrPhysicalChannelConfig(Landroid/telephony/PhysicalChannelConfig;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 5999
    invoke-virtual {v2}, Landroid/telephony/PhysicalChannelConfig;->getContextIds()[I

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_2b
    if-ge v4, v3, :cond_13

    aget v5, v2, v4

    .line 6000
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_2b

    :cond_39
    return-object v0
.end method

.method public blacklist getOtasp()I
    .registers 7

    .line 1949
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getIccRecordsLoaded()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_f

    .line 1950
    const-string v0, "getOtasp: otasp uninitialized due to sim not loaded"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    return v1

    .line 1954
    :cond_f
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    const/4 v2, 0x3

    if-eqz v0, :cond_1e

    .line 1955
    const-string v0, "getOtasp: otasp not needed for GSM"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    return v2

    .line 1959
    :cond_1e
    iget-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIsSubscriptionFromRuim:Z

    const/4 v3, 0x2

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mMin:Ljava/lang/String;

    if-nez v0, :cond_28

    return v3

    .line 1962
    :cond_28
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mMin:Ljava/lang/String;

    if-eqz v0, :cond_56

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v4, 0x6

    if-ge v0, v4, :cond_34

    goto :goto_56

    .line 1966
    :cond_34
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mMin:Ljava/lang/String;

    const-string v5, "1111110111"

    invoke-virtual {v0, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_54

    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mMin:Ljava/lang/String;

    .line 1967
    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v4, "000000"

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_54

    const-string v0, "test_cdma_setup"

    .line 1968
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_72

    :cond_54
    move v2, v3

    goto :goto_72

    .line 1963
    :cond_56
    :goto_56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getOtasp: bad mMin=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mMin:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    const/4 v2, 0x1

    .line 1974
    :cond_72
    :goto_72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getOtasp: state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    return v2
.end method

.method protected blacklist getPhone()Lcom/android/internal/telephony/Phone;
    .registers 1

    .line 2029
    iget-object p0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    return-object p0
.end method

.method protected greylist-max-r getPhoneId()I
    .registers 1

    .line 5682
    iget-object p0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p0

    return p0
.end method

.method public blacklist getPhysicalChannelConfigList()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telephony/PhysicalChannelConfig;",
            ">;"
        }
    .end annotation

    .line 997
    iget-object p0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mLastPhysicalChannelConfigList:Ljava/util/List;

    return-object p0
.end method

.method public blacklist getPowerStateFromCarrier()Z
    .registers 2

    .line 993
    iget-object p0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRadioPowerOffReasons:Ljava/util/Set;

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public blacklist getPrlVersion()Ljava/lang/String;
    .registers 1

    .line 1915
    iget-object p0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPrlVersion:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getRadioPowerOffDelayTimeoutForImsRegistration()I
    .registers 2

    .line 958
    iget-object p0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x10e006f

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    return p0
.end method

.method public blacklist getRadioPowerOffReasons()Ljava/util/Set;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1184
    iget-object p0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRadioPowerOffReasons:Ljava/util/Set;

    invoke-static {p0}, Ljava/util/Set;->copyOf(Ljava/util/Collection;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getServiceProviderName()Ljava/lang/String;
    .registers 4

    .line 4155
    invoke-direct {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getOperatorBrandOverride()Ljava/lang/String;

    move-result-object v0

    .line 4156
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b

    return-object v0

    .line 4160
    :cond_b
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getServiceProviderName()Ljava/lang/String;

    move-result-object v0

    goto :goto_16

    :cond_14
    const-string v0, ""

    .line 4161
    :goto_16
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCarrierConfig:Landroid/os/PersistableBundle;

    const-string v2, "carrier_name_override_bool"

    invoke-virtual {v1, v2}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_28

    .line 4162
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_27

    goto :goto_28

    :cond_27
    return-object v0

    .line 4163
    :cond_28
    :goto_28
    iget-object p0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCarrierConfig:Landroid/os/PersistableBundle;

    const-string v0, "carrier_name_string"

    invoke-virtual {p0, v0}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getServiceState()Landroid/telephony/ServiceState;
    .registers 2

    .line 1888
    new-instance v0, Landroid/telephony/ServiceState;

    iget-object p0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-direct {v0, p0}, Landroid/telephony/ServiceState;-><init>(Landroid/telephony/ServiceState;)V

    return-object v0
.end method

.method public blacklist getServiceStateStats()Lcom/android/internal/telephony/metrics/ServiceStateStats;
    .registers 1

    .line 6020
    iget-object p0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mServiceStateStats:Lcom/android/internal/telephony/metrics/ServiceStateStats;

    return-object p0
.end method

.method public greylist-max-r getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 5269
    iget-object p0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p0

    invoke-static {p0, p1, p2}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 16

    .line 1302
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x3

    const/16 v2, 0xe

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    packed-switch v0, :pswitch_data_606

    .line 1846
    :pswitch_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unhandled message with number: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    return-void

    .line 1837
    :pswitch_23
    const-string p1, "EVENT_TELECOM_VOICE_SERVICE_STATE_OVERRIDE_CHANGED"

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1840
    iget-object p1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result p1

    if-eqz p1, :cond_59d

    .line 1841
    iget-object p0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifyServiceStateChanged(Landroid/telephony/ServiceState;)V

    return-void

    .line 1831
    :pswitch_3a
    const-string p1, "EVENT_RESET_LAST_KNOWN_CELL_IDENTITY triggered"

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1832
    iput-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mLastKnownCellIdentity:Landroid/telephony/CellIdentity;

    return-void

    .line 1825
    :pswitch_42
    const-string p1, "EVENT_POWER_OFF_RADIO_IMS_DEREG_TIMEOUT triggered"

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1826
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->powerOffRadioSafely()V

    return-void

    .line 1821
    :pswitch_4b
    invoke-direct {p0, v6}, Lcom/android/internal/telephony/ServiceStateTracker;->pollStateInternal(Z)V

    return-void

    .line 1806
    :pswitch_4f
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    if-nez p1, :cond_5b

    .line 1808
    const-string p1, "Invalid null response to getCellIdentity!"

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ServiceStateTracker;->loge(Ljava/lang/String;)V

    return-void

    .line 1815
    :cond_5b
    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Message;

    .line 1816
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getCellIdentity()Landroid/telephony/CellIdentity;

    move-result-object p0

    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v0, p0, p1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1817
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void

    .line 1768
    :pswitch_6c
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 1769
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_59d

    .line 1770
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    .line 1775
    iput-object p1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mLastPhysicalChannelConfigList:Ljava/util/List;

    .line 1777
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->updateNrStateFromPhysicalChannelConfigs(Ljava/util/List;Landroid/telephony/ServiceState;)Z

    move-result v0

    if-eqz v0, :cond_88

    .line 1778
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNrStateChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v0}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants()V

    move v6, v5

    .line 1781
    :cond_88
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->updateNrFrequencyRangeFromPhysicalChannelConfigs(Ljava/util/List;Landroid/telephony/ServiceState;)Z

    move-result v0

    if-eqz v0, :cond_96

    .line 1782
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNrFrequencyChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v0}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants()V

    goto :goto_97

    :cond_96
    move v5, v6

    .line 1786
    :goto_97
    invoke-static {p1}, Lcom/android/internal/telephony/ServiceStateTracker;->getBandwidthsFromConfigs(Ljava/util/List;)[I

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-static {v0, v1}, Lcom/android/internal/telephony/RatRatcheter;->updateBandwidths([ILandroid/telephony/ServiceState;)Z

    move-result v0

    or-int/2addr v0, v5

    .line 1788
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/Phone;->notifyPhysicalChannelConfig(Ljava/util/List;)V

    if-eqz v0, :cond_59d

    .line 1791
    iget-object p1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifyServiceStateChanged(Landroid/telephony/ServiceState;)V

    .line 1792
    iget-object p1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mServiceStateChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p1}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants()V

    .line 1793
    invoke-static {}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->getInstance()Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    move-result-object p1

    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    .line 1794
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 1793
    invoke-virtual {p1, v0, v1}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeServiceStateChanged(ILandroid/telephony/ServiceState;)V

    .line 1795
    iget-object p1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getVoiceCallSessionStats()Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;

    move-result-object p1

    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->onServiceStateChanged(Landroid/telephony/ServiceState;)V

    .line 1796
    iget-object p1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object p1

    check-cast p1, Lcom/android/internal/telephony/imsphone/ImsPhone;

    if-eqz p1, :cond_e4

    .line 1798
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getImsStats()Lcom/android/internal/telephony/metrics/ImsStats;

    move-result-object p1

    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/metrics/ImsStats;->onServiceStateChanged(Landroid/telephony/ServiceState;)V

    .line 1800
    :cond_e4
    iget-object p1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mServiceStateStats:Lcom/android/internal/telephony/metrics/ServiceStateStats;

    iget-object p0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/metrics/ServiceStateStats;->onServiceStateChanged(Landroid/telephony/ServiceState;)V

    return-void

    .line 1406
    :pswitch_ec
    const-string v0, "EVENT_RADIO_POWER_OFF_DONE"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1407
    iget-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDeviceShuttingDown:Z

    if-eqz v0, :cond_102

    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()I

    move-result v0

    if-eq v0, v3, :cond_102

    .line 1412
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, v4}, Lcom/android/internal/telephony/CommandsInterface;->requestShutdown(Landroid/os/Message;)V

    .line 1415
    :cond_102
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 1416
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_59d

    .line 1417
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EVENT_RADIO_POWER_OFF_DONE: exception="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ServiceStateTracker;->loge(Ljava/lang/String;)V

    .line 1418
    invoke-static {}, Lcom/android/internal/telephony/satellite/SatelliteController;->getInstance()Lcom/android/internal/telephony/satellite/SatelliteController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/satellite/SatelliteController;->onPowerOffCellularRadioFailed()V

    return-void

    .line 1622
    :pswitch_128
    const-string p1, "EVENT_IMS_SERVICE_STATE_CHANGED"

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1625
    iget-object p1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result p1

    if-eqz p1, :cond_59d

    .line 1626
    iget-object p0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifyServiceStateChanged(Landroid/telephony/ServiceState;)V

    return-void

    .line 1758
    :pswitch_13f
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 1759
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_59d

    .line 1760
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 1761
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "EVENT_RADIO_POWER_FROM_CARRIER: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    .line 1762
    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/telephony/ServiceStateTracker;->setRadioPowerForReason(ZZZZI)V

    return-void

    :pswitch_16c
    move-object v7, p0

    goto/16 :goto_5e6

    :pswitch_16f
    move-object v7, p0

    .line 1585
    const-string p0, "EVENT_ALL_DATA_DISCONNECTED"

    invoke-virtual {v7, p0}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1586
    monitor-enter v7

    .line 1587
    :try_start_176
    iget-boolean p0, v7, Lcom/android/internal/telephony/ServiceStateTracker;->mPendingRadioPowerOffAfterDataOff:Z

    if-nez p0, :cond_17f

    monitor-exit v7

    return-void

    :catchall_17c
    move-exception v0

    move-object p0, v0

    goto :goto_1cc

    .line 1589
    :cond_17f
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhones()[Lcom/android/internal/telephony/Phone;

    move-result-object p0

    array-length p1, p0

    move v0, v6

    :goto_185
    if-ge v0, p1, :cond_1b9

    aget-object v1, p0, v0

    .line 1590
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getDataNetworkController()Lcom/android/internal/telephony/data/DataNetworkController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/data/DataNetworkController;->areAllDataDisconnected()Z

    move-result v2

    if-eqz v2, :cond_19d

    .line 1591
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getDataNetworkController()Lcom/android/internal/telephony/data/DataNetworkController;

    move-result-object v1

    iget-object v2, v7, Lcom/android/internal/telephony/ServiceStateTracker;->mDataDisconnectedCallback:Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;

    .line 1592
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/data/DataNetworkController;->unregisterDataNetworkControllerCallback(Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;)V

    goto :goto_1b6

    .line 1595
    :cond_19d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Still waiting for all data disconnected on phone: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1596
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1595
    invoke-virtual {v7, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    move v5, v6

    :goto_1b6
    add-int/lit8 v0, v0, 0x1

    goto :goto_185

    :cond_1b9
    if-eqz v5, :cond_1ca

    .line 1601
    iput-boolean v6, v7, Lcom/android/internal/telephony/ServiceStateTracker;->mPendingRadioPowerOffAfterDataOff:Z

    const/16 p0, 0x26

    .line 1602
    invoke-virtual {v7, p0}, Landroid/os/Handler;->removeMessages(I)V

    .line 1603
    const-string p0, "Data disconnected for all phones, turn radio off now."

    invoke-virtual {v7, p0}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1604
    invoke-virtual {v7}, Lcom/android/internal/telephony/ServiceStateTracker;->hangupAndPowerOff()V

    .line 1606
    :cond_1ca
    monitor-exit v7

    return-void

    :goto_1cc
    monitor-exit v7
    :try_end_1cd
    .catchall {:try_start_176 .. :try_end_1cd} :catchall_17c

    throw p0

    :pswitch_1ce
    move-object v7, p0

    .line 1616
    const-string p0, "EVENT_IMS_CAPABILITY_CHANGED"

    invoke-virtual {v7, p0}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1617
    invoke-virtual {v7}, Lcom/android/internal/telephony/ServiceStateTracker;->updateCarrierDisplayName()V

    .line 1618
    iget-object p0, v7, Lcom/android/internal/telephony/ServiceStateTracker;->mImsCapabilityChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants()V

    return-void

    :pswitch_1dd
    move-object v7, p0

    .line 1396
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Landroid/os/AsyncResult;

    .line 1397
    iget-object p1, p0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez p1, :cond_59d

    .line 1398
    iget-object p0, p0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p0, [I

    .line 1399
    aget p0, p0, v6

    if-ne p0, v5, :cond_1ef

    goto :goto_1f0

    :cond_1ef
    move v5, v6

    .line 1400
    :goto_1f0
    iget-object p0, v7, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/GsmCdmaPhone;->setImsRegistrationState(Z)V

    .line 1401
    iput-boolean v5, v7, Lcom/android/internal/telephony/ServiceStateTracker;->mImsRegistered:Z

    return-void

    :pswitch_1f8
    move-object v7, p0

    .line 1392
    iget-object p0, v7, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 p1, 0x2f

    invoke-virtual {v7, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/android/internal/telephony/CommandsInterface;->getImsRegistrationState(Landroid/os/Message;)V

    return-void

    :pswitch_205
    move-object v7, p0

    .line 1610
    const-string p0, "EVENT_CHANGE_IMS_STATE:"

    invoke-virtual {v7, p0}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1612
    invoke-virtual {v7}, Lcom/android/internal/telephony/ServiceStateTracker;->setPowerStateToDesired()V

    return-void

    :pswitch_20f
    move-object v7, p0

    .line 1339
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz p0, :cond_24d

    .line 1340
    check-cast p0, Landroid/os/AsyncResult;

    .line 1341
    iget-object p1, p0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz p1, :cond_233

    .line 1342
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "EVENT_GET_CELL_INFO_LIST: error ret null, e="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v7, p1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1343
    iget-object p0, p0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    goto :goto_271

    .line 1344
    :cond_233
    iget-object p0, p0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez p0, :cond_23d

    .line 1345
    const-string p0, "Invalid CellInfo result"

    invoke-virtual {v7, p0}, Lcom/android/internal/telephony/ServiceStateTracker;->loge(Ljava/lang/String;)V

    goto :goto_270

    .line 1347
    :cond_23d
    check-cast p0, Ljava/util/List;

    .line 1348
    invoke-virtual {v7, p0}, Lcom/android/internal/telephony/ServiceStateTracker;->updateOperatorNameForCellInfo(Ljava/util/List;)V

    .line 1349
    iput-object p0, v7, Lcom/android/internal/telephony/ServiceStateTracker;->mLastCellInfoList:Ljava/util/List;

    .line 1350
    iget-object p1, v7, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/Phone;->notifyCellInfo(Ljava/util/List;)V

    move-object v13, v4

    move-object v4, p0

    move-object p0, v13

    goto :goto_271

    .line 1356
    :cond_24d
    iget-object p0, v7, Lcom/android/internal/telephony/ServiceStateTracker;->mPendingCellInfoRequests:Ljava/util/List;

    monitor-enter p0

    .line 1359
    :try_start_250
    iget-boolean p1, v7, Lcom/android/internal/telephony/ServiceStateTracker;->mIsPendingCellInfoRequest:Z

    if-nez p1, :cond_259

    monitor-exit p0

    return-void

    :catchall_256
    move-exception v0

    move-object p1, v0

    goto :goto_29f

    .line 1363
    :cond_259
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 1364
    iget-wide v2, v7, Lcom/android/internal/telephony/ServiceStateTracker;->mLastCellInfoReqTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x7d0

    cmp-long p1, v0, v2

    if-gez p1, :cond_268

    .line 1365
    monitor-exit p0

    return-void

    .line 1369
    :cond_268
    const-string p1, "Timeout waiting for CellInfo; (everybody panic)!"

    invoke-virtual {v7, p1}, Lcom/android/internal/telephony/ServiceStateTracker;->loge(Ljava/lang/String;)V

    .line 1370
    iput-object v4, v7, Lcom/android/internal/telephony/ServiceStateTracker;->mLastCellInfoList:Ljava/util/List;

    .line 1373
    monitor-exit p0
    :try_end_270
    .catchall {:try_start_250 .. :try_end_270} :catchall_256

    :goto_270
    move-object p0, v4

    .line 1375
    :goto_271
    iget-object p1, v7, Lcom/android/internal/telephony/ServiceStateTracker;->mPendingCellInfoRequests:Ljava/util/List;

    monitor-enter p1

    .line 1378
    :try_start_274
    iget-boolean v0, v7, Lcom/android/internal/telephony/ServiceStateTracker;->mIsPendingCellInfoRequest:Z

    if-eqz v0, :cond_29b

    .line 1380
    iput-boolean v6, v7, Lcom/android/internal/telephony/ServiceStateTracker;->mIsPendingCellInfoRequest:Z

    .line 1381
    iget-object v0, v7, Lcom/android/internal/telephony/ServiceStateTracker;->mPendingCellInfoRequests:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_280
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_296

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Message;

    .line 1382
    invoke-static {v1, v4, p0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1383
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_280

    :catchall_293
    move-exception v0

    move-object p0, v0

    goto :goto_29d

    .line 1385
    :cond_296
    iget-object p0, v7, Lcom/android/internal/telephony/ServiceStateTracker;->mPendingCellInfoRequests:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    .line 1387
    :cond_29b
    monitor-exit p1

    return-void

    :goto_29d
    monitor-exit p1
    :try_end_29e
    .catchall {:try_start_274 .. :try_end_29e} :catchall_293

    throw p0

    .line 1373
    :goto_29f
    :try_start_29f
    monitor-exit p0
    :try_end_2a0
    .catchall {:try_start_29f .. :try_end_2a0} :catchall_256

    throw p1

    :pswitch_2a1
    move-object v7, p0

    .line 1312
    invoke-direct {v7}, Lcom/android/internal/telephony/ServiceStateTracker;->isSimAbsent()Z

    move-result p0

    if-eqz p0, :cond_2bb

    .line 1313
    const-string p0, "EVENT_ICC_CHANGED: SIM absent"

    invoke-virtual {v7, p0}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1315
    invoke-direct {v7}, Lcom/android/internal/telephony/ServiceStateTracker;->cancelAllNotifications()V

    .line 1317
    iput-object v4, v7, Lcom/android/internal/telephony/ServiceStateTracker;->mMdn:Ljava/lang/String;

    .line 1318
    iput-object v4, v7, Lcom/android/internal/telephony/ServiceStateTracker;->mMin:Ljava/lang/String;

    .line 1319
    iput-boolean v6, v7, Lcom/android/internal/telephony/ServiceStateTracker;->mIsMinInfoReady:Z

    .line 1325
    iget-object p0, v7, Lcom/android/internal/telephony/ServiceStateTracker;->mCdnr:Lcom/android/internal/telephony/cdnr/CarrierDisplayNameResolver;

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameResolver;->updateEfFromUsim(Lcom/android/internal/telephony/uicc/SIMRecords;)V

    .line 1327
    :cond_2bb
    invoke-virtual {v7}, Lcom/android/internal/telephony/ServiceStateTracker;->onUpdateIccAvailability()V

    .line 1328
    iget-object p0, v7, Lcom/android/internal/telephony/ServiceStateTracker;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz p0, :cond_2ca

    .line 1329
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getState()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    move-result-object p0

    sget-object p1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_READY:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    if-eq p0, p1, :cond_59d

    .line 1330
    :cond_2ca
    iput-boolean v6, v7, Lcom/android/internal/telephony/ServiceStateTracker;->mIsSimReady:Z

    .line 1331
    invoke-virtual {v7}, Lcom/android/internal/telephony/ServiceStateTracker;->updateCarrierDisplayName()V

    return-void

    :pswitch_2d0
    move-object v7, p0

    .line 1750
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Landroid/os/AsyncResult;

    .line 1751
    iget-object p1, p0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez p1, :cond_59d

    .line 1752
    iget-object p0, p0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p0, [I

    .line 1753
    aget p0, p0, v6

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v7, Lcom/android/internal/telephony/ServiceStateTracker;->mPrlVersion:Ljava/lang/String;

    return-void

    :pswitch_2e6
    move-object v7, p0

    .line 1632
    iget-object p0, v7, Lcom/android/internal/telephony/ServiceStateTracker;->mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->getCdmaSubscriptionSource()I

    move-result p0

    invoke-direct {v7, p0}, Lcom/android/internal/telephony/ServiceStateTracker;->handleCdmaSubscriptionSource(I)V

    return-void

    :pswitch_2f1
    move-object v7, p0

    .line 1304
    monitor-enter v7

    .line 1305
    :try_start_2f3
    iput-boolean v6, v7, Lcom/android/internal/telephony/ServiceStateTracker;->mPendingRadioPowerOffAfterDataOff:Z

    .line 1306
    const-string p0, "Wait for all data networks torn down timed out. Power off now."

    invoke-virtual {v7, p0}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1307
    invoke-virtual {v7}, Lcom/android/internal/telephony/ServiceStateTracker;->hangupAndPowerOff()V

    .line 1308
    monitor-exit v7

    return-void

    :catchall_2ff
    move-exception v0

    move-object p0, v0

    monitor-exit v7
    :try_end_302
    .catchall {:try_start_2f3 .. :try_end_302} :catchall_2ff

    throw p0

    :pswitch_303
    move-object v7, p0

    .line 1737
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Landroid/os/AsyncResult;

    .line 1738
    iget-object p1, p0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez p1, :cond_59d

    .line 1739
    iget-object p0, p0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p0, [I

    .line 1740
    aget p0, p0, v6

    const/16 p1, 0x8

    if-eq p0, p1, :cond_31a

    const/16 p1, 0xa

    if-ne p0, p1, :cond_59d

    .line 1743
    :cond_31a
    const-string p0, "EVENT_OTA_PROVISION_STATUS_CHANGE: Complete, Reload MDN"

    invoke-virtual {v7, p0}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1744
    iget-object p0, v7, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 p1, 0x22

    invoke-virtual {v7, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/android/internal/telephony/CommandsInterface;->getCDMASubscription(Landroid/os/Message;)V

    return-void

    :pswitch_32b
    move-object v7, p0

    .line 1651
    invoke-virtual {v7}, Lcom/android/internal/telephony/ServiceStateTracker;->updatePhoneObject()V

    .line 1654
    iget-object p0, v7, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {v7, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/android/internal/telephony/CommandsInterface;->getNetworkSelectionMode(Landroid/os/Message;)V

    .line 1659
    invoke-direct {v7}, Lcom/android/internal/telephony/ServiceStateTracker;->getSubscriptionInfoAndStartPollingThreads()V

    return-void

    :pswitch_33c
    move-object v7, p0

    .line 1663
    iget-object p0, v7, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result p0

    if-nez p0, :cond_59d

    .line 1664
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Landroid/os/AsyncResult;

    .line 1666
    iget-object p1, p0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez p1, :cond_59d

    .line 1667
    iget-object p0, p0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p0, [Ljava/lang/String;

    if-eqz p0, :cond_3a6

    .line 1668
    array-length p1, p0

    const/4 v0, 0x5

    if-lt p1, v0, :cond_3a6

    .line 1669
    aget-object p1, p0, v6

    iput-object p1, v7, Lcom/android/internal/telephony/ServiceStateTracker;->mMdn:Ljava/lang/String;

    .line 1670
    aget-object p1, p0, v5

    aget-object v0, p0, v3

    invoke-virtual {v7, p1, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->parseSidNid(Ljava/lang/String;Ljava/lang/String;)V

    .line 1672
    aget-object p1, p0, v1

    iput-object p1, v7, Lcom/android/internal/telephony/ServiceStateTracker;->mMin:Ljava/lang/String;

    const/4 p1, 0x4

    .line 1673
    aget-object p0, p0, p1

    iput-object p0, v7, Lcom/android/internal/telephony/ServiceStateTracker;->mPrlVersion:Ljava/lang/String;

    .line 1674
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "GET_CDMA_SUBSCRIPTION: MDN="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, v7, Lcom/android/internal/telephony/ServiceStateTracker;->mMdn:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v7, p0}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1676
    iput-boolean v5, v7, Lcom/android/internal/telephony/ServiceStateTracker;->mIsMinInfoReady:Z

    .line 1678
    invoke-virtual {v7}, Lcom/android/internal/telephony/ServiceStateTracker;->updateOtaspState()V

    .line 1680
    invoke-direct {v7}, Lcom/android/internal/telephony/ServiceStateTracker;->notifyCdmaSubscriptionInfoReady()V

    .line 1682
    iget-boolean p0, v7, Lcom/android/internal/telephony/ServiceStateTracker;->mIsSubscriptionFromRuim:Z

    if-nez p0, :cond_3a0

    iget-object p0, v7, Lcom/android/internal/telephony/ServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz p0, :cond_3a0

    .line 1684
    const-string p0, "GET_CDMA_SUBSCRIPTION set imsi in mIccRecords"

    invoke-virtual {v7, p0}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1686
    iget-object p0, v7, Lcom/android/internal/telephony/ServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    invoke-virtual {v7}, Lcom/android/internal/telephony/ServiceStateTracker;->getImsi()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/IccRecords;->setImsi(Ljava/lang/String;)V

    return-void

    .line 1689
    :cond_3a0
    const-string p0, "GET_CDMA_SUBSCRIPTION either mIccRecords is null or NV type device - not setting Imsi in mIccRecords"

    invoke-virtual {v7, p0}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    return-void

    .line 1695
    :cond_3a6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "GET_CDMA_SUBSCRIPTION: error parsing cdmaSubscription params num="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p0, p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v7, p0}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    return-void

    :pswitch_3bc
    move-object v7, p0

    .line 1704
    iget-object p0, v7, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result p0

    if-nez p0, :cond_59d

    .line 1705
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "EVENT_RUIM_RECORDS_LOADED: what="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v7, p0}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1706
    iget-object p0, v7, Lcom/android/internal/telephony/ServiceStateTracker;->mCdnr:Lcom/android/internal/telephony/cdnr/CarrierDisplayNameResolver;

    iget-object p1, v7, Lcom/android/internal/telephony/ServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    check-cast p1, Lcom/android/internal/telephony/uicc/RuimRecords;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameResolver;->updateEfFromRuim(Lcom/android/internal/telephony/uicc/RuimRecords;)V

    .line 1707
    invoke-virtual {v7}, Lcom/android/internal/telephony/ServiceStateTracker;->updatePhoneObject()V

    .line 1708
    iget-object p0, v7, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeCdma()Z

    move-result p0

    if-eqz p0, :cond_3f3

    .line 1709
    invoke-virtual {v7}, Lcom/android/internal/telephony/ServiceStateTracker;->updateCarrierDisplayName()V

    return-void

    .line 1711
    :cond_3f3
    iget-object p0, v7, Lcom/android/internal/telephony/ServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    check-cast p0, Lcom/android/internal/telephony/uicc/RuimRecords;

    if-eqz p0, :cond_424

    .line 1718
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/RuimRecords;->getMdn()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v7, Lcom/android/internal/telephony/ServiceStateTracker;->mMdn:Ljava/lang/String;

    .line 1719
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/RuimRecords;->isProvisioned()Z

    move-result p1

    if-eqz p1, :cond_41e

    .line 1720
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/RuimRecords;->getMin()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v7, Lcom/android/internal/telephony/ServiceStateTracker;->mMin:Ljava/lang/String;

    .line 1721
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/RuimRecords;->getSid()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/RuimRecords;->getNid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, p1, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->parseSidNid(Ljava/lang/String;Ljava/lang/String;)V

    .line 1722
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/RuimRecords;->getPrlVersion()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v7, Lcom/android/internal/telephony/ServiceStateTracker;->mPrlVersion:Ljava/lang/String;

    .line 1723
    iput-boolean v5, v7, Lcom/android/internal/telephony/ServiceStateTracker;->mIsMinInfoReady:Z

    .line 1725
    :cond_41e
    invoke-virtual {v7}, Lcom/android/internal/telephony/ServiceStateTracker;->updateOtaspState()V

    .line 1727
    invoke-direct {v7}, Lcom/android/internal/telephony/ServiceStateTracker;->notifyCdmaSubscriptionInfoReady()V

    .line 1732
    :cond_424
    invoke-direct {v7, v6}, Lcom/android/internal/telephony/ServiceStateTracker;->pollStateInternal(Z)V

    return-void

    :pswitch_428
    move-object v7, p0

    .line 1636
    iget-object p0, v7, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getLteOnCdmaMode()I

    move-result p0

    if-ne p0, v5, :cond_43a

    .line 1638
    const-string p0, "Receive EVENT_RUIM_READY"

    invoke-virtual {v7, p0}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1639
    invoke-direct {v7, v6}, Lcom/android/internal/telephony/ServiceStateTracker;->pollStateInternal(Z)V

    goto :goto_442

    .line 1641
    :cond_43a
    const-string p0, "Receive EVENT_RUIM_READY and Send Request getCDMASubscription."

    invoke-virtual {v7, p0}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1642
    invoke-direct {v7}, Lcom/android/internal/telephony/ServiceStateTracker;->getSubscriptionInfoAndStartPollingThreads()V

    .line 1646
    :goto_442
    iget-object p0, v7, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {v7, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/android/internal/telephony/CommandsInterface;->getNetworkSelectionMode(Landroid/os/Message;)V

    return-void

    :pswitch_44c
    move-object v7, p0

    .line 1572
    iget-object p0, v7, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result p0

    if-eqz p0, :cond_59d

    .line 1576
    const-string p0, "EVENT_RESTRICTED_STATE_CHANGED"

    invoke-virtual {v7, p0}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1578
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Landroid/os/AsyncResult;

    .line 1580
    invoke-direct {v7, p0}, Lcom/android/internal/telephony/ServiceStateTracker;->onRestrictedStateChanged(Landroid/os/AsyncResult;)V

    return-void

    :pswitch_462
    move-object v7, p0

    .line 1558
    iget-object p0, v7, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result p0

    if-eqz p0, :cond_49b

    iget-object p0, v7, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    if-eqz p0, :cond_49b

    .line 1559
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getDataRegistrationState()I

    move-result p0

    iget-object p1, v7, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result p1

    invoke-direct {v7, p0, p1}, Lcom/android/internal/telephony/ServiceStateTracker;->isGprsConsistent(II)Z

    move-result p0

    if-nez p0, :cond_49b

    .line 1564
    iget-object p0, v7, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 1565
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object p0

    iget-object p1, v7, Lcom/android/internal/telephony/ServiceStateTracker;->mCellIdentity:Landroid/telephony/CellIdentity;

    invoke-static {p1}, Lcom/android/internal/telephony/ServiceStateTracker;->getCidFromCellIdentity(Landroid/telephony/CellIdentity;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const p1, 0xc3bb

    .line 1564
    invoke-static {p1, p0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1566
    iput-boolean v5, v7, Lcom/android/internal/telephony/ServiceStateTracker;->mReportedGprsNoReg:Z

    .line 1568
    :cond_49b
    iput-boolean v6, v7, Lcom/android/internal/telephony/ServiceStateTracker;->mStartedGprsRegCheck:Z

    return-void

    .line 1532
    :pswitch_49e
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Landroid/os/AsyncResult;

    .line 1533
    iget-object p1, p0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz p1, :cond_59d

    .line 1534
    check-cast p1, Landroid/os/Message;

    invoke-static {p1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object p1

    iget-object v0, p0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    iput-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1536
    iget-object p0, p0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast p0, Landroid/os/Message;

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void

    :pswitch_4b8
    move-object v7, p0

    .line 1525
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Landroid/os/AsyncResult;

    const/16 p1, 0x15

    .line 1527
    iget-object p0, p0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    invoke-virtual {v7, p1, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 1528
    iget-object p1, v7, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget v0, v7, Lcom/android/internal/telephony/ServiceStateTracker;->mAllowedNetworkTypes:I

    invoke-interface {p1, v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->setAllowedNetworkTypesBitmap(ILandroid/os/Message;)V

    return-void

    :pswitch_4cd
    move-object v7, p0

    .line 1541
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Landroid/os/AsyncResult;

    .line 1543
    iget-object p1, p0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    const/4 v0, 0x7

    if-nez p1, :cond_4e0

    .line 1544
    iget-object p1, p0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, [I

    aget p1, p1, v6

    iput p1, v7, Lcom/android/internal/telephony/ServiceStateTracker;->mAllowedNetworkTypes:I

    goto :goto_4e6

    .line 1546
    :cond_4e0
    invoke-static {v0}, Landroid/telephony/RadioAccessFamily;->getRafFromNetworkType(I)I

    move-result p1

    iput p1, v7, Lcom/android/internal/telephony/ServiceStateTracker;->mAllowedNetworkTypes:I

    :goto_4e6
    const/16 p1, 0x14

    .line 1550
    iget-object p0, p0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    invoke-virtual {v7, p1, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 1551
    invoke-static {v0}, Landroid/telephony/RadioAccessFamily;->getRafFromNetworkType(I)I

    move-result p1

    .line 1554
    iget-object v0, v7, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p0}, Lcom/android/internal/telephony/CommandsInterface;->setAllowedNetworkTypesBitmap(ILandroid/os/Message;)V

    return-void

    :pswitch_4f8
    move-object v7, p0

    .line 1515
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Landroid/os/AsyncResult;

    .line 1517
    iget-object p0, p0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez p0, :cond_59d

    .line 1518
    iget-object p0, v7, Lcom/android/internal/telephony/ServiceStateTracker;->mRegStateManagers:Landroid/util/SparseArray;

    invoke-virtual {p0, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/NetworkRegistrationManager;

    const/16 p1, 0xf

    .line 1520
    invoke-virtual {v7, p1, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1519
    invoke-virtual {p0, v5, p1}, Lcom/android/internal/telephony/NetworkRegistrationManager;->requestNetworkRegistrationInfo(ILandroid/os/Message;)V

    return-void

    :pswitch_513
    move-object v7, p0

    const/4 p0, -0x1

    .line 1426
    iput p0, v7, Lcom/android/internal/telephony/ServiceStateTracker;->mPrevSubId:I

    .line 1427
    iput-boolean v5, v7, Lcom/android/internal/telephony/ServiceStateTracker;->mIsSimReady:Z

    .line 1428
    invoke-direct {v7, v6}, Lcom/android/internal/telephony/ServiceStateTracker;->pollStateInternal(Z)V

    return-void

    :pswitch_51d
    move-object v7, p0

    .line 1505
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "EVENT_SIM_RECORDS_LOADED: what="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v7, p0}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1506
    invoke-virtual {v7}, Lcom/android/internal/telephony/ServiceStateTracker;->updatePhoneObject()V

    .line 1507
    invoke-virtual {v7}, Lcom/android/internal/telephony/ServiceStateTracker;->updateOtaspState()V

    .line 1508
    iget-object p0, v7, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result p0

    if-eqz p0, :cond_59d

    .line 1509
    iget-object p0, v7, Lcom/android/internal/telephony/ServiceStateTracker;->mCdnr:Lcom/android/internal/telephony/cdnr/CarrierDisplayNameResolver;

    iget-object p1, v7, Lcom/android/internal/telephony/ServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    check-cast p1, Lcom/android/internal/telephony/uicc/SIMRecords;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameResolver;->updateEfFromUsim(Lcom/android/internal/telephony/uicc/SIMRecords;)V

    .line 1510
    invoke-virtual {v7}, Lcom/android/internal/telephony/ServiceStateTracker;->updateCarrierDisplayName()V

    return-void

    :pswitch_54f
    move-object v7, p0

    .line 1450
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Landroid/os/AsyncResult;

    .line 1451
    iget-object p1, p0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez p1, :cond_56e

    .line 1452
    iget-object p0, p0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p0, Landroid/telephony/NetworkRegistrationInfo;

    .line 1453
    invoke-virtual {p0}, Landroid/telephony/NetworkRegistrationInfo;->getCellIdentity()Landroid/telephony/CellIdentity;

    move-result-object p0

    .line 1454
    invoke-direct {v7, p0}, Lcom/android/internal/telephony/ServiceStateTracker;->updateOperatorNameForCellIdentity(Landroid/telephony/CellIdentity;)V

    .line 1455
    iput-object p0, v7, Lcom/android/internal/telephony/ServiceStateTracker;->mCellIdentity:Landroid/telephony/CellIdentity;

    .line 1456
    iget-object p0, v7, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v7}, Lcom/android/internal/telephony/ServiceStateTracker;->getCellIdentity()Landroid/telephony/CellIdentity;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifyLocationChanged(Landroid/telephony/CellIdentity;)V

    .line 1461
    :cond_56e
    invoke-virtual {v7}, Lcom/android/internal/telephony/ServiceStateTracker;->disableSingleLocationUpdate()V

    return-void

    :pswitch_572
    move-object v7, p0

    .line 1473
    const-string p0, "EVENT_POLL_STATE_NETWORK_SELECTION_MODE"

    invoke-virtual {v7, p0}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1474
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Landroid/os/AsyncResult;

    .line 1475
    iget-object v0, v7, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-eqz v0, :cond_58a

    .line 1476
    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v7, p1, p0}, Lcom/android/internal/telephony/ServiceStateTracker;->handlePollStateResult(ILandroid/os/AsyncResult;)V

    return-void

    .line 1478
    :cond_58a
    iget-object p1, p0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez p1, :cond_59e

    iget-object p0, p0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz p0, :cond_59e

    .line 1479
    check-cast p0, [I

    .line 1480
    aget p0, p0, v6

    if-ne p0, v5, :cond_59d

    .line 1481
    iget-object p0, v7, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/Phone;->setNetworkSelectionModeAutomatic(Landroid/os/Message;)V

    :cond_59d
    return-void

    .line 1484
    :cond_59e
    const-string p0, "Unable to getNetworkSelectionMode"

    invoke-virtual {v7, p0}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    return-void

    :pswitch_5a4
    move-object v7, p0

    .line 1490
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Landroid/os/AsyncResult;

    .line 1492
    iget-object p0, p0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p0, [Ljava/lang/Object;

    .line 1493
    aget-object p1, p0, v6

    move-object v8, p1

    check-cast v8, Ljava/lang/String;

    .line 1494
    aget-object p1, p0, v5

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    .line 1496
    array-length p1, p0

    if-lt p1, v1, :cond_5c7

    .line 1497
    aget-object p0, p0, v3

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    :goto_5c5
    move-wide v11, p0

    goto :goto_5ca

    :cond_5c7
    const-wide/16 p0, 0x0

    goto :goto_5c5

    .line 1500
    :goto_5ca
    invoke-direct/range {v7 .. v12}, Lcom/android/internal/telephony/ServiceStateTracker;->setTimeFromNITZString(Ljava/lang/String;JJ)V

    return-void

    :pswitch_5ce
    move-object v7, p0

    .line 1468
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Landroid/os/AsyncResult;

    .line 1469
    invoke-virtual {v7, v0, p0}, Lcom/android/internal/telephony/ServiceStateTracker;->handlePollStateResult(ILandroid/os/AsyncResult;)V

    return-void

    :pswitch_5d7
    move-object v7, p0

    .line 1446
    invoke-direct {v7, v5}, Lcom/android/internal/telephony/ServiceStateTracker;->pollStateInternal(Z)V

    return-void

    :pswitch_5dc
    move-object v7, p0

    .line 1432
    iget-object p0, v7, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {p0}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()I

    move-result p0

    invoke-static {p0}, Lcom/android/internal/telephony/metrics/RadioPowerStateStats;->onRadioStateChanged(I)V

    .line 1435
    :goto_5e6
    iget-object p0, v7, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result p0

    if-nez p0, :cond_5ff

    iget-object p0, v7, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 1436
    invoke-interface {p0}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()I

    move-result p0

    if-ne p0, v5, :cond_5ff

    .line 1437
    iget-object p0, v7, Lcom/android/internal/telephony/ServiceStateTracker;->mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->getCdmaSubscriptionSource()I

    move-result p0

    invoke-direct {v7, p0}, Lcom/android/internal/telephony/ServiceStateTracker;->handleCdmaSubscriptionSource(I)V

    .line 1440
    :cond_5ff
    invoke-virtual {v7}, Lcom/android/internal/telephony/ServiceStateTracker;->setPowerStateToDesired()V

    .line 1442
    invoke-direct {v7, v5}, Lcom/android/internal/telephony/ServiceStateTracker;->pollStateInternal(Z)V

    return-void

    :pswitch_data_606
    .packed-switch 0x1
        :pswitch_5dc
        :pswitch_5d7
        :pswitch_c
        :pswitch_5ce
        :pswitch_5ce
        :pswitch_5ce
        :pswitch_5ce
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_5a4
        :pswitch_c
        :pswitch_c
        :pswitch_572
        :pswitch_54f
        :pswitch_51d
        :pswitch_513
        :pswitch_4f8
        :pswitch_4cd
        :pswitch_4b8
        :pswitch_49e
        :pswitch_462
        :pswitch_44c
        :pswitch_c
        :pswitch_c
        :pswitch_428
        :pswitch_3bc
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_33c
        :pswitch_32b
        :pswitch_c
        :pswitch_303
        :pswitch_2f1
        :pswitch_2e6
        :pswitch_2d0
        :pswitch_c
        :pswitch_2a1
        :pswitch_20f
        :pswitch_20f
        :pswitch_205
        :pswitch_1f8
        :pswitch_1dd
        :pswitch_1ce
        :pswitch_16f
        :pswitch_16c
        :pswitch_13f
        :pswitch_c
        :pswitch_128
        :pswitch_ec
        :pswitch_6c
        :pswitch_4f
        :pswitch_c
        :pswitch_4b
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_42
        :pswitch_3a
        :pswitch_c
        :pswitch_23
    .end packed-switch
.end method

.method protected blacklist handlePollStateResult(ILandroid/os/AsyncResult;)V
    .registers 7

    .line 2034
    iget-object v0, p2, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPollingContext:[I

    if-eq v0, v1, :cond_8

    goto/16 :goto_27c

    .line 2036
    :cond_8
    iget-object v0, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_76

    .line 2039
    instance-of p1, v0, Ljava/lang/IllegalStateException;

    if-eqz p1, :cond_28

    .line 2040
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "handlePollStateResult exception "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2043
    :cond_28
    iget-object p1, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v0, p1, Lcom/android/internal/telephony/CommandException;

    if-eqz v0, :cond_35

    .line 2044
    check-cast p1, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {p1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object p1

    goto :goto_36

    :cond_35
    const/4 p1, 0x0

    .line 2047
    :goto_36
    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->RADIO_NOT_AVAILABLE:Lcom/android/internal/telephony/CommandException$Error;

    if-ne p1, v0, :cond_5b

    .line 2048
    const-string p1, "handlePollStateResult: RIL returned RADIO_NOT_AVAILABLE."

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ServiceStateTracker;->loge(Ljava/lang/String;)V

    .line 2049
    iget-object p1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {p1}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()I

    move-result p1

    if-ne p1, v2, :cond_4b

    .line 2050
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->cancelPollState()V

    return-void

    .line 2052
    :cond_4b
    iget-object p1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 2053
    invoke-interface {p1}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()I

    move-result p1

    if-nez p1, :cond_54

    move v1, v2

    .line 2052
    :cond_54
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->handlePollStateInternalForRadioOffOrUnavailable(Z)V

    .line 2054
    invoke-direct {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->pollStateDone()V

    return-void

    .line 2059
    :cond_5b
    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->OP_NOT_ALLOWED_BEFORE_REG_NW:Lcom/android/internal/telephony/CommandException$Error;

    if-eq p1, v0, :cond_8f

    .line 2060
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "handlePollStateResult: RIL returned an error where it must succeed: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ServiceStateTracker;->loge(Ljava/lang/String;)V

    goto :goto_8f

    .line 2064
    :cond_76
    :try_start_76
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/ServiceStateTracker;->handlePollStateResultMessage(ILandroid/os/AsyncResult;)V
    :try_end_79
    .catch Ljava/lang/RuntimeException; {:try_start_76 .. :try_end_79} :catch_7a

    goto :goto_8f

    :catch_7a
    move-exception p1

    .line 2066
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Exception while polling service state. Probably malformed RIL response."

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ServiceStateTracker;->loge(Ljava/lang/String;)V

    .line 2069
    :cond_8f
    :goto_8f
    iget-object p1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPollingContext:[I

    aget p2, p1, v1

    sub-int/2addr p2, v2

    aput p2, p1, v1

    if-nez p2, :cond_27c

    .line 2072
    iget-object p1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    iget-boolean p2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mEmergencyOnly:Z

    invoke-virtual {p1, p2}, Landroid/telephony/ServiceState;->setEmergencyOnly(Z)V

    .line 2073
    iget-object p1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ServiceStateTracker;->combinePsRegistrationStates(Landroid/telephony/ServiceState;)V

    .line 2074
    iget-object p1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ServiceStateTracker;->updateOperatorNameForServiceState(Landroid/telephony/ServiceState;)V

    .line 2075
    iget-object p1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result p1

    if-eqz p1, :cond_b6

    .line 2076
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->updateRoamingState()V

    goto/16 :goto_279

    .line 2079
    :cond_b6
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->isSidsAllZeros()Z

    move-result p1

    if-nez p1, :cond_c9

    iget-object p1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getCdmaSystemId()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ServiceStateTracker;->isHomeSid(I)Z

    move-result p1

    if-eqz p1, :cond_c9

    move v1, v2

    .line 2084
    :cond_c9
    iget-boolean p1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIsSubscriptionFromRuim:Z

    if-eqz p1, :cond_102

    .line 2085
    iget-object p1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    .line 2086
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getVoiceRoaming()Z

    move-result p1

    iget-object p2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    .line 2085
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/ServiceStateTracker;->isRoamingBetweenOperators(ZLandroid/telephony/ServiceState;)Z

    move-result p1

    .line 2087
    iget-object p2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {p2}, Landroid/telephony/ServiceState;->getVoiceRoaming()Z

    move-result p2

    if-eq p1, p2, :cond_102

    .line 2088
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isRoamingBetweenOperators="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ". Override CDMA voice roaming to "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2090
    iget-object p2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {p2, p1}, Landroid/telephony/ServiceState;->setVoiceRoaming(Z)V

    .line 2099
    :cond_102
    iget-object p1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-static {p1}, Lcom/android/internal/telephony/ServiceStateTracker;->getRilDataRadioTechnologyForWwan(Landroid/telephony/ServiceState;)I

    move-result p1

    .line 2100
    invoke-static {p1}, Landroid/telephony/ServiceState;->isCdma(I)Z

    move-result p1

    if-eqz p1, :cond_170

    .line 2101
    iget-object p1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    .line 2102
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result p1

    if-nez p1, :cond_13e

    .line 2104
    iget-object p1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getVoiceRoaming()Z

    move-result p1

    .line 2105
    iget-object p2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {p2}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result p2

    if-eq p2, p1, :cond_170

    .line 2106
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Data roaming != Voice roaming. Override data roaming to "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2108
    iget-object p2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {p2, p1}, Landroid/telephony/ServiceState;->setDataRoaming(Z)V

    goto :goto_170

    .line 2116
    :cond_13e
    iget p1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRoamingIndicator:I

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ServiceStateTracker;->isRoamIndForHomeSystem(I)Z

    move-result p1

    .line 2117
    iget-object p2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {p2}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result p2

    if-ne p2, p1, :cond_170

    .line 2118
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isRoamIndForHomeSystem="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", override data roaming to "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    xor-int/lit8 v0, p1, 0x1

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2120
    iget-object p2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    xor-int/2addr p1, v2

    invoke-virtual {p2, p1}, Landroid/telephony/ServiceState;->setDataRoaming(Z)V

    .line 2126
    :cond_170
    :goto_170
    iget-object p1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    iget p2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDefaultRoamingIndicator:I

    invoke-virtual {p1, p2}, Landroid/telephony/ServiceState;->setCdmaDefaultRoamingIndicator(I)V

    .line 2127
    iget-object p1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    iget p2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRoamingIndicator:I

    invoke-virtual {p1, p2}, Landroid/telephony/ServiceState;->setCdmaRoamingIndicator(I)V

    .line 2129
    iget-object p1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPrlVersion:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    xor-int/lit8 p2, p1, 0x1

    if-nez p1, :cond_1e7

    .line 2132
    iget-object p1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result p1

    if-nez p1, :cond_191

    goto :goto_1e7

    .line 2136
    :cond_191
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->isSidsAllZeros()Z

    move-result p1

    if-nez p1, :cond_1f1

    if-nez v1, :cond_1a5

    .line 2137
    iget-boolean p1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIsInPrl:Z

    if-nez p1, :cond_1a5

    .line 2139
    iget-object p1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    iget v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDefaultRoamingIndicator:I

    invoke-virtual {p1, v0}, Landroid/telephony/ServiceState;->setCdmaRoamingIndicator(I)V

    goto :goto_1f1

    :cond_1a5
    const/4 p1, 0x2

    if-eqz v1, :cond_1c9

    .line 2140
    iget-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIsInPrl:Z

    if-nez v0, :cond_1c9

    .line 2142
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/ServiceState;->isPsOnlyTech(I)Z

    move-result v0

    if-eqz v0, :cond_1c3

    .line 2143
    const-string p1, "Turn off roaming indicator as voice is LTE or NR"

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2144
    iget-object p1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {p1, v2}, Landroid/telephony/ServiceState;->setCdmaRoamingIndicator(I)V

    goto :goto_1f1

    .line 2146
    :cond_1c3
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0, p1}, Landroid/telephony/ServiceState;->setCdmaRoamingIndicator(I)V

    goto :goto_1f1

    :cond_1c9
    if-nez v1, :cond_1d7

    .line 2148
    iget-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIsInPrl:Z

    if-eqz v0, :cond_1d7

    .line 2150
    iget-object p1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    iget v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRoamingIndicator:I

    invoke-virtual {p1, v0}, Landroid/telephony/ServiceState;->setCdmaRoamingIndicator(I)V

    goto :goto_1f1

    .line 2153
    :cond_1d7
    iget v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRoamingIndicator:I

    if-gt v0, p1, :cond_1e1

    .line 2154
    iget-object p1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {p1, v2}, Landroid/telephony/ServiceState;->setCdmaRoamingIndicator(I)V

    goto :goto_1f1

    .line 2157
    :cond_1e1
    iget-object p1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {p1, v0}, Landroid/telephony/ServiceState;->setCdmaRoamingIndicator(I)V

    goto :goto_1f1

    .line 2134
    :cond_1e7
    :goto_1e7
    const-string p1, "Turn off roaming indicator if !isPrlLoaded or voice RAT is unknown"

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2135
    iget-object p1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {p1, v2}, Landroid/telephony/ServiceState;->setCdmaRoamingIndicator(I)V

    .line 2162
    :cond_1f1
    :goto_1f1
    iget-object p1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mEriManager:Lcom/android/internal/telephony/cdma/EriManager;

    if-eqz p1, :cond_215

    .line 2163
    iget-object p1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getCdmaRoamingIndicator()I

    move-result p1

    .line 2164
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mEriManager:Lcom/android/internal/telephony/cdma/EriManager;

    iget v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDefaultRoamingIndicator:I

    invoke-virtual {v2, p1, v3}, Lcom/android/internal/telephony/cdma/EriManager;->getCdmaEriIconIndex(II)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/telephony/ServiceState;->setCdmaEriIconIndex(I)V

    .line 2166
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mEriManager:Lcom/android/internal/telephony/cdma/EriManager;

    iget v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDefaultRoamingIndicator:I

    invoke-virtual {v2, p1, v3}, Lcom/android/internal/telephony/cdma/EriManager;->getCdmaEriIconMode(II)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/telephony/ServiceState;->setCdmaEriIconMode(I)V

    .line 2174
    :cond_215
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Set CDMA Roaming Indicator to: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getCdmaRoamingIndicator()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ". voiceRoaming = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    .line 2175
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getVoiceRoaming()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ". dataRoaming = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    .line 2176
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", isPrlLoaded = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ". namMatch = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, " , mIsInPrl = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIsInPrl:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ", mRoamingIndicator = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRoamingIndicator:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", mDefaultRoamingIndicator= "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDefaultRoamingIndicator:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2174
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2183
    :goto_279
    invoke-direct {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->pollStateDone()V

    :cond_27c
    :goto_27c
    return-void
.end method

.method protected blacklist handlePollStateResultMessage(ILandroid/os/AsyncResult;)V
    .registers 12

    const/4 v0, 0x4

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq p1, v0, :cond_1f4

    const/4 v0, 0x0

    const/4 v5, 0x5

    if-eq p1, v5, :cond_131

    const/4 v6, 0x6

    if-eq p1, v6, :cond_113

    const/4 v6, 0x7

    if-eq p1, v6, :cond_51

    const/16 v1, 0xe

    if-eq p1, v1, :cond_2a

    .line 2528
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "handlePollStateResultMessage: Unexpected RIL response received: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ServiceStateTracker;->loge(Ljava/lang/String;)V

    return-void

    .line 2512
    :cond_2a
    iget-object p1, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, [I

    .line 2513
    iget-object p2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    aget v1, p1, v4

    if-ne v1, v3, :cond_36

    move v1, v3

    goto :goto_37

    :cond_36
    move v1, v4

    :goto_37
    invoke-virtual {p2, v1}, Landroid/telephony/ServiceState;->setIsManualSelection(Z)V

    .line 2514
    aget p1, p1, v4

    if-ne p1, v3, :cond_a2

    iget-object p1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->shouldForceAutoNetworkSelect()Z

    move-result p1

    if-eqz p1, :cond_a2

    .line 2520
    iget-object p1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/Phone;->setNetworkSelectionModeAutomatic(Landroid/os/Message;)V

    .line 2521
    const-string p1, " Forcing Automatic Network Selection, manual selection is not allowed"

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    return-void

    .line 2458
    :cond_51
    iget-object p1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result p1

    if-eqz p1, :cond_a3

    .line 2459
    iget-object p1, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, [Ljava/lang/String;

    if-eqz p1, :cond_a2

    .line 2461
    array-length p2, p1

    if-lt p2, v1, :cond_a2

    .line 2462
    iget-object p2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    aget-object v0, p1, v4

    invoke-virtual {p2, v0}, Landroid/telephony/ServiceState;->setOperatorAlphaLongRaw(Ljava/lang/String;)V

    .line 2463
    iget-object p2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    aget-object v0, p1, v3

    invoke-virtual {p2, v0}, Landroid/telephony/ServiceState;->setOperatorAlphaShortRaw(Ljava/lang/String;)V

    .line 2465
    invoke-direct {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getOperatorBrandOverride()Ljava/lang/String;

    move-result-object p2

    .line 2466
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCdnr:Lcom/android/internal/telephony/cdnr/CarrierDisplayNameResolver;

    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameResolver;->updateEfForBrandOverride(Ljava/lang/String;)V

    if-eqz p2, :cond_97

    .line 2468
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EVENT_POLL_STATE_OPERATOR: use brandOverride="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2469
    iget-object p0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    aget-object p1, p1, v2

    invoke-virtual {p0, p2, p2, p1}, Landroid/telephony/ServiceState;->setOperatorName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 2471
    :cond_97
    iget-object p0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    aget-object p2, p1, v4

    aget-object v0, p1, v3

    aget-object p1, p1, v2

    invoke-virtual {p0, p2, v0, p1}, Landroid/telephony/ServiceState;->setOperatorName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_a2
    return-void

    .line 2475
    :cond_a3
    iget-object p1, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, [Ljava/lang/String;

    if-eqz p1, :cond_10d

    .line 2477
    array-length p2, p1

    if-lt p2, v1, :cond_10d

    .line 2480
    aget-object p2, p1, v2

    const-string v0, "00000"

    if-eqz p2, :cond_c0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    if-lt p2, v5, :cond_c0

    aget-object p2, p1, v2

    .line 2481
    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_de

    .line 2482
    :cond_c0
    const-string p2, "ro.cdma.home.operator.numeric"

    invoke-static {p2, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, v2

    .line 2485
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "RIL_REQUEST_OPERATOR.response[2], the numeric,  is bad. Using SystemProperties \'ro.cdma.home.operator.numeric\'= "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v0, p1, v2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2492
    :cond_de
    iget-boolean p2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIsSubscriptionFromRuim:Z

    if-nez p2, :cond_ee

    .line 2494
    iget-object p0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    aget-object p2, p1, v4

    aget-object v0, p1, v3

    aget-object p1, p1, v2

    invoke-virtual {p0, p2, v0, p1}, Landroid/telephony/ServiceState;->setOperatorName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 2496
    :cond_ee
    invoke-direct {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getOperatorBrandOverride()Ljava/lang/String;

    move-result-object p2

    .line 2497
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCdnr:Lcom/android/internal/telephony/cdnr/CarrierDisplayNameResolver;

    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameResolver;->updateEfForBrandOverride(Ljava/lang/String;)V

    if-eqz p2, :cond_101

    .line 2499
    iget-object p0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    aget-object p1, p1, v2

    invoke-virtual {p0, p2, p2, p1}, Landroid/telephony/ServiceState;->setOperatorName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 2501
    :cond_101
    iget-object p0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    aget-object p2, p1, v4

    aget-object v0, p1, v3

    aget-object p1, p1, v2

    invoke-virtual {p0, p2, v0, p1}, Landroid/telephony/ServiceState;->setOperatorName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 2505
    :cond_10d
    const-string p1, "EVENT_POLL_STATE_OPERATOR_CDMA: error parsing opNames"

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    return-void

    .line 2381
    :cond_113
    iget-object p1, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Landroid/telephony/NetworkRegistrationInfo;

    .line 2382
    iget-object p2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {p2, p1}, Landroid/telephony/ServiceState;->addNetworkRegistrationInfo(Landroid/telephony/NetworkRegistrationInfo;)V

    .line 2385
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "handlePollStateResultMessage: PS IWLAN. "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    return-void

    .line 2391
    :cond_131
    iget-object p1, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Landroid/telephony/NetworkRegistrationInfo;

    .line 2392
    iget-object p2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {p2, p1}, Landroid/telephony/ServiceState;->addNetworkRegistrationInfo(Landroid/telephony/NetworkRegistrationInfo;)V

    .line 2394
    invoke-virtual {p1}, Landroid/telephony/NetworkRegistrationInfo;->getDataSpecificInfo()Landroid/telephony/DataSpecificRegistrationInfo;

    move-result-object p2

    .line 2395
    invoke-virtual {p1}, Landroid/telephony/NetworkRegistrationInfo;->getNetworkRegistrationState()I

    move-result v1

    .line 2396
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->regCodeToServiceState(I)I

    move-result v2

    .line 2398
    invoke-virtual {p1}, Landroid/telephony/NetworkRegistrationInfo;->getAccessNetworkTechnology()I

    move-result v5

    .line 2397
    invoke-static {v5}, Landroid/telephony/ServiceState;->networkTypeToRilRadioTechnology(I)I

    move-result v5

    .line 2401
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handlePollStateResultMessage: PS cellular. "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    if-ne v2, v3, :cond_166

    .line 2408
    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mLastPhysicalChannelConfigList:Ljava/util/List;

    .line 2411
    :cond_166
    invoke-virtual {p1}, Landroid/telephony/NetworkRegistrationInfo;->isEmergencyEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPSEmergencyOnly:Z

    .line 2412
    iget-boolean v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCSEmergencyOnly:Z

    if-nez v2, :cond_174

    if-eqz v0, :cond_173

    goto :goto_174

    :cond_173
    move v3, v4

    :cond_174
    :goto_174
    iput-boolean v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mEmergencyOnly:Z

    .line 2413
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-eqz v0, :cond_194

    .line 2414
    invoke-virtual {p1}, Landroid/telephony/NetworkRegistrationInfo;->getRejectCause()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewReasonDataDenied:I

    .line 2415
    iget p2, p2, Landroid/telephony/DataSpecificRegistrationInfo;->maxDataCalls:I

    iput p2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewMaxDataCalls:I

    .line 2416
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->regCodeIsRoaming(I)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mGsmDataRoaming:Z

    .line 2419
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0, p2}, Landroid/telephony/ServiceState;->setDataRoamingFromRegistration(Z)V

    goto :goto_1e4

    .line 2420
    :cond_194
    iget-object p2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {p2}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeCdma()Z

    move-result p2

    if-eqz p2, :cond_1ab

    .line 2421
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->regCodeIsRoaming(I)Z

    move-result p2

    .line 2422
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0, p2}, Landroid/telephony/ServiceState;->setDataRoaming(Z)V

    .line 2425
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0, p2}, Landroid/telephony/ServiceState;->setDataRoamingFromRegistration(Z)V

    goto :goto_1e4

    .line 2434
    :cond_1ab
    iget-object p2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-static {p2}, Lcom/android/internal/telephony/ServiceStateTracker;->getRilDataRadioTechnologyForWwan(Landroid/telephony/ServiceState;)I

    move-result p2

    if-nez p2, :cond_1b5

    if-nez v5, :cond_1cd

    .line 2437
    :cond_1b5
    invoke-static {p2}, Landroid/telephony/ServiceState;->isCdma(I)Z

    move-result v0

    if-eqz v0, :cond_1c1

    .line 2438
    invoke-static {v5}, Landroid/telephony/ServiceState;->isPsOnlyTech(I)Z

    move-result v0

    if-nez v0, :cond_1cd

    .line 2439
    :cond_1c1
    invoke-static {p2}, Landroid/telephony/ServiceState;->isPsOnlyTech(I)Z

    move-result p2

    if-eqz p2, :cond_1d6

    .line 2440
    invoke-static {v5}, Landroid/telephony/ServiceState;->isCdma(I)Z

    move-result p2

    if-eqz p2, :cond_1d6

    .line 2441
    :cond_1cd
    iget-object p2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {p2}, Lcom/android/internal/telephony/GsmCdmaPhone;->getSignalStrengthController()Lcom/android/internal/telephony/SignalStrengthController;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/internal/telephony/SignalStrengthController;->getSignalStrengthFromCi()V

    .line 2445
    :cond_1d6
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->regCodeIsRoaming(I)Z

    move-result p2

    .line 2446
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0, p2}, Landroid/telephony/ServiceState;->setDataRoaming(Z)V

    .line 2449
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0, p2}, Landroid/telephony/ServiceState;->setDataRoamingFromRegistration(Z)V

    .line 2452
    :goto_1e4
    iget-object p2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {p2}, Lcom/android/internal/telephony/GsmCdmaPhone;->getSignalStrengthController()Lcom/android/internal/telephony/SignalStrengthController;

    move-result-object p2

    iget-object p0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    .line 2453
    invoke-virtual {p1}, Landroid/telephony/NetworkRegistrationInfo;->getCellIdentity()Landroid/telephony/CellIdentity;

    move-result-object p1

    .line 2452
    invoke-virtual {p2, p0, p1}, Lcom/android/internal/telephony/SignalStrengthController;->updateServiceStateArfcnRsrpBoost(Landroid/telephony/ServiceState;Landroid/telephony/CellIdentity;)V

    return-void

    .line 2311
    :cond_1f4
    iget-object p1, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Landroid/telephony/NetworkRegistrationInfo;

    .line 2313
    invoke-virtual {p1}, Landroid/telephony/NetworkRegistrationInfo;->getVoiceSpecificInfo()Landroid/telephony/VoiceSpecificRegistrationInfo;

    move-result-object p2

    .line 2315
    invoke-virtual {p1}, Landroid/telephony/NetworkRegistrationInfo;->getNetworkRegistrationState()I

    move-result v0

    .line 2316
    iget-boolean v5, p2, Landroid/telephony/VoiceSpecificRegistrationInfo;->cssSupported:Z

    .line 2317
    iget-object v6, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->regCodeToServiceState(I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/telephony/ServiceState;->setVoiceRegState(I)V

    .line 2318
    iget-object v6, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v6, v5}, Landroid/telephony/ServiceState;->setCssIndicator(I)V

    .line 2319
    iget-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v5, p1}, Landroid/telephony/ServiceState;->addNetworkRegistrationInfo(Landroid/telephony/NetworkRegistrationInfo;)V

    .line 2321
    iget-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {p1}, Landroid/telephony/NetworkRegistrationInfo;->getCellIdentity()Landroid/telephony/CellIdentity;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lcom/android/internal/telephony/ServiceStateTracker;->setPhyCellInfoFromCellIdentity(Landroid/telephony/ServiceState;Landroid/telephony/CellIdentity;)V

    .line 2324
    invoke-virtual {p1}, Landroid/telephony/NetworkRegistrationInfo;->getRejectCause()I

    move-result v5

    .line 2325
    invoke-virtual {p1}, Landroid/telephony/NetworkRegistrationInfo;->isEmergencyEnabled()Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCSEmergencyOnly:Z

    if-nez v6, :cond_231

    .line 2326
    iget-boolean v6, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPSEmergencyOnly:Z

    if-eqz v6, :cond_22f

    goto :goto_231

    :cond_22f
    move v6, v4

    goto :goto_232

    :cond_231
    :goto_231
    move v6, v3

    :goto_232
    iput-boolean v6, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mEmergencyOnly:Z

    .line 2327
    iget-object v6, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v6}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v6

    if-eqz v6, :cond_246

    .line 2329
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->regCodeIsRoaming(I)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mGsmVoiceRoaming:Z

    .line 2330
    iput v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewRejectCode:I

    goto/16 :goto_2b6

    .line 2332
    :cond_246
    iget v6, p2, Landroid/telephony/VoiceSpecificRegistrationInfo;->roamingIndicator:I

    .line 2335
    iget v7, p2, Landroid/telephony/VoiceSpecificRegistrationInfo;->systemIsInPrl:I

    .line 2338
    iget p2, p2, Landroid/telephony/VoiceSpecificRegistrationInfo;->defaultRoamingIndicator:I

    .line 2340
    iput v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRegistrationState:I

    .line 2345
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->regCodeIsRoaming(I)Z

    move-result v0

    if-eqz v0, :cond_25c

    .line 2346
    invoke-direct {p0, v6}, Lcom/android/internal/telephony/ServiceStateTracker;->isRoamIndForHomeSystem(I)Z

    move-result v0

    if-nez v0, :cond_25c

    move v0, v3

    goto :goto_25d

    :cond_25c
    move v0, v4

    .line 2347
    :goto_25d
    iget-object v8, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v8, v0}, Landroid/telephony/ServiceState;->setVoiceRoaming(Z)V

    .line 2348
    iput v6, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRoamingIndicator:I

    if-eqz v7, :cond_268

    move v0, v3

    goto :goto_269

    :cond_268
    move v0, v4

    .line 2349
    :goto_269
    iput-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIsInPrl:Z

    .line 2350
    iput p2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDefaultRoamingIndicator:I

    .line 2354
    invoke-virtual {p1}, Landroid/telephony/NetworkRegistrationInfo;->getCellIdentity()Landroid/telephony/CellIdentity;

    move-result-object p2

    if-eqz p2, :cond_284

    .line 2355
    invoke-virtual {p2}, Landroid/telephony/CellIdentity;->getType()I

    move-result v0

    if-ne v0, v2, :cond_284

    .line 2356
    check-cast p2, Landroid/telephony/CellIdentityCdma;

    invoke-virtual {p2}, Landroid/telephony/CellIdentityCdma;->getSystemId()I

    move-result v4

    .line 2357
    invoke-virtual {p2}, Landroid/telephony/CellIdentityCdma;->getNetworkId()I

    move-result p2

    goto :goto_285

    :cond_284
    move p2, v4

    .line 2359
    :goto_285
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0, v4, p2}, Landroid/telephony/ServiceState;->setCdmaSystemAndNetworkId(II)V

    if-nez v5, :cond_291

    .line 2362
    const-string p2, "General"

    iput-object p2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRegistrationDeniedReason:Ljava/lang/String;

    goto :goto_29c

    :cond_291
    if-ne v5, v3, :cond_298

    .line 2364
    const-string p2, "Authentication Failure"

    iput-object p2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRegistrationDeniedReason:Ljava/lang/String;

    goto :goto_29c

    .line 2366
    :cond_298
    const-string p2, ""

    iput-object p2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRegistrationDeniedReason:Ljava/lang/String;

    .line 2369
    :goto_29c
    iget p2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRegistrationState:I

    if-ne p2, v1, :cond_2b6

    .line 2370
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Registration denied, "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRegistrationDeniedReason:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2375
    :cond_2b6
    :goto_2b6
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "handlePollStateResultMessage: CS cellular. "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method protected blacklist hangupAndPowerOff()V
    .registers 3

    .line 5217
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()I

    move-result v0

    if-nez v0, :cond_9

    return-void

    .line 5219
    :cond_9
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isInCall()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 5220
    :cond_19
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCT:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->hangupIfAlive()V

    .line 5221
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCT:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->hangupIfAlive()V

    .line 5222
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCT:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->hangupIfAlive()V

    .line 5225
    :cond_34
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x36

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    const/4 v1, 0x0

    invoke-interface {v0, v1, p0}, Lcom/android/internal/telephony/CommandsInterface;->setRadioPower(ZLandroid/os/Message;)V

    return-void
.end method

.method protected blacklist inSameCountry(Ljava/lang/String;)Z
    .registers 7

    .line 5536
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_84

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x5

    if-ge v0, v2, :cond_10

    goto/16 :goto_84

    .line 5540
    :cond_10
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getHomeOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    .line 5541
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_84

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v3, v2, :cond_21

    goto :goto_84

    :cond_21
    const/4 v2, 0x3

    .line 5546
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 5547
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 5548
    invoke-static {p1}, Lcom/android/internal/telephony/MccTable;->countryCodeForMcc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 5549
    invoke-static {v0}, Lcom/android/internal/telephony/MccTable;->countryCodeForMcc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5551
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mLocaleTracker:Lcom/android/internal/telephony/LocaleTracker;

    if-eqz v2, :cond_50

    invoke-virtual {v2}, Lcom/android/internal/telephony/LocaleTracker;->getCountryOverride()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_50

    .line 5552
    const-string p1, "inSameCountry:  countryOverride var set.  This should only be set for testing purposes to override the device location."

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 5554
    iget-object p0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mLocaleTracker:Lcom/android/internal/telephony/LocaleTracker;

    invoke-virtual {p0}, Lcom/android/internal/telephony/LocaleTracker;->getCountryOverride()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 5557
    :cond_50
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_84

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_5d

    goto :goto_84

    .line 5561
    :cond_5d
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_64

    goto :goto_83

    .line 5566
    :cond_64
    const-string v1, "us"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    const-string v4, "vi"

    if-eqz v2, :cond_76

    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_76

    return v3

    .line 5568
    :cond_76
    invoke-virtual {v4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_83

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_83

    return v3

    :cond_83
    :goto_83
    return p0

    :cond_84
    :goto_84
    return v1
.end method

.method protected blacklist isCallerOnDifferentThread()Z
    .registers 2

    .line 5527
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object p0

    if-eq v0, p0, :cond_10

    const/4 p0, 0x1

    return p0

    :cond_10
    const/4 p0, 0x0

    return p0
.end method

.method public greylist-max-r isConcurrentVoiceAndDataAllowed()Z
    .registers 5

    .line 3386
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getCssIndicator()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    return v1

    .line 3389
    :cond_a
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_32

    .line 3390
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v0

    if-nez v0, :cond_29

    .line 3393
    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 3394
    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getDataRegistrationState()I

    move-result v3

    if-eqz v3, :cond_29

    .line 3395
    iget-object p0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v0

    :cond_29
    if-eqz v0, :cond_32

    .line 3400
    invoke-static {v0}, Landroid/telephony/ServiceState;->rilRadioTechnologyToAccessNetworkType(I)I

    move-result p0

    if-eq p0, v1, :cond_32

    return v1

    :cond_32
    return v2
.end method

.method public blacklist isDeviceShuttingDown()Z
    .registers 1

    .line 5782
    iget-boolean p0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDeviceShuttingDown:Z

    return p0
.end method

.method public greylist-max-r isImsRegistered()Z
    .registers 1

    .line 5509
    iget-boolean p0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mImsRegistered:Z

    return p0
.end method

.method public blacklist isMinInfoReady()Z
    .registers 1

    .line 1940
    iget-boolean p0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIsMinInfoReady:Z

    return p0
.end method

.method protected final blacklist isNonRoamingInCdmaNetwork(Landroid/os/BaseBundle;Ljava/lang/String;)Z
    .registers 4

    .line 5777
    const-string v0, "cdma_nonroaming_networks_string_array"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->isInNetwork(Landroid/os/BaseBundle;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method protected final blacklist isNonRoamingInGsmNetwork(Landroid/os/BaseBundle;Ljava/lang/String;)Z
    .registers 4

    .line 5769
    const-string v0, "gsm_nonroaming_networks_string_array"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->isInNetwork(Landroid/os/BaseBundle;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public blacklist isPendingRadioPowerOffAfterDataOff()Z
    .registers 1

    .line 5188
    iget-boolean p0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPendingRadioPowerOffAfterDataOff:Z

    return p0
.end method

.method public blacklist isRadioOn()Z
    .registers 2

    .line 3445
    iget-object p0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {p0}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_a

    return v0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method protected final blacklist isRoamingInCdmaNetwork(Landroid/os/BaseBundle;Ljava/lang/String;)Z
    .registers 4

    .line 5773
    const-string v0, "cdma_roaming_networks_string_array"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->isInNetwork(Landroid/os/BaseBundle;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method protected final blacklist isRoamingInGsmNetwork(Landroid/os/BaseBundle;Ljava/lang/String;)Z
    .registers 4

    .line 5765
    const-string v0, "gsm_roaming_networks_string_array"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->isInNetwork(Landroid/os/BaseBundle;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method protected blacklist isSidsAllZeros()Z
    .registers 5

    .line 1874
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mHomeSystemId:[I

    if-eqz v0, :cond_13

    const/4 v0, 0x0

    move v1, v0

    .line 1875
    :goto_6
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mHomeSystemId:[I

    array-length v3, v2

    if-ge v1, v3, :cond_13

    .line 1876
    aget v2, v2, v1

    if-eqz v2, :cond_10

    return v0

    :cond_10
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_13
    const/4 p0, 0x1

    return p0
.end method

.method protected final greylist-max-r log(Ljava/lang/String;)V
    .registers 4

    .line 3363
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "] "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SST"

    invoke-static {p1, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected final greylist-max-r loge(Ljava/lang/String;)V
    .registers 4

    .line 3368
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "] "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SST"

    invoke-static {p1, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected blacklist notifyDataRegStateRilRadioTechnologyChanged(I)V
    .registers 3

    .line 1040
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDataRegStateOrRatChangedRegistrants:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RegistrantList;

    if-eqz v0, :cond_13

    .line 1042
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ServiceStateTracker;->getRegistrationInfo(I)Landroid/util/Pair;

    move-result-object p0

    if-eqz p0, :cond_13

    .line 1044
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    :cond_13
    return-void
.end method

.method protected blacklist notifyVoiceRegStateRilRadioTechnologyChanged()V
    .registers 5

    .line 1006
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v0

    .line 1007
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    .line 1008
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyVoiceRegStateRilRadioTechnologyChanged: vrs="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " rat="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1010
    iget-object p0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mVoiceRegStateOrRatChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    new-instance v2, Landroid/util/Pair;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {v2, v1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    return-void
.end method

.method public blacklist onAirplaneModeChanged(Z)V
    .registers 3

    const/4 v0, 0x0

    .line 2023
    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mLastNitzData:Lcom/android/internal/telephony/NitzData;

    .line 2024
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNitzState:Lcom/android/internal/telephony/NitzStateMachine;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/NitzStateMachine;->handleAirplaneModeChanged(Z)V

    .line 2025
    iget-object p0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mAirplaneModeChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    return-void
.end method

.method public blacklist onImsCapabilityChanged()V
    .registers 2

    const/16 v0, 0x30

    .line 3441
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public blacklist onImsServiceStateChanged()V
    .registers 2

    const/16 v0, 0x35

    .line 3409
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public blacklist onTelecomVoiceServiceStateOverrideChanged()V
    .registers 2

    const/16 v0, 0x41

    .line 5389
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method protected blacklist onUpdateIccAvailability()V
    .registers 5

    .line 3302
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    if-nez v0, :cond_6

    goto/16 :goto_79

    .line 3306
    :cond_6
    invoke-direct {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getUiccCardApplication()Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v0

    .line 3308
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eq v1, v0, :cond_79

    .line 3311
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    instance-of v2, v1, Lcom/android/internal/telephony/uicc/SIMRecords;

    const/4 v3, 0x0

    if-eqz v2, :cond_1b

    .line 3312
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCdnr:Lcom/android/internal/telephony/cdnr/CarrierDisplayNameResolver;

    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameResolver;->updateEfFromUsim(Lcom/android/internal/telephony/uicc/SIMRecords;)V

    goto :goto_24

    .line 3313
    :cond_1b
    instance-of v1, v1, Lcom/android/internal/telephony/uicc/RuimRecords;

    if-eqz v1, :cond_24

    .line 3314
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCdnr:Lcom/android/internal/telephony/cdnr/CarrierDisplayNameResolver;

    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameResolver;->updateEfFromRuim(Lcom/android/internal/telephony/uicc/RuimRecords;)V

    .line 3317
    :cond_24
    :goto_24
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v1, :cond_3d

    .line 3318
    const-string v1, "Removing stale icc objects."

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3319
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->unregisterForReady(Landroid/os/Handler;)V

    .line 3320
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v1, :cond_39

    .line 3321
    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/uicc/IccRecords;->unregisterForRecordsLoaded(Landroid/os/Handler;)V

    .line 3323
    :cond_39
    iput-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    .line 3324
    iput-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    :cond_3d
    if-eqz v0, :cond_79

    .line 3327
    const-string v1, "New card found"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3328
    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 3329
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    .line 3330
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-eqz v0, :cond_65

    .line 3331
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    const/16 v1, 0x11

    invoke-virtual {v0, p0, v1, v3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->registerForReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3332
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v0, :cond_79

    const/16 v1, 0x10

    .line 3333
    invoke-virtual {v0, p0, v1, v3}, Lcom/android/internal/telephony/uicc/IccRecords;->registerForRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void

    .line 3335
    :cond_65
    iget-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIsSubscriptionFromRuim:Z

    if-eqz v0, :cond_79

    .line 3336
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    const/16 v1, 0x1a

    invoke-virtual {v0, p0, v1, v3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->registerForReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3337
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v0, :cond_79

    const/16 v1, 0x1b

    .line 3338
    invoke-virtual {v0, p0, v1, v3}, Lcom/android/internal/telephony/uicc/IccRecords;->registerForRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    :cond_79
    :goto_79
    return-void
.end method

.method protected blacklist parseSidNid(Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    const/4 v0, 0x0

    .line 1979
    const-string v1, ","

    if-eqz p1, :cond_35

    .line 1980
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1981
    array-length v3, v2

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mHomeSystemId:[I

    move v3, v0

    .line 1982
    :goto_f
    array-length v4, v2

    if-ge v3, v4, :cond_35

    .line 1984
    :try_start_12
    iget-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mHomeSystemId:[I

    aget-object v5, v2, v3

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    aput v5, v4, v3
    :try_end_1c
    .catch Ljava/lang/NumberFormatException; {:try_start_12 .. :try_end_1c} :catch_1d

    goto :goto_32

    :catch_1d
    move-exception v4

    .line 1986
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "error parsing system id: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/ServiceStateTracker;->loge(Ljava/lang/String;)V

    :goto_32
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 1990
    :cond_35
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CDMA_SUBSCRIPTION: SID="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    if-eqz p2, :cond_7a

    .line 1993
    invoke-virtual {p2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 1994
    array-length v1, p1

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mHomeNetworkId:[I

    .line 1995
    :goto_54
    array-length v1, p1

    if-ge v0, v1, :cond_7a

    .line 1997
    :try_start_57
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mHomeNetworkId:[I

    aget-object v2, p1, v0

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    aput v2, v1, v0
    :try_end_61
    .catch Ljava/lang/NumberFormatException; {:try_start_57 .. :try_end_61} :catch_62

    goto :goto_77

    :catch_62
    move-exception v1

    .line 1999
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CDMA_SUBSCRIPTION: error parsing network id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->loge(Ljava/lang/String;)V

    :goto_77
    add-int/lit8 v0, v0, 0x1

    goto :goto_54

    .line 2003
    :cond_7a
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "CDMA_SUBSCRIPTION: NID="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method public greylist-max-r pollState()V
    .registers 2

    const/16 v0, 0x3a

    .line 3458
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public blacklist powerOffRadioSafely()V
    .registers 7

    .line 5146
    monitor-enter p0

    .line 5147
    :try_start_1
    invoke-static {}, Lcom/android/internal/telephony/satellite/SatelliteController;->getInstance()Lcom/android/internal/telephony/satellite/SatelliteController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/satellite/SatelliteController;->onSetCellularRadioPowerStateRequested(Z)V

    .line 5148
    invoke-static {}, Lcom/android/internal/telephony/domainselection/DomainSelectionResolver;->getInstance()Lcom/android/internal/telephony/domainselection/DomainSelectionResolver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/domainselection/DomainSelectionResolver;->isDomainSelectionSupported()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 5149
    invoke-static {}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->getInstance()Lcom/android/internal/telephony/emergency/EmergencyStateTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->onCellularRadioPowerOffRequested()V

    goto :goto_1e

    :catchall_1b
    move-exception v0

    goto/16 :goto_ac

    .line 5151
    :cond_1e
    :goto_1e
    iget-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPendingRadioPowerOffAfterDataOff:Z

    if-nez v0, :cond_aa

    .line 5153
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-eqz v0, :cond_4d

    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isInCall()Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 5154
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCT:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->hangupIfAlive()V

    .line 5155
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCT:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->hangupIfAlive()V

    .line 5156
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCT:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->hangupIfAlive()V

    .line 5159
    :cond_4d
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhones()[Lcom/android/internal/telephony/Phone;

    move-result-object v0

    array-length v2, v0

    :goto_52
    if-ge v1, v2, :cond_8c

    aget-object v3, v0, v1

    .line 5160
    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getDataNetworkController()Lcom/android/internal/telephony/data/DataNetworkController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/data/DataNetworkController;->areAllDataDisconnected()Z

    move-result v4

    if-nez v4, :cond_89

    .line 5161
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "powerOffRadioSafely: Data is active on phone "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ". Wait for all data disconnect."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    const/4 v4, 0x1

    .line 5163
    iput-boolean v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPendingRadioPowerOffAfterDataOff:Z

    .line 5164
    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getDataNetworkController()Lcom/android/internal/telephony/data/DataNetworkController;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDataDisconnectedCallback:Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/data/DataNetworkController;->registerDataNetworkControllerCallback(Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;)V

    :cond_89
    add-int/lit8 v1, v1, 0x1

    goto :goto_52

    .line 5170
    :cond_8c
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getDataNetworkController()Lcom/android/internal/telephony/data/DataNetworkController;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/data/DataNetworkController;->tearDownAllDataNetworks(I)V

    .line 5173
    iget-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPendingRadioPowerOffAfterDataOff:Z

    if-eqz v0, :cond_a2

    .line 5174
    sget-wide v0, Lcom/android/internal/telephony/ServiceStateTracker;->POWER_OFF_ALL_DATA_NETWORKS_DISCONNECTED_TIMEOUT:J

    const/16 v2, 0x26

    invoke-virtual {p0, v2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_aa

    .line 5177
    :cond_a2
    const-string v0, "powerOffRadioSafely: No data is connected, turn off radio now."

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 5178
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->hangupAndPowerOff()V

    .line 5181
    :cond_aa
    :goto_aa
    monitor-exit p0

    return-void

    :goto_ac
    monitor-exit p0
    :try_end_ad
    .catchall {:try_start_1 .. :try_end_ad} :catchall_1b

    throw v0
.end method

.method public greylist-max-r reRegisterNetwork(Landroid/os/Message;)V
    .registers 4

    .line 1176
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x13

    .line 1177
    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 1176
    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->getAllowedNetworkTypesBitmap(Landroid/os/Message;)V

    return-void
.end method

.method public blacklist registerForAirplaneModeChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4

    .line 5013
    iget-object p0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mAirplaneModeChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/RegistrantList;->add(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public blacklist registerForAreaCodeChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4

    .line 6054
    iget-object p0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mAreaCodeChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public blacklist registerForCssIndicatorChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 5

    .line 5975
    new-instance v0, Lcom/android/internal/telephony/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/internal/telephony/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 5976
    iget-object p0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCssIndicatorChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RegistrantList;->add(Lcom/android/internal/telephony/Registrant;)V

    return-void
.end method

.method public blacklist registerForDataConnectionAttached(ILandroid/os/Handler;ILjava/lang/Object;)V
    .registers 6

    .line 4887
    new-instance v0, Lcom/android/internal/telephony/Registrant;

    invoke-direct {v0, p2, p3, p4}, Lcom/android/internal/telephony/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 4888
    iget-object p2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mAttachedRegistrants:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_17

    .line 4889
    iget-object p2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mAttachedRegistrants:Landroid/util/SparseArray;

    new-instance p3, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {p3}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    invoke-virtual {p2, p1, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4891
    :cond_17
    iget-object p2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mAttachedRegistrants:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p2, v0}, Lcom/android/internal/telephony/RegistrantList;->add(Lcom/android/internal/telephony/Registrant;)V

    .line 4893
    iget-object p0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    if-eqz p0, :cond_36

    const/4 p2, 0x2

    .line 4894
    invoke-virtual {p0, p2, p1}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object p0

    if-eqz p0, :cond_33

    .line 4896
    invoke-virtual {p0}, Landroid/telephony/NetworkRegistrationInfo;->isInService()Z

    move-result p0

    if-eqz p0, :cond_36

    .line 4897
    :cond_33
    invoke-virtual {v0}, Lcom/android/internal/telephony/Registrant;->notifyRegistrant()V

    :cond_36
    return-void
.end method

.method public blacklist registerForDataConnectionDetached(ILandroid/os/Handler;ILjava/lang/Object;)V
    .registers 6

    .line 4923
    new-instance v0, Lcom/android/internal/telephony/Registrant;

    invoke-direct {v0, p2, p3, p4}, Lcom/android/internal/telephony/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 4924
    iget-object p2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDetachedRegistrants:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_17

    .line 4925
    iget-object p2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDetachedRegistrants:Landroid/util/SparseArray;

    new-instance p3, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {p3}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    invoke-virtual {p2, p1, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4927
    :cond_17
    iget-object p2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDetachedRegistrants:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p2, v0}, Lcom/android/internal/telephony/RegistrantList;->add(Lcom/android/internal/telephony/Registrant;)V

    .line 4929
    iget-object p0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    if-eqz p0, :cond_36

    const/4 p2, 0x2

    .line 4930
    invoke-virtual {p0, p2, p1}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object p0

    if-eqz p0, :cond_36

    .line 4932
    invoke-virtual {p0}, Landroid/telephony/NetworkRegistrationInfo;->isInService()Z

    move-result p0

    if-nez p0, :cond_36

    .line 4933
    invoke-virtual {v0}, Lcom/android/internal/telephony/Registrant;->notifyRegistrant()V

    :cond_36
    return-void
.end method

.method public blacklist registerForDataRegStateOrRatChanged(ILandroid/os/Handler;ILjava/lang/Object;)V
    .registers 6

    .line 4981
    new-instance v0, Lcom/android/internal/telephony/Registrant;

    invoke-direct {v0, p2, p3, p4}, Lcom/android/internal/telephony/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 4982
    iget-object p2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDataRegStateOrRatChangedRegistrants:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_17

    .line 4983
    iget-object p2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDataRegStateOrRatChangedRegistrants:Landroid/util/SparseArray;

    new-instance p3, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {p3}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    invoke-virtual {p2, p1, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4985
    :cond_17
    iget-object p2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDataRegStateOrRatChangedRegistrants:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p2, v0}, Lcom/android/internal/telephony/RegistrantList;->add(Lcom/android/internal/telephony/Registrant;)V

    .line 4986
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ServiceStateTracker;->getRegistrationInfo(I)Landroid/util/Pair;

    move-result-object p0

    if-eqz p0, :cond_2b

    .line 4988
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/Registrant;->notifyResult(Ljava/lang/Object;)V

    :cond_2b
    return-void
.end method

.method public blacklist registerForDataRoamingOff(Landroid/os/Handler;ILjava/lang/Object;Z)V
    .registers 6

    .line 1153
    new-instance v0, Lcom/android/internal/telephony/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/internal/telephony/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1154
    iget-object p1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDataRoamingOffRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/RegistrantList;->add(Lcom/android/internal/telephony/Registrant;)V

    if-eqz p4, :cond_17

    .line 1156
    iget-object p0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result p0

    if-nez p0, :cond_17

    .line 1157
    invoke-virtual {v0}, Lcom/android/internal/telephony/Registrant;->notifyRegistrant()V

    :cond_17
    return-void
.end method

.method public blacklist registerForDataRoamingOn(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 5

    .line 1131
    new-instance v0, Lcom/android/internal/telephony/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/internal/telephony/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1132
    iget-object p1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDataRoamingOnRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/RegistrantList;->add(Lcom/android/internal/telephony/Registrant;)V

    .line 1134
    iget-object p0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result p0

    if-eqz p0, :cond_15

    .line 1135
    invoke-virtual {v0}, Lcom/android/internal/telephony/Registrant;->notifyRegistrant()V

    :cond_15
    return-void
.end method

.method public blacklist registerForImsCapabilityChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 5

    .line 5108
    new-instance v0, Lcom/android/internal/telephony/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/internal/telephony/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 5109
    iget-object p0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mImsCapabilityChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RegistrantList;->add(Lcom/android/internal/telephony/Registrant;)V

    return-void
.end method

.method public blacklist registerForNetworkAttached(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 5

    .line 5032
    new-instance v0, Lcom/android/internal/telephony/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/internal/telephony/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 5034
    iget-object p1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNetworkAttachedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/RegistrantList;->add(Lcom/android/internal/telephony/Registrant;)V

    .line 5035
    iget-object p0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getState()I

    move-result p0

    if-nez p0, :cond_15

    .line 5036
    invoke-virtual {v0}, Lcom/android/internal/telephony/Registrant;->notifyRegistrant()V

    :cond_15
    return-void
.end method

.method public blacklist registerForNetworkDetached(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 5

    .line 5051
    new-instance v0, Lcom/android/internal/telephony/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/internal/telephony/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 5053
    iget-object p1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNetworkDetachedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/RegistrantList;->add(Lcom/android/internal/telephony/Registrant;)V

    .line 5054
    iget-object p0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getState()I

    move-result p0

    if-eqz p0, :cond_15

    .line 5055
    invoke-virtual {v0}, Lcom/android/internal/telephony/Registrant;->notifyRegistrant()V

    :cond_15
    return-void
.end method

.method public blacklist registerForNrFrequencyChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 5

    .line 5956
    new-instance v0, Lcom/android/internal/telephony/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/internal/telephony/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 5957
    iget-object p0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNrFrequencyChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RegistrantList;->add(Lcom/android/internal/telephony/Registrant;)V

    return-void
.end method

.method public blacklist registerForNrStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 5

    .line 5937
    new-instance v0, Lcom/android/internal/telephony/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/internal/telephony/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 5938
    iget-object p0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNrStateChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RegistrantList;->add(Lcom/android/internal/telephony/Registrant;)V

    return-void
.end method

.method public blacklist registerForPsRestrictedDisabled(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 5

    .line 5089
    new-instance v0, Lcom/android/internal/telephony/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/internal/telephony/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 5090
    iget-object p1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPsRestrictDisabledRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/RegistrantList;->add(Lcom/android/internal/telephony/Registrant;)V

    .line 5092
    iget-object p0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    invoke-virtual {p0}, Lcom/android/internal/telephony/RestrictedState;->isPsRestricted()Z

    move-result p0

    if-eqz p0, :cond_15

    .line 5093
    invoke-virtual {v0}, Lcom/android/internal/telephony/Registrant;->notifyRegistrant()V

    :cond_15
    return-void
.end method

.method public blacklist registerForPsRestrictedEnabled(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 5

    .line 5070
    new-instance v0, Lcom/android/internal/telephony/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/internal/telephony/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 5071
    iget-object p1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPsRestrictEnabledRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/RegistrantList;->add(Lcom/android/internal/telephony/Registrant;)V

    .line 5073
    iget-object p0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    invoke-virtual {p0}, Lcom/android/internal/telephony/RestrictedState;->isPsRestricted()Z

    move-result p0

    if-eqz p0, :cond_15

    .line 5074
    invoke-virtual {v0}, Lcom/android/internal/telephony/Registrant;->notifyRegistrant()V

    :cond_15
    return-void
.end method

.method public blacklist registerForServiceStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4

    .line 5128
    iget-object p0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mServiceStateChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public blacklist registerForSubscriptionInfoReady(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 5

    .line 5342
    new-instance v0, Lcom/android/internal/telephony/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/internal/telephony/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 5343
    iget-object p1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCdmaForSubscriptionInfoReadyRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/RegistrantList;->add(Lcom/android/internal/telephony/Registrant;)V

    .line 5345
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->isMinInfoReady()Z

    move-result p0

    if-eqz p0, :cond_13

    .line 5346
    invoke-virtual {v0}, Lcom/android/internal/telephony/Registrant;->notifyRegistrant()V

    :cond_13
    return-void
.end method

.method public blacklist registerForVoiceRegStateOrRatChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 5

    .line 4960
    new-instance v0, Lcom/android/internal/telephony/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/internal/telephony/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 4961
    iget-object p1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mVoiceRegStateOrRatChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/RegistrantList;->add(Lcom/android/internal/telephony/Registrant;)V

    .line 4962
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->notifyVoiceRegStateRilRadioTechnologyChanged()V

    return-void
.end method

.method public blacklist registerForVoiceRoamingOff(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 5

    .line 1110
    new-instance v0, Lcom/android/internal/telephony/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/internal/telephony/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1111
    iget-object p1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mVoiceRoamingOffRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/RegistrantList;->add(Lcom/android/internal/telephony/Registrant;)V

    .line 1113
    iget-object p0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getVoiceRoaming()Z

    move-result p0

    if-nez p0, :cond_15

    .line 1114
    invoke-virtual {v0}, Lcom/android/internal/telephony/Registrant;->notifyRegistrant()V

    :cond_15
    return-void
.end method

.method public blacklist registerForVoiceRoamingOn(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 5

    .line 1089
    new-instance v0, Lcom/android/internal/telephony/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/internal/telephony/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1090
    iget-object p1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mVoiceRoamingOnRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/RegistrantList;->add(Lcom/android/internal/telephony/Registrant;)V

    .line 1092
    iget-object p0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getVoiceRoaming()Z

    move-result p0

    if-eqz p0, :cond_15

    .line 1093
    invoke-virtual {v0}, Lcom/android/internal/telephony/Registrant;->notifyRegistrant()V

    :cond_15
    return-void
.end method

.method public blacklist requestAllCellInfo(Landroid/os/WorkSource;Landroid/os/Message;)V
    .registers 10

    .line 5294
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0}, Lcom/android/internal/telephony/CommandsInterface;->getRilVersion()I

    move-result v0

    const/16 v1, 0x8

    if-ge v0, v1, :cond_16

    .line 5295
    invoke-static {p2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    .line 5296
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 5297
    const-string p1, "SST.requestAllCellInfo(): not implemented"

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    return-void

    .line 5300
    :cond_16
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPendingCellInfoRequests:Ljava/util/List;

    monitor-enter v0

    .line 5303
    :try_start_19
    iget-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIsPendingCellInfoRequest:Z

    if-eqz v1, :cond_29

    if-eqz p2, :cond_27

    .line 5304
    iget-object p0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPendingCellInfoRequests:Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_27

    :catchall_25
    move-exception p0

    goto :goto_6c

    .line 5305
    :cond_27
    :goto_27
    monitor-exit v0

    return-void

    .line 5309
    :cond_29
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 5310
    iget-wide v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mLastCellInfoReqTime:J

    sub-long v3, v1, v3

    iget v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCellInfoMinIntervalMs:I

    int-to-long v5, v5

    cmp-long v3, v3, v5

    if-gez v3, :cond_4a

    if-eqz p2, :cond_48

    .line 5312
    const-string p1, "SST.requestAllCellInfo(): return last, back to back calls"

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 5313
    iget-object p0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mLastCellInfoList:Ljava/util/List;

    const/4 p1, 0x0

    invoke-static {p2, p0, p1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 5314
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 5316
    :cond_48
    monitor-exit v0

    return-void

    :cond_4a
    if-eqz p2, :cond_51

    .line 5320
    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPendingCellInfoRequests:Ljava/util/List;

    invoke-interface {v3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5322
    :cond_51
    iput-wide v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mLastCellInfoReqTime:J

    const/4 p2, 0x1

    .line 5324
    iput-boolean p2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIsPendingCellInfoRequest:Z

    const/16 p2, 0x2b

    .line 5326
    invoke-virtual {p0, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 5327
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2, v1, p1}, Lcom/android/internal/telephony/CommandsInterface;->getCellInfoList(Landroid/os/Message;Landroid/os/WorkSource;)V

    .line 5331
    invoke-virtual {p0, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v1, 0x7d0

    .line 5330
    invoke-virtual {p0, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 5332
    monitor-exit v0

    return-void

    :goto_6c
    monitor-exit v0
    :try_end_6d
    .catchall {:try_start_19 .. :try_end_6d} :catchall_25

    throw p0
.end method

.method public blacklist requestCellIdentity(Landroid/os/WorkSource;Landroid/os/Message;)V
    .registers 4

    .line 4572
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCellIdentity:Landroid/telephony/CellIdentity;

    if-eqz v0, :cond_c

    const/4 p0, 0x0

    .line 4573
    invoke-static {p2, v0, p0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 4574
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    return-void

    :cond_c
    const/16 v0, 0x38

    .line 4578
    invoke-virtual {p0, v0, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    .line 4579
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/ServiceStateTracker;->requestAllCellInfo(Landroid/os/WorkSource;Landroid/os/Message;)V

    return-void
.end method

.method public blacklist requestShutdown()V
    .registers 3

    .line 946
    iget-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDeviceShuttingDown:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    return-void

    .line 947
    :cond_6
    iput-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDeviceShuttingDown:Z

    const/4 v0, 0x0

    .line 948
    iput-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDesiredPowerState:Z

    .line 949
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->setPowerStateToDesired()V

    return-void
.end method

.method public blacklist setCellInfoMinInterval(I)V
    .registers 2

    .line 5278
    iput p1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCellInfoMinIntervalMs:I

    return-void
.end method

.method public blacklist setImsRegistrationState(Z)V
    .registers 4

    .line 3419
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setImsRegistrationState: {registered="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mImsRegistrationOnOff="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mImsRegistrationOnOff:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3423
    iget-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mImsRegistrationOnOff:Z

    if-eqz v0, :cond_3e

    if-nez p1, :cond_3e

    .line 3425
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getRadioPowerOffDelayTimeoutForImsRegistration()I

    move-result v0

    if-lez v0, :cond_39

    const/16 v0, 0x2d

    .line 3428
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_3e

    .line 3430
    :cond_39
    const-string v0, "setImsRegistrationState: EVENT_CHANGE_IMS_STATE not sent because power off delay for IMS deregistration is not enabled."

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3434
    :cond_3e
    :goto_3e
    iput-boolean p1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mImsRegistrationOnOff:Z

    .line 3437
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->updateCarrierDisplayName()V

    return-void
.end method

.method public blacklist setNotification(I)V
    .registers 18

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 4671
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setNotification: create notification "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4673
    iget v2, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSubId:I

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v2

    if-nez v2, :cond_37

    .line 4675
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot setNotification on invalid subid mSubId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSubId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->loge(Ljava/lang/String;)V

    return-void

    .line 4678
    :cond_37
    iget-object v2, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 4680
    iget-object v3, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSubscriptionManagerService:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    iget-object v4, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    .line 4681
    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getSubscriptionInfoInternal(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;

    move-result-object v3

    if-eqz v3, :cond_23d

    .line 4682
    invoke-virtual {v3}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->isVisible()Z

    move-result v3

    if-nez v3, :cond_53

    goto/16 :goto_23d

    .line 4688
    :cond_53
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x111029b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-nez v3, :cond_66

    .line 4691
    const-string v1, "Ignore all the notifications"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    return-void

    .line 4696
    :cond_66
    iget-object v3, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mCarrierConfig:Landroid/os/PersistableBundle;

    const-string v4, "disable_voice_barring_notification_bool"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    const/16 v4, 0x3ed

    const/16 v6, 0x3ee

    if-eqz v3, :cond_83

    const/16 v3, 0x3eb

    if-eq v1, v3, :cond_7d

    if-eq v1, v4, :cond_7d

    if-ne v1, v6, :cond_83

    .line 4701
    :cond_7d
    const-string v1, "Voice/emergency call barred notification disabled"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    return-void

    .line 4704
    :cond_83
    iget-object v3, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mCarrierConfig:Landroid/os/PersistableBundle;

    const-string v7, "carrier_auto_cancel_cs_notification"

    invoke-virtual {v3, v7, v5}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 4712
    iget-object v7, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v7}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "phone"

    .line 4713
    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telephony/TelephonyManager;

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v7

    const/4 v8, 0x1

    if-le v7, v8, :cond_a1

    move v5, v8

    .line 4714
    :cond_a1
    iget v7, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSubId:I

    invoke-static {v7}, Landroid/telephony/SubscriptionManager;->getSlotIndex(I)I

    move-result v7

    add-int/2addr v7, v8

    const/16 v9, 0x7d2

    const/16 v10, 0x7d1

    const v11, 0x10400d4

    const v12, 0x10400d5

    const/16 v13, 0x3e7

    if-eq v1, v4, :cond_16a

    if-eq v1, v6, :cond_14d

    .line 4716
    const-string v4, ""

    if-eq v1, v10, :cond_111

    packed-switch v1, :pswitch_data_254

    move-object v3, v4

    :goto_c0
    const v14, 0x108008a

    goto/16 :goto_187

    :pswitch_c5
    const v3, 0x10400d0

    .line 4734
    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    if-eqz v5, :cond_db

    .line 4738
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    .line 4736
    invoke-virtual {v2, v12, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_c0

    .line 4739
    :cond_db
    invoke-virtual {v2, v11}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    goto :goto_c0

    :pswitch_e0
    move-object v3, v4

    :goto_e1
    const/16 v13, 0x378

    goto :goto_c0

    .line 4718
    :pswitch_e4
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v4

    int-to-long v3, v4

    .line 4719
    iget-object v13, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v13}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v13

    int-to-long v14, v13

    cmp-long v3, v3, v14

    if-eqz v3, :cond_f6

    goto/16 :goto_232

    :cond_f6
    const v3, 0x10400d1

    .line 4723
    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    if-eqz v5, :cond_10c

    .line 4727
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    .line 4725
    invoke-virtual {v2, v12, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_e1

    .line 4728
    :cond_10c
    invoke-virtual {v2, v11}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    goto :goto_e1

    .line 4762
    :cond_111
    iget v11, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mRejectCode:I

    invoke-direct {v0, v11, v5}, Lcom/android/internal/telephony/ServiceStateTracker;->selectResourceForRejectCode(IZ)I

    move-result v5

    const/16 v13, 0x6f

    if-nez v5, :cond_13c

    if-eqz v3, :cond_120

    move-object v3, v4

    move v1, v9

    goto :goto_c0

    .line 4767
    :cond_120
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setNotification: mRejectCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mRejectCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is not handled."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->loge(Ljava/lang/String;)V

    return-void

    .line 4773
    :cond_13c
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v5, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const v14, 0x10809a5

    const/4 v3, 0x0

    goto :goto_187

    :cond_14d
    const v3, 0x10400d2

    .line 4750
    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    if-eqz v5, :cond_164

    .line 4754
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    .line 4752
    invoke-virtual {v2, v12, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_c0

    .line 4755
    :cond_164
    invoke-virtual {v2, v11}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    goto/16 :goto_c0

    :cond_16a
    const v3, 0x10400d3

    .line 4742
    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    if-eqz v5, :cond_181

    .line 4746
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    .line 4744
    invoke-virtual {v2, v12, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_c0

    .line 4747
    :cond_181
    invoke-virtual {v2, v11}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    goto/16 :goto_c0

    .line 4780
    :goto_187
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setNotification, create notification, notifyType: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", title: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ", details: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ", subId: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSubId:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4784
    new-instance v5, Landroid/app/Notification$Builder;

    invoke-direct {v5, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 4785
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    invoke-virtual {v5, v11, v12}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 4786
    invoke-virtual {v5, v8}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 4787
    invoke-virtual {v5, v14}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 4788
    invoke-virtual {v5, v4}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 4789
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x106001c

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 4791
    invoke-virtual {v5, v4}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    new-instance v5, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v5}, Landroid/app/Notification$BigTextStyle;-><init>()V

    .line 4792
    invoke-virtual {v5, v3}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 4793
    invoke-virtual {v4, v3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    const-string v4, "alert"

    .line 4794
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setChannelId(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 4795
    invoke-virtual {v3}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v3

    iput-object v3, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNotification:Landroid/app/Notification;

    .line 4797
    const-string v3, "notification"

    .line 4798
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    const/16 v3, 0x3ea

    if-eq v1, v3, :cond_233

    const/16 v3, 0x3ec

    if-eq v1, v3, :cond_233

    if-ne v1, v9, :cond_211

    goto :goto_233

    .line 4806
    :cond_211
    iget-object v3, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->isEmergencyOnly()Z

    move-result v3

    if-eqz v3, :cond_21c

    if-ne v1, v6, :cond_21c

    goto :goto_227

    :cond_21c
    if-ne v1, v10, :cond_21f

    goto :goto_227

    .line 4812
    :cond_21f
    iget-object v1, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    if-nez v1, :cond_232

    .line 4820
    :goto_227
    iget v1, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSubId:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNotification:Landroid/app/Notification;

    invoke-virtual {v2, v1, v13, v0}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    :cond_232
    :goto_232
    return-void

    .line 4803
    :cond_233
    :goto_233
    iget v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSubId:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0, v13}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    return-void

    .line 4683
    :cond_23d
    :goto_23d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot setNotification on invisible subid mSubId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSubId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    return-void

    :pswitch_data_254
    .packed-switch 0x3e9
        :pswitch_e4
        :pswitch_e0
        :pswitch_c5
    .end packed-switch
.end method

.method protected greylist-max-r setOperatorIdd(Ljava/lang/String;)V
    .registers 4

    .line 4268
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getUnitTestMode()Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 4274
    :cond_9
    iget-object p0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mHbpcdUtils:Lcom/android/internal/telephony/HbpcdUtils;

    const/4 v0, 0x0

    const/4 v1, 0x3

    .line 4275
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 4274
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HbpcdUtils;->getIddByMcc(I)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_25

    .line 4276
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_25

    .line 4277
    invoke-static {p0}, Landroid/internal/telephony/sysprop/TelephonyProperties;->operator_idp_string(Ljava/lang/String;)V

    return-void

    .line 4280
    :cond_25
    const-string p0, "+"

    invoke-static {p0}, Landroid/internal/telephony/sysprop/TelephonyProperties;->operator_idp_string(Ljava/lang/String;)V

    return-void
.end method

.method protected blacklist setPowerStateToDesired()V
    .registers 2

    const/4 v0, 0x0

    .line 3250
    invoke-virtual {p0, v0, v0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->setPowerStateToDesired(ZZZ)V

    return-void
.end method

.method protected blacklist setPowerStateToDesired(ZZZ)V
    .registers 7

    .line 3256
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setPowerStateToDesired: mDeviceShuttingDown="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDeviceShuttingDown:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mDesiredPowerState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDesiredPowerState:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", getRadioState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 3258
    invoke-interface {v1}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mRadioPowerOffReasons="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRadioPowerOffReasons:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", IMS reg state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mImsRegistrationOnOff:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", pending radio off="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3e

    .line 3261
    invoke-virtual {p0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3262
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3263
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRadioPowerLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    .line 3266
    iget-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDesiredPowerState:Z

    if-eqz v0, :cond_63

    iget-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDeviceShuttingDown:Z

    if-eqz v1, :cond_63

    .line 3267
    const-string p1, "setPowerStateToDesired powering on of radio failed because the device is powering off"

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    return-void

    :cond_63
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_7f

    .line 3273
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRadioPowerOffReasons:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7f

    if-nez p3, :cond_79

    iget-object p3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 3274
    invoke-interface {p3}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()I

    move-result p3

    if-nez p3, :cond_7f

    .line 3275
    :cond_79
    iget-object p3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {p3, v2, p1, p2, v1}, Lcom/android/internal/telephony/CommandsInterface;->setRadioPower(ZZZLandroid/os/Message;)V

    goto :goto_ae

    .line 3276
    :cond_7f
    iget-boolean p1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDesiredPowerState:Z

    if-eqz p1, :cond_8b

    iget-object p1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRadioPowerOffReasons:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_9c

    :cond_8b
    iget-object p1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {p1}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()I

    move-result p1

    if-ne p1, v2, :cond_9c

    .line 3278
    const-string p1, "setPowerStateToDesired: powerOffRadioSafely()"

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3279
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->powerOffRadioSafely()V

    goto :goto_ae

    .line 3280
    :cond_9c
    iget-boolean p1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDeviceShuttingDown:Z

    if-eqz p1, :cond_ae

    iget-object p1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 3281
    invoke-interface {p1}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()I

    move-result p1

    const/4 p2, 0x2

    if-eq p1, p2, :cond_ae

    .line 3285
    iget-object p1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->requestShutdown(Landroid/os/Message;)V

    .line 3288
    :cond_ae
    :goto_ae
    invoke-direct {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->cancelDelayRadioOffWaitingForImsDeregTimeout()V

    return-void
.end method

.method public final blacklist setRadioPower(Z)V
    .registers 3

    const/4 v0, 0x0

    .line 1199
    invoke-virtual {p0, p1, v0, v0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->setRadioPower(ZZZZ)V

    return-void
.end method

.method public blacklist setRadioPower(ZZZZ)V
    .registers 11

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 1209
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/ServiceStateTracker;->setRadioPowerForReason(ZZZZI)V

    return-void
.end method

.method public blacklist setRadioPowerForReason(ZZZZI)V
    .registers 9

    .line 1221
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setRadioPower power "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " forEmergencyCall "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " forceApply "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " reason "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    if-eqz p1, :cond_3e

    if-eqz p2, :cond_34

    .line 1226
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->clearAllRadioOffReasons()V

    goto :goto_47

    .line 1228
    :cond_34
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRadioPowerOffReasons:Ljava/util/Set;

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_47

    .line 1231
    :cond_3e
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRadioPowerOffReasons:Ljava/util/Set;

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1233
    :goto_47
    iget-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDesiredPowerState:Z

    if-ne p1, v0, :cond_67

    if-nez p4, :cond_67

    .line 1234
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "setRadioPower mDesiredPowerState is already "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " Do nothing."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    return-void

    :cond_67
    if-eqz p1, :cond_b3

    .line 1237
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRadioPowerOffReasons:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b3

    .line 1238
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setRadioPowerForReason power: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " forEmergencyCall= "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " isSelectedPhoneForEmergencyCall: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " reason: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " will not power on the radio as it is powered off for the following reasons: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRadioPowerOffReasons:Ljava/util/Set;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    return-void

    .line 1246
    :cond_b3
    iput-boolean p1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDesiredPowerState:Z

    .line 1247
    invoke-virtual {p0, p2, p3, p4}, Lcom/android/internal/telephony/ServiceStateTracker;->setPowerStateToDesired(ZZZ)V

    .line 1248
    iget-boolean p0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDesiredPowerState:Z

    if-eqz p0, :cond_c4

    .line 1249
    invoke-static {}, Lcom/android/internal/telephony/satellite/SatelliteController;->getInstance()Lcom/android/internal/telephony/satellite/SatelliteController;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteController;->onSetCellularRadioPowerStateRequested(Z)V

    :cond_c4
    return-void
.end method

.method protected greylist-max-r setRoamingType(Landroid/telephony/ServiceState;)V
    .registers 11

    .line 5581
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_a

    move v0, v2

    goto :goto_b

    :cond_a
    move v0, v1

    :goto_b
    const/4 v3, 0x3

    const/4 v4, 0x2

    if-eqz v0, :cond_70

    .line 5583
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getVoiceRoaming()Z

    move-result v5

    if-eqz v5, :cond_6d

    .line 5584
    iget-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v5

    if-eqz v5, :cond_2f

    .line 5586
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/ServiceStateTracker;->inSameCountry(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2b

    .line 5587
    invoke-virtual {p1, v4}, Landroid/telephony/ServiceState;->setVoiceRoamingType(I)V

    goto :goto_70

    .line 5590
    :cond_2b
    invoke-virtual {p1, v3}, Landroid/telephony/ServiceState;->setVoiceRoamingType(I)V

    goto :goto_70

    .line 5595
    :cond_2f
    iget-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1070032

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v5

    if-eqz v5, :cond_5b

    .line 5598
    array-length v6, v5

    if-lez v6, :cond_5b

    .line 5600
    invoke-virtual {p1, v4}, Landroid/telephony/ServiceState;->setVoiceRoamingType(I)V

    .line 5601
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getCdmaRoamingIndicator()I

    move-result v6

    move v7, v1

    .line 5602
    :goto_4d
    array-length v8, v5

    if-ge v7, v8, :cond_70

    .line 5603
    aget v8, v5, v7

    if-ne v6, v8, :cond_58

    .line 5604
    invoke-virtual {p1, v3}, Landroid/telephony/ServiceState;->setVoiceRoamingType(I)V

    goto :goto_70

    :cond_58
    add-int/lit8 v7, v7, 0x1

    goto :goto_4d

    .line 5611
    :cond_5b
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/ServiceStateTracker;->inSameCountry(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_69

    .line 5612
    invoke-virtual {p1, v4}, Landroid/telephony/ServiceState;->setVoiceRoamingType(I)V

    goto :goto_70

    .line 5615
    :cond_69
    invoke-virtual {p1, v3}, Landroid/telephony/ServiceState;->setVoiceRoamingType(I)V

    goto :goto_70

    .line 5621
    :cond_6d
    invoke-virtual {p1, v1}, Landroid/telephony/ServiceState;->setVoiceRoamingType(I)V

    .line 5625
    :cond_70
    :goto_70
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getDataRegistrationState()I

    move-result v5

    if-nez v5, :cond_78

    move v5, v2

    goto :goto_79

    :cond_78
    move v5, v1

    .line 5626
    :goto_79
    invoke-static {p1}, Lcom/android/internal/telephony/ServiceStateTracker;->getRilDataRadioTechnologyForWwan(Landroid/telephony/ServiceState;)I

    move-result v6

    if-eqz v5, :cond_ce

    .line 5628
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v5

    if-nez v5, :cond_89

    .line 5629
    invoke-virtual {p1, v1}, Landroid/telephony/ServiceState;->setDataRoamingType(I)V

    return-void

    .line 5631
    :cond_89
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v1

    if-eqz v1, :cond_a9

    .line 5632
    invoke-static {v6}, Landroid/telephony/ServiceState;->isGsm(I)Z

    move-result p0

    if-eqz p0, :cond_a5

    if-eqz v0, :cond_a1

    .line 5636
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getVoiceRoamingType()I

    move-result p0

    .line 5635
    invoke-virtual {p1, p0}, Landroid/telephony/ServiceState;->setDataRoamingType(I)V

    return-void

    .line 5639
    :cond_a1
    invoke-virtual {p1, v2}, Landroid/telephony/ServiceState;->setDataRoamingType(I)V

    return-void

    .line 5643
    :cond_a5
    invoke-virtual {p1, v2}, Landroid/telephony/ServiceState;->setDataRoamingType(I)V

    return-void

    .line 5646
    :cond_a9
    invoke-static {v6}, Landroid/telephony/ServiceState;->isCdma(I)Z

    move-result v1

    if-eqz v1, :cond_bd

    if-eqz v0, :cond_b9

    .line 5650
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getVoiceRoamingType()I

    move-result p0

    .line 5649
    invoke-virtual {p1, p0}, Landroid/telephony/ServiceState;->setDataRoamingType(I)V

    return-void

    .line 5654
    :cond_b9
    invoke-virtual {p1, v2}, Landroid/telephony/ServiceState;->setDataRoamingType(I)V

    return-void

    .line 5658
    :cond_bd
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->inSameCountry(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_cb

    .line 5659
    invoke-virtual {p1, v4}, Landroid/telephony/ServiceState;->setDataRoamingType(I)V

    return-void

    .line 5661
    :cond_cb
    invoke-virtual {p1, v3}, Landroid/telephony/ServiceState;->setDataRoamingType(I)V

    :cond_ce
    return-void
.end method

.method public blacklist setServiceStateStats(Lcom/android/internal/telephony/metrics/ServiceStateStats;)V
    .registers 2

    .line 6026
    iput-object p1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mServiceStateStats:Lcom/android/internal/telephony/metrics/ServiceStateStats;

    return-void
.end method

.method public blacklist shouldForceDisplayNoService()Z
    .registers 7

    .line 3235
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1070068

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 3237
    invoke-static {v0}, Lcom/android/internal/telephony/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_19

    return v2

    .line 3240
    :cond_19
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mLocaleTracker:Lcom/android/internal/telephony/LocaleTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/LocaleTracker;->getLastKnownCountryIso()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mLastKnownNetworkCountry:Ljava/lang/String;

    .line 3241
    array-length v1, v0

    move v3, v2

    :goto_23
    if-ge v3, v1, :cond_34

    aget-object v4, v0, v3

    .line 3242
    iget-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mLastKnownNetworkCountry:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_31

    const/4 p0, 0x1

    return p0

    :cond_31
    add-int/lit8 v3, v3, 0x1

    goto :goto_23

    :cond_34
    return v2
.end method

.method public blacklist unregisterForAirplaneModeChanged(Landroid/os/Handler;)V
    .registers 2

    .line 5022
    iget-object p0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mAirplaneModeChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public blacklist unregisterForAreaCodeChanged(Landroid/os/Handler;)V
    .registers 2

    .line 6062
    iget-object p0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mAreaCodeChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public blacklist unregisterForCssIndicatorChanged(Landroid/os/Handler;)V
    .registers 2

    .line 5984
    iget-object p0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCssIndicatorChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public blacklist unregisterForDataConnectionAttached(ILandroid/os/Handler;)V
    .registers 4

    .line 4909
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mAttachedRegistrants:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 4910
    iget-object p0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mAttachedRegistrants:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    :cond_13
    return-void
.end method

.method public blacklist unregisterForDataConnectionDetached(ILandroid/os/Handler;)V
    .registers 4

    .line 4945
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDetachedRegistrants:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 4946
    iget-object p0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDetachedRegistrants:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    :cond_13
    return-void
.end method

.method public blacklist unregisterForDataRegStateOrRatChanged(ILandroid/os/Handler;)V
    .registers 4

    .line 4999
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDataRegStateOrRatChangedRegistrants:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 5000
    iget-object p0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDataRegStateOrRatChangedRegistrants:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    :cond_13
    return-void
.end method

.method public blacklist unregisterForDataRoamingOff(Landroid/os/Handler;)V
    .registers 2

    .line 1162
    iget-object p0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDataRoamingOffRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public blacklist unregisterForDataRoamingOn(Landroid/os/Handler;)V
    .registers 2

    .line 1140
    iget-object p0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDataRoamingOnRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public blacklist unregisterForImsCapabilityChanged(Landroid/os/Handler;)V
    .registers 2

    .line 5117
    iget-object p0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mImsCapabilityChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public blacklist unregisterForNetworkAttached(Landroid/os/Handler;)V
    .registers 2

    .line 5041
    iget-object p0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNetworkAttachedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public blacklist unregisterForNetworkDetached(Landroid/os/Handler;)V
    .registers 2

    .line 5060
    iget-object p0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNetworkDetachedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public blacklist unregisterForNrFrequencyChanged(Landroid/os/Handler;)V
    .registers 2

    .line 5965
    iget-object p0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNrFrequencyChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public blacklist unregisterForNrStateChanged(Landroid/os/Handler;)V
    .registers 2

    .line 5946
    iget-object p0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNrStateChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public blacklist unregisterForPsRestrictedDisabled(Landroid/os/Handler;)V
    .registers 2

    .line 5098
    iget-object p0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPsRestrictDisabledRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public blacklist unregisterForPsRestrictedEnabled(Landroid/os/Handler;)V
    .registers 2

    .line 5079
    iget-object p0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPsRestrictEnabledRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public blacklist unregisterForServiceStateChanged(Landroid/os/Handler;)V
    .registers 2

    .line 5137
    iget-object p0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mServiceStateChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public blacklist unregisterForSubscriptionInfoReady(Landroid/os/Handler;)V
    .registers 2

    .line 5351
    iget-object p0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCdmaForSubscriptionInfoReadyRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public blacklist unregisterForVoiceRegStateOrRatChanged(Landroid/os/Handler;)V
    .registers 2

    .line 4966
    iget-object p0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mVoiceRegStateOrRatChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public blacklist unregisterForVoiceRoamingOff(Landroid/os/Handler;)V
    .registers 2

    .line 1119
    iget-object p0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mVoiceRoamingOffRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public blacklist unregisterForVoiceRoamingOn(Landroid/os/Handler;)V
    .registers 2

    .line 1098
    iget-object p0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mVoiceRoamingOnRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public blacklist updateCarrierDisplayName()V
    .registers 5

    .line 2898
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCarrierConfig:Landroid/os/PersistableBundle;

    const-string v1, "enable_carrier_display_name_resolver_bool"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 2902
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCdnr:Lcom/android/internal/telephony/cdnr/CarrierDisplayNameResolver;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameResolver;->getCarrierDisplayNameData()Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData;

    move-result-object v0

    goto :goto_15

    .line 2903
    :cond_11
    invoke-direct {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getCarrierDisplayNameLegacy()Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData;

    move-result-object v0

    .line 2905
    :goto_15
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v1

    .line 2908
    iget v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSubId:I

    if-ne v1, v2, :cond_28

    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCarrierDisplayNameData:Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData;

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_28

    return-void

    .line 2910
    :cond_28
    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v2

    if-eqz v2, :cond_37

    .line 2911
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSubscriptionManagerService:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->getCarrierName(Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->setCarrierName(ILjava/lang/String;)V

    .line 2914
    :cond_37
    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCarrierDisplayNameData:Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData;

    .line 2915
    invoke-direct {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->notifyCarrierDisplayNameDataChanged()V

    return-void
.end method

.method public blacklist updateOperatorNameForCellInfo(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/CellInfo;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_27

    .line 5888
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_27

    .line 5891
    :cond_9
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_d
    :goto_d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CellInfo;

    .line 5892
    invoke-virtual {v0}, Landroid/telephony/CellInfo;->isRegistered()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 5893
    invoke-virtual {v0}, Landroid/telephony/CellInfo;->getCellIdentity()Landroid/telephony/CellIdentity;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->updateOperatorNameForCellIdentity(Landroid/telephony/CellIdentity;)V

    goto :goto_d

    :cond_27
    :goto_27
    return-void
.end method

.method protected greylist-max-r updateOtaspState()V
    .registers 1

    .line 0
    return-void
.end method

.method protected greylist-max-r updatePhoneObject()V
    .registers 3

    .line 1067
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110278

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 1070
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 1071
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_25

    goto :goto_2b

    .line 1073
    :cond_25
    const-string v0, "updatePhoneObject: Ignore update"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    return-void

    .line 1076
    :cond_2b
    :goto_2b
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    iget-object p0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->updatePhoneObject(I)V

    :cond_36
    return-void
.end method

.method public blacklist updatePhoneType()V
    .registers 8

    .line 845
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getVoiceRoaming()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 846
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mVoiceRoamingOffRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v0}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants()V

    .line 851
    :cond_f
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    if-eqz v0, :cond_1e

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 852
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDataRoamingOffRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v0}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants()V

    .line 856
    :cond_1e
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    if-eqz v0, :cond_2d

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    if-nez v0, :cond_2d

    .line 857
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNetworkDetachedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v0}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants()V

    .line 861
    :cond_2d
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mAccessNetworksManager:Lcom/android/internal/telephony/data/AccessNetworksManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/data/AccessNetworksManager;->getAvailableTransports()[I

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_36
    if-ge v3, v1, :cond_61

    aget v4, v0, v3

    .line 862
    iget-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    if-eqz v5, :cond_5e

    const/4 v6, 0x2

    .line 863
    invoke-virtual {v5, v6, v4}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v5

    if-eqz v5, :cond_5e

    .line 865
    invoke-virtual {v5}, Landroid/telephony/NetworkRegistrationInfo;->isInService()Z

    move-result v5

    if-eqz v5, :cond_5e

    iget-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDetachedRegistrants:Landroid/util/SparseArray;

    .line 866
    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_5e

    .line 867
    iget-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDetachedRegistrants:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v4}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants()V

    :cond_5e
    add-int/lit8 v3, v3, 0x1

    goto :goto_36

    .line 872
    :cond_61
    new-instance v0, Landroid/telephony/ServiceState;

    invoke-direct {v0}, Landroid/telephony/ServiceState;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 873
    invoke-virtual {v0, v2}, Landroid/telephony/ServiceState;->setOutOfService(Z)V

    .line 874
    new-instance v0, Landroid/telephony/ServiceState;

    invoke-direct {v0}, Landroid/telephony/ServiceState;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    .line 875
    invoke-virtual {v0, v2}, Landroid/telephony/ServiceState;->setOutOfService(Z)V

    const-wide/16 v0, 0x0

    .line 876
    iput-wide v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mLastCellInfoReqTime:J

    const/4 v0, 0x0

    .line 877
    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mLastCellInfoList:Ljava/util/List;

    .line 878
    iput-boolean v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mStartedGprsRegCheck:Z

    .line 879
    iput-boolean v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mReportedGprsNoReg:Z

    .line 880
    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mMdn:Ljava/lang/String;

    .line 881
    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mMin:Ljava/lang/String;

    .line 882
    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPrlVersion:Ljava/lang/String;

    .line 883
    iput-boolean v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIsMinInfoReady:Z

    .line 884
    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mLastNitzData:Lcom/android/internal/telephony/NitzData;

    .line 885
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNitzState:Lcom/android/internal/telephony/NitzStateMachine;

    invoke-interface {v1}, Lcom/android/internal/telephony/NitzStateMachine;->handleNetworkUnavailable()V

    .line 886
    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCellIdentity:Landroid/telephony/CellIdentity;

    .line 887
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getSignalStrengthController()Lcom/android/internal/telephony/SignalStrengthController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/SignalStrengthController;->setSignalStrengthDefaultValues()V

    .line 888
    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mLastKnownCellIdentity:Landroid/telephony/CellIdentity;

    .line 891
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->cancelPollState()V

    .line 893
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v1

    if-eqz v1, :cond_b4

    .line 895
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    if-eqz v0, :cond_ae

    .line 896
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->dispose(Landroid/os/Handler;)V

    .line 903
    :cond_ae
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->unregisterForSimRecordsLoaded(Landroid/os/Handler;)V

    goto :goto_cb

    .line 906
    :cond_b4
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    const/16 v3, 0x10

    invoke-virtual {v1, p0, v3, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->registerForSimRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 918
    new-instance v0, Lcom/android/internal/telephony/HbpcdUtils;

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HbpcdUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mHbpcdUtils:Lcom/android/internal/telephony/HbpcdUtils;

    .line 920
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->updateOtaspState()V

    .line 925
    :goto_cb
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->onUpdateIccAvailability()V

    .line 927
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->setDataNetworkTypeForPhone(I)V

    .line 932
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getSignalStrengthController()Lcom/android/internal/telephony/SignalStrengthController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/SignalStrengthController;->getSignalStrengthFromCi()V

    const/16 v0, 0x32

    .line 933
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 935
    invoke-direct {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->logPhoneTypeChange()V

    .line 938
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->notifyVoiceRegStateRilRadioTechnologyChanged()V

    .line 939
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mAccessNetworksManager:Lcom/android/internal/telephony/data/AccessNetworksManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/data/AccessNetworksManager;->getAvailableTransports()[I

    move-result-object v0

    array-length v1, v0

    :goto_f0
    if-ge v2, v1, :cond_fa

    aget v3, v0, v2

    .line 940
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->notifyDataRegStateRilRadioTechnologyChanged(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_f0

    :cond_fa
    return-void
.end method

.method protected greylist-max-r updateRoamingState()V
    .registers 8

    .line 2755
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    const-string v1, "updateRoamingState: carrier config override set roaming:"

    const-string v2, "updateRoamingState: carrier config override always on home network"

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_c1

    .line 2769
    iget-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mGsmVoiceRoaming:Z

    if-nez v0, :cond_19

    iget-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mGsmDataRoaming:Z

    if-eqz v0, :cond_17

    goto :goto_19

    :cond_17
    move v0, v4

    goto :goto_1a

    :cond_19
    :goto_19
    move v0, v3

    :goto_1a
    if-eqz v0, :cond_5d

    .line 2771
    iget-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/ServiceStateTracker;->isOperatorConsideredRoaming(Landroid/telephony/ServiceState;)Z

    move-result v5

    if-nez v5, :cond_5d

    iget-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    .line 2772
    invoke-direct {p0, v5}, Lcom/android/internal/telephony/ServiceStateTracker;->isSameNamedOperators(Landroid/telephony/ServiceState;)Z

    move-result v5

    if-nez v5, :cond_34

    iget-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/ServiceStateTracker;->isOperatorConsideredNonRoaming(Landroid/telephony/ServiceState;)Z

    move-result v5

    if-eqz v5, :cond_5d

    .line 2773
    :cond_34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateRoamingState: resource override set non roaming.isSameNamedOperators="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    .line 2774
    invoke-direct {p0, v5}, Lcom/android/internal/telephony/ServiceStateTracker;->isSameNamedOperators(Landroid/telephony/ServiceState;)Z

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ",isOperatorConsideredNonRoaming="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    .line 2775
    invoke-direct {p0, v5}, Lcom/android/internal/telephony/ServiceStateTracker;->isOperatorConsideredNonRoaming(Landroid/telephony/ServiceState;)Z

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2773
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    move v0, v4

    .line 2779
    :cond_5d
    iget-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCarrierConfig:Landroid/os/PersistableBundle;

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/ServiceStateTracker;->alwaysOnHomeNetwork(Landroid/os/BaseBundle;)Z

    move-result v5

    if-eqz v5, :cond_6a

    .line 2780
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    :goto_68
    move v3, v4

    goto :goto_bb

    .line 2782
    :cond_6a
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCarrierConfig:Landroid/os/PersistableBundle;

    iget-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v2, v5}, Lcom/android/internal/telephony/ServiceStateTracker;->isNonRoamingInGsmNetwork(Landroid/os/BaseBundle;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_93

    .line 2783
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateRoamingState: carrier config override set non roaming:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    .line 2784
    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2783
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    goto :goto_68

    .line 2786
    :cond_93
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCarrierConfig:Landroid/os/PersistableBundle;

    iget-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v2, v4}, Lcom/android/internal/telephony/ServiceStateTracker;->isRoamingInGsmNetwork(Landroid/os/BaseBundle;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_ba

    .line 2787
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    .line 2788
    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2787
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    goto :goto_bb

    :cond_ba
    move v3, v0

    .line 2792
    :goto_bb
    iget-object p0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {p0, v3}, Landroid/telephony/ServiceState;->setRoaming(Z)V

    return-void

    .line 2794
    :cond_c1
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getCdmaSystemId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 2796
    iget-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCarrierConfig:Landroid/os/PersistableBundle;

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/ServiceStateTracker;->alwaysOnHomeNetwork(Landroid/os/BaseBundle;)Z

    move-result v5

    if-eqz v5, :cond_da

    .line 2797
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2798
    invoke-direct {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->setRoamingOff()V

    goto :goto_14e

    .line 2799
    :cond_da
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCarrierConfig:Landroid/os/PersistableBundle;

    iget-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v2, v5}, Lcom/android/internal/telephony/ServiceStateTracker;->isNonRoamingInGsmNetwork(Landroid/os/BaseBundle;Ljava/lang/String;)Z

    move-result v2

    const-string v5, ", "

    if-nez v2, :cond_12b

    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCarrierConfig:Landroid/os/PersistableBundle;

    .line 2800
    invoke-virtual {p0, v2, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->isNonRoamingInCdmaNetwork(Landroid/os/BaseBundle;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f3

    goto :goto_12b

    .line 2804
    :cond_f3
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCarrierConfig:Landroid/os/PersistableBundle;

    iget-object v6, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v2, v6}, Lcom/android/internal/telephony/ServiceStateTracker;->isRoamingInGsmNetwork(Landroid/os/BaseBundle;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_109

    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCarrierConfig:Landroid/os/PersistableBundle;

    .line 2805
    invoke-virtual {p0, v2, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->isRoamingInCdmaNetwork(Landroid/os/BaseBundle;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_14e

    .line 2806
    :cond_109
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    .line 2807
    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2806
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2808
    invoke-direct {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->setRoamingOn()V

    goto :goto_14e

    .line 2801
    :cond_12b
    :goto_12b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateRoamingState: carrier config override set non-roaming:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    .line 2802
    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2801
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2803
    invoke-direct {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->setRoamingOff()V

    .line 2811
    :cond_14e
    :goto_14e
    sget-boolean v0, Lcom/android/internal/telephony/util/TelephonyUtils;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_15f

    const-string v0, "telephony.test.forceRoaming"

    .line 2812
    invoke-static {v0, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_15f

    .line 2813
    iget-object p0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {p0, v3}, Landroid/telephony/ServiceState;->setRoaming(Z)V

    :cond_15f
    return-void
.end method

.method protected greylist-max-r useDataRegStateForDataOnlyDevices()V
    .registers 3

    .line 1055
    iget-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mVoiceCapable:Z

    if-nez v0, :cond_35

    .line 1057
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "useDataRegStateForDataOnlyDevice: VoiceRegState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " DataRegState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    .line 1058
    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getDataRegistrationState()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1057
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1061
    iget-object p0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getDataRegistrationState()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/ServiceState;->setVoiceRegState(I)V

    :cond_35
    return-void
.end method
