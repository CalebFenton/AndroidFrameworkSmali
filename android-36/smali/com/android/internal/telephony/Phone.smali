.class public abstract Lcom/android/internal/telephony/Phone;
.super Landroid/os/Handler;
.source "Phone.java"

# interfaces
.implements Lcom/android/internal/telephony/PhoneInternalInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/Phone$SilentRedialParam;,
        Lcom/android/internal/telephony/Phone$NetworkSelectMessage;
    }
.end annotation


# static fields
.field public static final blacklist CF_ID:Ljava/lang/String; = "cf_id_key"

.field public static final blacklist CF_STATUS:Ljava/lang/String; = "cf_status_key"

.field public static final blacklist CLIR_KEY:Ljava/lang/String; = "clir_sub_key"

.field public static final blacklist CS_FALLBACK:Ljava/lang/String; = "cs_fallback"

.field public static final blacklist CS_FALLBACK_SS:Ljava/lang/String; = "cs_fallback_ss"

.field public static final blacklist DATA_DISABLED_ON_BOOT_KEY:Ljava/lang/String; = "disabled_on_boot_key"

.field public static final blacklist DATA_ROAMING_IS_USER_SETTING_KEY:Ljava/lang/String; = "data_roaming_is_user_setting_key"

.field protected static final blacklist EVENT_BARRING_INFO_CHANGED:I = 0x3a

.field protected static final blacklist EVENT_CALL_RING:I = 0xe

.field protected static final blacklist EVENT_CARRIER_CONFIG_CHANGED:I = 0x2b

.field protected static final blacklist EVENT_CDMA_SUBSCRIPTION_SOURCE_CHANGED:I = 0x1b

.field protected static final blacklist EVENT_CELL_IDENTIFIER_DISCLOSURE:I = 0x48

.field public static final blacklist EVENT_EMERGENCY_CALLBACK_MODE_ENTER:I = 0x19

.field protected static final blacklist EVENT_EXIT_EMERGENCY_CALLBACK_RESPONSE:I = 0x1a

.field protected static final blacklist EVENT_GET_AVAILABLE_NETWORKS_DONE:I = 0x33

.field protected static final blacklist EVENT_GET_BASEBAND_VERSION_DONE:I = 0x6

.field protected static final blacklist EVENT_GET_CALL_FORWARD_DONE:I = 0xd

.field protected static final blacklist EVENT_GET_DEVICE_IDENTITY_DONE:I = 0x15

.field protected static final blacklist EVENT_GET_DEVICE_IMEI_DONE:I = 0x43

.field protected static final blacklist EVENT_GET_N1_MODE_ENABLED_DONE:I = 0x45

.field protected static final blacklist EVENT_GET_RADIO_CAPABILITY:I = 0x23

.field protected static final blacklist EVENT_GET_UICC_APPS_ENABLEMENT_DONE:I = 0x37

.field protected static final blacklist EVENT_GET_USAGE_SETTING_DONE:I = 0x3f

.field protected static final blacklist EVENT_ICC_CHANGED:I = 0x1e

.field protected static final blacklist EVENT_ICC_RECORD_EVENTS:I = 0x1d

.field protected static final blacklist EVENT_IMEI_MAPPING_CHANGED:I = 0x47

.field protected static final blacklist EVENT_IMS_DEREGISTRATION_TRIGGERED:I = 0x41

.field protected static final blacklist EVENT_LAST:I = 0x4b

.field protected static final blacklist EVENT_LINK_CAPACITY_CHANGED:I = 0x3b

.field protected static final blacklist EVENT_MODEM_RESET:I = 0x2d

.field protected static final blacklist EVENT_NV_READY:I = 0x17

.field protected static final blacklist EVENT_RADIO_AVAILABLE:I = 0x1

.field public static final blacklist EVENT_RADIO_OFF_OR_NOT_AVAILABLE:I = 0x8

.field protected static final blacklist EVENT_RADIO_ON:I = 0x5

.field protected static final blacklist EVENT_RADIO_STATE_CHANGED:I = 0x2f

.field protected static final blacklist EVENT_REAPPLY_UICC_APPS_ENABLEMENT_DONE:I = 0x38

.field protected static final blacklist EVENT_REGISTERED_TO_NETWORK:I = 0x13

.field protected static final blacklist EVENT_REGISTRATION_FAILED:I = 0x39

.field protected static final blacklist EVENT_REQUEST_VOICE_RADIO_TECH_DONE:I = 0x28

.field protected static final blacklist EVENT_RESET_CARRIER_KEY_IMSI_ENCRYPTION:I = 0x3c

.field protected static final blacklist EVENT_RIL_CONNECTED:I = 0x29

.field protected static final blacklist EVENT_RUIM_RECORDS_LOADED:I = 0x16

.field protected static final blacklist EVENT_SECURITY_ALGORITHM_UPDATE:I = 0x4a

.field protected static final blacklist EVENT_SET_CALL_FORWARD_DONE:I = 0xc

.field protected static final blacklist EVENT_SET_CARRIER_DATA_ENABLED:I = 0x30

.field protected static final blacklist EVENT_SET_CLIR_COMPLETE:I = 0x12

.field protected static final blacklist EVENT_SET_IDENTIFIER_DISCLOSURE_ENABLED_DONE:I = 0x49

.field protected static final blacklist EVENT_SET_N1_MODE_ENABLED_DONE:I = 0x46

.field protected static final blacklist EVENT_SET_NETWORK_AUTOMATIC:I = 0x1c

.field protected static final blacklist EVENT_SET_NULL_CIPHER_AND_INTEGRITY_DONE:I = 0x42

.field protected static final blacklist EVENT_SET_ROAMING_PREFERENCE_DONE:I = 0x2c

.field protected static final blacklist EVENT_SET_SECURITY_ALGORITHMS_UPDATED_ENABLED_DONE:I = 0x4b

.field protected static final blacklist EVENT_SET_USAGE_SETTING_DONE:I = 0x40

.field protected static final blacklist EVENT_SET_VM_NUMBER_DONE:I = 0x14

.field protected static final blacklist EVENT_SET_VONR_ENABLED_DONE:I = 0x3d

.field protected static final blacklist EVENT_SIM_RECORDS_LOADED:I = 0x3

.field protected static final blacklist EVENT_SRVCC_STATE_CHANGED:I = 0x1f

.field protected static final blacklist EVENT_SS:I = 0x24

.field protected static final blacklist EVENT_SSN:I = 0x2

.field protected static final blacklist EVENT_SUBSCRIPTIONS_CHANGED:I = 0x3e

.field protected static final blacklist EVENT_TRIGGER_NOTIFY_ANBR:I = 0x44

.field protected static final blacklist EVENT_UICC_APPS_ENABLEMENT_SETTING_CHANGED:I = 0x36

.field protected static final blacklist EVENT_UICC_APPS_ENABLEMENT_STATUS_CHANGED:I = 0x35

.field protected static final blacklist EVENT_UPDATE_PHONE_OBJECT:I = 0x2a

.field protected static final blacklist EVENT_USSD:I = 0x7

.field protected static final blacklist EVENT_VOICE_RADIO_TECH_CHANGED:I = 0x27

.field protected static final blacklist EVENT_VRS_OR_RAT_CHANGED:I = 0x2e

.field public static final blacklist EXTRA_KEY_ALERT_MESSAGE:Ljava/lang/String; = "android.telephony.ims.extra.WFC_REGISTRATION_FAILURE_MESSAGE"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist EXTRA_KEY_ALERT_SHOW:Ljava/lang/String; = "alertShow"

.field public static final blacklist EXTRA_KEY_ALERT_TITLE:Ljava/lang/String; = "android.telephony.ims.extra.WFC_REGISTRATION_FAILURE_TITLE"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist EXTRA_KEY_NOTIFICATION_MESSAGE:Ljava/lang/String; = "notificationMessage"

.field public static final blacklist IMEI_TYPE_PRIMARY:I = 0x1

.field public static final blacklist IMEI_TYPE_SECONDARY:I = 0x2

.field public static final blacklist IMEI_TYPE_UNKNOWN:I = -0x1

.field public static final blacklist NETWORK_SELECTION_KEY:Ljava/lang/String; = "network_selection_key"

.field public static final blacklist NETWORK_SELECTION_NAME_KEY:Ljava/lang/String; = "network_selection_name_key"

.field public static final blacklist NETWORK_SELECTION_SHORT_KEY:Ljava/lang/String; = "network_selection_short_key"

.field public static final blacklist PREF_IDENTIFIER_DISCLOSURE_NOTIFICATIONS_ENABLED:Ljava/lang/String; = "pref_identifier_disclosure_notifications_enabled"

.field public static final blacklist PREF_NULL_CIPHER_AND_INTEGRITY_ENABLED:Ljava/lang/String; = "pref_null_cipher_and_integrity_enabled"

.field public static final blacklist PREF_NULL_CIPHER_NOTIFICATIONS_ENABLED:Ljava/lang/String; = "pref_null_cipher_notifications_enabled"

.field protected static final blacklist lockForRadioTechnologyChange:Ljava/lang/Object;


# instance fields
.field protected final blacklist USSD_MAX_QUEUE:I

.field private final blacklist m2gAdminUpdater:Lcom/android/internal/telephony/TelephonyAdminReceiver;

.field protected blacklist mAccessNetworksManager:Lcom/android/internal/telephony/data/AccessNetworksManager;

.field private final blacklist mActionAttached:Ljava/lang/String;

.field private final blacklist mActionDetached:Ljava/lang/String;

.field private blacklist mAllowedNetworkTypesForReasons:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mAppSmsManager:Lcom/android/internal/telephony/AppSmsManager;

.field private blacklist mCallRingContinueToken:I

.field private blacklist mCallRingDelay:I

.field protected blacklist mCarrierActionAgent:Lcom/android/internal/telephony/CarrierActionAgent;

.field protected blacklist mCarrierResolver:Lcom/android/internal/telephony/CarrierResolver;

.field protected blacklist mCarrierSignalAgent:Lcom/android/internal/telephony/CarrierSignalAgent;

.field private final blacklist mCellInfoRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field public greylist-max-r mCi:Lcom/android/internal/telephony/CommandsInterface;

.field protected final greylist-max-r mContext:Landroid/content/Context;

.field protected blacklist mDataNetworkController:Lcom/android/internal/telephony/data/DataNetworkController;

.field protected blacklist mDeviceStateMonitor:Lcom/android/internal/telephony/DeviceStateMonitor;

.field protected final blacklist mDisconnectRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field protected blacklist mDisplayInfoController:Lcom/android/internal/telephony/DisplayInfoController;

.field private blacklist mDoesRilSendMultipleCallRing:Z

.field protected blacklist mEcmCanceledForEmergency:Z

.field protected final blacklist mEmergencyCallToggledRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field protected final blacklist mFeatureFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

.field private final blacklist mHandoverRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field protected final greylist-max-r mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/android/internal/telephony/uicc/IccRecords;",
            ">;"
        }
    .end annotation
.end field

.field protected greylist-max-r mImsPhone:Lcom/android/internal/telephony/Phone;

.field private final blacklist mIncomingRingRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field protected blacklist mIsAllowedNetworkTypesLoadedFromDb:Z

.field protected blacklist mIsCarrierNrSupported:Z

.field private blacklist mIsNetworkScanStarted:Z

.field protected blacklist mIsPhoneInEcmState:Z

.field private blacklist mIsUsageSettingSupported:Z

.field protected blacklist mIsVideoCapable:Z

.field private blacklist mIsVoiceCapable:Z

.field protected blacklist mLinkBandwidthEstimator:Lcom/android/internal/telephony/data/LinkBandwidthEstimator;

.field protected final blacklist mLocalLog:Lcom/android/internal/telephony/LocalLog;

.field private final blacklist mLogTag:Ljava/lang/String;

.field private blacklist mLooper:Landroid/os/Looper;

.field protected final blacklist mMmiCompleteRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field protected final greylist mMmiRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field private blacklist mName:Ljava/lang/String;

.field private final blacklist mNewRingingConnectionRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field protected greylist-max-r mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

.field private final blacklist mOtaspRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field protected greylist-max-r mPhoneId:I

.field private final blacklist mPhysicalChannelConfigRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field protected blacklist mPostDialHandler:Lcom/android/internal/telephony/Registrant;

.field protected final blacklist mPreciseCallStateRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field private final blacklist mPreferredNetworkTypeRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field private blacklist mPreferredUsageSetting:I

.field private final blacklist mProvisioningUrlFile:Ljava/io/File;

.field private final blacklist mRadioCapability:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/android/internal/telephony/RadioCapability;",
            ">;"
        }
    .end annotation
.end field

.field protected final blacklist mRadioOffOrNotAvailableRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field private final blacklist mRedialRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field private final blacklist mServiceStateRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field protected blacklist mSignalStrengthController:Lcom/android/internal/telephony/SignalStrengthController;

.field private blacklist mSimActivationTracker:Lcom/android/internal/telephony/SimActivationTracker;

.field protected final blacklist mSimRecordsLoadedRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field protected blacklist mSimulatedRadioControl:Lcom/android/internal/telephony/test/SimulatedRadioControl;

.field protected blacklist mSmsStats:Lcom/android/internal/telephony/metrics/SmsStats;

.field public greylist-max-r mSmsStorageMonitor:Lcom/android/internal/telephony/SmsStorageMonitor;

.field public blacklist mSmsUsageMonitor:Lcom/android/internal/telephony/SmsUsageMonitor;

.field protected blacklist mSubscriptionManagerService:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

.field protected final blacklist mSuppServiceFailedRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field protected blacklist mTelephonyAnalytics:Lcom/android/internal/telephony/analytics/TelephonyAnalytics;

.field protected blacklist mTelephonyComponentFactory:Lcom/android/internal/telephony/TelephonyComponentFactory;

.field private blacklist mTelephonyTester:Lcom/android/internal/telephony/TelephonyTester;

.field private volatile blacklist mTimeLastEmergencySmsSentMs:J

.field protected greylist-max-r mUiccApplication:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/android/internal/telephony/uicc/UiccCardApplication;",
            ">;"
        }
    .end annotation
.end field

.field protected greylist-max-r mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

.field private blacklist mUnitTestMode:Z

.field protected final blacklist mUnknownConnectionRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field private blacklist mUsageSettingFromModem:I

.field private final blacklist mVideoCapabilityChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field protected blacklist mVmCount:I

.field protected blacklist mVoiceCallSessionStats:Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;


# direct methods
.method public static synthetic blacklist $r8$lambda$tDvDs4kDELnW4GyObCabxRkkXU8(Lcom/android/internal/telephony/Phone;Ljava/lang/Integer;)Ljava/lang/String;
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/Phone;->lambda$setAllowedNetworkTypes$0(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 157
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/Phone;->lockForRadioTechnologyChange:Ljava/lang/Object;

    return-void
.end method

.method protected constructor blacklist <init>(Ljava/lang/String;Lcom/android/internal/telephony/PhoneNotifier;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;ZILcom/android/internal/telephony/TelephonyComponentFactory;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)V
    .registers 13

    .line 600
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const/16 v0, 0xa

    .line 160
    iput v0, p0, Lcom/android/internal/telephony/Phone;->USSD_MAX_QUEUE:I

    const/4 v0, 0x0

    .line 336
    iput v0, p0, Lcom/android/internal/telephony/Phone;->mVmCount:I

    const/4 v1, 0x1

    .line 345
    iput-boolean v1, p0, Lcom/android/internal/telephony/Phone;->mIsVoiceCapable:Z

    .line 350
    iput-boolean v0, p0, Lcom/android/internal/telephony/Phone;->mIsPhoneInEcmState:Z

    .line 353
    iput-boolean v0, p0, Lcom/android/internal/telephony/Phone;->mEcmCanceledForEmergency:Z

    const-wide/16 v2, -0x1

    .line 354
    iput-wide v2, p0, Lcom/android/internal/telephony/Phone;->mTimeLastEmergencySmsSentMs:J

    .line 358
    iput-boolean v0, p0, Lcom/android/internal/telephony/Phone;->mIsVideoCapable:Z

    const/4 v2, 0x0

    .line 359
    iput-object v2, p0, Lcom/android/internal/telephony/Phone;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    .line 361
    new-instance v3, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v3}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v3, p0, Lcom/android/internal/telephony/Phone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    .line 366
    new-instance v3, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v3}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v3, p0, Lcom/android/internal/telephony/Phone;->mUiccApplication:Ljava/util/concurrent/atomic/AtomicReference;

    .line 383
    iput-object v2, p0, Lcom/android/internal/telephony/Phone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    .line 386
    new-instance v3, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v3}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v3, p0, Lcom/android/internal/telephony/Phone;->mRadioCapability:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v3, -0x1

    .line 391
    iput v3, p0, Lcom/android/internal/telephony/Phone;->mPreferredUsageSetting:I

    .line 392
    iput v3, p0, Lcom/android/internal/telephony/Phone;->mUsageSettingFromModem:I

    .line 393
    iput-boolean v1, p0, Lcom/android/internal/telephony/Phone;->mIsUsageSettingSupported:Z

    .line 394
    iput-boolean v0, p0, Lcom/android/internal/telephony/Phone;->mIsNetworkScanStarted:Z

    .line 424
    new-instance v1, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v1}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/Phone;->mPreciseCallStateRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 426
    new-instance v1, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v1}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/Phone;->mHandoverRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 428
    new-instance v1, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v1}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/Phone;->mNewRingingConnectionRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 430
    new-instance v1, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v1}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/Phone;->mIncomingRingRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 432
    new-instance v1, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v1}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/Phone;->mDisconnectRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 434
    new-instance v1, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v1}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/Phone;->mServiceStateRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 436
    new-instance v1, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v1}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/Phone;->mMmiCompleteRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 438
    new-instance v1, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v1}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/Phone;->mMmiRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 441
    new-instance v1, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v1}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/Phone;->mUnknownConnectionRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 443
    new-instance v1, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v1}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/Phone;->mSuppServiceFailedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 445
    new-instance v1, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v1}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/Phone;->mRadioOffOrNotAvailableRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 447
    new-instance v1, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v1}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/Phone;->mSimRecordsLoadedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 449
    new-instance v1, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v1}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/Phone;->mVideoCapabilityChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 451
    new-instance v1, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v1}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/Phone;->mEmergencyCallToggledRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 453
    new-instance v1, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v1}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/Phone;->mCellInfoRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 455
    new-instance v1, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v1}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/Phone;->mRedialRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 457
    new-instance v1, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v1}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/Phone;->mPhysicalChannelConfigRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 459
    new-instance v1, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v1}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/Phone;->mOtaspRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 461
    new-instance v1, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v1}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/Phone;->mPreferredNetworkTypeRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 484
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/Phone;->mAllowedNetworkTypesForReasons:Ljava/util/Map;

    .line 491
    iput-boolean v0, p0, Lcom/android/internal/telephony/Phone;->mIsCarrierNrSupported:Z

    .line 492
    iput-boolean v0, p0, Lcom/android/internal/telephony/Phone;->mIsAllowedNetworkTypesLoadedFromDb:Z

    .line 3698
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/misc/radio/provisioning_urls.xml"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/telephony/Phone;->mProvisioningUrlFile:Ljava/io/File;

    .line 601
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Phone-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/Phone;->mLogTag:Ljava/lang/String;

    .line 602
    iput p6, p0, Lcom/android/internal/telephony/Phone;->mPhoneId:I

    .line 603
    iput-object p1, p0, Lcom/android/internal/telephony/Phone;->mName:Ljava/lang/String;

    .line 604
    iput-object p2, p0, Lcom/android/internal/telephony/Phone;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    .line 605
    iput-object p3, p0, Lcom/android/internal/telephony/Phone;->mContext:Landroid/content/Context;

    .line 606
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/Phone;->mLooper:Landroid/os/Looper;

    .line 607
    iput-object p4, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 608
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ".action_detached"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/Phone;->mActionDetached:Ljava/lang/String;

    .line 609
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ".action_attached"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/Phone;->mActionAttached:Ljava/lang/String;

    .line 610
    const-class p1, Lcom/android/internal/telephony/AppSmsManager;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p7, p1}, Lcom/android/internal/telephony/TelephonyComponentFactory;->inject(Ljava/lang/String;)Lcom/android/internal/telephony/TelephonyComponentFactory;

    move-result-object p1

    .line 611
    invoke-virtual {p1, p3}, Lcom/android/internal/telephony/TelephonyComponentFactory;->makeAppSmsManager(Landroid/content/Context;)Lcom/android/internal/telephony/AppSmsManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/Phone;->mAppSmsManager:Lcom/android/internal/telephony/AppSmsManager;

    .line 612
    new-instance p1, Lcom/android/internal/telephony/LocalLog;

    const/16 p2, 0x40

    invoke-direct {p1, p2}, Lcom/android/internal/telephony/LocalLog;-><init>(I)V

    iput-object p1, p0, Lcom/android/internal/telephony/Phone;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    .line 614
    iput-object p8, p0, Lcom/android/internal/telephony/Phone;->mFeatureFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

    .line 616
    invoke-direct {p0, p5}, Lcom/android/internal/telephony/Phone;->setUnitTestMode(Z)V

    .line 618
    invoke-static {p3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 619
    iget-object p1, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 p2, 0xe

    invoke-interface {p1, p0, p2, v2}, Lcom/android/internal/telephony/CommandsInterface;->setOnCallRing(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 627
    const-string p1, "phone"

    invoke-virtual {p3, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    .line 628
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/internal/telephony/Phone;->mIsVoiceCapable:Z

    .line 640
    invoke-static {}, Landroid/internal/telephony/sysprop/TelephonyProperties;->ril_sends_multiple_call_ring()Ljava/util/Optional;

    move-result-object p1

    .line 641
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, p2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/internal/telephony/Phone;->mDoesRilSendMultipleCallRing:Z

    .line 642
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mDoesRilSendMultipleCallRing="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/android/internal/telephony/Phone;->mDoesRilSendMultipleCallRing:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    invoke-static {}, Landroid/internal/telephony/sysprop/TelephonyProperties;->call_ring_delay()Ljava/util/Optional;

    move-result-object p1

    const/16 p2, 0xbb8

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/Phone;->mCallRingDelay:I

    .line 645
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mCallRingDelay="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/internal/telephony/Phone;->mCallRingDelay:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    new-instance p1, Lcom/android/internal/telephony/metrics/SmsStats;

    invoke-direct {p1, p0}, Lcom/android/internal/telephony/metrics/SmsStats;-><init>(Lcom/android/internal/telephony/Phone;)V

    iput-object p1, p0, Lcom/android/internal/telephony/Phone;->mSmsStats:Lcom/android/internal/telephony/metrics/SmsStats;

    .line 650
    invoke-static {}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getInstance()Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/Phone;->mSubscriptionManagerService:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    .line 651
    new-instance p1, Lcom/android/internal/telephony/TelephonyAdminReceiver;

    invoke-direct {p1, p3, p0}, Lcom/android/internal/telephony/TelephonyAdminReceiver;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/Phone;)V

    iput-object p1, p0, Lcom/android/internal/telephony/Phone;->m2gAdminUpdater:Lcom/android/internal/telephony/TelephonyAdminReceiver;

    .line 653
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result p1

    const/4 p2, 0x5

    if-ne p1, p2, :cond_1da

    return-void

    .line 657
    :cond_1da
    sget-boolean p1, Lcom/android/internal/telephony/util/TelephonyUtils;->IS_DEBUGGABLE:Z

    if-eqz p1, :cond_1e5

    .line 658
    new-instance p1, Lcom/android/internal/telephony/TelephonyTester;

    invoke-direct {p1, p0}, Lcom/android/internal/telephony/TelephonyTester;-><init>(Lcom/android/internal/telephony/Phone;)V

    iput-object p1, p0, Lcom/android/internal/telephony/Phone;->mTelephonyTester:Lcom/android/internal/telephony/TelephonyTester;

    .line 662
    :cond_1e5
    iput-object p7, p0, Lcom/android/internal/telephony/Phone;->mTelephonyComponentFactory:Lcom/android/internal/telephony/TelephonyComponentFactory;

    .line 663
    const-class p1, Lcom/android/internal/telephony/SmsStorageMonitor;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p7, p1}, Lcom/android/internal/telephony/TelephonyComponentFactory;->inject(Ljava/lang/String;)Lcom/android/internal/telephony/TelephonyComponentFactory;

    move-result-object p1

    .line 664
    invoke-virtual {p1, p0, p8}, Lcom/android/internal/telephony/TelephonyComponentFactory;->makeSmsStorageMonitor(Lcom/android/internal/telephony/Phone;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)Lcom/android/internal/telephony/SmsStorageMonitor;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/Phone;->mSmsStorageMonitor:Lcom/android/internal/telephony/SmsStorageMonitor;

    .line 665
    iget-object p1, p0, Lcom/android/internal/telephony/Phone;->mTelephonyComponentFactory:Lcom/android/internal/telephony/TelephonyComponentFactory;

    const-class p2, Lcom/android/internal/telephony/SmsUsageMonitor;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/TelephonyComponentFactory;->inject(Ljava/lang/String;)Lcom/android/internal/telephony/TelephonyComponentFactory;

    move-result-object p1

    .line 666
    invoke-virtual {p1, p3, p8}, Lcom/android/internal/telephony/TelephonyComponentFactory;->makeSmsUsageMonitor(Landroid/content/Context;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)Lcom/android/internal/telephony/SmsUsageMonitor;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/Phone;->mSmsUsageMonitor:Lcom/android/internal/telephony/SmsUsageMonitor;

    .line 667
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/Phone;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    const/16 p2, 0x1e

    .line 668
    invoke-virtual {p1, p0, p2, v2}, Lcom/android/internal/telephony/uicc/UiccController;->registerForIccChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 669
    iget-object p1, p0, Lcom/android/internal/telephony/Phone;->mTelephonyComponentFactory:Lcom/android/internal/telephony/TelephonyComponentFactory;

    const-class p2, Lcom/android/internal/telephony/SimActivationTracker;

    .line 670
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/TelephonyComponentFactory;->inject(Ljava/lang/String;)Lcom/android/internal/telephony/TelephonyComponentFactory;

    move-result-object p1

    .line 671
    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/TelephonyComponentFactory;->makeSimActivationTracker(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/SimActivationTracker;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/Phone;->mSimActivationTracker:Lcom/android/internal/telephony/SimActivationTracker;

    .line 672
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result p1

    const/4 p2, 0x3

    if-eq p1, p2, :cond_234

    .line 673
    iget-object p1, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 p2, 0x1f

    invoke-interface {p1, p0, p2, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForSrvccStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 676
    :cond_234
    new-instance p1, Lcom/android/internal/telephony/analytics/TelephonyAnalytics;

    invoke-direct {p1, p0}, Lcom/android/internal/telephony/analytics/TelephonyAnalytics;-><init>(Lcom/android/internal/telephony/Phone;)V

    iput-object p1, p0, Lcom/android/internal/telephony/Phone;->mTelephonyAnalytics:Lcom/android/internal/telephony/analytics/TelephonyAnalytics;

    return-void
.end method

.method protected constructor blacklist <init>(Ljava/lang/String;Lcom/android/internal/telephony/PhoneNotifier;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;ZLcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)V
    .registers 16

    const v6, 0x7fffffff

    .line 580
    invoke-static {}, Lcom/android/internal/telephony/TelephonyComponentFactory;->getInstance()Lcom/android/internal/telephony/TelephonyComponentFactory;

    move-result-object v7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v8, p6

    .line 579
    invoke-direct/range {v0 .. v8}, Lcom/android/internal/telephony/Phone;-><init>(Ljava/lang/String;Lcom/android/internal/telephony/PhoneNotifier;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;ZILcom/android/internal/telephony/TelephonyComponentFactory;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)V

    return-void
.end method

.method private blacklist checkCorrectThread(Landroid/os/Handler;)V
    .registers 2

    .line 1858
    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p1

    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mLooper:Landroid/os/Looper;

    if-ne p1, p0, :cond_9

    return-void

    .line 1859
    :cond_9
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "com.android.internal.telephony.Phone must be used from within one thread"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static blacklist checkWfcWifiOnlyModeBeforeDial(Lcom/android/internal/telephony/Phone;ILandroid/content/Context;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    if-eqz p0, :cond_a

    .line 4680
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->isWifiCallingEnabled()Z

    move-result p0

    if-nez p0, :cond_9

    goto :goto_a

    :cond_9
    return-void

    .line 4681
    :cond_a
    :goto_a
    invoke-static {p2, p1}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object p0

    .line 4682
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->isWfcEnabledByPlatform()Z

    move-result p1

    if-eqz p1, :cond_2a

    .line 4683
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->isWfcEnabledByUser()Z

    move-result p1

    if-eqz p1, :cond_2a

    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->getWfcMode()I

    move-result p0

    if-eqz p0, :cond_21

    goto :goto_2a

    .line 4686
    :cond_21
    new-instance p0, Lcom/android/internal/telephony/CallStateException;

    const/4 p1, 0x1

    const-string p2, "WFC Wi-Fi Only Mode: IMS not registered"

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/CallStateException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_2a
    :goto_2a
    return-void
.end method

.method private blacklist clearSavedNetworkSelection()V
    .registers 4

    .line 1651
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "network_selection_key"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1652
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "network_selection_name_key"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1653
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "network_selection_short_key"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1654
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private blacklist convertAllowedNetworkTypeDbNameToMapIndex(Ljava/lang/String;)I
    .registers 8

    const/4 p0, 0x4

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2498
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    const/4 v4, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_52

    :goto_10
    move p1, v4

    goto :goto_48

    :sswitch_12
    const-string v5, "carrier"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1b

    goto :goto_10

    :cond_1b
    move p1, p0

    goto :goto_48

    :sswitch_1d
    const-string v5, "power"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_26

    goto :goto_10

    :cond_26
    move p1, v0

    goto :goto_48

    :sswitch_28
    const-string v5, "user"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_31

    goto :goto_10

    :cond_31
    move p1, v1

    goto :goto_48

    :sswitch_33
    const-string v5, "test"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3c

    goto :goto_10

    :cond_3c
    move p1, v2

    goto :goto_48

    :sswitch_3e
    const-string v5, "enable_2g"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_47

    goto :goto_10

    :cond_47
    move p1, v3

    :goto_48
    packed-switch p1, :pswitch_data_68

    return v4

    :pswitch_4c
    return v1

    :pswitch_4d
    return v2

    :pswitch_4e
    return v3

    :pswitch_4f
    return p0

    :pswitch_50
    return v0

    nop

    :sswitch_data_52
    .sparse-switch
        -0x25a64d4f -> :sswitch_3e
        0x364492 -> :sswitch_33
        0x36ebcb -> :sswitch_28
        0x65e8905 -> :sswitch_1d
        0x210adef8 -> :sswitch_12
    .end sparse-switch

    :pswitch_data_68
    .packed-switch 0x0
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
    .end packed-switch
.end method

.method public static blacklist convertAllowedNetworkTypeMapIndexToDbName(I)Ljava/lang/String;
    .registers 4

    if-eqz p0, :cond_36

    const/4 v0, 0x1

    if-eq p0, v0, :cond_33

    const/4 v0, 0x2

    if-eq p0, v0, :cond_30

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2d

    const/4 v0, 0x4

    if-ne p0, v0, :cond_11

    .line 2533
    const-string p0, "test"

    return-object p0

    .line 2535
    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No DB name conversion available for allowed network type reason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ". Did you forget to add an ALLOWED_NETWORK_TYPE_TEXT entry for a new reason?"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2531
    :cond_2d
    const-string p0, "enable_2g"

    return-object p0

    .line 2529
    :cond_30
    const-string p0, "carrier"

    return-object p0

    .line 2527
    :cond_33
    const-string p0, "power"

    return-object p0

    .line 2525
    :cond_36
    const-string p0, "user"

    return-object p0
.end method

.method private blacklist getCallForwardingIndicatorFromSharedPref()I
    .registers 10

    .line 2173
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v0

    .line 2174
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_91

    .line 2175
    iget-object v1, p0, Lcom/android/internal/telephony/Phone;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 2176
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cf_status_key"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, -0x1

    invoke-interface {v1, v3, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 2177
    iget-object v6, p0, Lcom/android/internal/telephony/Phone;->mLogTag:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getCallForwardingIndicatorFromSharedPref: for subId "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "= "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v3, v5, :cond_90

    const/4 v0, 0x0

    .line 2182
    const-string v5, "cf_id_key"

    invoke-interface {v1, v5, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_90

    .line 2184
    invoke-interface {p0}, Lcom/android/internal/telephony/PhoneInternalInterface;->getSubscriberId()Ljava/lang/String;

    move-result-object v6

    .line 2186
    invoke-virtual {v0, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7c

    .line 2188
    invoke-interface {v1, v4, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    const/4 v0, 0x1

    if-ne v3, v0, :cond_62

    move v2, v0

    .line 2189
    :cond_62
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/Phone;->setCallForwardingIndicatorInSharedPref(Z)V

    .line 2191
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mLogTag:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCallForwardingIndicatorFromSharedPref: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_83

    .line 2193
    :cond_7c
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mLogTag:Ljava/lang/String;

    const-string v0, "getCallForwardingIndicatorFromSharedPref: returning DISABLED as status for matching subscriberId not found"

    invoke-static {p0, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2198
    :goto_83
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 2199
    invoke-interface {p0, v5}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2200
    invoke-interface {p0, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2201
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_90
    return v3

    .line 2205
    :cond_91
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mLogTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCallForwardingIndicatorFromSharedPref: invalid subId "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method private blacklist getEffectiveAllowedNetworkTypes()J
    .registers 7

    .line 2356
    invoke-static {}, Landroid/telephony/TelephonyManager;->getAllNetworkTypesBitmask()J

    move-result-wide v0

    .line 2357
    iget-object v2, p0, Lcom/android/internal/telephony/Phone;->mAllowedNetworkTypesForReasons:Ljava/util/Map;

    monitor-enter v2

    .line 2358
    :try_start_7
    iget-object v3, p0, Lcom/android/internal/telephony/Phone;->mAllowedNetworkTypesForReasons:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_11
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_25

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    and-long/2addr v0, v4

    goto :goto_11

    :catchall_23
    move-exception p0

    goto :goto_7c

    .line 2361
    :cond_25
    monitor-exit v2
    :try_end_26
    .catchall {:try_start_7 .. :try_end_26} :catchall_23

    .line 2362
    iget-boolean v2, p0, Lcom/android/internal/telephony/Phone;->mIsCarrierNrSupported:Z

    if-nez v2, :cond_2e

    const-wide/32 v2, -0x80001

    and-long/2addr v0, v2

    .line 2365
    :cond_2e
    iget-object v2, p0, Lcom/android/internal/telephony/Phone;->m2gAdminUpdater:Lcom/android/internal/telephony/TelephonyAdminReceiver;

    invoke-virtual {v2}, Lcom/android/internal/telephony/TelephonyAdminReceiver;->isCellular2gDisabled()Z

    move-result v2

    if-eqz v2, :cond_57

    .line 2366
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SubId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " disabling 2g in getEffectiveAllowedNetworkTypes according to admin user restriction"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/Phone;->logd(Ljava/lang/String;)V

    const-wide/32 v2, -0x804c

    and-long/2addr v0, v2

    .line 2371
    :cond_57
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SubId"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",getEffectiveAllowedNetworkTypes: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2372
    invoke-static {v0, v1}, Landroid/telephony/TelephonyManager;->convertNetworkTypeBitmaskToString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2371
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/Phone;->logd(Ljava/lang/String;)V

    return-wide v0

    .line 2361
    :goto_7c
    :try_start_7c
    monitor-exit v2
    :try_end_7d
    .catchall {:try_start_7c .. :try_end_7d} :catchall_23

    throw p0
.end method

.method protected static blacklist getInEcmMode()Z
    .registers 2

    .line 3002
    invoke-static {}, Lcom/android/internal/telephony/domainselection/DomainSelectionResolver;->getInstance()Lcom/android/internal/telephony/domainselection/DomainSelectionResolver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/domainselection/DomainSelectionResolver;->isDomainSelectionSupported()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 3003
    invoke-static {}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->getInstance()Lcom/android/internal/telephony/emergency/EmergencyStateTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->isInEcm()Z

    move-result v0

    return v0

    .line 3005
    :cond_13
    invoke-static {}, Landroid/internal/telephony/sysprop/TelephonyProperties;->in_ecm_mode()Ljava/util/Optional;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private blacklist getNewRingingConnectionRegistrantsAsString()Ljava/lang/String;
    .registers 4

    .line 3850
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 3851
    :goto_6
    iget-object v2, p0, Lcom/android/internal/telephony/Phone;->mNewRingingConnectionRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v2}, Lcom/android/internal/telephony/RegistrantList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1e

    .line 3852
    iget-object v2, p0, Lcom/android/internal/telephony/Phone;->mNewRingingConnectionRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/RegistrantList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 3854
    :cond_1e
    const-string p0, ", "

    invoke-static {p0, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private blacklist getProvisioningUrlBaseFromFile()Ljava/lang/String;
    .registers 9

    .line 3711
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    const/4 v1, 0x0

    .line 3713
    :try_start_b
    new-instance v2, Ljava/io/FileReader;

    iget-object v3, p0, Lcom/android/internal/telephony/Phone;->mProvisioningUrlFile:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_12
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_12} :catch_bb
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_b .. :try_end_12} :catch_2d
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_12} :catch_2b

    .line 3714
    :try_start_12
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    .line 3715
    invoke-interface {v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 3716
    const-string v4, "provisioningUrls"

    invoke-static {v3, v4}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 3719
    :cond_1e
    :goto_1e
    invoke-static {v3}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 3721
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4
    :try_end_25
    .catchall {:try_start_12 .. :try_end_25} :catchall_6a

    if-nez v4, :cond_30

    .line 3742
    :try_start_27
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_2a
    .catch Ljava/io/FileNotFoundException; {:try_start_27 .. :try_end_2a} :catch_bb
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_27 .. :try_end_2a} :catch_2d
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_2a} :catch_2b

    return-object v1

    :catch_2b
    move-exception v0

    goto :goto_8d

    :catch_2d
    move-exception v0

    goto/16 :goto_a4

    .line 3724
    :cond_30
    :try_start_30
    const-string v5, "provisioningUrl"

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 3725
    const-string v4, "mcc"

    invoke-interface {v3, v1, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_3e
    .catchall {:try_start_30 .. :try_end_3e} :catchall_6a

    if-eqz v4, :cond_1e

    .line 3727
    :try_start_40
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iget v5, v0, Landroid/content/res/Configuration;->mcc:I

    if-ne v4, v5, :cond_1e

    .line 3728
    const-string v4, "mnc"

    invoke-interface {v3, v1, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1e

    .line 3729
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iget v5, v0, Landroid/content/res/Configuration;->mnc:I

    if-ne v4, v5, :cond_1e

    .line 3730
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 3731
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_1e

    .line 3732
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0
    :try_end_66
    .catch Ljava/lang/NumberFormatException; {:try_start_40 .. :try_end_66} :catch_6c
    .catchall {:try_start_40 .. :try_end_66} :catchall_6a

    .line 3742
    :try_start_66
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_69
    .catch Ljava/io/FileNotFoundException; {:try_start_66 .. :try_end_69} :catch_bb
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_66 .. :try_end_69} :catch_2d
    .catch Ljava/io/IOException; {:try_start_66 .. :try_end_69} :catch_2b

    return-object v0

    :catchall_6a
    move-exception v0

    goto :goto_84

    :catch_6c
    move-exception v4

    .line 3737
    :try_start_6d
    iget-object v5, p0, Lcom/android/internal/telephony/Phone;->mLogTag:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception in getProvisioningUrlBaseFromFile: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_83
    .catchall {:try_start_6d .. :try_end_83} :catchall_6a

    goto :goto_1e

    .line 3713
    :goto_84
    :try_start_84
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_87
    .catchall {:try_start_84 .. :try_end_87} :catchall_88

    goto :goto_8c

    :catchall_88
    move-exception v2

    :try_start_89
    invoke-virtual {v0, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_8c
    throw v0
    :try_end_8d
    .catch Ljava/io/FileNotFoundException; {:try_start_89 .. :try_end_8d} :catch_bb
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_89 .. :try_end_8d} :catch_2d
    .catch Ljava/io/IOException; {:try_start_89 .. :try_end_8d} :catch_2b

    .line 3747
    :goto_8d
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mLogTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "I/O exception reading Carrier Provisioning Urls file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c2

    .line 3745
    :goto_a4
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mLogTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Xml parser exception reading Carrier Provisioning Urls file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c2

    .line 3743
    :catch_bb
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mLogTag:Ljava/lang/String;

    const-string v0, "Carrier Provisioning Urls file not found"

    invoke-static {p0, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_c2
    return-object v1
.end method

.method private blacklist getResolvedUsageSetting(I)I
    .registers 5

    .line 4488
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mSubscriptionManagerService:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    .line 4489
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getSubscriptionInfoInternal(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 4491
    invoke-virtual {v0}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->toSubscriptionInfo()Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    const/4 v1, -0x1

    if-nez v0, :cond_26

    .line 4495
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to get SubscriptionInfo for subId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/Phone;->loge(Ljava/lang/String;)V

    return v1

    .line 4499
    :cond_26
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getUsageSetting()I

    move-result p1

    if-ne p1, v1, :cond_2d

    return v1

    .line 4503
    :cond_2d
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getUsageSetting()I

    move-result p1

    if-eqz p1, :cond_38

    .line 4504
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getUsageSetting()I

    move-result p0

    return p0

    .line 4507
    :cond_38
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->isOpportunistic()Z

    move-result p1

    if-eqz p1, :cond_40

    const/4 p0, 0x2

    return p0

    .line 4510
    :cond_40
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x10e006e

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    return p0
.end method

.method private blacklist getRoamingOverrideHelper(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    .line 4356
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getIccSerialNumber()Ljava/lang/String;

    move-result-object v0

    .line 4357
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_34

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_12

    goto :goto_34

    .line 4361
    :cond_12
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 4362
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    if-nez p0, :cond_2f

    return v2

    .line 4366
    :cond_2f
    invoke-interface {p0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_34
    :goto_34
    return v2
.end method

.method private static greylist-max-r getVideoState(Lcom/android/internal/telephony/Call;)I
    .registers 1

    .line 3060
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object p0

    if-eqz p0, :cond_b

    .line 3062
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getVideoState()I

    move-result p0

    return p0

    :cond_b
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist handleSetSelectNetwork(Landroid/os/AsyncResult;)V
    .registers 4

    .line 1618
    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v1, v0, Lcom/android/internal/telephony/Phone$NetworkSelectMessage;

    if-nez v1, :cond_e

    .line 1619
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mLogTag:Ljava/lang/String;

    const-string p1, "unexpected result from user object."

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1623
    :cond_e
    check-cast v0, Lcom/android/internal/telephony/Phone$NetworkSelectMessage;

    .line 1627
    iget-object p0, v0, Lcom/android/internal/telephony/Phone$NetworkSelectMessage;->message:Landroid/os/Message;

    if-eqz p0, :cond_20

    .line 1628
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {p0, v1, p1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1629
    iget-object p0, v0, Lcom/android/internal/telephony/Phone$NetworkSelectMessage;->message:Landroid/os/Message;

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_20
    return-void
.end method

.method private blacklist handleSrvccStateChanged([I)V
    .registers 6

    .line 936
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mLogTag:Ljava/lang/String;

    const-string v1, "handleSrvccStateChanged"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 939
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    .line 940
    sget-object v1, Lcom/android/internal/telephony/Call$SrvccState;->NONE:Lcom/android/internal/telephony/Call$SrvccState;

    if-eqz p1, :cond_4a

    .line 941
    array-length v1, p1

    if-eqz v1, :cond_4a

    const/4 v1, 0x0

    .line 942
    aget p1, p1, v1

    if-eqz v0, :cond_18

    .line 944
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/Phone;->notifySrvccState(I)V

    :cond_18
    const/4 v1, 0x0

    if-eqz p1, :cond_2b

    const/4 v0, 0x1

    if-eq p1, v0, :cond_28

    const/4 v0, 0x2

    if-eq p1, v0, :cond_25

    const/4 v0, 0x3

    if-eq p1, v0, :cond_25

    goto :goto_4a

    .line 961
    :cond_25
    sget-object v0, Lcom/android/internal/telephony/Call$SrvccState;->FAILED:Lcom/android/internal/telephony/Call$SrvccState;

    goto :goto_40

    .line 957
    :cond_28
    sget-object v0, Lcom/android/internal/telephony/Call$SrvccState;->COMPLETED:Lcom/android/internal/telephony/Call$SrvccState;

    goto :goto_40

    .line 948
    :cond_2b
    sget-object v2, Lcom/android/internal/telephony/Call$SrvccState;->STARTED:Lcom/android/internal/telephony/Call$SrvccState;

    if-eqz v0, :cond_38

    .line 950
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getHandoverConnection()Ljava/util/ArrayList;

    move-result-object v1

    .line 951
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/Phone;->migrateFrom(Lcom/android/internal/telephony/Phone;)V

    :goto_36
    move-object v0, v2

    goto :goto_40

    .line 953
    :cond_38
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mLogTag:Ljava/lang/String;

    const-string v3, "HANDOVER_STARTED: mImsPhone null"

    invoke-static {v0, v3}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_36

    .line 969
    :goto_40
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/android/internal/telephony/CallTracker;->notifySrvccState(Lcom/android/internal/telephony/Call$SrvccState;Ljava/util/ArrayList;)V

    .line 971
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Phone;->notifySrvccStateChanged(I)V

    :cond_4a
    :goto_4a
    return-void
.end method

.method public static blacklist isEmergencyCallOnly()Z
    .registers 7

    .line 4793
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhones()[Lcom/android/internal/telephony/Phone;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_8
    if-ge v3, v1, :cond_25

    aget-object v5, v0, v3

    if-eqz v5, :cond_22

    .line 4795
    invoke-virtual {v5}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v5

    .line 4796
    invoke-virtual {v5}, Lcom/android/internal/telephony/ServiceStateTracker;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v6

    .line 4798
    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/ServiceStateTracker;->getCombinedRegState(Landroid/telephony/ServiceState;)I

    move-result v5

    if-nez v5, :cond_1d

    return v2

    .line 4801
    :cond_1d
    invoke-virtual {v6}, Landroid/telephony/ServiceState;->isEmergencyOnly()Z

    move-result v5

    or-int/2addr v4, v5

    :cond_22
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_25
    return v4
.end method

.method private blacklist isVideoCallOrConference(Lcom/android/internal/telephony/Call;)Z
    .registers 4

    .line 3075
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->isMultiparty()Z

    move-result p0

    const/4 v0, 0x1

    if-eqz p0, :cond_8

    return v0

    .line 3080
    :cond_8
    instance-of p0, p1, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    const/4 v1, 0x0

    if-eqz p0, :cond_22

    .line 3081
    check-cast p1, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    .line 3082
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getImsCall()Lcom/android/ims/ImsCall;

    move-result-object p0

    if-eqz p0, :cond_22

    .line 3083
    invoke-virtual {p0}, Lcom/android/ims/ImsCall;->isVideoCall()Z

    move-result p1

    if-nez p1, :cond_21

    .line 3084
    invoke-virtual {p0}, Lcom/android/ims/ImsCall;->wasVideoCall()Z

    move-result p0

    if-eqz p0, :cond_22

    :cond_21
    return v0

    :cond_22
    return v1
.end method

.method private synthetic blacklist lambda$setAllowedNetworkTypes$0(Ljava/lang/Integer;)Ljava/lang/String;
    .registers 4

    .line 2596
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/android/internal/telephony/Phone;->convertAllowedNetworkTypeMapIndexToDbName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mAllowedNetworkTypesForReasons:Ljava/util/Map;

    .line 2597
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private blacklist logd(Ljava/lang/String;)V
    .registers 5

    .line 5706
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mLogTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/internal/telephony/Phone;->mPhoneId:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "] "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist loge(Ljava/lang/String;)V
    .registers 5

    .line 5714
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mLogTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/internal/telephony/Phone;->mPhoneId:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "] "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist notifyIncomingRing()V
    .registers 3

    .line 3879
    iget-boolean v0, p0, Lcom/android/internal/telephony/Phone;->mIsVoiceCapable:Z

    if-nez v0, :cond_5

    return-void

    .line 3881
    :cond_5
    new-instance v0, Landroid/os/AsyncResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 3882
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mIncomingRingRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    return-void
.end method

.method private blacklist notifyMessageWaitingIndicator()V
    .registers 2

    .line 2878
    iget-boolean v0, p0, Lcom/android/internal/telephony/Phone;->mIsVoiceCapable:Z

    if-nez v0, :cond_5

    return-void

    .line 2882
    :cond_5
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/PhoneNotifier;->notifyMessageWaitingChanged(Lcom/android/internal/telephony/Phone;)V

    return-void
.end method

.method private blacklist onCheckForNetworkSelectionModeAutomatic(Landroid/os/Message;)V
    .registers 6

    .line 1472
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 1473
    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Message;

    .line 1475
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    const/4 v2, 0x1

    if-nez v1, :cond_19

    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v1, :cond_19

    .line 1477
    :try_start_11
    check-cast v1, [I

    const/4 v3, 0x0

    .line 1478
    aget v1, v1, v3
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_16} :catch_19

    if-nez v1, :cond_19

    goto :goto_1a

    :catch_19
    :cond_19
    move v3, v2

    .line 1490
    :goto_1a
    new-instance v1, Lcom/android/internal/telephony/Phone$NetworkSelectMessage;

    invoke-direct {v1}, Lcom/android/internal/telephony/Phone$NetworkSelectMessage;-><init>()V

    .line 1491
    iput-object v0, v1, Lcom/android/internal/telephony/Phone$NetworkSelectMessage;->message:Landroid/os/Message;

    .line 1492
    const-string v0, ""

    iput-object v0, v1, Lcom/android/internal/telephony/Phone$NetworkSelectMessage;->operatorNumeric:Ljava/lang/String;

    .line 1493
    iput-object v0, v1, Lcom/android/internal/telephony/Phone$NetworkSelectMessage;->operatorAlphaLong:Ljava/lang/String;

    .line 1494
    iput-object v0, v1, Lcom/android/internal/telephony/Phone$NetworkSelectMessage;->operatorAlphaShort:Ljava/lang/String;

    if-eqz v3, :cond_3e

    .line 1497
    iget-object p1, p0, Lcom/android/internal/telephony/Phone;->mLogTag:Ljava/lang/String;

    const-string v0, "setNetworkSelectionModeAutomatic - set network selection auto"

    invoke-static {p1, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0x11

    .line 1498
    invoke-virtual {p0, p1, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1499
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->setNetworkSelectionModeAutomatic(Landroid/os/Message;)V

    goto :goto_50

    .line 1501
    :cond_3e
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mLogTag:Ljava/lang/String;

    const-string v3, "setNetworkSelectionModeAutomatic - already auto, ignoring"

    invoke-static {v0, v3}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1503
    iget-object v0, v1, Lcom/android/internal/telephony/Phone$NetworkSelectMessage;->message:Landroid/os/Message;

    if-eqz v0, :cond_4b

    .line 1504
    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 1507
    :cond_4b
    iput-object v1, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    .line 1508
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/Phone;->handleSetSelectNetwork(Landroid/os/AsyncResult;)V

    .line 1511
    :goto_50
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/Phone;->updateSavedNetworkOperator(Lcom/android/internal/telephony/Phone$NetworkSelectMessage;)V

    return-void
.end method

.method private blacklist restoreSavedNetworkSelection(Landroid/os/Message;)V
    .registers 4

    .line 1664
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getSavedNetworkSelection()Lcom/android/internal/telephony/OperatorInfo;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 1667
    invoke-virtual {v0}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_11

    goto :goto_16

    :cond_11
    const/4 v1, 0x1

    .line 1670
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/internal/telephony/Phone;->selectNetworkManually(Lcom/android/internal/telephony/OperatorInfo;ZLandroid/os/Message;)V

    return-void

    .line 1668
    :cond_16
    :goto_16
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Phone;->setNetworkSelectionModeAutomatic(Landroid/os/Message;)V

    return-void
.end method

.method private blacklist sendIncomingCallRingNotification(I)V
    .registers 5

    .line 3889
    iget-boolean v0, p0, Lcom/android/internal/telephony/Phone;->mIsVoiceCapable:Z

    if-eqz v0, :cond_24

    iget-boolean v0, p0, Lcom/android/internal/telephony/Phone;->mDoesRilSendMultipleCallRing:Z

    if-nez v0, :cond_24

    iget v0, p0, Lcom/android/internal/telephony/Phone;->mCallRingContinueToken:I

    if-ne p1, v0, :cond_24

    .line 3891
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mLogTag:Ljava/lang/String;

    const-string v1, "Sending notifyIncomingRing"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3892
    invoke-direct {p0}, Lcom/android/internal/telephony/Phone;->notifyIncomingRing()V

    const/16 v0, 0xf

    const/4 v1, 0x0

    .line 3894
    invoke-virtual {p0, v0, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    iget v0, p0, Lcom/android/internal/telephony/Phone;->mCallRingDelay:I

    int-to-long v0, v0

    .line 3893
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    .line 3896
    :cond_24
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mLogTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignoring ring notification request, mDoesRilSendMultipleCallRing="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/internal/telephony/Phone;->mDoesRilSendMultipleCallRing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " token="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " mCallRingContinueToken="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/internal/telephony/Phone;->mCallRingContinueToken:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " mIsVoiceCapable="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/internal/telephony/Phone;->mIsVoiceCapable:Z

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist setCallForwardingIndicatorInSharedPref(Z)V
    .registers 6

    .line 2213
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v0

    .line 2214
    iget-object v1, p0, Lcom/android/internal/telephony/Phone;->mLogTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setCallForwardingIndicatorInSharedPref: Storing status = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " in pref "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "cf_status_key"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2217
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 2218
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 2219
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2220
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private blacklist setRoamingOverrideHelper(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 4215
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mContext:Landroid/content/Context;

    .line 4216
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 4217
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    if-eqz p1, :cond_2f

    .line 4218
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_22

    goto :goto_2f

    .line 4221
    :cond_22
    new-instance p3, Ljava/util/HashSet;

    invoke-direct {p3, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {p0, p2, p3}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void

    .line 4219
    :cond_2f
    :goto_2f
    invoke-interface {p0, p2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private blacklist setUnitTestMode(Z)V
    .registers 2

    .line 1697
    iput-boolean p1, p0, Lcom/android/internal/telephony/Phone;->mUnitTestMode:Z

    return-void
.end method

.method private blacklist updateAllowedNetworkTypeForCarrierWithCarrierConfig()J
    .registers 6

    .line 2544
    sget v0, Lcom/android/internal/telephony/RILConstants;->PREFERRED_NETWORK_MODE:I

    invoke-static {v0}, Landroid/telephony/RadioAccessFamily;->getRafFromNetworkType(I)I

    move-result v0

    int-to-long v0, v0

    .line 2547
    iget-object v2, p0, Lcom/android/internal/telephony/Phone;->mAllowedNetworkTypesForReasons:Ljava/util/Map;

    monitor-enter v2

    .line 2548
    :try_start_a
    iget-object v3, p0, Lcom/android/internal/telephony/Phone;->mAllowedNetworkTypesForReasons:Ljava/util/Map;

    const/4 v4, 0x2

    .line 2549
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 2550
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 2548
    invoke-interface {v3, v4, v0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 2551
    monitor-exit v2
    :try_end_20
    .catchall {:try_start_a .. :try_end_20} :catchall_42

    .line 2552
    iget-boolean v2, p0, Lcom/android/internal/telephony/Phone;->mIsCarrierNrSupported:Z

    if-eqz v2, :cond_25

    return-wide v0

    :cond_25
    const-wide/32 v2, -0x80001

    and-long/2addr v0, v2

    .line 2557
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Allowed network types for \'carrier\' reason is changed by carrier config = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2558
    invoke-static {v0, v1}, Landroid/telephony/TelephonyManager;->convertNetworkTypeBitmaskToString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2557
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/Phone;->logd(Ljava/lang/String;)V

    return-wide v0

    :catchall_42
    move-exception p0

    .line 2551
    :try_start_43
    monitor-exit v2
    :try_end_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_42

    throw p0
.end method

.method private blacklist updateSavedNetworkOperator(Lcom/android/internal/telephony/Phone$NetworkSelectMessage;)V
    .registers 6

    .line 1583
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v0

    .line 1584
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v1

    if-eqz v1, :cond_66

    .line 1587
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1588
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1589
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "network_selection_key"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/android/internal/telephony/Phone$NetworkSelectMessage;->operatorNumeric:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1590
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "network_selection_name_key"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/android/internal/telephony/Phone$NetworkSelectMessage;->operatorAlphaLong:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1591
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "network_selection_short_key"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object p1, p1, Lcom/android/internal/telephony/Phone$NetworkSelectMessage;->operatorAlphaShort:Ljava/lang/String;

    invoke-interface {v1, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1594
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result p1

    if-nez p1, :cond_65

    .line 1595
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mLogTag:Ljava/lang/String;

    const-string p1, "failed to commit network selection preference"

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_65
    return-void

    .line 1598
    :cond_66
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mLogTag:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot update network selection preference due to invalid subId "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public blacklist callEndCleanupHandOverCallIfAny()V
    .registers 1

    .line 0
    return-void
.end method

.method public blacklist canDisablePhysicalSubscription()Z
    .registers 1

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist cancelEmergencyNetworkScan(ZLandroid/os/Message;)V
    .registers 3

    .line 5126
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {p0, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->cancelEmergencyNetworkScan(ZLandroid/os/Message;)V

    return-void
.end method

.method public blacklist cancelUSSD(Landroid/os/Message;)V
    .registers 2

    .line 0
    return-void
.end method

.method public blacklist carrierActionReportDefaultNetworkStatus(Z)V
    .registers 2

    .line 3819
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mCarrierActionAgent:Lcom/android/internal/telephony/CarrierActionAgent;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/CarrierActionAgent;->carrierActionReportDefaultNetworkStatus(Z)V

    return-void
.end method

.method public blacklist carrierActionResetAll()V
    .registers 1

    .line 3826
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mCarrierActionAgent:Lcom/android/internal/telephony/CarrierActionAgent;

    invoke-virtual {p0}, Lcom/android/internal/telephony/CarrierActionAgent;->carrierActionReset()V

    return-void
.end method

.method public blacklist carrierActionSetMeteredApnsEnabled(Z)V
    .registers 2

    .line 3805
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mCarrierActionAgent:Lcom/android/internal/telephony/CarrierActionAgent;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/CarrierActionAgent;->carrierActionSetMeteredApnsEnabled(Z)V

    return-void
.end method

.method public blacklist carrierActionSetRadioEnabled(Z)V
    .registers 2

    .line 3812
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mCarrierActionAgent:Lcom/android/internal/telephony/CarrierActionAgent;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/CarrierActionAgent;->carrierActionSetRadioEnabled(Z)V

    return-void
.end method

.method public blacklist createImsPhone()V
    .registers 5

    .line 684
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_8

    return-void

    .line 688
    :cond_8
    sget-object v0, Lcom/android/internal/telephony/Phone;->lockForRadioTechnologyChange:Ljava/lang/Object;

    monitor-enter v0

    .line 689
    :try_start_b
    iget-object v1, p0, Lcom/android/internal/telephony/Phone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    if-nez v1, :cond_2b

    .line 690
    iget-object v1, p0, Lcom/android/internal/telephony/Phone;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-static {v1, p0}, Lcom/android/internal/telephony/PhoneFactory;->makeImsPhone(Lcom/android/internal/telephony/PhoneNotifier;Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/Phone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    .line 691
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/Phone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/CallManager;->registerPhone(Lcom/android/internal/telephony/Phone;)Z

    .line 692
    iget-object v1, p0, Lcom/android/internal/telephony/Phone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    const/16 v2, 0x20

    const/4 v3, 0x0

    invoke-virtual {v1, p0, v2, v3}, Lcom/android/internal/telephony/Phone;->registerForSilentRedial(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_2b

    :catchall_29
    move-exception p0

    goto :goto_2d

    .line 695
    :cond_2b
    :goto_2b
    monitor-exit v0

    return-void

    :goto_2d
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_b .. :try_end_2e} :catchall_29

    throw p0
.end method

.method public blacklist deleteCarrierInfoForImsiEncryption(I)V
    .registers 2

    .line 0
    return-void
.end method

.method public blacklist deleteCarrierInfoForImsiEncryption(ILjava/lang/String;)V
    .registers 3

    .line 0
    return-void
.end method

.method protected blacklist dialInternal(Ljava/lang/String;Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;)Lcom/android/internal/telephony/Connection;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public greylist-max-r dispose()V
    .registers 1

    .line 0
    return-void
.end method

.method public blacklist dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 7

    .line 5502
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Phone: subId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5503
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mPhoneId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/Phone;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5504
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mCi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5505
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mDoesRilSendMultipleCallRing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/Phone;->mDoesRilSendMultipleCallRing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5506
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mCallRingContinueToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/Phone;->mCallRingContinueToken:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5507
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mCallRingDelay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/Phone;->mCallRingDelay:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5508
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mIsVoiceCapable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/Phone;->mIsVoiceCapable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5509
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mIccRecords="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/Phone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5510
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mUiccApplication="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/Phone;->mUiccApplication:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5511
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mSmsStorageMonitor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/Phone;->mSmsStorageMonitor:Lcom/android/internal/telephony/SmsStorageMonitor;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5512
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mSmsUsageMonitor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/Phone;->mSmsUsageMonitor:Lcom/android/internal/telephony/SmsUsageMonitor;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5513
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 5514
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mLooper="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/Phone;->mLooper:Landroid/os/Looper;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5515
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mContext="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/Phone;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5516
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mNotifier="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/Phone;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5517
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mSimulatedRadioControl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/Phone;->mSimulatedRadioControl:Lcom/android/internal/telephony/test/SimulatedRadioControl;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5518
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mUnitTestMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/Phone;->mUnitTestMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5519
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " getUnitTestMode()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getUnitTestMode()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5520
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " getState()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5521
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " getIccSerialNumber()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/Phone;->mLogTag:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getIccSerialNumber()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/telephony/Rlog;->pii(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5522
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " getIccRecordsLoaded()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getIccRecordsLoaded()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5523
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " getMessageWaitingIndicator()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getMessageWaitingIndicator()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5524
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " getCallForwardingIndicator()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getCallForwardingIndicator()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5525
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " isInEmergencyCall()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->isInEmergencyCall()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5526
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 5527
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " isInEcm()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->isInEcm()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5528
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " getPhoneName()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5529
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " getPhoneType()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5530
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " getVoiceMessageCount()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getVoiceMessageCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5531
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " needsOtaServiceProvisioning="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->needsOtaServiceProvisioning()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5532
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " isInEmergencySmsMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->isInEmergencySmsMode()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5533
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " isEcmCanceledForEmergency="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->isEcmCanceledForEmergency()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5534
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " service state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5535
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 5536
    const-string v0, "++++++++++++++++++++++++++++++++"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5538
    iget-object v1, p0, Lcom/android/internal/telephony/Phone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v1, :cond_2f8

    .line 5540
    :try_start_2ea
    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_2ed
    .catch Ljava/lang/Exception; {:try_start_2ea .. :try_end_2ed} :catch_2ee

    goto :goto_2f2

    :catch_2ee
    move-exception v1

    .line 5542
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 5545
    :goto_2f2
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 5546
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5549
    :cond_2f8
    iget-object v1, p0, Lcom/android/internal/telephony/Phone;->mDataNetworkController:Lcom/android/internal/telephony/data/DataNetworkController;

    if-eqz v1, :cond_30a

    .line 5551
    :try_start_2fc
    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/telephony/data/DataNetworkController;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_2ff
    .catch Ljava/lang/Exception; {:try_start_2fc .. :try_end_2ff} :catch_300

    goto :goto_304

    :catch_300
    move-exception v1

    .line 5553
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 5555
    :goto_304
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 5556
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5559
    :cond_30a
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v1

    if-eqz v1, :cond_322

    .line 5561
    :try_start_310
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/telephony/ServiceStateTracker;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_317
    .catch Ljava/lang/Exception; {:try_start_310 .. :try_end_317} :catch_318

    goto :goto_31c

    :catch_318
    move-exception v1

    .line 5563
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 5566
    :goto_31c
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 5567
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5570
    :cond_322
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getEmergencyNumberTracker()Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;

    move-result-object v1

    if-eqz v1, :cond_33a

    .line 5572
    :try_start_328
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getEmergencyNumberTracker()Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_32f
    .catch Ljava/lang/Exception; {:try_start_328 .. :try_end_32f} :catch_330

    goto :goto_334

    :catch_330
    move-exception v1

    .line 5574
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 5577
    :goto_334
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 5578
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5581
    :cond_33a
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getDisplayInfoController()Lcom/android/internal/telephony/DisplayInfoController;

    move-result-object v1

    if-eqz v1, :cond_352

    .line 5583
    :try_start_340
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getDisplayInfoController()Lcom/android/internal/telephony/DisplayInfoController;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/telephony/DisplayInfoController;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_347
    .catch Ljava/lang/Exception; {:try_start_340 .. :try_end_347} :catch_348

    goto :goto_34c

    :catch_348
    move-exception v1

    .line 5585
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 5588
    :goto_34c
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 5589
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5592
    :cond_352
    iget-object v1, p0, Lcom/android/internal/telephony/Phone;->mCarrierResolver:Lcom/android/internal/telephony/CarrierResolver;

    if-eqz v1, :cond_364

    .line 5594
    :try_start_356
    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/telephony/CarrierResolver;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_359
    .catch Ljava/lang/Exception; {:try_start_356 .. :try_end_359} :catch_35a

    goto :goto_35e

    :catch_35a
    move-exception v1

    .line 5596
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 5599
    :goto_35e
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 5600
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5603
    :cond_364
    iget-object v1, p0, Lcom/android/internal/telephony/Phone;->mCarrierActionAgent:Lcom/android/internal/telephony/CarrierActionAgent;

    if-eqz v1, :cond_376

    .line 5605
    :try_start_368
    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/telephony/CarrierActionAgent;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_36b
    .catch Ljava/lang/Exception; {:try_start_368 .. :try_end_36b} :catch_36c

    goto :goto_370

    :catch_36c
    move-exception v1

    .line 5607
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 5610
    :goto_370
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 5611
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5614
    :cond_376
    iget-object v1, p0, Lcom/android/internal/telephony/Phone;->mCarrierSignalAgent:Lcom/android/internal/telephony/CarrierSignalAgent;

    if-eqz v1, :cond_388

    .line 5616
    :try_start_37a
    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/telephony/CarrierSignalAgent;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_37d
    .catch Ljava/lang/Exception; {:try_start_37a .. :try_end_37d} :catch_37e

    goto :goto_382

    :catch_37e
    move-exception v1

    .line 5618
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 5621
    :goto_382
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 5622
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5625
    :cond_388
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v1

    if-eqz v1, :cond_3a0

    .line 5627
    :try_start_38e
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/telephony/CallTracker;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_395
    .catch Ljava/lang/Exception; {:try_start_38e .. :try_end_395} :catch_396

    goto :goto_39a

    :catch_396
    move-exception v1

    .line 5629
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 5632
    :goto_39a
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 5633
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5636
    :cond_3a0
    iget-object v1, p0, Lcom/android/internal/telephony/Phone;->mSimActivationTracker:Lcom/android/internal/telephony/SimActivationTracker;

    if-eqz v1, :cond_3b2

    .line 5638
    :try_start_3a4
    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/telephony/SimActivationTracker;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_3a7
    .catch Ljava/lang/Exception; {:try_start_3a4 .. :try_end_3a7} :catch_3a8

    goto :goto_3ac

    :catch_3a8
    move-exception v1

    .line 5640
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 5643
    :goto_3ac
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 5644
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5647
    :cond_3b2
    iget-object v1, p0, Lcom/android/internal/telephony/Phone;->mDeviceStateMonitor:Lcom/android/internal/telephony/DeviceStateMonitor;

    if-eqz v1, :cond_3c3

    .line 5648
    const-string v1, "DeviceStateMonitor:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5649
    iget-object v1, p0, Lcom/android/internal/telephony/Phone;->mDeviceStateMonitor:Lcom/android/internal/telephony/DeviceStateMonitor;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/telephony/DeviceStateMonitor;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 5650
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5653
    :cond_3c3
    iget-object v1, p0, Lcom/android/internal/telephony/Phone;->mSignalStrengthController:Lcom/android/internal/telephony/SignalStrengthController;

    if-eqz v1, :cond_3d4

    .line 5654
    const-string v1, "SignalStrengthController:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5655
    iget-object v1, p0, Lcom/android/internal/telephony/Phone;->mSignalStrengthController:Lcom/android/internal/telephony/SignalStrengthController;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/telephony/SignalStrengthController;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 5656
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5659
    :cond_3d4
    iget-object v1, p0, Lcom/android/internal/telephony/Phone;->mAccessNetworksManager:Lcom/android/internal/telephony/data/AccessNetworksManager;

    if-eqz v1, :cond_3db

    .line 5660
    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/telephony/data/AccessNetworksManager;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 5663
    :cond_3db
    iget-object v1, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    if-eqz v1, :cond_3f3

    instance-of v2, v1, Lcom/android/internal/telephony/RIL;

    if-eqz v2, :cond_3f3

    .line 5665
    :try_start_3e3
    check-cast v1, Lcom/android/internal/telephony/RIL;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/telephony/RIL;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_3e8
    .catch Ljava/lang/Exception; {:try_start_3e3 .. :try_end_3e8} :catch_3e9

    goto :goto_3ed

    :catch_3e9
    move-exception v1

    .line 5667
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 5670
    :goto_3ed
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 5671
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5674
    :cond_3f3
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getCarrierPrivilegesTracker()Lcom/android/internal/telephony/CarrierPrivilegesTracker;

    move-result-object v1

    if-eqz v1, :cond_408

    .line 5675
    const-string v1, "CarrierPrivilegesTracker:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5676
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getCarrierPrivilegesTracker()Lcom/android/internal/telephony/CarrierPrivilegesTracker;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/telephony/CarrierPrivilegesTracker;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 5677
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5680
    :cond_408
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getLinkBandwidthEstimator()Lcom/android/internal/telephony/data/LinkBandwidthEstimator;

    move-result-object v1

    if-eqz v1, :cond_41d

    .line 5681
    const-string v1, "LinkBandwidthEstimator:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5682
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getLinkBandwidthEstimator()Lcom/android/internal/telephony/data/LinkBandwidthEstimator;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 5683
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5686
    :cond_41d
    const-string v1, "Phone Local Log: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5687
    iget-object v1, p0, Lcom/android/internal/telephony/Phone;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    if-eqz v1, :cond_434

    .line 5689
    :try_start_426
    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/telephony/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_429
    .catch Ljava/lang/Exception; {:try_start_426 .. :try_end_429} :catch_42a

    goto :goto_42e

    :catch_42a
    move-exception v1

    .line 5691
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 5693
    :goto_42e
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 5694
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5696
    :cond_434
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mTelephonyAnalytics:Lcom/android/internal/telephony/analytics/TelephonyAnalytics;

    if-eqz p0, :cond_440

    .line 5698
    :try_start_438
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/analytics/TelephonyAnalytics;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_43b
    .catch Ljava/lang/Exception; {:try_start_438 .. :try_end_43b} :catch_43c

    goto :goto_440

    :catch_43c
    move-exception p0

    .line 5700
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_440
    :goto_440
    return-void
.end method

.method public blacklist enableEnhancedVoicePrivacy(ZLandroid/os/Message;)V
    .registers 3

    .line 0
    return-void
.end method

.method public blacklist enableUiccApplications(ZLandroid/os/Message;)V
    .registers 3

    .line 0
    return-void
.end method

.method public blacklist eraseDataInSharedPreferences()Z
    .registers 3

    .line 2851
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2852
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2853
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mLogTag:Ljava/lang/String;

    const-string v1, "Erase all data saved in SharedPreferences"

    invoke-static {p0, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2854
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 2855
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result p0

    return p0
.end method

.method public blacklist eraseModemConfig(Landroid/os/Message;)V
    .registers 2

    .line 0
    return-void
.end method

.method public greylist exitEmergencyCallbackMode()V
    .registers 1

    .line 0
    return-void
.end method

.method public blacklist exitEmergencyMode(Landroid/os/Message;)V
    .registers 2

    .line 5134
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {p0, p1}, Lcom/android/internal/telephony/CommandsInterface;->exitEmergencyMode(Landroid/os/Message;)V

    return-void
.end method

.method public blacklist getAccessNetworksManager()Lcom/android/internal/telephony/data/AccessNetworksManager;
    .registers 1

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist getActionAttached()Ljava/lang/String;
    .registers 1

    .line 550
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mActionAttached:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getActionDetached()Ljava/lang/String;
    .registers 1

    .line 539
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mActionDetached:Ljava/lang/String;

    return-object p0
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

    .line 2112
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getAllCellInfo()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getAllowedCarriers(Landroid/os/Message;Landroid/os/WorkSource;)V
    .registers 3

    .line 4643
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {p0, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->getAllowedCarriers(Landroid/os/Message;Landroid/os/WorkSource;)V

    return-void
.end method

.method public blacklist getAllowedNetworkTypes(I)J
    .registers 7

    .line 2419
    sget v0, Lcom/android/internal/telephony/RILConstants;->PREFERRED_NETWORK_MODE:I

    invoke-static {v0}, Landroid/telephony/RadioAccessFamily;->getRafFromNetworkType(I)I

    move-result v0

    int-to-long v0, v0

    .line 2422
    invoke-static {p1}, Landroid/telephony/TelephonyManager;->isValidAllowedNetworkTypesReason(I)Z

    move-result v2

    if-eqz v2, :cond_64

    .line 2426
    iget-object v2, p0, Lcom/android/internal/telephony/Phone;->mAllowedNetworkTypesForReasons:Ljava/util/Map;

    monitor-enter v2

    .line 2427
    :try_start_10
    iget-object v3, p0, Lcom/android/internal/telephony/Phone;->mAllowedNetworkTypesForReasons:Ljava/util/Map;

    .line 2428
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 2429
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 2427
    invoke-interface {v3, v4, v0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 2430
    monitor-exit v2
    :try_end_25
    .catchall {:try_start_10 .. :try_end_25} :catchall_61

    .line 2431
    iget-boolean v2, p0, Lcom/android/internal/telephony/Phone;->mIsCarrierNrSupported:Z

    if-nez v2, :cond_30

    const/4 v2, 0x2

    if-ne p1, v2, :cond_30

    .line 2433
    invoke-direct {p0}, Lcom/android/internal/telephony/Phone;->updateAllowedNetworkTypeForCarrierWithCarrierConfig()J

    move-result-wide v0

    .line 2435
    :cond_30
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SubId"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",get allowed network types "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2436
    invoke-static {p1}, Lcom/android/internal/telephony/Phone;->convertAllowedNetworkTypeMapIndexToDbName(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": value = "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2437
    invoke-static {v0, v1}, Landroid/telephony/TelephonyManager;->convertNetworkTypeBitmaskToString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2435
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/Phone;->logd(Ljava/lang/String;)V

    return-wide v0

    :catchall_61
    move-exception p0

    .line 2430
    :try_start_62
    monitor-exit v2
    :try_end_63
    .catchall {:try_start_62 .. :try_end_63} :catchall_61

    throw p0

    .line 2423
    :cond_64
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "AllowedNetworkTypes NumberFormat exception"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist getAllowedNetworkTypesBitmask(Landroid/os/Message;)V
    .registers 2

    .line 2640
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {p0, p1}, Lcom/android/internal/telephony/CommandsInterface;->getAllowedNetworkTypesBitmap(Landroid/os/Message;)V

    return-void
.end method

.method public blacklist getAppSmsManager()Lcom/android/internal/telephony/AppSmsManager;
    .registers 1

    .line 4751
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mAppSmsManager:Lcom/android/internal/telephony/AppSmsManager;

    return-object p0
.end method

.method public blacklist getCachedAllowedNetworkTypesBitmask()I
    .registers 2

    .line 2668
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    if-eqz p0, :cond_d

    instance-of v0, p0, Lcom/android/internal/telephony/BaseCommands;

    if-eqz v0, :cond_d

    .line 2669
    check-cast p0, Lcom/android/internal/telephony/BaseCommands;

    iget p0, p0, Lcom/android/internal/telephony/BaseCommands;->mAllowedNetworkTypesBitmask:I

    return p0

    .line 2671
    :cond_d
    sget p0, Lcom/android/internal/telephony/RILConstants;->PREFERRED_NETWORK_MODE:I

    invoke-static {p0}, Landroid/telephony/RadioAccessFamily;->getRafFromNetworkType(I)I

    move-result p0

    return p0
.end method

.method public blacklist getCallForwardingIndicator()Z
    .registers 7

    .line 2256
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ne v0, v1, :cond_10

    .line 2257
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mLogTag:Ljava/lang/String;

    const-string v0, "getCallForwardingIndicator: not possible in CDMA"

    invoke-static {p0, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 2260
    :cond_10
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v0

    const/4 v1, -0x1

    if-eqz v0, :cond_1c

    .line 2263
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getVoiceCallForwardingFlag()I

    move-result v3

    goto :goto_1d

    :cond_1c
    move v3, v1

    :goto_1d
    if-ne v3, v1, :cond_23

    .line 2266
    invoke-direct {p0}, Lcom/android/internal/telephony/Phone;->getCallForwardingIndicatorFromSharedPref()I

    move-result v3

    .line 2268
    :cond_23
    iget-object v1, p0, Lcom/android/internal/telephony/Phone;->mLogTag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getCallForwardingIndicator: iccForwardingFlag="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_3a

    .line 2269
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getVoiceCallForwardingFlag()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_3c

    :cond_3a
    const-string v0, "null"

    :goto_3c
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", sharedPrefFlag="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2270
    invoke-direct {p0}, Lcom/android/internal/telephony/Phone;->getCallForwardingIndicatorFromSharedPref()I

    move-result p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2268
    invoke-static {v1, p0}, Lcom/android/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    if-ne v3, p0, :cond_56

    return p0

    :cond_56
    return v2
.end method

.method public greylist-max-r getCallTracker()Lcom/android/internal/telephony/CallTracker;
    .registers 1

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist getCarrierActionAgent()Lcom/android/internal/telephony/CarrierActionAgent;
    .registers 1

    .line 2279
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mCarrierActionAgent:Lcom/android/internal/telephony/CarrierActionAgent;

    return-object p0
.end method

.method public blacklist getCarrierId()I
    .registers 1

    .line 0
    const/4 p0, -0x1

    return p0
.end method

.method public blacklist getCarrierIdListVersion()I
    .registers 1

    .line 0
    const/4 p0, -0x1

    return p0
.end method

.method public blacklist getCarrierInfoForImsiEncryption(IZ)Landroid/telephony/ImsiEncryptionInfo;
    .registers 3

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist getCarrierName()Ljava/lang/String;
    .registers 1

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist getCarrierPrivilegesTracker()Lcom/android/internal/telephony/CarrierPrivilegesTracker;
    .registers 1

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist getCarrierSignalAgent()Lcom/android/internal/telephony/CarrierSignalAgent;
    .registers 1

    .line 2275
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mCarrierSignalAgent:Lcom/android/internal/telephony/CarrierSignalAgent;

    return-object p0
.end method

.method public blacklist getCdmaEriIconIndex()I
    .registers 1

    .line 0
    const/4 p0, -0x1

    return p0
.end method

.method public blacklist getCdmaEriIconMode()I
    .registers 1

    .line 0
    const/4 p0, -0x1

    return p0
.end method

.method public blacklist getCdmaEriText()Ljava/lang/String;
    .registers 1

    .line 3244
    const-string p0, "GSM nw, no ERI"

    return-object p0
.end method

.method public blacklist getCdmaMin()Ljava/lang/String;
    .registers 1

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist getCdmaPrlVersion()Ljava/lang/String;
    .registers 1

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist getCellBroadcastIdRanges()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telephony/CellBroadcastIdRange;",
            ">;"
        }
    .end annotation

    .line 5346
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public blacklist getCellIdentity(Landroid/os/WorkSource;Landroid/os/Message;)V
    .registers 3

    .line 2135
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/ServiceStateTracker;->requestCellIdentity(Landroid/os/WorkSource;Landroid/os/Message;)V

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

    .line 1532
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {p0}, Lcom/android/internal/telephony/CommandsInterface;->getClientRequestStats()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public greylist getContext()Landroid/content/Context;
    .registers 1

    .line 980
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public blacklist getCurrentCellIdentity()Landroid/telephony/CellIdentity;
    .registers 1

    .line 2127
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getCellIdentity()Landroid/telephony/CellIdentity;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getCurrentSubscriberUris()[Landroid/net/Uri;
    .registers 1

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist getCurrentUiccAppType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;
    .registers 1

    .line 2055
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mUiccApplication:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz p0, :cond_f

    .line 2057
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object p0

    return-object p0

    .line 2059
    :cond_f
    sget-object p0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_UNKNOWN:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    return-object p0
.end method

.method public blacklist getDataActivationState()I
    .registers 1

    .line 2044
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mSimActivationTracker:Lcom/android/internal/telephony/SimActivationTracker;

    invoke-virtual {p0}, Lcom/android/internal/telephony/SimActivationTracker;->getDataActivationState()I

    move-result p0

    return p0
.end method

.method public blacklist getDataConnectionState(Ljava/lang/String;)Lcom/android/internal/telephony/PhoneConstants$DataState;
    .registers 2

    .line 2917
    sget-object p0, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    return-object p0
.end method

.method public blacklist getDataNetworkController()Lcom/android/internal/telephony/data/DataNetworkController;
    .registers 1

    .line 4972
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mDataNetworkController:Lcom/android/internal/telephony/data/DataNetworkController;

    return-object p0
.end method

.method public blacklist getDataServicePackages()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 4943
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0
.end method

.method public blacklist getDataSettingsManager()Lcom/android/internal/telephony/data/DataSettingsManager;
    .registers 1

    .line 4988
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mDataNetworkController:Lcom/android/internal/telephony/data/DataNetworkController;

    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataNetworkController;->getDataSettingsManager()Lcom/android/internal/telephony/data/DataSettingsManager;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getDefaultPhone()Lcom/android/internal/telephony/Phone;
    .registers 1

    .line 0
    return-object p0
.end method

.method public blacklist getDeviceStateMonitor()Lcom/android/internal/telephony/DeviceStateMonitor;
    .registers 1

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist getDisplayInfoController()Lcom/android/internal/telephony/DisplayInfoController;
    .registers 1

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist getEmergencyNumberDbVersion()I
    .registers 1

    .line 0
    const/4 p0, -0x1

    return p0
.end method

.method public blacklist getEmergencyNumberTracker()Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;
    .registers 1

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist getEnhancedVoicePrivacy(Landroid/os/Message;)V
    .registers 2

    .line 0
    return-void
.end method

.method public blacklist getEquivalentHomePlmns()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 4935
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0
.end method

.method public blacklist getFullIccSerialNumber()Ljava/lang/String;
    .registers 1

    .line 2086
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz p0, :cond_f

    .line 2087
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccRecords;->getFullIccId()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_f
    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist getHalVersion()Lcom/android/internal/telephony/HalVersion;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 4835
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/Phone;->getHalVersion(I)Lcom/android/internal/telephony/HalVersion;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getHalVersion(I)Lcom/android/internal/telephony/HalVersion;
    .registers 3

    .line 4846
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    if-eqz p0, :cond_f

    instance-of v0, p0, Lcom/android/internal/telephony/RIL;

    if-eqz v0, :cond_f

    .line 4847
    check-cast p0, Lcom/android/internal/telephony/RIL;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->getHalVersion(I)Lcom/android/internal/telephony/HalVersion;

    move-result-object p0

    return-object p0

    .line 4849
    :cond_f
    sget-object p0, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_UNKNOWN:Lcom/android/internal/telephony/HalVersion;

    return-object p0
.end method

.method public blacklist getHandler()Landroid/os/Handler;
    .registers 1

    .line 0
    return-object p0
.end method

.method public blacklist getHandoverConnection()Ljava/util/ArrayList;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/telephony/Connection;",
            ">;"
        }
    .end annotation

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public greylist getIccCard()Lcom/android/internal/telephony/IccCard;
    .registers 1

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public greylist-max-r getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;
    .registers 4

    .line 1906
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mUiccApplication:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-nez v0, :cond_13

    .line 1910
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mLogTag:Ljava/lang/String;

    const-string v1, "getIccFileHandler: uiccApplication == null, return null"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_17

    .line 1913
    :cond_13
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v0

    .line 1916
    :goto_17
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mLogTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getIccFileHandler: fh="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public blacklist getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;
    .registers 1

    .line 506
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/uicc/IccRecords;

    return-object p0
.end method

.method public blacklist getIccRecordsLoaded()Z
    .registers 1

    .line 2099
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz p0, :cond_f

    .line 2100
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccRecords;->getRecordsLoaded()Z

    move-result p0

    return p0

    :cond_f
    const/4 p0, 0x0

    return p0
.end method

.method public greylist getIccSerialNumber()Ljava/lang/String;
    .registers 1

    .line 2078
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz p0, :cond_f

    .line 2079
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccRecords;->getIccId()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_f
    const/4 p0, 0x0

    return-object p0
.end method

.method public greylist getIccSmsInterfaceManager()Lcom/android/internal/telephony/IccSmsInterfaceManager;
    .registers 1

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist getIdentifierDisclosureNotificationsPreferenceEnabled()Z
    .registers 3

    .line 5276
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 5277
    const-string v0, "pref_identifier_disclosure_notifications_enabled"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public greylist-max-r getImsPhone()Lcom/android/internal/telephony/Phone;
    .registers 1

    .line 4009
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    return-object p0
.end method

.method public blacklist getImsRegistrationState(Ljava/util/function/Consumer;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 4346
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    if-eqz p0, :cond_8

    .line 4348
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Phone;->getImsRegistrationState(Ljava/util/function/Consumer;)V

    return-void

    :cond_8
    const/4 p0, 0x0

    .line 4350
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public blacklist getImsRegistrationTech()I
    .registers 4

    .line 4320
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_9

    .line 4323
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getImsRegistrationTech()I

    move-result v0

    goto :goto_a

    :cond_9
    const/4 v0, -0x1

    .line 4325
    :goto_a
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mLogTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getImsRegistrationTechnology ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public blacklist getImsRegistrationTech(Ljava/util/function/Consumer;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 4334
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    if-eqz p0, :cond_8

    .line 4336
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Phone;->getImsRegistrationTech(Ljava/util/function/Consumer;)V

    return-void

    :cond_8
    const/4 p0, -0x1

    .line 4338
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public blacklist getInboundSmsHandler(Z)Lcom/android/internal/telephony/InboundSmsHandler;
    .registers 2

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public greylist-max-r getIsimRecords()Lcom/android/internal/telephony/uicc/IsimRecords;
    .registers 2

    .line 3936
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mLogTag:Ljava/lang/String;

    const-string v0, "getIsimRecords() is only supported on LTE devices"

    invoke-static {p0, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist getLinkBandwidthEstimator()Lcom/android/internal/telephony/data/LinkBandwidthEstimator;
    .registers 1

    .line 4950
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mLinkBandwidthEstimator:Lcom/android/internal/telephony/data/LinkBandwidthEstimator;

    return-object p0
.end method

.method blacklist getLocaleFromCarrierProperties()Ljava/util/Locale;
    .registers 5

    .line 1869
    const-string v0, "ro.carrier"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4d

    .line 1871
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_4d

    const-string v2, "unknown"

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    goto :goto_4d

    .line 1875
    :cond_18
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v2, 0x1070007

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p0

    const/4 v2, 0x0

    .line 1878
    :goto_26
    array-length v3, p0

    if-ge v2, v3, :cond_4d

    .line 1879
    aget-object v3, p0, v2

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1880
    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4a

    add-int/lit8 v2, v2, 0x1

    .line 1881
    aget-object p0, p0, v2

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x5f

    const/16 v1, 0x2d

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object p0

    return-object p0

    :cond_4a
    add-int/lit8 v2, v2, 0x3

    goto :goto_26

    :cond_4d
    :goto_4d
    return-object v1
.end method

.method public blacklist getLocaleFromSimAndCarrierPrefs()Ljava/util/Locale;
    .registers 3

    .line 4651
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v0, :cond_1a

    .line 4652
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getSimLanguage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1a

    .line 4653
    new-instance p0, Ljava/util/Locale;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getSimLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 4656
    :cond_1a
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getLocaleFromCarrierProperties()Ljava/util/Locale;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getMNOCarrierId()I
    .registers 1

    .line 0
    const/4 p0, -0x1

    return p0
.end method

.method public blacklist getManualNetworkSelectionPlmn()Ljava/lang/String;
    .registers 1

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist getMessageWaitingIndicator()Z
    .registers 1

    .line 2160
    iget p0, p0, Lcom/android/internal/telephony/Phone;->mVmCount:I

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist getMobileProvisioningUrl()Ljava/lang/String;
    .registers 5

    .line 3756
    invoke-direct {p0}, Lcom/android/internal/telephony/Phone;->getProvisioningUrlBaseFromFile()Ljava/lang/String;

    move-result-object v0

    .line 3757
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 3758
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x104068a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3759
    iget-object v1, p0, Lcom/android/internal/telephony/Phone;->mLogTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMobileProvisioningUrl: url from resource ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_44

    .line 3761
    :cond_2e
    iget-object v1, p0, Lcom/android/internal/telephony/Phone;->mLogTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMobileProvisioningUrl: url from File ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3764
    :goto_44
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_67

    .line 3765
    invoke-interface {p0}, Lcom/android/internal/telephony/PhoneInternalInterface;->getLine1Number()Ljava/lang/String;

    move-result-object v1

    .line 3766
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_56

    .line 3767
    const-string v1, "0000000000"

    .line 3770
    :cond_56
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getIccSerialNumber()Ljava/lang/String;

    move-result-object v2

    .line 3771
    invoke-interface {p0}, Lcom/android/internal/telephony/PhoneInternalInterface;->getDeviceId()Ljava/lang/String;

    move-result-object p0

    filled-new-array {v2, p0, v1}, [Ljava/lang/Object;

    move-result-object p0

    .line 3769
    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_67
    return-object v0
.end method

.method public blacklist getModemActivityInfo(Landroid/os/Message;Landroid/os/WorkSource;)V
    .registers 3

    .line 4608
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {p0, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->getModemActivityInfo(Landroid/os/Message;Landroid/os/WorkSource;)V

    return-void
.end method

.method public blacklist getModemUuId()Ljava/lang/String;
    .registers 1

    .line 4431
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getRadioCapability()Lcom/android/internal/telephony/RadioCapability;

    move-result-object p0

    if-nez p0, :cond_9

    .line 4432
    const-string p0, ""

    return-object p0

    :cond_9
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioCapability;->getLogicalModemUuid()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public greylist-max-r getMsisdn()Ljava/lang/String;
    .registers 1

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public greylist-max-r getNai()Ljava/lang/String;
    .registers 1

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist getNetworkScanStarted()Z
    .registers 1

    .line 4184
    iget-boolean p0, p0, Lcom/android/internal/telephony/Phone;->mIsNetworkScanStarted:Z

    return p0
.end method

.method public blacklist getNetworkSelectionMode(Landroid/os/Message;)V
    .registers 2

    .line 1528
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {p0, p1}, Lcom/android/internal/telephony/CommandsInterface;->getNetworkSelectionMode(Landroid/os/Message;)V

    return-void
.end method

.method public blacklist getNullCipherAndIntegrityEnabledPreference()Z
    .registers 3

    .line 5244
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 5245
    const-string v0, "pref_null_cipher_and_integrity_enabled"

    const/4 v1, 0x1

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public blacklist getNullCipherNotificationsPreferenceEnabled()Z
    .registers 3

    .line 5298
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 5299
    const-string v0, "pref_null_cipher_notifications_enabled"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public blacklist getOperatorNumeric()Ljava/lang/String;
    .registers 1

    .line 4859
    const-string p0, ""

    return-object p0
.end method

.method public blacklist getOtasp()I
    .registers 1

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public greylist-max-r getPhoneId()I
    .registers 1

    .line 4159
    iget p0, p0, Lcom/android/internal/telephony/Phone;->mPhoneId:I

    return p0
.end method

.method public greylist getPhoneName()Ljava/lang/String;
    .registers 1

    .line 516
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mName:Ljava/lang/String;

    return-object p0
.end method

.method public abstract greylist getPhoneType()I
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

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist getPlmn()Ljava/lang/String;
    .registers 1

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist getPostDialHandler()Lcom/android/internal/telephony/Registrant;
    .registers 1

    .line 3334
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mPostDialHandler:Lcom/android/internal/telephony/Registrant;

    return-object p0
.end method

.method public blacklist getPreciseDataConnectionState(Ljava/lang/String;)Landroid/telephony/PreciseDataConnectionState;
    .registers 2

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist getRadioAccessFamily()I
    .registers 1

    .line 4421
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getRadioCapability()Lcom/android/internal/telephony/RadioCapability;

    move-result-object p0

    if-nez p0, :cond_8

    const/4 p0, 0x0

    return p0

    .line 4422
    :cond_8
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioCapability;->getRadioAccessFamily()I

    move-result p0

    return p0
.end method

.method public blacklist getRadioCapability()Lcom/android/internal/telephony/RadioCapability;
    .registers 1

    .line 4441
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mRadioCapability:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/RadioCapability;

    return-object p0
.end method

.method public blacklist getRadioPowerState()I
    .registers 1

    .line 4373
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {p0}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()I

    move-result p0

    return p0
.end method

.method public blacklist getSavedNetworkSelection()Lcom/android/internal/telephony/OperatorInfo;
    .registers 7

    .line 1639
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1640
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "network_selection_key"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1641
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "network_selection_name_key"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1642
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "network_selection_short_key"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1643
    new-instance v0, Lcom/android/internal/telephony/OperatorInfo;

    invoke-direct {v0, v3, p0, v1}, Lcom/android/internal/telephony/OperatorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public greylist-max-r getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;
    .registers 1

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist getSignalStrength()Landroid/telephony/SignalStrength;
    .registers 1

    .line 2313
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getSignalStrengthController()Lcom/android/internal/telephony/SignalStrengthController;

    move-result-object p0

    if-nez p0, :cond_c

    .line 2315
    new-instance p0, Landroid/telephony/SignalStrength;

    invoke-direct {p0}, Landroid/telephony/SignalStrength;-><init>()V

    return-object p0

    .line 2317
    :cond_c
    invoke-virtual {p0}, Lcom/android/internal/telephony/SignalStrengthController;->getSignalStrength()Landroid/telephony/SignalStrength;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getSignalStrengthController()Lcom/android/internal/telephony/SignalStrengthController;
    .registers 2

    .line 2017
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mLogTag:Ljava/lang/String;

    const-string v0, "getSignalStrengthController return null."

    invoke-static {p0, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist getSimulatedRadioControl()Lcom/android/internal/telephony/test/SimulatedRadioControl;
    .registers 1

    .line 1846
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mSimulatedRadioControl:Lcom/android/internal/telephony/test/SimulatedRadioControl;

    return-object p0
.end method

.method public blacklist getSlicingConfig(Landroid/os/Message;)V
    .registers 2

    .line 4958
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {p0, p1}, Lcom/android/internal/telephony/CommandsInterface;->getSlicingConfig(Landroid/os/Message;)V

    return-void
.end method

.method public blacklist getSmsDispatchersController()Lcom/android/internal/telephony/SmsDispatchersController;
    .registers 1

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist getSmsStats()Lcom/android/internal/telephony/metrics/SmsStats;
    .registers 1

    .line 4875
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mSmsStats:Lcom/android/internal/telephony/metrics/SmsStats;

    return-object p0
.end method

.method public greylist getSmscAddress(Landroid/os/Message;)V
    .registers 2

    .line 2682
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {p0, p1}, Lcom/android/internal/telephony/CommandsInterface;->getSmscAddress(Landroid/os/Message;)V

    return-void
.end method

.method public blacklist getSpecificCarrierId()I
    .registers 1

    .line 0
    const/4 p0, -0x1

    return p0
.end method

.method public blacklist getSpecificCarrierName()Ljava/lang/String;
    .registers 1

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public abstract greylist getState()Lcom/android/internal/telephony/PhoneConstants$State;
.end method

.method protected blacklist getStoredVoiceMessageCount()I
    .registers 7

    .line 3150
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v0

    .line 3151
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_90

    .line 3153
    iget-object v1, p0, Lcom/android/internal/telephony/Phone;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 3154
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "vm_count_key"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, -0x2

    invoke-interface {v1, v3, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-eq v3, v5, :cond_48

    .line 3157
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mLogTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getStoredVoiceMessageCount: from preference for subId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "= "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_48
    const/4 v0, 0x0

    .line 3162
    const-string v3, "vm_id_key"

    invoke-interface {v1, v3, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8f

    .line 3164
    invoke-interface {p0}, Lcom/android/internal/telephony/PhoneInternalInterface;->getSubscriberId()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_7b

    .line 3166
    invoke-virtual {v5, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7b

    .line 3168
    invoke-interface {v1, v4, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 3169
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/Phone;->setVoiceMessageCount(I)V

    .line 3170
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mLogTag:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getStoredVoiceMessageCount: from preference = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_82

    .line 3173
    :cond_7b
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mLogTag:Ljava/lang/String;

    const-string v0, "getStoredVoiceMessageCount: returning 0 as count for matching subscriberId not found"

    invoke-static {p0, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3178
    :goto_82
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 3179
    invoke-interface {p0, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3180
    invoke-interface {p0, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3181
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_8f
    return v2

    .line 3185
    :cond_90
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mLogTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getStoredVoiceMessageCount: invalid subId "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public greylist getSubId()I
    .registers 2

    .line 4151
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mSubscriptionManagerService:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    iget p0, p0, Lcom/android/internal/telephony/Phone;->mPhoneId:I

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getSubId(I)I

    move-result p0

    return p0
.end method

.method public greylist-max-r getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 559
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getUnitTestMode()Z

    move-result p0

    if-eqz p0, :cond_8

    const/4 p0, 0x0

    return-object p0

    .line 562
    :cond_8
    invoke-static {p1, p2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getSystemSelectionChannels(Landroid/os/Message;)V
    .registers 2

    .line 2869
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {p0, p1}, Lcom/android/internal/telephony/CommandsInterface;->getSystemSelectionChannels(Landroid/os/Message;)V

    return-void
.end method

.method public blacklist getTelephonyAnalytics()Lcom/android/internal/telephony/analytics/TelephonyAnalytics;
    .registers 1

    .line 4886
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mTelephonyAnalytics:Lcom/android/internal/telephony/analytics/TelephonyAnalytics;

    return-object p0
.end method

.method public blacklist getTelephonyTester()Lcom/android/internal/telephony/TelephonyTester;
    .registers 1

    .line 5202
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mTelephonyTester:Lcom/android/internal/telephony/TelephonyTester;

    return-object p0
.end method

.method public blacklist getTerminalBasedCallWaitingState(Z)I
    .registers 2

    .line 0
    const/4 p0, -0x1

    return p0
.end method

.method public greylist-max-r getUiccCard()Lcom/android/internal/telephony/uicc/UiccCard;
    .registers 2

    .line 3987
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    iget p0, p0, Lcom/android/internal/telephony/Phone;->mPhoneId:I

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getUiccPort()Lcom/android/internal/telephony/uicc/UiccPort;
    .registers 2

    .line 3995
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    iget p0, p0, Lcom/android/internal/telephony/Phone;->mPhoneId:I

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccPort(I)Lcom/android/internal/telephony/uicc/UiccPort;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getUnitTestMode()Z
    .registers 1

    .line 1704
    iget-boolean p0, p0, Lcom/android/internal/telephony/Phone;->mUnitTestMode:Z

    return p0
.end method

.method public blacklist getUserHandle()Landroid/os/UserHandle;
    .registers 4

    .line 5211
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v0

    .line 5215
    :try_start_4
    iget-object v1, p0, Lcom/android/internal/telephony/Phone;->mContext:Landroid/content/Context;

    const-class v2, Landroid/telephony/SubscriptionManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionManager;

    if-eqz v1, :cond_2a

    .line 5217
    invoke-virtual {v1, v0}, Landroid/telephony/SubscriptionManager;->getSubscriptionUserHandle(I)Landroid/os/UserHandle;

    move-result-object p0
    :try_end_14
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_14} :catch_15

    return-object p0

    :catch_15
    move-exception v0

    .line 5220
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getUserHandle: ex="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/Phone;->loge(Ljava/lang/String;)V

    :cond_2a
    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist getUsimServiceTable()Lcom/android/internal/telephony/uicc/UsimServiceTable;
    .registers 1

    .line 3977
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz p0, :cond_f

    .line 3978
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccRecords;->getUsimServiceTable()Lcom/android/internal/telephony/uicc/UsimServiceTable;

    move-result-object p0

    return-object p0

    :cond_f
    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist getVoiceActivationState()I
    .registers 1

    .line 2038
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mSimActivationTracker:Lcom/android/internal/telephony/SimActivationTracker;

    invoke-virtual {p0}, Lcom/android/internal/telephony/SimActivationTracker;->getVoiceActivationState()I

    move-result p0

    return p0
.end method

.method public blacklist getVoiceCallSessionStats()Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;
    .registers 1

    .line 4864
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mVoiceCallSessionStats:Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;

    return-object p0
.end method

.method public blacklist getVoiceMessageCount()I
    .registers 1

    .line 3115
    iget p0, p0, Lcom/android/internal/telephony/Phone;->mVmCount:I

    return p0
.end method

.method protected blacklist handleExitEmergencyCallbackMode()V
    .registers 1

    .line 0
    return-void
.end method

.method public blacklist handleIdentifierDisclosureNotificationPreferenceChange()V
    .registers 1

    .line 0
    return-void
.end method

.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 7

    .line 776
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x10

    if-eq v0, v1, :cond_213

    const/16 v1, 0x11

    if-eq v0, v1, :cond_213

    const/16 v1, 0xe

    if-eq v0, v1, :cond_1d3

    const/16 v1, 0xf

    if-eq v0, v1, :cond_1ab

    const/16 v1, 0x22

    if-eq v0, v1, :cond_212

    const/16 v1, 0x26

    if-eq v0, v1, :cond_1a7

    const/16 v1, 0x3f

    .line 785
    const-string v2, "Invalid Exception for usage setting "

    const/16 v3, 0x40

    const/4 v4, 0x0

    if-eq v0, v1, :cond_11b

    if-eq v0, v3, :cond_d3

    packed-switch v0, :pswitch_data_21e

    .line 908
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unexpected event not handled, msgId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 816
    :pswitch_41
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mLogTag:Ljava/lang/String;

    const-string v1, "Event EVENT_INITIATE_SILENT_REDIAL Received"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 817
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 818
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_212

    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz p1, :cond_212

    .line 819
    check-cast p1, Lcom/android/internal/telephony/Phone$SilentRedialParam;

    .line 820
    iget-object v0, p1, Lcom/android/internal/telephony/Phone$SilentRedialParam;->dialString:Ljava/lang/String;

    .line 822
    iget-object p1, p1, Lcom/android/internal/telephony/Phone$SilentRedialParam;->dialArgs:Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;

    .line 823
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_62

    goto/16 :goto_212

    .line 825
    :cond_62
    :try_start_62
    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/Phone;->dialInternal(Ljava/lang/String;Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;)Lcom/android/internal/telephony/Connection;

    move-result-object p1

    .line 830
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mLogTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Notify redial connection changed cn: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 831
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_212

    .line 833
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/Phone;->notifyRedialConnectionChanged(Lcom/android/internal/telephony/Connection;)V
    :try_end_83
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_62 .. :try_end_83} :catch_85

    goto/16 :goto_212

    :catch_85
    move-exception p1

    .line 836
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mLogTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "silent redial failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 837
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    if-eqz p0, :cond_212

    const/4 p1, 0x0

    .line 838
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Phone;->notifyRedialConnectionChanged(Lcom/android/internal/telephony/Connection;)V

    goto/16 :goto_212

    .line 845
    :pswitch_a6
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 846
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_b6

    .line 847
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, [I

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/Phone;->handleSrvccStateChanged([I)V

    return-void

    .line 849
    :cond_b6
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mLogTag:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Srvcc exception: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 810
    :pswitch_cf
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->onUpdateIccAvailability()V

    return-void

    .line 891
    :cond_d3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 892
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_116

    .line 894
    :try_start_db
    check-cast v1, Lcom/android/internal/telephony/CommandException;

    .line 895
    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object p1

    sget-object v3, Lcom/android/internal/telephony/CommandException$Error;->REQUEST_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    if-ne p1, v3, :cond_e7

    .line 896
    iput-boolean v4, p0, Lcom/android/internal/telephony/Phone;->mIsUsageSettingSupported:Z

    .line 898
    :cond_e7
    iget-object p1, p0, Lcom/android/internal/telephony/Phone;->mLogTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected failure to set usage setting "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_fd
    .catch Ljava/lang/ClassCastException; {:try_start_db .. :try_end_fd} :catch_fe

    return-void

    .line 900
    :catch_fe
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mLogTag:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_212

    .line 904
    :cond_116
    iget p1, p1, Landroid/os/Message;->arg1:I

    iput p1, p0, Lcom/android/internal/telephony/Phone;->mUsageSettingFromModem:I

    return-void

    .line 863
    :cond_11b
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 864
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_16d

    .line 866
    :try_start_123
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [I

    aget v0, v0, v4

    iput v0, p0, Lcom/android/internal/telephony/Phone;->mUsageSettingFromModem:I
    :try_end_12b
    .catch Ljava/lang/NullPointerException; {:try_start_123 .. :try_end_12b} :catch_153
    .catch Ljava/lang/ClassCastException; {:try_start_123 .. :try_end_12b} :catch_153

    .line 872
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Received mUsageSettingFromModem="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/internal/telephony/Phone;->mUsageSettingFromModem:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/Phone;->logd(Ljava/lang/String;)V

    .line 873
    iget p1, p0, Lcom/android/internal/telephony/Phone;->mUsageSettingFromModem:I

    iget v0, p0, Lcom/android/internal/telephony/Phone;->mPreferredUsageSetting:I

    if-eq p1, v0, :cond_212

    .line 874
    iget-object p1, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget p0, p0, Lcom/android/internal/telephony/Phone;->mPreferredUsageSetting:I

    invoke-interface {p1, v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->setUsageSetting(Landroid/os/Message;I)V

    return-void

    .line 868
    :catch_153
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mLogTag:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid response for usage setting "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_212

    .line 879
    :cond_16d
    :try_start_16d
    check-cast v0, Lcom/android/internal/telephony/CommandException;

    .line 880
    invoke-virtual {v0}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v1

    sget-object v3, Lcom/android/internal/telephony/CommandException$Error;->REQUEST_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v1, v3, :cond_179

    .line 881
    iput-boolean v4, p0, Lcom/android/internal/telephony/Phone;->mIsUsageSettingSupported:Z

    .line 883
    :cond_179
    iget-object v1, p0, Lcom/android/internal/telephony/Phone;->mLogTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected failure to retrieve usage setting "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_18f
    .catch Ljava/lang/ClassCastException; {:try_start_16d .. :try_end_18f} :catch_190

    return-void

    .line 885
    :catch_190
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mLogTag:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_212

    .line 858
    :cond_1a7
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/Phone;->onCheckForNetworkSelectionModeAutomatic(Landroid/os/Message;)V

    return-void

    .line 803
    :cond_1ab
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mLogTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Event EVENT_CALL_RING_CONTINUE Received state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 804
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v0, v1, :cond_212

    .line 805
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/Phone;->sendIncomingCallRingNotification(I)V

    return-void

    .line 787
    :cond_1d3
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mLogTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Event EVENT_CALL_RING Received state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 788
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 789
    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez p1, :cond_212

    .line 790
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object p1

    .line 791
    iget-boolean v0, p0, Lcom/android/internal/telephony/Phone;->mDoesRilSendMultipleCallRing:Z

    if-nez v0, :cond_20f

    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq p1, v0, :cond_205

    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne p1, v0, :cond_20f

    .line 794
    :cond_205
    iget p1, p0, Lcom/android/internal/telephony/Phone;->mCallRingContinueToken:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/internal/telephony/Phone;->mCallRingContinueToken:I

    .line 795
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/Phone;->sendIncomingCallRingNotification(I)V

    return-void

    .line 797
    :cond_20f
    invoke-direct {p0}, Lcom/android/internal/telephony/Phone;->notifyIncomingRing()V

    :cond_212
    :goto_212
    return-void

    .line 780
    :cond_213
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/Phone;->handleSetSelectNetwork(Landroid/os/AsyncResult;)V

    .line 781
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->onSetNetworkSelectionModeCompleted()V

    return-void

    :pswitch_data_21e
    .packed-switch 0x1e
        :pswitch_cf
        :pswitch_a6
        :pswitch_41
    .end packed-switch
.end method

.method public blacklist handleNullCipherEnabledChange()V
    .registers 1

    .line 0
    return-void
.end method

.method public blacklist handleNullCipherNotificationPreferenceChanged()V
    .registers 1

    .line 0
    return-void
.end method

.method public blacklist hasCalling()Z
    .registers 2

    .line 1967
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mFeatureFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mContext:Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/android/internal/telephony/TelephonyCapabilities;->supportsTelephonyCalling(Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public blacklist hasMatchedTetherApnSetting()Z
    .registers 4

    .line 3783
    invoke-interface {p0}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 3786
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getDataNetworkController()Lcom/android/internal/telephony/data/DataNetworkController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataNetworkController;->getDataProfileManager()Lcom/android/internal/telephony/data/DataProfileManager;

    move-result-object p0

    .line 3787
    invoke-virtual {v0}, Landroid/telephony/NetworkRegistrationInfo;->getAccessNetworkTechnology()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/DataProfileManager;->isTetheringDataProfileExisting(I)Z

    move-result p0

    return p0

    :cond_1d
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist hasMessaging()Z
    .registers 2

    .line 1974
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mFeatureFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mContext:Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/android/internal/telephony/TelephonyCapabilities;->supportsTelephonyMessaging(Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public blacklist isAllowedNetworkTypesLoadedFromDb()Z
    .registers 1

    .line 5000
    iget-boolean p0, p0, Lcom/android/internal/telephony/Phone;->mIsAllowedNetworkTypesLoadedFromDb:Z

    return p0
.end method

.method public blacklist isCdmaSubscriptionAppPresent()Z
    .registers 1

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist isClirActivationAndDeactivationPrevented()Z
    .registers 3

    .line 731
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "carrier_config"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    .line 732
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object p0

    if-nez p0, :cond_1a

    .line 734
    invoke-static {}, Landroid/telephony/CarrierConfigManager;->getDefaultConfig()Landroid/os/PersistableBundle;

    move-result-object p0

    .line 736
    :cond_1a
    const-string v0, "prevent_clir_activation_and_deactivation_code_bool"

    invoke-virtual {p0, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public blacklist isConcurrentVoiceAndDataAllowed()Z
    .registers 1

    .line 2326
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object p0

    if-nez p0, :cond_8

    const/4 p0, 0x0

    return p0

    .line 2327
    :cond_8
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->isConcurrentVoiceAndDataAllowed()Z

    move-result p0

    return p0
.end method

.method public greylist isCspPlmnEnabled()Z
    .registers 1

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist isDataAllowed()Z
    .registers 2

    .line 3798
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getDataNetworkController()Lcom/android/internal/telephony/data/DataNetworkController;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/DataNetworkController;->isInternetDataAllowed(Z)Z

    move-result p0

    return p0
.end method

.method public blacklist isDataSuspended()Z
    .registers 1

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist isDeviceIdle()Z
    .registers 2

    .line 4906
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getDeviceStateMonitor()Lcom/android/internal/telephony/DeviceStateMonitor;

    move-result-object v0

    if-nez v0, :cond_f

    .line 4908
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mLogTag:Ljava/lang/String;

    const-string v0, "isDeviceIdle: DeviceStateMonitor is null"

    invoke-static {p0, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 4911
    :cond_f
    invoke-virtual {v0}, Lcom/android/internal/telephony/DeviceStateMonitor;->shouldEnableHighPowerConsumptionIndications()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public blacklist isEcmCanceledForEmergency()Z
    .registers 1

    .line 3044
    iget-boolean p0, p0, Lcom/android/internal/telephony/Phone;->mEcmCanceledForEmergency:Z

    return p0
.end method

.method public blacklist isIdentifierDisclosureTransparencySupported()Z
    .registers 1

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist isImsAvailable()Z
    .registers 1

    .line 4583
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 4587
    :cond_6
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->isImsAvailable()Z

    move-result p0

    return p0
.end method

.method public blacklist isImsCapabilityAvailable(II)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 4282
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_9

    .line 4285
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->isImsCapabilityAvailable(II)Z

    move-result v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    .line 4287
    :goto_a
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mLogTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isImsCapabilityAvailable, capability="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", regTech="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", isAvailable="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public blacklist isImsRegistered()Z
    .registers 4

    .line 4249
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_9

    .line 4252
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isImsRegistered()Z

    move-result v0

    goto :goto_15

    .line 4254
    :cond_9
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 4256
    invoke-virtual {v0}, Lcom/android/internal/telephony/ServiceStateTracker;->isImsRegistered()Z

    move-result v0

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    .line 4259
    :goto_15
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mLogTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isImsRegistered ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public blacklist isImsServiceSimultaneousCallingSupportCapable(Landroid/content/Context;)Z
    .registers 4

    .line 4696
    iget v0, p0, Lcom/android/internal/telephony/Phone;->mPhoneId:I

    invoke-static {p1, v0}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object p1

    if-eqz p1, :cond_24

    const-wide/16 v0, 0x8

    .line 4699
    :try_start_a
    invoke-virtual {p1, v0, v1}, Lcom/android/ims/ImsManager;->isCapable(J)Z

    move-result p0
    :try_end_e
    .catch Lcom/android/ims/ImsException; {:try_start_a .. :try_end_e} :catch_f

    return p0

    :catch_f
    move-exception p1

    .line 4701
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initializeTerminalBasedCallWaiting : exception "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/Phone;->loge(Ljava/lang/String;)V

    :cond_24
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist isImsVideoCallOrConferencePresent()Z
    .registers 4

    .line 3094
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    const/4 v1, 0x0

    if-eqz v0, :cond_28

    .line 3095
    invoke-interface {v0}, Lcom/android/internal/telephony/PhoneInternalInterface;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/Phone;->isVideoCallOrConference(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    if-nez v0, :cond_27

    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    .line 3096
    invoke-interface {v0}, Lcom/android/internal/telephony/PhoneInternalInterface;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/Phone;->isVideoCallOrConference(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    if-nez v0, :cond_27

    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    .line 3097
    invoke-interface {v0}, Lcom/android/internal/telephony/PhoneInternalInterface;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/Phone;->isVideoCallOrConference(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    if-eqz v0, :cond_28

    :cond_27
    const/4 v1, 0x1

    .line 3099
    :cond_28
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mLogTag:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isImsVideoCallOrConferencePresent: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public blacklist isInCdmaEcm()Z
    .registers 3

    .line 3025
    invoke-static {}, Lcom/android/internal/telephony/domainselection/DomainSelectionResolver;->getInstance()Lcom/android/internal/telephony/domainselection/DomainSelectionResolver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/domainselection/DomainSelectionResolver;->isDomainSelectionSupported()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 3026
    invoke-static {}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->getInstance()Lcom/android/internal/telephony/emergency/EmergencyStateTracker;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->isInCdmaEcm()Z

    move-result p0

    return p0

    .line 3028
    :cond_13
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2c

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->isInEcm()Z

    move-result v0

    if-eqz v0, :cond_2c

    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    if-eqz p0, :cond_2a

    .line 3029
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->isInImsEcm()Z

    move-result p0

    if-nez p0, :cond_2c

    :cond_2a
    const/4 p0, 0x1

    return p0

    :cond_2c
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist isInEcm()Z
    .registers 2

    .line 3014
    invoke-static {}, Lcom/android/internal/telephony/domainselection/DomainSelectionResolver;->getInstance()Lcom/android/internal/telephony/domainselection/DomainSelectionResolver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/domainselection/DomainSelectionResolver;->isDomainSelectionSupported()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 3015
    invoke-static {}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->getInstance()Lcom/android/internal/telephony/emergency/EmergencyStateTracker;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->isInEcm()Z

    move-result p0

    return p0

    .line 3017
    :cond_13
    iget-boolean p0, p0, Lcom/android/internal/telephony/Phone;->mIsPhoneInEcmState:Z

    return p0
.end method

.method public blacklist isInEmergencyCall()Z
    .registers 1

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist isInEmergencySmsMode()Z
    .registers 11

    .line 1090
    iget-wide v0, p0, Lcom/android/internal/telephony/Phone;->mTimeLastEmergencySmsSentMs:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    const/4 v5, 0x0

    if-nez v4, :cond_a

    return v5

    .line 1096
    :cond_a
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v6, "carrier_config"

    invoke-virtual {v4, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/CarrierConfigManager;

    .line 1097
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v4

    if-nez v4, :cond_21

    return v5

    .line 1103
    :cond_21
    const-string v6, "emergency_sms_mode_timer_ms_int"

    invoke-virtual {v4, v6, v5}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_2a

    return v5

    :cond_2a
    const v6, 0x493e0

    if-le v4, v6, :cond_30

    move v4, v6

    .line 1111
    :cond_30
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    int-to-long v8, v4

    add-long/2addr v0, v8

    cmp-long v0, v6, v0

    if-gtz v0, :cond_3b

    const/4 v5, 0x1

    :cond_3b
    if-nez v5, :cond_40

    .line 1116
    iput-wide v2, p0, Lcom/android/internal/telephony/Phone;->mTimeLastEmergencySmsSentMs:J

    return v5

    .line 1118
    :cond_40
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    const-string v0, "isInEmergencySmsMode: queried while eSMS mode is active."

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    return v5
.end method

.method public blacklist isInImsEcm()Z
    .registers 1

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist isManagedProfile()Z
    .registers 3

    .line 5234
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    .line 5235
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/UserManager;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/UserManager;

    if-eqz v0, :cond_1c

    if-nez p0, :cond_13

    goto :goto_1c

    .line 5237
    :cond_13
    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/UserManager;->isManagedProfile(I)Z

    move-result p0

    return p0

    :cond_1c
    :goto_1c
    const/4 p0, 0x0

    return p0
.end method

.method protected blacklist isMatchGid(Ljava/lang/String;)Z
    .registers 5

    .line 4669
    invoke-interface {p0}, Lcom/android/internal/telephony/PhoneInternalInterface;->getGroupIdLevel1()Ljava/lang/String;

    move-result-object p0

    .line 4670
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 4671
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_21

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v1, v0, :cond_21

    .line 4672
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_21

    const/4 p0, 0x1

    return p0

    :cond_21
    return v2
.end method

.method public blacklist isMccMncMarkedAsNonRoaming(Ljava/lang/String;)Z
    .registers 3

    .line 4230
    const-string v0, "gsm_non_roaming_list_"

    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/Phone;->getRoamingOverrideHelper(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public blacklist isMccMncMarkedAsRoaming(Ljava/lang/String;)Z
    .registers 3

    .line 4226
    const-string v0, "gsm_roaming_list_"

    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/Phone;->getRoamingOverrideHelper(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public blacklist isMinInfoReady()Z
    .registers 1

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist isN1ModeEnabled(Landroid/os/Message;)V
    .registers 2

    .line 5339
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {p0, p1}, Lcom/android/internal/telephony/CommandsInterface;->isN1ModeEnabled(Landroid/os/Message;)V

    return-void
.end method

.method public blacklist isNrDualConnectivityEnabled(Landroid/os/Message;Landroid/os/WorkSource;)V
    .registers 3

    .line 2391
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {p0, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->isNrDualConnectivityEnabled(Landroid/os/Message;Landroid/os/WorkSource;)V

    return-void
.end method

.method public blacklist isNullCipherAndIntegritySupported()Z
    .registers 1

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist isNullCipherNotificationSupported()Z
    .registers 1

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist isOtaSpNumber(Ljava/lang/String;)Z
    .registers 2

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist isRadioAvailable()Z
    .registers 2

    .line 4380
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {p0}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()I

    move-result p0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_b

    const/4 p0, 0x1

    return p0

    :cond_b
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist isRadioOffForThermalMitigation()Z
    .registers 3

    .line 1958
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object p0

    if-eqz p0, :cond_16

    .line 1959
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getRadioPowerOffReasons()Ljava/util/Set;

    move-result-object p0

    const/4 v0, 0x1

    .line 1960
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_16

    return v0

    :cond_16
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist isRadioOn()Z
    .registers 2

    .line 4387
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {p0}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_a

    return v0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist isSatelliteEnabledForCarrier(ILandroid/os/Message;)V
    .registers 3

    .line 5498
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {p0, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->isSatelliteEnabledForCarrier(ILandroid/os/Message;)V

    return-void
.end method

.method public blacklist isShuttingDown()Z
    .registers 1

    .line 4401
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->isDeviceShuttingDown()Z

    move-result p0

    return p0
.end method

.method public blacklist isSidMarkedAsNonRoaming(I)Z
    .registers 3

    .line 4239
    const-string v0, "cdma_non_roaming_list_"

    .line 4240
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    .line 4239
    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/Phone;->getRoamingOverrideHelper(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public blacklist isSidMarkedAsRoaming(I)Z
    .registers 3

    .line 4234
    const-string v0, "cdma_roaming_list_"

    .line 4235
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    .line 4234
    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/Phone;->getRoamingOverrideHelper(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public greylist-max-r isUtEnabled()Z
    .registers 1

    .line 4113
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    if-eqz p0, :cond_9

    .line 4114
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->isUtEnabled()Z

    move-result p0

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public greylist-max-r isVideoEnabled()Z
    .registers 1

    .line 4597
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    if-eqz p0, :cond_9

    .line 4599
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->isVideoEnabled()Z

    move-result p0

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist isVoNrEnabled(Landroid/os/Message;Landroid/os/WorkSource;)V
    .registers 3

    .line 4777
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {p0, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->isVoNrEnabled(Landroid/os/Message;Landroid/os/WorkSource;)V

    return-void
.end method

.method public blacklist isVoiceOverCellularImsEnabled()Z
    .registers 4

    .line 4306
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_9

    .line 4309
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isVoiceOverCellularImsEnabled()Z

    move-result v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    .line 4311
    :goto_a
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mLogTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isVoiceOverCellularImsEnabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public greylist-max-r isVolteEnabled()Z
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4299
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->isVoiceOverCellularImsEnabled()Z

    move-result p0

    return p0
.end method

.method public greylist-max-r isWifiCallingEnabled()Z
    .registers 4

    .line 4268
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_9

    .line 4271
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isWifiCallingEnabled()Z

    move-result v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    .line 4273
    :goto_a
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mLogTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isWifiCallingEnabled ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public blacklist loadAllowedNetworksFromSubscriptionDatabase()V
    .registers 13

    .line 2447
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mSubscriptionManagerService:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    .line 2448
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getSubscriptionInfoInternal(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 2450
    invoke-virtual {v0}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->getAllowedNetworkTypesForReasons()Ljava/lang/String;

    move-result-object v0

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    .line 2455
    :goto_12
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v1

    .line 2454
    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/telephony/Phone;->mIsAllowedNetworkTypesLoadedFromDb:Z

    .line 2457
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_24

    goto/16 :goto_122

    .line 2461
    :cond_24
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SubId"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",load allowed network types : value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/Phone;->logd(Ljava/lang/String;)V

    .line 2462
    new-instance v1, Ljava/util/HashMap;

    iget-object v2, p0, Lcom/android/internal/telephony/Phone;->mAllowedNetworkTypesForReasons:Ljava/util/Map;

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 2463
    iget-object v2, p0, Lcom/android/internal/telephony/Phone;->mAllowedNetworkTypesForReasons:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 2466
    :try_start_50
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_5d
    if-ge v4, v2, :cond_106

    aget-object v5, v0, v4

    .line 2467
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v6, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "="

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 2468
    array-length v7, v6

    const/4 v8, 0x2

    if-eq v7, v8, :cond_8e

    .line 2469
    iget-object v6, p0, Lcom/android/internal/telephony/Phone;->mLogTag:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid ALLOWED_NETWORK_TYPES from DB, value = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ec

    :catch_8c
    move-exception v0

    goto :goto_f0

    .line 2472
    :cond_8e
    aget-object v5, v6, v3

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/Phone;->convertAllowedNetworkTypeDbNameToMapIndex(Ljava/lang/String;)I

    move-result v5

    const/4 v7, 0x1

    .line 2473
    aget-object v6, v6, v7

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 2474
    invoke-static {v5}, Landroid/telephony/TelephonyManager;->isValidAllowedNetworkTypesReason(I)Z

    move-result v8

    if-eqz v8, :cond_ec

    const-wide/16 v8, -0x1

    cmp-long v8, v6, v8

    if-eqz v8, :cond_ec

    .line 2476
    iget-object v8, p0, Lcom/android/internal/telephony/Phone;->mAllowedNetworkTypesForReasons:Ljava/util/Map;

    monitor-enter v8
    :try_end_aa
    .catch Ljava/lang/NumberFormatException; {:try_start_50 .. :try_end_aa} :catch_8c

    .line 2477
    :try_start_aa
    iget-object v9, p0, Lcom/android/internal/telephony/Phone;->mAllowedNetworkTypesForReasons:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-interface {v9, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2478
    monitor-exit v8
    :try_end_b8
    .catchall {:try_start_aa .. :try_end_b8} :catchall_e9

    .line 2479
    :try_start_b8
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v1, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d4

    .line 2480
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    cmp-long v6, v8, v6

    if-eqz v6, :cond_ec

    .line 2481
    :cond_d4
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e5

    .line 2482
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2484
    :cond_e5
    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/Phone;->notifyAllowedNetworkTypesChanged(I)V
    :try_end_e8
    .catch Ljava/lang/NumberFormatException; {:try_start_b8 .. :try_end_e8} :catch_8c

    goto :goto_ec

    :catchall_e9
    move-exception v0

    .line 2478
    :try_start_ea
    monitor-exit v8
    :try_end_eb
    .catchall {:try_start_ea .. :try_end_eb} :catchall_e9

    :try_start_eb
    throw v0
    :try_end_ec
    .catch Ljava/lang/NumberFormatException; {:try_start_eb .. :try_end_ec} :catch_8c

    :cond_ec
    :goto_ec
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_5d

    .line 2489
    :goto_f0
    iget-object v2, p0, Lcom/android/internal/telephony/Phone;->mLogTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "allowedNetworkTypes NumberFormat exception"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2492
    :cond_106
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_10e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_122

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 2493
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/Phone;->notifyAllowedNetworkTypesChanged(I)V

    goto :goto_10e

    :cond_122
    :goto_122
    return-void
.end method

.method protected blacklist migrate(Lcom/android/internal/telephony/RegistrantList;Lcom/android/internal/telephony/RegistrantList;)V
    .registers 7

    if-nez p2, :cond_3

    goto :goto_3a

    .line 1149
    :cond_3
    invoke-virtual {p2}, Lcom/android/internal/telephony/RegistrantList;->removeCleared()V

    .line 1150
    invoke-virtual {p2}, Lcom/android/internal/telephony/RegistrantList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_b
    if-ge v1, v0, :cond_3a

    .line 1151
    invoke-virtual {p2, v1}, Lcom/android/internal/telephony/RegistrantList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/Registrant;

    .line 1152
    invoke-virtual {v2}, Lcom/android/internal/telephony/Registrant;->messageForRegistrant()Landroid/os/Message;

    move-result-object v2

    if-eqz v2, :cond_30

    .line 1159
    iget-object v2, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getRegistrantIdentifier()Ljava/lang/Object;

    move-result-object v3

    if-ne v2, v3, :cond_26

    goto :goto_37

    .line 1162
    :cond_26
    invoke-virtual {p2, v1}, Lcom/android/internal/telephony/RegistrantList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/Registrant;

    invoke-virtual {p1, v2}, Lcom/android/internal/telephony/RegistrantList;->add(Lcom/android/internal/telephony/Registrant;)V

    goto :goto_37

    .line 1165
    :cond_30
    iget-object v2, p0, Lcom/android/internal/telephony/Phone;->mLogTag:Ljava/lang/String;

    const-string v3, "msg is null"

    invoke-static {v2, v3}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_37
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_3a
    :goto_3a
    return-void
.end method

.method protected blacklist migrateFrom(Lcom/android/internal/telephony/Phone;)V
    .registers 4

    .line 1124
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mHandoverRegistrants:Lcom/android/internal/telephony/RegistrantList;

    iget-object v1, p1, Lcom/android/internal/telephony/Phone;->mHandoverRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/Phone;->migrate(Lcom/android/internal/telephony/RegistrantList;Lcom/android/internal/telephony/RegistrantList;)V

    .line 1125
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mPreciseCallStateRegistrants:Lcom/android/internal/telephony/RegistrantList;

    iget-object v1, p1, Lcom/android/internal/telephony/Phone;->mPreciseCallStateRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/Phone;->migrate(Lcom/android/internal/telephony/RegistrantList;Lcom/android/internal/telephony/RegistrantList;)V

    .line 1126
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mNewRingingConnectionRegistrants:Lcom/android/internal/telephony/RegistrantList;

    iget-object v1, p1, Lcom/android/internal/telephony/Phone;->mNewRingingConnectionRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/Phone;->migrate(Lcom/android/internal/telephony/RegistrantList;Lcom/android/internal/telephony/RegistrantList;)V

    .line 1127
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mIncomingRingRegistrants:Lcom/android/internal/telephony/RegistrantList;

    iget-object v1, p1, Lcom/android/internal/telephony/Phone;->mIncomingRingRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/Phone;->migrate(Lcom/android/internal/telephony/RegistrantList;Lcom/android/internal/telephony/RegistrantList;)V

    .line 1128
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mDisconnectRegistrants:Lcom/android/internal/telephony/RegistrantList;

    iget-object v1, p1, Lcom/android/internal/telephony/Phone;->mDisconnectRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/Phone;->migrate(Lcom/android/internal/telephony/RegistrantList;Lcom/android/internal/telephony/RegistrantList;)V

    .line 1129
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mServiceStateRegistrants:Lcom/android/internal/telephony/RegistrantList;

    iget-object v1, p1, Lcom/android/internal/telephony/Phone;->mServiceStateRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/Phone;->migrate(Lcom/android/internal/telephony/RegistrantList;Lcom/android/internal/telephony/RegistrantList;)V

    .line 1130
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mMmiCompleteRegistrants:Lcom/android/internal/telephony/RegistrantList;

    iget-object v1, p1, Lcom/android/internal/telephony/Phone;->mMmiCompleteRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/Phone;->migrate(Lcom/android/internal/telephony/RegistrantList;Lcom/android/internal/telephony/RegistrantList;)V

    .line 1131
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mMmiRegistrants:Lcom/android/internal/telephony/RegistrantList;

    iget-object v1, p1, Lcom/android/internal/telephony/Phone;->mMmiRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/Phone;->migrate(Lcom/android/internal/telephony/RegistrantList;Lcom/android/internal/telephony/RegistrantList;)V

    .line 1132
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mUnknownConnectionRegistrants:Lcom/android/internal/telephony/RegistrantList;

    iget-object v1, p1, Lcom/android/internal/telephony/Phone;->mUnknownConnectionRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/Phone;->migrate(Lcom/android/internal/telephony/RegistrantList;Lcom/android/internal/telephony/RegistrantList;)V

    .line 1133
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mSuppServiceFailedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    iget-object v1, p1, Lcom/android/internal/telephony/Phone;->mSuppServiceFailedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/Phone;->migrate(Lcom/android/internal/telephony/RegistrantList;Lcom/android/internal/telephony/RegistrantList;)V

    .line 1134
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mCellInfoRegistrants:Lcom/android/internal/telephony/RegistrantList;

    iget-object v1, p1, Lcom/android/internal/telephony/Phone;->mCellInfoRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/Phone;->migrate(Lcom/android/internal/telephony/RegistrantList;Lcom/android/internal/telephony/RegistrantList;)V

    .line 1135
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mRedialRegistrants:Lcom/android/internal/telephony/RegistrantList;

    iget-object v1, p1, Lcom/android/internal/telephony/Phone;->mRedialRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/Phone;->migrate(Lcom/android/internal/telephony/RegistrantList;Lcom/android/internal/telephony/RegistrantList;)V

    .line 1138
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->isInEmergencyCall()Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 1139
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->setIsInEmergencyCall()V

    .line 1141
    :cond_5d
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->isEcmCanceledForEmergency()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Phone;->setEcmCanceledForEmergency(Z)V

    return-void
.end method

.method public greylist-max-r needsOtaServiceProvisioning()Z
    .registers 1

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist notifyAllowedNetworkTypesChanged(I)V
    .registers 5

    .line 2381
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SubId"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",notifyAllowedNetworkTypesChanged: reason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " value:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2383
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Phone;->getAllowedNetworkTypes(I)J

    move-result-wide v1

    .line 2382
    invoke-static {v1, v2}, Landroid/telephony/TelephonyManager;->convertNetworkTypeBitmaskToString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2381
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/Phone;->logd(Ljava/lang/String;)V

    .line 2384
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Phone;->getAllowedNetworkTypes(I)J

    move-result-wide v1

    invoke-interface {v0, p0, p1, v1, v2}, Lcom/android/internal/telephony/PhoneNotifier;->notifyAllowedNetworkTypesChanged(Lcom/android/internal/telephony/Phone;IJ)V

    return-void
.end method

.method public blacklist notifyCallForwardingIndicator()V
    .registers 1

    .line 0
    return-void
.end method

.method public blacklist notifyCarrierRoamingNtnAvailableServicesChanged([I)V
    .registers 4

    .line 5438
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyCarrierRoamingNtnAvailableServicesChanged availableServices:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5439
    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5438
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/Phone;->logd(Ljava/lang/String;)V

    .line 5440
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-interface {v0, p0, p1}, Lcom/android/internal/telephony/PhoneNotifier;->notifyCarrierRoamingNtnAvailableServicesChanged(Lcom/android/internal/telephony/Phone;[I)V

    return-void
.end method

.method public blacklist notifyCarrierRoamingNtnEligibleStateChanged(Z)V
    .registers 4

    .line 5427
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyCarrierRoamingNtnEligibleStateChanged eligible:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/Phone;->logd(Ljava/lang/String;)V

    .line 5428
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-interface {v0, p0, p1}, Lcom/android/internal/telephony/PhoneNotifier;->notifyCarrierRoamingNtnEligibleStateChanged(Lcom/android/internal/telephony/Phone;Z)V

    .line 5429
    invoke-static {}, Lcom/android/internal/telephony/satellite/metrics/ControllerMetricsStats;->getInstance()Lcom/android/internal/telephony/satellite/metrics/ControllerMetricsStats;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/satellite/metrics/ControllerMetricsStats;->reportP2PSmsEligibilityNotificationsCount(Z)V

    return-void
.end method

.method public blacklist notifyCarrierRoamingNtnModeChanged(Z)V
    .registers 4

    .line 5406
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyCarrierRoamingNtnModeChanged active:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/Phone;->logd(Ljava/lang/String;)V

    .line 5407
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-interface {v0, p0, p1}, Lcom/android/internal/telephony/PhoneNotifier;->notifyCarrierRoamingNtnModeChanged(Lcom/android/internal/telephony/Phone;Z)V

    return-void
.end method

.method public blacklist notifyCarrierRoamingNtnSignalStrengthChanged(Landroid/telephony/satellite/NtnSignalStrength;)V
    .registers 4

    .line 5450
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyCarrierRoamingNtnSignalStrengthChanged: ntnSignalStrength="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5451
    invoke-virtual {p1}, Landroid/telephony/satellite/NtnSignalStrength;->getLevel()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5450
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/Phone;->logd(Ljava/lang/String;)V

    .line 5452
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-interface {v0, p0, p1}, Lcom/android/internal/telephony/PhoneNotifier;->notifyCarrierRoamingNtnSignalStrengthChanged(Lcom/android/internal/telephony/Phone;Landroid/telephony/satellite/NtnSignalStrength;)V

    return-void
.end method

.method public blacklist notifyCellInfo(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/CellInfo;",
            ">;)V"
        }
    .end annotation

    .line 2926
    new-instance v0, Landroid/os/AsyncResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 2927
    iget-object v1, p0, Lcom/android/internal/telephony/Phone;->mCellInfoRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 2929
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-interface {v0, p0, p1}, Lcom/android/internal/telephony/PhoneNotifier;->notifyCellInfo(Lcom/android/internal/telephony/Phone;Ljava/util/List;)V

    return-void
.end method

.method public blacklist notifyDataActivationStateChanged(I)V
    .registers 3

    .line 2900
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-interface {v0, p0, p1}, Lcom/android/internal/telephony/PhoneNotifier;->notifyDataActivationStateChanged(Lcom/android/internal/telephony/Phone;I)V

    return-void
.end method

.method public blacklist notifyDataActivity()V
    .registers 2

    .line 2873
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/PhoneNotifier;->notifyDataActivity(Lcom/android/internal/telephony/Phone;)V

    return-void
.end method

.method public blacklist notifyDataConnection(Landroid/telephony/PreciseDataConnectionState;)V
    .registers 3

    .line 2887
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-interface {v0, p0, p1}, Lcom/android/internal/telephony/PhoneNotifier;->notifyDataConnection(Lcom/android/internal/telephony/Phone;Landroid/telephony/PreciseDataConnectionState;)V

    return-void
.end method

.method public blacklist notifyDataEnabled(ZI)V
    .registers 4

    .line 2983
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-interface {v0, p0, p1, p2}, Lcom/android/internal/telephony/PhoneNotifier;->notifyDataEnabled(Lcom/android/internal/telephony/Phone;ZI)V

    return-void
.end method

.method public blacklist notifyDeviceIdleStateChanged(Z)V
    .registers 3

    .line 4920
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getSignalStrengthController()Lcom/android/internal/telephony/SignalStrengthController;

    move-result-object v0

    if-nez v0, :cond_e

    .line 4922
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mLogTag:Ljava/lang/String;

    const-string p1, "notifyDeviceIdleStateChanged: SignalStrengthController is null"

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 4925
    :cond_e
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SignalStrengthController;->onDeviceIdleStateChanged(Z)V

    return-void
.end method

.method protected blacklist notifyDisconnectP(Lcom/android/internal/telephony/Connection;)V
    .registers 4

    .line 1714
    new-instance v0, Landroid/os/AsyncResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1715
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mDisconnectRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    return-void
.end method

.method public blacklist notifyDisplayInfoChanged(Landroid/telephony/TelephonyDisplayInfo;)V
    .registers 3

    .line 2909
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-interface {v0, p0, p1}, Lcom/android/internal/telephony/PhoneNotifier;->notifyDisplayInfoChanged(Lcom/android/internal/telephony/Phone;Landroid/telephony/TelephonyDisplayInfo;)V

    return-void
.end method

.method public blacklist notifyEmergencyDomainSelected(I)V
    .registers 2

    .line 0
    return-void
.end method

.method public blacklist notifyEmergencyNumberList()V
    .registers 2

    .line 2972
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/PhoneNotifier;->notifyEmergencyNumberList(Lcom/android/internal/telephony/Phone;)V

    return-void
.end method

.method public blacklist notifyForVideoCapabilityChanged(Z)V
    .registers 4

    .line 3869
    iput-boolean p1, p0, Lcom/android/internal/telephony/Phone;->mIsVideoCapable:Z

    .line 3871
    new-instance v0, Landroid/os/AsyncResult;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 3872
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mVideoCapabilityChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    return-void
.end method

.method public blacklist notifyHandoverStateChanged(Lcom/android/internal/telephony/Connection;)V
    .registers 4

    .line 1031
    new-instance v0, Landroid/os/AsyncResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1032
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mHandoverRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    return-void
.end method

.method public blacklist notifyLinkCapacityEstimateChanged(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/LinkCapacityEstimate;",
            ">;)V"
        }
    .end annotation

    .line 2989
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-interface {v0, p0, p1}, Lcom/android/internal/telephony/PhoneNotifier;->notifyLinkCapacityEstimateChanged(Lcom/android/internal/telephony/Phone;Ljava/util/List;)V

    return-void
.end method

.method public blacklist notifyNewRingingConnectionP(Lcom/android/internal/telephony/Connection;)V
    .registers 5

    .line 3835
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mLogTag:Ljava/lang/String;

    .line 3837
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/internal/telephony/Phone;->getNewRingingConnectionRegistrantsAsString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v1, p1, v2}, [Ljava/lang/Object;

    move-result-object v1

    .line 3835
    const-string v2, "notifyNewRingingConnection: phoneId=[%d], connection=[%s], registrants=[%s]"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3838
    iget-boolean v0, p0, Lcom/android/internal/telephony/Phone;->mIsVoiceCapable:Z

    if-nez v0, :cond_20

    return-void

    .line 3840
    :cond_20
    new-instance v0, Landroid/os/AsyncResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 3841
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mNewRingingConnectionRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    return-void
.end method

.method public greylist-max-r notifyOtaspChanged(I)V
    .registers 4

    .line 2892
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mOtaspRegistrants:Lcom/android/internal/telephony/RegistrantList;

    new-instance v0, Landroid/os/AsyncResult;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    return-void
.end method

.method public blacklist notifyOutgoingEmergencySms(Landroid/telephony/emergency/EmergencyNumber;)V
    .registers 3

    .line 2977
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-interface {v0, p0, p1}, Lcom/android/internal/telephony/PhoneNotifier;->notifyOutgoingEmergencySms(Lcom/android/internal/telephony/Phone;Landroid/telephony/emergency/EmergencyNumber;)V

    return-void
.end method

.method public blacklist notifyPhysicalChannelConfig(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/PhysicalChannelConfig;",
            ">;)V"
        }
    .end annotation

    .line 2955
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mPhysicalChannelConfigRegistrants:Lcom/android/internal/telephony/RegistrantList;

    new-instance v1, Landroid/os/AsyncResult;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 2956
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-interface {v0, p0, p1}, Lcom/android/internal/telephony/PhoneNotifier;->notifyPhysicalChannelConfig(Lcom/android/internal/telephony/Phone;Ljava/util/List;)V

    return-void
.end method

.method public blacklist notifyRedialConnectionChanged(Lcom/android/internal/telephony/Connection;)V
    .registers 4

    .line 1055
    new-instance v0, Landroid/os/AsyncResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1056
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mRedialRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    return-void
.end method

.method protected blacklist notifyServiceStateChangedP(Landroid/telephony/ServiceState;)V
    .registers 4

    .line 1823
    new-instance v0, Landroid/os/AsyncResult;

    new-instance v1, Landroid/telephony/ServiceState;

    invoke-direct {v1, p1}, Landroid/telephony/ServiceState;-><init>(Landroid/telephony/ServiceState;)V

    const/4 p1, 0x0

    invoke-direct {v0, p1, v1, p1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1824
    iget-object p1, p0, Lcom/android/internal/telephony/Phone;->mServiceStateRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 1826
    iget-object p1, p0, Lcom/android/internal/telephony/Phone;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-interface {p1, p0}, Lcom/android/internal/telephony/PhoneNotifier;->notifyServiceState(Lcom/android/internal/telephony/Phone;)V

    return-void
.end method

.method protected blacklist notifyServiceStateChangedPForSubId(Landroid/telephony/ServiceState;I)V
    .registers 5

    .line 1834
    new-instance v0, Landroid/os/AsyncResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1835
    iget-object v1, p0, Lcom/android/internal/telephony/Phone;->mServiceStateRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 1837
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-interface {v0, p0, p1, p2}, Lcom/android/internal/telephony/PhoneNotifier;->notifyServiceStateForSubId(Lcom/android/internal/telephony/Phone;Landroid/telephony/ServiceState;I)V

    return-void
.end method

.method public blacklist notifySignalStrength()V
    .registers 2

    .line 2913
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/PhoneNotifier;->notifySignalStrength(Lcom/android/internal/telephony/Phone;)V

    return-void
.end method

.method public blacklist notifySmsSent(Ljava/lang/String;)V
    .registers 5

    .line 1070
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 1071
    iget-object v1, p0, Lcom/android/internal/telephony/Phone;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    if-eqz v1, :cond_37

    iget-object v1, p0, Lcom/android/internal/telephony/Phone;->mContext:Landroid/content/Context;

    .line 1072
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "android.hardware.telephony.messaging"

    .line 1073
    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_37

    if-eqz v0, :cond_37

    .line 1074
    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_37

    .line 1075
    iget-object p1, p0, Lcom/android/internal/telephony/Phone;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    const-string v0, "Emergency SMS detected, recording time."

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    .line 1076
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/Phone;->mTimeLastEmergencySmsSentMs:J

    :cond_37
    return-void
.end method

.method public blacklist notifySrvccState(I)V
    .registers 2

    .line 0
    return-void
.end method

.method public blacklist notifySrvccStateChanged(I)V
    .registers 3

    .line 2967
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-interface {v0, p0, p1}, Lcom/android/internal/telephony/PhoneNotifier;->notifySrvccStateChanged(Lcom/android/internal/telephony/Phone;I)V

    return-void
.end method

.method public blacklist notifyUnknownConnectionP(Lcom/android/internal/telephony/Connection;)V
    .registers 2

    .line 3861
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mUnknownConnectionRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    return-void
.end method

.method public blacklist notifyUserMobileDataStateChanged(Z)V
    .registers 3

    .line 2904
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-interface {v0, p0, p1}, Lcom/android/internal/telephony/PhoneNotifier;->notifyUserMobileDataStateChanged(Lcom/android/internal/telephony/Phone;Z)V

    return-void
.end method

.method public blacklist notifyVoiceActivationStateChanged(I)V
    .registers 3

    .line 2896
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-interface {v0, p0, p1}, Lcom/android/internal/telephony/PhoneNotifier;->notifyVoiceActivationStateChanged(Lcom/android/internal/telephony/Phone;I)V

    return-void
.end method

.method public blacklist nvReadItem(ILandroid/os/Message;Landroid/os/WorkSource;)V
    .registers 4

    .line 0
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

.method protected blacklist onSetNetworkSelectionModeCompleted()V
    .registers 1

    .line 0
    return-void
.end method

.method protected abstract blacklist onUpdateIccAvailability()V
.end method

.method public blacklist queryAvailableBandMode(Landroid/os/Message;)V
    .registers 2

    .line 2771
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {p0, p1}, Lcom/android/internal/telephony/CommandsInterface;->queryAvailableBandMode(Landroid/os/Message;)V

    return-void
.end method

.method public blacklist queryCLIP(Landroid/os/Message;)V
    .registers 2

    .line 0
    return-void
.end method

.method public blacklist queryCdmaRoamingPreference(Landroid/os/Message;)V
    .registers 2

    .line 0
    return-void
.end method

.method public blacklist queryCdmaSubscriptionMode(Landroid/os/Message;)V
    .registers 2

    .line 0
    return-void
.end method

.method public blacklist queryTTYMode(Landroid/os/Message;)V
    .registers 2

    .line 2731
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {p0, p1}, Lcom/android/internal/telephony/CommandsInterface;->queryTTYMode(Landroid/os/Message;)V

    return-void
.end method

.method public blacklist radioCapabilityUpdated(Lcom/android/internal/telephony/RadioCapability;Z)V
    .registers 4

    .line 4457
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mRadioCapability:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 4459
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result p1

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result p1

    if-eqz p1, :cond_21

    .line 4460
    iget-object p1, p0, Lcom/android/internal/telephony/Phone;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x11102cc

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    .line 4462
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Phone;->sendSubscriptionSettings(Z)V

    :cond_21
    if-eqz p2, :cond_39

    .line 4468
    iget-object p1, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 p2, 0x43

    invoke-virtual {p0, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->getImei(Landroid/os/Message;)V

    .line 4469
    iget-object p1, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 p2, 0x15

    invoke-virtual {p0, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/android/internal/telephony/CommandsInterface;->getDeviceIdentity(Landroid/os/Message;)V

    :cond_39
    return-void
.end method

.method public blacklist rebootModem(Landroid/os/Message;)V
    .registers 3

    .line 2822
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v0, 0x1

    invoke-interface {p0, v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->nvResetConfig(ILandroid/os/Message;)V

    return-void
.end method

.method public blacklist refreshSafetySources(Ljava/lang/String;)V
    .registers 2

    .line 0
    return-void
.end method

.method public blacklist registerFoT53ClirlInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4

    .line 0
    return-void
.end method

.method public blacklist registerForCallWaiting(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4

    .line 0
    return-void
.end method

.method public blacklist registerForCdmaOtaStatusChange(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4

    .line 0
    return-void
.end method

.method public blacklist registerForCellInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4

    .line 1800
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mCellInfoRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/RegistrantList;->add(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public blacklist registerForConnectionSetupFailure(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4

    .line 5059
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/internal/telephony/CommandsInterface;->registerForConnectionSetupFailure(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public greylist registerForDisconnect(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4

    .line 1321
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/Phone;->checkCorrectThread(Landroid/os/Handler;)V

    .line 1323
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mDisconnectRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public blacklist registerForDisplayInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4

    .line 3500
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/internal/telephony/CommandsInterface;->registerForDisplayInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public greylist registerForEcmTimerReset(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4

    .line 0
    return-void
.end method

.method public blacklist registerForEmergencyCallToggle(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 5

    .line 1574
    new-instance v0, Lcom/android/internal/telephony/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/internal/telephony/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1575
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mEmergencyCallToggledRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RegistrantList;->add(Lcom/android/internal/telephony/Registrant;)V

    return-void
.end method

.method public blacklist registerForEmergencyDomainSelected(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4

    .line 0
    return-void
.end method

.method public blacklist registerForEmergencyNetworkScan(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4

    .line 5146
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/internal/telephony/CommandsInterface;->registerForEmergencyNetworkScan(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public blacklist registerForHandoverStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4

    .line 1015
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/Phone;->checkCorrectThread(Landroid/os/Handler;)V

    .line 1016
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mHandoverRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public blacklist registerForInCallVoicePrivacyOff(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4

    .line 1272
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/internal/telephony/CommandsInterface;->registerForInCallVoicePrivacyOff(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public blacklist registerForInCallVoicePrivacyOn(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4

    .line 1252
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/internal/telephony/CommandsInterface;->registerForInCallVoicePrivacyOn(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public greylist registerForIncomingRing(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4

    .line 1295
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/Phone;->checkCorrectThread(Landroid/os/Handler;)V

    .line 1297
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mIncomingRingRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public blacklist registerForLineControlInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4

    .line 0
    return-void
.end method

.method public greylist registerForMmiComplete(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4

    .line 1396
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/Phone;->checkCorrectThread(Landroid/os/Handler;)V

    .line 1398
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mMmiCompleteRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public greylist registerForMmiInitiate(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4

    .line 1372
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/Phone;->checkCorrectThread(Landroid/os/Handler;)V

    .line 1374
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mMmiRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public greylist registerForNewRingingConnection(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4

    .line 1204
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/Phone;->checkCorrectThread(Landroid/os/Handler;)V

    .line 1206
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mNewRingingConnectionRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public blacklist registerForNumberInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4

    .line 0
    return-void
.end method

.method public blacklist registerForOnHoldTone(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4

    .line 0
    return-void
.end method

.method public blacklist registerForOtaspChange(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 5

    .line 3409
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/Phone;->checkCorrectThread(Landroid/os/Handler;)V

    .line 3410
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mOtaspRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3412
    new-instance v0, Lcom/android/internal/telephony/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/internal/telephony/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    new-instance p1, Landroid/os/AsyncResult;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getOtasp()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 p2, 0x0

    invoke-direct {p1, p2, p0, p2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    return-void
.end method

.method public blacklist registerForPhysicalChannelConfig(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 5

    .line 2939
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/Phone;->checkCorrectThread(Landroid/os/Handler;)V

    .line 2940
    new-instance v0, Lcom/android/internal/telephony/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/internal/telephony/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2941
    iget-object p1, p0, Lcom/android/internal/telephony/Phone;->mPhysicalChannelConfigRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/RegistrantList;->add(Lcom/android/internal/telephony/Registrant;)V

    .line 2943
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhysicalChannelConfigList()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_1c

    .line 2945
    new-instance p1, Landroid/os/AsyncResult;

    const/4 p2, 0x0

    invoke-direct {p1, p2, p0, p2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    :cond_1c
    return-void
.end method

.method public greylist registerForPreciseCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4

    .line 997
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/Phone;->checkCorrectThread(Landroid/os/Handler;)V

    .line 999
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mPreciseCallStateRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public blacklist registerForPreferredNetworkTypeChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4

    .line 2651
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/Phone;->checkCorrectThread(Landroid/os/Handler;)V

    .line 2652
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mPreferredNetworkTypeRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public blacklist registerForRadioCapabilityChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4

    .line 4566
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/internal/telephony/CommandsInterface;->registerForRadioCapabilityChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public blacklist registerForRadioOffOrNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4

    .line 3675
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mRadioOffOrNotAvailableRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public blacklist registerForRedialConnectionChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4

    .line 1039
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/Phone;->checkCorrectThread(Landroid/os/Handler;)V

    .line 1040
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mRedialRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public blacklist registerForRedirectedNumberInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4

    .line 0
    return-void
.end method

.method public blacklist registerForResendIncallMute(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4

    .line 1783
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/internal/telephony/CommandsInterface;->registerForResendIncallMute(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public greylist registerForRingbackTone(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4

    .line 1749
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/internal/telephony/CommandsInterface;->registerForRingbackTone(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public greylist registerForServiceStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4

    .line 1726
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mServiceStateRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/RegistrantList;->add(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public blacklist registerForSignalInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4

    .line 3477
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/internal/telephony/CommandsInterface;->registerForSignalInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public blacklist registerForSilentRedial(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4

    .line 0
    return-void
.end method

.method public greylist registerForSimRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4

    .line 0
    return-void
.end method

.method public blacklist registerForSubscriptionInfoReady(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4

    .line 0
    return-void
.end method

.method public blacklist registerForSuppServiceFailed(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4

    .line 1344
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/Phone;->checkCorrectThread(Landroid/os/Handler;)V

    .line 1346
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mSuppServiceFailedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public blacklist registerForT53AudioControlInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4

    .line 0
    return-void
.end method

.method public blacklist registerForTtyModeReceived(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4

    .line 0
    return-void
.end method

.method public greylist registerForUnknownConnection(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4

    .line 1176
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/Phone;->checkCorrectThread(Landroid/os/Handler;)V

    .line 1178
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mUnknownConnectionRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public blacklist registerForVideoCapabilityChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 5

    .line 1228
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/Phone;->checkCorrectThread(Landroid/os/Handler;)V

    .line 1230
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mVideoCapabilityChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1233
    iget-boolean p1, p0, Lcom/android/internal/telephony/Phone;->mIsVideoCapable:Z

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Phone;->notifyForVideoCapabilityChanged(Z)V

    return-void
.end method

.method public blacklist registerForVolteSilentRedial(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4

    .line 0
    return-void
.end method

.method public blacklist requestCellInfoUpdate(Landroid/os/WorkSource;Landroid/os/Message;)V
    .registers 3

    .line 2120
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/ServiceStateTracker;->requestAllCellInfo(Landroid/os/WorkSource;Landroid/os/Message;)V

    return-void
.end method

.method public blacklist resetCarrierKeysForImsiEncryption()V
    .registers 1

    .line 0
    return-void
.end method

.method public blacklist resetCarrierKeysForImsiEncryption(Z)V
    .registers 2

    .line 0
    return-void
.end method

.method public blacklist resetModemConfig(Landroid/os/Message;)V
    .registers 2

    .line 0
    return-void
.end method

.method public blacklist resolveSubscriptionCarrierId(Ljava/lang/String;)V
    .registers 2

    .line 0
    return-void
.end method

.method public blacklist restartEmergencyCallbackMode(IJ)V
    .registers 7

    .line 5381
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mLogTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "restartEmergencyCallbackMode:type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5382
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/android/internal/telephony/PhoneNotifier;->notifyCallbackModeRestarted(Lcom/android/internal/telephony/Phone;IJ)V

    return-void
.end method

.method public blacklist saveClirSetting(I)V
    .registers 6

    .line 1680
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1681
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1682
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clir_sub_key"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1683
    iget-object v1, p0, Lcom/android/internal/telephony/Phone;->mLogTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "saveClirSetting: clir_sub_key"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1687
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result p1

    if-nez p1, :cond_53

    .line 1688
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mLogTag:Ljava/lang/String;

    const-string p1, "Failed to commit CLIR preference"

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_53
    return-void
.end method

.method public greylist selectNetworkManually(Lcom/android/internal/telephony/OperatorInfo;ZLandroid/os/Message;)V
    .registers 7

    .line 1548
    new-instance v0, Lcom/android/internal/telephony/Phone$NetworkSelectMessage;

    invoke-direct {v0}, Lcom/android/internal/telephony/Phone$NetworkSelectMessage;-><init>()V

    .line 1549
    iput-object p3, v0, Lcom/android/internal/telephony/Phone$NetworkSelectMessage;->message:Landroid/os/Message;

    .line 1550
    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorNumeric()Ljava/lang/String;

    move-result-object p3

    iput-object p3, v0, Lcom/android/internal/telephony/Phone$NetworkSelectMessage;->operatorNumeric:Ljava/lang/String;

    .line 1551
    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object p3

    iput-object p3, v0, Lcom/android/internal/telephony/Phone$NetworkSelectMessage;->operatorAlphaLong:Ljava/lang/String;

    .line 1552
    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaShort()Ljava/lang/String;

    move-result-object p3

    iput-object p3, v0, Lcom/android/internal/telephony/Phone$NetworkSelectMessage;->operatorAlphaShort:Ljava/lang/String;

    const/16 p3, 0x10

    .line 1554
    invoke-virtual {p0, p3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p3

    .line 1555
    iget-object v1, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getRan()I

    move-result p1

    invoke-interface {v1, v2, p1, p3}, Lcom/android/internal/telephony/CommandsInterface;->setNetworkSelectionModeManual(Ljava/lang/String;ILandroid/os/Message;)V

    if-eqz p2, :cond_32

    .line 1558
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/Phone;->updateSavedNetworkOperator(Lcom/android/internal/telephony/Phone$NetworkSelectMessage;)V

    return-void

    .line 1560
    :cond_32
    invoke-direct {p0}, Lcom/android/internal/telephony/Phone;->clearSavedNetworkSelection()V

    .line 1561
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/Phone;->updateManualNetworkSelection(Lcom/android/internal/telephony/Phone$NetworkSelectMessage;)V

    return-void
.end method

.method public blacklist sendBurstDtmf(Ljava/lang/String;IILandroid/os/Message;)V
    .registers 5

    .line 0
    return-void
.end method

.method public blacklist sendDialerSpecialCode(Ljava/lang/String;)V
    .registers 10

    .line 3197
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_61

    .line 3198
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    move-result-object v0

    const/4 v1, 0x1

    .line 3199
    invoke-virtual {v0, v1}, Landroid/app/BroadcastOptions;->setBackgroundActivityStartsAllowed(Z)V

    .line 3200
    new-instance v1, Landroid/content/Intent;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "android_secret_code://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3201
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string v4, "android.provider.Telephony.SECRET_CODE"

    invoke-direct {v1, v4, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v2, 0x10000000

    .line 3202
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3204
    iget-object v4, p0, Lcom/android/internal/telephony/Phone;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v4, v1, v5, v7, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 3212
    new-instance v1, Landroid/content/Intent;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3213
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string v3, "android.telephony.action.SECRET_CODE"

    invoke-direct {v1, v3, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 3214
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3216
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mContext:Landroid/content/Context;

    .line 3217
    invoke-virtual {v0}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p1

    .line 3216
    invoke-virtual {p0, v1, v5, v7, p1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_61
    return-void
.end method

.method public abstract blacklist sendEmergencyCallStateChange(Z)V
.end method

.method public blacklist sendSubscriptionSettings(Z)V
    .registers 4

    .line 4475
    iget-boolean v0, p0, Lcom/android/internal/telephony/Phone;->mIsAllowedNetworkTypesLoadedFromDb:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 4476
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/Phone;->updateAllowedNetworkTypes(Landroid/os/Message;)V

    :cond_8
    if-eqz p1, :cond_d

    .line 4480
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/Phone;->restoreSavedNetworkSelection(Landroid/os/Message;)V

    .line 4483
    :cond_d
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->updateUsageSetting()Z

    return-void
.end method

.method public blacklist setAllowedCarriers(Landroid/telephony/CarrierRestrictionRules;Landroid/os/Message;Landroid/os/WorkSource;)V
    .registers 4

    .line 4631
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/internal/telephony/CommandsInterface;->setAllowedCarriers(Landroid/telephony/CarrierRestrictionRules;Landroid/os/Message;Landroid/os/WorkSource;)V

    return-void
.end method

.method public blacklist setAllowedNetworkTypes(IJLandroid/os/Message;)V
    .registers 9

    .line 2571
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v0

    .line 2572
    invoke-static {p1}, Landroid/telephony/TelephonyManager;->isValidAllowedNetworkTypesReason(I)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2f

    .line 2573
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "setAllowedNetworkTypes: Invalid allowed network type reason: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/Phone;->loge(Ljava/lang/String;)V

    if-eqz p4, :cond_c2

    .line 2575
    new-instance p0, Lcom/android/internal/telephony/CommandException;

    sget-object p1, Lcom/android/internal/telephony/CommandException$Error;->INVALID_ARGUMENTS:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    invoke-static {p4, v2, p0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 2577
    invoke-virtual {p4}, Landroid/os/Message;->sendToTarget()V

    return-void

    .line 2581
    :cond_2f
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isUsableSubscriptionId(I)Z

    move-result v1

    if-eqz v1, :cond_95

    iget-boolean v1, p0, Lcom/android/internal/telephony/Phone;->mIsAllowedNetworkTypesLoadedFromDb:Z

    if-nez v1, :cond_3a

    goto :goto_95

    .line 2593
    :cond_3a
    iget-object v1, p0, Lcom/android/internal/telephony/Phone;->mAllowedNetworkTypesForReasons:Ljava/util/Map;

    monitor-enter v1

    .line 2594
    :try_start_3d
    iget-object v2, p0, Lcom/android/internal/telephony/Phone;->mAllowedNetworkTypesForReasons:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {v2, v3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2595
    iget-object p2, p0, Lcom/android/internal/telephony/Phone;->mAllowedNetworkTypesForReasons:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    new-instance p3, Lcom/android/internal/telephony/Phone$$ExternalSyntheticLambda0;

    invoke-direct {p3, p0}, Lcom/android/internal/telephony/Phone$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/telephony/Phone;)V

    .line 2596
    invoke-interface {p2, p3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p2

    const-string p3, ","

    .line 2598
    invoke-static {p3}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 2599
    monitor-exit v1
    :try_end_6a
    .catchall {:try_start_3d .. :try_end_6a} :catchall_92

    .line 2600
    const-string p3, "allowed_network_types_for_reasons"

    invoke-static {v0, p3, p2}, Landroid/telephony/SubscriptionManager;->setSubscriptionProperty(ILjava/lang/String;Ljava/lang/String;)V

    .line 2603
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAllowedNetworkTypes: SubId"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",setAllowedNetworkTypes "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/Phone;->logd(Ljava/lang/String;)V

    .line 2605
    invoke-virtual {p0, p4}, Lcom/android/internal/telephony/Phone;->updateAllowedNetworkTypes(Landroid/os/Message;)V

    .line 2606
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Phone;->notifyAllowedNetworkTypesChanged(I)V

    return-void

    :catchall_92
    move-exception p0

    .line 2599
    :try_start_93
    monitor-exit v1
    :try_end_94
    .catchall {:try_start_93 .. :try_end_94} :catchall_92

    throw p0

    .line 2583
    :cond_95
    :goto_95
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "setAllowedNetworkTypes: no sim or network type is not loaded. SubscriptionId: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", isNetworkTypeLoaded"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/android/internal/telephony/Phone;->mIsAllowedNetworkTypesLoadedFromDb:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/Phone;->loge(Ljava/lang/String;)V

    if-eqz p4, :cond_c2

    .line 2586
    new-instance p0, Lcom/android/internal/telephony/CommandException;

    sget-object p1, Lcom/android/internal/telephony/CommandException$Error;->MISSING_RESOURCE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    invoke-static {p4, v2, p0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 2588
    invoke-virtual {p4}, Landroid/os/Message;->sendToTarget()V

    :cond_c2
    return-void
.end method

.method public blacklist setAlwaysReportSignalStrength(Z)V
    .registers 2

    .line 3910
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mDeviceStateMonitor:Lcom/android/internal/telephony/DeviceStateMonitor;

    if-eqz p0, :cond_7

    .line 3911
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/DeviceStateMonitor;->setAlwaysReportSignalStrength(Z)V

    :cond_7
    return-void
.end method

.method public blacklist setBandMode(ILandroid/os/Message;)V
    .registers 3

    .line 2759
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {p0, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->setBandMode(ILandroid/os/Message;)V

    return-void
.end method

.method public abstract blacklist setBroadcastEmergencyCallStateChanges(Z)V
.end method

.method public blacklist setCallWaiting(ZILandroid/os/Message;)V
    .registers 4

    .line 0
    return-void
.end method

.method public blacklist setCarrierInfoForImsiEncryption(Landroid/telephony/ImsiEncryptionInfo;)V
    .registers 2

    .line 0
    return-void
.end method

.method public blacklist setCarrierTestOverride(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    .line 0
    return-void
.end method

.method public blacklist setCdmaRoamingPreference(ILandroid/os/Message;)V
    .registers 3

    .line 0
    return-void
.end method

.method public blacklist setCdmaSubscriptionMode(ILandroid/os/Message;)V
    .registers 3

    .line 0
    return-void
.end method

.method public blacklist setCellBroadcastIdRanges(Ljava/util/List;Ljava/util/function/Consumer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/CellBroadcastIdRange;",
            ">;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const/4 p0, 0x1

    .line 5354
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public blacklist setCellInfoListRate(ILandroid/os/WorkSource;)V
    .registers 4

    .line 2150
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0, p2}, Lcom/android/internal/telephony/CommandsInterface;->setCellInfoListRate(ILandroid/os/Message;Landroid/os/WorkSource;)V

    return-void
.end method

.method public blacklist setCellInfoMinInterval(I)V
    .registers 2

    .line 2105
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ServiceStateTracker;->setCellInfoMinInterval(I)V

    return-void
.end method

.method public blacklist setDataActivationState(I)V
    .registers 2

    .line 2031
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mSimActivationTracker:Lcom/android/internal/telephony/SimActivationTracker;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SimActivationTracker;->setDataActivationState(I)V

    return-void
.end method

.method public blacklist setDataThrottling(Landroid/os/Message;Landroid/os/WorkSource;IJ)V
    .registers 6

    .line 4623
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface/range {p0 .. p5}, Lcom/android/internal/telephony/CommandsInterface;->setDataThrottling(Landroid/os/Message;Landroid/os/WorkSource;IJ)V

    return-void
.end method

.method public blacklist setEchoSuppressionEnabled()V
    .registers 1

    .line 0
    return-void
.end method

.method public blacklist setEcmCanceledForEmergency(Z)V
    .registers 2

    .line 3054
    iput-boolean p1, p0, Lcom/android/internal/telephony/Phone;->mEcmCanceledForEmergency:Z

    return-void
.end method

.method public blacklist setEmergencyMode(ILandroid/os/Message;)V
    .registers 3

    .line 5100
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {p0, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->setEmergencyMode(ILandroid/os/Message;)V

    return-void
.end method

.method public blacklist setImsPhone(Lcom/android/internal/telephony/imsphone/ImsPhone;)V
    .registers 2

    .line 4014
    iput-object p1, p0, Lcom/android/internal/telephony/Phone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    return-void
.end method

.method public blacklist setImsRegistrationState(Z)V
    .registers 2

    .line 0
    return-void
.end method

.method public blacklist setIsInEcm(Z)V
    .registers 3

    .line 3033
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getUnitTestMode()Z

    move-result v0

    if-nez v0, :cond_d

    .line 3034
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Landroid/internal/telephony/sysprop/TelephonyProperties;->in_ecm_mode(Ljava/lang/Boolean;)V

    .line 3036
    :cond_d
    iput-boolean p1, p0, Lcom/android/internal/telephony/Phone;->mIsPhoneInEcmState:Z

    return-void
.end method

.method protected blacklist setIsInEmergencyCall()V
    .registers 1

    .line 0
    return-void
.end method

.method public blacklist setLinkCapacityReportingCriteria([I[II)V
    .registers 4

    .line 0
    return-void
.end method

.method public blacklist setN1ModeEnabled(ZLandroid/os/Message;)V
    .registers 3

    .line 5331
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {p0, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->setN1ModeEnabled(ZLandroid/os/Message;)V

    return-void
.end method

.method public blacklist setNetworkScanStarted(Z)V
    .registers 2

    .line 4175
    iput-boolean p1, p0, Lcom/android/internal/telephony/Phone;->mIsNetworkScanStarted:Z

    return-void
.end method

.method public greylist setNetworkSelectionModeAutomatic(Landroid/os/Message;)V
    .registers 4

    .line 1462
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mLogTag:Ljava/lang/String;

    const-string v1, "setNetworkSelectionModeAutomatic, querying current mode"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x26

    .line 1466
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1467
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1468
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {p0, v0}, Lcom/android/internal/telephony/CommandsInterface;->getNetworkSelectionMode(Landroid/os/Message;)V

    return-void
.end method

.method public blacklist setNrDualConnectivityState(ILandroid/os/Message;Landroid/os/WorkSource;)V
    .registers 4

    .line 2408
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/internal/telephony/CommandsInterface;->setNrDualConnectivityState(ILandroid/os/Message;Landroid/os/WorkSource;)V

    return-void
.end method

.method public greylist setOnEcbModeExitResponse(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4

    .line 0
    return-void
.end method

.method public greylist setOnPostDialCharacter(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 5

    .line 3330
    new-instance v0, Lcom/android/internal/telephony/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/internal/telephony/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/telephony/Phone;->mPostDialHandler:Lcom/android/internal/telephony/Registrant;

    return-void
.end method

.method public blacklist setOperatorBrandOverride(Ljava/lang/String;)Z
    .registers 2

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method protected blacklist setPhoneName(Ljava/lang/String;)V
    .registers 2

    .line 520
    iput-object p1, p0, Lcom/android/internal/telephony/Phone;->mName:Ljava/lang/String;

    return-void
.end method

.method public blacklist setRadioCapability(Lcom/android/internal/telephony/RadioCapability;Landroid/os/Message;)V
    .registers 3

    .line 4412
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {p0, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->setRadioCapability(Lcom/android/internal/telephony/RadioCapability;Landroid/os/Message;)V

    return-void
.end method

.method public blacklist setRoamingOverride(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 4193
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getIccSerialNumber()Ljava/lang/String;

    move-result-object p3

    .line 4194
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-eqz p4, :cond_c

    const/4 p0, 0x0

    return p0

    .line 4198
    :cond_c
    const-string p4, "gsm_roaming_list_"

    invoke-direct {p0, p1, p4, p3}, Lcom/android/internal/telephony/Phone;->setRoamingOverrideHelper(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 4199
    const-string p1, "gsm_non_roaming_list_"

    invoke-direct {p0, p2, p1, p3}, Lcom/android/internal/telephony/Phone;->setRoamingOverrideHelper(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 4207
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object p0

    if-eqz p0, :cond_1f

    .line 4209
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->pollState()V

    :cond_1f
    const/4 p0, 0x1

    return p0
.end method

.method public blacklist setSatelliteEnabledForCarrier(IZLandroid/os/Message;)V
    .registers 6

    .line 5486
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSatelliteEnabledForCarrier: simSlot="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " satelliteEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/Phone;->logd(Ljava/lang/String;)V

    .line 5488
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/internal/telephony/CommandsInterface;->setSatelliteEnabledForCarrier(IZLandroid/os/Message;)V

    return-void
.end method

.method public blacklist setSatellitePlmn(ILjava/util/List;Ljava/util/List;Landroid/os/Message;)V
    .registers 7
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

    .line 5470
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSatellitePlmn: simSlot="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " carrierPlmnList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5471
    invoke-interface {p2}, Ljava/util/List;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " allSatellitePlmnList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5472
    invoke-interface {p3}, Ljava/util/List;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5470
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/Phone;->logd(Ljava/lang/String;)V

    .line 5473
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/CommandsInterface;->setSatellitePlmn(ILjava/util/List;Ljava/util/List;Landroid/os/Message;)V

    return-void
.end method

.method public blacklist setSimPowerState(ILandroid/os/Message;Landroid/os/WorkSource;)V
    .registers 4

    .line 4762
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/internal/telephony/CommandsInterface;->setSimCardPower(ILandroid/os/Message;Landroid/os/WorkSource;)V

    return-void
.end method

.method public blacklist setSmsStats(Lcom/android/internal/telephony/metrics/SmsStats;)V
    .registers 2

    .line 4881
    iput-object p1, p0, Lcom/android/internal/telephony/Phone;->mSmsStats:Lcom/android/internal/telephony/metrics/SmsStats;

    return-void
.end method

.method public greylist setSmscAddress(Ljava/lang/String;Landroid/os/Message;)V
    .registers 3

    .line 2693
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {p0, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->setSmscAddress(Ljava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method public blacklist setSystemSelectionChannels(Ljava/util/List;Landroid/os/Message;)V
    .registers 3
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

    .line 2860
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {p0, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->setSystemSelectionChannels(Ljava/util/List;Landroid/os/Message;)V

    return-void
.end method

.method public blacklist setTTYMode(ILandroid/os/Message;)V
    .registers 3

    .line 2707
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {p0, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->setTTYMode(ILandroid/os/Message;)V

    return-void
.end method

.method public blacklist setTerminalBasedCallWaitingStatus(I)V
    .registers 2

    .line 0
    return-void
.end method

.method public blacklist setTerminalBasedCallWaitingSupported(Z)V
    .registers 2

    .line 0
    return-void
.end method

.method public blacklist setUiTTYMode(ILandroid/os/Message;)V
    .registers 3

    .line 2721
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mLogTag:Ljava/lang/String;

    const-string p1, "unexpected setUiTTYMode method call"

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public blacklist setVoNrEnabled(ZLandroid/os/Message;Landroid/os/WorkSource;)V
    .registers 4

    .line 4770
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/internal/telephony/CommandsInterface;->setVoNrEnabled(ZLandroid/os/Message;Landroid/os/WorkSource;)V

    return-void
.end method

.method public blacklist setVoiceActivationState(I)V
    .registers 2

    .line 2025
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mSimActivationTracker:Lcom/android/internal/telephony/SimActivationTracker;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SimActivationTracker;->setVoiceActivationState(I)V

    return-void
.end method

.method public blacklist setVoiceCallForwardingFlag(IZLjava/lang/String;)V
    .registers 5

    .line 2224
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/Phone;->setCallForwardingIndicatorInSharedPref(Z)V

    .line 2225
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 2227
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/uicc/IccRecords;->setVoiceCallForwardingFlag(IZLjava/lang/String;)V

    .line 2229
    :cond_c
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->notifyCallForwardingIndicator()V

    return-void
.end method

.method public blacklist setVoiceCallForwardingFlag(Lcom/android/internal/telephony/uicc/IccRecords;IZLjava/lang/String;)V
    .registers 5

    .line 2242
    invoke-direct {p0, p3}, Lcom/android/internal/telephony/Phone;->setCallForwardingIndicatorInSharedPref(Z)V

    if-eqz p1, :cond_8

    .line 2244
    invoke-virtual {p1, p2, p3, p4}, Lcom/android/internal/telephony/uicc/IccRecords;->setVoiceCallForwardingFlag(IZLjava/lang/String;)V

    .line 2246
    :cond_8
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->notifyCallForwardingIndicator()V

    return-void
.end method

.method public blacklist setVoiceCallSessionStats(Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;)V
    .registers 2

    .line 4870
    iput-object p1, p0, Lcom/android/internal/telephony/Phone;->mVoiceCallSessionStats:Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;

    return-void
.end method

.method public blacklist setVoiceMessageCount(I)V
    .registers 7

    .line 3120
    iput p1, p0, Lcom/android/internal/telephony/Phone;->mVmCount:I

    .line 3121
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v0

    .line 3122
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v1

    if-eqz v1, :cond_54

    .line 3124
    iget-object v1, p0, Lcom/android/internal/telephony/Phone;->mLogTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setVoiceMessageCount: Storing Voice Mail Count = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " for mVmCountKey = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "vm_count_key"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " in preferences."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3127
    iget-object v1, p0, Lcom/android/internal/telephony/Phone;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 3128
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 3129
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 3130
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_6a

    .line 3132
    :cond_54
    iget-object v1, p0, Lcom/android/internal/telephony/Phone;->mLogTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setVoiceMessageCount in sharedPreference: invalid subId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3135
    :goto_6a
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/Phone;->mPhoneId:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/UiccController;->getIccRecords(II)Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v0

    if-eqz v0, :cond_82

    .line 3138
    iget-object v1, p0, Lcom/android/internal/telephony/Phone;->mLogTag:Ljava/lang/String;

    const-string v3, "setVoiceMessageCount: updating SIM Records"

    invoke-static {v1, v3}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3139
    invoke-virtual {v0, v2, p1}, Lcom/android/internal/telephony/uicc/IccRecords;->setVoiceMessageWaiting(II)V

    goto :goto_89

    .line 3141
    :cond_82
    iget-object p1, p0, Lcom/android/internal/telephony/Phone;->mLogTag:Ljava/lang/String;

    const-string v0, "setVoiceMessageCount: SIM Records not found"

    invoke-static {p1, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3144
    :goto_89
    invoke-direct {p0}, Lcom/android/internal/telephony/Phone;->notifyMessageWaitingIndicator()V

    return-void
.end method

.method public blacklist setVoiceMessageWaiting(II)V
    .registers 3

    .line 3969
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mLogTag:Ljava/lang/String;

    const-string p1, "Error! This function should never be executed, inactive Phone."

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public blacklist setVoiceServiceStateOverride(Z)V
    .registers 2

    .line 0
    return-void
.end method

.method public blacklist shouldPreferInServiceSimForNormalRoutedEmergencyCall()Z
    .registers 4

    .line 749
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "carrier_config"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    .line 750
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result p0

    const-string v1, "prefer_in_service_sim_for_normal_routed_emergency_calls_bool"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p0, v2}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I[Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_22

    .line 753
    invoke-virtual {p0, v1, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0

    :cond_22
    return v0
.end method

.method public blacklist shutdownRadio()V
    .registers 1

    .line 4394
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->requestShutdown()V

    return-void
.end method

.method public blacklist startEmergencyCallbackMode(IJ)V
    .registers 7

    .line 5367
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mLogTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startEmergencyCallbackMode:type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5368
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/android/internal/telephony/PhoneNotifier;->notifyCallbackModeStarted(Lcom/android/internal/telephony/Phone;IJ)V

    return-void
.end method

.method public blacklist startImsTraffic(IIIILandroid/os/Message;)V
    .registers 6

    .line 5038
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface/range {p0 .. p5}, Lcom/android/internal/telephony/CommandsInterface;->startImsTraffic(IIIILandroid/os/Message;)V

    return-void
.end method

.method public blacklist startRingbackTone()V
    .registers 1

    .line 0
    return-void
.end method

.method public blacklist stopEmergencyCallbackMode(II)V
    .registers 6

    .line 5394
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mLogTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopEmergencyCallbackMode:type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", reason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5395
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-interface {v0, p0, p1, p2}, Lcom/android/internal/telephony/PhoneNotifier;->notifyCallbackModeStopped(Lcom/android/internal/telephony/Phone;II)V

    return-void
.end method

.method public blacklist stopImsTraffic(ILandroid/os/Message;)V
    .registers 3

    .line 5048
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {p0, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->stopImsTraffic(ILandroid/os/Message;)V

    return-void
.end method

.method public blacklist stopRingbackTone()V
    .registers 1

    .line 0
    return-void
.end method

.method public blacklist supportsConversionOfCdmaCallerIdMmiCodesWhileRoaming()Z
    .registers 3

    .line 709
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "carrier_config"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    .line 710
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_1e

    .line 712
    const-string v1, "convert_cdma_caller_id_mmi_codes_while_roaming_on_3gpp_bool"

    invoke-virtual {p0, v1, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0

    :cond_1e
    return v0
.end method

.method public blacklist triggerEmergencyNetworkScan([IILandroid/os/Message;)V
    .registers 4

    .line 5115
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/internal/telephony/CommandsInterface;->triggerEmergencyNetworkScan([IILandroid/os/Message;)V

    return-void
.end method

.method public blacklist triggerEpsFallback(ILandroid/os/Message;)V
    .registers 3

    .line 5078
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {p0, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->triggerEpsFallback(ILandroid/os/Message;)V

    return-void
.end method

.method public blacklist triggerImsDeregistration(I)V
    .registers 2

    .line 5165
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    if-eqz p0, :cond_7

    .line 5166
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Phone;->triggerImsDeregistration(I)V

    :cond_7
    return-void
.end method

.method public blacklist triggerNotifyAnbr(III)V
    .registers 4

    .line 0
    return-void
.end method

.method public blacklist unregisterForCallWaiting(Landroid/os/Handler;)V
    .registers 2

    .line 0
    return-void
.end method

.method public blacklist unregisterForCdmaOtaStatusChange(Landroid/os/Handler;)V
    .registers 2

    .line 0
    return-void
.end method

.method public blacklist unregisterForCellInfo(Landroid/os/Handler;)V
    .registers 2

    .line 1808
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mCellInfoRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public blacklist unregisterForConnectionSetupFailure(Landroid/os/Handler;)V
    .registers 2

    .line 5068
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {p0, p1}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForConnectionSetupFailure(Landroid/os/Handler;)V

    return-void
.end method

.method public greylist unregisterForDisconnect(Landroid/os/Handler;)V
    .registers 2

    .line 1332
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mDisconnectRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public blacklist unregisterForDisplayInfo(Landroid/os/Handler;)V
    .registers 2

    .line 3510
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {p0, p1}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForDisplayInfo(Landroid/os/Handler;)V

    return-void
.end method

.method public greylist unregisterForEcmTimerReset(Landroid/os/Handler;)V
    .registers 2

    .line 0
    return-void
.end method

.method public blacklist unregisterForEmergencyCallToggle(Landroid/os/Handler;)V
    .registers 2

    .line 1579
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mEmergencyCallToggledRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public blacklist unregisterForEmergencyDomainSelected(Landroid/os/Handler;)V
    .registers 2

    .line 0
    return-void
.end method

.method public blacklist unregisterForEmergencyNetworkScan(Landroid/os/Handler;)V
    .registers 2

    .line 5155
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {p0, p1}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForEmergencyNetworkScan(Landroid/os/Handler;)V

    return-void
.end method

.method public blacklist unregisterForHandoverStateChanged(Landroid/os/Handler;)V
    .registers 2

    .line 1023
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mHandoverRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public blacklist unregisterForInCallVoicePrivacyOff(Landroid/os/Handler;)V
    .registers 2

    .line 1281
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {p0, p1}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForInCallVoicePrivacyOff(Landroid/os/Handler;)V

    return-void
.end method

.method public blacklist unregisterForInCallVoicePrivacyOn(Landroid/os/Handler;)V
    .registers 2

    .line 1261
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {p0, p1}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForInCallVoicePrivacyOn(Landroid/os/Handler;)V

    return-void
.end method

.method public greylist unregisterForIncomingRing(Landroid/os/Handler;)V
    .registers 2

    .line 1306
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mIncomingRingRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public blacklist unregisterForLineControlInfo(Landroid/os/Handler;)V
    .registers 2

    .line 0
    return-void
.end method

.method public greylist unregisterForMmiComplete(Landroid/os/Handler;)V
    .registers 2

    .line 1407
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/Phone;->checkCorrectThread(Landroid/os/Handler;)V

    .line 1409
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mMmiCompleteRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public greylist unregisterForMmiInitiate(Landroid/os/Handler;)V
    .registers 2

    .line 1383
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mMmiRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public greylist unregisterForNewRingingConnection(Landroid/os/Handler;)V
    .registers 2

    .line 1215
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mNewRingingConnectionRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public blacklist unregisterForNumberInfo(Landroid/os/Handler;)V
    .registers 2

    .line 0
    return-void
.end method

.method public blacklist unregisterForOnHoldTone(Landroid/os/Handler;)V
    .registers 2

    .line 0
    return-void
.end method

.method public blacklist unregisterForOtaspChange(Landroid/os/Handler;)V
    .registers 2

    .line 3420
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mOtaspRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public blacklist unregisterForPhysicalChannelConfig(Landroid/os/Handler;)V
    .registers 2

    .line 2950
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mPhysicalChannelConfigRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public greylist unregisterForPreciseCallStateChanged(Landroid/os/Handler;)V
    .registers 2

    .line 1008
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mPreciseCallStateRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public blacklist unregisterForPreferredNetworkTypeChanged(Landroid/os/Handler;)V
    .registers 2

    .line 2661
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mPreferredNetworkTypeRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public blacklist unregisterForRadioCapabilityChanged(Landroid/os/Handler;)V
    .registers 2

    .line 4575
    iget-object p1, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {p1, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForRadioCapabilityChanged(Landroid/os/Handler;)V

    return-void
.end method

.method public blacklist unregisterForRadioOffOrNotAvailable(Landroid/os/Handler;)V
    .registers 2

    .line 3684
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mRadioOffOrNotAvailableRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public blacklist unregisterForRedialConnectionChanged(Landroid/os/Handler;)V
    .registers 2

    .line 1047
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mRedialRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public blacklist unregisterForRedirectedNumberInfo(Landroid/os/Handler;)V
    .registers 2

    .line 0
    return-void
.end method

.method public blacklist unregisterForResendIncallMute(Landroid/os/Handler;)V
    .registers 2

    .line 1790
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {p0, p1}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForResendIncallMute(Landroid/os/Handler;)V

    return-void
.end method

.method public greylist unregisterForRingbackTone(Landroid/os/Handler;)V
    .registers 2

    .line 1757
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {p0, p1}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForRingbackTone(Landroid/os/Handler;)V

    return-void
.end method

.method public greylist unregisterForServiceStateChanged(Landroid/os/Handler;)V
    .registers 2

    .line 1735
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mServiceStateRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public blacklist unregisterForSignalInfo(Landroid/os/Handler;)V
    .registers 2

    .line 3487
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {p0, p1}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForSignalInfo(Landroid/os/Handler;)V

    return-void
.end method

.method public blacklist unregisterForSilentRedial(Landroid/os/Handler;)V
    .registers 2

    .line 0
    return-void
.end method

.method public greylist unregisterForSimRecordsLoaded(Landroid/os/Handler;)V
    .registers 2

    .line 0
    return-void
.end method

.method public blacklist unregisterForSubscriptionInfoReady(Landroid/os/Handler;)V
    .registers 2

    .line 0
    return-void
.end method

.method public blacklist unregisterForSuppServiceFailed(Landroid/os/Handler;)V
    .registers 2

    .line 1356
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mSuppServiceFailedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public blacklist unregisterForT53AudioControlInfo(Landroid/os/Handler;)V
    .registers 2

    .line 0
    return-void
.end method

.method public blacklist unregisterForT53ClirInfo(Landroid/os/Handler;)V
    .registers 2

    .line 0
    return-void
.end method

.method public blacklist unregisterForTtyModeReceived(Landroid/os/Handler;)V
    .registers 2

    .line 0
    return-void
.end method

.method public greylist unregisterForUnknownConnection(Landroid/os/Handler;)V
    .registers 2

    .line 1186
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mUnknownConnectionRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public blacklist unregisterForVideoCapabilityChanged(Landroid/os/Handler;)V
    .registers 2

    .line 1241
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mVideoCapabilityChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public blacklist unregisterForVolteSilentRedial(Landroid/os/Handler;)V
    .registers 2

    .line 0
    return-void
.end method

.method public greylist unsetOnEcbModeExitResponse(Landroid/os/Handler;)V
    .registers 2

    .line 0
    return-void
.end method

.method protected blacklist updateAllowedNetworkTypes(Landroid/os/Message;)V
    .registers 8

    .line 2610
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getRadioAccessFamily()I

    move-result v0

    if-nez v0, :cond_2d

    .line 2612
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mLogTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPreferredNetworkType: Abort, unknown RAF: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_2c

    .line 2616
    new-instance p0, Lcom/android/internal/telephony/CommandException;

    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    const/4 v0, 0x0

    .line 2617
    invoke-static {p1, v0, p0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 2618
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_2c
    return-void

    :cond_2d
    int-to-long v1, v0

    .line 2623
    invoke-direct {p0}, Lcom/android/internal/telephony/Phone;->getEffectiveAllowedNetworkTypes()J

    move-result-wide v3

    and-long/2addr v3, v1

    long-to-int v3, v3

    .line 2625
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setAllowedNetworkTypes: modemRafBitMask = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " ,modemRaf = "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2626
    invoke-static {v1, v2}, Landroid/telephony/TelephonyManager;->convertNetworkTypeBitmaskToString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ,filteredRafBitMask = "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " ,filteredRaf = "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-long v0, v3

    .line 2628
    invoke-static {v0, v1}, Landroid/telephony/TelephonyManager;->convertNetworkTypeBitmaskToString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2625
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/Phone;->logd(Ljava/lang/String;)V

    .line 2630
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, v3, p1}, Lcom/android/internal/telephony/CommandsInterface;->setAllowedNetworkTypesBitmap(ILandroid/os/Message;)V

    .line 2631
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mPreferredNetworkTypeRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants()V

    return-void
.end method

.method public blacklist updateCurrentCarrierInProvider()Z
    .registers 1

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist updateImsCallStatus(Ljava/util/List;Landroid/os/Message;)V
    .registers 3
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

    .line 5321
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {p0, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->updateImsCallStatus(Ljava/util/List;Landroid/os/Message;)V

    return-void
.end method

.method protected blacklist updateManualNetworkSelection(Lcom/android/internal/telephony/Phone$NetworkSelectMessage;)V
    .registers 2

    .line 1609
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mLogTag:Ljava/lang/String;

    const-string p1, "updateManualNetworkSelection() should be overridden"

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public blacklist updatePhoneObject(I)V
    .registers 2

    .line 0
    return-void
.end method

.method public blacklist updateUsageSetting()Z
    .registers 6

    .line 4521
    iget-boolean v0, p0, Lcom/android/internal/telephony/Phone;->mIsUsageSettingSupported:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 4523
    :cond_6
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v0

    .line 4524
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v2

    if-nez v2, :cond_11

    return v1

    .line 4526
    :cond_11
    iget v2, p0, Lcom/android/internal/telephony/Phone;->mPreferredUsageSetting:I

    .line 4528
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/Phone;->getResolvedUsageSetting(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/Phone;->mPreferredUsageSetting:I

    const/4 v3, -0x1

    if-ne v0, v3, :cond_22

    .line 4530
    const-string v0, "Usage Setting is Supported but Preferred Setting Unknown!"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/Phone;->loge(Ljava/lang/String;)V

    return v1

    :cond_22
    if-ne v0, v2, :cond_25

    return v1

    .line 4538
    :cond_25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mPreferredUsageSetting="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/internal/telephony/Phone;->mPreferredUsageSetting:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", lastPreferredUsageSetting="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mUsageSettingFromModem="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/telephony/Phone;->mUsageSettingFromModem:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4541
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/Phone;->logd(Ljava/lang/String;)V

    .line 4542
    iget-object v2, p0, Lcom/android/internal/telephony/Phone;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    .line 4545
    iget v0, p0, Lcom/android/internal/telephony/Phone;->mUsageSettingFromModem:I

    if-ne v0, v3, :cond_62

    .line 4546
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x3f

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->getUsageSetting(Landroid/os/Message;)V

    goto :goto_73

    .line 4548
    :cond_62
    iget v2, p0, Lcom/android/internal/telephony/Phone;->mPreferredUsageSetting:I

    if-eq v2, v0, :cond_73

    .line 4549
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v3, 0x40

    invoke-virtual {p0, v3, v2, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    iget p0, p0, Lcom/android/internal/telephony/Phone;->mPreferredUsageSetting:I

    invoke-interface {v0, v1, p0}, Lcom/android/internal/telephony/CommandsInterface;->setUsageSetting(Landroid/os/Message;I)V

    :cond_73
    :goto_73
    const/4 p0, 0x1

    return p0
.end method

.method public blacklist updateVoiceMail()V
    .registers 2

    .line 2051
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mLogTag:Ljava/lang/String;

    const-string v0, "updateVoiceMail() should be overridden"

    invoke-static {p0, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public blacklist useSsOverIms(Landroid/os/Message;)Z
    .registers 2

    .line 0
    const/4 p0, 0x0

    return p0
.end method
