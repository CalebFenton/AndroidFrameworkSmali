.class public Lcom/android/internal/telephony/ServiceStateTracker;
.super Landroid/os/Handler;
.source "ServiceStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/ServiceStateTracker$1;,
        Lcom/android/internal/telephony/ServiceStateTracker$2;,
        Lcom/android/internal/telephony/ServiceStateTracker$3;,
        Lcom/android/internal/telephony/ServiceStateTracker$CellInfoResult;,
        Lcom/android/internal/telephony/ServiceStateTracker$SstSubscriptionsChangedListener;
    }
.end annotation


# static fields
.field private static final synthetic -com-android-internal-telephony-CommandsInterface$RadioStateSwitchesValues:[I = null

.field private static final ACTION_RADIO_OFF:Ljava/lang/String; = "android.intent.action.ACTION_RADIO_OFF"

.field public static final CS_DISABLED:I = 0x3ec

.field public static final CS_EMERGENCY_ENABLED:I = 0x3ee

.field public static final CS_ENABLED:I = 0x3eb

.field public static final CS_NORMAL_ENABLED:I = 0x3ed

.field public static final CS_NOTIFICATION:I = 0x3e7

.field private static final DBG:Z = true

.field public static final DEFAULT_GPRS_CHECK_PERIOD_MILLIS:I = 0xea60

.field public static final DEFAULT_MNC:Ljava/lang/String; = "00"

.field protected static final EVENT_ALL_DATA_DISCONNECTED:I = 0x31

.field protected static final EVENT_CDMA_PRL_VERSION_CHANGED:I = 0x28

.field protected static final EVENT_CDMA_SUBSCRIPTION_SOURCE_CHANGED:I = 0x27

.field protected static final EVENT_CHANGE_IMS_STATE:I = 0x2d

.field protected static final EVENT_CHECK_REPORT_GPRS:I = 0x16

.field protected static final EVENT_ERI_FILE_LOADED:I = 0x24

.field protected static final EVENT_GET_CELL_INFO_LIST:I = 0x2b

.field protected static final EVENT_GET_LOC_DONE:I = 0xf

.field protected static final EVENT_GET_PREFERRED_NETWORK_TYPE:I = 0x13

.field protected static final EVENT_GET_SIGNAL_STRENGTH:I = 0x3

.field public static final EVENT_ICC_CHANGED:I = 0x2a

.field protected static final EVENT_IMS_CAPABILITY_CHANGED:I = 0x30

.field protected static final EVENT_IMS_STATE_CHANGED:I = 0x2e

.field protected static final EVENT_IMS_STATE_DONE:I = 0x2f

.field protected static final EVENT_LOCATION_UPDATES_ENABLED:I = 0x12

.field protected static final EVENT_NETWORK_STATE_CHANGED:I = 0x2

.field protected static final EVENT_NITZ_TIME:I = 0xb

.field protected static final EVENT_NV_READY:I = 0x23

.field protected static final EVENT_OTA_PROVISION_STATUS_CHANGE:I = 0x25

.field protected static final EVENT_PHONE_TYPE_SWITCHED:I = 0x32

.field protected static final EVENT_POLL_SIGNAL_STRENGTH:I = 0xa

.field protected static final EVENT_POLL_STATE_CDMA_SUBSCRIPTION:I = 0x22

.field protected static final EVENT_POLL_STATE_GPRS:I = 0x5

.field protected static final EVENT_POLL_STATE_NETWORK_SELECTION_MODE:I = 0xe

.field protected static final EVENT_POLL_STATE_OPERATOR:I = 0x6

.field protected static final EVENT_POLL_STATE_REGISTRATION:I = 0x4

.field protected static final EVENT_RADIO_AVAILABLE:I = 0xd

.field protected static final EVENT_RADIO_ON:I = 0x29

.field protected static final EVENT_RADIO_STATE_CHANGED:I = 0x1

.field protected static final EVENT_RESET_PREFERRED_NETWORK_TYPE:I = 0x15

.field protected static final EVENT_RESTRICTED_STATE_CHANGED:I = 0x17

.field protected static final EVENT_RUIM_READY:I = 0x1a

.field protected static final EVENT_RUIM_RECORDS_LOADED:I = 0x1b

.field protected static final EVENT_SET_PREFERRED_NETWORK_TYPE:I = 0x14

.field protected static final EVENT_SET_RADIO_POWER_OFF:I = 0x26

.field protected static final EVENT_SIGNAL_STRENGTH_UPDATE:I = 0xc

.field protected static final EVENT_SIM_READY:I = 0x11

.field protected static final EVENT_SIM_RECORDS_LOADED:I = 0x10

.field protected static final EVENT_UNSOL_CELL_INFO_LIST:I = 0x2c

.field protected static final GMT_COUNTRY_CODES:[Ljava/lang/String;

.field public static final INVALID_MCC:Ljava/lang/String; = "000"

.field private static final LAST_CELL_INFO_LIST_MAX_AGE_MS:J = 0x7d0L

.field private static final LOG_TAG:Ljava/lang/String; = "SST"

.field private static final MAX_NITZ_YEAR:I = 0x7f5

.field public static final MS_PER_HOUR:I = 0x36ee80

.field public static final NITZ_UPDATE_DIFF_DEFAULT:I = 0x7d0

.field public static final NITZ_UPDATE_SPACING_DEFAULT:I = 0x927c0

.field public static final OTASP_NEEDED:I = 0x2

.field public static final OTASP_NOT_NEEDED:I = 0x3

.field public static final OTASP_SIM_UNPROVISIONED:I = 0x5

.field public static final OTASP_UNINITIALIZED:I = 0x0

.field public static final OTASP_UNKNOWN:I = 0x1

.field private static final POLL_PERIOD_MILLIS:I = 0x4e20

.field private static final PROP_FORCE_ROAMING:Ljava/lang/String; = "telephony.test.forceRoaming"

.field public static final PS_DISABLED:I = 0x3ea

.field public static final PS_ENABLED:I = 0x3e9

.field public static final PS_NOTIFICATION:I = 0x378

.field protected static final REGISTRATION_DENIED_AUTH:Ljava/lang/String; = "Authentication Failure"

.field protected static final REGISTRATION_DENIED_GEN:Ljava/lang/String; = "General"

.field protected static final TIMEZONE_PROPERTY:Ljava/lang/String; = "persist.sys.timezone"

.field public static final UNACTIVATED_MIN2_VALUE:Ljava/lang/String; = "000000"

.field public static final UNACTIVATED_MIN_VALUE:Ljava/lang/String; = "1111110111"

.field private static final VDBG:Z = false

.field public static final WAKELOCK_TAG:Ljava/lang/String; = "ServiceStateTracker"


# instance fields
.field private mAlarmSwitch:Z

.field private final mAttachLog:Landroid/util/LocalLog;

.field protected mAttachedRegistrants:Landroid/os/RegistrantList;

.field private mAutoTimeObserver:Landroid/database/ContentObserver;

.field private mAutoTimeZoneObserver:Landroid/database/ContentObserver;

.field private mCdmaForSubscriptionInfoReadyRegistrants:Landroid/os/RegistrantList;

.field private mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

.field public mCellLoc:Landroid/telephony/CellLocation;

.field private mCi:Lcom/android/internal/telephony/CommandsInterface;

.field private mCr:Landroid/content/ContentResolver;

.field private mCurDataSpn:Ljava/lang/String;

.field private mCurPlmn:Ljava/lang/String;

.field private mCurShowPlmn:Z

.field private mCurShowSpn:Z

.field private mCurSpn:Ljava/lang/String;

.field private mCurrentCarrier:Ljava/lang/String;

.field private mCurrentOtaspMode:I

.field private mDataRegStateOrRatChangedRegistrants:Landroid/os/RegistrantList;

.field private mDataRoaming:Z

.field private mDataRoamingOffRegistrants:Landroid/os/RegistrantList;

.field private mDataRoamingOnRegistrants:Landroid/os/RegistrantList;

.field private mDefaultRoamingIndicator:I

.field private mDesiredPowerState:Z

.field protected mDetachedRegistrants:Landroid/os/RegistrantList;

.field private mDeviceShuttingDown:Z

.field private mDontPollSignalStrength:Z

.field private mEmergencyOnly:Z

.field private mGotCountryCode:Z

.field private mGsmRoaming:Z

.field private mHbpcdUtils:Lcom/android/internal/telephony/HbpcdUtils;

.field private mHomeNetworkId:[I

.field private mHomeSystemId:[I

.field private mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

.field private mImsRegistered:Z

.field private mImsRegistrationOnOff:Z

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIsEriTextLoaded:Z

.field private mIsInPrl:Z

.field private mIsMinInfoReady:Z

.field private mIsSubscriptionFromRuim:Z

.field private mLastCellInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/telephony/CellInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mLastCellInfoListTime:J

.field private mLastSignalStrength:Landroid/telephony/SignalStrength;

.field private mMaxDataCalls:I

.field private mMdn:Ljava/lang/String;

.field private mMin:Ljava/lang/String;

.field private mNeedFixZoneAfterNitz:Z

.field private mNetworkAttachedRegistrants:Landroid/os/RegistrantList;

.field private mNewCellLoc:Landroid/telephony/CellLocation;

.field private mNewMaxDataCalls:I

.field private mNewReasonDataDenied:I

.field private mNewSS:Landroid/telephony/ServiceState;

.field private mNitzUpdateDiff:I

.field private mNitzUpdateSpacing:I

.field private mNitzUpdatedTime:Z

.field private mNotification:Landroid/app/Notification;

.field private final mOnSubscriptionsChangedListener:Lcom/android/internal/telephony/ServiceStateTracker$SstSubscriptionsChangedListener;

.field private mPendingRadioPowerOffAfterDataOff:Z

.field private mPendingRadioPowerOffAfterDataOffTag:I

.field private mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

.field private final mPhoneTypeLog:Landroid/util/LocalLog;

.field private mPollingContext:[I

.field private mPowerOffDelayNeed:Z

.field private mPreferredNetworkType:I

.field private mPrlVersion:Ljava/lang/String;

.field private mPsRestrictDisabledRegistrants:Landroid/os/RegistrantList;

.field private mPsRestrictEnabledRegistrants:Landroid/os/RegistrantList;

.field private mRadioDisabledByCarrier:Z

.field private mRadioOffIntent:Landroid/app/PendingIntent;

.field private final mRatLog:Landroid/util/LocalLog;

.field private final mRatRatcheter:Lcom/android/internal/telephony/RatRatcheter;

.field private mReasonDataDenied:I

.field private mRegistrationDeniedReason:Ljava/lang/String;

.field private mRegistrationState:I

.field private mReportedGprsNoReg:Z

.field public mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

.field private mRoamingIndicator:I

.field private final mRoamingLog:Landroid/util/LocalLog;

.field public mSS:Landroid/telephony/ServiceState;

.field private mSavedAtTime:J

.field private mSavedTime:J

.field private mSavedTimeZone:Ljava/lang/String;

.field private mSignalStrength:Landroid/telephony/SignalStrength;

.field private mSpnUpdatePending:Z

.field private mStartedGprsRegCheck:Z

.field private mSubId:I

.field private mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

.field private mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

.field private mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

.field private mVoiceCapable:Z

.field private mVoiceRoamingOffRegistrants:Landroid/os/RegistrantList;

.field private mVoiceRoamingOnRegistrants:Landroid/os/RegistrantList;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mWantContinuousLocationUpdates:Z

.field private mWantSingleLocationUpdate:Z

.field private mZoneDst:Z

.field private mZoneOffset:I

.field private mZoneTime:J


# direct methods
.method static synthetic -get0(Lcom/android/internal/telephony/ServiceStateTracker;)Ljava/lang/String;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCurPlmn:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lcom/android/internal/telephony/ServiceStateTracker;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCurShowPlmn:Z

    #@2
    return v0
.end method

.method static synthetic -get2(Lcom/android/internal/telephony/ServiceStateTracker;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCurShowSpn:Z

    #@2
    return v0
.end method

.method static synthetic -get3(Lcom/android/internal/telephony/ServiceStateTracker;)Ljava/lang/String;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCurSpn:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method static synthetic -get4(Lcom/android/internal/telephony/ServiceStateTracker;)Lcom/android/internal/telephony/GsmCdmaPhone;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@2
    return-object v0
.end method

.method static synthetic -get5(Lcom/android/internal/telephony/ServiceStateTracker;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSpnUpdatePending:Z

    #@2
    return v0
.end method

.method static synthetic -get6(Lcom/android/internal/telephony/ServiceStateTracker;)Lcom/android/internal/telephony/SubscriptionController;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    #@2
    return-object v0
.end method

.method private static synthetic -getcom-android-internal-telephony-CommandsInterface$RadioStateSwitchesValues()[I
    .locals 3

    #@0
    sget-object v0, Lcom/android/internal/telephony/ServiceStateTracker;->-com-android-internal-telephony-CommandsInterface$RadioStateSwitchesValues:[I

    #@2
    if-eqz v0, :cond_0

    #@4
    sget-object v0, Lcom/android/internal/telephony/ServiceStateTracker;->-com-android-internal-telephony-CommandsInterface$RadioStateSwitchesValues:[I

    #@6
    return-object v0

    #@7
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->values()[Lcom/android/internal/telephony/CommandsInterface$RadioState;

    #@a
    move-result-object v0

    #@b
    array-length v0, v0

    #@c
    new-array v0, v0, [I

    #@e
    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_OFF:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    #@10
    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->ordinal()I

    #@13
    move-result v1

    #@14
    const/4 v2, 0x1

    #@15
    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    #@17
    :goto_0
    :try_start_1
    sget-object v1, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_ON:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    #@19
    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->ordinal()I

    #@1c
    move-result v1

    #@1d
    const/4 v2, 0x3

    #@1e
    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    #@20
    :goto_1
    :try_start_2
    sget-object v1, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_UNAVAILABLE:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    #@22
    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->ordinal()I

    #@25
    move-result v1

    #@26
    const/4 v2, 0x2

    #@27
    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    #@29
    :goto_2
    sput-object v0, Lcom/android/internal/telephony/ServiceStateTracker;->-com-android-internal-telephony-CommandsInterface$RadioStateSwitchesValues:[I

    #@2b
    return-object v0

    #@2c
    :catch_0
    move-exception v1

    #@2d
    goto :goto_2

    #@2e
    :catch_1
    move-exception v1

    #@2f
    goto :goto_1

    #@30
    :catch_2
    move-exception v1

    #@31
    goto :goto_0
.end method

.method static synthetic -set0(Lcom/android/internal/telephony/ServiceStateTracker;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mAlarmSwitch:Z

    #@2
    return p1
.end method

.method static synthetic -set1(Lcom/android/internal/telephony/ServiceStateTracker;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSpnUpdatePending:Z

    #@2
    return p1
.end method

.method static synthetic -wrap0(Lcom/android/internal/telephony/ServiceStateTracker;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->revertToNitzTimeZone()V

    #@3
    return-void
.end method

.method static synthetic -wrap1(Lcom/android/internal/telephony/ServiceStateTracker;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->revertToNitzTime()V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    .line 223
    const/16 v0, 0x14

    #@2
    new-array v0, v0, [Ljava/lang/String;

    #@4
    .line 224
    const-string/jumbo v1, "bf"

    #@7
    const/4 v2, 0x0

    #@8
    aput-object v1, v0, v2

    #@a
    .line 225
    const-string/jumbo v1, "ci"

    #@d
    const/4 v2, 0x1

    #@e
    aput-object v1, v0, v2

    #@10
    .line 226
    const-string/jumbo v1, "eh"

    #@13
    const/4 v2, 0x2

    #@14
    aput-object v1, v0, v2

    #@16
    .line 227
    const-string/jumbo v1, "fo"

    #@19
    const/4 v2, 0x3

    #@1a
    aput-object v1, v0, v2

    #@1c
    .line 228
    const-string/jumbo v1, "gb"

    #@1f
    const/4 v2, 0x4

    #@20
    aput-object v1, v0, v2

    #@22
    .line 229
    const-string/jumbo v1, "gh"

    #@25
    const/4 v2, 0x5

    #@26
    aput-object v1, v0, v2

    #@28
    .line 230
    const-string/jumbo v1, "gm"

    #@2b
    const/4 v2, 0x6

    #@2c
    aput-object v1, v0, v2

    #@2e
    .line 231
    const-string/jumbo v1, "gn"

    #@31
    const/4 v2, 0x7

    #@32
    aput-object v1, v0, v2

    #@34
    .line 232
    const-string/jumbo v1, "gw"

    #@37
    const/16 v2, 0x8

    #@39
    aput-object v1, v0, v2

    #@3b
    .line 233
    const-string/jumbo v1, "ie"

    #@3e
    const/16 v2, 0x9

    #@40
    aput-object v1, v0, v2

    #@42
    .line 234
    const-string/jumbo v1, "lr"

    #@45
    const/16 v2, 0xa

    #@47
    aput-object v1, v0, v2

    #@49
    .line 235
    const-string/jumbo v1, "is"

    #@4c
    const/16 v2, 0xb

    #@4e
    aput-object v1, v0, v2

    #@50
    .line 236
    const-string/jumbo v1, "ma"

    #@53
    const/16 v2, 0xc

    #@55
    aput-object v1, v0, v2

    #@57
    .line 237
    const-string/jumbo v1, "ml"

    #@5a
    const/16 v2, 0xd

    #@5c
    aput-object v1, v0, v2

    #@5e
    .line 238
    const-string/jumbo v1, "mr"

    #@61
    const/16 v2, 0xe

    #@63
    aput-object v1, v0, v2

    #@65
    .line 239
    const-string/jumbo v1, "pt"

    #@68
    const/16 v2, 0xf

    #@6a
    aput-object v1, v0, v2

    #@6c
    .line 240
    const-string/jumbo v1, "sl"

    #@6f
    const/16 v2, 0x10

    #@71
    aput-object v1, v0, v2

    #@73
    .line 241
    const-string/jumbo v1, "sn"

    #@76
    const/16 v2, 0x11

    #@78
    aput-object v1, v0, v2

    #@7a
    .line 242
    const-string/jumbo v1, "st"

    #@7d
    const/16 v2, 0x12

    #@7f
    aput-object v1, v0, v2

    #@81
    .line 243
    const-string/jumbo v1, "tg"

    #@84
    const/16 v2, 0x13

    #@86
    aput-object v1, v0, v2

    #@88
    .line 223
    sput-object v0, Lcom/android/internal/telephony/ServiceStateTracker;->GMT_COUNTRY_CODES:[Ljava/lang/String;

    #@8a
    .line 99
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/GsmCdmaPhone;Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 11
    .param p1, "phone"    # Lcom/android/internal/telephony/GsmCdmaPhone;
    .param p2, "ci"    # Lcom/android/internal/telephony/CommandsInterface;

    #@0
    .prologue
    const/16 v8, 0xa

    #@2
    const/4 v10, -0x1

    #@3
    const/4 v6, 0x1

    #@4
    const/4 v9, 0x0

    #@5
    const/4 v7, 0x0

    #@6
    .line 496
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    #@9
    .line 107
    iput-object v9, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    #@b
    .line 108
    iput-object v9, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@d
    .line 109
    iput-object v9, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    #@f
    .line 118
    iput-object v9, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mLastCellInfoList:Ljava/util/List;

    #@11
    .line 148
    iput-boolean v7, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDontPollSignalStrength:Z

    #@13
    .line 150
    new-instance v5, Landroid/os/RegistrantList;

    #@15
    invoke-direct {v5}, Landroid/os/RegistrantList;-><init>()V

    #@18
    iput-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mVoiceRoamingOnRegistrants:Landroid/os/RegistrantList;

    #@1a
    .line 151
    new-instance v5, Landroid/os/RegistrantList;

    #@1c
    invoke-direct {v5}, Landroid/os/RegistrantList;-><init>()V

    #@1f
    iput-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mVoiceRoamingOffRegistrants:Landroid/os/RegistrantList;

    #@21
    .line 152
    new-instance v5, Landroid/os/RegistrantList;

    #@23
    invoke-direct {v5}, Landroid/os/RegistrantList;-><init>()V

    #@26
    iput-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDataRoamingOnRegistrants:Landroid/os/RegistrantList;

    #@28
    .line 153
    new-instance v5, Landroid/os/RegistrantList;

    #@2a
    invoke-direct {v5}, Landroid/os/RegistrantList;-><init>()V

    #@2d
    iput-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDataRoamingOffRegistrants:Landroid/os/RegistrantList;

    #@2f
    .line 154
    new-instance v5, Landroid/os/RegistrantList;

    #@31
    invoke-direct {v5}, Landroid/os/RegistrantList;-><init>()V

    #@34
    iput-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mAttachedRegistrants:Landroid/os/RegistrantList;

    #@36
    .line 155
    new-instance v5, Landroid/os/RegistrantList;

    #@38
    invoke-direct {v5}, Landroid/os/RegistrantList;-><init>()V

    #@3b
    iput-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDetachedRegistrants:Landroid/os/RegistrantList;

    #@3d
    .line 156
    new-instance v5, Landroid/os/RegistrantList;

    #@3f
    invoke-direct {v5}, Landroid/os/RegistrantList;-><init>()V

    #@42
    iput-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDataRegStateOrRatChangedRegistrants:Landroid/os/RegistrantList;

    #@44
    .line 157
    new-instance v5, Landroid/os/RegistrantList;

    #@46
    invoke-direct {v5}, Landroid/os/RegistrantList;-><init>()V

    #@49
    iput-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNetworkAttachedRegistrants:Landroid/os/RegistrantList;

    #@4b
    .line 158
    new-instance v5, Landroid/os/RegistrantList;

    #@4d
    invoke-direct {v5}, Landroid/os/RegistrantList;-><init>()V

    #@50
    iput-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPsRestrictEnabledRegistrants:Landroid/os/RegistrantList;

    #@52
    .line 159
    new-instance v5, Landroid/os/RegistrantList;

    #@54
    invoke-direct {v5}, Landroid/os/RegistrantList;-><init>()V

    #@57
    iput-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPsRestrictDisabledRegistrants:Landroid/os/RegistrantList;

    #@59
    .line 162
    iput-boolean v7, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPendingRadioPowerOffAfterDataOff:Z

    #@5b
    .line 163
    iput v7, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPendingRadioPowerOffAfterDataOffTag:I

    #@5d
    .line 255
    iput-boolean v7, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mImsRegistrationOnOff:Z

    #@5f
    .line 256
    iput-boolean v7, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mAlarmSwitch:Z

    #@61
    .line 258
    iput-boolean v7, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRadioDisabledByCarrier:Z

    #@63
    .line 259
    iput-object v9, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRadioOffIntent:Landroid/app/PendingIntent;

    #@65
    .line 261
    iput-boolean v6, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPowerOffDelayNeed:Z

    #@67
    .line 262
    iput-boolean v7, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDeviceShuttingDown:Z

    #@69
    .line 264
    iput-boolean v7, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSpnUpdatePending:Z

    #@6b
    .line 265
    iput-object v9, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCurSpn:Ljava/lang/String;

    #@6d
    .line 266
    iput-object v9, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCurDataSpn:Ljava/lang/String;

    #@6f
    .line 267
    iput-object v9, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCurPlmn:Ljava/lang/String;

    #@71
    .line 268
    iput-boolean v7, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCurShowPlmn:Z

    #@73
    .line 269
    iput-boolean v7, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCurShowSpn:Z

    #@75
    .line 270
    iput v10, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSubId:I

    #@77
    .line 272
    iput-boolean v7, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mImsRegistered:Z

    #@79
    .line 277
    new-instance v5, Lcom/android/internal/telephony/ServiceStateTracker$SstSubscriptionsChangedListener;

    #@7b
    invoke-direct {v5, p0, v9}, Lcom/android/internal/telephony/ServiceStateTracker$SstSubscriptionsChangedListener;-><init>(Lcom/android/internal/telephony/ServiceStateTracker;Lcom/android/internal/telephony/ServiceStateTracker$SstSubscriptionsChangedListener;)V

    #@7e
    .line 276
    iput-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mOnSubscriptionsChangedListener:Lcom/android/internal/telephony/ServiceStateTracker$SstSubscriptionsChangedListener;

    #@80
    .line 282
    new-instance v5, Landroid/util/LocalLog;

    #@82
    invoke-direct {v5, v8}, Landroid/util/LocalLog;-><init>(I)V

    #@85
    iput-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRoamingLog:Landroid/util/LocalLog;

    #@87
    .line 283
    new-instance v5, Landroid/util/LocalLog;

    #@89
    invoke-direct {v5, v8}, Landroid/util/LocalLog;-><init>(I)V

    #@8c
    iput-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mAttachLog:Landroid/util/LocalLog;

    #@8e
    .line 284
    new-instance v5, Landroid/util/LocalLog;

    #@90
    invoke-direct {v5, v8}, Landroid/util/LocalLog;-><init>(I)V

    #@93
    iput-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhoneTypeLog:Landroid/util/LocalLog;

    #@95
    .line 285
    new-instance v5, Landroid/util/LocalLog;

    #@97
    const/16 v8, 0x14

    #@99
    invoke-direct {v5, v8}, Landroid/util/LocalLog;-><init>(I)V

    #@9c
    iput-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRatLog:Landroid/util/LocalLog;

    #@9e
    .line 371
    iput-boolean v7, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNeedFixZoneAfterNitz:Z

    #@a0
    .line 375
    iput-boolean v7, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mGotCountryCode:Z

    #@a2
    .line 383
    new-instance v5, Lcom/android/internal/telephony/ServiceStateTracker$1;

    #@a4
    new-instance v8, Landroid/os/Handler;

    #@a6
    invoke-direct {v8}, Landroid/os/Handler;-><init>()V

    #@a9
    invoke-direct {v5, p0, v8}, Lcom/android/internal/telephony/ServiceStateTracker$1;-><init>(Lcom/android/internal/telephony/ServiceStateTracker;Landroid/os/Handler;)V

    #@ac
    iput-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mAutoTimeObserver:Landroid/database/ContentObserver;

    #@ae
    .line 391
    new-instance v5, Lcom/android/internal/telephony/ServiceStateTracker$2;

    #@b0
    new-instance v8, Landroid/os/Handler;

    #@b2
    invoke-direct {v8}, Landroid/os/Handler;-><init>()V

    #@b5
    invoke-direct {v5, p0, v8}, Lcom/android/internal/telephony/ServiceStateTracker$2;-><init>(Lcom/android/internal/telephony/ServiceStateTracker;Landroid/os/Handler;)V

    #@b8
    iput-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mAutoTimeZoneObserver:Landroid/database/ContentObserver;

    #@ba
    .line 401
    iput v6, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mMaxDataCalls:I

    #@bc
    .line 402
    iput v6, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewMaxDataCalls:I

    #@be
    .line 403
    iput v10, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mReasonDataDenied:I

    #@c0
    .line 404
    iput v10, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewReasonDataDenied:I

    #@c2
    .line 409
    iput-boolean v7, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mGsmRoaming:Z

    #@c4
    .line 414
    iput-boolean v7, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDataRoaming:Z

    #@c6
    .line 418
    iput-boolean v7, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mEmergencyOnly:Z

    #@c8
    .line 420
    iput-boolean v7, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNitzUpdatedTime:Z

    #@ca
    .line 439
    new-instance v5, Lcom/android/internal/telephony/ServiceStateTracker$3;

    #@cc
    invoke-direct {v5, p0}, Lcom/android/internal/telephony/ServiceStateTracker$3;-><init>(Lcom/android/internal/telephony/ServiceStateTracker;)V

    #@cf
    iput-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    #@d1
    .line 463
    iput v7, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCurrentOtaspMode:I

    #@d3
    .line 466
    const-string/jumbo v5, "ro.nitz_update_spacing"

    #@d6
    .line 467
    const v8, 0x927c0

    #@d9
    .line 466
    invoke-static {v5, v8}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    #@dc
    move-result v5

    #@dd
    iput v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNitzUpdateSpacing:I

    #@df
    .line 470
    const-string/jumbo v5, "ro.nitz_update_diff"

    #@e2
    .line 471
    const/16 v8, 0x7d0

    #@e4
    .line 470
    invoke-static {v5, v8}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    #@e7
    move-result v5

    #@e8
    iput v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNitzUpdateDiff:I

    #@ea
    .line 478
    iput v10, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRegistrationState:I

    #@ec
    .line 479
    new-instance v5, Landroid/os/RegistrantList;

    #@ee
    invoke-direct {v5}, Landroid/os/RegistrantList;-><init>()V

    #@f1
    iput-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCdmaForSubscriptionInfoReadyRegistrants:Landroid/os/RegistrantList;

    #@f3
    .line 481
    iput-object v9, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mHomeSystemId:[I

    #@f5
    .line 482
    iput-object v9, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mHomeNetworkId:[I

    #@f7
    .line 485
    iput-boolean v7, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIsMinInfoReady:Z

    #@f9
    .line 486
    iput-boolean v7, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIsEriTextLoaded:Z

    #@fb
    .line 487
    iput-boolean v7, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIsSubscriptionFromRuim:Z

    #@fd
    .line 491
    iput-object v9, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mHbpcdUtils:Lcom/android/internal/telephony/HbpcdUtils;

    #@ff
    .line 494
    iput-object v9, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCurrentCarrier:Ljava/lang/String;

    #@101
    .line 656
    iput-object v9, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mLastSignalStrength:Landroid/telephony/SignalStrength;

    #@103
    .line 497
    iput-object p1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@105
    .line 498
    iput-object p2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@107
    .line 500
    new-instance v5, Lcom/android/internal/telephony/RatRatcheter;

    #@109
    iget-object v8, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@10b
    invoke-direct {v5, v8}, Lcom/android/internal/telephony/RatRatcheter;-><init>(Lcom/android/internal/telephony/Phone;)V

    #@10e
    iput-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRatRatcheter:Lcom/android/internal/telephony/RatRatcheter;

    #@110
    .line 501
    iget-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@112
    invoke-virtual {v5}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    #@115
    move-result-object v5

    #@116
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@119
    move-result-object v5

    #@11a
    .line 502
    const v8, 0x112005a

    #@11d
    .line 501
    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@120
    move-result v5

    #@121
    iput-boolean v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mVoiceCapable:Z

    #@123
    .line 503
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    #@126
    move-result-object v5

    #@127
    iput-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    #@129
    .line 505
    iget-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    #@12b
    const/16 v8, 0x2a

    #@12d
    invoke-virtual {v5, p0, v8, v9}, Lcom/android/internal/telephony/uicc/UiccController;->registerForIccChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    #@130
    .line 506
    iget-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@132
    const/16 v8, 0xc

    #@134
    invoke-interface {v5, p0, v8, v9}, Lcom/android/internal/telephony/CommandsInterface;->setOnSignalStrengthUpdate(Landroid/os/Handler;ILjava/lang/Object;)V

    #@137
    .line 507
    iget-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@139
    const/16 v8, 0x2c

    #@13b
    invoke-interface {v5, p0, v8, v9}, Lcom/android/internal/telephony/CommandsInterface;->registerForCellInfoList(Landroid/os/Handler;ILjava/lang/Object;)V

    #@13e
    .line 509
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    #@141
    move-result-object v5

    #@142
    iput-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    #@144
    .line 510
    invoke-virtual {p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    #@147
    move-result-object v5

    #@148
    invoke-static {v5}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    #@14b
    move-result-object v5

    #@14c
    iput-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    #@14e
    .line 511
    iget-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    #@150
    .line 512
    iget-object v8, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mOnSubscriptionsChangedListener:Lcom/android/internal/telephony/ServiceStateTracker$SstSubscriptionsChangedListener;

    #@152
    .line 511
    invoke-virtual {v5, v8}, Landroid/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    #@155
    .line 514
    iget-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@157
    const/16 v8, 0x2e

    #@159
    invoke-interface {v5, p0, v8, v9}, Lcom/android/internal/telephony/CommandsInterface;->registerForImsNetworkStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    #@15c
    .line 517
    invoke-virtual {p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    #@15f
    move-result-object v5

    #@160
    const-string/jumbo v8, "power"

    #@163
    invoke-virtual {v5, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@166
    move-result-object v4

    #@167
    check-cast v4, Landroid/os/PowerManager;

    #@169
    .line 518
    .local v4, "powerManager":Landroid/os/PowerManager;
    const-string/jumbo v5, "ServiceStateTracker"

    #@16c
    invoke-virtual {v4, v6, v5}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    #@16f
    move-result-object v5

    #@170
    iput-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@172
    .line 520
    iget-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@174
    invoke-interface {v5, p0, v6, v9}, Lcom/android/internal/telephony/CommandsInterface;->registerForRadioStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    #@177
    .line 521
    iget-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@179
    const/4 v8, 0x2

    #@17a
    invoke-interface {v5, p0, v8, v9}, Lcom/android/internal/telephony/CommandsInterface;->registerForVoiceNetworkStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    #@17d
    .line 522
    iget-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@17f
    const/16 v8, 0xb

    #@181
    invoke-interface {v5, p0, v8, v9}, Lcom/android/internal/telephony/CommandsInterface;->setOnNITZTime(Landroid/os/Handler;ILjava/lang/Object;)V

    #@184
    .line 524
    invoke-virtual {p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    #@187
    move-result-object v5

    #@188
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@18b
    move-result-object v5

    #@18c
    iput-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCr:Landroid/content/ContentResolver;

    #@18e
    .line 526
    iget-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCr:Landroid/content/ContentResolver;

    #@190
    const-string/jumbo v8, "airplane_mode_on"

    #@193
    invoke-static {v5, v8, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@196
    move-result v0

    #@197
    .line 527
    .local v0, "airplaneMode":I
    iget-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCr:Landroid/content/ContentResolver;

    #@199
    .line 528
    const-string/jumbo v8, "enable_cellular_on_boot"

    #@19c
    .line 527
    invoke-static {v5, v8, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@19f
    move-result v2

    #@1a0
    .line 529
    .local v2, "enableCellularOnBoot":I
    if-lez v2, :cond_0

    #@1a2
    if-gtz v0, :cond_0

    #@1a4
    move v5, v6

    #@1a5
    :goto_0
    iput-boolean v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDesiredPowerState:Z

    #@1a7
    .line 531
    iget-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCr:Landroid/content/ContentResolver;

    #@1a9
    .line 532
    const-string/jumbo v8, "auto_time"

    #@1ac
    invoke-static {v8}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    #@1af
    move-result-object v8

    #@1b0
    .line 533
    iget-object v9, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mAutoTimeObserver:Landroid/database/ContentObserver;

    #@1b2
    .line 531
    invoke-virtual {v5, v8, v6, v9}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    #@1b5
    .line 534
    iget-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCr:Landroid/content/ContentResolver;

    #@1b7
    .line 535
    const-string/jumbo v8, "auto_time_zone"

    #@1ba
    invoke-static {v8}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    #@1bd
    move-result-object v8

    #@1be
    .line 536
    iget-object v9, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mAutoTimeZoneObserver:Landroid/database/ContentObserver;

    #@1c0
    .line 534
    invoke-virtual {v5, v8, v6, v9}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    #@1c3
    .line 537
    invoke-direct {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->setSignalStrengthDefaultValues()V

    #@1c6
    .line 540
    iget-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@1c8
    invoke-virtual {v5}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    #@1cb
    move-result-object v1

    #@1cc
    .line 541
    .local v1, "context":Landroid/content/Context;
    new-instance v3, Landroid/content/IntentFilter;

    #@1ce
    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    #@1d1
    .line 542
    .local v3, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v5, "android.intent.action.LOCALE_CHANGED"

    #@1d4
    invoke-virtual {v3, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@1d7
    .line 543
    iget-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    #@1d9
    invoke-virtual {v1, v5, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    #@1dc
    .line 544
    new-instance v3, Landroid/content/IntentFilter;

    #@1de
    .end local v3    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    #@1e1
    .line 545
    .restart local v3    # "filter":Landroid/content/IntentFilter;
    const-string/jumbo v5, "android.intent.action.ACTION_RADIO_OFF"

    #@1e4
    invoke-virtual {v3, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@1e7
    .line 546
    iget-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    #@1e9
    invoke-virtual {v1, v5, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    #@1ec
    .line 548
    iget-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@1ee
    invoke-virtual {v5, v7}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifyOtaspChanged(I)V

    #@1f1
    .line 550
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->updatePhoneType()V

    #@1f4
    .line 496
    return-void

    #@1f5
    .end local v1    # "context":Landroid/content/Context;
    .end local v3    # "filter":Landroid/content/IntentFilter;
    :cond_0
    move v5, v7

    #@1f6
    .line 529
    goto :goto_0
.end method

.method private currentMccEqualsSimMcc(Landroid/telephony/ServiceState;)Z
    .locals 7
    .param p1, "s"    # Landroid/telephony/ServiceState;

    #@0
    .prologue
    .line 3571
    iget-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@2
    invoke-virtual {v4}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    #@5
    move-result-object v4

    #@6
    .line 3572
    const-string/jumbo v5, "phone"

    #@9
    .line 3571
    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@c
    move-result-object v4

    #@d
    check-cast v4, Landroid/telephony/TelephonyManager;

    #@f
    .line 3573
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getPhoneId()I

    #@12
    move-result v5

    #@13
    .line 3571
    invoke-virtual {v4, v5}, Landroid/telephony/TelephonyManager;->getSimOperatorNumericForPhone(I)Ljava/lang/String;

    #@16
    move-result-object v3

    #@17
    .line 3574
    .local v3, "simNumeric":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    #@1a
    move-result-object v2

    #@1b
    .line 3575
    .local v2, "operatorNumeric":Ljava/lang/String;
    const/4 v1, 0x1

    #@1c
    .line 3578
    .local v1, "equalsMcc":Z
    const/4 v4, 0x0

    #@1d
    const/4 v5, 0x3

    #@1e
    :try_start_0
    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@21
    move-result-object v4

    #@22
    .line 3579
    const/4 v5, 0x0

    #@23
    const/4 v6, 0x3

    #@24
    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@27
    move-result-object v5

    #@28
    .line 3578
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@2b
    move-result v1

    #@2c
    .line 3582
    .end local v1    # "equalsMcc":Z
    :goto_0
    return v1

    #@2d
    .line 3580
    .restart local v1    # "equalsMcc":Z
    :catch_0
    move-exception v0

    #@2e
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method private findTimeZone(IZJ)Ljava/util/TimeZone;
    .locals 9
    .param p1, "offset"    # I
    .param p2, "dst"    # Z
    .param p3, "when"    # J

    #@0
    .prologue
    .line 3487
    move v2, p1

    #@1
    .line 3488
    .local v2, "rawOffset":I
    if-eqz p2, :cond_0

    #@3
    .line 3489
    const v6, 0x36ee80

    #@6
    sub-int v2, p1, v6

    #@8
    .line 3491
    :cond_0
    invoke-static {v2}, Ljava/util/TimeZone;->getAvailableIDs(I)[Ljava/lang/String;

    #@b
    move-result-object v5

    #@c
    .line 3492
    .local v5, "zones":[Ljava/lang/String;
    const/4 v1, 0x0

    #@d
    .line 3493
    .local v1, "guess":Ljava/util/TimeZone;
    new-instance v0, Ljava/util/Date;

    #@f
    invoke-direct {v0, p3, p4}, Ljava/util/Date;-><init>(J)V

    #@12
    .line 3494
    .local v0, "d":Ljava/util/Date;
    const/4 v6, 0x0

    #@13
    array-length v7, v5

    #@14
    :goto_0
    if-ge v6, v7, :cond_1

    #@16
    aget-object v4, v5, v6

    #@18
    .line 3495
    .local v4, "zone":Ljava/lang/String;
    invoke-static {v4}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    #@1b
    move-result-object v3

    #@1c
    .line 3496
    .local v3, "tz":Ljava/util/TimeZone;
    invoke-virtual {v3, p3, p4}, Ljava/util/TimeZone;->getOffset(J)I

    #@1f
    move-result v8

    #@20
    if-ne v8, p1, :cond_2

    #@22
    .line 3497
    invoke-virtual {v3, v0}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    #@25
    move-result v8

    #@26
    if-ne v8, p2, :cond_2

    #@28
    .line 3498
    move-object v1, v3

    #@29
    .line 3503
    .end local v1    # "guess":Ljava/util/TimeZone;
    .end local v3    # "tz":Ljava/util/TimeZone;
    .end local v4    # "zone":Ljava/lang/String;
    :cond_1
    return-object v1

    #@2a
    .line 3494
    .restart local v1    # "guess":Ljava/util/TimeZone;
    .restart local v3    # "tz":Ljava/util/TimeZone;
    .restart local v4    # "zone":Ljava/lang/String;
    :cond_2
    add-int/lit8 v6, v6, 0x1

    #@2c
    goto :goto_0
.end method

.method private getAutoTime()Z
    .locals 5

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 4006
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCr:Landroid/content/ContentResolver;

    #@4
    const-string/jumbo v4, "auto_time"

    #@7
    invoke-static {v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    move-result v3

    #@b
    if-lez v3, :cond_0

    #@d
    :goto_0
    return v1

    #@e
    :cond_0
    move v1, v2

    #@f
    goto :goto_0

    #@10
    .line 4007
    :catch_0
    move-exception v0

    #@11
    .line 4008
    .local v0, "snfe":Landroid/provider/Settings$SettingNotFoundException;
    return v1
.end method

.method private getAutoTimeZone()Z
    .locals 5

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 4014
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCr:Landroid/content/ContentResolver;

    #@4
    const-string/jumbo v4, "auto_time_zone"

    #@7
    invoke-static {v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    move-result v3

    #@b
    if-lez v3, :cond_0

    #@d
    :goto_0
    return v1

    #@e
    :cond_0
    move v1, v2

    #@f
    goto :goto_0

    #@10
    .line 4015
    :catch_0
    move-exception v0

    #@11
    .line 4016
    .local v0, "snfe":Landroid/provider/Settings$SettingNotFoundException;
    return v1
.end method

.method private getNitzTimeZone(IZJ)Ljava/util/TimeZone;
    .locals 3
    .param p1, "offset"    # I
    .param p2, "dst"    # Z
    .param p3, "when"    # J

    #@0
    .prologue
    .line 3477
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/ServiceStateTracker;->findTimeZone(IZJ)Ljava/util/TimeZone;

    #@3
    move-result-object v0

    #@4
    .line 3478
    .local v0, "guess":Ljava/util/TimeZone;
    if-nez v0, :cond_0

    #@6
    .line 3480
    if-eqz p2, :cond_1

    #@8
    const/4 v1, 0x0

    #@9
    :goto_0
    invoke-direct {p0, p1, v1, p3, p4}, Lcom/android/internal/telephony/ServiceStateTracker;->findTimeZone(IZJ)Ljava/util/TimeZone;

    #@c
    move-result-object v0

    #@d
    .line 3482
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    const-string/jumbo v2, "getNitzTimeZone returning "

    #@15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v2

    #@19
    if-nez v0, :cond_2

    #@1b
    move-object v1, v0

    #@1c
    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v1

    #@20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23
    move-result-object v1

    #@24
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    #@27
    .line 3483
    return-object v0

    #@28
    .line 3480
    :cond_1
    const/4 v1, 0x1

    #@29
    goto :goto_0

    #@2a
    .line 3482
    :cond_2
    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    #@2d
    move-result-object v1

    #@2e
    goto :goto_1
.end method

.method private getSubscriptionInfoAndStartPollingThreads()V
    .locals 2

    #@0
    .prologue
    .line 4620
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@2
    const/16 v1, 0x22

    #@4
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    #@7
    move-result-object v1

    #@8
    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getCDMASubscription(Landroid/os/Message;)V

    #@b
    .line 4623
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->pollState()V

    #@e
    .line 4619
    return-void
.end method

.method private getUiccCardApplication()Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .locals 3

    #@0
    .prologue
    .line 4165
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 4166
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    #@a
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@c
    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    #@f
    move-result v1

    #@10
    .line 4167
    const/4 v2, 0x1

    #@11
    .line 4166
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCardApplication(II)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@14
    move-result-object v0

    #@15
    return-object v0

    #@16
    .line 4169
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    #@18
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@1a
    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    #@1d
    move-result v1

    #@1e
    .line 4170
    const/4 v2, 0x2

    #@1f
    .line 4169
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCardApplication(II)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@22
    move-result-object v0

    #@23
    return-object v0
.end method

.method private handleCdmaSubscriptionSource(I)V
    .locals 3
    .param p1, "newSubscriptionSource"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 4627
    new-instance v1, Ljava/lang/StringBuilder;

    #@3
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@6
    const-string/jumbo v2, "Subscription Source : "

    #@9
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c
    move-result-object v1

    #@d
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@10
    move-result-object v1

    #@11
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    #@18
    .line 4629
    if-nez p1, :cond_0

    #@1a
    const/4 v0, 0x1

    #@1b
    .line 4628
    :cond_0
    iput-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIsSubscriptionFromRuim:Z

    #@1d
    .line 4630
    new-instance v0, Ljava/lang/StringBuilder;

    #@1f
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@22
    const-string/jumbo v1, "isFromRuim: "

    #@25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v0

    #@29
    iget-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIsSubscriptionFromRuim:Z

    #@2b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v0

    #@2f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@32
    move-result-object v0

    #@33
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    #@36
    .line 4631
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ServiceStateTracker;->saveCdmaSubscriptionSource(I)V

    #@39
    .line 4632
    iget-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIsSubscriptionFromRuim:Z

    #@3b
    if-nez v0, :cond_1

    #@3d
    .line 4634
    const/16 v0, 0x23

    #@3f
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    #@42
    move-result-object v0

    #@43
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->sendMessage(Landroid/os/Message;)Z

    #@46
    .line 4626
    :cond_1
    return-void
.end method

.method private isGprsConsistent(II)Z
    .locals 2
    .param p1, "dataRegState"    # I
    .param p2, "voiceRegState"    # I

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 3469
    if-nez p2, :cond_0

    #@4
    .line 3470
    if-nez p1, :cond_1

    #@6
    .line 3469
    :cond_0
    :goto_0
    return v0

    #@7
    :cond_1
    move v0, v1

    #@8
    .line 3470
    goto :goto_0
.end method

.method private isHomeSid(I)Z
    .locals 2
    .param p1, "sid"    # I

    #@0
    .prologue
    .line 1359
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mHomeSystemId:[I

    #@2
    if-eqz v1, :cond_1

    #@4
    .line 1360
    const/4 v0, 0x0

    #@5
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mHomeSystemId:[I

    #@7
    array-length v1, v1

    #@8
    if-ge v0, v1, :cond_1

    #@a
    .line 1361
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mHomeSystemId:[I

    #@c
    aget v1, v1, v0

    #@e
    if-ne p1, v1, :cond_0

    #@10
    .line 1362
    const/4 v1, 0x1

    #@11
    return v1

    #@12
    .line 1360
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@14
    goto :goto_0

    #@15
    .line 1366
    .end local v0    # "i":I
    :cond_1
    const/4 v1, 0x0

    #@16
    return v1
.end method

.method private isInHomeSidNid(II)Z
    .locals 6
    .param p1, "sid"    # I
    .param p2, "nid"    # I

    #@0
    .prologue
    const v5, 0xffff

    #@3
    const/4 v4, 0x1

    #@4
    const/4 v3, 0x0

    #@5
    .line 3331
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->isSidsAllZeros()Z

    #@8
    move-result v1

    #@9
    if-eqz v1, :cond_0

    #@b
    return v4

    #@c
    .line 3334
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mHomeSystemId:[I

    #@e
    array-length v1, v1

    #@f
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mHomeNetworkId:[I

    #@11
    array-length v2, v2

    #@12
    if-eq v1, v2, :cond_1

    #@14
    return v4

    #@15
    .line 3336
    :cond_1
    if-nez p1, :cond_2

    #@17
    return v4

    #@18
    .line 3338
    :cond_2
    const/4 v0, 0x0

    #@19
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mHomeSystemId:[I

    #@1b
    array-length v1, v1

    #@1c
    if-ge v0, v1, :cond_6

    #@1e
    .line 3341
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mHomeSystemId:[I

    #@20
    aget v1, v1, v0

    #@22
    if-ne v1, p1, :cond_5

    #@24
    .line 3342
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mHomeNetworkId:[I

    #@26
    aget v1, v1, v0

    #@28
    if-eqz v1, :cond_3

    #@2a
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mHomeNetworkId:[I

    #@2c
    aget v1, v1, v0

    #@2e
    if-ne v1, v5, :cond_4

    #@30
    .line 3344
    :cond_3
    return v4

    #@31
    .line 3343
    :cond_4
    if-eqz p2, :cond_3

    #@33
    if-eq p2, v5, :cond_3

    #@35
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mHomeNetworkId:[I

    #@37
    aget v1, v1, v0

    #@39
    if-eq v1, p2, :cond_3

    #@3b
    .line 3338
    :cond_5
    add-int/lit8 v0, v0, 0x1

    #@3d
    goto :goto_0

    #@3e
    .line 3348
    :cond_6
    return v3
.end method

.method private isInNetwork(Landroid/os/BaseBundle;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "b"    # Landroid/os/BaseBundle;
    .param p2, "network"    # Ljava/lang/String;
    .param p3, "key"    # Ljava/lang/String;

    #@0
    .prologue
    .line 4960
    invoke-virtual {p1, p3}, Landroid/os/BaseBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 4962
    .local v0, "networks":[Ljava/lang/String;
    if-eqz v0, :cond_0

    #@6
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    #@9
    move-result-object v1

    #@a
    invoke-interface {v1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    #@d
    move-result v1

    #@e
    if-eqz v1, :cond_0

    #@10
    .line 4963
    const/4 v1, 0x1

    #@11
    return v1

    #@12
    .line 4965
    :cond_0
    const/4 v1, 0x0

    #@13
    return v1
.end method

.method private isOperatorConsideredNonRoaming(Landroid/telephony/ServiceState;)Z
    .locals 7
    .param p1, "s"    # Landroid/telephony/ServiceState;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 3596
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    #@4
    move-result-object v2

    #@5
    .line 3597
    .local v2, "operatorNumeric":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@7
    invoke-virtual {v3}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    #@a
    move-result-object v3

    #@b
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@e
    move-result-object v3

    #@f
    .line 3598
    const v5, 0x107003a

    #@12
    .line 3597
    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    #@15
    move-result-object v1

    #@16
    .line 3600
    .local v1, "numericArray":[Ljava/lang/String;
    array-length v3, v1

    #@17
    if-eqz v3, :cond_0

    #@19
    if-nez v2, :cond_1

    #@1b
    .line 3601
    :cond_0
    return v4

    #@1c
    .line 3604
    :cond_1
    array-length v5, v1

    #@1d
    move v3, v4

    #@1e
    :goto_0
    if-ge v3, v5, :cond_3

    #@20
    aget-object v0, v1, v3

    #@22
    .line 3605
    .local v0, "numeric":Ljava/lang/String;
    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@25
    move-result v6

    #@26
    if-eqz v6, :cond_2

    #@28
    .line 3606
    const/4 v3, 0x1

    #@29
    return v3

    #@2a
    .line 3604
    :cond_2
    add-int/lit8 v3, v3, 0x1

    #@2c
    goto :goto_0

    #@2d
    .line 3609
    .end local v0    # "numeric":Ljava/lang/String;
    :cond_3
    return v4
.end method

.method private isOperatorConsideredRoaming(Landroid/telephony/ServiceState;)Z
    .locals 7
    .param p1, "s"    # Landroid/telephony/ServiceState;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 3613
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    #@4
    move-result-object v2

    #@5
    .line 3614
    .local v2, "operatorNumeric":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@7
    invoke-virtual {v3}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    #@a
    move-result-object v3

    #@b
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@e
    move-result-object v3

    #@f
    .line 3615
    const v5, 0x107003b

    #@12
    .line 3614
    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    #@15
    move-result-object v1

    #@16
    .line 3617
    .local v1, "numericArray":[Ljava/lang/String;
    array-length v3, v1

    #@17
    if-eqz v3, :cond_0

    #@19
    if-nez v2, :cond_1

    #@1b
    .line 3618
    :cond_0
    return v4

    #@1c
    .line 3621
    :cond_1
    array-length v5, v1

    #@1d
    move v3, v4

    #@1e
    :goto_0
    if-ge v3, v5, :cond_3

    #@20
    aget-object v0, v1, v3

    #@22
    .line 3622
    .local v0, "numeric":Ljava/lang/String;
    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@25
    move-result v6

    #@26
    if-eqz v6, :cond_2

    #@28
    .line 3623
    const/4 v3, 0x1

    #@29
    return v3

    #@2a
    .line 3621
    :cond_2
    add-int/lit8 v3, v3, 0x1

    #@2c
    goto :goto_0

    #@2d
    .line 3626
    .end local v0    # "numeric":Ljava/lang/String;
    :cond_3
    return v4
.end method

.method private isRoamIndForHomeSystem(Ljava/lang/String;)Z
    .locals 6
    .param p1, "roamInd"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1977
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@3
    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    #@6
    move-result-object v2

    #@7
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@a
    move-result-object v2

    #@b
    .line 1978
    const v4, 0x107003f

    #@e
    .line 1977
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    #@11
    move-result-object v1

    #@12
    .line 1980
    .local v1, "homeRoamIndicators":[Ljava/lang/String;
    if-eqz v1, :cond_2

    #@14
    .line 1983
    array-length v4, v1

    #@15
    move v2, v3

    #@16
    :goto_0
    if-ge v2, v4, :cond_1

    #@18
    aget-object v0, v1, v2

    #@1a
    .line 1984
    .local v0, "homeRoamInd":Ljava/lang/String;
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1d
    move-result v5

    #@1e
    if-eqz v5, :cond_0

    #@20
    .line 1985
    const/4 v2, 0x1

    #@21
    return v2

    #@22
    .line 1983
    :cond_0
    add-int/lit8 v2, v2, 0x1

    #@24
    goto :goto_0

    #@25
    .line 1989
    .end local v0    # "homeRoamInd":Ljava/lang/String;
    :cond_1
    return v3

    #@26
    .line 1993
    :cond_2
    return v3
.end method

.method private isRoamingBetweenOperators(ZLandroid/telephony/ServiceState;)Z
    .locals 2
    .param p1, "cdmaRoaming"    # Z
    .param p2, "s"    # Landroid/telephony/ServiceState;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1607
    if-eqz p1, :cond_0

    #@3
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/ServiceStateTracker;->isSameOperatorNameFromSimAndSS(Landroid/telephony/ServiceState;)Z

    #@6
    move-result v1

    #@7
    if-eqz v1, :cond_1

    #@9
    :cond_0
    :goto_0
    return v0

    #@a
    :cond_1
    const/4 v0, 0x1

    #@b
    goto :goto_0
.end method

.method private isSameNamedOperators(Landroid/telephony/ServiceState;)Z
    .locals 1
    .param p1, "s"    # Landroid/telephony/ServiceState;

    #@0
    .prologue
    .line 3561
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ServiceStateTracker;->currentMccEqualsSimMcc(Landroid/telephony/ServiceState;)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ServiceStateTracker;->isSameOperatorNameFromSimAndSS(Landroid/telephony/ServiceState;)Z

    #@9
    move-result v0

    #@a
    :goto_0
    return v0

    #@b
    :cond_0
    const/4 v0, 0x0

    #@c
    goto :goto_0
.end method

.method private isSameOperatorNameFromSimAndSS(Landroid/telephony/ServiceState;)Z
    .locals 7
    .param p1, "s"    # Landroid/telephony/ServiceState;

    #@0
    .prologue
    .line 3538
    iget-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@2
    invoke-virtual {v5}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    #@5
    move-result-object v5

    #@6
    .line 3539
    const-string/jumbo v6, "phone"

    #@9
    .line 3538
    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@c
    move-result-object v5

    #@d
    check-cast v5, Landroid/telephony/TelephonyManager;

    #@f
    .line 3540
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getPhoneId()I

    #@12
    move-result v6

    #@13
    .line 3538
    invoke-virtual {v5, v6}, Landroid/telephony/TelephonyManager;->getSimOperatorNameForPhone(I)Ljava/lang/String;

    #@16
    move-result-object v4

    #@17
    .line 3544
    .local v4, "spn":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    #@1a
    move-result-object v2

    #@1b
    .line 3545
    .local v2, "onsl":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorAlphaShort()Ljava/lang/String;

    #@1e
    move-result-object v3

    #@1f
    .line 3547
    .local v3, "onss":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@22
    move-result v5

    #@23
    if-nez v5, :cond_0

    #@25
    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@28
    move-result v0

    #@29
    .line 3548
    :goto_0
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@2c
    move-result v5

    #@2d
    if-nez v5, :cond_1

    #@2f
    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@32
    move-result v1

    #@33
    .line 3550
    :goto_1
    if-nez v0, :cond_2

    #@35
    :goto_2
    return v1

    #@36
    .line 3547
    :cond_0
    const/4 v0, 0x0

    #@37
    .local v0, "equalsOnsl":Z
    goto :goto_0

    #@38
    .line 3548
    .end local v0    # "equalsOnsl":Z
    :cond_1
    const/4 v1, 0x0

    #@39
    .local v1, "equalsOnss":Z
    goto :goto_1

    #@3a
    .line 3550
    .end local v1    # "equalsOnss":Z
    :cond_2
    const/4 v1, 0x1

    #@3b
    goto :goto_2
.end method

.method private logAttachChange()V
    .locals 2

    #@0
    .prologue
    .line 2403
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mAttachLog:Landroid/util/LocalLog;

    #@2
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@4
    invoke-virtual {v1}, Landroid/telephony/ServiceState;->toString()Ljava/lang/String;

    #@7
    move-result-object v1

    #@8
    invoke-virtual {v0, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    #@b
    .line 2402
    return-void
.end method

.method private logPhoneTypeChange()V
    .locals 2

    #@0
    .prologue
    .line 2407
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhoneTypeLog:Landroid/util/LocalLog;

    #@2
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@4
    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneType()I

    #@7
    move-result v1

    #@8
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@b
    move-result-object v1

    #@c
    invoke-virtual {v0, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    #@f
    .line 2406
    return-void
.end method

.method private logRatChange()V
    .locals 2

    #@0
    .prologue
    .line 2411
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRatLog:Landroid/util/LocalLog;

    #@2
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@4
    invoke-virtual {v1}, Landroid/telephony/ServiceState;->toString()Ljava/lang/String;

    #@7
    move-result-object v1

    #@8
    invoke-virtual {v0, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    #@b
    .line 2410
    return-void
.end method

.method private logRoamingChange()V
    .locals 2

    #@0
    .prologue
    .line 2399
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRoamingLog:Landroid/util/LocalLog;

    #@2
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@4
    invoke-virtual {v1}, Landroid/telephony/ServiceState;->toString()Ljava/lang/String;

    #@7
    move-result-object v1

    #@8
    invoke-virtual {v0, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    #@b
    .line 2398
    return-void
.end method

.method private modemTriggeredPollState()V
    .locals 1

    #@0
    .prologue
    .line 2492
    const/4 v0, 0x1

    #@1
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->pollState(Z)V

    #@4
    .line 2491
    return-void
.end method

.method private notifyCdmaSubscriptionInfoReady()V
    .locals 1

    #@0
    .prologue
    .line 4193
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCdmaForSubscriptionInfoReadyRegistrants:Landroid/os/RegistrantList;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 4194
    const-string/jumbo v0, "CDMA_SUBSCRIPTION: call notifyRegistrants()"

    #@7
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    #@a
    .line 4195
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCdmaForSubscriptionInfoReadyRegistrants:Landroid/os/RegistrantList;

    #@c
    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    #@f
    .line 4192
    :cond_0
    return-void
.end method

.method private onRestrictedStateChanged(Landroid/os/AsyncResult;)V
    .locals 10
    .param p1, "ar"    # Landroid/os/AsyncResult;

    #@0
    .prologue
    const/16 v9, 0x3ed

    #@2
    const/16 v8, 0x3ec

    #@4
    const/16 v7, 0x3eb

    #@6
    const/4 v4, 0x1

    #@7
    const/4 v5, 0x0

    #@8
    .line 3637
    new-instance v1, Lcom/android/internal/telephony/RestrictedState;

    #@a
    invoke-direct {v1}, Lcom/android/internal/telephony/RestrictedState;-><init>()V

    #@d
    .line 3639
    .local v1, "newRs":Lcom/android/internal/telephony/RestrictedState;
    new-instance v3, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    const-string/jumbo v6, "onRestrictedStateChanged: E rs "

    #@15
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v3

    #@19
    iget-object v6, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    #@1b
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v3

    #@1f
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v3

    #@23
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    #@26
    .line 3641
    iget-object v3, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@28
    if-nez v3, :cond_3

    #@2a
    .line 3642
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@2c
    check-cast v0, [I

    #@2e
    .line 3643
    .local v0, "ints":[I
    aget v2, v0, v5

    #@30
    .line 3646
    .local v2, "state":I
    and-int/lit8 v3, v2, 0x1

    #@32
    if-nez v3, :cond_4

    #@34
    .line 3647
    and-int/lit8 v3, v2, 0x4

    #@36
    if-eqz v3, :cond_5

    #@38
    move v3, v4

    #@39
    .line 3645
    :goto_0
    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/RestrictedState;->setCsEmergencyRestricted(Z)V

    #@3c
    .line 3649
    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@3e
    if-eqz v3, :cond_0

    #@40
    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@42
    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getState()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    #@45
    move-result-object v3

    #@46
    sget-object v6, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_READY:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    #@48
    if-ne v3, v6, :cond_0

    #@4a
    .line 3651
    and-int/lit8 v3, v2, 0x2

    #@4c
    if-nez v3, :cond_6

    #@4e
    .line 3652
    and-int/lit8 v3, v2, 0x4

    #@50
    if-eqz v3, :cond_7

    #@52
    move v3, v4

    #@53
    .line 3650
    :goto_1
    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/RestrictedState;->setCsNormalRestricted(Z)V

    #@56
    .line 3654
    and-int/lit8 v3, v2, 0x10

    #@58
    if-eqz v3, :cond_8

    #@5a
    .line 3653
    :goto_2
    invoke-virtual {v1, v4}, Lcom/android/internal/telephony/RestrictedState;->setPsRestricted(Z)V

    #@5d
    .line 3657
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    #@5f
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@62
    const-string/jumbo v4, "onRestrictedStateChanged: new rs "

    #@65
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@68
    move-result-object v3

    #@69
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@6c
    move-result-object v3

    #@6d
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@70
    move-result-object v3

    #@71
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    #@74
    .line 3659
    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    #@76
    invoke-virtual {v3}, Lcom/android/internal/telephony/RestrictedState;->isPsRestricted()Z

    #@79
    move-result v3

    #@7a
    if-nez v3, :cond_9

    #@7c
    invoke-virtual {v1}, Lcom/android/internal/telephony/RestrictedState;->isPsRestricted()Z

    #@7f
    move-result v3

    #@80
    if-eqz v3, :cond_9

    #@82
    .line 3660
    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPsRestrictEnabledRegistrants:Landroid/os/RegistrantList;

    #@84
    invoke-virtual {v3}, Landroid/os/RegistrantList;->notifyRegistrants()V

    #@87
    .line 3661
    const/16 v3, 0x3e9

    #@89
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->setNotification(I)V

    #@8c
    .line 3672
    :cond_1
    :goto_3
    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    #@8e
    invoke-virtual {v3}, Lcom/android/internal/telephony/RestrictedState;->isCsRestricted()Z

    #@91
    move-result v3

    #@92
    if-eqz v3, :cond_c

    #@94
    .line 3673
    invoke-virtual {v1}, Lcom/android/internal/telephony/RestrictedState;->isCsRestricted()Z

    #@97
    move-result v3

    #@98
    if-nez v3, :cond_a

    #@9a
    .line 3675
    invoke-direct {p0, v8}, Lcom/android/internal/telephony/ServiceStateTracker;->setNotification(I)V

    #@9d
    .line 3720
    :cond_2
    :goto_4
    iput-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    #@9f
    .line 3722
    .end local v0    # "ints":[I
    .end local v2    # "state":I
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    #@a1
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@a4
    const-string/jumbo v4, "onRestrictedStateChanged: X rs "

    #@a7
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@aa
    move-result-object v3

    #@ab
    iget-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    #@ad
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@b0
    move-result-object v3

    #@b1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b4
    move-result-object v3

    #@b5
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    #@b8
    .line 3636
    return-void

    #@b9
    .restart local v0    # "ints":[I
    .restart local v2    # "state":I
    :cond_4
    move v3, v4

    #@ba
    .line 3646
    goto/16 :goto_0

    #@bc
    :cond_5
    move v3, v5

    #@bd
    .line 3647
    goto/16 :goto_0

    #@bf
    :cond_6
    move v3, v4

    #@c0
    .line 3651
    goto :goto_1

    #@c1
    :cond_7
    move v3, v5

    #@c2
    .line 3652
    goto :goto_1

    #@c3
    :cond_8
    move v4, v5

    #@c4
    .line 3654
    goto :goto_2

    #@c5
    .line 3662
    :cond_9
    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    #@c7
    invoke-virtual {v3}, Lcom/android/internal/telephony/RestrictedState;->isPsRestricted()Z

    #@ca
    move-result v3

    #@cb
    if-eqz v3, :cond_1

    #@cd
    invoke-virtual {v1}, Lcom/android/internal/telephony/RestrictedState;->isPsRestricted()Z

    #@d0
    move-result v3

    #@d1
    if-nez v3, :cond_1

    #@d3
    .line 3663
    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPsRestrictDisabledRegistrants:Landroid/os/RegistrantList;

    #@d5
    invoke-virtual {v3}, Landroid/os/RegistrantList;->notifyRegistrants()V

    #@d8
    .line 3664
    const/16 v3, 0x3ea

    #@da
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->setNotification(I)V

    #@dd
    goto :goto_3

    #@de
    .line 3676
    :cond_a
    invoke-virtual {v1}, Lcom/android/internal/telephony/RestrictedState;->isCsNormalRestricted()Z

    #@e1
    move-result v3

    #@e2
    if-nez v3, :cond_b

    #@e4
    .line 3678
    const/16 v3, 0x3ee

    #@e6
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->setNotification(I)V

    #@e9
    goto :goto_4

    #@ea
    .line 3679
    :cond_b
    invoke-virtual {v1}, Lcom/android/internal/telephony/RestrictedState;->isCsEmergencyRestricted()Z

    #@ed
    move-result v3

    #@ee
    if-nez v3, :cond_2

    #@f0
    .line 3681
    invoke-direct {p0, v9}, Lcom/android/internal/telephony/ServiceStateTracker;->setNotification(I)V

    #@f3
    goto :goto_4

    #@f4
    .line 3683
    :cond_c
    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    #@f6
    invoke-virtual {v3}, Lcom/android/internal/telephony/RestrictedState;->isCsEmergencyRestricted()Z

    #@f9
    move-result v3

    #@fa
    if-eqz v3, :cond_d

    #@fc
    .line 3684
    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    #@fe
    invoke-virtual {v3}, Lcom/android/internal/telephony/RestrictedState;->isCsNormalRestricted()Z

    #@101
    move-result v3

    #@102
    if-eqz v3, :cond_e

    #@104
    .line 3695
    :cond_d
    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    #@106
    invoke-virtual {v3}, Lcom/android/internal/telephony/RestrictedState;->isCsEmergencyRestricted()Z

    #@109
    move-result v3

    #@10a
    if-nez v3, :cond_13

    #@10c
    .line 3696
    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    #@10e
    invoke-virtual {v3}, Lcom/android/internal/telephony/RestrictedState;->isCsNormalRestricted()Z

    #@111
    move-result v3

    #@112
    .line 3695
    if-eqz v3, :cond_13

    #@114
    .line 3697
    invoke-virtual {v1}, Lcom/android/internal/telephony/RestrictedState;->isCsRestricted()Z

    #@117
    move-result v3

    #@118
    if-nez v3, :cond_11

    #@11a
    .line 3699
    invoke-direct {p0, v8}, Lcom/android/internal/telephony/ServiceStateTracker;->setNotification(I)V

    #@11d
    goto :goto_4

    #@11e
    .line 3685
    :cond_e
    invoke-virtual {v1}, Lcom/android/internal/telephony/RestrictedState;->isCsRestricted()Z

    #@121
    move-result v3

    #@122
    if-nez v3, :cond_f

    #@124
    .line 3687
    invoke-direct {p0, v8}, Lcom/android/internal/telephony/ServiceStateTracker;->setNotification(I)V

    #@127
    goto/16 :goto_4

    #@129
    .line 3688
    :cond_f
    invoke-virtual {v1}, Lcom/android/internal/telephony/RestrictedState;->isCsRestricted()Z

    #@12c
    move-result v3

    #@12d
    if-eqz v3, :cond_10

    #@12f
    .line 3690
    invoke-direct {p0, v7}, Lcom/android/internal/telephony/ServiceStateTracker;->setNotification(I)V

    #@132
    goto/16 :goto_4

    #@134
    .line 3691
    :cond_10
    invoke-virtual {v1}, Lcom/android/internal/telephony/RestrictedState;->isCsNormalRestricted()Z

    #@137
    move-result v3

    #@138
    if-eqz v3, :cond_2

    #@13a
    .line 3693
    invoke-direct {p0, v9}, Lcom/android/internal/telephony/ServiceStateTracker;->setNotification(I)V

    #@13d
    goto/16 :goto_4

    #@13f
    .line 3700
    :cond_11
    invoke-virtual {v1}, Lcom/android/internal/telephony/RestrictedState;->isCsRestricted()Z

    #@142
    move-result v3

    #@143
    if-eqz v3, :cond_12

    #@145
    .line 3702
    invoke-direct {p0, v7}, Lcom/android/internal/telephony/ServiceStateTracker;->setNotification(I)V

    #@148
    goto/16 :goto_4

    #@14a
    .line 3703
    :cond_12
    invoke-virtual {v1}, Lcom/android/internal/telephony/RestrictedState;->isCsEmergencyRestricted()Z

    #@14d
    move-result v3

    #@14e
    if-eqz v3, :cond_2

    #@150
    .line 3705
    const/16 v3, 0x3ee

    #@152
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->setNotification(I)V

    #@155
    goto/16 :goto_4

    #@157
    .line 3708
    :cond_13
    invoke-virtual {v1}, Lcom/android/internal/telephony/RestrictedState;->isCsRestricted()Z

    #@15a
    move-result v3

    #@15b
    if-eqz v3, :cond_14

    #@15d
    .line 3710
    invoke-direct {p0, v7}, Lcom/android/internal/telephony/ServiceStateTracker;->setNotification(I)V

    #@160
    goto/16 :goto_4

    #@162
    .line 3711
    :cond_14
    invoke-virtual {v1}, Lcom/android/internal/telephony/RestrictedState;->isCsEmergencyRestricted()Z

    #@165
    move-result v3

    #@166
    if-eqz v3, :cond_15

    #@168
    .line 3713
    const/16 v3, 0x3ee

    #@16a
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->setNotification(I)V

    #@16d
    goto/16 :goto_4

    #@16f
    .line 3714
    :cond_15
    invoke-virtual {v1}, Lcom/android/internal/telephony/RestrictedState;->isCsNormalRestricted()Z

    #@172
    move-result v3

    #@173
    if-eqz v3, :cond_2

    #@175
    .line 3716
    invoke-direct {p0, v9}, Lcom/android/internal/telephony/ServiceStateTracker;->setNotification(I)V

    #@178
    goto/16 :goto_4
.end method

.method private pollStateDone()V
    .locals 1

    #@0
    .prologue
    .line 2548
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 2549
    invoke-direct {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->pollStateDoneGsm()V

    #@b
    .line 2547
    :goto_0
    return-void

    #@c
    .line 2550
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@e
    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeCdma()Z

    #@11
    move-result v0

    #@12
    if-eqz v0, :cond_1

    #@14
    .line 2551
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->pollStateDoneCdma()V

    #@17
    goto :goto_0

    #@18
    .line 2553
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->pollStateDoneCdmaLte()V

    #@1b
    goto :goto_0
.end method

.method private pollStateDoneGsm()V
    .locals 40

    #@0
    .prologue
    .line 2558
    sget-boolean v35, Landroid/os/Build;->IS_DEBUGGABLE:Z

    #@2
    if-eqz v35, :cond_0

    #@4
    const-string/jumbo v35, "telephony.test.forceRoaming"

    #@7
    const/16 v36, 0x0

    #@9
    invoke-static/range {v35 .. v36}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    #@c
    move-result v35

    #@d
    if-eqz v35, :cond_0

    #@f
    .line 2559
    move-object/from16 v0, p0

    #@11
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@13
    move-object/from16 v35, v0

    #@15
    const/16 v36, 0x1

    #@17
    invoke-virtual/range {v35 .. v36}, Landroid/telephony/ServiceState;->setVoiceRoaming(Z)V

    #@1a
    .line 2560
    move-object/from16 v0, p0

    #@1c
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@1e
    move-object/from16 v35, v0

    #@20
    const/16 v36, 0x1

    #@22
    invoke-virtual/range {v35 .. v36}, Landroid/telephony/ServiceState;->setDataRoaming(Z)V

    #@25
    .line 2562
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ServiceStateTracker;->useDataRegStateForDataOnlyDevices()V

    #@28
    .line 2563
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ServiceStateTracker;->resetServiceStateInIwlanMode()V

    #@2b
    .line 2566
    new-instance v35, Ljava/lang/StringBuilder;

    #@2d
    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    #@30
    const-string/jumbo v36, "Poll ServiceState done:  oldSS=["

    #@33
    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v35

    #@37
    .line 2567
    move-object/from16 v0, p0

    #@39
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@3b
    move-object/from16 v36, v0

    #@3d
    .line 2566
    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v35

    #@41
    .line 2567
    const-string/jumbo v36, "] newSS=["

    #@44
    .line 2566
    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v35

    #@48
    .line 2567
    move-object/from16 v0, p0

    #@4a
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@4c
    move-object/from16 v36, v0

    #@4e
    .line 2566
    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v35

    #@52
    .line 2567
    const-string/jumbo v36, "]"

    #@55
    .line 2566
    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@58
    move-result-object v35

    #@59
    .line 2568
    const-string/jumbo v36, " oldMaxDataCalls="

    #@5c
    .line 2566
    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v35

    #@60
    .line 2568
    move-object/from16 v0, p0

    #@62
    iget v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mMaxDataCalls:I

    #@64
    move/from16 v36, v0

    #@66
    .line 2566
    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@69
    move-result-object v35

    #@6a
    .line 2569
    const-string/jumbo v36, " mNewMaxDataCalls="

    #@6d
    .line 2566
    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@70
    move-result-object v35

    #@71
    .line 2569
    move-object/from16 v0, p0

    #@73
    iget v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewMaxDataCalls:I

    #@75
    move/from16 v36, v0

    #@77
    .line 2566
    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@7a
    move-result-object v35

    #@7b
    .line 2570
    const-string/jumbo v36, " oldReasonDataDenied="

    #@7e
    .line 2566
    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@81
    move-result-object v35

    #@82
    .line 2570
    move-object/from16 v0, p0

    #@84
    iget v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mReasonDataDenied:I

    #@86
    move/from16 v36, v0

    #@88
    .line 2566
    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@8b
    move-result-object v35

    #@8c
    .line 2571
    const-string/jumbo v36, " mNewReasonDataDenied="

    #@8f
    .line 2566
    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@92
    move-result-object v35

    #@93
    .line 2571
    move-object/from16 v0, p0

    #@95
    iget v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewReasonDataDenied:I

    #@97
    move/from16 v36, v0

    #@99
    .line 2566
    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@9c
    move-result-object v35

    #@9d
    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a0
    move-result-object v35

    #@a1
    move-object/from16 v0, p0

    #@a3
    move-object/from16 v1, v35

    #@a5
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    #@a8
    .line 2575
    move-object/from16 v0, p0

    #@aa
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@ac
    move-object/from16 v35, v0

    #@ae
    invoke-virtual/range {v35 .. v35}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    #@b1
    move-result v35

    #@b2
    if-eqz v35, :cond_1e

    #@b4
    .line 2576
    move-object/from16 v0, p0

    #@b6
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@b8
    move-object/from16 v35, v0

    #@ba
    invoke-virtual/range {v35 .. v35}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    #@bd
    move-result v35

    #@be
    if-nez v35, :cond_1d

    #@c0
    const/16 v18, 0x1

    #@c2
    .line 2579
    .local v18, "hasRegistered":Z
    :goto_0
    move-object/from16 v0, p0

    #@c4
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@c6
    move-object/from16 v35, v0

    #@c8
    invoke-virtual/range {v35 .. v35}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    #@cb
    move-result v35

    #@cc
    if-nez v35, :cond_20

    #@ce
    .line 2580
    move-object/from16 v0, p0

    #@d0
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@d2
    move-object/from16 v35, v0

    #@d4
    invoke-virtual/range {v35 .. v35}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    #@d7
    move-result v35

    #@d8
    if-eqz v35, :cond_1f

    #@da
    const/4 v14, 0x1

    #@db
    .line 2583
    .local v14, "hasDeregistered":Z
    :goto_1
    move-object/from16 v0, p0

    #@dd
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@df
    move-object/from16 v35, v0

    #@e1
    invoke-virtual/range {v35 .. v35}, Landroid/telephony/ServiceState;->getDataRegState()I

    #@e4
    move-result v35

    #@e5
    if-eqz v35, :cond_22

    #@e7
    .line 2584
    move-object/from16 v0, p0

    #@e9
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@eb
    move-object/from16 v35, v0

    #@ed
    invoke-virtual/range {v35 .. v35}, Landroid/telephony/ServiceState;->getDataRegState()I

    #@f0
    move-result v35

    #@f1
    if-nez v35, :cond_21

    #@f3
    const/4 v15, 0x1

    #@f4
    .line 2587
    .local v15, "hasGprsAttached":Z
    :goto_2
    move-object/from16 v0, p0

    #@f6
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@f8
    move-object/from16 v35, v0

    #@fa
    invoke-virtual/range {v35 .. v35}, Landroid/telephony/ServiceState;->getDataRegState()I

    #@fd
    move-result v35

    #@fe
    if-nez v35, :cond_24

    #@100
    .line 2588
    move-object/from16 v0, p0

    #@102
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@104
    move-object/from16 v35, v0

    #@106
    invoke-virtual/range {v35 .. v35}, Landroid/telephony/ServiceState;->getDataRegState()I

    #@109
    move-result v35

    #@10a
    if-eqz v35, :cond_23

    #@10c
    const/16 v16, 0x1

    #@10e
    .line 2591
    .local v16, "hasGprsDetached":Z
    :goto_3
    move-object/from16 v0, p0

    #@110
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@112
    move-object/from16 v35, v0

    #@114
    invoke-virtual/range {v35 .. v35}, Landroid/telephony/ServiceState;->getDataRegState()I

    #@117
    move-result v35

    #@118
    move-object/from16 v0, p0

    #@11a
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@11c
    move-object/from16 v36, v0

    #@11e
    invoke-virtual/range {v36 .. v36}, Landroid/telephony/ServiceState;->getDataRegState()I

    #@121
    move-result v36

    #@122
    move/from16 v0, v35

    #@124
    move/from16 v1, v36

    #@126
    if-eq v0, v1, :cond_25

    #@128
    const/4 v11, 0x1

    #@129
    .line 2594
    .local v11, "hasDataRegStateChanged":Z
    :goto_4
    move-object/from16 v0, p0

    #@12b
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@12d
    move-object/from16 v35, v0

    #@12f
    invoke-virtual/range {v35 .. v35}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    #@132
    move-result v35

    #@133
    move-object/from16 v0, p0

    #@135
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@137
    move-object/from16 v36, v0

    #@139
    invoke-virtual/range {v36 .. v36}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    #@13c
    move-result v36

    #@13d
    move/from16 v0, v35

    #@13f
    move/from16 v1, v36

    #@141
    if-eq v0, v1, :cond_26

    #@143
    const/16 v21, 0x1

    #@145
    .line 2596
    .local v21, "hasVoiceRegStateChanged":Z
    :goto_5
    move-object/from16 v0, p0

    #@147
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewCellLoc:Landroid/telephony/CellLocation;

    #@149
    move-object/from16 v35, v0

    #@14b
    move-object/from16 v0, p0

    #@14d
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mCellLoc:Landroid/telephony/CellLocation;

    #@14f
    move-object/from16 v36, v0

    #@151
    invoke-virtual/range {v35 .. v36}, Landroid/telephony/CellLocation;->equals(Ljava/lang/Object;)Z

    #@154
    move-result v35

    #@155
    if-eqz v35, :cond_27

    #@157
    const/16 v17, 0x0

    #@159
    .line 2600
    .local v17, "hasLocationChanged":Z
    :goto_6
    if-nez v17, :cond_1

    #@15b
    .line 2601
    move-object/from16 v0, p0

    #@15d
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mRatRatcheter:Lcom/android/internal/telephony/RatRatcheter;

    #@15f
    move-object/from16 v35, v0

    #@161
    move-object/from16 v0, p0

    #@163
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@165
    move-object/from16 v36, v0

    #@167
    move-object/from16 v0, p0

    #@169
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@16b
    move-object/from16 v37, v0

    #@16d
    invoke-virtual/range {v35 .. v37}, Lcom/android/internal/telephony/RatRatcheter;->ratchetRat(Landroid/telephony/ServiceState;Landroid/telephony/ServiceState;)V

    #@170
    .line 2605
    :cond_1
    move-object/from16 v0, p0

    #@172
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@174
    move-object/from16 v35, v0

    #@176
    invoke-virtual/range {v35 .. v35}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    #@179
    move-result v35

    #@17a
    move-object/from16 v0, p0

    #@17c
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@17e
    move-object/from16 v36, v0

    #@180
    invoke-virtual/range {v36 .. v36}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    #@183
    move-result v36

    #@184
    move/from16 v0, v35

    #@186
    move/from16 v1, v36

    #@188
    if-eq v0, v1, :cond_28

    #@18a
    const/16 v20, 0x1

    #@18c
    .line 2608
    .local v20, "hasRilVoiceRadioTechnologyChanged":Z
    :goto_7
    move-object/from16 v0, p0

    #@18e
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@190
    move-object/from16 v35, v0

    #@192
    invoke-virtual/range {v35 .. v35}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    #@195
    move-result v35

    #@196
    move-object/from16 v0, p0

    #@198
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@19a
    move-object/from16 v36, v0

    #@19c
    invoke-virtual/range {v36 .. v36}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    #@19f
    move-result v36

    #@1a0
    move/from16 v0, v35

    #@1a2
    move/from16 v1, v36

    #@1a4
    if-eq v0, v1, :cond_29

    #@1a6
    const/16 v19, 0x1

    #@1a8
    .line 2610
    .local v19, "hasRilDataRadioTechnologyChanged":Z
    :goto_8
    move-object/from16 v0, p0

    #@1aa
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@1ac
    move-object/from16 v35, v0

    #@1ae
    move-object/from16 v0, p0

    #@1b0
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@1b2
    move-object/from16 v36, v0

    #@1b4
    invoke-virtual/range {v35 .. v36}, Landroid/telephony/ServiceState;->equals(Ljava/lang/Object;)Z

    #@1b7
    move-result v35

    #@1b8
    if-eqz v35, :cond_2a

    #@1ba
    const/4 v10, 0x0

    #@1bb
    .line 2612
    .local v10, "hasChanged":Z
    :goto_9
    move-object/from16 v0, p0

    #@1bd
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@1bf
    move-object/from16 v35, v0

    #@1c1
    invoke-virtual/range {v35 .. v35}, Landroid/telephony/ServiceState;->getVoiceRoaming()Z

    #@1c4
    move-result v35

    #@1c5
    if-nez v35, :cond_2b

    #@1c7
    move-object/from16 v0, p0

    #@1c9
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@1cb
    move-object/from16 v35, v0

    #@1cd
    invoke-virtual/range {v35 .. v35}, Landroid/telephony/ServiceState;->getVoiceRoaming()Z

    #@1d0
    move-result v23

    #@1d1
    .line 2614
    :goto_a
    move-object/from16 v0, p0

    #@1d3
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@1d5
    move-object/from16 v35, v0

    #@1d7
    invoke-virtual/range {v35 .. v35}, Landroid/telephony/ServiceState;->getVoiceRoaming()Z

    #@1da
    move-result v35

    #@1db
    if-eqz v35, :cond_2

    #@1dd
    move-object/from16 v0, p0

    #@1df
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@1e1
    move-object/from16 v35, v0

    #@1e3
    invoke-virtual/range {v35 .. v35}, Landroid/telephony/ServiceState;->getVoiceRoaming()Z

    #@1e6
    move-result v35

    #@1e7
    if-eqz v35, :cond_2c

    #@1e9
    :cond_2
    const/16 v22, 0x0

    #@1eb
    .line 2616
    .local v22, "hasVoiceRoamingOff":Z
    :goto_b
    move-object/from16 v0, p0

    #@1ed
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@1ef
    move-object/from16 v35, v0

    #@1f1
    invoke-virtual/range {v35 .. v35}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    #@1f4
    move-result v35

    #@1f5
    if-nez v35, :cond_2d

    #@1f7
    move-object/from16 v0, p0

    #@1f9
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@1fb
    move-object/from16 v35, v0

    #@1fd
    invoke-virtual/range {v35 .. v35}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    #@200
    move-result v13

    #@201
    .line 2618
    :goto_c
    move-object/from16 v0, p0

    #@203
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@205
    move-object/from16 v35, v0

    #@207
    invoke-virtual/range {v35 .. v35}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    #@20a
    move-result v35

    #@20b
    if-eqz v35, :cond_3

    #@20d
    move-object/from16 v0, p0

    #@20f
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@211
    move-object/from16 v35, v0

    #@213
    invoke-virtual/range {v35 .. v35}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    #@216
    move-result v35

    #@217
    if-eqz v35, :cond_2e

    #@219
    :cond_3
    const/4 v12, 0x0

    #@21a
    .line 2621
    .local v12, "hasDataRoamingOff":Z
    :goto_d
    move-object/from16 v0, p0

    #@21c
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@21e
    move-object/from16 v35, v0

    #@220
    invoke-virtual/range {v35 .. v35}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    #@223
    move-result-object v35

    #@224
    const-string/jumbo v36, "phone"

    #@227
    invoke-virtual/range {v35 .. v36}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@22a
    move-result-object v31

    #@22b
    check-cast v31, Landroid/telephony/TelephonyManager;

    #@22d
    .line 2624
    .local v31, "tm":Landroid/telephony/TelephonyManager;
    if-nez v21, :cond_4

    #@22f
    if-eqz v11, :cond_5

    #@231
    .line 2625
    :cond_4
    const/16 v35, 0x4

    #@233
    move/from16 v0, v35

    #@235
    new-array v0, v0, [Ljava/lang/Object;

    #@237
    move-object/from16 v35, v0

    #@239
    .line 2626
    move-object/from16 v0, p0

    #@23b
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@23d
    move-object/from16 v36, v0

    #@23f
    invoke-virtual/range {v36 .. v36}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    #@242
    move-result v36

    #@243
    invoke-static/range {v36 .. v36}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@246
    move-result-object v36

    #@247
    const/16 v37, 0x0

    #@249
    aput-object v36, v35, v37

    #@24b
    move-object/from16 v0, p0

    #@24d
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@24f
    move-object/from16 v36, v0

    #@251
    invoke-virtual/range {v36 .. v36}, Landroid/telephony/ServiceState;->getDataRegState()I

    #@254
    move-result v36

    #@255
    invoke-static/range {v36 .. v36}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@258
    move-result-object v36

    #@259
    const/16 v37, 0x1

    #@25b
    aput-object v36, v35, v37

    #@25d
    .line 2627
    move-object/from16 v0, p0

    #@25f
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@261
    move-object/from16 v36, v0

    #@263
    invoke-virtual/range {v36 .. v36}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    #@266
    move-result v36

    #@267
    invoke-static/range {v36 .. v36}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@26a
    move-result-object v36

    #@26b
    const/16 v37, 0x2

    #@26d
    aput-object v36, v35, v37

    #@26f
    move-object/from16 v0, p0

    #@271
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@273
    move-object/from16 v36, v0

    #@275
    invoke-virtual/range {v36 .. v36}, Landroid/telephony/ServiceState;->getDataRegState()I

    #@278
    move-result v36

    #@279
    invoke-static/range {v36 .. v36}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@27c
    move-result-object v36

    #@27d
    const/16 v37, 0x3

    #@27f
    aput-object v36, v35, v37

    #@281
    .line 2625
    const v36, 0xc3c2

    #@284
    move/from16 v0, v36

    #@286
    move-object/from16 v1, v35

    #@288
    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    #@28b
    .line 2633
    :cond_5
    if-eqz v20, :cond_7

    #@28d
    .line 2634
    const/4 v7, -0x1

    #@28e
    .line 2635
    .local v7, "cid":I
    move-object/from16 v0, p0

    #@290
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewCellLoc:Landroid/telephony/CellLocation;

    #@292
    move-object/from16 v25, v0

    #@294
    check-cast v25, Landroid/telephony/gsm/GsmCellLocation;

    #@296
    .line 2636
    .local v25, "loc":Landroid/telephony/gsm/GsmCellLocation;
    if-eqz v25, :cond_6

    #@298
    invoke-virtual/range {v25 .. v25}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    #@29b
    move-result v7

    #@29c
    .line 2641
    :cond_6
    const/16 v35, 0x3

    #@29e
    move/from16 v0, v35

    #@2a0
    new-array v0, v0, [Ljava/lang/Object;

    #@2a2
    move-object/from16 v35, v0

    #@2a4
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@2a7
    move-result-object v36

    #@2a8
    const/16 v37, 0x0

    #@2aa
    aput-object v36, v35, v37

    #@2ac
    .line 2642
    move-object/from16 v0, p0

    #@2ae
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@2b0
    move-object/from16 v36, v0

    #@2b2
    invoke-virtual/range {v36 .. v36}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    #@2b5
    move-result v36

    #@2b6
    invoke-static/range {v36 .. v36}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@2b9
    move-result-object v36

    #@2ba
    const/16 v37, 0x1

    #@2bc
    aput-object v36, v35, v37

    #@2be
    .line 2643
    move-object/from16 v0, p0

    #@2c0
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@2c2
    move-object/from16 v36, v0

    #@2c4
    invoke-virtual/range {v36 .. v36}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    #@2c7
    move-result v36

    #@2c8
    invoke-static/range {v36 .. v36}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@2cb
    move-result-object v36

    #@2cc
    const/16 v37, 0x2

    #@2ce
    aput-object v36, v35, v37

    #@2d0
    .line 2641
    const v36, 0xc3cb

    #@2d3
    move/from16 v0, v36

    #@2d5
    move-object/from16 v1, v35

    #@2d7
    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    #@2da
    .line 2645
    new-instance v35, Ljava/lang/StringBuilder;

    #@2dc
    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    #@2df
    const-string/jumbo v36, "RAT switched "

    #@2e2
    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e5
    move-result-object v35

    #@2e6
    .line 2646
    move-object/from16 v0, p0

    #@2e8
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@2ea
    move-object/from16 v36, v0

    #@2ec
    invoke-virtual/range {v36 .. v36}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    #@2ef
    move-result v36

    #@2f0
    invoke-static/range {v36 .. v36}, Landroid/telephony/ServiceState;->rilRadioTechnologyToString(I)Ljava/lang/String;

    #@2f3
    move-result-object v36

    #@2f4
    .line 2645
    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f7
    move-result-object v35

    #@2f8
    .line 2647
    const-string/jumbo v36, " -> "

    #@2fb
    .line 2645
    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2fe
    move-result-object v35

    #@2ff
    .line 2649
    move-object/from16 v0, p0

    #@301
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@303
    move-object/from16 v36, v0

    #@305
    invoke-virtual/range {v36 .. v36}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    #@308
    move-result v36

    #@309
    .line 2648
    invoke-static/range {v36 .. v36}, Landroid/telephony/ServiceState;->rilRadioTechnologyToString(I)Ljava/lang/String;

    #@30c
    move-result-object v36

    #@30d
    .line 2645
    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@310
    move-result-object v35

    #@311
    .line 2649
    const-string/jumbo v36, " at cell "

    #@314
    .line 2645
    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@317
    move-result-object v35

    #@318
    move-object/from16 v0, v35

    #@31a
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@31d
    move-result-object v35

    #@31e
    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@321
    move-result-object v35

    #@322
    move-object/from16 v0, p0

    #@324
    move-object/from16 v1, v35

    #@326
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    #@329
    .line 2654
    .end local v7    # "cid":I
    .end local v25    # "loc":Landroid/telephony/gsm/GsmCellLocation;
    :cond_7
    move-object/from16 v0, p0

    #@32b
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@32d
    move-object/from16 v32, v0

    #@32f
    .line 2655
    .local v32, "tss":Landroid/telephony/ServiceState;
    move-object/from16 v0, p0

    #@331
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@333
    move-object/from16 v35, v0

    #@335
    move-object/from16 v0, v35

    #@337
    move-object/from16 v1, p0

    #@339
    iput-object v0, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@33b
    .line 2656
    move-object/from16 v0, v32

    #@33d
    move-object/from16 v1, p0

    #@33f
    iput-object v0, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@341
    .line 2658
    move-object/from16 v0, p0

    #@343
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@345
    move-object/from16 v35, v0

    #@347
    invoke-virtual/range {v35 .. v35}, Landroid/telephony/ServiceState;->setStateOutOfService()V

    #@34a
    .line 2661
    move-object/from16 v0, p0

    #@34c
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mCellLoc:Landroid/telephony/CellLocation;

    #@34e
    move-object/from16 v29, v0

    #@350
    check-cast v29, Landroid/telephony/gsm/GsmCellLocation;

    #@352
    .line 2662
    .local v29, "tcl":Landroid/telephony/gsm/GsmCellLocation;
    move-object/from16 v0, p0

    #@354
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewCellLoc:Landroid/telephony/CellLocation;

    #@356
    move-object/from16 v35, v0

    #@358
    move-object/from16 v0, v35

    #@35a
    move-object/from16 v1, p0

    #@35c
    iput-object v0, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mCellLoc:Landroid/telephony/CellLocation;

    #@35e
    .line 2663
    move-object/from16 v0, v29

    #@360
    move-object/from16 v1, p0

    #@362
    iput-object v0, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mNewCellLoc:Landroid/telephony/CellLocation;

    #@364
    .line 2665
    move-object/from16 v0, p0

    #@366
    iget v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewReasonDataDenied:I

    #@368
    move/from16 v35, v0

    #@36a
    move/from16 v0, v35

    #@36c
    move-object/from16 v1, p0

    #@36e
    iput v0, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mReasonDataDenied:I

    #@370
    .line 2666
    move-object/from16 v0, p0

    #@372
    iget v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewMaxDataCalls:I

    #@374
    move/from16 v35, v0

    #@376
    move/from16 v0, v35

    #@378
    move-object/from16 v1, p0

    #@37a
    iput v0, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mMaxDataCalls:I

    #@37c
    .line 2668
    if-eqz v20, :cond_8

    #@37e
    .line 2669
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ServiceStateTracker;->updatePhoneObject()V

    #@381
    .line 2672
    :cond_8
    if-eqz v19, :cond_9

    #@383
    .line 2673
    move-object/from16 v0, p0

    #@385
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@387
    move-object/from16 v35, v0

    #@389
    invoke-virtual/range {v35 .. v35}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    #@38c
    move-result v35

    #@38d
    move-object/from16 v0, p0

    #@38f
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@391
    move-object/from16 v36, v0

    #@393
    invoke-virtual/range {v36 .. v36}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    #@396
    move-result v36

    #@397
    move-object/from16 v0, v31

    #@399
    move/from16 v1, v35

    #@39b
    move/from16 v2, v36

    #@39d
    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->setDataNetworkTypeForPhone(II)V

    #@3a0
    .line 2676
    move-object/from16 v0, p0

    #@3a2
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@3a4
    move-object/from16 v35, v0

    #@3a6
    invoke-virtual/range {v35 .. v35}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    #@3a9
    move-result v35

    #@3aa
    .line 2675
    const/16 v36, 0x12

    #@3ac
    move/from16 v0, v36

    #@3ae
    move/from16 v1, v35

    #@3b0
    if-ne v0, v1, :cond_9

    #@3b2
    .line 2677
    const-string/jumbo v35, "pollStateDone: IWLAN enabled"

    #@3b5
    move-object/from16 v0, p0

    #@3b7
    move-object/from16 v1, v35

    #@3b9
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    #@3bc
    .line 2681
    :cond_9
    if-eqz v18, :cond_a

    #@3be
    .line 2682
    move-object/from16 v0, p0

    #@3c0
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNetworkAttachedRegistrants:Landroid/os/RegistrantList;

    #@3c2
    move-object/from16 v35, v0

    #@3c4
    invoke-virtual/range {v35 .. v35}, Landroid/os/RegistrantList;->notifyRegistrants()V

    #@3c7
    .line 2685
    new-instance v35, Ljava/lang/StringBuilder;

    #@3c9
    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    #@3cc
    const-string/jumbo v36, "pollStateDone: registering current mNitzUpdatedTime="

    #@3cf
    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d2
    move-result-object v35

    #@3d3
    .line 2686
    move-object/from16 v0, p0

    #@3d5
    iget-boolean v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNitzUpdatedTime:Z

    #@3d7
    move/from16 v36, v0

    #@3d9
    .line 2685
    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@3dc
    move-result-object v35

    #@3dd
    .line 2686
    const-string/jumbo v36, " changing to false"

    #@3e0
    .line 2685
    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e3
    move-result-object v35

    #@3e4
    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3e7
    move-result-object v35

    #@3e8
    move-object/from16 v0, p0

    #@3ea
    move-object/from16 v1, v35

    #@3ec
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    #@3ef
    .line 2688
    const/16 v35, 0x0

    #@3f1
    move/from16 v0, v35

    #@3f3
    move-object/from16 v1, p0

    #@3f5
    iput-boolean v0, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mNitzUpdatedTime:Z

    #@3f7
    .line 2691
    :cond_a
    if-eqz v10, :cond_c

    #@3f9
    .line 2694
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ServiceStateTracker;->updateSpnDisplay()V

    #@3fc
    .line 2696
    move-object/from16 v0, p0

    #@3fe
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@400
    move-object/from16 v35, v0

    #@402
    invoke-virtual/range {v35 .. v35}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    #@405
    move-result v35

    #@406
    move-object/from16 v0, p0

    #@408
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@40a
    move-object/from16 v36, v0

    #@40c
    invoke-virtual/range {v36 .. v36}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    #@40f
    move-result-object v36

    #@410
    move-object/from16 v0, v31

    #@412
    move/from16 v1, v35

    #@414
    move-object/from16 v2, v36

    #@416
    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->setNetworkOperatorNameForPhone(ILjava/lang/String;)V

    #@419
    .line 2698
    move-object/from16 v0, p0

    #@41b
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@41d
    move-object/from16 v35, v0

    #@41f
    invoke-virtual/range {v35 .. v35}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    #@422
    move-result v35

    #@423
    move-object/from16 v0, v31

    #@425
    move/from16 v1, v35

    #@427
    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getNetworkOperatorForPhone(I)Ljava/lang/String;

    #@42a
    move-result-object v28

    #@42b
    .line 2699
    .local v28, "prevOperatorNumeric":Ljava/lang/String;
    move-object/from16 v0, p0

    #@42d
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@42f
    move-object/from16 v35, v0

    #@431
    invoke-virtual/range {v35 .. v35}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    #@434
    move-result-object v27

    #@435
    .line 2700
    .local v27, "operatorNumeric":Ljava/lang/String;
    move-object/from16 v0, p0

    #@437
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@439
    move-object/from16 v35, v0

    #@43b
    invoke-virtual/range {v35 .. v35}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    #@43e
    move-result v35

    #@43f
    move-object/from16 v0, v31

    #@441
    move/from16 v1, v35

    #@443
    move-object/from16 v2, v27

    #@445
    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->setNetworkOperatorNumericForPhone(ILjava/lang/String;)V

    #@448
    .line 2702
    move-object/from16 v0, p0

    #@44a
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@44c
    move-object/from16 v35, v0

    #@44e
    invoke-virtual/range {v35 .. v35}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    #@451
    move-result-object v35

    #@452
    .line 2701
    move-object/from16 v0, p0

    #@454
    move-object/from16 v1, v27

    #@456
    move-object/from16 v2, v28

    #@458
    move-object/from16 v3, v35

    #@45a
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->updateCarrierMccMncConfiguration(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    #@45d
    .line 2703
    if-nez v27, :cond_2f

    #@45f
    .line 2704
    const-string/jumbo v35, "operatorNumeric is null"

    #@462
    move-object/from16 v0, p0

    #@464
    move-object/from16 v1, v35

    #@466
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    #@469
    .line 2705
    move-object/from16 v0, p0

    #@46b
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@46d
    move-object/from16 v35, v0

    #@46f
    invoke-virtual/range {v35 .. v35}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    #@472
    move-result v35

    #@473
    const-string/jumbo v36, ""

    #@476
    move-object/from16 v0, v31

    #@478
    move/from16 v1, v35

    #@47a
    move-object/from16 v2, v36

    #@47c
    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->setNetworkCountryIsoForPhone(ILjava/lang/String;)V

    #@47f
    .line 2706
    const/16 v35, 0x0

    #@481
    move/from16 v0, v35

    #@483
    move-object/from16 v1, p0

    #@485
    iput-boolean v0, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mGotCountryCode:Z

    #@487
    .line 2707
    const/16 v35, 0x0

    #@489
    move/from16 v0, v35

    #@48b
    move-object/from16 v1, p0

    #@48d
    iput-boolean v0, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mNitzUpdatedTime:Z

    #@48f
    .line 2758
    :cond_b
    :goto_e
    move-object/from16 v0, p0

    #@491
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@493
    move-object/from16 v35, v0

    #@495
    invoke-virtual/range {v35 .. v35}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    #@498
    move-result v35

    #@499
    move-object/from16 v0, p0

    #@49b
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@49d
    move-object/from16 v36, v0

    #@49f
    invoke-virtual/range {v36 .. v36}, Landroid/telephony/ServiceState;->getVoiceRoaming()Z

    #@4a2
    move-result v36

    #@4a3
    move-object/from16 v0, v31

    #@4a5
    move/from16 v1, v35

    #@4a7
    move/from16 v2, v36

    #@4a9
    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->setNetworkRoamingForPhone(IZ)V

    #@4ac
    .line 2760
    move-object/from16 v0, p0

    #@4ae
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@4b0
    move-object/from16 v35, v0

    #@4b2
    move-object/from16 v0, p0

    #@4b4
    move-object/from16 v1, v35

    #@4b6
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->setRoamingType(Landroid/telephony/ServiceState;)V

    #@4b9
    .line 2761
    new-instance v35, Ljava/lang/StringBuilder;

    #@4bb
    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    #@4be
    const-string/jumbo v36, "Broadcasting ServiceState : "

    #@4c1
    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c4
    move-result-object v35

    #@4c5
    move-object/from16 v0, p0

    #@4c7
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@4c9
    move-object/from16 v36, v0

    #@4cb
    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4ce
    move-result-object v35

    #@4cf
    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4d2
    move-result-object v35

    #@4d3
    move-object/from16 v0, p0

    #@4d5
    move-object/from16 v1, v35

    #@4d7
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    #@4da
    .line 2762
    move-object/from16 v0, p0

    #@4dc
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@4de
    move-object/from16 v35, v0

    #@4e0
    move-object/from16 v0, p0

    #@4e2
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@4e4
    move-object/from16 v36, v0

    #@4e6
    invoke-virtual/range {v35 .. v36}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifyServiceStateChanged(Landroid/telephony/ServiceState;)V

    #@4e9
    .line 2764
    invoke-static {}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->getInstance()Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    #@4ec
    move-result-object v35

    #@4ed
    move-object/from16 v0, p0

    #@4ef
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@4f1
    move-object/from16 v36, v0

    #@4f3
    invoke-virtual/range {v36 .. v36}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    #@4f6
    move-result v36

    #@4f7
    move-object/from16 v0, p0

    #@4f9
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@4fb
    move-object/from16 v37, v0

    #@4fd
    invoke-virtual/range {v35 .. v37}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeServiceStateChanged(ILandroid/telephony/ServiceState;)V

    #@500
    .line 2767
    .end local v27    # "operatorNumeric":Ljava/lang/String;
    .end local v28    # "prevOperatorNumeric":Ljava/lang/String;
    :cond_c
    if-nez v15, :cond_d

    #@502
    if-nez v16, :cond_d

    #@504
    if-nez v18, :cond_d

    #@506
    if-eqz v14, :cond_e

    #@508
    .line 2768
    :cond_d
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/ServiceStateTracker;->logAttachChange()V

    #@50b
    .line 2771
    :cond_e
    if-eqz v15, :cond_f

    #@50d
    .line 2772
    move-object/from16 v0, p0

    #@50f
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mAttachedRegistrants:Landroid/os/RegistrantList;

    #@511
    move-object/from16 v35, v0

    #@513
    invoke-virtual/range {v35 .. v35}, Landroid/os/RegistrantList;->notifyRegistrants()V

    #@516
    .line 2775
    :cond_f
    if-eqz v16, :cond_10

    #@518
    .line 2776
    move-object/from16 v0, p0

    #@51a
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mDetachedRegistrants:Landroid/os/RegistrantList;

    #@51c
    move-object/from16 v35, v0

    #@51e
    invoke-virtual/range {v35 .. v35}, Landroid/os/RegistrantList;->notifyRegistrants()V

    #@521
    .line 2779
    :cond_10
    if-nez v19, :cond_11

    #@523
    if-eqz v20, :cond_12

    #@525
    .line 2780
    :cond_11
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/ServiceStateTracker;->logRatChange()V

    #@528
    .line 2783
    :cond_12
    if-nez v11, :cond_13

    #@52a
    if-eqz v19, :cond_14

    #@52c
    .line 2784
    :cond_13
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ServiceStateTracker;->notifyDataRegStateRilRadioTechnologyChanged()V

    #@52f
    .line 2787
    move-object/from16 v0, p0

    #@531
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@533
    move-object/from16 v35, v0

    #@535
    invoke-virtual/range {v35 .. v35}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    #@538
    move-result v35

    #@539
    .line 2786
    const/16 v36, 0x12

    #@53b
    move/from16 v0, v36

    #@53d
    move/from16 v1, v35

    #@53f
    if-ne v0, v1, :cond_36

    #@541
    .line 2788
    move-object/from16 v0, p0

    #@543
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@545
    move-object/from16 v35, v0

    #@547
    const-string/jumbo v36, "iwlanAvailable"

    #@54a
    invoke-virtual/range {v35 .. v36}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifyDataConnection(Ljava/lang/String;)V

    #@54d
    .line 2794
    :cond_14
    :goto_f
    if-nez v23, :cond_15

    #@54f
    if-nez v22, :cond_15

    #@551
    if-nez v13, :cond_15

    #@553
    if-eqz v12, :cond_16

    #@555
    .line 2795
    :cond_15
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/ServiceStateTracker;->logRoamingChange()V

    #@558
    .line 2798
    :cond_16
    if-eqz v23, :cond_17

    #@55a
    .line 2799
    move-object/from16 v0, p0

    #@55c
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mVoiceRoamingOnRegistrants:Landroid/os/RegistrantList;

    #@55e
    move-object/from16 v35, v0

    #@560
    invoke-virtual/range {v35 .. v35}, Landroid/os/RegistrantList;->notifyRegistrants()V

    #@563
    .line 2802
    :cond_17
    if-eqz v22, :cond_18

    #@565
    .line 2803
    move-object/from16 v0, p0

    #@567
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mVoiceRoamingOffRegistrants:Landroid/os/RegistrantList;

    #@569
    move-object/from16 v35, v0

    #@56b
    invoke-virtual/range {v35 .. v35}, Landroid/os/RegistrantList;->notifyRegistrants()V

    #@56e
    .line 2806
    :cond_18
    if-eqz v13, :cond_19

    #@570
    .line 2807
    move-object/from16 v0, p0

    #@572
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mDataRoamingOnRegistrants:Landroid/os/RegistrantList;

    #@574
    move-object/from16 v35, v0

    #@576
    invoke-virtual/range {v35 .. v35}, Landroid/os/RegistrantList;->notifyRegistrants()V

    #@579
    .line 2810
    :cond_19
    if-eqz v12, :cond_1a

    #@57b
    .line 2811
    move-object/from16 v0, p0

    #@57d
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mDataRoamingOffRegistrants:Landroid/os/RegistrantList;

    #@57f
    move-object/from16 v35, v0

    #@581
    invoke-virtual/range {v35 .. v35}, Landroid/os/RegistrantList;->notifyRegistrants()V

    #@584
    .line 2814
    :cond_1a
    if-eqz v17, :cond_1b

    #@586
    .line 2815
    move-object/from16 v0, p0

    #@588
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@58a
    move-object/from16 v35, v0

    #@58c
    invoke-virtual/range {v35 .. v35}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifyLocationChanged()V

    #@58f
    .line 2818
    :cond_1b
    move-object/from16 v0, p0

    #@591
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@593
    move-object/from16 v35, v0

    #@595
    invoke-virtual/range {v35 .. v35}, Landroid/telephony/ServiceState;->getDataRegState()I

    #@598
    move-result v35

    #@599
    move-object/from16 v0, p0

    #@59b
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@59d
    move-object/from16 v36, v0

    #@59f
    invoke-virtual/range {v36 .. v36}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    #@5a2
    move-result v36

    #@5a3
    move-object/from16 v0, p0

    #@5a5
    move/from16 v1, v35

    #@5a7
    move/from16 v2, v36

    #@5a9
    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->isGprsConsistent(II)Z

    #@5ac
    move-result v35

    #@5ad
    if-nez v35, :cond_38

    #@5af
    .line 2819
    move-object/from16 v0, p0

    #@5b1
    iget-boolean v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mStartedGprsRegCheck:Z

    #@5b3
    move/from16 v35, v0

    #@5b5
    if-nez v35, :cond_1c

    #@5b7
    move-object/from16 v0, p0

    #@5b9
    iget-boolean v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mReportedGprsNoReg:Z

    #@5bb
    move/from16 v35, v0

    #@5bd
    if-eqz v35, :cond_37

    #@5bf
    .line 2557
    :cond_1c
    :goto_10
    return-void

    #@5c0
    .line 2576
    .end local v10    # "hasChanged":Z
    .end local v11    # "hasDataRegStateChanged":Z
    .end local v12    # "hasDataRoamingOff":Z
    .end local v14    # "hasDeregistered":Z
    .end local v15    # "hasGprsAttached":Z
    .end local v16    # "hasGprsDetached":Z
    .end local v17    # "hasLocationChanged":Z
    .end local v18    # "hasRegistered":Z
    .end local v19    # "hasRilDataRadioTechnologyChanged":Z
    .end local v20    # "hasRilVoiceRadioTechnologyChanged":Z
    .end local v21    # "hasVoiceRegStateChanged":Z
    .end local v22    # "hasVoiceRoamingOff":Z
    .end local v29    # "tcl":Landroid/telephony/gsm/GsmCellLocation;
    .end local v31    # "tm":Landroid/telephony/TelephonyManager;
    .end local v32    # "tss":Landroid/telephony/ServiceState;
    :cond_1d
    const/16 v18, 0x0

    #@5c2
    .restart local v18    # "hasRegistered":Z
    goto/16 :goto_0

    #@5c4
    .line 2575
    .end local v18    # "hasRegistered":Z
    :cond_1e
    const/16 v18, 0x0

    #@5c6
    .restart local v18    # "hasRegistered":Z
    goto/16 :goto_0

    #@5c8
    .line 2580
    :cond_1f
    const/4 v14, 0x0

    #@5c9
    .restart local v14    # "hasDeregistered":Z
    goto/16 :goto_1

    #@5cb
    .line 2579
    .end local v14    # "hasDeregistered":Z
    :cond_20
    const/4 v14, 0x0

    #@5cc
    .restart local v14    # "hasDeregistered":Z
    goto/16 :goto_1

    #@5ce
    .line 2584
    :cond_21
    const/4 v15, 0x0

    #@5cf
    .restart local v15    # "hasGprsAttached":Z
    goto/16 :goto_2

    #@5d1
    .line 2583
    .end local v15    # "hasGprsAttached":Z
    :cond_22
    const/4 v15, 0x0

    #@5d2
    .restart local v15    # "hasGprsAttached":Z
    goto/16 :goto_2

    #@5d4
    .line 2588
    :cond_23
    const/16 v16, 0x0

    #@5d6
    .restart local v16    # "hasGprsDetached":Z
    goto/16 :goto_3

    #@5d8
    .line 2587
    .end local v16    # "hasGprsDetached":Z
    :cond_24
    const/16 v16, 0x0

    #@5da
    .restart local v16    # "hasGprsDetached":Z
    goto/16 :goto_3

    #@5dc
    .line 2591
    :cond_25
    const/4 v11, 0x0

    #@5dd
    .restart local v11    # "hasDataRegStateChanged":Z
    goto/16 :goto_4

    #@5df
    .line 2594
    :cond_26
    const/16 v21, 0x0

    #@5e1
    .restart local v21    # "hasVoiceRegStateChanged":Z
    goto/16 :goto_5

    #@5e3
    .line 2596
    :cond_27
    const/16 v17, 0x1

    #@5e5
    goto/16 :goto_6

    #@5e7
    .line 2605
    .restart local v17    # "hasLocationChanged":Z
    :cond_28
    const/16 v20, 0x0

    #@5e9
    .restart local v20    # "hasRilVoiceRadioTechnologyChanged":Z
    goto/16 :goto_7

    #@5eb
    .line 2608
    :cond_29
    const/16 v19, 0x0

    #@5ed
    .restart local v19    # "hasRilDataRadioTechnologyChanged":Z
    goto/16 :goto_8

    #@5ef
    .line 2610
    :cond_2a
    const/4 v10, 0x1

    #@5f0
    .restart local v10    # "hasChanged":Z
    goto/16 :goto_9

    #@5f2
    .line 2612
    :cond_2b
    const/16 v23, 0x0

    #@5f4
    .local v23, "hasVoiceRoamingOn":Z
    goto/16 :goto_a

    #@5f6
    .line 2614
    .end local v23    # "hasVoiceRoamingOn":Z
    :cond_2c
    const/16 v22, 0x1

    #@5f8
    .restart local v22    # "hasVoiceRoamingOff":Z
    goto/16 :goto_b

    #@5fa
    .line 2616
    :cond_2d
    const/4 v13, 0x0

    #@5fb
    .local v13, "hasDataRoamingOn":Z
    goto/16 :goto_c

    #@5fd
    .line 2618
    .end local v13    # "hasDataRoamingOn":Z
    :cond_2e
    const/4 v12, 0x1

    #@5fe
    .restart local v12    # "hasDataRoamingOff":Z
    goto/16 :goto_d

    #@600
    .line 2709
    .restart local v27    # "operatorNumeric":Ljava/lang/String;
    .restart local v28    # "prevOperatorNumeric":Ljava/lang/String;
    .restart local v29    # "tcl":Landroid/telephony/gsm/GsmCellLocation;
    .restart local v31    # "tm":Landroid/telephony/TelephonyManager;
    .restart local v32    # "tss":Landroid/telephony/ServiceState;
    :cond_2f
    const-string/jumbo v24, ""

    #@603
    .line 2710
    .local v24, "iso":Ljava/lang/String;
    const-string/jumbo v26, ""

    #@606
    .line 2712
    .local v26, "mcc":Ljava/lang/String;
    const/16 v35, 0x0

    #@608
    const/16 v36, 0x3

    #@60a
    :try_start_0
    move-object/from16 v0, v27

    #@60c
    move/from16 v1, v35

    #@60e
    move/from16 v2, v36

    #@610
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@613
    move-result-object v26

    #@614
    .line 2713
    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@617
    move-result v35

    #@618
    invoke-static/range {v35 .. v35}, Lcom/android/internal/telephony/MccTable;->countryCodeForMcc(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    #@61b
    move-result-object v24

    #@61c
    .line 2720
    :goto_11
    move-object/from16 v0, p0

    #@61e
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@620
    move-object/from16 v35, v0

    #@622
    invoke-virtual/range {v35 .. v35}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    #@625
    move-result v35

    #@626
    move-object/from16 v0, v31

    #@628
    move/from16 v1, v35

    #@62a
    move-object/from16 v2, v24

    #@62c
    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->setNetworkCountryIsoForPhone(ILjava/lang/String;)V

    #@62f
    .line 2721
    const/16 v35, 0x1

    #@631
    move/from16 v0, v35

    #@633
    move-object/from16 v1, p0

    #@635
    iput-boolean v0, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mGotCountryCode:Z

    #@637
    .line 2723
    const/16 v34, 0x0

    #@639
    .line 2725
    .local v34, "zone":Ljava/util/TimeZone;
    move-object/from16 v0, p0

    #@63b
    iget-boolean v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNitzUpdatedTime:Z

    #@63d
    move/from16 v35, v0

    #@63f
    if-nez v35, :cond_30

    #@641
    const-string/jumbo v35, "000"

    #@644
    move-object/from16 v0, v26

    #@646
    move-object/from16 v1, v35

    #@648
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@64b
    move-result v35

    #@64c
    if-eqz v35, :cond_31

    #@64e
    .line 2752
    .end local v34    # "zone":Ljava/util/TimeZone;
    :cond_30
    :goto_12
    move-object/from16 v0, p0

    #@650
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@652
    move-object/from16 v35, v0

    #@654
    .line 2753
    move-object/from16 v0, p0

    #@656
    iget-boolean v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNeedFixZoneAfterNitz:Z

    #@658
    move/from16 v36, v0

    #@65a
    .line 2752
    move-object/from16 v0, p0

    #@65c
    move-object/from16 v1, v35

    #@65e
    move-object/from16 v2, v27

    #@660
    move-object/from16 v3, v28

    #@662
    move/from16 v4, v36

    #@664
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/ServiceStateTracker;->shouldFixTimeZoneNow(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Ljava/lang/String;Z)Z

    #@667
    move-result v35

    #@668
    if-eqz v35, :cond_b

    #@66a
    .line 2754
    move-object/from16 v0, p0

    #@66c
    move-object/from16 v1, v24

    #@66e
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->fixTimeZone(Ljava/lang/String;)V

    #@671
    goto/16 :goto_e

    #@673
    .line 2716
    :catch_0
    move-exception v9

    #@674
    .line 2717
    .local v9, "ex":Ljava/lang/StringIndexOutOfBoundsException;
    new-instance v35, Ljava/lang/StringBuilder;

    #@676
    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    #@679
    const-string/jumbo v36, "pollStateDone: countryCodeForMcc error"

    #@67c
    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@67f
    move-result-object v35

    #@680
    move-object/from16 v0, v35

    #@682
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@685
    move-result-object v35

    #@686
    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@689
    move-result-object v35

    #@68a
    move-object/from16 v0, p0

    #@68c
    move-object/from16 v1, v35

    #@68e
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->loge(Ljava/lang/String;)V

    #@691
    goto :goto_11

    #@692
    .line 2714
    .end local v9    # "ex":Ljava/lang/StringIndexOutOfBoundsException;
    :catch_1
    move-exception v8

    #@693
    .line 2715
    .local v8, "ex":Ljava/lang/NumberFormatException;
    new-instance v35, Ljava/lang/StringBuilder;

    #@695
    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    #@698
    const-string/jumbo v36, "pollStateDone: countryCodeForMcc error"

    #@69b
    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@69e
    move-result-object v35

    #@69f
    move-object/from16 v0, v35

    #@6a1
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@6a4
    move-result-object v35

    #@6a5
    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6a8
    move-result-object v35

    #@6a9
    move-object/from16 v0, p0

    #@6ab
    move-object/from16 v1, v35

    #@6ad
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->loge(Ljava/lang/String;)V

    #@6b0
    goto/16 :goto_11

    #@6b2
    .line 2725
    .end local v8    # "ex":Ljava/lang/NumberFormatException;
    .restart local v34    # "zone":Ljava/util/TimeZone;
    :cond_31
    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@6b5
    move-result v35

    #@6b6
    if-nez v35, :cond_30

    #@6b8
    .line 2726
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getAutoTimeZone()Z

    #@6bb
    move-result v35

    #@6bc
    .line 2725
    if-eqz v35, :cond_30

    #@6be
    .line 2730
    const-string/jumbo v35, "telephony.test.ignore.nitz"

    #@6c1
    const/16 v36, 0x0

    #@6c3
    .line 2729
    invoke-static/range {v35 .. v36}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    #@6c6
    move-result v35

    #@6c7
    if-eqz v35, :cond_34

    #@6c9
    .line 2731
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@6cc
    move-result-wide v36

    #@6cd
    const-wide/16 v38, 0x1

    #@6cf
    and-long v36, v36, v38

    #@6d1
    const-wide/16 v38, 0x0

    #@6d3
    cmp-long v35, v36, v38

    #@6d5
    if-nez v35, :cond_33

    #@6d7
    const/16 v30, 0x1

    #@6d9
    .line 2733
    .local v30, "testOneUniqueOffsetPath":Z
    :goto_13
    invoke-static/range {v24 .. v24}, Landroid/util/TimeUtils;->getTimeZonesWithUniqueOffsets(Ljava/lang/String;)Ljava/util/ArrayList;

    #@6dc
    move-result-object v33

    #@6dd
    .line 2734
    .local v33, "uniqueZones":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/TimeZone;>;"
    invoke-virtual/range {v33 .. v33}, Ljava/util/ArrayList;->size()I

    #@6e0
    move-result v35

    #@6e1
    const/16 v36, 0x1

    #@6e3
    move/from16 v0, v35

    #@6e5
    move/from16 v1, v36

    #@6e7
    if-eq v0, v1, :cond_32

    #@6e9
    if-eqz v30, :cond_35

    #@6eb
    .line 2735
    :cond_32
    const/16 v35, 0x0

    #@6ed
    move-object/from16 v0, v33

    #@6ef
    move/from16 v1, v35

    #@6f1
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@6f4
    move-result-object v34

    #@6f5
    .end local v34    # "zone":Ljava/util/TimeZone;
    check-cast v34, Ljava/util/TimeZone;

    #@6f7
    .line 2737
    .local v34, "zone":Ljava/util/TimeZone;
    new-instance v35, Ljava/lang/StringBuilder;

    #@6f9
    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    #@6fc
    const-string/jumbo v36, "pollStateDone: no nitz but one TZ for iso-cc="

    #@6ff
    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@702
    move-result-object v35

    #@703
    move-object/from16 v0, v35

    #@705
    move-object/from16 v1, v24

    #@707
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@70a
    move-result-object v35

    #@70b
    .line 2738
    const-string/jumbo v36, " with zone.getID="

    #@70e
    .line 2737
    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@711
    move-result-object v35

    #@712
    .line 2738
    invoke-virtual/range {v34 .. v34}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    #@715
    move-result-object v36

    #@716
    .line 2737
    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@719
    move-result-object v35

    #@71a
    .line 2739
    const-string/jumbo v36, " testOneUniqueOffsetPath="

    #@71d
    .line 2737
    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@720
    move-result-object v35

    #@721
    move-object/from16 v0, v35

    #@723
    move/from16 v1, v30

    #@725
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@728
    move-result-object v35

    #@729
    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@72c
    move-result-object v35

    #@72d
    move-object/from16 v0, p0

    #@72f
    move-object/from16 v1, v35

    #@731
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    #@734
    .line 2741
    invoke-virtual/range {v34 .. v34}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    #@737
    move-result-object v35

    #@738
    move-object/from16 v0, p0

    #@73a
    move-object/from16 v1, v35

    #@73c
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->setAndBroadcastNetworkSetTimeZone(Ljava/lang/String;)V

    #@73f
    goto/16 :goto_12

    #@741
    .line 2731
    .end local v30    # "testOneUniqueOffsetPath":Z
    .end local v33    # "uniqueZones":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/TimeZone;>;"
    .local v34, "zone":Ljava/util/TimeZone;
    :cond_33
    const/16 v30, 0x0

    #@743
    .restart local v30    # "testOneUniqueOffsetPath":Z
    goto :goto_13

    #@744
    .line 2729
    .end local v30    # "testOneUniqueOffsetPath":Z
    :cond_34
    const/16 v30, 0x0

    #@746
    .restart local v30    # "testOneUniqueOffsetPath":Z
    goto :goto_13

    #@747
    .line 2744
    .restart local v33    # "uniqueZones":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/TimeZone;>;"
    :cond_35
    new-instance v35, Ljava/lang/StringBuilder;

    #@749
    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    #@74c
    const-string/jumbo v36, "pollStateDone: there are "

    #@74f
    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@752
    move-result-object v35

    #@753
    invoke-virtual/range {v33 .. v33}, Ljava/util/ArrayList;->size()I

    #@756
    move-result v36

    #@757
    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@75a
    move-result-object v35

    #@75b
    .line 2745
    const-string/jumbo v36, " unique offsets for iso-cc=\'"

    #@75e
    .line 2744
    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@761
    move-result-object v35

    #@762
    move-object/from16 v0, v35

    #@764
    move-object/from16 v1, v24

    #@766
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@769
    move-result-object v35

    #@76a
    .line 2746
    const-string/jumbo v36, " testOneUniqueOffsetPath="

    #@76d
    .line 2744
    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@770
    move-result-object v35

    #@771
    move-object/from16 v0, v35

    #@773
    move/from16 v1, v30

    #@775
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@778
    move-result-object v35

    #@779
    .line 2747
    const-string/jumbo v36, "\', do nothing"

    #@77c
    .line 2744
    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@77f
    move-result-object v35

    #@780
    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@783
    move-result-object v35

    #@784
    move-object/from16 v0, p0

    #@786
    move-object/from16 v1, v35

    #@788
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    #@78b
    goto/16 :goto_12

    #@78d
    .line 2790
    .end local v24    # "iso":Ljava/lang/String;
    .end local v26    # "mcc":Ljava/lang/String;
    .end local v27    # "operatorNumeric":Ljava/lang/String;
    .end local v28    # "prevOperatorNumeric":Ljava/lang/String;
    .end local v30    # "testOneUniqueOffsetPath":Z
    .end local v33    # "uniqueZones":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/TimeZone;>;"
    .end local v34    # "zone":Ljava/util/TimeZone;
    :cond_36
    move-object/from16 v0, p0

    #@78f
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@791
    move-object/from16 v35, v0

    #@793
    const/16 v36, 0x0

    #@795
    invoke-virtual/range {v35 .. v36}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifyDataConnection(Ljava/lang/String;)V

    #@798
    goto/16 :goto_f

    #@79a
    .line 2820
    :cond_37
    const/16 v35, 0x1

    #@79c
    move/from16 v0, v35

    #@79e
    move-object/from16 v1, p0

    #@7a0
    iput-boolean v0, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mStartedGprsRegCheck:Z

    #@7a2
    .line 2823
    move-object/from16 v0, p0

    #@7a4
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@7a6
    move-object/from16 v35, v0

    #@7a8
    invoke-virtual/range {v35 .. v35}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    #@7ab
    move-result-object v35

    #@7ac
    invoke-virtual/range {v35 .. v35}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@7af
    move-result-object v35

    #@7b0
    .line 2824
    const-string/jumbo v36, "gprs_register_check_period_ms"

    #@7b3
    .line 2825
    const v37, 0xea60

    #@7b6
    .line 2822
    invoke-static/range {v35 .. v37}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@7b9
    move-result v6

    #@7ba
    .line 2826
    .local v6, "check_period":I
    const/16 v35, 0x16

    #@7bc
    move-object/from16 v0, p0

    #@7be
    move/from16 v1, v35

    #@7c0
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    #@7c3
    move-result-object v35

    #@7c4
    .line 2827
    int-to-long v0, v6

    #@7c5
    move-wide/from16 v36, v0

    #@7c7
    .line 2826
    move-object/from16 v0, p0

    #@7c9
    move-object/from16 v1, v35

    #@7cb
    move-wide/from16 v2, v36

    #@7cd
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->sendMessageDelayed(Landroid/os/Message;J)Z

    #@7d0
    goto/16 :goto_10

    #@7d2
    .line 2830
    .end local v6    # "check_period":I
    :cond_38
    const/16 v35, 0x0

    #@7d4
    move/from16 v0, v35

    #@7d6
    move-object/from16 v1, p0

    #@7d8
    iput-boolean v0, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mReportedGprsNoReg:Z

    #@7da
    goto/16 :goto_10
.end method

.method private queueNextSignalStrengthPoll()V
    .locals 4

    #@0
    .prologue
    .line 4175
    iget-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDontPollSignalStrength:Z

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 4178
    return-void

    #@5
    .line 4183
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->obtainMessage()Landroid/os/Message;

    #@8
    move-result-object v0

    #@9
    .line 4184
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0xa

    #@b
    iput v1, v0, Landroid/os/Message;->what:I

    #@d
    .line 4189
    const-wide/16 v2, 0x4e20

    #@f
    invoke-virtual {p0, v0, v2, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->sendMessageDelayed(Landroid/os/Message;J)Z

    #@12
    .line 4174
    return-void
.end method

.method private regCodeIsRoaming(I)Z
    .locals 1
    .param p1, "code"    # I

    #@0
    .prologue
    .line 3534
    const/4 v0, 0x5

    #@1
    if-ne v0, p1, :cond_0

    #@3
    const/4 v0, 0x1

    #@4
    :goto_0
    return v0

    #@5
    :cond_0
    const/4 v0, 0x0

    #@6
    goto :goto_0
.end method

.method private regCodeToServiceState(I)I
    .locals 3
    .param p1, "code"    # I

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 3508
    packed-switch p1, :pswitch_data_0

    #@4
    .line 3524
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    const-string/jumbo v1, "regCodeToServiceState: unexpected service state "

    #@c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@13
    move-result-object v0

    #@14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17
    move-result-object v0

    #@18
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->loge(Ljava/lang/String;)V

    #@1b
    .line 3525
    return v2

    #@1c
    .line 3517
    :pswitch_1
    return v2

    #@1d
    .line 3521
    :pswitch_2
    const/4 v0, 0x0

    #@1e
    return v0

    #@1f
    .line 3508
    nop

    #@20
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private revertToNitzTime()V
    .locals 6

    #@0
    .prologue
    const-wide/16 v4, 0x0

    #@2
    const/4 v2, 0x0

    #@3
    .line 4068
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCr:Landroid/content/ContentResolver;

    #@5
    const-string/jumbo v1, "auto_time"

    #@8
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@b
    move-result v0

    #@c
    if-nez v0, :cond_0

    #@e
    .line 4069
    return-void

    #@f
    .line 4072
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    const-string/jumbo v1, "Reverting to NITZ Time: mSavedTime="

    #@17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v0

    #@1b
    iget-wide v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSavedTime:J

    #@1d
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@20
    move-result-object v0

    #@21
    const-string/jumbo v1, " mSavedAtTime="

    #@24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v0

    #@28
    .line 4073
    iget-wide v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSavedAtTime:J

    #@2a
    .line 4072
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v0

    #@2e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@31
    move-result-object v0

    #@32
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    #@35
    .line 4075
    iget-wide v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSavedTime:J

    #@37
    cmp-long v0, v0, v4

    #@39
    if-eqz v0, :cond_1

    #@3b
    iget-wide v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSavedAtTime:J

    #@3d
    cmp-long v0, v0, v4

    #@3f
    if-eqz v0, :cond_1

    #@41
    .line 4076
    iget-wide v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSavedTime:J

    #@43
    .line 4077
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@46
    move-result-wide v2

    #@47
    iget-wide v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSavedAtTime:J

    #@49
    sub-long/2addr v2, v4

    #@4a
    .line 4076
    add-long/2addr v0, v2

    #@4b
    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->setAndBroadcastNetworkSetTime(J)V

    #@4e
    .line 4067
    :cond_1
    return-void
.end method

.method private revertToNitzTimeZone()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 4082
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCr:Landroid/content/ContentResolver;

    #@3
    const-string/jumbo v1, "auto_time_zone"

    #@6
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@9
    move-result v0

    #@a
    if-nez v0, :cond_0

    #@c
    .line 4083
    return-void

    #@d
    .line 4085
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    const-string/jumbo v1, "Reverting to NITZ TimeZone: tz=\'"

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSavedTimeZone:Ljava/lang/String;

    #@1b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v0

    #@23
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    #@26
    .line 4086
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSavedTimeZone:Ljava/lang/String;

    #@28
    if-eqz v0, :cond_1

    #@2a
    .line 4087
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSavedTimeZone:Ljava/lang/String;

    #@2c
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->setAndBroadcastNetworkSetTimeZone(Ljava/lang/String;)V

    #@2f
    .line 4081
    :cond_1
    return-void
.end method

.method private saveCdmaSubscriptionSource(I)V
    .locals 4
    .param p1, "source"    # I

    #@0
    .prologue
    .line 4611
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "Storing cdma subscription source: "

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13
    move-result-object v0

    #@14
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    #@17
    .line 4612
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@19
    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    #@1c
    move-result-object v0

    #@1d
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@20
    move-result-object v0

    #@21
    .line 4613
    const-string/jumbo v1, "subscription_mode"

    #@24
    .line 4612
    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    #@27
    .line 4615
    new-instance v0, Ljava/lang/StringBuilder;

    #@29
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@2c
    const-string/jumbo v1, "Read from settings: "

    #@2f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v0

    #@33
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@35
    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    #@38
    move-result-object v1

    #@39
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@3c
    move-result-object v1

    #@3d
    .line 4616
    const-string/jumbo v2, "subscription_mode"

    #@40
    const/4 v3, -0x1

    #@41
    .line 4615
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@44
    move-result v1

    #@45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@48
    move-result-object v0

    #@49
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4c
    move-result-object v0

    #@4d
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    #@50
    .line 4610
    return-void
.end method

.method private saveNitzTime(J)V
    .locals 3
    .param p1, "time"    # J

    #@0
    .prologue
    .line 4025
    iput-wide p1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSavedTime:J

    #@2
    .line 4026
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@5
    move-result-wide v0

    #@6
    iput-wide v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSavedAtTime:J

    #@8
    .line 4024
    return-void
.end method

.method private saveNitzTimeZone(Ljava/lang/String;)V
    .locals 0
    .param p1, "zoneId"    # Ljava/lang/String;

    #@0
    .prologue
    .line 4021
    iput-object p1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSavedTimeZone:Ljava/lang/String;

    #@2
    .line 4020
    return-void
.end method

.method private setAndBroadcastNetworkSetTime(J)V
    .locals 3
    .param p1, "time"    # J

    #@0
    .prologue
    .line 4057
    new-instance v1, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v2, "setAndBroadcastNetworkSetTime: time="

    #@8
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v1

    #@c
    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@f
    move-result-object v1

    #@10
    const-string/jumbo v2, "ms"

    #@13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a
    move-result-object v1

    #@1b
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    #@1e
    .line 4058
    invoke-static {p1, p2}, Landroid/os/SystemClock;->setCurrentTimeMillis(J)Z

    #@21
    .line 4059
    new-instance v0, Landroid/content/Intent;

    #@23
    const-string/jumbo v1, "android.intent.action.NETWORK_SET_TIME"

    #@26
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@29
    .line 4060
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x20000000

    #@2b
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@2e
    .line 4061
    const-string/jumbo v1, "time"

    #@31
    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    #@34
    .line 4062
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@36
    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    #@39
    move-result-object v1

    #@3a
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@3c
    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    #@3f
    .line 4064
    invoke-static {}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->getInstance()Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    #@42
    move-result-object v1

    #@43
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@45
    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    #@48
    move-result v2

    #@49
    invoke-virtual {v1, v2, p1, p2}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeNITZEvent(IJ)V

    #@4c
    .line 4056
    return-void
.end method

.method private setAndBroadcastNetworkSetTimeZone(Ljava/lang/String;)V
    .locals 4
    .param p1, "zoneId"    # Ljava/lang/String;

    #@0
    .prologue
    .line 4036
    new-instance v2, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v3, "setAndBroadcastNetworkSetTimeZone: setTimeZone="

    #@8
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v2

    #@c
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v2

    #@10
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13
    move-result-object v2

    #@14
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    #@17
    .line 4038
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@19
    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    #@1c
    move-result-object v2

    #@1d
    const-string/jumbo v3, "alarm"

    #@20
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@23
    move-result-object v0

    #@24
    check-cast v0, Landroid/app/AlarmManager;

    #@26
    .line 4039
    .local v0, "alarm":Landroid/app/AlarmManager;
    invoke-virtual {v0, p1}, Landroid/app/AlarmManager;->setTimeZone(Ljava/lang/String;)V

    #@29
    .line 4040
    new-instance v1, Landroid/content/Intent;

    #@2b
    const-string/jumbo v2, "android.intent.action.NETWORK_SET_TIMEZONE"

    #@2e
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@31
    .line 4041
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x20000000

    #@33
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@36
    .line 4042
    const-string/jumbo v2, "time-zone"

    #@39
    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@3c
    .line 4043
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@3e
    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    #@41
    move-result-object v2

    #@42
    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@44
    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    #@47
    .line 4045
    new-instance v2, Ljava/lang/StringBuilder;

    #@49
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@4c
    const-string/jumbo v3, "setAndBroadcastNetworkSetTimeZone: call alarm.setTimeZone and broadcast zoneId="

    #@4f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v2

    #@53
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v2

    #@57
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5a
    move-result-object v2

    #@5b
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    #@5e
    .line 4035
    return-void
.end method

.method private setNotification(I)V
    .locals 12
    .param p1, "notifyType"    # I

    #@0
    .prologue
    const v10, 0x10400c9

    #@3
    .line 4097
    new-instance v8, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v9, "setNotification: create notification "

    #@b
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v8

    #@f
    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@12
    move-result-object v8

    #@13
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@16
    move-result-object v8

    #@17
    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    #@1a
    .line 4100
    iget-object v8, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@1c
    invoke-virtual {v8}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    #@1f
    move-result-object v8

    #@20
    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@23
    move-result-object v8

    #@24
    .line 4101
    const v9, 0x112005c

    #@27
    .line 4100
    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@2a
    move-result v4

    #@2b
    .line 4102
    .local v4, "isSetNotification":Z
    if-nez v4, :cond_0

    #@2d
    .line 4103
    const-string/jumbo v8, "Ignore all the notifications"

    #@30
    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    #@33
    .line 4104
    return-void

    #@34
    .line 4107
    :cond_0
    iget-object v8, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@36
    invoke-virtual {v8}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    #@39
    move-result-object v0

    #@3a
    .line 4110
    .local v0, "context":Landroid/content/Context;
    const-string/jumbo v1, ""

    #@3d
    .line 4111
    .local v1, "details":Ljava/lang/CharSequence;
    invoke-virtual {v0, v10}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@40
    move-result-object v7

    #@41
    .line 4112
    .local v7, "title":Ljava/lang/CharSequence;
    const/16 v5, 0x3e7

    #@43
    .line 4114
    .local v5, "notificationId":I
    packed-switch p1, :pswitch_data_0

    #@46
    .line 4140
    :goto_0
    :pswitch_0
    new-instance v8, Ljava/lang/StringBuilder;

    #@48
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@4b
    const-string/jumbo v9, "setNotification: put notification "

    #@4e
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v8

    #@52
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@55
    move-result-object v8

    #@56
    const-string/jumbo v9, " / "

    #@59
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v8

    #@5d
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@60
    move-result-object v8

    #@61
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@64
    move-result-object v8

    #@65
    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    #@68
    .line 4141
    new-instance v8, Landroid/app/Notification$Builder;

    #@6a
    invoke-direct {v8, v0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    #@6d
    .line 4142
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@70
    move-result-wide v10

    #@71
    .line 4141
    invoke-virtual {v8, v10, v11}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    #@74
    move-result-object v8

    #@75
    .line 4143
    const/4 v9, 0x1

    #@76
    .line 4141
    invoke-virtual {v8, v9}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    #@79
    move-result-object v8

    #@7a
    .line 4144
    const v9, 0x108008a

    #@7d
    .line 4141
    invoke-virtual {v8, v9}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    #@80
    move-result-object v8

    #@81
    invoke-virtual {v8, v7}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    #@84
    move-result-object v8

    #@85
    .line 4146
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@88
    move-result-object v9

    #@89
    .line 4147
    const v10, 0x106005b

    #@8c
    .line 4146
    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    #@8f
    move-result v9

    #@90
    .line 4141
    invoke-virtual {v8, v9}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    #@93
    move-result-object v8

    #@94
    invoke-virtual {v8, v7}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    #@97
    move-result-object v8

    #@98
    invoke-virtual {v8, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    #@9b
    move-result-object v8

    #@9c
    invoke-virtual {v8}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    #@9f
    move-result-object v8

    #@a0
    iput-object v8, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNotification:Landroid/app/Notification;

    #@a2
    .line 4153
    const-string/jumbo v8, "notification"

    #@a5
    invoke-virtual {v0, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@a8
    move-result-object v6

    #@a9
    .line 4152
    check-cast v6, Landroid/app/NotificationManager;

    #@ab
    .line 4155
    .local v6, "notificationManager":Landroid/app/NotificationManager;
    const/16 v8, 0x3ea

    #@ad
    if-eq p1, v8, :cond_1

    #@af
    const/16 v8, 0x3ec

    #@b1
    if-ne p1, v8, :cond_3

    #@b3
    .line 4157
    :cond_1
    invoke-virtual {v6, v5}, Landroid/app/NotificationManager;->cancel(I)V

    #@b6
    .line 4096
    :goto_1
    return-void

    #@b7
    .line 4116
    .end local v6    # "notificationManager":Landroid/app/NotificationManager;
    :pswitch_1
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    #@ba
    move-result v8

    #@bb
    int-to-long v2, v8

    #@bc
    .line 4117
    .local v2, "dataSubId":J
    iget-object v8, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@be
    invoke-virtual {v8}, Lcom/android/internal/telephony/GsmCdmaPhone;->getSubId()I

    #@c1
    move-result v8

    #@c2
    int-to-long v8, v8

    #@c3
    cmp-long v8, v2, v8

    #@c5
    if-eqz v8, :cond_2

    #@c7
    .line 4118
    return-void

    #@c8
    .line 4120
    :cond_2
    const/16 v5, 0x378

    #@ca
    .line 4121
    invoke-virtual {v0, v10}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@cd
    move-result-object v1

    #@ce
    goto/16 :goto_0

    #@d0
    .line 4124
    .end local v2    # "dataSubId":J
    :pswitch_2
    const/16 v5, 0x378

    #@d2
    .line 4125
    goto/16 :goto_0

    #@d4
    .line 4127
    :pswitch_3
    const v8, 0x10400cc

    #@d7
    invoke-virtual {v0, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@da
    move-result-object v1

    #@db
    goto/16 :goto_0

    #@dd
    .line 4130
    :pswitch_4
    const v8, 0x10400cb

    #@e0
    invoke-virtual {v0, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@e3
    move-result-object v1

    #@e4
    goto/16 :goto_0

    #@e6
    .line 4133
    :pswitch_5
    const v8, 0x10400ca

    #@e9
    invoke-virtual {v0, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@ec
    move-result-object v1

    #@ed
    goto/16 :goto_0

    #@ef
    .line 4160
    .restart local v6    # "notificationManager":Landroid/app/NotificationManager;
    :cond_3
    iget-object v8, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNotification:Landroid/app/Notification;

    #@f1
    invoke-virtual {v6, v5, v8}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    #@f4
    goto :goto_1

    #@f5
    .line 4114
    nop

    #@f6
    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private setRoamingOff()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 2099
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@3
    invoke-virtual {v0, v1}, Landroid/telephony/ServiceState;->setVoiceRoaming(Z)V

    #@6
    .line 2100
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@8
    invoke-virtual {v0, v1}, Landroid/telephony/ServiceState;->setDataRoaming(Z)V

    #@b
    .line 2101
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@d
    const/4 v1, 0x1

    #@e
    invoke-virtual {v0, v1}, Landroid/telephony/ServiceState;->setCdmaEriIconIndex(I)V

    #@11
    .line 2098
    return-void
.end method

.method private setRoamingOn()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 2092
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@4
    invoke-virtual {v0, v2}, Landroid/telephony/ServiceState;->setVoiceRoaming(Z)V

    #@7
    .line 2093
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@9
    invoke-virtual {v0, v2}, Landroid/telephony/ServiceState;->setDataRoaming(Z)V

    #@c
    .line 2094
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@e
    invoke-virtual {v0, v1}, Landroid/telephony/ServiceState;->setCdmaEriIconIndex(I)V

    #@11
    .line 2095
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@13
    invoke-virtual {v0, v1}, Landroid/telephony/ServiceState;->setCdmaEriIconMode(I)V

    #@16
    .line 2091
    return-void
.end method

.method private setSignalStrengthDefaultValues()V
    .locals 2

    #@0
    .prologue
    .line 4895
    new-instance v0, Landroid/telephony/SignalStrength;

    #@2
    const/4 v1, 0x1

    #@3
    invoke-direct {v0, v1}, Landroid/telephony/SignalStrength;-><init>(Z)V

    #@6
    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    #@8
    .line 4894
    return-void
.end method

.method private setTimeFromNITZString(Ljava/lang/String;J)V
    .locals 40
    .param p1, "nitz"    # Ljava/lang/String;
    .param p2, "nitzReceiveTime"    # J

    #@0
    .prologue
    .line 3803
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@3
    move-result-wide v26

    #@4
    .line 3804
    .local v26, "start":J
    new-instance v34, Ljava/lang/StringBuilder;

    #@6
    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    const-string/jumbo v35, "NITZ: "

    #@c
    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v34

    #@10
    move-object/from16 v0, v34

    #@12
    move-object/from16 v1, p1

    #@14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v34

    #@18
    const-string/jumbo v35, ","

    #@1b
    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v34

    #@1f
    move-object/from16 v0, v34

    #@21
    move-wide/from16 v1, p2

    #@23
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@26
    move-result-object v34

    #@27
    .line 3805
    const-string/jumbo v35, " start="

    #@2a
    .line 3804
    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v34

    #@2e
    move-object/from16 v0, v34

    #@30
    move-wide/from16 v1, v26

    #@32
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@35
    move-result-object v34

    #@36
    .line 3805
    const-string/jumbo v35, " delay="

    #@39
    .line 3804
    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v34

    #@3d
    .line 3805
    sub-long v36, v26, p2

    #@3f
    .line 3804
    move-object/from16 v0, v34

    #@41
    move-wide/from16 v1, v36

    #@43
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@46
    move-result-object v34

    #@47
    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4a
    move-result-object v34

    #@4b
    move-object/from16 v0, p0

    #@4d
    move-object/from16 v1, v34

    #@4f
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    #@52
    .line 3811
    :try_start_0
    const-string/jumbo v34, "GMT"

    #@55
    invoke-static/range {v34 .. v34}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    #@58
    move-result-object v34

    #@59
    invoke-static/range {v34 .. v34}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    #@5c
    move-result-object v6

    #@5d
    .line 3813
    .local v6, "c":Ljava/util/Calendar;
    invoke-virtual {v6}, Ljava/util/Calendar;->clear()V

    #@60
    .line 3814
    const/16 v34, 0x10

    #@62
    const/16 v35, 0x0

    #@64
    move/from16 v0, v34

    #@66
    move/from16 v1, v35

    #@68
    invoke-virtual {v6, v0, v1}, Ljava/util/Calendar;->set(II)V

    #@6b
    .line 3816
    const-string/jumbo v34, "[/:,+-]"

    #@6e
    move-object/from16 v0, p1

    #@70
    move-object/from16 v1, v34

    #@72
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@75
    move-result-object v21

    #@76
    .line 3818
    .local v21, "nitzSubs":[Ljava/lang/String;
    const/16 v34, 0x0

    #@78
    aget-object v34, v21, v34

    #@7a
    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@7d
    move-result v34

    #@7e
    move/from16 v0, v34

    #@80
    add-int/lit16 v0, v0, 0x7d0

    #@82
    move/from16 v32, v0

    #@84
    .line 3819
    .local v32, "year":I
    const/16 v34, 0x7f5

    #@86
    move/from16 v0, v32

    #@88
    move/from16 v1, v34

    #@8a
    if-le v0, v1, :cond_0

    #@8c
    .line 3820
    new-instance v34, Ljava/lang/StringBuilder;

    #@8e
    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    #@91
    const-string/jumbo v35, "NITZ year: "

    #@94
    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@97
    move-result-object v34

    #@98
    move-object/from16 v0, v34

    #@9a
    move/from16 v1, v32

    #@9c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@9f
    move-result-object v34

    #@a0
    const-string/jumbo v35, " exceeds limit, skip NITZ time update"

    #@a3
    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a6
    move-result-object v34

    #@a7
    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@aa
    move-result-object v34

    #@ab
    move-object/from16 v0, p0

    #@ad
    move-object/from16 v1, v34

    #@af
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->loge(Ljava/lang/String;)V

    #@b2
    .line 3821
    return-void

    #@b3
    .line 3823
    :cond_0
    const/16 v34, 0x1

    #@b5
    move/from16 v0, v34

    #@b7
    move/from16 v1, v32

    #@b9
    invoke-virtual {v6, v0, v1}, Ljava/util/Calendar;->set(II)V

    #@bc
    .line 3826
    const/16 v34, 0x1

    #@be
    aget-object v34, v21, v34

    #@c0
    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@c3
    move-result v34

    #@c4
    add-int/lit8 v20, v34, -0x1

    #@c6
    .line 3827
    .local v20, "month":I
    const/16 v34, 0x2

    #@c8
    move/from16 v0, v34

    #@ca
    move/from16 v1, v20

    #@cc
    invoke-virtual {v6, v0, v1}, Ljava/util/Calendar;->set(II)V

    #@cf
    .line 3829
    const/16 v34, 0x2

    #@d1
    aget-object v34, v21, v34

    #@d3
    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@d6
    move-result v7

    #@d7
    .line 3830
    .local v7, "date":I
    const/16 v34, 0x5

    #@d9
    move/from16 v0, v34

    #@db
    invoke-virtual {v6, v0, v7}, Ljava/util/Calendar;->set(II)V

    #@de
    .line 3832
    const/16 v34, 0x3

    #@e0
    aget-object v34, v21, v34

    #@e2
    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@e5
    move-result v14

    #@e6
    .line 3833
    .local v14, "hour":I
    const/16 v34, 0xa

    #@e8
    move/from16 v0, v34

    #@ea
    invoke-virtual {v6, v0, v14}, Ljava/util/Calendar;->set(II)V

    #@ed
    .line 3835
    const/16 v34, 0x4

    #@ef
    aget-object v34, v21, v34

    #@f1
    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@f4
    move-result v17

    #@f5
    .line 3836
    .local v17, "minute":I
    const/16 v34, 0xc

    #@f7
    move/from16 v0, v34

    #@f9
    move/from16 v1, v17

    #@fb
    invoke-virtual {v6, v0, v1}, Ljava/util/Calendar;->set(II)V

    #@fe
    .line 3838
    const/16 v34, 0x5

    #@100
    aget-object v34, v21, v34

    #@102
    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@105
    move-result v24

    #@106
    .line 3839
    .local v24, "second":I
    const/16 v34, 0xd

    #@108
    move/from16 v0, v34

    #@10a
    move/from16 v1, v24

    #@10c
    invoke-virtual {v6, v0, v1}, Ljava/util/Calendar;->set(II)V

    #@10f
    .line 3841
    const/16 v34, 0x2d

    #@111
    move-object/from16 v0, p1

    #@113
    move/from16 v1, v34

    #@115
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    #@118
    move-result v34

    #@119
    const/16 v35, -0x1

    #@11b
    move/from16 v0, v34

    #@11d
    move/from16 v1, v35

    #@11f
    if-ne v0, v1, :cond_7

    #@121
    const/16 v25, 0x1

    #@123
    .line 3843
    .local v25, "sign":Z
    :goto_0
    const/16 v34, 0x6

    #@125
    aget-object v34, v21, v34

    #@127
    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@12a
    move-result v30

    #@12b
    .line 3845
    .local v30, "tzOffset":I
    move-object/from16 v0, v21

    #@12d
    array-length v0, v0

    #@12e
    move/from16 v34, v0

    #@130
    const/16 v35, 0x8

    #@132
    move/from16 v0, v34

    #@134
    move/from16 v1, v35

    #@136
    if-lt v0, v1, :cond_8

    #@138
    const/16 v34, 0x7

    #@13a
    aget-object v34, v21, v34

    #@13c
    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@13f
    move-result v8

    #@140
    .line 3854
    .local v8, "dst":I
    :goto_1
    if-eqz v25, :cond_9

    #@142
    const/16 v34, 0x1

    #@144
    :goto_2
    mul-int v34, v34, v30

    #@146
    mul-int/lit8 v34, v34, 0xf

    #@148
    mul-int/lit8 v34, v34, 0x3c

    #@14a
    move/from16 v0, v34

    #@14c
    mul-int/lit16 v0, v0, 0x3e8

    #@14e
    move/from16 v30, v0

    #@150
    .line 3856
    const/16 v33, 0x0

    #@152
    .line 3862
    .local v33, "zone":Ljava/util/TimeZone;
    move-object/from16 v0, v21

    #@154
    array-length v0, v0

    #@155
    move/from16 v34, v0

    #@157
    const/16 v35, 0x9

    #@159
    move/from16 v0, v34

    #@15b
    move/from16 v1, v35

    #@15d
    if-lt v0, v1, :cond_1

    #@15f
    .line 3863
    const/16 v34, 0x8

    #@161
    aget-object v34, v21, v34

    #@163
    const/16 v35, 0x21

    #@165
    const/16 v36, 0x2f

    #@167
    invoke-virtual/range {v34 .. v36}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    #@16a
    move-result-object v31

    #@16b
    .line 3864
    .local v31, "tzname":Ljava/lang/String;
    invoke-static/range {v31 .. v31}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    #@16e
    move-result-object v33

    #@16f
    .line 3867
    .end local v31    # "tzname":Ljava/lang/String;
    .end local v33    # "zone":Ljava/util/TimeZone;
    :cond_1
    move-object/from16 v0, p0

    #@171
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@173
    move-object/from16 v34, v0

    #@175
    invoke-virtual/range {v34 .. v34}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    #@178
    move-result-object v34

    #@179
    .line 3868
    const-string/jumbo v35, "phone"

    #@17c
    .line 3867
    invoke-virtual/range {v34 .. v35}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@17f
    move-result-object v34

    #@180
    check-cast v34, Landroid/telephony/TelephonyManager;

    #@182
    .line 3869
    move-object/from16 v0, p0

    #@184
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@186
    move-object/from16 v35, v0

    #@188
    invoke-virtual/range {v35 .. v35}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    #@18b
    move-result v35

    #@18c
    .line 3867
    invoke-virtual/range {v34 .. v35}, Landroid/telephony/TelephonyManager;->getNetworkCountryIsoForPhone(I)Ljava/lang/String;

    #@18f
    move-result-object v16

    #@190
    .line 3871
    .local v16, "iso":Ljava/lang/String;
    if-nez v33, :cond_2

    #@192
    .line 3873
    move-object/from16 v0, p0

    #@194
    iget-boolean v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mGotCountryCode:Z

    #@196
    move/from16 v34, v0

    #@198
    if-eqz v34, :cond_2

    #@19a
    .line 3874
    if-eqz v16, :cond_b

    #@19c
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    #@19f
    move-result v34

    #@1a0
    if-lez v34, :cond_b

    #@1a2
    .line 3875
    if-eqz v8, :cond_a

    #@1a4
    const/16 v34, 0x1

    #@1a6
    .line 3876
    :goto_3
    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    #@1a9
    move-result-wide v36

    #@1aa
    .line 3875
    move/from16 v0, v30

    #@1ac
    move/from16 v1, v34

    #@1ae
    move-wide/from16 v2, v36

    #@1b0
    move-object/from16 v4, v16

    #@1b2
    invoke-static {v0, v1, v2, v3, v4}, Landroid/util/TimeUtils;->getTimeZone(IZJLjava/lang/String;)Ljava/util/TimeZone;

    #@1b5
    move-result-object v33

    #@1b6
    .line 3888
    :cond_2
    :goto_4
    if-eqz v33, :cond_3

    #@1b8
    move-object/from16 v0, p0

    #@1ba
    iget v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mZoneOffset:I

    #@1bc
    move/from16 v34, v0

    #@1be
    move/from16 v0, v34

    #@1c0
    move/from16 v1, v30

    #@1c2
    if-eq v0, v1, :cond_d

    #@1c4
    .line 3893
    :cond_3
    :goto_5
    const/16 v34, 0x1

    #@1c6
    move/from16 v0, v34

    #@1c8
    move-object/from16 v1, p0

    #@1ca
    iput-boolean v0, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mNeedFixZoneAfterNitz:Z

    #@1cc
    .line 3894
    move/from16 v0, v30

    #@1ce
    move-object/from16 v1, p0

    #@1d0
    iput v0, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mZoneOffset:I

    #@1d2
    .line 3895
    if-eqz v8, :cond_f

    #@1d4
    const/16 v34, 0x1

    #@1d6
    :goto_6
    move/from16 v0, v34

    #@1d8
    move-object/from16 v1, p0

    #@1da
    iput-boolean v0, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mZoneDst:Z

    #@1dc
    .line 3896
    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    #@1df
    move-result-wide v34

    #@1e0
    move-wide/from16 v0, v34

    #@1e2
    move-object/from16 v2, p0

    #@1e4
    iput-wide v0, v2, Lcom/android/internal/telephony/ServiceStateTracker;->mZoneTime:J

    #@1e6
    .line 3899
    :cond_4
    new-instance v34, Ljava/lang/StringBuilder;

    #@1e8
    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    #@1eb
    const-string/jumbo v35, "NITZ: tzOffset="

    #@1ee
    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f1
    move-result-object v34

    #@1f2
    move-object/from16 v0, v34

    #@1f4
    move/from16 v1, v30

    #@1f6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1f9
    move-result-object v34

    #@1fa
    const-string/jumbo v35, " dst="

    #@1fd
    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@200
    move-result-object v34

    #@201
    move-object/from16 v0, v34

    #@203
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@206
    move-result-object v34

    #@207
    const-string/jumbo v35, " zone="

    #@20a
    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20d
    move-result-object v35

    #@20e
    .line 3900
    if-eqz v33, :cond_10

    #@210
    invoke-virtual/range {v33 .. v33}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    #@213
    move-result-object v34

    #@214
    .line 3899
    :goto_7
    move-object/from16 v0, v35

    #@216
    move-object/from16 v1, v34

    #@218
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21b
    move-result-object v34

    #@21c
    .line 3901
    const-string/jumbo v35, " iso="

    #@21f
    .line 3899
    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@222
    move-result-object v34

    #@223
    move-object/from16 v0, v34

    #@225
    move-object/from16 v1, v16

    #@227
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22a
    move-result-object v34

    #@22b
    .line 3901
    const-string/jumbo v35, " mGotCountryCode="

    #@22e
    .line 3899
    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@231
    move-result-object v34

    #@232
    .line 3901
    move-object/from16 v0, p0

    #@234
    iget-boolean v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mGotCountryCode:Z

    #@236
    move/from16 v35, v0

    #@238
    .line 3899
    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@23b
    move-result-object v34

    #@23c
    .line 3902
    const-string/jumbo v35, " mNeedFixZoneAfterNitz="

    #@23f
    .line 3899
    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@242
    move-result-object v34

    #@243
    .line 3902
    move-object/from16 v0, p0

    #@245
    iget-boolean v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNeedFixZoneAfterNitz:Z

    #@247
    move/from16 v35, v0

    #@249
    .line 3899
    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@24c
    move-result-object v34

    #@24d
    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@250
    move-result-object v34

    #@251
    move-object/from16 v0, p0

    #@253
    move-object/from16 v1, v34

    #@255
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    #@258
    .line 3905
    if-eqz v33, :cond_6

    #@25a
    .line 3906
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getAutoTimeZone()Z

    #@25d
    move-result v34

    #@25e
    if-eqz v34, :cond_5

    #@260
    .line 3907
    invoke-virtual/range {v33 .. v33}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    #@263
    move-result-object v34

    #@264
    move-object/from16 v0, p0

    #@266
    move-object/from16 v1, v34

    #@268
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->setAndBroadcastNetworkSetTimeZone(Ljava/lang/String;)V

    #@26b
    .line 3909
    :cond_5
    invoke-virtual/range {v33 .. v33}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    #@26e
    move-result-object v34

    #@26f
    move-object/from16 v0, p0

    #@271
    move-object/from16 v1, v34

    #@273
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->saveNitzTimeZone(Ljava/lang/String;)V

    #@276
    .line 3912
    :cond_6
    const-string/jumbo v34, "gsm.ignore-nitz"

    #@279
    invoke-static/range {v34 .. v34}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    #@27c
    move-result-object v15

    #@27d
    .line 3913
    .local v15, "ignore":Ljava/lang/String;
    if-eqz v15, :cond_11

    #@27f
    const-string/jumbo v34, "yes"

    #@282
    move-object/from16 v0, v34

    #@284
    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@287
    move-result v34

    #@288
    if-eqz v34, :cond_11

    #@28a
    .line 3914
    const-string/jumbo v34, "NITZ: Not setting clock because gsm.ignore-nitz is set"

    #@28d
    move-object/from16 v0, p0

    #@28f
    move-object/from16 v1, v34

    #@291
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    #@294
    .line 3915
    return-void

    #@295
    .line 3841
    .end local v8    # "dst":I
    .end local v15    # "ignore":Ljava/lang/String;
    .end local v16    # "iso":Ljava/lang/String;
    .end local v25    # "sign":Z
    .end local v30    # "tzOffset":I
    :cond_7
    const/16 v25, 0x0

    #@297
    .restart local v25    # "sign":Z
    goto/16 :goto_0

    #@299
    .line 3845
    .restart local v30    # "tzOffset":I
    :cond_8
    const/4 v8, 0x0

    #@29a
    .restart local v8    # "dst":I
    goto/16 :goto_1

    #@29c
    .line 3854
    :cond_9
    const/16 v34, -0x1

    #@29e
    goto/16 :goto_2

    #@2a0
    .line 3875
    .restart local v16    # "iso":Ljava/lang/String;
    :cond_a
    const/16 v34, 0x0

    #@2a2
    goto/16 :goto_3

    #@2a4
    .line 3883
    :cond_b
    if-eqz v8, :cond_c

    #@2a6
    const/16 v34, 0x1

    #@2a8
    :goto_8
    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    #@2ab
    move-result-wide v36

    #@2ac
    move-object/from16 v0, p0

    #@2ae
    move/from16 v1, v30

    #@2b0
    move/from16 v2, v34

    #@2b2
    move-wide/from16 v3, v36

    #@2b4
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/ServiceStateTracker;->getNitzTimeZone(IZJ)Ljava/util/TimeZone;

    #@2b7
    move-result-object v33

    #@2b8
    .local v33, "zone":Ljava/util/TimeZone;
    goto/16 :goto_4

    #@2ba
    .end local v33    # "zone":Ljava/util/TimeZone;
    :cond_c
    const/16 v34, 0x0

    #@2bc
    goto :goto_8

    #@2bd
    .line 3888
    :cond_d
    move-object/from16 v0, p0

    #@2bf
    iget-boolean v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mZoneDst:Z

    #@2c1
    move/from16 v35, v0

    #@2c3
    if-eqz v8, :cond_e

    #@2c5
    const/16 v34, 0x1

    #@2c7
    :goto_9
    move/from16 v0, v35

    #@2c9
    move/from16 v1, v34

    #@2cb
    if-eq v0, v1, :cond_4

    #@2cd
    goto/16 :goto_5

    #@2cf
    :cond_e
    const/16 v34, 0x0

    #@2d1
    goto :goto_9

    #@2d2
    .line 3895
    :cond_f
    const/16 v34, 0x0

    #@2d4
    goto/16 :goto_6

    #@2d6
    .line 3900
    :cond_10
    const-string/jumbo v34, "NULL"
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    #@2d9
    goto/16 :goto_7

    #@2db
    .line 3919
    .restart local v15    # "ignore":Ljava/lang/String;
    :cond_11
    :try_start_1
    move-object/from16 v0, p0

    #@2dd
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@2df
    move-object/from16 v34, v0

    #@2e1
    invoke-virtual/range {v34 .. v34}, Landroid/os/PowerManager$WakeLock;->acquire()V

    #@2e4
    .line 3921
    move-object/from16 v0, p0

    #@2e6
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@2e8
    move-object/from16 v34, v0

    #@2ea
    invoke-virtual/range {v34 .. v34}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    #@2ed
    move-result v34

    #@2ee
    if-eqz v34, :cond_12

    #@2f0
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getAutoTime()Z

    #@2f3
    move-result v34

    #@2f4
    if-eqz v34, :cond_15

    #@2f6
    .line 3923
    :cond_12
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@2f9
    move-result-wide v34

    #@2fa
    sub-long v18, v34, p2

    #@2fc
    .line 3925
    .local v18, "millisSinceNitzReceived":J
    const-wide/16 v34, 0x0

    #@2fe
    cmp-long v34, v18, v34

    #@300
    if-gez v34, :cond_13

    #@302
    .line 3928
    new-instance v34, Ljava/lang/StringBuilder;

    #@304
    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    #@307
    const-string/jumbo v35, "NITZ: not setting time, clock has rolled backwards since NITZ time was received, "

    #@30a
    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30d
    move-result-object v34

    #@30e
    move-object/from16 v0, v34

    #@310
    move-object/from16 v1, p1

    #@312
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@315
    move-result-object v34

    #@316
    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@319
    move-result-object v34

    #@31a
    move-object/from16 v0, p0

    #@31c
    move-object/from16 v1, v34

    #@31e
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@321
    .line 3994
    :try_start_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@324
    move-result-wide v10

    #@325
    .line 3995
    .local v10, "end":J
    new-instance v34, Ljava/lang/StringBuilder;

    #@327
    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    #@32a
    const-string/jumbo v35, "NITZ: end="

    #@32d
    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@330
    move-result-object v34

    #@331
    move-object/from16 v0, v34

    #@333
    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@336
    move-result-object v34

    #@337
    const-string/jumbo v35, " dur="

    #@33a
    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33d
    move-result-object v34

    #@33e
    sub-long v36, v10, v26

    #@340
    move-object/from16 v0, v34

    #@342
    move-wide/from16 v1, v36

    #@344
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@347
    move-result-object v34

    #@348
    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@34b
    move-result-object v34

    #@34c
    move-object/from16 v0, p0

    #@34e
    move-object/from16 v1, v34

    #@350
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    #@353
    .line 3997
    move-object/from16 v0, p0

    #@355
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@357
    move-object/from16 v34, v0

    #@359
    invoke-virtual/range {v34 .. v34}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    #@35c
    .line 3932
    return-void

    #@35d
    .line 3935
    .end local v10    # "end":J
    :cond_13
    const-wide/32 v34, 0x7fffffff

    #@360
    cmp-long v34, v18, v34

    #@362
    if-lez v34, :cond_14

    #@364
    .line 3938
    :try_start_3
    new-instance v34, Ljava/lang/StringBuilder;

    #@366
    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    #@369
    const-string/jumbo v35, "NITZ: not setting time, processing has taken "

    #@36c
    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36f
    move-result-object v34

    #@370
    .line 3939
    const-wide/32 v36, 0x5265c00

    #@373
    div-long v36, v18, v36

    #@375
    .line 3938
    move-object/from16 v0, v34

    #@377
    move-wide/from16 v1, v36

    #@379
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@37c
    move-result-object v34

    #@37d
    .line 3940
    const-string/jumbo v35, " days"

    #@380
    .line 3938
    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@383
    move-result-object v34

    #@384
    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@387
    move-result-object v34

    #@388
    move-object/from16 v0, p0

    #@38a
    move-object/from16 v1, v34

    #@38c
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@38f
    .line 3994
    :try_start_4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@392
    move-result-wide v10

    #@393
    .line 3995
    .restart local v10    # "end":J
    new-instance v34, Ljava/lang/StringBuilder;

    #@395
    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    #@398
    const-string/jumbo v35, "NITZ: end="

    #@39b
    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39e
    move-result-object v34

    #@39f
    move-object/from16 v0, v34

    #@3a1
    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@3a4
    move-result-object v34

    #@3a5
    const-string/jumbo v35, " dur="

    #@3a8
    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3ab
    move-result-object v34

    #@3ac
    sub-long v36, v10, v26

    #@3ae
    move-object/from16 v0, v34

    #@3b0
    move-wide/from16 v1, v36

    #@3b2
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@3b5
    move-result-object v34

    #@3b6
    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3b9
    move-result-object v34

    #@3ba
    move-object/from16 v0, p0

    #@3bc
    move-object/from16 v1, v34

    #@3be
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    #@3c1
    .line 3997
    move-object/from16 v0, p0

    #@3c3
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@3c5
    move-object/from16 v34, v0

    #@3c7
    invoke-virtual/range {v34 .. v34}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0

    #@3ca
    .line 3942
    return-void

    #@3cb
    .line 3946
    .end local v10    # "end":J
    :cond_14
    move-wide/from16 v0, v18

    #@3cd
    long-to-int v0, v0

    #@3ce
    move/from16 v34, v0

    #@3d0
    const/16 v35, 0xe

    #@3d2
    :try_start_5
    move/from16 v0, v35

    #@3d4
    move/from16 v1, v34

    #@3d6
    invoke-virtual {v6, v0, v1}, Ljava/util/Calendar;->add(II)V

    #@3d9
    .line 3949
    new-instance v34, Ljava/lang/StringBuilder;

    #@3db
    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    #@3de
    const-string/jumbo v35, "NITZ: Setting time of day to "

    #@3e1
    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e4
    move-result-object v34

    #@3e5
    invoke-virtual {v6}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    #@3e8
    move-result-object v35

    #@3e9
    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3ec
    move-result-object v34

    #@3ed
    .line 3950
    const-string/jumbo v35, " NITZ receive delay(ms): "

    #@3f0
    .line 3949
    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f3
    move-result-object v34

    #@3f4
    move-object/from16 v0, v34

    #@3f6
    move-wide/from16 v1, v18

    #@3f8
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@3fb
    move-result-object v34

    #@3fc
    .line 3951
    const-string/jumbo v35, " gained(ms): "

    #@3ff
    .line 3949
    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@402
    move-result-object v34

    #@403
    .line 3952
    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    #@406
    move-result-wide v36

    #@407
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@40a
    move-result-wide v38

    #@40b
    sub-long v36, v36, v38

    #@40d
    .line 3949
    move-object/from16 v0, v34

    #@40f
    move-wide/from16 v1, v36

    #@411
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@414
    move-result-object v34

    #@415
    .line 3953
    const-string/jumbo v35, " from "

    #@418
    .line 3949
    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41b
    move-result-object v34

    #@41c
    move-object/from16 v0, v34

    #@41e
    move-object/from16 v1, p1

    #@420
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@423
    move-result-object v34

    #@424
    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@427
    move-result-object v34

    #@428
    move-object/from16 v0, p0

    #@42a
    move-object/from16 v1, v34

    #@42c
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    #@42f
    .line 3955
    move-object/from16 v0, p0

    #@431
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@433
    move-object/from16 v34, v0

    #@435
    invoke-virtual/range {v34 .. v34}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    #@438
    move-result v34

    #@439
    if-eqz v34, :cond_16

    #@43b
    .line 3956
    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    #@43e
    move-result-wide v34

    #@43f
    move-object/from16 v0, p0

    #@441
    move-wide/from16 v1, v34

    #@443
    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->setAndBroadcastNetworkSetTime(J)V

    #@446
    .line 3957
    const-string/jumbo v34, "SST"

    #@449
    const-string/jumbo v35, "NITZ: after Setting time of day"

    #@44c
    invoke-static/range {v34 .. v35}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@44f
    .line 3989
    .end local v18    # "millisSinceNitzReceived":J
    :cond_15
    :goto_a
    const-string/jumbo v34, "gsm.nitz.time"

    #@452
    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    #@455
    move-result-wide v36

    #@456
    invoke-static/range {v36 .. v37}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    #@459
    move-result-object v35

    #@45a
    invoke-static/range {v34 .. v35}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    #@45d
    .line 3990
    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    #@460
    move-result-wide v34

    #@461
    move-object/from16 v0, p0

    #@463
    move-wide/from16 v1, v34

    #@465
    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->saveNitzTime(J)V

    #@468
    .line 3991
    const/16 v34, 0x1

    #@46a
    move/from16 v0, v34

    #@46c
    move-object/from16 v1, p0

    #@46e
    iput-boolean v0, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mNitzUpdatedTime:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@470
    .line 3994
    :try_start_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@473
    move-result-wide v10

    #@474
    .line 3995
    .restart local v10    # "end":J
    new-instance v34, Ljava/lang/StringBuilder;

    #@476
    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    #@479
    const-string/jumbo v35, "NITZ: end="

    #@47c
    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47f
    move-result-object v34

    #@480
    move-object/from16 v0, v34

    #@482
    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@485
    move-result-object v34

    #@486
    const-string/jumbo v35, " dur="

    #@489
    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48c
    move-result-object v34

    #@48d
    sub-long v36, v10, v26

    #@48f
    move-object/from16 v0, v34

    #@491
    move-wide/from16 v1, v36

    #@493
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@496
    move-result-object v34

    #@497
    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@49a
    move-result-object v34

    #@49b
    move-object/from16 v0, p0

    #@49d
    move-object/from16 v1, v34

    #@49f
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    #@4a2
    .line 3997
    move-object/from16 v0, p0

    #@4a4
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@4a6
    move-object/from16 v34, v0

    #@4a8
    invoke-virtual/range {v34 .. v34}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_0

    #@4ab
    .line 3799
    .end local v6    # "c":Ljava/util/Calendar;
    .end local v7    # "date":I
    .end local v8    # "dst":I
    .end local v10    # "end":J
    .end local v14    # "hour":I
    .end local v15    # "ignore":Ljava/lang/String;
    .end local v16    # "iso":Ljava/lang/String;
    .end local v17    # "minute":I
    .end local v20    # "month":I
    .end local v21    # "nitzSubs":[Ljava/lang/String;
    .end local v24    # "second":I
    .end local v25    # "sign":Z
    .end local v30    # "tzOffset":I
    .end local v32    # "year":I
    :goto_b
    return-void

    #@4ac
    .line 3959
    .restart local v6    # "c":Ljava/util/Calendar;
    .restart local v7    # "date":I
    .restart local v8    # "dst":I
    .restart local v14    # "hour":I
    .restart local v15    # "ignore":Ljava/lang/String;
    .restart local v16    # "iso":Ljava/lang/String;
    .restart local v17    # "minute":I
    .restart local v18    # "millisSinceNitzReceived":J
    .restart local v20    # "month":I
    .restart local v21    # "nitzSubs":[Ljava/lang/String;
    .restart local v24    # "second":I
    .restart local v25    # "sign":Z
    .restart local v30    # "tzOffset":I
    .restart local v32    # "year":I
    :cond_16
    :try_start_7
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getAutoTime()Z

    #@4af
    move-result v34

    #@4b0
    if-eqz v34, :cond_15

    #@4b2
    .line 3963
    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    #@4b5
    move-result-wide v34

    #@4b6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@4b9
    move-result-wide v36

    #@4ba
    sub-long v12, v34, v36

    #@4bc
    .line 3964
    .local v12, "gained":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@4bf
    move-result-wide v34

    #@4c0
    move-object/from16 v0, p0

    #@4c2
    iget-wide v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSavedAtTime:J

    #@4c4
    move-wide/from16 v36, v0

    #@4c6
    sub-long v28, v34, v36

    #@4c8
    .line 3965
    .local v28, "timeSinceLastUpdate":J
    move-object/from16 v0, p0

    #@4ca
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mCr:Landroid/content/ContentResolver;

    #@4cc
    move-object/from16 v34, v0

    #@4ce
    .line 3966
    const-string/jumbo v35, "nitz_update_spacing"

    #@4d1
    move-object/from16 v0, p0

    #@4d3
    iget v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNitzUpdateSpacing:I

    #@4d5
    move/from16 v36, v0

    #@4d7
    .line 3965
    invoke-static/range {v34 .. v36}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@4da
    move-result v23

    #@4db
    .line 3967
    .local v23, "nitzUpdateSpacing":I
    move-object/from16 v0, p0

    #@4dd
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mCr:Landroid/content/ContentResolver;

    #@4df
    move-object/from16 v34, v0

    #@4e1
    .line 3968
    const-string/jumbo v35, "nitz_update_diff"

    #@4e4
    move-object/from16 v0, p0

    #@4e6
    iget v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNitzUpdateDiff:I

    #@4e8
    move/from16 v36, v0

    #@4ea
    .line 3967
    invoke-static/range {v34 .. v36}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@4ed
    move-result v22

    #@4ee
    .line 3970
    .local v22, "nitzUpdateDiff":I
    move-object/from16 v0, p0

    #@4f0
    iget-wide v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSavedAtTime:J

    #@4f2
    move-wide/from16 v34, v0

    #@4f4
    const-wide/16 v36, 0x0

    #@4f6
    cmp-long v34, v34, v36

    #@4f8
    if-eqz v34, :cond_17

    #@4fa
    move/from16 v0, v23

    #@4fc
    int-to-long v0, v0

    #@4fd
    move-wide/from16 v34, v0

    #@4ff
    cmp-long v34, v28, v34

    #@501
    if-lez v34, :cond_18

    #@503
    .line 3973
    :cond_17
    new-instance v34, Ljava/lang/StringBuilder;

    #@505
    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    #@508
    const-string/jumbo v35, "NITZ: Auto updating time of day to "

    #@50b
    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50e
    move-result-object v34

    #@50f
    invoke-virtual {v6}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    #@512
    move-result-object v35

    #@513
    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@516
    move-result-object v34

    #@517
    .line 3974
    const-string/jumbo v35, " NITZ receive delay="

    #@51a
    .line 3973
    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51d
    move-result-object v34

    #@51e
    move-object/from16 v0, v34

    #@520
    move-wide/from16 v1, v18

    #@522
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@525
    move-result-object v34

    #@526
    .line 3975
    const-string/jumbo v35, "ms gained="

    #@529
    .line 3973
    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52c
    move-result-object v34

    #@52d
    move-object/from16 v0, v34

    #@52f
    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@532
    move-result-object v34

    #@533
    .line 3975
    const-string/jumbo v35, "ms from "

    #@536
    .line 3973
    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@539
    move-result-object v34

    #@53a
    move-object/from16 v0, v34

    #@53c
    move-object/from16 v1, p1

    #@53e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@541
    move-result-object v34

    #@542
    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@545
    move-result-object v34

    #@546
    move-object/from16 v0, p0

    #@548
    move-object/from16 v1, v34

    #@54a
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    #@54d
    .line 3978
    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    #@550
    move-result-wide v34

    #@551
    move-object/from16 v0, p0

    #@553
    move-wide/from16 v1, v34

    #@555
    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->setAndBroadcastNetworkSetTime(J)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    #@558
    goto/16 :goto_a

    #@55a
    .line 3992
    .end local v12    # "gained":J
    .end local v18    # "millisSinceNitzReceived":J
    .end local v22    # "nitzUpdateDiff":I
    .end local v23    # "nitzUpdateSpacing":I
    .end local v28    # "timeSinceLastUpdate":J
    :catchall_0
    move-exception v34

    #@55b
    .line 3994
    :try_start_8
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@55e
    move-result-wide v10

    #@55f
    .line 3995
    .restart local v10    # "end":J
    new-instance v35, Ljava/lang/StringBuilder;

    #@561
    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    #@564
    const-string/jumbo v36, "NITZ: end="

    #@567
    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56a
    move-result-object v35

    #@56b
    move-object/from16 v0, v35

    #@56d
    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@570
    move-result-object v35

    #@571
    const-string/jumbo v36, " dur="

    #@574
    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@577
    move-result-object v35

    #@578
    sub-long v36, v10, v26

    #@57a
    invoke-virtual/range {v35 .. v37}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@57d
    move-result-object v35

    #@57e
    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@581
    move-result-object v35

    #@582
    move-object/from16 v0, p0

    #@584
    move-object/from16 v1, v35

    #@586
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    #@589
    .line 3997
    move-object/from16 v0, p0

    #@58b
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@58d
    move-object/from16 v35, v0

    #@58f
    invoke-virtual/range {v35 .. v35}, Landroid/os/PowerManager$WakeLock;->release()V

    #@592
    .line 3992
    throw v34
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_0

    #@593
    .line 3999
    .end local v6    # "c":Ljava/util/Calendar;
    .end local v7    # "date":I
    .end local v8    # "dst":I
    .end local v10    # "end":J
    .end local v14    # "hour":I
    .end local v15    # "ignore":Ljava/lang/String;
    .end local v16    # "iso":Ljava/lang/String;
    .end local v17    # "minute":I
    .end local v20    # "month":I
    .end local v21    # "nitzSubs":[Ljava/lang/String;
    .end local v24    # "second":I
    .end local v25    # "sign":Z
    .end local v30    # "tzOffset":I
    .end local v32    # "year":I
    :catch_0
    move-exception v9

    #@594
    .line 4000
    .local v9, "ex":Ljava/lang/RuntimeException;
    new-instance v34, Ljava/lang/StringBuilder;

    #@596
    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    #@599
    const-string/jumbo v35, "NITZ: Parsing NITZ time "

    #@59c
    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59f
    move-result-object v34

    #@5a0
    move-object/from16 v0, v34

    #@5a2
    move-object/from16 v1, p1

    #@5a4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a7
    move-result-object v34

    #@5a8
    const-string/jumbo v35, " ex="

    #@5ab
    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5ae
    move-result-object v34

    #@5af
    move-object/from16 v0, v34

    #@5b1
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@5b4
    move-result-object v34

    #@5b5
    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5b8
    move-result-object v34

    #@5b9
    move-object/from16 v0, p0

    #@5bb
    move-object/from16 v1, v34

    #@5bd
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->loge(Ljava/lang/String;)V

    #@5c0
    goto/16 :goto_b

    #@5c2
    .line 3971
    .end local v9    # "ex":Ljava/lang/RuntimeException;
    .restart local v6    # "c":Ljava/util/Calendar;
    .restart local v7    # "date":I
    .restart local v8    # "dst":I
    .restart local v12    # "gained":J
    .restart local v14    # "hour":I
    .restart local v15    # "ignore":Ljava/lang/String;
    .restart local v16    # "iso":Ljava/lang/String;
    .restart local v17    # "minute":I
    .restart local v18    # "millisSinceNitzReceived":J
    .restart local v20    # "month":I
    .restart local v21    # "nitzSubs":[Ljava/lang/String;
    .restart local v22    # "nitzUpdateDiff":I
    .restart local v23    # "nitzUpdateSpacing":I
    .restart local v24    # "second":I
    .restart local v25    # "sign":Z
    .restart local v28    # "timeSinceLastUpdate":J
    .restart local v30    # "tzOffset":I
    .restart local v32    # "year":I
    :cond_18
    :try_start_9
    invoke-static {v12, v13}, Ljava/lang/Math;->abs(J)J

    #@5c5
    move-result-wide v34

    #@5c6
    move/from16 v0, v22

    #@5c8
    int-to-long v0, v0

    #@5c9
    move-wide/from16 v36, v0

    #@5cb
    cmp-long v34, v34, v36

    #@5cd
    if-gtz v34, :cond_17

    #@5cf
    .line 3981
    new-instance v34, Ljava/lang/StringBuilder;

    #@5d1
    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    #@5d4
    const-string/jumbo v35, "NITZ: ignore, a previous update was "

    #@5d7
    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5da
    move-result-object v34

    #@5db
    move-object/from16 v0, v34

    #@5dd
    move-wide/from16 v1, v28

    #@5df
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@5e2
    move-result-object v34

    #@5e3
    .line 3982
    const-string/jumbo v35, "ms ago and gained="

    #@5e6
    .line 3981
    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5e9
    move-result-object v34

    #@5ea
    move-object/from16 v0, v34

    #@5ec
    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@5ef
    move-result-object v34

    #@5f0
    .line 3982
    const-string/jumbo v35, "ms"

    #@5f3
    .line 3981
    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f6
    move-result-object v34

    #@5f7
    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5fa
    move-result-object v34

    #@5fb
    move-object/from16 v0, p0

    #@5fd
    move-object/from16 v1, v34

    #@5ff
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    #@602
    .line 3994
    :try_start_a
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@605
    move-result-wide v10

    #@606
    .line 3995
    .restart local v10    # "end":J
    new-instance v34, Ljava/lang/StringBuilder;

    #@608
    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    #@60b
    const-string/jumbo v35, "NITZ: end="

    #@60e
    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@611
    move-result-object v34

    #@612
    move-object/from16 v0, v34

    #@614
    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@617
    move-result-object v34

    #@618
    const-string/jumbo v35, " dur="

    #@61b
    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@61e
    move-result-object v34

    #@61f
    sub-long v36, v10, v26

    #@621
    move-object/from16 v0, v34

    #@623
    move-wide/from16 v1, v36

    #@625
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@628
    move-result-object v34

    #@629
    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@62c
    move-result-object v34

    #@62d
    move-object/from16 v0, p0

    #@62f
    move-object/from16 v1, v34

    #@631
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    #@634
    .line 3997
    move-object/from16 v0, p0

    #@636
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@638
    move-object/from16 v34, v0

    #@63a
    invoke-virtual/range {v34 .. v34}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_a
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_0

    #@63d
    .line 3984
    return-void
.end method

.method private updateOperatorNameFromEri()V
    .locals 9

    #@0
    .prologue
    const v8, 0x10400ea

    #@3
    const/4 v5, 0x1

    #@4
    const/4 v1, 0x0

    #@5
    const/4 v4, 0x0

    #@6
    .line 3262
    iget-object v6, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@8
    invoke-virtual {v6}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeCdma()Z

    #@b
    move-result v6

    #@c
    if-eqz v6, :cond_3

    #@e
    .line 3263
    iget-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@10
    invoke-interface {v4}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    #@13
    move-result-object v4

    #@14
    invoke-virtual {v4}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    #@17
    move-result v4

    #@18
    if-eqz v4, :cond_0

    #@1a
    iget-boolean v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIsSubscriptionFromRuim:Z

    #@1c
    if-eqz v4, :cond_1

    #@1e
    .line 3261
    :cond_0
    :goto_0
    return-void

    #@1f
    .line 3266
    :cond_1
    iget-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@21
    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    #@24
    move-result v4

    #@25
    if-nez v4, :cond_2

    #@27
    .line 3267
    iget-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@29
    invoke-virtual {v4}, Lcom/android/internal/telephony/GsmCdmaPhone;->getCdmaEriText()Ljava/lang/String;

    #@2c
    move-result-object v0

    #@2d
    .line 3274
    .local v0, "eriText":Ljava/lang/String;
    :goto_1
    iget-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@2f
    invoke-virtual {v4, v0}, Landroid/telephony/ServiceState;->setOperatorAlphaLong(Ljava/lang/String;)V

    #@32
    goto :goto_0

    #@33
    .line 3271
    .end local v0    # "eriText":Ljava/lang/String;
    :cond_2
    iget-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@35
    invoke-virtual {v4}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    #@38
    move-result-object v4

    #@39
    invoke-virtual {v4, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@3c
    move-result-object v4

    #@3d
    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@40
    move-result-object v0

    #@41
    .restart local v0    # "eriText":Ljava/lang/String;
    goto :goto_1

    #@42
    .line 3276
    .end local v0    # "eriText":Ljava/lang/String;
    :cond_3
    iget-object v6, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@44
    invoke-virtual {v6}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeCdmaLte()Z

    #@47
    move-result v6

    #@48
    if-eqz v6, :cond_0

    #@4a
    .line 3277
    iget-object v6, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    #@4c
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getPhoneId()I

    #@4f
    move-result v7

    #@50
    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    #@53
    move-result-object v6

    #@54
    if-eqz v6, :cond_4

    #@56
    .line 3278
    iget-object v6, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    #@58
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getPhoneId()I

    #@5b
    move-result v7

    #@5c
    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    #@5f
    move-result-object v6

    #@60
    invoke-virtual {v6}, Lcom/android/internal/telephony/uicc/UiccCard;->getOperatorBrandOverride()Ljava/lang/String;

    #@63
    move-result-object v6

    #@64
    if-eqz v6, :cond_4

    #@66
    move v1, v5

    #@67
    .line 3279
    .local v1, "hasBrandOverride":Z
    :cond_4
    if-nez v1, :cond_7

    #@69
    iget-object v6, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@6b
    invoke-interface {v6}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    #@6e
    move-result-object v6

    #@6f
    invoke-virtual {v6}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    #@72
    move-result v6

    #@73
    if-eqz v6, :cond_7

    #@75
    iget-object v6, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@77
    invoke-virtual {v6}, Lcom/android/internal/telephony/GsmCdmaPhone;->isEriFileLoaded()Z

    #@7a
    move-result v6

    #@7b
    if-eqz v6, :cond_7

    #@7d
    .line 3280
    iget-object v6, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@7f
    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    #@82
    move-result v6

    #@83
    invoke-static {v6}, Landroid/telephony/ServiceState;->isLte(I)Z

    #@86
    move-result v6

    #@87
    if-eqz v6, :cond_5

    #@89
    .line 3281
    iget-object v6, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@8b
    invoke-virtual {v6}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    #@8e
    move-result-object v6

    #@8f
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@92
    move-result-object v6

    #@93
    const v7, 0x112009f

    #@96
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@99
    move-result v6

    #@9a
    .line 3279
    if-eqz v6, :cond_7

    #@9c
    .line 3284
    :cond_5
    iget-object v6, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@9e
    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    #@a1
    move-result-object v0

    #@a2
    .line 3286
    .restart local v0    # "eriText":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@a4
    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    #@a7
    move-result v6

    #@a8
    if-nez v6, :cond_8

    #@aa
    .line 3287
    iget-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@ac
    invoke-virtual {v4}, Lcom/android/internal/telephony/GsmCdmaPhone;->getCdmaEriText()Ljava/lang/String;

    #@af
    move-result-object v0

    #@b0
    .line 3301
    :cond_6
    :goto_2
    iget-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@b2
    invoke-virtual {v4, v0}, Landroid/telephony/ServiceState;->setOperatorAlphaLong(Ljava/lang/String;)V

    #@b5
    .line 3304
    .end local v0    # "eriText":Ljava/lang/String;
    :cond_7
    iget-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@b7
    if-eqz v4, :cond_0

    #@b9
    iget-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@bb
    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getState()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    #@be
    move-result-object v4

    #@bf
    sget-object v6, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_READY:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    #@c1
    if-ne v4, v6, :cond_0

    #@c3
    .line 3305
    iget-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    #@c5
    if-eqz v4, :cond_0

    #@c7
    iget-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@c9
    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    #@cc
    move-result v4

    #@cd
    if-nez v4, :cond_0

    #@cf
    .line 3306
    iget-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@d1
    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    #@d4
    move-result v4

    #@d5
    invoke-static {v4}, Landroid/telephony/ServiceState;->isLte(I)Z

    #@d8
    move-result v4

    #@d9
    if-nez v4, :cond_0

    #@db
    .line 3311
    iget-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    #@dd
    check-cast v4, Lcom/android/internal/telephony/uicc/RuimRecords;

    #@df
    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/RuimRecords;->getCsimSpnDisplayCondition()Z

    #@e2
    move-result v3

    #@e3
    .line 3312
    .local v3, "showSpn":Z
    iget-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@e5
    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getCdmaEriIconIndex()I

    #@e8
    move-result v2

    #@e9
    .line 3314
    .local v2, "iconIndex":I
    if-eqz v3, :cond_0

    #@eb
    if-ne v2, v5, :cond_0

    #@ed
    .line 3315
    iget-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@ef
    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getSystemId()I

    #@f2
    move-result v4

    #@f3
    iget-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@f5
    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getNetworkId()I

    #@f8
    move-result v5

    #@f9
    invoke-direct {p0, v4, v5}, Lcom/android/internal/telephony/ServiceStateTracker;->isInHomeSidNid(II)Z

    #@fc
    move-result v4

    #@fd
    .line 3314
    if-eqz v4, :cond_0

    #@ff
    .line 3316
    iget-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    #@101
    if-eqz v4, :cond_0

    #@103
    .line 3317
    iget-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@105
    iget-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    #@107
    invoke-virtual {v5}, Lcom/android/internal/telephony/uicc/IccRecords;->getServiceProviderName()Ljava/lang/String;

    #@10a
    move-result-object v5

    #@10b
    invoke-virtual {v4, v5}, Landroid/telephony/ServiceState;->setOperatorAlphaLong(Ljava/lang/String;)V

    #@10e
    goto/16 :goto_0

    #@110
    .line 3288
    .end local v2    # "iconIndex":I
    .end local v3    # "showSpn":Z
    .restart local v0    # "eriText":Ljava/lang/String;
    :cond_8
    iget-object v6, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@112
    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    #@115
    move-result v6

    #@116
    const/4 v7, 0x3

    #@117
    if-ne v6, v7, :cond_a

    #@119
    .line 3289
    iget-object v6, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    #@11b
    if-eqz v6, :cond_9

    #@11d
    iget-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    #@11f
    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/IccRecords;->getServiceProviderName()Ljava/lang/String;

    #@122
    move-result-object v0

    #@123
    .line 3290
    :goto_3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@126
    move-result v4

    #@127
    if-eqz v4, :cond_6

    #@129
    .line 3293
    const-string/jumbo v4, "ro.cdma.home.operator.alpha"

    #@12c
    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    #@12f
    move-result-object v0

    #@130
    goto :goto_2

    #@131
    :cond_9
    move-object v0, v4

    #@132
    .line 3289
    goto :goto_3

    #@133
    .line 3295
    :cond_a
    iget-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@135
    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getDataRegState()I

    #@138
    move-result v4

    #@139
    if-eqz v4, :cond_6

    #@13b
    .line 3298
    iget-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@13d
    invoke-virtual {v4}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    #@140
    move-result-object v4

    #@141
    invoke-virtual {v4, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@144
    move-result-object v4

    #@145
    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@148
    move-result-object v0

    #@149
    goto/16 :goto_2
.end method


# virtual methods
.method protected final alwaysOnHomeNetwork(Landroid/os/BaseBundle;)Z
    .locals 1
    .param p1, "b"    # Landroid/os/BaseBundle;

    #@0
    .prologue
    .line 4945
    const-string/jumbo v0, "force_home_network_bool"

    #@3
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    #@6
    move-result v0

    #@7
    return v0
.end method

.method protected cancelPollState()V
    .locals 1

    #@0
    .prologue
    .line 4471
    const/4 v0, 0x1

    #@1
    new-array v0, v0, [I

    #@3
    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPollingContext:[I

    #@5
    .line 4469
    return-void
.end method

.method protected checkCorrectThread()V
    .locals 2

    #@0
    .prologue
    .line 4744
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getLooper()Landroid/os/Looper;

    #@7
    move-result-object v1

    #@8
    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    #@b
    move-result-object v1

    #@c
    if-eq v0, v1, :cond_0

    #@e
    .line 4745
    new-instance v0, Ljava/lang/RuntimeException;

    #@10
    .line 4746
    const-string/jumbo v1, "ServiceStateTracker must be used from within one thread"

    #@13
    .line 4745
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@16
    throw v0

    #@17
    .line 4743
    :cond_0
    return-void
.end method

.method public disableLocationUpdates()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 863
    iput-boolean v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mWantContinuousLocationUpdates:Z

    #@3
    .line 864
    iget-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mWantSingleLocationUpdate:Z

    #@5
    if-nez v0, :cond_0

    #@7
    iget-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mWantContinuousLocationUpdates:Z

    #@9
    if-eqz v0, :cond_1

    #@b
    .line 862
    :cond_0
    :goto_0
    return-void

    #@c
    .line 865
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@e
    const/4 v1, 0x0

    #@f
    invoke-interface {v0, v2, v1}, Lcom/android/internal/telephony/CommandsInterface;->setLocationUpdates(ZLandroid/os/Message;)V

    #@12
    goto :goto_0
.end method

.method protected disableSingleLocationUpdate()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 856
    iput-boolean v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mWantSingleLocationUpdate:Z

    #@3
    .line 857
    iget-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mWantSingleLocationUpdate:Z

    #@5
    if-nez v0, :cond_0

    #@7
    iget-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mWantContinuousLocationUpdates:Z

    #@9
    if-eqz v0, :cond_1

    #@b
    .line 855
    :cond_0
    :goto_0
    return-void

    #@c
    .line 858
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@e
    const/4 v1, 0x0

    #@f
    invoke-interface {v0, v2, v1}, Lcom/android/internal/telephony/CommandsInterface;->setLocationUpdates(ZLandroid/os/Message;)V

    #@12
    goto :goto_0
.end method

.method public dispose()V
    .locals 2

    #@0
    .prologue
    .line 643
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@2
    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnSignalStrengthUpdate(Landroid/os/Handler;)V

    #@5
    .line 644
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    #@7
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/UiccController;->unregisterForIccChanged(Landroid/os/Handler;)V

    #@a
    .line 645
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@c
    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForCellInfoList(Landroid/os/Handler;)V

    #@f
    .line 646
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    #@11
    .line 647
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mOnSubscriptionsChangedListener:Lcom/android/internal/telephony/ServiceStateTracker$SstSubscriptionsChangedListener;

    #@13
    .line 646
    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager;->removeOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    #@16
    .line 648
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@18
    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForImsNetworkStateChanged(Landroid/os/Handler;)V

    #@1b
    .line 642
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 4639
    const-string/jumbo v1, "ServiceStateTracker:"

    #@3
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@6
    .line 4640
    new-instance v1, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string/jumbo v2, " mSubId="

    #@e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    iget v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSubId:I

    #@14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v1

    #@1c
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1f
    .line 4641
    new-instance v1, Ljava/lang/StringBuilder;

    #@21
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@24
    const-string/jumbo v2, " mSS="

    #@27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v1

    #@2b
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@2d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v1

    #@31
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@34
    move-result-object v1

    #@35
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@38
    .line 4642
    new-instance v1, Ljava/lang/StringBuilder;

    #@3a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@3d
    const-string/jumbo v2, " mNewSS="

    #@40
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v1

    #@44
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@46
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v1

    #@4a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4d
    move-result-object v1

    #@4e
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@51
    .line 4643
    new-instance v1, Ljava/lang/StringBuilder;

    #@53
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@56
    const-string/jumbo v2, " mVoiceCapable="

    #@59
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v1

    #@5d
    iget-boolean v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mVoiceCapable:Z

    #@5f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@62
    move-result-object v1

    #@63
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@66
    move-result-object v1

    #@67
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@6a
    .line 4644
    new-instance v1, Ljava/lang/StringBuilder;

    #@6c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@6f
    const-string/jumbo v2, " mRestrictedState="

    #@72
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@75
    move-result-object v1

    #@76
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    #@78
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@7b
    move-result-object v1

    #@7c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7f
    move-result-object v1

    #@80
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@83
    .line 4645
    new-instance v1, Ljava/lang/StringBuilder;

    #@85
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@88
    const-string/jumbo v2, " mPollingContext="

    #@8b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8e
    move-result-object v1

    #@8f
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPollingContext:[I

    #@91
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@94
    move-result-object v1

    #@95
    const-string/jumbo v2, " - "

    #@98
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9b
    move-result-object v2

    #@9c
    .line 4646
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPollingContext:[I

    #@9e
    if-eqz v1, :cond_0

    #@a0
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPollingContext:[I

    #@a2
    const/4 v3, 0x0

    #@a3
    aget v1, v1, v3

    #@a5
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@a8
    move-result-object v1

    #@a9
    .line 4645
    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@ac
    move-result-object v1

    #@ad
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b0
    move-result-object v1

    #@b1
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@b4
    .line 4647
    new-instance v1, Ljava/lang/StringBuilder;

    #@b6
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@b9
    const-string/jumbo v2, " mDesiredPowerState="

    #@bc
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bf
    move-result-object v1

    #@c0
    iget-boolean v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDesiredPowerState:Z

    #@c2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@c5
    move-result-object v1

    #@c6
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c9
    move-result-object v1

    #@ca
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@cd
    .line 4648
    new-instance v1, Ljava/lang/StringBuilder;

    #@cf
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d2
    const-string/jumbo v2, " mDontPollSignalStrength="

    #@d5
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d8
    move-result-object v1

    #@d9
    iget-boolean v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDontPollSignalStrength:Z

    #@db
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@de
    move-result-object v1

    #@df
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e2
    move-result-object v1

    #@e3
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@e6
    .line 4649
    new-instance v1, Ljava/lang/StringBuilder;

    #@e8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@eb
    const-string/jumbo v2, " mSignalStrength="

    #@ee
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f1
    move-result-object v1

    #@f2
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    #@f4
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@f7
    move-result-object v1

    #@f8
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@fb
    move-result-object v1

    #@fc
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@ff
    .line 4650
    new-instance v1, Ljava/lang/StringBuilder;

    #@101
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@104
    const-string/jumbo v2, " mLastSignalStrength="

    #@107
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10a
    move-result-object v1

    #@10b
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mLastSignalStrength:Landroid/telephony/SignalStrength;

    #@10d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@110
    move-result-object v1

    #@111
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@114
    move-result-object v1

    #@115
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@118
    .line 4651
    new-instance v1, Ljava/lang/StringBuilder;

    #@11a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@11d
    const-string/jumbo v2, " mRestrictedState="

    #@120
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@123
    move-result-object v1

    #@124
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    #@126
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@129
    move-result-object v1

    #@12a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@12d
    move-result-object v1

    #@12e
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@131
    .line 4652
    new-instance v1, Ljava/lang/StringBuilder;

    #@133
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@136
    const-string/jumbo v2, " mPendingRadioPowerOffAfterDataOff="

    #@139
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13c
    move-result-object v1

    #@13d
    iget-boolean v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPendingRadioPowerOffAfterDataOff:Z

    #@13f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@142
    move-result-object v1

    #@143
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@146
    move-result-object v1

    #@147
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@14a
    .line 4653
    new-instance v1, Ljava/lang/StringBuilder;

    #@14c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@14f
    const-string/jumbo v2, " mPendingRadioPowerOffAfterDataOffTag="

    #@152
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@155
    move-result-object v1

    #@156
    iget v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPendingRadioPowerOffAfterDataOffTag:I

    #@158
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@15b
    move-result-object v1

    #@15c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@15f
    move-result-object v1

    #@160
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@163
    .line 4654
    new-instance v1, Ljava/lang/StringBuilder;

    #@165
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@168
    const-string/jumbo v2, " mCellLoc="

    #@16b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16e
    move-result-object v1

    #@16f
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCellLoc:Landroid/telephony/CellLocation;

    #@171
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@174
    move-result-object v1

    #@175
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@178
    move-result-object v1

    #@179
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@17c
    .line 4655
    new-instance v1, Ljava/lang/StringBuilder;

    #@17e
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@181
    const-string/jumbo v2, " mNewCellLoc="

    #@184
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@187
    move-result-object v1

    #@188
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewCellLoc:Landroid/telephony/CellLocation;

    #@18a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@18d
    move-result-object v1

    #@18e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@191
    move-result-object v1

    #@192
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@195
    .line 4656
    new-instance v1, Ljava/lang/StringBuilder;

    #@197
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@19a
    const-string/jumbo v2, " mLastCellInfoListTime="

    #@19d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a0
    move-result-object v1

    #@1a1
    iget-wide v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mLastCellInfoListTime:J

    #@1a3
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@1a6
    move-result-object v1

    #@1a7
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1aa
    move-result-object v1

    #@1ab
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1ae
    .line 4657
    new-instance v1, Ljava/lang/StringBuilder;

    #@1b0
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1b3
    const-string/jumbo v2, " mPreferredNetworkType="

    #@1b6
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b9
    move-result-object v1

    #@1ba
    iget v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPreferredNetworkType:I

    #@1bc
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1bf
    move-result-object v1

    #@1c0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c3
    move-result-object v1

    #@1c4
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1c7
    .line 4658
    new-instance v1, Ljava/lang/StringBuilder;

    #@1c9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1cc
    const-string/jumbo v2, " mMaxDataCalls="

    #@1cf
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d2
    move-result-object v1

    #@1d3
    iget v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mMaxDataCalls:I

    #@1d5
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1d8
    move-result-object v1

    #@1d9
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1dc
    move-result-object v1

    #@1dd
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1e0
    .line 4659
    new-instance v1, Ljava/lang/StringBuilder;

    #@1e2
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1e5
    const-string/jumbo v2, " mNewMaxDataCalls="

    #@1e8
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1eb
    move-result-object v1

    #@1ec
    iget v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewMaxDataCalls:I

    #@1ee
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1f1
    move-result-object v1

    #@1f2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f5
    move-result-object v1

    #@1f6
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1f9
    .line 4660
    new-instance v1, Ljava/lang/StringBuilder;

    #@1fb
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1fe
    const-string/jumbo v2, " mReasonDataDenied="

    #@201
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@204
    move-result-object v1

    #@205
    iget v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mReasonDataDenied:I

    #@207
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@20a
    move-result-object v1

    #@20b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20e
    move-result-object v1

    #@20f
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@212
    .line 4661
    new-instance v1, Ljava/lang/StringBuilder;

    #@214
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@217
    const-string/jumbo v2, " mNewReasonDataDenied="

    #@21a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21d
    move-result-object v1

    #@21e
    iget v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewReasonDataDenied:I

    #@220
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@223
    move-result-object v1

    #@224
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@227
    move-result-object v1

    #@228
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@22b
    .line 4662
    new-instance v1, Ljava/lang/StringBuilder;

    #@22d
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@230
    const-string/jumbo v2, " mGsmRoaming="

    #@233
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@236
    move-result-object v1

    #@237
    iget-boolean v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mGsmRoaming:Z

    #@239
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@23c
    move-result-object v1

    #@23d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@240
    move-result-object v1

    #@241
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@244
    .line 4663
    new-instance v1, Ljava/lang/StringBuilder;

    #@246
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@249
    const-string/jumbo v2, " mDataRoaming="

    #@24c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24f
    move-result-object v1

    #@250
    iget-boolean v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDataRoaming:Z

    #@252
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@255
    move-result-object v1

    #@256
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@259
    move-result-object v1

    #@25a
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@25d
    .line 4664
    new-instance v1, Ljava/lang/StringBuilder;

    #@25f
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@262
    const-string/jumbo v2, " mEmergencyOnly="

    #@265
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@268
    move-result-object v1

    #@269
    iget-boolean v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mEmergencyOnly:Z

    #@26b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@26e
    move-result-object v1

    #@26f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@272
    move-result-object v1

    #@273
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@276
    .line 4665
    new-instance v1, Ljava/lang/StringBuilder;

    #@278
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@27b
    const-string/jumbo v2, " mNeedFixZoneAfterNitz="

    #@27e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@281
    move-result-object v1

    #@282
    iget-boolean v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNeedFixZoneAfterNitz:Z

    #@284
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@287
    move-result-object v1

    #@288
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28b
    move-result-object v1

    #@28c
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@28f
    .line 4666
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    #@292
    .line 4667
    new-instance v1, Ljava/lang/StringBuilder;

    #@294
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@297
    const-string/jumbo v2, " mZoneOffset="

    #@29a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29d
    move-result-object v1

    #@29e
    iget v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mZoneOffset:I

    #@2a0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2a3
    move-result-object v1

    #@2a4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a7
    move-result-object v1

    #@2a8
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@2ab
    .line 4668
    new-instance v1, Ljava/lang/StringBuilder;

    #@2ad
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@2b0
    const-string/jumbo v2, " mZoneDst="

    #@2b3
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b6
    move-result-object v1

    #@2b7
    iget-boolean v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mZoneDst:Z

    #@2b9
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@2bc
    move-result-object v1

    #@2bd
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c0
    move-result-object v1

    #@2c1
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@2c4
    .line 4669
    new-instance v1, Ljava/lang/StringBuilder;

    #@2c6
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@2c9
    const-string/jumbo v2, " mZoneTime="

    #@2cc
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2cf
    move-result-object v1

    #@2d0
    iget-wide v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mZoneTime:J

    #@2d2
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@2d5
    move-result-object v1

    #@2d6
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2d9
    move-result-object v1

    #@2da
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@2dd
    .line 4670
    new-instance v1, Ljava/lang/StringBuilder;

    #@2df
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@2e2
    const-string/jumbo v2, " mGotCountryCode="

    #@2e5
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e8
    move-result-object v1

    #@2e9
    iget-boolean v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mGotCountryCode:Z

    #@2eb
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@2ee
    move-result-object v1

    #@2ef
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f2
    move-result-object v1

    #@2f3
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@2f6
    .line 4671
    new-instance v1, Ljava/lang/StringBuilder;

    #@2f8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@2fb
    const-string/jumbo v2, " mNitzUpdatedTime="

    #@2fe
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@301
    move-result-object v1

    #@302
    iget-boolean v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNitzUpdatedTime:Z

    #@304
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@307
    move-result-object v1

    #@308
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@30b
    move-result-object v1

    #@30c
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@30f
    .line 4672
    new-instance v1, Ljava/lang/StringBuilder;

    #@311
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@314
    const-string/jumbo v2, " mSavedTimeZone="

    #@317
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31a
    move-result-object v1

    #@31b
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSavedTimeZone:Ljava/lang/String;

    #@31d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@320
    move-result-object v1

    #@321
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@324
    move-result-object v1

    #@325
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@328
    .line 4673
    new-instance v1, Ljava/lang/StringBuilder;

    #@32a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@32d
    const-string/jumbo v2, " mSavedTime="

    #@330
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@333
    move-result-object v1

    #@334
    iget-wide v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSavedTime:J

    #@336
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@339
    move-result-object v1

    #@33a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@33d
    move-result-object v1

    #@33e
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@341
    .line 4674
    new-instance v1, Ljava/lang/StringBuilder;

    #@343
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@346
    const-string/jumbo v2, " mSavedAtTime="

    #@349
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34c
    move-result-object v1

    #@34d
    iget-wide v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSavedAtTime:J

    #@34f
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@352
    move-result-object v1

    #@353
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@356
    move-result-object v1

    #@357
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@35a
    .line 4675
    new-instance v1, Ljava/lang/StringBuilder;

    #@35c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@35f
    const-string/jumbo v2, " mStartedGprsRegCheck="

    #@362
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@365
    move-result-object v1

    #@366
    iget-boolean v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mStartedGprsRegCheck:Z

    #@368
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@36b
    move-result-object v1

    #@36c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@36f
    move-result-object v1

    #@370
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@373
    .line 4676
    new-instance v1, Ljava/lang/StringBuilder;

    #@375
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@378
    const-string/jumbo v2, " mReportedGprsNoReg="

    #@37b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37e
    move-result-object v1

    #@37f
    iget-boolean v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mReportedGprsNoReg:Z

    #@381
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@384
    move-result-object v1

    #@385
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@388
    move-result-object v1

    #@389
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@38c
    .line 4677
    new-instance v1, Ljava/lang/StringBuilder;

    #@38e
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@391
    const-string/jumbo v2, " mNotification="

    #@394
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@397
    move-result-object v1

    #@398
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNotification:Landroid/app/Notification;

    #@39a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@39d
    move-result-object v1

    #@39e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3a1
    move-result-object v1

    #@3a2
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@3a5
    .line 4678
    new-instance v1, Ljava/lang/StringBuilder;

    #@3a7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@3aa
    const-string/jumbo v2, " mWakeLock="

    #@3ad
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b0
    move-result-object v1

    #@3b1
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@3b3
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3b6
    move-result-object v1

    #@3b7
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3ba
    move-result-object v1

    #@3bb
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@3be
    .line 4679
    new-instance v1, Ljava/lang/StringBuilder;

    #@3c0
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@3c3
    const-string/jumbo v2, " mCurSpn="

    #@3c6
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c9
    move-result-object v1

    #@3ca
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCurSpn:Ljava/lang/String;

    #@3cc
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3cf
    move-result-object v1

    #@3d0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3d3
    move-result-object v1

    #@3d4
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@3d7
    .line 4680
    new-instance v1, Ljava/lang/StringBuilder;

    #@3d9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@3dc
    const-string/jumbo v2, " mCurDataSpn="

    #@3df
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e2
    move-result-object v1

    #@3e3
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCurDataSpn:Ljava/lang/String;

    #@3e5
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e8
    move-result-object v1

    #@3e9
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3ec
    move-result-object v1

    #@3ed
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@3f0
    .line 4681
    new-instance v1, Ljava/lang/StringBuilder;

    #@3f2
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@3f5
    const-string/jumbo v2, " mCurShowSpn="

    #@3f8
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3fb
    move-result-object v1

    #@3fc
    iget-boolean v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCurShowSpn:Z

    #@3fe
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@401
    move-result-object v1

    #@402
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@405
    move-result-object v1

    #@406
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@409
    .line 4682
    new-instance v1, Ljava/lang/StringBuilder;

    #@40b
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@40e
    const-string/jumbo v2, " mCurPlmn="

    #@411
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@414
    move-result-object v1

    #@415
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCurPlmn:Ljava/lang/String;

    #@417
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41a
    move-result-object v1

    #@41b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@41e
    move-result-object v1

    #@41f
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@422
    .line 4683
    new-instance v1, Ljava/lang/StringBuilder;

    #@424
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@427
    const-string/jumbo v2, " mCurShowPlmn="

    #@42a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42d
    move-result-object v1

    #@42e
    iget-boolean v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCurShowPlmn:Z

    #@430
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@433
    move-result-object v1

    #@434
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@437
    move-result-object v1

    #@438
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@43b
    .line 4684
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    #@43e
    .line 4685
    new-instance v1, Ljava/lang/StringBuilder;

    #@440
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@443
    const-string/jumbo v2, " mCurrentOtaspMode="

    #@446
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@449
    move-result-object v1

    #@44a
    iget v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCurrentOtaspMode:I

    #@44c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@44f
    move-result-object v1

    #@450
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@453
    move-result-object v1

    #@454
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@457
    .line 4686
    new-instance v1, Ljava/lang/StringBuilder;

    #@459
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@45c
    const-string/jumbo v2, " mRoamingIndicator="

    #@45f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@462
    move-result-object v1

    #@463
    iget v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRoamingIndicator:I

    #@465
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@468
    move-result-object v1

    #@469
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@46c
    move-result-object v1

    #@46d
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@470
    .line 4687
    new-instance v1, Ljava/lang/StringBuilder;

    #@472
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@475
    const-string/jumbo v2, " mIsInPrl="

    #@478
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47b
    move-result-object v1

    #@47c
    iget-boolean v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIsInPrl:Z

    #@47e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@481
    move-result-object v1

    #@482
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@485
    move-result-object v1

    #@486
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@489
    .line 4688
    new-instance v1, Ljava/lang/StringBuilder;

    #@48b
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@48e
    const-string/jumbo v2, " mDefaultRoamingIndicator="

    #@491
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@494
    move-result-object v1

    #@495
    iget v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDefaultRoamingIndicator:I

    #@497
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@49a
    move-result-object v1

    #@49b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@49e
    move-result-object v1

    #@49f
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@4a2
    .line 4689
    new-instance v1, Ljava/lang/StringBuilder;

    #@4a4
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@4a7
    const-string/jumbo v2, " mRegistrationState="

    #@4aa
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4ad
    move-result-object v1

    #@4ae
    iget v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRegistrationState:I

    #@4b0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4b3
    move-result-object v1

    #@4b4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4b7
    move-result-object v1

    #@4b8
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@4bb
    .line 4690
    new-instance v1, Ljava/lang/StringBuilder;

    #@4bd
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@4c0
    const-string/jumbo v2, " mMdn="

    #@4c3
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c6
    move-result-object v1

    #@4c7
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mMdn:Ljava/lang/String;

    #@4c9
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4cc
    move-result-object v1

    #@4cd
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4d0
    move-result-object v1

    #@4d1
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@4d4
    .line 4691
    new-instance v1, Ljava/lang/StringBuilder;

    #@4d6
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@4d9
    const-string/jumbo v2, " mHomeSystemId="

    #@4dc
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4df
    move-result-object v1

    #@4e0
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mHomeSystemId:[I

    #@4e2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4e5
    move-result-object v1

    #@4e6
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4e9
    move-result-object v1

    #@4ea
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@4ed
    .line 4692
    new-instance v1, Ljava/lang/StringBuilder;

    #@4ef
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@4f2
    const-string/jumbo v2, " mHomeNetworkId="

    #@4f5
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f8
    move-result-object v1

    #@4f9
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mHomeNetworkId:[I

    #@4fb
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4fe
    move-result-object v1

    #@4ff
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@502
    move-result-object v1

    #@503
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@506
    .line 4693
    new-instance v1, Ljava/lang/StringBuilder;

    #@508
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@50b
    const-string/jumbo v2, " mMin="

    #@50e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@511
    move-result-object v1

    #@512
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mMin:Ljava/lang/String;

    #@514
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@517
    move-result-object v1

    #@518
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@51b
    move-result-object v1

    #@51c
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@51f
    .line 4694
    new-instance v1, Ljava/lang/StringBuilder;

    #@521
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@524
    const-string/jumbo v2, " mPrlVersion="

    #@527
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52a
    move-result-object v1

    #@52b
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPrlVersion:Ljava/lang/String;

    #@52d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@530
    move-result-object v1

    #@531
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@534
    move-result-object v1

    #@535
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@538
    .line 4695
    new-instance v1, Ljava/lang/StringBuilder;

    #@53a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@53d
    const-string/jumbo v2, " mIsMinInfoReady="

    #@540
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@543
    move-result-object v1

    #@544
    iget-boolean v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIsMinInfoReady:Z

    #@546
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@549
    move-result-object v1

    #@54a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@54d
    move-result-object v1

    #@54e
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@551
    .line 4696
    new-instance v1, Ljava/lang/StringBuilder;

    #@553
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@556
    const-string/jumbo v2, " mIsEriTextLoaded="

    #@559
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55c
    move-result-object v1

    #@55d
    iget-boolean v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIsEriTextLoaded:Z

    #@55f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@562
    move-result-object v1

    #@563
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@566
    move-result-object v1

    #@567
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@56a
    .line 4697
    new-instance v1, Ljava/lang/StringBuilder;

    #@56c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@56f
    const-string/jumbo v2, " mIsSubscriptionFromRuim="

    #@572
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@575
    move-result-object v1

    #@576
    iget-boolean v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIsSubscriptionFromRuim:Z

    #@578
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@57b
    move-result-object v1

    #@57c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@57f
    move-result-object v1

    #@580
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@583
    .line 4698
    new-instance v1, Ljava/lang/StringBuilder;

    #@585
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@588
    const-string/jumbo v2, " mCdmaSSM="

    #@58b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@58e
    move-result-object v1

    #@58f
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    #@591
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@594
    move-result-object v1

    #@595
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@598
    move-result-object v1

    #@599
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@59c
    .line 4699
    new-instance v1, Ljava/lang/StringBuilder;

    #@59e
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@5a1
    const-string/jumbo v2, " mRegistrationDeniedReason="

    #@5a4
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a7
    move-result-object v1

    #@5a8
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRegistrationDeniedReason:Ljava/lang/String;

    #@5aa
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5ad
    move-result-object v1

    #@5ae
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5b1
    move-result-object v1

    #@5b2
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@5b5
    .line 4700
    new-instance v1, Ljava/lang/StringBuilder;

    #@5b7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@5ba
    const-string/jumbo v2, " mCurrentCarrier="

    #@5bd
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c0
    move-result-object v1

    #@5c1
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCurrentCarrier:Ljava/lang/String;

    #@5c3
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c6
    move-result-object v1

    #@5c7
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5ca
    move-result-object v1

    #@5cb
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@5ce
    .line 4701
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    #@5d1
    .line 4702
    new-instance v1, Ljava/lang/StringBuilder;

    #@5d3
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@5d6
    const-string/jumbo v2, " mImsRegistered="

    #@5d9
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5dc
    move-result-object v1

    #@5dd
    iget-boolean v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mImsRegistered:Z

    #@5df
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@5e2
    move-result-object v1

    #@5e3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5e6
    move-result-object v1

    #@5e7
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@5ea
    .line 4703
    new-instance v1, Ljava/lang/StringBuilder;

    #@5ec
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@5ef
    const-string/jumbo v2, " mImsRegistrationOnOff="

    #@5f2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f5
    move-result-object v1

    #@5f6
    iget-boolean v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mImsRegistrationOnOff:Z

    #@5f8
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@5fb
    move-result-object v1

    #@5fc
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5ff
    move-result-object v1

    #@600
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@603
    .line 4704
    new-instance v1, Ljava/lang/StringBuilder;

    #@605
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@608
    const-string/jumbo v2, " mAlarmSwitch="

    #@60b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@60e
    move-result-object v1

    #@60f
    iget-boolean v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mAlarmSwitch:Z

    #@611
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@614
    move-result-object v1

    #@615
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@618
    move-result-object v1

    #@619
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@61c
    .line 4705
    new-instance v1, Ljava/lang/StringBuilder;

    #@61e
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@621
    const-string/jumbo v2, " mRadioDisabledByCarrier"

    #@624
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@627
    move-result-object v1

    #@628
    iget-boolean v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRadioDisabledByCarrier:Z

    #@62a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@62d
    move-result-object v1

    #@62e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@631
    move-result-object v1

    #@632
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@635
    .line 4706
    new-instance v1, Ljava/lang/StringBuilder;

    #@637
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@63a
    const-string/jumbo v2, " mPowerOffDelayNeed="

    #@63d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@640
    move-result-object v1

    #@641
    iget-boolean v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPowerOffDelayNeed:Z

    #@643
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@646
    move-result-object v1

    #@647
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@64a
    move-result-object v1

    #@64b
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@64e
    .line 4707
    new-instance v1, Ljava/lang/StringBuilder;

    #@650
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@653
    const-string/jumbo v2, " mDeviceShuttingDown="

    #@656
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@659
    move-result-object v1

    #@65a
    iget-boolean v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDeviceShuttingDown:Z

    #@65c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@65f
    move-result-object v1

    #@660
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@663
    move-result-object v1

    #@664
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@667
    .line 4708
    new-instance v1, Ljava/lang/StringBuilder;

    #@669
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@66c
    const-string/jumbo v2, " mSpnUpdatePending="

    #@66f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@672
    move-result-object v1

    #@673
    iget-boolean v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSpnUpdatePending:Z

    #@675
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@678
    move-result-object v1

    #@679
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@67c
    move-result-object v1

    #@67d
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@680
    .line 4710
    const-string/jumbo v1, " Roaming Log:"

    #@683
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@686
    .line 4711
    new-instance v0, Lcom/android/internal/util/IndentingPrintWriter;

    #@688
    const-string/jumbo v1, "  "

    #@68b
    invoke-direct {v0, p2, v1}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    #@68e
    .line 4712
    .local v0, "ipw":Lcom/android/internal/util/IndentingPrintWriter;
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    #@691
    .line 4713
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRoamingLog:Landroid/util/LocalLog;

    #@693
    invoke-virtual {v1, p1, v0, p3}, Landroid/util/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    #@696
    .line 4714
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    #@699
    .line 4716
    const-string/jumbo v1, " Attach Log:"

    #@69c
    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@69f
    .line 4717
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    #@6a2
    .line 4718
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mAttachLog:Landroid/util/LocalLog;

    #@6a4
    invoke-virtual {v1, p1, v0, p3}, Landroid/util/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    #@6a7
    .line 4719
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    #@6aa
    .line 4721
    const-string/jumbo v1, " Phone Change Log:"

    #@6ad
    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@6b0
    .line 4722
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    #@6b3
    .line 4723
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhoneTypeLog:Landroid/util/LocalLog;

    #@6b5
    invoke-virtual {v1, p1, v0, p3}, Landroid/util/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    #@6b8
    .line 4724
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    #@6bb
    .line 4726
    const-string/jumbo v1, " Rat Change Log:"

    #@6be
    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@6c1
    .line 4727
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    #@6c4
    .line 4728
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRatLog:Landroid/util/LocalLog;

    #@6c6
    invoke-virtual {v1, p1, v0, p3}, Landroid/util/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    #@6c9
    .line 4729
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    #@6cc
    .line 4638
    return-void

    #@6cd
    .line 4646
    .end local v0    # "ipw":Lcom/android/internal/util/IndentingPrintWriter;
    :cond_0
    const-string/jumbo v1, ""

    #@6d0
    goto/16 :goto_0
.end method

.method public enableLocationUpdates()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 850
    iget-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mWantSingleLocationUpdate:Z

    #@3
    if-nez v0, :cond_0

    #@5
    iget-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mWantContinuousLocationUpdates:Z

    #@7
    if-eqz v0, :cond_1

    #@9
    :cond_0
    return-void

    #@a
    .line 851
    :cond_1
    iput-boolean v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mWantContinuousLocationUpdates:Z

    #@c
    .line 852
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@e
    const/16 v1, 0x12

    #@10
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    #@13
    move-result-object v1

    #@14
    invoke-interface {v0, v2, v1}, Lcom/android/internal/telephony/CommandsInterface;->setLocationUpdates(ZLandroid/os/Message;)V

    #@17
    .line 849
    return-void
.end method

.method public enableSingleLocationUpdate()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 844
    iget-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mWantSingleLocationUpdate:Z

    #@3
    if-nez v0, :cond_0

    #@5
    iget-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mWantContinuousLocationUpdates:Z

    #@7
    if-eqz v0, :cond_1

    #@9
    :cond_0
    return-void

    #@a
    .line 845
    :cond_1
    iput-boolean v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mWantSingleLocationUpdate:Z

    #@c
    .line 846
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@e
    const/16 v1, 0x12

    #@10
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    #@13
    move-result-object v1

    #@14
    invoke-interface {v0, v2, v1}, Lcom/android/internal/telephony/CommandsInterface;->setLocationUpdates(ZLandroid/os/Message;)V

    #@17
    .line 843
    return-void
.end method

.method protected fixTimeZone(Ljava/lang/String;)V
    .locals 13
    .param p1, "isoCountryCode"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v12, 0x0

    #@1
    .line 3402
    const/4 v6, 0x0

    #@2
    .line 3405
    .local v6, "zone":Ljava/util/TimeZone;
    const-string/jumbo v8, "persist.sys.timezone"

    #@5
    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    #@8
    move-result-object v7

    #@9
    .line 3407
    .local v7, "zoneName":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string/jumbo v9, "fixTimeZone zoneName=\'"

    #@11
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v8

    #@15
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v8

    #@19
    .line 3408
    const-string/jumbo v9, "\' mZoneOffset="

    #@1c
    .line 3407
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v8

    #@20
    .line 3408
    iget v9, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mZoneOffset:I

    #@22
    .line 3407
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@25
    move-result-object v8

    #@26
    .line 3408
    const-string/jumbo v9, " mZoneDst="

    #@29
    .line 3407
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v8

    #@2d
    .line 3408
    iget-boolean v9, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mZoneDst:Z

    #@2f
    .line 3407
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@32
    move-result-object v8

    #@33
    .line 3409
    const-string/jumbo v9, " iso-cc=\'"

    #@36
    .line 3407
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v8

    #@3a
    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v8

    #@3e
    .line 3410
    const-string/jumbo v9, "\' iso-cc-idx="

    #@41
    .line 3407
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v8

    #@45
    .line 3410
    sget-object v9, Lcom/android/internal/telephony/ServiceStateTracker;->GMT_COUNTRY_CODES:[Ljava/lang/String;

    #@47
    invoke-static {v9, p1}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    #@4a
    move-result v9

    #@4b
    .line 3407
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v8

    #@4f
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@52
    move-result-object v8

    #@53
    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    #@56
    .line 3412
    const-string/jumbo v8, ""

    #@59
    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@5c
    move-result v8

    #@5d
    if-eqz v8, :cond_0

    #@5f
    iget-boolean v8, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNeedFixZoneAfterNitz:Z

    #@61
    if-eqz v8, :cond_0

    #@63
    .line 3415
    iget v8, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mZoneOffset:I

    #@65
    iget-boolean v9, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mZoneDst:Z

    #@67
    iget-wide v10, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mZoneTime:J

    #@69
    invoke-direct {p0, v8, v9, v10, v11}, Lcom/android/internal/telephony/ServiceStateTracker;->getNitzTimeZone(IZJ)Ljava/util/TimeZone;

    #@6c
    move-result-object v6

    #@6d
    .line 3416
    .local v6, "zone":Ljava/util/TimeZone;
    const-string/jumbo v8, "pollStateDone: using NITZ TimeZone"

    #@70
    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    #@73
    .line 3446
    :goto_0
    iput-boolean v12, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNeedFixZoneAfterNitz:Z

    #@75
    .line 3448
    if-eqz v6, :cond_5

    #@77
    .line 3449
    new-instance v8, Ljava/lang/StringBuilder;

    #@79
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@7c
    const-string/jumbo v9, "fixTimeZone: zone != null zone.getID="

    #@7f
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@82
    move-result-object v8

    #@83
    invoke-virtual {v6}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    #@86
    move-result-object v9

    #@87
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8a
    move-result-object v8

    #@8b
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8e
    move-result-object v8

    #@8f
    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    #@92
    .line 3450
    invoke-direct {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getAutoTimeZone()Z

    #@95
    move-result v8

    #@96
    if-eqz v8, :cond_4

    #@98
    .line 3451
    invoke-virtual {v6}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    #@9b
    move-result-object v8

    #@9c
    invoke-direct {p0, v8}, Lcom/android/internal/telephony/ServiceStateTracker;->setAndBroadcastNetworkSetTimeZone(Ljava/lang/String;)V

    #@9f
    .line 3455
    :goto_1
    invoke-virtual {v6}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    #@a2
    move-result-object v8

    #@a3
    invoke-direct {p0, v8}, Lcom/android/internal/telephony/ServiceStateTracker;->saveNitzTimeZone(Ljava/lang/String;)V

    #@a6
    .line 3401
    :goto_2
    return-void

    #@a7
    .line 3417
    .local v6, "zone":Ljava/util/TimeZone;
    :cond_0
    iget v8, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mZoneOffset:I

    #@a9
    if-nez v8, :cond_3

    #@ab
    iget-boolean v8, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mZoneDst:Z

    #@ad
    if-nez v8, :cond_3

    #@af
    if-eqz v7, :cond_3

    #@b1
    .line 3418
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    #@b4
    move-result v8

    #@b5
    if-lez v8, :cond_3

    #@b7
    .line 3419
    sget-object v8, Lcom/android/internal/telephony/ServiceStateTracker;->GMT_COUNTRY_CODES:[Ljava/lang/String;

    #@b9
    invoke-static {v8, p1}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    #@bc
    move-result v8

    #@bd
    if-gez v8, :cond_3

    #@bf
    .line 3422
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    #@c2
    move-result-object v6

    #@c3
    .line 3423
    .local v6, "zone":Ljava/util/TimeZone;
    iget-boolean v8, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNeedFixZoneAfterNitz:Z

    #@c5
    if-eqz v8, :cond_1

    #@c7
    .line 3424
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@ca
    move-result-wide v2

    #@cb
    .line 3425
    .local v2, "ctm":J
    invoke-virtual {v6, v2, v3}, Ljava/util/TimeZone;->getOffset(J)I

    #@ce
    move-result v8

    #@cf
    int-to-long v4, v8

    #@d0
    .line 3427
    .local v4, "tzOffset":J
    new-instance v8, Ljava/lang/StringBuilder;

    #@d2
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@d5
    const-string/jumbo v9, "fixTimeZone: tzOffset="

    #@d8
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@db
    move-result-object v8

    #@dc
    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@df
    move-result-object v8

    #@e0
    .line 3428
    const-string/jumbo v9, " ltod="

    #@e3
    .line 3427
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e6
    move-result-object v8

    #@e7
    .line 3428
    invoke-static {v2, v3}, Landroid/util/TimeUtils;->logTimeOfDay(J)Ljava/lang/String;

    #@ea
    move-result-object v9

    #@eb
    .line 3427
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ee
    move-result-object v8

    #@ef
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@f2
    move-result-object v8

    #@f3
    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    #@f6
    .line 3430
    invoke-direct {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getAutoTime()Z

    #@f9
    move-result v8

    #@fa
    if-eqz v8, :cond_2

    #@fc
    .line 3431
    sub-long v0, v2, v4

    #@fe
    .line 3432
    .local v0, "adj":J
    new-instance v8, Ljava/lang/StringBuilder;

    #@100
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@103
    const-string/jumbo v9, "fixTimeZone: adj ltod="

    #@106
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@109
    move-result-object v8

    #@10a
    invoke-static {v0, v1}, Landroid/util/TimeUtils;->logTimeOfDay(J)Ljava/lang/String;

    #@10d
    move-result-object v9

    #@10e
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@111
    move-result-object v8

    #@112
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@115
    move-result-object v8

    #@116
    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    #@119
    .line 3433
    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->setAndBroadcastNetworkSetTime(J)V

    #@11c
    .line 3440
    .end local v0    # "adj":J
    .end local v2    # "ctm":J
    .end local v4    # "tzOffset":J
    :cond_1
    :goto_3
    const-string/jumbo v8, "fixTimeZone: using default TimeZone"

    #@11f
    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    #@122
    goto/16 :goto_0

    #@124
    .line 3436
    .restart local v2    # "ctm":J
    .restart local v4    # "tzOffset":J
    :cond_2
    iget-wide v8, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSavedTime:J

    #@126
    sub-long/2addr v8, v4

    #@127
    iput-wide v8, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSavedTime:J

    #@129
    .line 3437
    new-instance v8, Ljava/lang/StringBuilder;

    #@12b
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@12e
    const-string/jumbo v9, "fixTimeZone: adj mSavedTime="

    #@131
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@134
    move-result-object v8

    #@135
    iget-wide v10, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSavedTime:J

    #@137
    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@13a
    move-result-object v8

    #@13b
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13e
    move-result-object v8

    #@13f
    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    #@142
    goto :goto_3

    #@143
    .line 3442
    .end local v2    # "ctm":J
    .end local v4    # "tzOffset":J
    .local v6, "zone":Ljava/util/TimeZone;
    :cond_3
    iget v8, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mZoneOffset:I

    #@145
    iget-boolean v9, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mZoneDst:Z

    #@147
    iget-wide v10, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mZoneTime:J

    #@149
    invoke-static {v8, v9, v10, v11, p1}, Landroid/util/TimeUtils;->getTimeZone(IZJLjava/lang/String;)Ljava/util/TimeZone;

    #@14c
    move-result-object v6

    #@14d
    .line 3443
    .local v6, "zone":Ljava/util/TimeZone;
    const-string/jumbo v8, "fixTimeZone: using getTimeZone(off, dst, time, iso)"

    #@150
    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    #@153
    goto/16 :goto_0

    #@155
    .line 3453
    :cond_4
    const-string/jumbo v8, "fixTimeZone: skip changing zone as getAutoTimeZone was false"

    #@158
    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    #@15b
    goto/16 :goto_1

    #@15d
    .line 3457
    :cond_5
    const-string/jumbo v8, "fixTimeZone: zone == null, do nothing for zone"

    #@160
    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    #@163
    goto/16 :goto_2
.end method

.method protected fixUnknownMcc(Ljava/lang/String;I)Ljava/lang/String;
    .locals 10
    .param p1, "operatorNumeric"    # Ljava/lang/String;
    .param p2, "sid"    # I

    #@0
    .prologue
    const v7, 0x36ee80

    #@3
    const/4 v4, 0x0

    #@4
    .line 3371
    if-gtz p2, :cond_0

    #@6
    .line 3373
    return-object p1

    #@7
    .line 3380
    :cond_0
    const/4 v0, 0x0

    #@8
    .line 3381
    .local v0, "isNitzTimeZone":Z
    const/4 v2, 0x0

    #@9
    .line 3382
    .local v2, "timeZone":I
    const/4 v3, 0x0

    #@a
    .line 3383
    .local v3, "tzone":Ljava/util/TimeZone;
    iget-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSavedTimeZone:Ljava/lang/String;

    #@c
    if-eqz v5, :cond_4

    #@e
    .line 3385
    iget-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSavedTimeZone:Ljava/lang/String;

    #@10
    invoke-static {v5}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    #@13
    move-result-object v5

    #@14
    invoke-virtual {v5}, Ljava/util/TimeZone;->getRawOffset()I

    #@17
    move-result v5

    #@18
    div-int v2, v5, v7

    #@1a
    .line 3386
    const/4 v0, 0x1

    #@1b
    .line 3393
    .end local v3    # "tzone":Ljava/util/TimeZone;
    :cond_1
    :goto_0
    iget-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mHbpcdUtils:Lcom/android/internal/telephony/HbpcdUtils;

    #@1d
    .line 3394
    iget-boolean v6, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mZoneDst:Z

    #@1f
    if-eqz v6, :cond_2

    #@21
    const/4 v4, 0x1

    #@22
    .line 3393
    :cond_2
    invoke-virtual {v5, p2, v2, v4, v0}, Lcom/android/internal/telephony/HbpcdUtils;->getMcc(IIIZ)I

    #@25
    move-result v1

    #@26
    .line 3395
    .local v1, "mcc":I
    if-lez v1, :cond_3

    #@28
    .line 3396
    new-instance v4, Ljava/lang/StringBuilder;

    #@2a
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@2d
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@30
    move-result-object v5

    #@31
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v4

    #@35
    const-string/jumbo v5, "00"

    #@38
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v4

    #@3c
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3f
    move-result-object p1

    #@40
    .line 3398
    :cond_3
    return-object p1

    #@41
    .line 3388
    .end local v1    # "mcc":I
    .restart local v3    # "tzone":Ljava/util/TimeZone;
    :cond_4
    iget v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mZoneOffset:I

    #@43
    iget-boolean v6, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mZoneDst:Z

    #@45
    iget-wide v8, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mZoneTime:J

    #@47
    invoke-direct {p0, v5, v6, v8, v9}, Lcom/android/internal/telephony/ServiceStateTracker;->getNitzTimeZone(IZJ)Ljava/util/TimeZone;

    #@4a
    move-result-object v3

    #@4b
    .line 3389
    .local v3, "tzone":Ljava/util/TimeZone;
    if-eqz v3, :cond_1

    #@4d
    .line 3390
    invoke-virtual {v3}, Ljava/util/TimeZone;->getRawOffset()I

    #@50
    move-result v5

    #@51
    div-int v2, v5, v7

    #@53
    goto :goto_0
.end method

.method public getAllCellInfo()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/CellInfo;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 4539
    new-instance v2, Lcom/android/internal/telephony/ServiceStateTracker$CellInfoResult;

    #@3
    invoke-direct {v2, p0, v8}, Lcom/android/internal/telephony/ServiceStateTracker$CellInfoResult;-><init>(Lcom/android/internal/telephony/ServiceStateTracker;Lcom/android/internal/telephony/ServiceStateTracker$CellInfoResult;)V

    #@6
    .line 4541
    .local v2, "result":Lcom/android/internal/telephony/ServiceStateTracker$CellInfoResult;
    iget-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@8
    invoke-interface {v4}, Lcom/android/internal/telephony/CommandsInterface;->getRilVersion()I

    #@b
    move-result v3

    #@c
    .line 4542
    .local v3, "ver":I
    const/16 v4, 0x8

    #@e
    if-lt v3, v4, :cond_2

    #@10
    .line 4543
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->isCallerOnDifferentThread()Z

    #@13
    move-result v4

    #@14
    if-eqz v4, :cond_1

    #@16
    .line 4544
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@19
    move-result-wide v4

    #@1a
    iget-wide v6, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mLastCellInfoListTime:J

    #@1c
    sub-long/2addr v4, v6

    #@1d
    .line 4545
    const-wide/16 v6, 0x7d0

    #@1f
    .line 4544
    cmp-long v4, v4, v6

    #@21
    if-lez v4, :cond_0

    #@23
    .line 4546
    const/16 v4, 0x2b

    #@25
    invoke-virtual {p0, v4, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@28
    move-result-object v1

    #@29
    .line 4547
    .local v1, "msg":Landroid/os/Message;
    iget-object v5, v2, Lcom/android/internal/telephony/ServiceStateTracker$CellInfoResult;->lockObj:Ljava/lang/Object;

    #@2b
    monitor-enter v5

    #@2c
    .line 4548
    const/4 v4, 0x0

    #@2d
    :try_start_0
    iput-object v4, v2, Lcom/android/internal/telephony/ServiceStateTracker$CellInfoResult;->list:Ljava/util/List;

    #@2f
    .line 4549
    iget-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@31
    invoke-interface {v4, v1}, Lcom/android/internal/telephony/CommandsInterface;->getCellInfoList(Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@34
    .line 4551
    :try_start_1
    iget-object v4, v2, Lcom/android/internal/telephony/ServiceStateTracker$CellInfoResult;->lockObj:Ljava/lang/Object;

    #@36
    const-wide/16 v6, 0x1388

    #@38
    invoke-virtual {v4, v6, v7}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3b
    :goto_0
    monitor-exit v5

    #@3c
    .line 4568
    .end local v1    # "msg":Landroid/os/Message;
    :goto_1
    iget-object v5, v2, Lcom/android/internal/telephony/ServiceStateTracker$CellInfoResult;->lockObj:Ljava/lang/Object;

    #@3e
    monitor-enter v5

    #@3f
    .line 4569
    :try_start_2
    iget-object v4, v2, Lcom/android/internal/telephony/ServiceStateTracker$CellInfoResult;->list:Ljava/util/List;

    #@41
    if-eqz v4, :cond_3

    #@43
    .line 4572
    iget-object v4, v2, Lcom/android/internal/telephony/ServiceStateTracker$CellInfoResult;->list:Ljava/util/List;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@45
    monitor-exit v5

    #@46
    return-object v4

    #@47
    .line 4552
    .restart local v1    # "msg":Landroid/os/Message;
    :catch_0
    move-exception v0

    #@48
    .line 4553
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@4b
    goto :goto_0

    #@4c
    .line 4547
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v4

    #@4d
    monitor-exit v5

    #@4e
    throw v4

    #@4f
    .line 4557
    .end local v1    # "msg":Landroid/os/Message;
    :cond_0
    const-string/jumbo v4, "SST.getAllCellInfo(): return last, back to back calls"

    #@52
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    #@55
    .line 4558
    iget-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mLastCellInfoList:Ljava/util/List;

    #@57
    iput-object v4, v2, Lcom/android/internal/telephony/ServiceStateTracker$CellInfoResult;->list:Ljava/util/List;

    #@59
    goto :goto_1

    #@5a
    .line 4561
    :cond_1
    const-string/jumbo v4, "SST.getAllCellInfo(): return last, same thread can\'t block"

    #@5d
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    #@60
    .line 4562
    iget-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mLastCellInfoList:Ljava/util/List;

    #@62
    iput-object v4, v2, Lcom/android/internal/telephony/ServiceStateTracker$CellInfoResult;->list:Ljava/util/List;

    #@64
    goto :goto_1

    #@65
    .line 4565
    :cond_2
    const-string/jumbo v4, "SST.getAllCellInfo(): not implemented"

    #@68
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    #@6b
    .line 4566
    iput-object v8, v2, Lcom/android/internal/telephony/ServiceStateTracker$CellInfoResult;->list:Ljava/util/List;

    #@6d
    goto :goto_1

    #@6e
    .line 4574
    :cond_3
    :try_start_4
    const-string/jumbo v4, "SST.getAllCellInfo(): X size=0 list=null"

    #@71
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@74
    monitor-exit v5

    #@75
    .line 4575
    return-object v8

    #@76
    .line 4568
    :catchall_1
    move-exception v4

    #@77
    monitor-exit v5

    #@78
    throw v4
.end method

.method public getCdmaMin()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1374
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mMin:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getCellLocation()Landroid/telephony/CellLocation;
    .locals 14

    #@0
    .prologue
    const v13, 0x7fffffff

    #@3
    const/4 v12, 0x0

    #@4
    .line 3730
    iget-object v10, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCellLoc:Landroid/telephony/CellLocation;

    #@6
    check-cast v10, Landroid/telephony/gsm/GsmCellLocation;

    #@8
    invoke-virtual {v10}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    #@b
    move-result v10

    #@c
    if-ltz v10, :cond_0

    #@e
    .line 3731
    iget-object v10, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCellLoc:Landroid/telephony/CellLocation;

    #@10
    check-cast v10, Landroid/telephony/gsm/GsmCellLocation;

    #@12
    invoke-virtual {v10}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    #@15
    move-result v10

    #@16
    if-ltz v10, :cond_0

    #@18
    .line 3732
    new-instance v10, Ljava/lang/StringBuilder;

    #@1a
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@1d
    const-string/jumbo v11, "getCellLocation(): X good mCellLoc="

    #@20
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v10

    #@24
    iget-object v11, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCellLoc:Landroid/telephony/CellLocation;

    #@26
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v10

    #@2a
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2d
    move-result-object v10

    #@2e
    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    #@31
    .line 3733
    iget-object v10, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCellLoc:Landroid/telephony/CellLocation;

    #@33
    return-object v10

    #@34
    .line 3735
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getAllCellInfo()Ljava/util/List;

    #@37
    move-result-object v9

    #@38
    .line 3736
    .local v9, "result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    if-eqz v9, :cond_6

    #@3a
    .line 3749
    new-instance v6, Landroid/telephony/gsm/GsmCellLocation;

    #@3c
    invoke-direct {v6}, Landroid/telephony/gsm/GsmCellLocation;-><init>()V

    #@3f
    .line 3750
    .local v6, "cellLocOther":Landroid/telephony/gsm/GsmCellLocation;
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@42
    move-result-object v8

    #@43
    .local v8, "ci$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    #@46
    move-result v10

    #@47
    if-eqz v10, :cond_5

    #@49
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@4c
    move-result-object v7

    #@4d
    check-cast v7, Landroid/telephony/CellInfo;

    #@4f
    .line 3751
    .local v7, "ci":Landroid/telephony/CellInfo;
    instance-of v10, v7, Landroid/telephony/CellInfoGsm;

    #@51
    if-eqz v10, :cond_2

    #@53
    move-object v3, v7

    #@54
    .line 3752
    check-cast v3, Landroid/telephony/CellInfoGsm;

    #@56
    .line 3753
    .local v3, "cellInfoGsm":Landroid/telephony/CellInfoGsm;
    invoke-virtual {v3}, Landroid/telephony/CellInfoGsm;->getCellIdentity()Landroid/telephony/CellIdentityGsm;

    #@59
    move-result-object v0

    #@5a
    .line 3754
    .local v0, "cellIdentityGsm":Landroid/telephony/CellIdentityGsm;
    invoke-virtual {v0}, Landroid/telephony/CellIdentityGsm;->getLac()I

    #@5d
    move-result v10

    #@5e
    .line 3755
    invoke-virtual {v0}, Landroid/telephony/CellIdentityGsm;->getCid()I

    #@61
    move-result v11

    #@62
    .line 3754
    invoke-virtual {v6, v10, v11}, Landroid/telephony/gsm/GsmCellLocation;->setLacAndCid(II)V

    #@65
    .line 3756
    invoke-virtual {v0}, Landroid/telephony/CellIdentityGsm;->getPsc()I

    #@68
    move-result v10

    #@69
    invoke-virtual {v6, v10}, Landroid/telephony/gsm/GsmCellLocation;->setPsc(I)V

    #@6c
    .line 3757
    new-instance v10, Ljava/lang/StringBuilder;

    #@6e
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@71
    const-string/jumbo v11, "getCellLocation(): X ret GSM info="

    #@74
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@77
    move-result-object v10

    #@78
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@7b
    move-result-object v10

    #@7c
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7f
    move-result-object v10

    #@80
    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    #@83
    .line 3758
    return-object v6

    #@84
    .line 3759
    .end local v0    # "cellIdentityGsm":Landroid/telephony/CellIdentityGsm;
    .end local v3    # "cellInfoGsm":Landroid/telephony/CellInfoGsm;
    :cond_2
    instance-of v10, v7, Landroid/telephony/CellInfoWcdma;

    #@86
    if-eqz v10, :cond_3

    #@88
    move-object v5, v7

    #@89
    .line 3760
    check-cast v5, Landroid/telephony/CellInfoWcdma;

    #@8b
    .line 3761
    .local v5, "cellInfoWcdma":Landroid/telephony/CellInfoWcdma;
    invoke-virtual {v5}, Landroid/telephony/CellInfoWcdma;->getCellIdentity()Landroid/telephony/CellIdentityWcdma;

    #@8e
    move-result-object v2

    #@8f
    .line 3762
    .local v2, "cellIdentityWcdma":Landroid/telephony/CellIdentityWcdma;
    invoke-virtual {v2}, Landroid/telephony/CellIdentityWcdma;->getLac()I

    #@92
    move-result v10

    #@93
    .line 3763
    invoke-virtual {v2}, Landroid/telephony/CellIdentityWcdma;->getCid()I

    #@96
    move-result v11

    #@97
    .line 3762
    invoke-virtual {v6, v10, v11}, Landroid/telephony/gsm/GsmCellLocation;->setLacAndCid(II)V

    #@9a
    .line 3764
    invoke-virtual {v2}, Landroid/telephony/CellIdentityWcdma;->getPsc()I

    #@9d
    move-result v10

    #@9e
    invoke-virtual {v6, v10}, Landroid/telephony/gsm/GsmCellLocation;->setPsc(I)V

    #@a1
    .line 3765
    new-instance v10, Ljava/lang/StringBuilder;

    #@a3
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@a6
    const-string/jumbo v11, "getCellLocation(): X ret WCDMA info="

    #@a9
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ac
    move-result-object v10

    #@ad
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@b0
    move-result-object v10

    #@b1
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b4
    move-result-object v10

    #@b5
    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    #@b8
    .line 3766
    return-object v6

    #@b9
    .line 3767
    .end local v2    # "cellIdentityWcdma":Landroid/telephony/CellIdentityWcdma;
    .end local v5    # "cellInfoWcdma":Landroid/telephony/CellInfoWcdma;
    :cond_3
    instance-of v10, v7, Landroid/telephony/CellInfoLte;

    #@bb
    if-eqz v10, :cond_1

    #@bd
    .line 3768
    invoke-virtual {v6}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    #@c0
    move-result v10

    #@c1
    if-ltz v10, :cond_4

    #@c3
    invoke-virtual {v6}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    #@c6
    move-result v10

    #@c7
    if-gez v10, :cond_1

    #@c9
    :cond_4
    move-object v4, v7

    #@ca
    .line 3770
    check-cast v4, Landroid/telephony/CellInfoLte;

    #@cc
    .line 3771
    .local v4, "cellInfoLte":Landroid/telephony/CellInfoLte;
    invoke-virtual {v4}, Landroid/telephony/CellInfoLte;->getCellIdentity()Landroid/telephony/CellIdentityLte;

    #@cf
    move-result-object v1

    #@d0
    .line 3772
    .local v1, "cellIdentityLte":Landroid/telephony/CellIdentityLte;
    invoke-virtual {v1}, Landroid/telephony/CellIdentityLte;->getTac()I

    #@d3
    move-result v10

    #@d4
    if-eq v10, v13, :cond_1

    #@d6
    .line 3773
    invoke-virtual {v1}, Landroid/telephony/CellIdentityLte;->getCi()I

    #@d9
    move-result v10

    #@da
    if-eq v10, v13, :cond_1

    #@dc
    .line 3774
    invoke-virtual {v1}, Landroid/telephony/CellIdentityLte;->getTac()I

    #@df
    move-result v10

    #@e0
    .line 3775
    invoke-virtual {v1}, Landroid/telephony/CellIdentityLte;->getCi()I

    #@e3
    move-result v11

    #@e4
    .line 3774
    invoke-virtual {v6, v10, v11}, Landroid/telephony/gsm/GsmCellLocation;->setLacAndCid(II)V

    #@e7
    .line 3776
    invoke-virtual {v6, v12}, Landroid/telephony/gsm/GsmCellLocation;->setPsc(I)V

    #@ea
    .line 3778
    new-instance v10, Ljava/lang/StringBuilder;

    #@ec
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@ef
    const-string/jumbo v11, "getCellLocation(): possible LTE cellLocOther="

    #@f2
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f5
    move-result-object v10

    #@f6
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@f9
    move-result-object v10

    #@fa
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@fd
    move-result-object v10

    #@fe
    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    #@101
    goto/16 :goto_0

    #@103
    .line 3784
    .end local v1    # "cellIdentityLte":Landroid/telephony/CellIdentityLte;
    .end local v4    # "cellInfoLte":Landroid/telephony/CellInfoLte;
    .end local v7    # "ci":Landroid/telephony/CellInfo;
    :cond_5
    new-instance v10, Ljava/lang/StringBuilder;

    #@105
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@108
    const-string/jumbo v11, "getCellLocation(): X ret best answer cellLocOther="

    #@10b
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10e
    move-result-object v10

    #@10f
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@112
    move-result-object v10

    #@113
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@116
    move-result-object v10

    #@117
    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    #@11a
    .line 3786
    return-object v6

    #@11b
    .line 3789
    .end local v6    # "cellLocOther":Landroid/telephony/gsm/GsmCellLocation;
    .end local v8    # "ci$iterator":Ljava/util/Iterator;
    :cond_6
    new-instance v10, Ljava/lang/StringBuilder;

    #@11d
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@120
    const-string/jumbo v11, "getCellLocation(): X empty mCellLoc and CellInfo mCellLoc="

    #@123
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@126
    move-result-object v10

    #@127
    iget-object v11, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCellLoc:Landroid/telephony/CellLocation;

    #@129
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@12c
    move-result-object v10

    #@12d
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@130
    move-result-object v10

    #@131
    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    #@134
    .line 3791
    iget-object v10, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCellLoc:Landroid/telephony/CellLocation;

    #@136
    return-object v10
.end method

.method public getCurrentDataConnectionState()I
    .locals 1

    #@0
    .prologue
    .line 2427
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@2
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getDataRegState()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getDesiredPowerState()Z
    .locals 1

    #@0
    .prologue
    .line 652
    iget-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDesiredPowerState:Z

    #@2
    return v0
.end method

.method protected getHomeOperatorNumeric()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 4899
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@2
    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    #@5
    move-result-object v1

    #@6
    .line 4900
    const-string/jumbo v2, "phone"

    #@9
    .line 4899
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@c
    move-result-object v1

    #@d
    check-cast v1, Landroid/telephony/TelephonyManager;

    #@f
    .line 4901
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@11
    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    #@14
    move-result v2

    #@15
    .line 4899
    invoke-virtual {v1, v2}, Landroid/telephony/TelephonyManager;->getSimOperatorNumericForPhone(I)Ljava/lang/String;

    #@18
    move-result-object v0

    #@19
    .line 4902
    .local v0, "numeric":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@1b
    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    #@1e
    move-result v1

    #@1f
    if-nez v1, :cond_0

    #@21
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@24
    move-result v1

    #@25
    if-eqz v1, :cond_0

    #@27
    .line 4903
    const-string/jumbo v1, "ro.cdma.home.operator.numeric"

    #@2a
    const-string/jumbo v2, ""

    #@2d
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@30
    move-result-object v0

    #@31
    .line 4905
    :cond_0
    return-object v0
.end method

.method public getImsi()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1387
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@3
    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    #@6
    move-result-object v1

    #@7
    .line 1388
    const-string/jumbo v2, "phone"

    #@a
    .line 1387
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@d
    move-result-object v1

    #@e
    check-cast v1, Landroid/telephony/TelephonyManager;

    #@10
    .line 1389
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@12
    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    #@15
    move-result v2

    #@16
    .line 1387
    invoke-virtual {v1, v2}, Landroid/telephony/TelephonyManager;->getSimOperatorNumericForPhone(I)Ljava/lang/String;

    #@19
    move-result-object v0

    #@1a
    .line 1391
    .local v0, "operatorNumeric":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@1d
    move-result v1

    #@1e
    if-nez v1, :cond_0

    #@20
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getCdmaMin()Ljava/lang/String;

    #@23
    move-result-object v1

    #@24
    if-eqz v1, :cond_0

    #@26
    .line 1392
    new-instance v1, Ljava/lang/StringBuilder;

    #@28
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@2b
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v1

    #@2f
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getCdmaMin()Ljava/lang/String;

    #@32
    move-result-object v2

    #@33
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v1

    #@37
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3a
    move-result-object v1

    #@3b
    return-object v1

    #@3c
    .line 1394
    :cond_0
    return-object v3
.end method

.method public getMdnNumber()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1370
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mMdn:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getOtasp()I
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x6

    #@1
    const/4 v3, 0x0

    #@2
    .line 1413
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@4
    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getIccRecordsLoaded()Z

    #@7
    move-result v1

    #@8
    if-nez v1, :cond_0

    #@a
    .line 1414
    const-string/jumbo v1, "getOtasp: otasp uninitialized due to sim not loaded"

    #@d
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    #@10
    .line 1415
    return v3

    #@11
    .line 1418
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@13
    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    #@16
    move-result v1

    #@17
    if-eqz v1, :cond_1

    #@19
    .line 1419
    const-string/jumbo v1, "getOtasp: otasp not needed for GSM"

    #@1c
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    #@1f
    .line 1420
    const/4 v1, 0x3

    #@20
    return v1

    #@21
    .line 1423
    :cond_1
    iget-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIsSubscriptionFromRuim:Z

    #@23
    if-eqz v1, :cond_2

    #@25
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mMin:Ljava/lang/String;

    #@27
    if-nez v1, :cond_2

    #@29
    .line 1424
    const/4 v1, 0x2

    #@2a
    return v1

    #@2b
    .line 1426
    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mMin:Ljava/lang/String;

    #@2d
    if-eqz v1, :cond_3

    #@2f
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mMin:Ljava/lang/String;

    #@31
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@34
    move-result v1

    #@35
    if-ge v1, v4, :cond_4

    #@37
    .line 1427
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    #@39
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@3c
    const-string/jumbo v2, "getOtasp: bad mMin=\'"

    #@3f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v1

    #@43
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mMin:Ljava/lang/String;

    #@45
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v1

    #@49
    const-string/jumbo v2, "\'"

    #@4c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v1

    #@50
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@53
    move-result-object v1

    #@54
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    #@57
    .line 1428
    const/4 v0, 0x1

    #@58
    .line 1438
    .local v0, "provisioningState":I
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    #@5a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@5d
    const-string/jumbo v2, "getOtasp: state="

    #@60
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@63
    move-result-object v1

    #@64
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@67
    move-result-object v1

    #@68
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6b
    move-result-object v1

    #@6c
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    #@6f
    .line 1439
    return v0

    #@70
    .line 1430
    .end local v0    # "provisioningState":I
    :cond_4
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mMin:Ljava/lang/String;

    #@72
    const-string/jumbo v2, "1111110111"

    #@75
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@78
    move-result v1

    #@79
    if-nez v1, :cond_5

    #@7b
    .line 1431
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mMin:Ljava/lang/String;

    #@7d
    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@80
    move-result-object v1

    #@81
    const-string/jumbo v2, "000000"

    #@84
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@87
    move-result v1

    #@88
    .line 1430
    if-nez v1, :cond_5

    #@8a
    .line 1432
    const-string/jumbo v1, "test_cdma_setup"

    #@8d
    invoke-static {v1, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    #@90
    move-result v1

    #@91
    .line 1430
    if-eqz v1, :cond_6

    #@93
    .line 1433
    :cond_5
    const/4 v0, 0x2

    #@94
    .restart local v0    # "provisioningState":I
    goto :goto_0

    #@95
    .line 1435
    .end local v0    # "provisioningState":I
    :cond_6
    const/4 v0, 0x3

    #@96
    .restart local v0    # "provisioningState":I
    goto :goto_0
.end method

.method protected getPhone()Lcom/android/internal/telephony/Phone;
    .locals 1

    #@0
    .prologue
    .line 1485
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@2
    return-object v0
.end method

.method protected getPhoneId()I
    .locals 1

    #@0
    .prologue
    .line 4909
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getPowerStateFromCarrier()Z
    .locals 1

    #@0
    .prologue
    .line 654
    iget-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRadioDisabledByCarrier:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    const/4 v0, 0x0

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    const/4 v0, 0x1

    #@7
    goto :goto_0
.end method

.method public getPrlVersion()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1379
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPrlVersion:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getSignalStrength()Landroid/telephony/SignalStrength;
    .locals 1

    #@0
    .prologue
    .line 4584
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    #@2
    return-object v0
.end method

.method public getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "defValue"    # Ljava/lang/String;

    #@0
    .prologue
    .line 4532
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    #@5
    move-result v0

    #@6
    invoke-static {v0, p1, p2}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 32
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 874
    move-object/from16 v0, p1

    #@2
    iget v4, v0, Landroid/os/Message;->what:I

    #@4
    packed-switch v4, :pswitch_data_0

    #@7
    .line 1339
    :pswitch_0
    new-instance v4, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v29, "Unhandled message with number: "

    #@f
    move-object/from16 v0, v29

    #@11
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v4

    #@15
    move-object/from16 v0, p1

    #@17
    iget v0, v0, Landroid/os/Message;->what:I

    #@19
    move/from16 v29, v0

    #@1b
    move/from16 v0, v29

    #@1d
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@20
    move-result-object v4

    #@21
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v4

    #@25
    move-object/from16 v0, p0

    #@27
    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    #@2a
    .line 870
    :cond_0
    :goto_0
    :pswitch_1
    return-void

    #@2b
    .line 876
    :pswitch_2
    monitor-enter p0

    #@2c
    .line 877
    :try_start_0
    move-object/from16 v0, p0

    #@2e
    iget-boolean v4, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mPendingRadioPowerOffAfterDataOff:Z

    #@30
    if-eqz v4, :cond_1

    #@32
    .line 878
    move-object/from16 v0, p1

    #@34
    iget v4, v0, Landroid/os/Message;->arg1:I

    #@36
    move-object/from16 v0, p0

    #@38
    iget v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mPendingRadioPowerOffAfterDataOffTag:I

    #@3a
    move/from16 v29, v0

    #@3c
    move/from16 v0, v29

    #@3e
    if-ne v4, v0, :cond_1

    #@40
    .line 879
    const-string/jumbo v4, "EVENT_SET_RADIO_OFF, turn radio off now."

    #@43
    move-object/from16 v0, p0

    #@45
    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    #@48
    .line 880
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ServiceStateTracker;->hangupAndPowerOff()V

    #@4b
    .line 881
    move-object/from16 v0, p0

    #@4d
    iget v4, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mPendingRadioPowerOffAfterDataOffTag:I

    #@4f
    add-int/lit8 v4, v4, 0x1

    #@51
    move-object/from16 v0, p0

    #@53
    iput v4, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mPendingRadioPowerOffAfterDataOffTag:I

    #@55
    .line 882
    const/4 v4, 0x0

    #@56
    move-object/from16 v0, p0

    #@58
    iput-boolean v4, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mPendingRadioPowerOffAfterDataOff:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5a
    :goto_1
    monitor-exit p0

    #@5b
    goto :goto_0

    #@5c
    .line 884
    :cond_1
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    #@5e
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@61
    const-string/jumbo v29, "EVENT_SET_RADIO_OFF is stale arg1="

    #@64
    move-object/from16 v0, v29

    #@66
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@69
    move-result-object v4

    #@6a
    move-object/from16 v0, p1

    #@6c
    iget v0, v0, Landroid/os/Message;->arg1:I

    #@6e
    move/from16 v29, v0

    #@70
    move/from16 v0, v29

    #@72
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@75
    move-result-object v4

    #@76
    .line 885
    const-string/jumbo v29, "!= tag="

    #@79
    .line 884
    move-object/from16 v0, v29

    #@7b
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7e
    move-result-object v4

    #@7f
    .line 885
    move-object/from16 v0, p0

    #@81
    iget v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mPendingRadioPowerOffAfterDataOffTag:I

    #@83
    move/from16 v29, v0

    #@85
    .line 884
    move/from16 v0, v29

    #@87
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@8a
    move-result-object v4

    #@8b
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8e
    move-result-object v4

    #@8f
    move-object/from16 v0, p0

    #@91
    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@94
    goto :goto_1

    #@95
    .line 876
    :catchall_0
    move-exception v4

    #@96
    monitor-exit p0

    #@97
    throw v4

    #@98
    .line 891
    :pswitch_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ServiceStateTracker;->onUpdateIccAvailability()V

    #@9b
    goto :goto_0

    #@9c
    .line 895
    :pswitch_4
    move-object/from16 v0, p1

    #@9e
    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@a0
    check-cast v10, Landroid/os/AsyncResult;

    #@a2
    .line 896
    .local v10, "ar":Landroid/os/AsyncResult;
    iget-object v0, v10, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    #@a4
    move-object/from16 v25, v0

    #@a6
    check-cast v25, Lcom/android/internal/telephony/ServiceStateTracker$CellInfoResult;

    #@a8
    .line 897
    .local v25, "result":Lcom/android/internal/telephony/ServiceStateTracker$CellInfoResult;
    move-object/from16 v0, v25

    #@aa
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker$CellInfoResult;->lockObj:Ljava/lang/Object;

    #@ac
    move-object/from16 v29, v0

    #@ae
    monitor-enter v29

    #@af
    .line 898
    :try_start_2
    iget-object v4, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@b1
    if-eqz v4, :cond_2

    #@b3
    .line 899
    new-instance v4, Ljava/lang/StringBuilder;

    #@b5
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@b8
    const-string/jumbo v30, "EVENT_GET_CELL_INFO_LIST: error ret null, e="

    #@bb
    move-object/from16 v0, v30

    #@bd
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c0
    move-result-object v4

    #@c1
    iget-object v0, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@c3
    move-object/from16 v30, v0

    #@c5
    move-object/from16 v0, v30

    #@c7
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@ca
    move-result-object v4

    #@cb
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ce
    move-result-object v4

    #@cf
    move-object/from16 v0, p0

    #@d1
    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    #@d4
    .line 900
    const/4 v4, 0x0

    #@d5
    move-object/from16 v0, v25

    #@d7
    iput-object v4, v0, Lcom/android/internal/telephony/ServiceStateTracker$CellInfoResult;->list:Ljava/util/List;

    #@d9
    .line 909
    :goto_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@dc
    move-result-wide v30

    #@dd
    move-wide/from16 v0, v30

    #@df
    move-object/from16 v2, p0

    #@e1
    iput-wide v0, v2, Lcom/android/internal/telephony/ServiceStateTracker;->mLastCellInfoListTime:J

    #@e3
    .line 910
    move-object/from16 v0, v25

    #@e5
    iget-object v4, v0, Lcom/android/internal/telephony/ServiceStateTracker$CellInfoResult;->list:Ljava/util/List;

    #@e7
    move-object/from16 v0, p0

    #@e9
    iput-object v4, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mLastCellInfoList:Ljava/util/List;

    #@eb
    .line 911
    move-object/from16 v0, v25

    #@ed
    iget-object v4, v0, Lcom/android/internal/telephony/ServiceStateTracker$CellInfoResult;->lockObj:Ljava/lang/Object;

    #@ef
    invoke-virtual {v4}, Ljava/lang/Object;->notify()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@f2
    monitor-exit v29

    #@f3
    goto/16 :goto_0

    #@f5
    .line 902
    :cond_2
    :try_start_3
    iget-object v4, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@f7
    check-cast v4, Ljava/util/List;

    #@f9
    move-object/from16 v0, v25

    #@fb
    iput-object v4, v0, Lcom/android/internal/telephony/ServiceStateTracker$CellInfoResult;->list:Ljava/util/List;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@fd
    goto :goto_2

    #@fe
    .line 897
    :catchall_1
    move-exception v4

    #@ff
    monitor-exit v29

    #@100
    throw v4

    #@101
    .line 917
    .end local v10    # "ar":Landroid/os/AsyncResult;
    .end local v25    # "result":Lcom/android/internal/telephony/ServiceStateTracker$CellInfoResult;
    :pswitch_5
    move-object/from16 v0, p1

    #@103
    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@105
    check-cast v10, Landroid/os/AsyncResult;

    #@107
    .line 918
    .restart local v10    # "ar":Landroid/os/AsyncResult;
    iget-object v4, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@109
    if-eqz v4, :cond_3

    #@10b
    .line 919
    new-instance v4, Ljava/lang/StringBuilder;

    #@10d
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@110
    const-string/jumbo v29, "EVENT_UNSOL_CELL_INFO_LIST: error ignoring, e="

    #@113
    move-object/from16 v0, v29

    #@115
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@118
    move-result-object v4

    #@119
    iget-object v0, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@11b
    move-object/from16 v29, v0

    #@11d
    move-object/from16 v0, v29

    #@11f
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@122
    move-result-object v4

    #@123
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@126
    move-result-object v4

    #@127
    move-object/from16 v0, p0

    #@129
    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    #@12c
    goto/16 :goto_0

    #@12e
    .line 921
    :cond_3
    iget-object v0, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@130
    move-object/from16 v17, v0

    #@132
    check-cast v17, Ljava/util/List;

    #@134
    .line 925
    .local v17, "list":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@137
    move-result-wide v30

    #@138
    move-wide/from16 v0, v30

    #@13a
    move-object/from16 v2, p0

    #@13c
    iput-wide v0, v2, Lcom/android/internal/telephony/ServiceStateTracker;->mLastCellInfoListTime:J

    #@13e
    .line 926
    move-object/from16 v0, v17

    #@140
    move-object/from16 v1, p0

    #@142
    iput-object v0, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mLastCellInfoList:Ljava/util/List;

    #@144
    .line 927
    move-object/from16 v0, p0

    #@146
    iget-object v4, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@148
    move-object/from16 v0, v17

    #@14a
    invoke-virtual {v4, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifyCellInfo(Ljava/util/List;)V

    #@14d
    goto/16 :goto_0

    #@14f
    .line 933
    .end local v10    # "ar":Landroid/os/AsyncResult;
    .end local v17    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    :pswitch_6
    move-object/from16 v0, p0

    #@151
    iget-object v4, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@153
    const/16 v29, 0x2f

    #@155
    move-object/from16 v0, p0

    #@157
    move/from16 v1, v29

    #@159
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    #@15c
    move-result-object v29

    #@15d
    move-object/from16 v0, v29

    #@15f
    invoke-interface {v4, v0}, Lcom/android/internal/telephony/CommandsInterface;->getImsRegistrationState(Landroid/os/Message;)V

    #@162
    goto/16 :goto_0

    #@164
    .line 937
    :pswitch_7
    move-object/from16 v0, p1

    #@166
    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@168
    check-cast v10, Landroid/os/AsyncResult;

    #@16a
    .line 938
    .restart local v10    # "ar":Landroid/os/AsyncResult;
    iget-object v4, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@16c
    if-nez v4, :cond_0

    #@16e
    .line 939
    iget-object v0, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@170
    move-object/from16 v24, v0

    #@172
    check-cast v24, [I

    #@174
    .line 940
    .local v24, "responseArray":[I
    const/4 v4, 0x0

    #@175
    aget v4, v24, v4

    #@177
    const/16 v29, 0x1

    #@179
    move/from16 v0, v29

    #@17b
    if-ne v4, v0, :cond_4

    #@17d
    const/4 v4, 0x1

    #@17e
    :goto_3
    move-object/from16 v0, p0

    #@180
    iput-boolean v4, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mImsRegistered:Z

    #@182
    goto/16 :goto_0

    #@184
    :cond_4
    const/4 v4, 0x0

    #@185
    goto :goto_3

    #@186
    .line 953
    .end local v10    # "ar":Landroid/os/AsyncResult;
    .end local v24    # "responseArray":[I
    :pswitch_8
    move-object/from16 v0, p0

    #@188
    iget-object v4, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mOnSubscriptionsChangedListener:Lcom/android/internal/telephony/ServiceStateTracker$SstSubscriptionsChangedListener;

    #@18a
    iget-object v4, v4, Lcom/android/internal/telephony/ServiceStateTracker$SstSubscriptionsChangedListener;->mPreviousSubId:Ljava/util/concurrent/atomic/AtomicInteger;

    #@18c
    const/16 v29, -0x1

    #@18e
    move/from16 v0, v29

    #@190
    invoke-virtual {v4, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    #@193
    .line 954
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ServiceStateTracker;->pollState()V

    #@196
    .line 956
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/ServiceStateTracker;->queueNextSignalStrengthPoll()V

    #@199
    goto/16 :goto_0

    #@19b
    .line 961
    :pswitch_9
    move-object/from16 v0, p0

    #@19d
    iget-object v4, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@19f
    invoke-virtual {v4}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    #@1a2
    move-result v4

    #@1a3
    if-nez v4, :cond_5

    #@1a5
    .line 962
    move-object/from16 v0, p0

    #@1a7
    iget-object v4, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@1a9
    invoke-interface {v4}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    #@1ac
    move-result-object v4

    #@1ad
    sget-object v29, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_ON:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    #@1af
    move-object/from16 v0, v29

    #@1b1
    if-ne v4, v0, :cond_5

    #@1b3
    .line 963
    move-object/from16 v0, p0

    #@1b5
    iget-object v4, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    #@1b7
    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->getCdmaSubscriptionSource()I

    #@1ba
    move-result v4

    #@1bb
    move-object/from16 v0, p0

    #@1bd
    invoke-direct {v0, v4}, Lcom/android/internal/telephony/ServiceStateTracker;->handleCdmaSubscriptionSource(I)V

    #@1c0
    .line 966
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/ServiceStateTracker;->queueNextSignalStrengthPoll()V

    #@1c3
    .line 969
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ServiceStateTracker;->setPowerStateToDesired()V

    #@1c6
    .line 971
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/ServiceStateTracker;->modemTriggeredPollState()V

    #@1c9
    goto/16 :goto_0

    #@1cb
    .line 975
    :pswitch_a
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/ServiceStateTracker;->modemTriggeredPollState()V

    #@1ce
    goto/16 :goto_0

    #@1d0
    .line 982
    :pswitch_b
    move-object/from16 v0, p0

    #@1d2
    iget-object v4, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@1d4
    invoke-interface {v4}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    #@1d7
    move-result-object v4

    #@1d8
    invoke-virtual {v4}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    #@1db
    move-result v4

    #@1dc
    if-nez v4, :cond_6

    #@1de
    .line 984
    return-void

    #@1df
    .line 986
    :cond_6
    move-object/from16 v0, p1

    #@1e1
    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@1e3
    check-cast v10, Landroid/os/AsyncResult;

    #@1e5
    .line 987
    .restart local v10    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, p0

    #@1e7
    invoke-virtual {v0, v10}, Lcom/android/internal/telephony/ServiceStateTracker;->onSignalStrengthResult(Landroid/os/AsyncResult;)Z

    #@1ea
    .line 988
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/ServiceStateTracker;->queueNextSignalStrengthPoll()V

    #@1ed
    goto/16 :goto_0

    #@1ef
    .line 993
    .end local v10    # "ar":Landroid/os/AsyncResult;
    :pswitch_c
    move-object/from16 v0, p1

    #@1f1
    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@1f3
    check-cast v10, Landroid/os/AsyncResult;

    #@1f5
    .line 995
    .restart local v10    # "ar":Landroid/os/AsyncResult;
    iget-object v4, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@1f7
    if-nez v4, :cond_9

    #@1f9
    .line 996
    iget-object v0, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@1fb
    move-object/from16 v27, v0

    #@1fd
    check-cast v27, [Ljava/lang/String;

    #@1ff
    .line 997
    .local v27, "states":[Ljava/lang/String;
    move-object/from16 v0, p0

    #@201
    iget-object v4, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@203
    invoke-virtual {v4}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    #@206
    move-result v4

    #@207
    if-eqz v4, :cond_a

    #@209
    .line 998
    const/16 v16, -0x1

    #@20b
    .line 999
    .local v16, "lac":I
    const/4 v12, -0x1

    #@20c
    .line 1000
    .local v12, "cid":I
    move-object/from16 v0, v27

    #@20e
    array-length v4, v0

    #@20f
    const/16 v29, 0x3

    #@211
    move/from16 v0, v29

    #@213
    if-lt v4, v0, :cond_8

    #@215
    .line 1002
    const/4 v4, 0x1

    #@216
    :try_start_4
    aget-object v4, v27, v4

    #@218
    if-eqz v4, :cond_7

    #@21a
    const/4 v4, 0x1

    #@21b
    aget-object v4, v27, v4

    #@21d
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    #@220
    move-result v4

    #@221
    if-lez v4, :cond_7

    #@223
    .line 1003
    const/4 v4, 0x1

    #@224
    aget-object v4, v27, v4

    #@226
    const/16 v29, 0x10

    #@228
    move/from16 v0, v29

    #@22a
    invoke-static {v4, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    #@22d
    move-result v16

    #@22e
    .line 1005
    :cond_7
    const/4 v4, 0x2

    #@22f
    aget-object v4, v27, v4

    #@231
    if-eqz v4, :cond_8

    #@233
    const/4 v4, 0x2

    #@234
    aget-object v4, v27, v4

    #@236
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    #@239
    move-result v4

    #@23a
    if-lez v4, :cond_8

    #@23c
    .line 1006
    const/4 v4, 0x2

    #@23d
    aget-object v4, v27, v4

    #@23f
    const/16 v29, 0x10

    #@241
    move/from16 v0, v29

    #@243
    invoke-static {v4, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_0

    #@246
    move-result v12

    #@247
    .line 1012
    :cond_8
    :goto_4
    move-object/from16 v0, p0

    #@249
    iget-object v4, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mCellLoc:Landroid/telephony/CellLocation;

    #@24b
    check-cast v4, Landroid/telephony/gsm/GsmCellLocation;

    #@24d
    move/from16 v0, v16

    #@24f
    invoke-virtual {v4, v0, v12}, Landroid/telephony/gsm/GsmCellLocation;->setLacAndCid(II)V

    #@252
    .line 1050
    .end local v12    # "cid":I
    .end local v16    # "lac":I
    :goto_5
    move-object/from16 v0, p0

    #@254
    iget-object v4, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@256
    invoke-virtual {v4}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifyLocationChanged()V

    #@259
    .line 1055
    .end local v27    # "states":[Ljava/lang/String;
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ServiceStateTracker;->disableSingleLocationUpdate()V

    #@25c
    goto/16 :goto_0

    #@25e
    .line 1008
    .restart local v12    # "cid":I
    .restart local v16    # "lac":I
    .restart local v27    # "states":[Ljava/lang/String;
    :catch_0
    move-exception v14

    #@25f
    .line 1009
    .local v14, "ex":Ljava/lang/NumberFormatException;
    const-string/jumbo v4, "SST"

    #@262
    new-instance v29, Ljava/lang/StringBuilder;

    #@264
    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    #@267
    const-string/jumbo v30, "error parsing location: "

    #@26a
    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26d
    move-result-object v29

    #@26e
    move-object/from16 v0, v29

    #@270
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@273
    move-result-object v29

    #@274
    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@277
    move-result-object v29

    #@278
    move-object/from16 v0, v29

    #@27a
    invoke-static {v4, v0}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@27d
    goto :goto_4

    #@27e
    .line 1014
    .end local v12    # "cid":I
    .end local v14    # "ex":Ljava/lang/NumberFormatException;
    .end local v16    # "lac":I
    :cond_a
    const/4 v5, -0x1

    #@27f
    .line 1015
    .local v5, "baseStationId":I
    const v6, 0x7fffffff

    #@282
    .line 1016
    .local v6, "baseStationLatitude":I
    const v7, 0x7fffffff

    #@285
    .line 1017
    .local v7, "baseStationLongitude":I
    const/4 v8, -0x1

    #@286
    .line 1018
    .local v8, "systemId":I
    const/4 v9, -0x1

    #@287
    .line 1020
    .local v9, "networkId":I
    move-object/from16 v0, v27

    #@289
    array-length v4, v0

    #@28a
    const/16 v29, 0x9

    #@28c
    move/from16 v0, v29

    #@28e
    if-le v4, v0, :cond_10

    #@290
    .line 1022
    const/4 v4, 0x4

    #@291
    :try_start_5
    aget-object v4, v27, v4

    #@293
    if-eqz v4, :cond_b

    #@295
    .line 1023
    const/4 v4, 0x4

    #@296
    aget-object v4, v27, v4

    #@298
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@29b
    move-result v5

    #@29c
    .line 1025
    :cond_b
    const/4 v4, 0x5

    #@29d
    aget-object v4, v27, v4

    #@29f
    if-eqz v4, :cond_c

    #@2a1
    .line 1026
    const/4 v4, 0x5

    #@2a2
    aget-object v4, v27, v4

    #@2a4
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@2a7
    move-result v6

    #@2a8
    .line 1028
    :cond_c
    const/4 v4, 0x6

    #@2a9
    aget-object v4, v27, v4

    #@2ab
    if-eqz v4, :cond_d

    #@2ad
    .line 1029
    const/4 v4, 0x6

    #@2ae
    aget-object v4, v27, v4

    #@2b0
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@2b3
    move-result v7

    #@2b4
    .line 1032
    :cond_d
    if-nez v6, :cond_e

    #@2b6
    if-nez v7, :cond_e

    #@2b8
    .line 1033
    const v6, 0x7fffffff

    #@2bb
    .line 1034
    const v7, 0x7fffffff

    #@2be
    .line 1036
    :cond_e
    const/16 v4, 0x8

    #@2c0
    aget-object v4, v27, v4

    #@2c2
    if-eqz v4, :cond_f

    #@2c4
    .line 1037
    const/16 v4, 0x8

    #@2c6
    aget-object v4, v27, v4

    #@2c8
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@2cb
    move-result v8

    #@2cc
    .line 1039
    :cond_f
    const/16 v4, 0x9

    #@2ce
    aget-object v4, v27, v4

    #@2d0
    if-eqz v4, :cond_10

    #@2d2
    .line 1040
    const/16 v4, 0x9

    #@2d4
    aget-object v4, v27, v4

    #@2d6
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_1

    #@2d9
    move-result v9

    #@2da
    .line 1047
    :cond_10
    :goto_6
    move-object/from16 v0, p0

    #@2dc
    iget-object v4, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mCellLoc:Landroid/telephony/CellLocation;

    #@2de
    check-cast v4, Landroid/telephony/cdma/CdmaCellLocation;

    #@2e0
    invoke-virtual/range {v4 .. v9}, Landroid/telephony/cdma/CdmaCellLocation;->setCellLocationData(IIIII)V

    #@2e3
    goto/16 :goto_5

    #@2e5
    .line 1042
    :catch_1
    move-exception v14

    #@2e6
    .line 1043
    .restart local v14    # "ex":Ljava/lang/NumberFormatException;
    new-instance v4, Ljava/lang/StringBuilder;

    #@2e8
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@2eb
    const-string/jumbo v29, "error parsing cell location data: "

    #@2ee
    move-object/from16 v0, v29

    #@2f0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f3
    move-result-object v4

    #@2f4
    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2f7
    move-result-object v4

    #@2f8
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2fb
    move-result-object v4

    #@2fc
    move-object/from16 v0, p0

    #@2fe
    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/ServiceStateTracker;->loge(Ljava/lang/String;)V

    #@301
    goto :goto_6

    #@302
    .line 1061
    .end local v5    # "baseStationId":I
    .end local v6    # "baseStationLatitude":I
    .end local v7    # "baseStationLongitude":I
    .end local v8    # "systemId":I
    .end local v9    # "networkId":I
    .end local v10    # "ar":Landroid/os/AsyncResult;
    .end local v14    # "ex":Ljava/lang/NumberFormatException;
    .end local v27    # "states":[Ljava/lang/String;
    :pswitch_d
    move-object/from16 v0, p1

    #@304
    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@306
    check-cast v10, Landroid/os/AsyncResult;

    #@308
    .line 1062
    .restart local v10    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, p1

    #@30a
    iget v4, v0, Landroid/os/Message;->what:I

    #@30c
    move-object/from16 v0, p0

    #@30e
    invoke-virtual {v0, v4, v10}, Lcom/android/internal/telephony/ServiceStateTracker;->handlePollStateResult(ILandroid/os/AsyncResult;)V

    #@311
    goto/16 :goto_0

    #@313
    .line 1066
    .end local v10    # "ar":Landroid/os/AsyncResult;
    :pswitch_e
    const-string/jumbo v4, "EVENT_POLL_STATE_NETWORK_SELECTION_MODE"

    #@316
    move-object/from16 v0, p0

    #@318
    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    #@31b
    .line 1067
    move-object/from16 v0, p1

    #@31d
    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@31f
    check-cast v10, Landroid/os/AsyncResult;

    #@321
    .line 1068
    .restart local v10    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, p0

    #@323
    iget-object v4, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@325
    invoke-virtual {v4}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    #@328
    move-result v4

    #@329
    if-eqz v4, :cond_11

    #@32b
    .line 1069
    move-object/from16 v0, p1

    #@32d
    iget v4, v0, Landroid/os/Message;->what:I

    #@32f
    move-object/from16 v0, p0

    #@331
    invoke-virtual {v0, v4, v10}, Lcom/android/internal/telephony/ServiceStateTracker;->handlePollStateResult(ILandroid/os/AsyncResult;)V

    #@334
    goto/16 :goto_0

    #@336
    .line 1071
    :cond_11
    iget-object v4, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@338
    if-nez v4, :cond_12

    #@33a
    iget-object v4, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@33c
    if-eqz v4, :cond_12

    #@33e
    .line 1072
    iget-object v15, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@340
    check-cast v15, [I

    #@342
    .line 1073
    .local v15, "ints":[I
    const/4 v4, 0x0

    #@343
    aget v4, v15, v4

    #@345
    const/16 v29, 0x1

    #@347
    move/from16 v0, v29

    #@349
    if-ne v4, v0, :cond_0

    #@34b
    .line 1074
    move-object/from16 v0, p0

    #@34d
    iget-object v4, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@34f
    const/16 v29, 0x0

    #@351
    move-object/from16 v0, v29

    #@353
    invoke-virtual {v4, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->setNetworkSelectionModeAutomatic(Landroid/os/Message;)V

    #@356
    goto/16 :goto_0

    #@358
    .line 1077
    .end local v15    # "ints":[I
    :cond_12
    const-string/jumbo v4, "Unable to getNetworkSelectionMode"

    #@35b
    move-object/from16 v0, p0

    #@35d
    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    #@360
    goto/16 :goto_0

    #@362
    .line 1085
    .end local v10    # "ar":Landroid/os/AsyncResult;
    :pswitch_f
    move-object/from16 v0, p0

    #@364
    iget-object v4, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@366
    const/16 v29, 0x3

    #@368
    move-object/from16 v0, p0

    #@36a
    move/from16 v1, v29

    #@36c
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    #@36f
    move-result-object v29

    #@370
    move-object/from16 v0, v29

    #@372
    invoke-interface {v4, v0}, Lcom/android/internal/telephony/CommandsInterface;->getSignalStrength(Landroid/os/Message;)V

    #@375
    goto/16 :goto_0

    #@377
    .line 1089
    :pswitch_10
    move-object/from16 v0, p1

    #@379
    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@37b
    check-cast v10, Landroid/os/AsyncResult;

    #@37d
    .line 1091
    .restart local v10    # "ar":Landroid/os/AsyncResult;
    iget-object v4, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@37f
    check-cast v4, [Ljava/lang/Object;

    #@381
    const/16 v29, 0x0

    #@383
    aget-object v22, v4, v29

    #@385
    check-cast v22, Ljava/lang/String;

    #@387
    .line 1092
    .local v22, "nitzString":Ljava/lang/String;
    iget-object v4, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@389
    check-cast v4, [Ljava/lang/Object;

    #@38b
    const/16 v29, 0x1

    #@38d
    aget-object v4, v4, v29

    #@38f
    check-cast v4, Ljava/lang/Long;

    #@391
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    #@394
    move-result-wide v20

    #@395
    .line 1094
    .local v20, "nitzReceiveTime":J
    move-object/from16 v0, p0

    #@397
    move-object/from16 v1, v22

    #@399
    move-wide/from16 v2, v20

    #@39b
    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->setTimeFromNITZString(Ljava/lang/String;J)V

    #@39e
    goto/16 :goto_0

    #@3a0
    .line 1100
    .end local v10    # "ar":Landroid/os/AsyncResult;
    .end local v20    # "nitzReceiveTime":J
    .end local v22    # "nitzString":Ljava/lang/String;
    :pswitch_11
    move-object/from16 v0, p1

    #@3a2
    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@3a4
    check-cast v10, Landroid/os/AsyncResult;

    #@3a6
    .line 1104
    .restart local v10    # "ar":Landroid/os/AsyncResult;
    const/4 v4, 0x1

    #@3a7
    move-object/from16 v0, p0

    #@3a9
    iput-boolean v4, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mDontPollSignalStrength:Z

    #@3ab
    .line 1106
    move-object/from16 v0, p0

    #@3ad
    invoke-virtual {v0, v10}, Lcom/android/internal/telephony/ServiceStateTracker;->onSignalStrengthResult(Landroid/os/AsyncResult;)Z

    #@3b0
    goto/16 :goto_0

    #@3b2
    .line 1110
    .end local v10    # "ar":Landroid/os/AsyncResult;
    :pswitch_12
    new-instance v4, Ljava/lang/StringBuilder;

    #@3b4
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@3b7
    const-string/jumbo v29, "EVENT_SIM_RECORDS_LOADED: what="

    #@3ba
    move-object/from16 v0, v29

    #@3bc
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3bf
    move-result-object v4

    #@3c0
    move-object/from16 v0, p1

    #@3c2
    iget v0, v0, Landroid/os/Message;->what:I

    #@3c4
    move/from16 v29, v0

    #@3c6
    move/from16 v0, v29

    #@3c8
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3cb
    move-result-object v4

    #@3cc
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3cf
    move-result-object v4

    #@3d0
    move-object/from16 v0, p0

    #@3d2
    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    #@3d5
    .line 1111
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ServiceStateTracker;->updatePhoneObject()V

    #@3d8
    .line 1112
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ServiceStateTracker;->updateOtaspState()V

    #@3db
    .line 1113
    move-object/from16 v0, p0

    #@3dd
    iget-object v4, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@3df
    invoke-virtual {v4}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    #@3e2
    move-result v4

    #@3e3
    if-eqz v4, :cond_0

    #@3e5
    .line 1114
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ServiceStateTracker;->updateSpnDisplay()V

    #@3e8
    goto/16 :goto_0

    #@3ea
    .line 1119
    :pswitch_13
    move-object/from16 v0, p1

    #@3ec
    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@3ee
    check-cast v10, Landroid/os/AsyncResult;

    #@3f0
    .line 1121
    .restart local v10    # "ar":Landroid/os/AsyncResult;
    iget-object v4, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@3f2
    if-nez v4, :cond_0

    #@3f4
    .line 1122
    move-object/from16 v0, p0

    #@3f6
    iget-object v4, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@3f8
    const/16 v29, 0xf

    #@3fa
    const/16 v30, 0x0

    #@3fc
    move-object/from16 v0, p0

    #@3fe
    move/from16 v1, v29

    #@400
    move-object/from16 v2, v30

    #@402
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@405
    move-result-object v29

    #@406
    move-object/from16 v0, v29

    #@408
    invoke-interface {v4, v0}, Lcom/android/internal/telephony/CommandsInterface;->getVoiceRegistrationState(Landroid/os/Message;)V

    #@40b
    goto/16 :goto_0

    #@40d
    .line 1127
    .end local v10    # "ar":Landroid/os/AsyncResult;
    :pswitch_14
    move-object/from16 v0, p1

    #@40f
    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@411
    check-cast v10, Landroid/os/AsyncResult;

    #@413
    .line 1129
    .restart local v10    # "ar":Landroid/os/AsyncResult;
    iget-object v4, v10, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    #@415
    const/16 v29, 0x15

    #@417
    move-object/from16 v0, p0

    #@419
    move/from16 v1, v29

    #@41b
    invoke-virtual {v0, v1, v4}, Lcom/android/internal/telephony/ServiceStateTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@41e
    move-result-object v19

    #@41f
    .line 1130
    .local v19, "message":Landroid/os/Message;
    move-object/from16 v0, p0

    #@421
    iget-object v4, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@423
    move-object/from16 v0, p0

    #@425
    iget v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mPreferredNetworkType:I

    #@427
    move/from16 v29, v0

    #@429
    move/from16 v0, v29

    #@42b
    move-object/from16 v1, v19

    #@42d
    invoke-interface {v4, v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->setPreferredNetworkType(ILandroid/os/Message;)V

    #@430
    goto/16 :goto_0

    #@432
    .line 1134
    .end local v10    # "ar":Landroid/os/AsyncResult;
    .end local v19    # "message":Landroid/os/Message;
    :pswitch_15
    move-object/from16 v0, p1

    #@434
    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@436
    check-cast v10, Landroid/os/AsyncResult;

    #@438
    .line 1135
    .restart local v10    # "ar":Landroid/os/AsyncResult;
    iget-object v4, v10, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    #@43a
    if-eqz v4, :cond_0

    #@43c
    .line 1136
    iget-object v4, v10, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    #@43e
    check-cast v4, Landroid/os/Message;

    #@440
    invoke-static {v4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    #@443
    move-result-object v4

    #@444
    .line 1137
    iget-object v0, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@446
    move-object/from16 v29, v0

    #@448
    .line 1136
    move-object/from16 v0, v29

    #@44a
    iput-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@44c
    .line 1138
    iget-object v4, v10, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    #@44e
    check-cast v4, Landroid/os/Message;

    #@450
    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    #@453
    goto/16 :goto_0

    #@455
    .line 1143
    .end local v10    # "ar":Landroid/os/AsyncResult;
    :pswitch_16
    move-object/from16 v0, p1

    #@457
    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@459
    check-cast v10, Landroid/os/AsyncResult;

    #@45b
    .line 1145
    .restart local v10    # "ar":Landroid/os/AsyncResult;
    iget-object v4, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@45d
    if-nez v4, :cond_13

    #@45f
    .line 1146
    iget-object v4, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@461
    check-cast v4, [I

    #@463
    const/16 v29, 0x0

    #@465
    aget v4, v4, v29

    #@467
    move-object/from16 v0, p0

    #@469
    iput v4, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mPreferredNetworkType:I

    #@46b
    .line 1151
    :goto_7
    iget-object v4, v10, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    #@46d
    const/16 v29, 0x14

    #@46f
    move-object/from16 v0, p0

    #@471
    move/from16 v1, v29

    #@473
    invoke-virtual {v0, v1, v4}, Lcom/android/internal/telephony/ServiceStateTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@476
    move-result-object v19

    #@477
    .line 1152
    .restart local v19    # "message":Landroid/os/Message;
    const/16 v28, 0x7

    #@479
    .line 1154
    .local v28, "toggledNetworkType":I
    move-object/from16 v0, p0

    #@47b
    iget-object v4, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@47d
    move/from16 v0, v28

    #@47f
    move-object/from16 v1, v19

    #@481
    invoke-interface {v4, v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->setPreferredNetworkType(ILandroid/os/Message;)V

    #@484
    goto/16 :goto_0

    #@486
    .line 1148
    .end local v19    # "message":Landroid/os/Message;
    .end local v28    # "toggledNetworkType":I
    :cond_13
    const/4 v4, 0x7

    #@487
    move-object/from16 v0, p0

    #@489
    iput v4, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mPreferredNetworkType:I

    #@48b
    goto :goto_7

    #@48c
    .line 1158
    .end local v10    # "ar":Landroid/os/AsyncResult;
    :pswitch_17
    move-object/from16 v0, p0

    #@48e
    iget-object v4, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@490
    invoke-virtual {v4}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    #@493
    move-result v4

    #@494
    if-eqz v4, :cond_14

    #@496
    move-object/from16 v0, p0

    #@498
    iget-object v4, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@49a
    if-eqz v4, :cond_14

    #@49c
    .line 1159
    move-object/from16 v0, p0

    #@49e
    iget-object v4, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@4a0
    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getDataRegState()I

    #@4a3
    move-result v4

    #@4a4
    move-object/from16 v0, p0

    #@4a6
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@4a8
    move-object/from16 v29, v0

    #@4aa
    invoke-virtual/range {v29 .. v29}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    #@4ad
    move-result v29

    #@4ae
    move-object/from16 v0, p0

    #@4b0
    move/from16 v1, v29

    #@4b2
    invoke-direct {v0, v4, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->isGprsConsistent(II)Z

    #@4b5
    move-result v4

    #@4b6
    if-eqz v4, :cond_15

    #@4b8
    .line 1169
    :cond_14
    :goto_8
    const/4 v4, 0x0

    #@4b9
    move-object/from16 v0, p0

    #@4bb
    iput-boolean v4, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mStartedGprsRegCheck:Z

    #@4bd
    goto/16 :goto_0

    #@4bf
    .line 1164
    :cond_15
    move-object/from16 v0, p0

    #@4c1
    iget-object v4, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@4c3
    invoke-virtual {v4}, Lcom/android/internal/telephony/GsmCdmaPhone;->getCellLocation()Landroid/telephony/CellLocation;

    #@4c6
    move-result-object v18

    #@4c7
    check-cast v18, Landroid/telephony/gsm/GsmCellLocation;

    #@4c9
    .line 1165
    .local v18, "loc":Landroid/telephony/gsm/GsmCellLocation;
    const/4 v4, 0x2

    #@4ca
    new-array v0, v4, [Ljava/lang/Object;

    #@4cc
    move-object/from16 v29, v0

    #@4ce
    .line 1166
    move-object/from16 v0, p0

    #@4d0
    iget-object v4, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@4d2
    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    #@4d5
    move-result-object v4

    #@4d6
    const/16 v30, 0x0

    #@4d8
    aput-object v4, v29, v30

    #@4da
    if-eqz v18, :cond_16

    #@4dc
    invoke-virtual/range {v18 .. v18}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    #@4df
    move-result v4

    #@4e0
    :goto_9
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@4e3
    move-result-object v4

    #@4e4
    const/16 v30, 0x1

    #@4e6
    aput-object v4, v29, v30

    #@4e8
    .line 1165
    const v4, 0xc3bb

    #@4eb
    move-object/from16 v0, v29

    #@4ed
    invoke-static {v4, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    #@4f0
    .line 1167
    const/4 v4, 0x1

    #@4f1
    move-object/from16 v0, p0

    #@4f3
    iput-boolean v4, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mReportedGprsNoReg:Z

    #@4f5
    goto :goto_8

    #@4f6
    .line 1166
    :cond_16
    const/4 v4, -0x1

    #@4f7
    goto :goto_9

    #@4f8
    .line 1173
    .end local v18    # "loc":Landroid/telephony/gsm/GsmCellLocation;
    :pswitch_18
    move-object/from16 v0, p0

    #@4fa
    iget-object v4, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@4fc
    invoke-virtual {v4}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    #@4ff
    move-result v4

    #@500
    if-eqz v4, :cond_0

    #@502
    .line 1177
    const-string/jumbo v4, "EVENT_RESTRICTED_STATE_CHANGED"

    #@505
    move-object/from16 v0, p0

    #@507
    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    #@50a
    .line 1179
    move-object/from16 v0, p1

    #@50c
    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@50e
    check-cast v10, Landroid/os/AsyncResult;

    #@510
    .line 1181
    .restart local v10    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, p0

    #@512
    invoke-direct {v0, v10}, Lcom/android/internal/telephony/ServiceStateTracker;->onRestrictedStateChanged(Landroid/os/AsyncResult;)V

    #@515
    goto/16 :goto_0

    #@517
    .line 1186
    .end local v10    # "ar":Landroid/os/AsyncResult;
    :pswitch_19
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    #@51a
    move-result v13

    #@51b
    .line 1187
    .local v13, "dds":I
    invoke-static {}, Lcom/android/internal/telephony/ProxyController;->getInstance()Lcom/android/internal/telephony/ProxyController;

    #@51e
    move-result-object v4

    #@51f
    move-object/from16 v0, p0

    #@521
    invoke-virtual {v4, v13, v0}, Lcom/android/internal/telephony/ProxyController;->unregisterForAllDataDisconnected(ILandroid/os/Handler;)V

    #@524
    .line 1188
    monitor-enter p0

    #@525
    .line 1189
    :try_start_6
    move-object/from16 v0, p0

    #@527
    iget-boolean v4, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mPendingRadioPowerOffAfterDataOff:Z

    #@529
    if-eqz v4, :cond_17

    #@52b
    .line 1190
    const-string/jumbo v4, "EVENT_ALL_DATA_DISCONNECTED, turn radio off now."

    #@52e
    move-object/from16 v0, p0

    #@530
    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    #@533
    .line 1191
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ServiceStateTracker;->hangupAndPowerOff()V

    #@536
    .line 1192
    const/4 v4, 0x0

    #@537
    move-object/from16 v0, p0

    #@539
    iput-boolean v4, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mPendingRadioPowerOffAfterDataOff:Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    #@53b
    goto/16 :goto_1

    #@53d
    .line 1188
    :catchall_2
    move-exception v4

    #@53e
    monitor-exit p0

    #@53f
    throw v4

    #@540
    .line 1194
    :cond_17
    :try_start_7
    const-string/jumbo v4, "EVENT_ALL_DATA_DISCONNECTED is stale"

    #@543
    move-object/from16 v0, p0

    #@545
    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    #@548
    goto/16 :goto_1

    #@54a
    .line 1200
    .end local v13    # "dds":I
    :pswitch_1a
    const-string/jumbo v4, "EVENT_CHANGE_IMS_STATE:"

    #@54d
    move-object/from16 v0, p0

    #@54f
    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    #@552
    .line 1202
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ServiceStateTracker;->setPowerStateToDesired()V

    #@555
    goto/16 :goto_0

    #@557
    .line 1206
    :pswitch_1b
    const-string/jumbo v4, "EVENT_IMS_CAPABILITY_CHANGED"

    #@55a
    move-object/from16 v0, p0

    #@55c
    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    #@55f
    .line 1207
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ServiceStateTracker;->updateSpnDisplay()V

    #@562
    goto/16 :goto_0

    #@564
    .line 1212
    :pswitch_1c
    move-object/from16 v0, p0

    #@566
    iget-object v4, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    #@568
    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->getCdmaSubscriptionSource()I

    #@56b
    move-result v4

    #@56c
    move-object/from16 v0, p0

    #@56e
    invoke-direct {v0, v4}, Lcom/android/internal/telephony/ServiceStateTracker;->handleCdmaSubscriptionSource(I)V

    #@571
    goto/16 :goto_0

    #@573
    .line 1216
    :pswitch_1d
    move-object/from16 v0, p0

    #@575
    iget-object v4, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@577
    invoke-virtual {v4}, Lcom/android/internal/telephony/GsmCdmaPhone;->getLteOnCdmaMode()I

    #@57a
    move-result v4

    #@57b
    const/16 v29, 0x1

    #@57d
    move/from16 v0, v29

    #@57f
    if-ne v4, v0, :cond_18

    #@581
    .line 1218
    const-string/jumbo v4, "Receive EVENT_RUIM_READY"

    #@584
    move-object/from16 v0, p0

    #@586
    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    #@589
    .line 1219
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ServiceStateTracker;->pollState()V

    #@58c
    .line 1226
    :goto_a
    move-object/from16 v0, p0

    #@58e
    iget-object v4, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@590
    const/16 v29, 0xe

    #@592
    move-object/from16 v0, p0

    #@594
    move/from16 v1, v29

    #@596
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    #@599
    move-result-object v29

    #@59a
    move-object/from16 v0, v29

    #@59c
    invoke-interface {v4, v0}, Lcom/android/internal/telephony/CommandsInterface;->getNetworkSelectionMode(Landroid/os/Message;)V

    #@59f
    goto/16 :goto_0

    #@5a1
    .line 1221
    :cond_18
    const-string/jumbo v4, "Receive EVENT_RUIM_READY and Send Request getCDMASubscription."

    #@5a4
    move-object/from16 v0, p0

    #@5a6
    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    #@5a9
    .line 1222
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getSubscriptionInfoAndStartPollingThreads()V

    #@5ac
    goto :goto_a

    #@5ad
    .line 1231
    :pswitch_1e
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ServiceStateTracker;->updatePhoneObject()V

    #@5b0
    .line 1234
    move-object/from16 v0, p0

    #@5b2
    iget-object v4, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@5b4
    const/16 v29, 0xe

    #@5b6
    move-object/from16 v0, p0

    #@5b8
    move/from16 v1, v29

    #@5ba
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    #@5bd
    move-result-object v29

    #@5be
    move-object/from16 v0, v29

    #@5c0
    invoke-interface {v4, v0}, Lcom/android/internal/telephony/CommandsInterface;->getNetworkSelectionMode(Landroid/os/Message;)V

    #@5c3
    .line 1239
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getSubscriptionInfoAndStartPollingThreads()V

    #@5c6
    goto/16 :goto_0

    #@5c8
    .line 1243
    :pswitch_1f
    move-object/from16 v0, p0

    #@5ca
    iget-object v4, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@5cc
    invoke-virtual {v4}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    #@5cf
    move-result v4

    #@5d0
    if-nez v4, :cond_0

    #@5d2
    .line 1244
    move-object/from16 v0, p1

    #@5d4
    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@5d6
    check-cast v10, Landroid/os/AsyncResult;

    #@5d8
    .line 1246
    .restart local v10    # "ar":Landroid/os/AsyncResult;
    iget-object v4, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@5da
    if-nez v4, :cond_0

    #@5dc
    .line 1247
    iget-object v11, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@5de
    check-cast v11, [Ljava/lang/String;

    #@5e0
    .line 1248
    .local v11, "cdmaSubscription":[Ljava/lang/String;
    if-eqz v11, :cond_1a

    #@5e2
    array-length v4, v11

    #@5e3
    const/16 v29, 0x5

    #@5e5
    move/from16 v0, v29

    #@5e7
    if-lt v4, v0, :cond_1a

    #@5e9
    .line 1249
    const/4 v4, 0x0

    #@5ea
    aget-object v4, v11, v4

    #@5ec
    move-object/from16 v0, p0

    #@5ee
    iput-object v4, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mMdn:Ljava/lang/String;

    #@5f0
    .line 1250
    const/4 v4, 0x1

    #@5f1
    aget-object v4, v11, v4

    #@5f3
    const/16 v29, 0x2

    #@5f5
    aget-object v29, v11, v29

    #@5f7
    move-object/from16 v0, p0

    #@5f9
    move-object/from16 v1, v29

    #@5fb
    invoke-virtual {v0, v4, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->parseSidNid(Ljava/lang/String;Ljava/lang/String;)V

    #@5fe
    .line 1252
    const/4 v4, 0x3

    #@5ff
    aget-object v4, v11, v4

    #@601
    move-object/from16 v0, p0

    #@603
    iput-object v4, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mMin:Ljava/lang/String;

    #@605
    .line 1253
    const/4 v4, 0x4

    #@606
    aget-object v4, v11, v4

    #@608
    move-object/from16 v0, p0

    #@60a
    iput-object v4, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mPrlVersion:Ljava/lang/String;

    #@60c
    .line 1254
    new-instance v4, Ljava/lang/StringBuilder;

    #@60e
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@611
    const-string/jumbo v29, "GET_CDMA_SUBSCRIPTION: MDN="

    #@614
    move-object/from16 v0, v29

    #@616
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@619
    move-result-object v4

    #@61a
    move-object/from16 v0, p0

    #@61c
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mMdn:Ljava/lang/String;

    #@61e
    move-object/from16 v29, v0

    #@620
    move-object/from16 v0, v29

    #@622
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@625
    move-result-object v4

    #@626
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@629
    move-result-object v4

    #@62a
    move-object/from16 v0, p0

    #@62c
    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    #@62f
    .line 1256
    const/4 v4, 0x1

    #@630
    move-object/from16 v0, p0

    #@632
    iput-boolean v4, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mIsMinInfoReady:Z

    #@634
    .line 1258
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ServiceStateTracker;->updateOtaspState()V

    #@637
    .line 1260
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/ServiceStateTracker;->notifyCdmaSubscriptionInfoReady()V

    #@63a
    .line 1262
    move-object/from16 v0, p0

    #@63c
    iget-boolean v4, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mIsSubscriptionFromRuim:Z

    #@63e
    if-nez v4, :cond_19

    #@640
    move-object/from16 v0, p0

    #@642
    iget-object v4, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    #@644
    if-eqz v4, :cond_19

    #@646
    .line 1264
    const-string/jumbo v4, "GET_CDMA_SUBSCRIPTION set imsi in mIccRecords"

    #@649
    move-object/from16 v0, p0

    #@64b
    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    #@64e
    .line 1266
    move-object/from16 v0, p0

    #@650
    iget-object v4, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    #@652
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getImsi()Ljava/lang/String;

    #@655
    move-result-object v29

    #@656
    move-object/from16 v0, v29

    #@658
    invoke-virtual {v4, v0}, Lcom/android/internal/telephony/uicc/IccRecords;->setImsi(Ljava/lang/String;)V

    #@65b
    goto/16 :goto_0

    #@65d
    .line 1269
    :cond_19
    const-string/jumbo v4, "GET_CDMA_SUBSCRIPTION either mIccRecords is null or NV type device - not setting Imsi in mIccRecords"

    #@660
    move-object/from16 v0, p0

    #@662
    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    #@665
    goto/16 :goto_0

    #@667
    .line 1275
    :cond_1a
    new-instance v4, Ljava/lang/StringBuilder;

    #@669
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@66c
    const-string/jumbo v29, "GET_CDMA_SUBSCRIPTION: error parsing cdmaSubscription params num="

    #@66f
    move-object/from16 v0, v29

    #@671
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@674
    move-result-object v4

    #@675
    .line 1276
    array-length v0, v11

    #@676
    move/from16 v29, v0

    #@678
    .line 1275
    move/from16 v0, v29

    #@67a
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@67d
    move-result-object v4

    #@67e
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@681
    move-result-object v4

    #@682
    move-object/from16 v0, p0

    #@684
    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    #@687
    goto/16 :goto_0

    #@689
    .line 1284
    .end local v10    # "ar":Landroid/os/AsyncResult;
    .end local v11    # "cdmaSubscription":[Ljava/lang/String;
    :pswitch_20
    move-object/from16 v0, p0

    #@68b
    iget-object v4, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@68d
    invoke-virtual {v4}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    #@690
    move-result v4

    #@691
    if-nez v4, :cond_0

    #@693
    .line 1285
    new-instance v4, Ljava/lang/StringBuilder;

    #@695
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@698
    const-string/jumbo v29, "EVENT_RUIM_RECORDS_LOADED: what="

    #@69b
    move-object/from16 v0, v29

    #@69d
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6a0
    move-result-object v4

    #@6a1
    move-object/from16 v0, p1

    #@6a3
    iget v0, v0, Landroid/os/Message;->what:I

    #@6a5
    move/from16 v29, v0

    #@6a7
    move/from16 v0, v29

    #@6a9
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@6ac
    move-result-object v4

    #@6ad
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6b0
    move-result-object v4

    #@6b1
    move-object/from16 v0, p0

    #@6b3
    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    #@6b6
    .line 1286
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ServiceStateTracker;->updatePhoneObject()V

    #@6b9
    .line 1287
    move-object/from16 v0, p0

    #@6bb
    iget-object v4, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@6bd
    invoke-virtual {v4}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeCdma()Z

    #@6c0
    move-result v4

    #@6c1
    if-eqz v4, :cond_1b

    #@6c3
    .line 1288
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ServiceStateTracker;->updateSpnDisplay()V

    #@6c6
    goto/16 :goto_0

    #@6c8
    .line 1290
    :cond_1b
    move-object/from16 v0, p0

    #@6ca
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    #@6cc
    move-object/from16 v26, v0

    #@6ce
    check-cast v26, Lcom/android/internal/telephony/uicc/RuimRecords;

    #@6d0
    .line 1291
    .local v26, "ruim":Lcom/android/internal/telephony/uicc/RuimRecords;
    if-eqz v26, :cond_1d

    #@6d2
    .line 1292
    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/telephony/uicc/RuimRecords;->isProvisioned()Z

    #@6d5
    move-result v4

    #@6d6
    if-eqz v4, :cond_1c

    #@6d8
    .line 1293
    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/telephony/uicc/RuimRecords;->getMdn()Ljava/lang/String;

    #@6db
    move-result-object v4

    #@6dc
    move-object/from16 v0, p0

    #@6de
    iput-object v4, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mMdn:Ljava/lang/String;

    #@6e0
    .line 1294
    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/telephony/uicc/RuimRecords;->getMin()Ljava/lang/String;

    #@6e3
    move-result-object v4

    #@6e4
    move-object/from16 v0, p0

    #@6e6
    iput-object v4, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mMin:Ljava/lang/String;

    #@6e8
    .line 1295
    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/telephony/uicc/RuimRecords;->getSid()Ljava/lang/String;

    #@6eb
    move-result-object v4

    #@6ec
    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/telephony/uicc/RuimRecords;->getNid()Ljava/lang/String;

    #@6ef
    move-result-object v29

    #@6f0
    move-object/from16 v0, p0

    #@6f2
    move-object/from16 v1, v29

    #@6f4
    invoke-virtual {v0, v4, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->parseSidNid(Ljava/lang/String;Ljava/lang/String;)V

    #@6f7
    .line 1296
    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/telephony/uicc/RuimRecords;->getPrlVersion()Ljava/lang/String;

    #@6fa
    move-result-object v4

    #@6fb
    move-object/from16 v0, p0

    #@6fd
    iput-object v4, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mPrlVersion:Ljava/lang/String;

    #@6ff
    .line 1297
    const/4 v4, 0x1

    #@700
    move-object/from16 v0, p0

    #@702
    iput-boolean v4, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mIsMinInfoReady:Z

    #@704
    .line 1299
    :cond_1c
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ServiceStateTracker;->updateOtaspState()V

    #@707
    .line 1301
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/ServiceStateTracker;->notifyCdmaSubscriptionInfoReady()V

    #@70a
    .line 1306
    :cond_1d
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ServiceStateTracker;->pollState()V

    #@70d
    goto/16 :goto_0

    #@70f
    .line 1313
    .end local v26    # "ruim":Lcom/android/internal/telephony/uicc/RuimRecords;
    :pswitch_21
    const-string/jumbo v4, "ERI file has been loaded, repolling."

    #@712
    move-object/from16 v0, p0

    #@714
    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    #@717
    .line 1314
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ServiceStateTracker;->pollState()V

    #@71a
    goto/16 :goto_0

    #@71c
    .line 1318
    :pswitch_22
    move-object/from16 v0, p1

    #@71e
    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@720
    check-cast v10, Landroid/os/AsyncResult;

    #@722
    .line 1319
    .restart local v10    # "ar":Landroid/os/AsyncResult;
    iget-object v4, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@724
    if-nez v4, :cond_0

    #@726
    .line 1320
    iget-object v15, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@728
    check-cast v15, [I

    #@72a
    .line 1321
    .restart local v15    # "ints":[I
    const/4 v4, 0x0

    #@72b
    aget v23, v15, v4

    #@72d
    .line 1322
    .local v23, "otaStatus":I
    const/16 v4, 0x8

    #@72f
    move/from16 v0, v23

    #@731
    if-eq v0, v4, :cond_1e

    #@733
    .line 1323
    const/16 v4, 0xa

    #@735
    move/from16 v0, v23

    #@737
    if-ne v0, v4, :cond_0

    #@739
    .line 1324
    :cond_1e
    const-string/jumbo v4, "EVENT_OTA_PROVISION_STATUS_CHANGE: Complete, Reload MDN"

    #@73c
    move-object/from16 v0, p0

    #@73e
    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    #@741
    .line 1325
    move-object/from16 v0, p0

    #@743
    iget-object v4, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@745
    const/16 v29, 0x22

    #@747
    move-object/from16 v0, p0

    #@749
    move/from16 v1, v29

    #@74b
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    #@74e
    move-result-object v29

    #@74f
    move-object/from16 v0, v29

    #@751
    invoke-interface {v4, v0}, Lcom/android/internal/telephony/CommandsInterface;->getCDMASubscription(Landroid/os/Message;)V

    #@754
    goto/16 :goto_0

    #@756
    .line 1331
    .end local v10    # "ar":Landroid/os/AsyncResult;
    .end local v15    # "ints":[I
    .end local v23    # "otaStatus":I
    :pswitch_23
    move-object/from16 v0, p1

    #@758
    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@75a
    check-cast v10, Landroid/os/AsyncResult;

    #@75c
    .line 1332
    .restart local v10    # "ar":Landroid/os/AsyncResult;
    iget-object v4, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@75e
    if-nez v4, :cond_0

    #@760
    .line 1333
    iget-object v15, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@762
    check-cast v15, [I

    #@764
    .line 1334
    .restart local v15    # "ints":[I
    const/4 v4, 0x0

    #@765
    aget v4, v15, v4

    #@767
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@76a
    move-result-object v4

    #@76b
    move-object/from16 v0, p0

    #@76d
    iput-object v4, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mPrlVersion:Ljava/lang/String;

    #@76f
    goto/16 :goto_0

    #@771
    .line 874
    nop

    #@772
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_1
        :pswitch_e
        :pswitch_c
        :pswitch_12
        :pswitch_8
        :pswitch_13
        :pswitch_16
        :pswitch_14
        :pswitch_15
        :pswitch_17
        :pswitch_18
        :pswitch_0
        :pswitch_0
        :pswitch_1d
        :pswitch_20
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1f
        :pswitch_1e
        :pswitch_21
        :pswitch_22
        :pswitch_2
        :pswitch_1c
        :pswitch_23
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_1a
        :pswitch_6
        :pswitch_7
        :pswitch_1b
        :pswitch_19
        :pswitch_9
    .end packed-switch
.end method

.method protected handlePollStateResult(ILandroid/os/AsyncResult;)V
    .locals 12
    .param p1, "what"    # I
    .param p2, "ar"    # Landroid/os/AsyncResult;

    #@0
    .prologue
    const/4 v11, 0x2

    #@1
    const/4 v10, 0x1

    #@2
    const/4 v9, 0x0

    #@3
    .line 1490
    iget-object v7, p2, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    #@5
    iget-object v8, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPollingContext:[I

    #@7
    if-eq v7, v8, :cond_0

    #@9
    return-void

    #@a
    .line 1492
    :cond_0
    iget-object v7, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@c
    if-eqz v7, :cond_5

    #@e
    .line 1493
    const/4 v1, 0x0

    #@f
    .line 1495
    .local v1, "err":Lcom/android/internal/telephony/CommandException$Error;
    iget-object v7, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@11
    instance-of v7, v7, Lcom/android/internal/telephony/CommandException;

    #@13
    if-eqz v7, :cond_1

    #@15
    .line 1496
    iget-object v7, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@17
    check-cast v7, Lcom/android/internal/telephony/CommandException;

    #@19
    invoke-virtual {v7}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    #@1c
    move-result-object v1

    #@1d
    .line 1499
    .end local v1    # "err":Lcom/android/internal/telephony/CommandException$Error;
    :cond_1
    sget-object v7, Lcom/android/internal/telephony/CommandException$Error;->RADIO_NOT_AVAILABLE:Lcom/android/internal/telephony/CommandException$Error;

    #@1f
    if-ne v1, v7, :cond_2

    #@21
    .line 1501
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->cancelPollState()V

    #@24
    .line 1502
    return-void

    #@25
    .line 1505
    :cond_2
    sget-object v7, Lcom/android/internal/telephony/CommandException$Error;->OP_NOT_ALLOWED_BEFORE_REG_NW:Lcom/android/internal/telephony/CommandException$Error;

    #@27
    if-eq v1, v7, :cond_3

    #@29
    .line 1506
    new-instance v7, Ljava/lang/StringBuilder;

    #@2b
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@2e
    const-string/jumbo v8, "RIL implementation has returned an error where it must succeed"

    #@31
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v7

    #@35
    .line 1507
    iget-object v8, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@37
    .line 1506
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v7

    #@3b
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3e
    move-result-object v7

    #@3f
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/ServiceStateTracker;->loge(Ljava/lang/String;)V

    #@42
    .line 1515
    :cond_3
    :goto_0
    iget-object v7, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPollingContext:[I

    #@44
    aget v8, v7, v9

    #@46
    add-int/lit8 v8, v8, -0x1

    #@48
    aput v8, v7, v9

    #@4a
    .line 1517
    iget-object v7, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPollingContext:[I

    #@4c
    aget v7, v7, v9

    #@4e
    if-nez v7, :cond_4

    #@50
    .line 1518
    iget-object v7, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@52
    invoke-virtual {v7}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    #@55
    move-result v7

    #@56
    if-eqz v7, :cond_6

    #@58
    .line 1519
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->updateRoamingState()V

    #@5b
    .line 1520
    iget-object v7, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@5d
    iget-boolean v8, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mEmergencyOnly:Z

    #@5f
    invoke-virtual {v7, v8}, Landroid/telephony/ServiceState;->setEmergencyOnly(Z)V

    #@62
    .line 1595
    :goto_1
    invoke-direct {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->pollStateDone()V

    #@65
    .line 1488
    :cond_4
    return-void

    #@66
    .line 1510
    :cond_5
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/ServiceStateTracker;->handlePollStateResultMessage(ILandroid/os/AsyncResult;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    #@69
    goto :goto_0

    #@6a
    .line 1511
    :catch_0
    move-exception v2

    #@6b
    .line 1512
    .local v2, "ex":Ljava/lang/RuntimeException;
    new-instance v7, Ljava/lang/StringBuilder;

    #@6d
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@70
    const-string/jumbo v8, "Exception while polling service state. Probably malformed RIL response."

    #@73
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@76
    move-result-object v7

    #@77
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@7a
    move-result-object v7

    #@7b
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7e
    move-result-object v7

    #@7f
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/ServiceStateTracker;->loge(Ljava/lang/String;)V

    #@82
    goto :goto_0

    #@83
    .line 1522
    .end local v2    # "ex":Ljava/lang/RuntimeException;
    :cond_6
    const/4 v5, 0x0

    #@84
    .line 1523
    .local v5, "namMatch":Z
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->isSidsAllZeros()Z

    #@87
    move-result v7

    #@88
    if-nez v7, :cond_7

    #@8a
    iget-object v7, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@8c
    invoke-virtual {v7}, Landroid/telephony/ServiceState;->getSystemId()I

    #@8f
    move-result v7

    #@90
    invoke-direct {p0, v7}, Lcom/android/internal/telephony/ServiceStateTracker;->isHomeSid(I)Z

    #@93
    move-result v7

    #@94
    if-eqz v7, :cond_7

    #@96
    .line 1524
    const/4 v5, 0x1

    #@97
    .line 1528
    :cond_7
    iget-boolean v7, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIsSubscriptionFromRuim:Z

    #@99
    if-eqz v7, :cond_8

    #@9b
    .line 1529
    iget-object v7, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@9d
    iget-object v8, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@9f
    invoke-virtual {v8}, Landroid/telephony/ServiceState;->getVoiceRoaming()Z

    #@a2
    move-result v8

    #@a3
    iget-object v9, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@a5
    invoke-direct {p0, v8, v9}, Lcom/android/internal/telephony/ServiceStateTracker;->isRoamingBetweenOperators(ZLandroid/telephony/ServiceState;)Z

    #@a8
    move-result v8

    #@a9
    invoke-virtual {v7, v8}, Landroid/telephony/ServiceState;->setVoiceRoaming(Z)V

    #@ac
    .line 1533
    :cond_8
    iget-object v7, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@ae
    invoke-virtual {v7}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    #@b1
    move-result v7

    #@b2
    if-nez v7, :cond_d

    #@b4
    const/4 v4, 0x1

    #@b5
    .line 1534
    .local v4, "isVoiceInService":Z
    :goto_2
    iget-object v7, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@b7
    invoke-virtual {v7}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    #@ba
    move-result v0

    #@bb
    .line 1535
    .local v0, "dataRegType":I
    if-eqz v4, :cond_9

    #@bd
    invoke-static {v0}, Landroid/telephony/ServiceState;->isCdma(I)Z

    #@c0
    move-result v7

    #@c1
    if-eqz v7, :cond_9

    #@c3
    .line 1536
    iget-object v7, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@c5
    iget-object v8, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@c7
    invoke-virtual {v8}, Landroid/telephony/ServiceState;->getVoiceRoaming()Z

    #@ca
    move-result v8

    #@cb
    invoke-virtual {v7, v8}, Landroid/telephony/ServiceState;->setDataRoaming(Z)V

    #@ce
    .line 1540
    :cond_9
    iget-object v7, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@d0
    iget v8, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDefaultRoamingIndicator:I

    #@d2
    invoke-virtual {v7, v8}, Landroid/telephony/ServiceState;->setCdmaDefaultRoamingIndicator(I)V

    #@d5
    .line 1541
    iget-object v7, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@d7
    iget v8, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRoamingIndicator:I

    #@d9
    invoke-virtual {v7, v8}, Landroid/telephony/ServiceState;->setCdmaRoamingIndicator(I)V

    #@dc
    .line 1542
    const/4 v3, 0x1

    #@dd
    .line 1543
    .local v3, "isPrlLoaded":Z
    iget-object v7, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPrlVersion:Ljava/lang/String;

    #@df
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@e2
    move-result v7

    #@e3
    if-eqz v7, :cond_a

    #@e5
    .line 1544
    const/4 v3, 0x0

    #@e6
    .line 1546
    :cond_a
    if-eqz v3, :cond_b

    #@e8
    iget-object v7, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@ea
    invoke-virtual {v7}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    #@ed
    move-result v7

    #@ee
    if-nez v7, :cond_e

    #@f0
    .line 1548
    :cond_b
    const-string/jumbo v7, "Turn off roaming indicator if !isPrlLoaded or voice RAT is unknown"

    #@f3
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    #@f6
    .line 1549
    iget-object v7, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@f8
    invoke-virtual {v7, v10}, Landroid/telephony/ServiceState;->setCdmaRoamingIndicator(I)V

    #@fb
    .line 1576
    :cond_c
    :goto_3
    iget-object v7, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@fd
    invoke-virtual {v7}, Landroid/telephony/ServiceState;->getCdmaRoamingIndicator()I

    #@100
    move-result v6

    #@101
    .line 1577
    .local v6, "roamingIndicator":I
    iget-object v7, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@103
    iget-object v8, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@105
    iget-object v8, v8, Lcom/android/internal/telephony/GsmCdmaPhone;->mEriManager:Lcom/android/internal/telephony/cdma/EriManager;

    #@107
    .line 1578
    iget v9, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDefaultRoamingIndicator:I

    #@109
    .line 1577
    invoke-virtual {v8, v6, v9}, Lcom/android/internal/telephony/cdma/EriManager;->getCdmaEriIconIndex(II)I

    #@10c
    move-result v8

    #@10d
    invoke-virtual {v7, v8}, Landroid/telephony/ServiceState;->setCdmaEriIconIndex(I)V

    #@110
    .line 1579
    iget-object v7, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@112
    iget-object v8, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@114
    iget-object v8, v8, Lcom/android/internal/telephony/GsmCdmaPhone;->mEriManager:Lcom/android/internal/telephony/cdma/EriManager;

    #@116
    .line 1580
    iget v9, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDefaultRoamingIndicator:I

    #@118
    .line 1579
    invoke-virtual {v8, v6, v9}, Lcom/android/internal/telephony/cdma/EriManager;->getCdmaEriIconMode(II)I

    #@11b
    move-result v8

    #@11c
    invoke-virtual {v7, v8}, Landroid/telephony/ServiceState;->setCdmaEriIconMode(I)V

    #@11f
    .line 1586
    new-instance v7, Ljava/lang/StringBuilder;

    #@121
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@124
    const-string/jumbo v8, "Set CDMA Roaming Indicator to: "

    #@127
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12a
    move-result-object v7

    #@12b
    iget-object v8, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@12d
    invoke-virtual {v8}, Landroid/telephony/ServiceState;->getCdmaRoamingIndicator()I

    #@130
    move-result v8

    #@131
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@134
    move-result-object v7

    #@135
    .line 1587
    const-string/jumbo v8, ". voiceRoaming = "

    #@138
    .line 1586
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13b
    move-result-object v7

    #@13c
    .line 1587
    iget-object v8, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@13e
    invoke-virtual {v8}, Landroid/telephony/ServiceState;->getVoiceRoaming()Z

    #@141
    move-result v8

    #@142
    .line 1586
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@145
    move-result-object v7

    #@146
    .line 1588
    const-string/jumbo v8, ". dataRoaming = "

    #@149
    .line 1586
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14c
    move-result-object v7

    #@14d
    .line 1588
    iget-object v8, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@14f
    invoke-virtual {v8}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    #@152
    move-result v8

    #@153
    .line 1586
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@156
    move-result-object v7

    #@157
    .line 1589
    const-string/jumbo v8, ", isPrlLoaded = "

    #@15a
    .line 1586
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15d
    move-result-object v7

    #@15e
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@161
    move-result-object v7

    #@162
    .line 1590
    const-string/jumbo v8, ". namMatch = "

    #@165
    .line 1586
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@168
    move-result-object v7

    #@169
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@16c
    move-result-object v7

    #@16d
    .line 1590
    const-string/jumbo v8, " , mIsInPrl = "

    #@170
    .line 1586
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@173
    move-result-object v7

    #@174
    .line 1590
    iget-boolean v8, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIsInPrl:Z

    #@176
    .line 1586
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@179
    move-result-object v7

    #@17a
    .line 1591
    const-string/jumbo v8, ", mRoamingIndicator = "

    #@17d
    .line 1586
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@180
    move-result-object v7

    #@181
    .line 1591
    iget v8, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRoamingIndicator:I

    #@183
    .line 1586
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@186
    move-result-object v7

    #@187
    .line 1592
    const-string/jumbo v8, ", mDefaultRoamingIndicator= "

    #@18a
    .line 1586
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18d
    move-result-object v7

    #@18e
    .line 1592
    iget v8, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDefaultRoamingIndicator:I

    #@190
    .line 1586
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@193
    move-result-object v7

    #@194
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@197
    move-result-object v7

    #@198
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    #@19b
    goto/16 :goto_1

    #@19d
    .line 1533
    .end local v0    # "dataRegType":I
    .end local v3    # "isPrlLoaded":Z
    .end local v4    # "isVoiceInService":Z
    .end local v6    # "roamingIndicator":I
    :cond_d
    const/4 v4, 0x0

    #@19e
    .restart local v4    # "isVoiceInService":Z
    goto/16 :goto_2

    #@1a0
    .line 1550
    .restart local v0    # "dataRegType":I
    .restart local v3    # "isPrlLoaded":Z
    :cond_e
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->isSidsAllZeros()Z

    #@1a3
    move-result v7

    #@1a4
    if-nez v7, :cond_c

    #@1a6
    .line 1551
    if-nez v5, :cond_f

    #@1a8
    iget-boolean v7, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIsInPrl:Z

    #@1aa
    if-eqz v7, :cond_11

    #@1ac
    .line 1554
    :cond_f
    if-eqz v5, :cond_10

    #@1ae
    iget-boolean v7, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIsInPrl:Z

    #@1b0
    if-eqz v7, :cond_12

    #@1b2
    .line 1562
    :cond_10
    if-nez v5, :cond_14

    #@1b4
    iget-boolean v7, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIsInPrl:Z

    #@1b6
    if-eqz v7, :cond_14

    #@1b8
    .line 1564
    iget-object v7, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@1ba
    iget v8, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRoamingIndicator:I

    #@1bc
    invoke-virtual {v7, v8}, Landroid/telephony/ServiceState;->setCdmaRoamingIndicator(I)V

    #@1bf
    goto/16 :goto_3

    #@1c1
    .line 1553
    :cond_11
    iget-object v7, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@1c3
    iget v8, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDefaultRoamingIndicator:I

    #@1c5
    invoke-virtual {v7, v8}, Landroid/telephony/ServiceState;->setCdmaRoamingIndicator(I)V

    #@1c8
    goto/16 :goto_3

    #@1ca
    .line 1556
    :cond_12
    iget-object v7, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@1cc
    invoke-virtual {v7}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    #@1cf
    move-result v7

    #@1d0
    invoke-static {v7}, Landroid/telephony/ServiceState;->isLte(I)Z

    #@1d3
    move-result v7

    #@1d4
    if-eqz v7, :cond_13

    #@1d6
    .line 1557
    const-string/jumbo v7, "Turn off roaming indicator as voice is LTE"

    #@1d9
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    #@1dc
    .line 1558
    iget-object v7, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@1de
    invoke-virtual {v7, v10}, Landroid/telephony/ServiceState;->setCdmaRoamingIndicator(I)V

    #@1e1
    goto/16 :goto_3

    #@1e3
    .line 1560
    :cond_13
    iget-object v7, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@1e5
    invoke-virtual {v7, v11}, Landroid/telephony/ServiceState;->setCdmaRoamingIndicator(I)V

    #@1e8
    goto/16 :goto_3

    #@1ea
    .line 1567
    :cond_14
    iget v7, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRoamingIndicator:I

    #@1ec
    if-gt v7, v11, :cond_15

    #@1ee
    .line 1568
    iget-object v7, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@1f0
    invoke-virtual {v7, v10}, Landroid/telephony/ServiceState;->setCdmaRoamingIndicator(I)V

    #@1f3
    goto/16 :goto_3

    #@1f5
    .line 1571
    :cond_15
    iget-object v7, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@1f7
    iget v8, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRoamingIndicator:I

    #@1f9
    invoke-virtual {v7, v8}, Landroid/telephony/ServiceState;->setCdmaRoamingIndicator(I)V

    #@1fc
    goto/16 :goto_3
.end method

.method handlePollStateResultMessage(ILandroid/os/AsyncResult;)V
    .locals 36
    .param p1, "what"    # I
    .param p2, "ar"    # Landroid/os/AsyncResult;

    #@0
    .prologue
    .line 1613
    sparse-switch p1, :sswitch_data_0

    #@3
    .line 1964
    new-instance v3, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v33, "handlePollStateResultMessage: Unexpected RIL response received: "

    #@b
    move-object/from16 v0, v33

    #@d
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v3

    #@11
    move/from16 v0, p1

    #@13
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@16
    move-result-object v3

    #@17
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a
    move-result-object v3

    #@1b
    move-object/from16 v0, p0

    #@1d
    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->loge(Ljava/lang/String;)V

    #@20
    .line 1610
    :cond_0
    :goto_0
    return-void

    #@21
    .line 1615
    :sswitch_0
    move-object/from16 v0, p0

    #@23
    iget-object v3, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@25
    invoke-virtual {v3}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    #@28
    move-result v3

    #@29
    if-eqz v3, :cond_8

    #@2b
    .line 1616
    move-object/from16 v0, p2

    #@2d
    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@2f
    move-object/from16 v30, v0

    #@31
    check-cast v30, [Ljava/lang/String;

    #@33
    .line 1617
    .local v30, "states":[Ljava/lang/String;
    const/16 v19, -0x1

    #@35
    .line 1618
    .local v19, "lac":I
    const/4 v11, -0x1

    #@36
    .line 1619
    .local v11, "cid":I
    const/16 v32, 0x0

    #@38
    .line 1620
    .local v32, "type":I
    const/16 v27, 0x4

    #@3a
    .line 1621
    .local v27, "regState":I
    const/16 v26, -0x1

    #@3c
    .line 1622
    .local v26, "reasonRegStateDenied":I
    const/16 v23, -0x1

    #@3e
    .line 1623
    .local v23, "psc":I
    move-object/from16 v0, v30

    #@40
    array-length v3, v0

    #@41
    if-lez v3, :cond_4

    #@43
    .line 1625
    const/4 v3, 0x0

    #@44
    :try_start_0
    aget-object v3, v30, v3

    #@46
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@49
    move-result v27

    #@4a
    .line 1626
    move-object/from16 v0, v30

    #@4c
    array-length v3, v0

    #@4d
    const/16 v33, 0x3

    #@4f
    move/from16 v0, v33

    #@51
    if-lt v3, v0, :cond_3

    #@53
    .line 1627
    const/4 v3, 0x1

    #@54
    aget-object v3, v30, v3

    #@56
    if-eqz v3, :cond_1

    #@58
    const/4 v3, 0x1

    #@59
    aget-object v3, v30, v3

    #@5b
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    #@5e
    move-result v3

    #@5f
    if-lez v3, :cond_1

    #@61
    .line 1628
    const/4 v3, 0x1

    #@62
    aget-object v3, v30, v3

    #@64
    const/16 v33, 0x10

    #@66
    move/from16 v0, v33

    #@68
    invoke-static {v3, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    #@6b
    move-result v19

    #@6c
    .line 1630
    :cond_1
    const/4 v3, 0x2

    #@6d
    aget-object v3, v30, v3

    #@6f
    if-eqz v3, :cond_2

    #@71
    const/4 v3, 0x2

    #@72
    aget-object v3, v30, v3

    #@74
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    #@77
    move-result v3

    #@78
    if-lez v3, :cond_2

    #@7a
    .line 1631
    const/4 v3, 0x2

    #@7b
    aget-object v3, v30, v3

    #@7d
    const/16 v33, 0x10

    #@7f
    move/from16 v0, v33

    #@81
    invoke-static {v3, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    #@84
    move-result v11

    #@85
    .line 1635
    :cond_2
    move-object/from16 v0, v30

    #@87
    array-length v3, v0

    #@88
    const/16 v33, 0x4

    #@8a
    move/from16 v0, v33

    #@8c
    if-lt v3, v0, :cond_3

    #@8e
    const/4 v3, 0x3

    #@8f
    aget-object v3, v30, v3

    #@91
    if-eqz v3, :cond_3

    #@93
    .line 1636
    const/4 v3, 0x3

    #@94
    aget-object v3, v30, v3

    #@96
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@99
    move-result v32

    #@9a
    .line 1639
    :cond_3
    move-object/from16 v0, v30

    #@9c
    array-length v3, v0

    #@9d
    const/16 v33, 0xe

    #@9f
    move/from16 v0, v33

    #@a1
    if-le v3, v0, :cond_4

    #@a3
    .line 1640
    const/16 v3, 0xe

    #@a5
    aget-object v3, v30, v3

    #@a7
    if-eqz v3, :cond_4

    #@a9
    const/16 v3, 0xe

    #@ab
    aget-object v3, v30, v3

    #@ad
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    #@b0
    move-result v3

    #@b1
    if-lez v3, :cond_4

    #@b3
    .line 1641
    const/16 v3, 0xe

    #@b5
    aget-object v3, v30, v3

    #@b7
    const/16 v33, 0x10

    #@b9
    move/from16 v0, v33

    #@bb
    invoke-static {v3, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@be
    move-result v23

    #@bf
    .line 1649
    :cond_4
    :goto_1
    move-object/from16 v0, p0

    #@c1
    move/from16 v1, v27

    #@c3
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->regCodeIsRoaming(I)Z

    #@c6
    move-result v3

    #@c7
    move-object/from16 v0, p0

    #@c9
    iput-boolean v3, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mGsmRoaming:Z

    #@cb
    .line 1650
    move-object/from16 v0, p0

    #@cd
    iget-object v3, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@cf
    move-object/from16 v0, p0

    #@d1
    move/from16 v1, v27

    #@d3
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->regCodeToServiceState(I)I

    #@d6
    move-result v33

    #@d7
    move/from16 v0, v33

    #@d9
    invoke-virtual {v3, v0}, Landroid/telephony/ServiceState;->setVoiceRegState(I)V

    #@dc
    .line 1651
    move-object/from16 v0, p0

    #@de
    iget-object v3, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@e0
    move/from16 v0, v32

    #@e2
    invoke-virtual {v3, v0}, Landroid/telephony/ServiceState;->setRilVoiceRadioTechnology(I)V

    #@e5
    .line 1653
    move-object/from16 v0, p0

    #@e7
    iget-object v3, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@e9
    invoke-virtual {v3}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    #@ec
    move-result-object v3

    #@ed
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@f0
    move-result-object v3

    #@f1
    .line 1654
    const v33, 0x112005a

    #@f4
    .line 1653
    move/from16 v0, v33

    #@f6
    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@f9
    move-result v18

    #@fa
    .line 1655
    .local v18, "isVoiceCapable":Z
    const/16 v3, 0xd

    #@fc
    move/from16 v0, v27

    #@fe
    if-eq v0, v3, :cond_5

    #@100
    .line 1656
    const/16 v3, 0xa

    #@102
    move/from16 v0, v27

    #@104
    if-ne v0, v3, :cond_6

    #@106
    .line 1655
    :cond_5
    if-eqz v18, :cond_7

    #@108
    .line 1660
    const/4 v3, 0x1

    #@109
    move-object/from16 v0, p0

    #@10b
    iput-boolean v3, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mEmergencyOnly:Z

    #@10d
    .line 1666
    :goto_2
    move-object/from16 v0, p0

    #@10f
    iget-object v3, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewCellLoc:Landroid/telephony/CellLocation;

    #@111
    check-cast v3, Landroid/telephony/gsm/GsmCellLocation;

    #@113
    move/from16 v0, v19

    #@115
    invoke-virtual {v3, v0, v11}, Landroid/telephony/gsm/GsmCellLocation;->setLacAndCid(II)V

    #@118
    .line 1667
    move-object/from16 v0, p0

    #@11a
    iget-object v3, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewCellLoc:Landroid/telephony/CellLocation;

    #@11c
    check-cast v3, Landroid/telephony/gsm/GsmCellLocation;

    #@11e
    move/from16 v0, v23

    #@120
    invoke-virtual {v3, v0}, Landroid/telephony/gsm/GsmCellLocation;->setPsc(I)V

    #@123
    goto/16 :goto_0

    #@125
    .line 1644
    .end local v18    # "isVoiceCapable":Z
    :catch_0
    move-exception v16

    #@126
    .line 1645
    .local v16, "ex":Ljava/lang/NumberFormatException;
    new-instance v3, Ljava/lang/StringBuilder;

    #@128
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@12b
    const-string/jumbo v33, "error parsing RegistrationState: "

    #@12e
    move-object/from16 v0, v33

    #@130
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@133
    move-result-object v3

    #@134
    move-object/from16 v0, v16

    #@136
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@139
    move-result-object v3

    #@13a
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13d
    move-result-object v3

    #@13e
    move-object/from16 v0, p0

    #@140
    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->loge(Ljava/lang/String;)V

    #@143
    goto/16 :goto_1

    #@145
    .line 1657
    .end local v16    # "ex":Ljava/lang/NumberFormatException;
    .restart local v18    # "isVoiceCapable":Z
    :cond_6
    const/16 v3, 0xc

    #@147
    move/from16 v0, v27

    #@149
    if-eq v0, v3, :cond_5

    #@14b
    .line 1658
    const/16 v3, 0xe

    #@14d
    move/from16 v0, v27

    #@14f
    if-eq v0, v3, :cond_5

    #@151
    .line 1662
    :cond_7
    const/4 v3, 0x0

    #@152
    move-object/from16 v0, p0

    #@154
    iput-boolean v3, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mEmergencyOnly:Z

    #@156
    goto :goto_2

    #@157
    .line 1669
    .end local v11    # "cid":I
    .end local v18    # "isVoiceCapable":Z
    .end local v19    # "lac":I
    .end local v23    # "psc":I
    .end local v26    # "reasonRegStateDenied":I
    .end local v27    # "regState":I
    .end local v30    # "states":[Ljava/lang/String;
    .end local v32    # "type":I
    :cond_8
    move-object/from16 v0, p2

    #@159
    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@15b
    move-object/from16 v30, v0

    #@15d
    check-cast v30, [Ljava/lang/String;

    #@15f
    .line 1671
    .restart local v30    # "states":[Ljava/lang/String;
    const/16 v28, 0x4

    #@161
    .line 1672
    .local v28, "registrationState":I
    const/16 v24, -0x1

    #@163
    .line 1673
    .local v24, "radioTechnology":I
    const/4 v4, -0x1

    #@164
    .line 1675
    .local v4, "baseStationId":I
    const v5, 0x7fffffff

    #@167
    .line 1677
    .local v5, "baseStationLatitude":I
    const v6, 0x7fffffff

    #@16a
    .line 1678
    .local v6, "baseStationLongitude":I
    const/4 v12, 0x0

    #@16b
    .line 1679
    .local v12, "cssIndicator":I
    const/4 v7, 0x0

    #@16c
    .line 1680
    .local v7, "systemId":I
    const/4 v8, 0x0

    #@16d
    .line 1681
    .local v8, "networkId":I
    const/16 v29, -0x1

    #@16f
    .line 1682
    .local v29, "roamingIndicator":I
    const/16 v31, 0x0

    #@171
    .line 1683
    .local v31, "systemIsInPrl":I
    const/4 v15, 0x0

    #@172
    .line 1684
    .local v15, "defaultRoamingIndicator":I
    const/16 v25, 0x0

    #@174
    .line 1686
    .local v25, "reasonForDenial":I
    move-object/from16 v0, v30

    #@176
    array-length v3, v0

    #@177
    const/16 v33, 0xe

    #@179
    move/from16 v0, v33

    #@17b
    if-lt v3, v0, :cond_17

    #@17d
    .line 1688
    const/4 v3, 0x0

    #@17e
    :try_start_1
    aget-object v3, v30, v3

    #@180
    if-eqz v3, :cond_9

    #@182
    .line 1689
    const/4 v3, 0x0

    #@183
    aget-object v3, v30, v3

    #@185
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@188
    move-result v28

    #@189
    .line 1691
    :cond_9
    const/4 v3, 0x3

    #@18a
    aget-object v3, v30, v3

    #@18c
    if-eqz v3, :cond_a

    #@18e
    .line 1692
    const/4 v3, 0x3

    #@18f
    aget-object v3, v30, v3

    #@191
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@194
    move-result v24

    #@195
    .line 1694
    :cond_a
    const/4 v3, 0x4

    #@196
    aget-object v3, v30, v3

    #@198
    if-eqz v3, :cond_b

    #@19a
    .line 1695
    const/4 v3, 0x4

    #@19b
    aget-object v3, v30, v3

    #@19d
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@1a0
    move-result v4

    #@1a1
    .line 1697
    :cond_b
    const/4 v3, 0x5

    #@1a2
    aget-object v3, v30, v3

    #@1a4
    if-eqz v3, :cond_c

    #@1a6
    .line 1698
    const/4 v3, 0x5

    #@1a7
    aget-object v3, v30, v3

    #@1a9
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@1ac
    move-result v5

    #@1ad
    .line 1700
    :cond_c
    const/4 v3, 0x6

    #@1ae
    aget-object v3, v30, v3

    #@1b0
    if-eqz v3, :cond_d

    #@1b2
    .line 1701
    const/4 v3, 0x6

    #@1b3
    aget-object v3, v30, v3

    #@1b5
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@1b8
    move-result v6

    #@1b9
    .line 1704
    :cond_d
    if-nez v5, :cond_e

    #@1bb
    if-nez v6, :cond_e

    #@1bd
    .line 1705
    const v5, 0x7fffffff

    #@1c0
    .line 1706
    const v6, 0x7fffffff

    #@1c3
    .line 1708
    :cond_e
    const/4 v3, 0x7

    #@1c4
    aget-object v3, v30, v3

    #@1c6
    if-eqz v3, :cond_f

    #@1c8
    .line 1709
    const/4 v3, 0x7

    #@1c9
    aget-object v3, v30, v3

    #@1cb
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@1ce
    move-result v12

    #@1cf
    .line 1711
    :cond_f
    const/16 v3, 0x8

    #@1d1
    aget-object v3, v30, v3

    #@1d3
    if-eqz v3, :cond_10

    #@1d5
    .line 1712
    const/16 v3, 0x8

    #@1d7
    aget-object v3, v30, v3

    #@1d9
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@1dc
    move-result v7

    #@1dd
    .line 1714
    :cond_10
    const/16 v3, 0x9

    #@1df
    aget-object v3, v30, v3

    #@1e1
    if-eqz v3, :cond_11

    #@1e3
    .line 1715
    const/16 v3, 0x9

    #@1e5
    aget-object v3, v30, v3

    #@1e7
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@1ea
    move-result v8

    #@1eb
    .line 1717
    :cond_11
    const/16 v3, 0xa

    #@1ed
    aget-object v3, v30, v3

    #@1ef
    if-eqz v3, :cond_12

    #@1f1
    .line 1718
    const/16 v3, 0xa

    #@1f3
    aget-object v3, v30, v3

    #@1f5
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@1f8
    move-result v29

    #@1f9
    .line 1720
    :cond_12
    const/16 v3, 0xb

    #@1fb
    aget-object v3, v30, v3

    #@1fd
    if-eqz v3, :cond_13

    #@1ff
    .line 1721
    const/16 v3, 0xb

    #@201
    aget-object v3, v30, v3

    #@203
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@206
    move-result v31

    #@207
    .line 1723
    :cond_13
    const/16 v3, 0xc

    #@209
    aget-object v3, v30, v3

    #@20b
    if-eqz v3, :cond_14

    #@20d
    .line 1724
    const/16 v3, 0xc

    #@20f
    aget-object v3, v30, v3

    #@211
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@214
    move-result v15

    #@215
    .line 1726
    :cond_14
    const/16 v3, 0xd

    #@217
    aget-object v3, v30, v3

    #@219
    if-eqz v3, :cond_15

    #@21b
    .line 1727
    const/16 v3, 0xd

    #@21d
    aget-object v3, v30, v3

    #@21f
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    #@222
    move-result v25

    #@223
    .line 1738
    :cond_15
    :goto_3
    move/from16 v0, v28

    #@225
    move-object/from16 v1, p0

    #@227
    iput v0, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mRegistrationState:I

    #@229
    .line 1743
    move-object/from16 v0, p0

    #@22b
    move/from16 v1, v28

    #@22d
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->regCodeIsRoaming(I)Z

    #@230
    move-result v3

    #@231
    if-eqz v3, :cond_16

    #@233
    const/16 v3, 0xa

    #@235
    aget-object v3, v30, v3

    #@237
    move-object/from16 v0, p0

    #@239
    invoke-direct {v0, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->isRoamIndForHomeSystem(Ljava/lang/String;)Z

    #@23c
    move-result v3

    #@23d
    if-eqz v3, :cond_18

    #@23f
    :cond_16
    const/4 v10, 0x0

    #@240
    .line 1744
    .local v10, "cdmaRoaming":Z
    :goto_4
    move-object/from16 v0, p0

    #@242
    iget-object v3, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@244
    invoke-virtual {v3, v10}, Landroid/telephony/ServiceState;->setVoiceRoaming(Z)V

    #@247
    .line 1745
    move-object/from16 v0, p0

    #@249
    iget-object v3, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@24b
    move-object/from16 v0, p0

    #@24d
    move/from16 v1, v28

    #@24f
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->regCodeToServiceState(I)I

    #@252
    move-result v33

    #@253
    move/from16 v0, v33

    #@255
    invoke-virtual {v3, v0}, Landroid/telephony/ServiceState;->setVoiceRegState(I)V

    #@258
    .line 1747
    move-object/from16 v0, p0

    #@25a
    iget-object v3, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@25c
    move/from16 v0, v24

    #@25e
    invoke-virtual {v3, v0}, Landroid/telephony/ServiceState;->setRilVoiceRadioTechnology(I)V

    #@261
    .line 1749
    move-object/from16 v0, p0

    #@263
    iget-object v3, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@265
    invoke-virtual {v3, v12}, Landroid/telephony/ServiceState;->setCssIndicator(I)V

    #@268
    .line 1750
    move-object/from16 v0, p0

    #@26a
    iget-object v3, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@26c
    invoke-virtual {v3, v7, v8}, Landroid/telephony/ServiceState;->setSystemAndNetworkId(II)V

    #@26f
    .line 1751
    move/from16 v0, v29

    #@271
    move-object/from16 v1, p0

    #@273
    iput v0, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mRoamingIndicator:I

    #@275
    .line 1752
    if-nez v31, :cond_19

    #@277
    const/4 v3, 0x0

    #@278
    :goto_5
    move-object/from16 v0, p0

    #@27a
    iput-boolean v3, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mIsInPrl:Z

    #@27c
    .line 1753
    move-object/from16 v0, p0

    #@27e
    iput v15, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mDefaultRoamingIndicator:I

    #@280
    .line 1757
    move-object/from16 v0, p0

    #@282
    iget-object v3, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewCellLoc:Landroid/telephony/CellLocation;

    #@284
    check-cast v3, Landroid/telephony/cdma/CdmaCellLocation;

    #@286
    invoke-virtual/range {v3 .. v8}, Landroid/telephony/cdma/CdmaCellLocation;->setCellLocationData(IIIII)V

    #@289
    .line 1760
    if-nez v25, :cond_1a

    #@28b
    .line 1761
    const-string/jumbo v3, "General"

    #@28e
    move-object/from16 v0, p0

    #@290
    iput-object v3, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mRegistrationDeniedReason:Ljava/lang/String;

    #@292
    .line 1768
    :goto_6
    move-object/from16 v0, p0

    #@294
    iget v3, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mRegistrationState:I

    #@296
    const/16 v33, 0x3

    #@298
    move/from16 v0, v33

    #@29a
    if-ne v3, v0, :cond_0

    #@29c
    .line 1769
    new-instance v3, Ljava/lang/StringBuilder;

    #@29e
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@2a1
    const-string/jumbo v33, "Registration denied, "

    #@2a4
    move-object/from16 v0, v33

    #@2a6
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a9
    move-result-object v3

    #@2aa
    move-object/from16 v0, p0

    #@2ac
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mRegistrationDeniedReason:Ljava/lang/String;

    #@2ae
    move-object/from16 v33, v0

    #@2b0
    move-object/from16 v0, v33

    #@2b2
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b5
    move-result-object v3

    #@2b6
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2b9
    move-result-object v3

    #@2ba
    move-object/from16 v0, p0

    #@2bc
    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    #@2bf
    goto/16 :goto_0

    #@2c1
    .line 1729
    .end local v10    # "cdmaRoaming":Z
    :catch_1
    move-exception v16

    #@2c2
    .line 1730
    .restart local v16    # "ex":Ljava/lang/NumberFormatException;
    new-instance v3, Ljava/lang/StringBuilder;

    #@2c4
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@2c7
    const-string/jumbo v33, "EVENT_POLL_STATE_REGISTRATION_CDMA: error parsing: "

    #@2ca
    move-object/from16 v0, v33

    #@2cc
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2cf
    move-result-object v3

    #@2d0
    move-object/from16 v0, v16

    #@2d2
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2d5
    move-result-object v3

    #@2d6
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2d9
    move-result-object v3

    #@2da
    move-object/from16 v0, p0

    #@2dc
    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->loge(Ljava/lang/String;)V

    #@2df
    goto/16 :goto_3

    #@2e1
    .line 1733
    .end local v16    # "ex":Ljava/lang/NumberFormatException;
    :cond_17
    new-instance v3, Ljava/lang/RuntimeException;

    #@2e3
    new-instance v33, Ljava/lang/StringBuilder;

    #@2e5
    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    #@2e8
    const-string/jumbo v34, "Warning! Wrong number of parameters returned from RIL_REQUEST_REGISTRATION_STATE: expected 14 or more strings and got "

    #@2eb
    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2ee
    move-result-object v33

    #@2ef
    .line 1735
    move-object/from16 v0, v30

    #@2f1
    array-length v0, v0

    #@2f2
    move/from16 v34, v0

    #@2f4
    .line 1733
    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2f7
    move-result-object v33

    #@2f8
    .line 1735
    const-string/jumbo v34, " strings"

    #@2fb
    .line 1733
    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2fe
    move-result-object v33

    #@2ff
    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@302
    move-result-object v33

    #@303
    move-object/from16 v0, v33

    #@305
    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@308
    throw v3

    #@309
    .line 1743
    :cond_18
    const/4 v10, 0x1

    #@30a
    .restart local v10    # "cdmaRoaming":Z
    goto/16 :goto_4

    #@30c
    .line 1752
    :cond_19
    const/4 v3, 0x1

    #@30d
    goto/16 :goto_5

    #@30f
    .line 1762
    :cond_1a
    const/4 v3, 0x1

    #@310
    move/from16 v0, v25

    #@312
    if-ne v0, v3, :cond_1b

    #@314
    .line 1763
    const-string/jumbo v3, "Authentication Failure"

    #@317
    move-object/from16 v0, p0

    #@319
    iput-object v3, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mRegistrationDeniedReason:Ljava/lang/String;

    #@31b
    goto/16 :goto_6

    #@31d
    .line 1765
    :cond_1b
    const-string/jumbo v3, ""

    #@320
    move-object/from16 v0, p0

    #@322
    iput-object v3, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mRegistrationDeniedReason:Ljava/lang/String;

    #@324
    goto/16 :goto_6

    #@326
    .line 1776
    .end local v4    # "baseStationId":I
    .end local v5    # "baseStationLatitude":I
    .end local v6    # "baseStationLongitude":I
    .end local v7    # "systemId":I
    .end local v8    # "networkId":I
    .end local v10    # "cdmaRoaming":Z
    .end local v12    # "cssIndicator":I
    .end local v15    # "defaultRoamingIndicator":I
    .end local v24    # "radioTechnology":I
    .end local v25    # "reasonForDenial":I
    .end local v28    # "registrationState":I
    .end local v29    # "roamingIndicator":I
    .end local v30    # "states":[Ljava/lang/String;
    .end local v31    # "systemIsInPrl":I
    :sswitch_1
    move-object/from16 v0, p0

    #@328
    iget-object v3, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@32a
    invoke-virtual {v3}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    #@32d
    move-result v3

    #@32e
    if-eqz v3, :cond_1f

    #@330
    .line 1777
    move-object/from16 v0, p2

    #@332
    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@334
    move-object/from16 v30, v0

    #@336
    check-cast v30, [Ljava/lang/String;

    #@338
    .line 1779
    .restart local v30    # "states":[Ljava/lang/String;
    const/16 v32, 0x0

    #@33a
    .line 1780
    .restart local v32    # "type":I
    const/16 v27, 0x4

    #@33c
    .line 1781
    .restart local v27    # "regState":I
    const/4 v3, -0x1

    #@33d
    move-object/from16 v0, p0

    #@33f
    iput v3, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewReasonDataDenied:I

    #@341
    .line 1782
    const/4 v3, 0x1

    #@342
    move-object/from16 v0, p0

    #@344
    iput v3, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewMaxDataCalls:I

    #@346
    .line 1783
    move-object/from16 v0, v30

    #@348
    array-length v3, v0

    #@349
    if-lez v3, :cond_1e

    #@34b
    .line 1785
    const/4 v3, 0x0

    #@34c
    :try_start_2
    aget-object v3, v30, v3

    #@34e
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@351
    move-result v27

    #@352
    .line 1788
    move-object/from16 v0, v30

    #@354
    array-length v3, v0

    #@355
    const/16 v33, 0x4

    #@357
    move/from16 v0, v33

    #@359
    if-lt v3, v0, :cond_1c

    #@35b
    const/4 v3, 0x3

    #@35c
    aget-object v3, v30, v3

    #@35e
    if-eqz v3, :cond_1c

    #@360
    .line 1789
    const/4 v3, 0x3

    #@361
    aget-object v3, v30, v3

    #@363
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@366
    move-result v32

    #@367
    .line 1791
    :cond_1c
    move-object/from16 v0, v30

    #@369
    array-length v3, v0

    #@36a
    const/16 v33, 0x5

    #@36c
    move/from16 v0, v33

    #@36e
    if-lt v3, v0, :cond_1d

    #@370
    .line 1792
    const/4 v3, 0x3

    #@371
    move/from16 v0, v27

    #@373
    if-ne v0, v3, :cond_1d

    #@375
    .line 1793
    const/4 v3, 0x4

    #@376
    aget-object v3, v30, v3

    #@378
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@37b
    move-result v3

    #@37c
    move-object/from16 v0, p0

    #@37e
    iput v3, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewReasonDataDenied:I

    #@380
    .line 1795
    :cond_1d
    move-object/from16 v0, v30

    #@382
    array-length v3, v0

    #@383
    const/16 v33, 0x6

    #@385
    move/from16 v0, v33

    #@387
    if-lt v3, v0, :cond_1e

    #@389
    .line 1796
    const/4 v3, 0x5

    #@38a
    aget-object v3, v30, v3

    #@38c
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@38f
    move-result v3

    #@390
    move-object/from16 v0, p0

    #@392
    iput v3, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewMaxDataCalls:I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    #@394
    .line 1802
    :cond_1e
    :goto_7
    move-object/from16 v0, p0

    #@396
    move/from16 v1, v27

    #@398
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->regCodeToServiceState(I)I

    #@39b
    move-result v14

    #@39c
    .line 1803
    .local v14, "dataRegState":I
    move-object/from16 v0, p0

    #@39e
    iget-object v3, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@3a0
    invoke-virtual {v3, v14}, Landroid/telephony/ServiceState;->setDataRegState(I)V

    #@3a3
    .line 1804
    move-object/from16 v0, p0

    #@3a5
    move/from16 v1, v27

    #@3a7
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->regCodeIsRoaming(I)Z

    #@3aa
    move-result v3

    #@3ab
    move-object/from16 v0, p0

    #@3ad
    iput-boolean v3, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mDataRoaming:Z

    #@3af
    .line 1805
    move-object/from16 v0, p0

    #@3b1
    iget-object v3, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@3b3
    move/from16 v0, v32

    #@3b5
    invoke-virtual {v3, v0}, Landroid/telephony/ServiceState;->setRilDataRadioTechnology(I)V

    #@3b8
    .line 1807
    new-instance v3, Ljava/lang/StringBuilder;

    #@3ba
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@3bd
    const-string/jumbo v33, "handlPollStateResultMessage: GsmSST setDataRegState="

    #@3c0
    move-object/from16 v0, v33

    #@3c2
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c5
    move-result-object v3

    #@3c6
    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3c9
    move-result-object v3

    #@3ca
    .line 1808
    const-string/jumbo v33, " regState="

    #@3cd
    .line 1807
    move-object/from16 v0, v33

    #@3cf
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d2
    move-result-object v3

    #@3d3
    move/from16 v0, v27

    #@3d5
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3d8
    move-result-object v3

    #@3d9
    .line 1809
    const-string/jumbo v33, " dataRadioTechnology="

    #@3dc
    .line 1807
    move-object/from16 v0, v33

    #@3de
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e1
    move-result-object v3

    #@3e2
    move/from16 v0, v32

    #@3e4
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3e7
    move-result-object v3

    #@3e8
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3eb
    move-result-object v3

    #@3ec
    move-object/from16 v0, p0

    #@3ee
    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    #@3f1
    goto/16 :goto_0

    #@3f3
    .line 1798
    .end local v14    # "dataRegState":I
    :catch_2
    move-exception v16

    #@3f4
    .line 1799
    .restart local v16    # "ex":Ljava/lang/NumberFormatException;
    new-instance v3, Ljava/lang/StringBuilder;

    #@3f6
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@3f9
    const-string/jumbo v33, "error parsing GprsRegistrationState: "

    #@3fc
    move-object/from16 v0, v33

    #@3fe
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@401
    move-result-object v3

    #@402
    move-object/from16 v0, v16

    #@404
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@407
    move-result-object v3

    #@408
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@40b
    move-result-object v3

    #@40c
    move-object/from16 v0, p0

    #@40e
    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->loge(Ljava/lang/String;)V

    #@411
    goto :goto_7

    #@412
    .line 1811
    .end local v16    # "ex":Ljava/lang/NumberFormatException;
    .end local v27    # "regState":I
    .end local v30    # "states":[Ljava/lang/String;
    .end local v32    # "type":I
    :cond_1f
    move-object/from16 v0, p0

    #@414
    iget-object v3, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@416
    invoke-virtual {v3}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeCdma()Z

    #@419
    move-result v3

    #@41a
    if-eqz v3, :cond_21

    #@41c
    .line 1812
    move-object/from16 v0, p2

    #@41e
    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@420
    move-object/from16 v30, v0

    #@422
    check-cast v30, [Ljava/lang/String;

    #@424
    .line 1814
    .restart local v30    # "states":[Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    #@426
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@429
    const-string/jumbo v33, "handlePollStateResultMessage: EVENT_POLL_STATE_GPRS states.length="

    #@42c
    move-object/from16 v0, v33

    #@42e
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@431
    move-result-object v3

    #@432
    .line 1815
    move-object/from16 v0, v30

    #@434
    array-length v0, v0

    #@435
    move/from16 v33, v0

    #@437
    .line 1814
    move/from16 v0, v33

    #@439
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@43c
    move-result-object v3

    #@43d
    .line 1815
    const-string/jumbo v33, " states="

    #@440
    .line 1814
    move-object/from16 v0, v33

    #@442
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@445
    move-result-object v3

    #@446
    move-object/from16 v0, v30

    #@448
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@44b
    move-result-object v3

    #@44c
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@44f
    move-result-object v3

    #@450
    move-object/from16 v0, p0

    #@452
    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    #@455
    .line 1818
    const/16 v27, 0x4

    #@457
    .line 1819
    .restart local v27    # "regState":I
    const/4 v13, 0x0

    #@458
    .line 1821
    .local v13, "dataRadioTechnology":I
    move-object/from16 v0, v30

    #@45a
    array-length v3, v0

    #@45b
    if-lez v3, :cond_20

    #@45d
    .line 1823
    const/4 v3, 0x0

    #@45e
    :try_start_3
    aget-object v3, v30, v3

    #@460
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@463
    move-result v27

    #@464
    .line 1826
    move-object/from16 v0, v30

    #@466
    array-length v3, v0

    #@467
    const/16 v33, 0x4

    #@469
    move/from16 v0, v33

    #@46b
    if-lt v3, v0, :cond_20

    #@46d
    const/4 v3, 0x3

    #@46e
    aget-object v3, v30, v3

    #@470
    if-eqz v3, :cond_20

    #@472
    .line 1827
    const/4 v3, 0x3

    #@473
    aget-object v3, v30, v3

    #@475
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3

    #@478
    move-result v13

    #@479
    .line 1835
    :cond_20
    :goto_8
    move-object/from16 v0, p0

    #@47b
    move/from16 v1, v27

    #@47d
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->regCodeToServiceState(I)I

    #@480
    move-result v14

    #@481
    .line 1836
    .restart local v14    # "dataRegState":I
    move-object/from16 v0, p0

    #@483
    iget-object v3, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@485
    invoke-virtual {v3, v14}, Landroid/telephony/ServiceState;->setDataRegState(I)V

    #@488
    .line 1837
    move-object/from16 v0, p0

    #@48a
    iget-object v3, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@48c
    invoke-virtual {v3, v13}, Landroid/telephony/ServiceState;->setRilDataRadioTechnology(I)V

    #@48f
    .line 1838
    move-object/from16 v0, p0

    #@491
    iget-object v3, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@493
    move-object/from16 v0, p0

    #@495
    move/from16 v1, v27

    #@497
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->regCodeIsRoaming(I)Z

    #@49a
    move-result v33

    #@49b
    move/from16 v0, v33

    #@49d
    invoke-virtual {v3, v0}, Landroid/telephony/ServiceState;->setDataRoaming(Z)V

    #@4a0
    .line 1840
    new-instance v3, Ljava/lang/StringBuilder;

    #@4a2
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@4a5
    const-string/jumbo v33, "handlPollStateResultMessage: cdma setDataRegState="

    #@4a8
    move-object/from16 v0, v33

    #@4aa
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4ad
    move-result-object v3

    #@4ae
    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4b1
    move-result-object v3

    #@4b2
    .line 1841
    const-string/jumbo v33, " regState="

    #@4b5
    .line 1840
    move-object/from16 v0, v33

    #@4b7
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4ba
    move-result-object v3

    #@4bb
    move/from16 v0, v27

    #@4bd
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4c0
    move-result-object v3

    #@4c1
    .line 1842
    const-string/jumbo v33, " dataRadioTechnology="

    #@4c4
    .line 1840
    move-object/from16 v0, v33

    #@4c6
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c9
    move-result-object v3

    #@4ca
    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4cd
    move-result-object v3

    #@4ce
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4d1
    move-result-object v3

    #@4d2
    move-object/from16 v0, p0

    #@4d4
    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    #@4d7
    goto/16 :goto_0

    #@4d9
    .line 1829
    .end local v14    # "dataRegState":I
    :catch_3
    move-exception v16

    #@4da
    .line 1830
    .restart local v16    # "ex":Ljava/lang/NumberFormatException;
    new-instance v3, Ljava/lang/StringBuilder;

    #@4dc
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@4df
    const-string/jumbo v33, "handlePollStateResultMessage: error parsing GprsRegistrationState: "

    #@4e2
    move-object/from16 v0, v33

    #@4e4
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e7
    move-result-object v3

    #@4e8
    move-object/from16 v0, v16

    #@4ea
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4ed
    move-result-object v3

    #@4ee
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4f1
    move-result-object v3

    #@4f2
    move-object/from16 v0, p0

    #@4f4
    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->loge(Ljava/lang/String;)V

    #@4f7
    goto :goto_8

    #@4f8
    .line 1845
    .end local v13    # "dataRadioTechnology":I
    .end local v16    # "ex":Ljava/lang/NumberFormatException;
    .end local v27    # "regState":I
    .end local v30    # "states":[Ljava/lang/String;
    :cond_21
    move-object/from16 v0, p2

    #@4fa
    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@4fc
    move-object/from16 v30, v0

    #@4fe
    check-cast v30, [Ljava/lang/String;

    #@500
    .line 1847
    .restart local v30    # "states":[Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    #@502
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@505
    const-string/jumbo v33, "handlePollStateResultMessage: EVENT_POLL_STATE_GPRS states.length="

    #@508
    move-object/from16 v0, v33

    #@50a
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50d
    move-result-object v3

    #@50e
    .line 1848
    move-object/from16 v0, v30

    #@510
    array-length v0, v0

    #@511
    move/from16 v33, v0

    #@513
    .line 1847
    move/from16 v0, v33

    #@515
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@518
    move-result-object v3

    #@519
    .line 1848
    const-string/jumbo v33, " states="

    #@51c
    .line 1847
    move-object/from16 v0, v33

    #@51e
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@521
    move-result-object v3

    #@522
    move-object/from16 v0, v30

    #@524
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@527
    move-result-object v3

    #@528
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@52b
    move-result-object v3

    #@52c
    move-object/from16 v0, p0

    #@52e
    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    #@531
    .line 1851
    const/16 v20, 0x0

    #@533
    .line 1852
    .local v20, "newDataRAT":I
    const/16 v27, -0x1

    #@535
    .line 1853
    .restart local v27    # "regState":I
    move-object/from16 v0, v30

    #@537
    array-length v3, v0

    #@538
    if-lez v3, :cond_22

    #@53a
    .line 1855
    const/4 v3, 0x0

    #@53b
    :try_start_4
    aget-object v3, v30, v3

    #@53d
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@540
    move-result v27

    #@541
    .line 1858
    move-object/from16 v0, v30

    #@543
    array-length v3, v0

    #@544
    const/16 v33, 0x4

    #@546
    move/from16 v0, v33

    #@548
    if-lt v3, v0, :cond_22

    #@54a
    const/4 v3, 0x3

    #@54b
    aget-object v3, v30, v3

    #@54d
    if-eqz v3, :cond_22

    #@54f
    .line 1859
    const/4 v3, 0x3

    #@550
    aget-object v3, v30, v3

    #@552
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_4

    #@555
    move-result v20

    #@556
    .line 1873
    :cond_22
    :goto_9
    move-object/from16 v0, p0

    #@558
    iget-object v3, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@55a
    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    #@55d
    move-result v21

    #@55e
    .line 1874
    .local v21, "oldDataRAT":I
    if-nez v21, :cond_25

    #@560
    .line 1875
    if-eqz v20, :cond_25

    #@562
    .line 1878
    :cond_23
    :goto_a
    move-object/from16 v0, p0

    #@564
    iget-object v3, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@566
    const/16 v33, 0x3

    #@568
    move-object/from16 v0, p0

    #@56a
    move/from16 v1, v33

    #@56c
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    #@56f
    move-result-object v33

    #@570
    move-object/from16 v0, v33

    #@572
    invoke-interface {v3, v0}, Lcom/android/internal/telephony/CommandsInterface;->getSignalStrength(Landroid/os/Message;)V

    #@575
    .line 1881
    :cond_24
    move-object/from16 v0, p0

    #@577
    iget-object v3, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@579
    move/from16 v0, v20

    #@57b
    invoke-virtual {v3, v0}, Landroid/telephony/ServiceState;->setRilDataRadioTechnology(I)V

    #@57e
    .line 1882
    move-object/from16 v0, p0

    #@580
    move/from16 v1, v27

    #@582
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->regCodeToServiceState(I)I

    #@585
    move-result v14

    #@586
    .line 1883
    .restart local v14    # "dataRegState":I
    move-object/from16 v0, p0

    #@588
    iget-object v3, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@58a
    invoke-virtual {v3, v14}, Landroid/telephony/ServiceState;->setDataRegState(I)V

    #@58d
    .line 1885
    move-object/from16 v0, p0

    #@58f
    iget-object v3, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@591
    move-object/from16 v0, p0

    #@593
    move/from16 v1, v27

    #@595
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->regCodeIsRoaming(I)Z

    #@598
    move-result v33

    #@599
    move/from16 v0, v33

    #@59b
    invoke-virtual {v3, v0}, Landroid/telephony/ServiceState;->setDataRoaming(Z)V

    #@59e
    .line 1887
    new-instance v3, Ljava/lang/StringBuilder;

    #@5a0
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@5a3
    const-string/jumbo v33, "handlPollStateResultMessage: CdmaLteSST setDataRegState="

    #@5a6
    move-object/from16 v0, v33

    #@5a8
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5ab
    move-result-object v3

    #@5ac
    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5af
    move-result-object v3

    #@5b0
    .line 1888
    const-string/jumbo v33, " regState="

    #@5b3
    .line 1887
    move-object/from16 v0, v33

    #@5b5
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b8
    move-result-object v3

    #@5b9
    move/from16 v0, v27

    #@5bb
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5be
    move-result-object v3

    #@5bf
    .line 1889
    const-string/jumbo v33, " dataRadioTechnology="

    #@5c2
    .line 1887
    move-object/from16 v0, v33

    #@5c4
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c7
    move-result-object v3

    #@5c8
    move/from16 v0, v20

    #@5ca
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5cd
    move-result-object v3

    #@5ce
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5d1
    move-result-object v3

    #@5d2
    move-object/from16 v0, p0

    #@5d4
    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    #@5d7
    goto/16 :goto_0

    #@5d9
    .line 1861
    .end local v14    # "dataRegState":I
    .end local v21    # "oldDataRAT":I
    :catch_4
    move-exception v16

    #@5da
    .line 1862
    .restart local v16    # "ex":Ljava/lang/NumberFormatException;
    new-instance v3, Ljava/lang/StringBuilder;

    #@5dc
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@5df
    const-string/jumbo v33, "handlePollStateResultMessage: error parsing GprsRegistrationState: "

    #@5e2
    move-object/from16 v0, v33

    #@5e4
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5e7
    move-result-object v3

    #@5e8
    move-object/from16 v0, v16

    #@5ea
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@5ed
    move-result-object v3

    #@5ee
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5f1
    move-result-object v3

    #@5f2
    move-object/from16 v0, p0

    #@5f4
    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->loge(Ljava/lang/String;)V

    #@5f7
    goto/16 :goto_9

    #@5f9
    .line 1876
    .end local v16    # "ex":Ljava/lang/NumberFormatException;
    .restart local v21    # "oldDataRAT":I
    :cond_25
    invoke-static/range {v21 .. v21}, Landroid/telephony/ServiceState;->isCdma(I)Z

    #@5fc
    move-result v3

    #@5fd
    if-eqz v3, :cond_26

    #@5ff
    invoke-static/range {v20 .. v20}, Landroid/telephony/ServiceState;->isLte(I)Z

    #@602
    move-result v3

    #@603
    .line 1874
    if-nez v3, :cond_23

    #@605
    .line 1877
    :cond_26
    invoke-static/range {v21 .. v21}, Landroid/telephony/ServiceState;->isLte(I)Z

    #@608
    move-result v3

    #@609
    if-eqz v3, :cond_24

    #@60b
    invoke-static/range {v20 .. v20}, Landroid/telephony/ServiceState;->isCdma(I)Z

    #@60e
    move-result v3

    #@60f
    .line 1874
    if-eqz v3, :cond_24

    #@611
    goto/16 :goto_a

    #@613
    .line 1896
    .end local v20    # "newDataRAT":I
    .end local v21    # "oldDataRAT":I
    .end local v27    # "regState":I
    .end local v30    # "states":[Ljava/lang/String;
    :sswitch_2
    move-object/from16 v0, p0

    #@615
    iget-object v3, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@617
    invoke-virtual {v3}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    #@61a
    move-result v3

    #@61b
    if-eqz v3, :cond_29

    #@61d
    .line 1897
    move-object/from16 v0, p2

    #@61f
    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@621
    move-object/from16 v22, v0

    #@623
    check-cast v22, [Ljava/lang/String;

    #@625
    .line 1899
    .local v22, "opNames":[Ljava/lang/String;
    if-eqz v22, :cond_0

    #@627
    move-object/from16 v0, v22

    #@629
    array-length v3, v0

    #@62a
    const/16 v33, 0x3

    #@62c
    move/from16 v0, v33

    #@62e
    if-lt v3, v0, :cond_0

    #@630
    .line 1901
    move-object/from16 v0, p0

    #@632
    iget-object v3, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    #@634
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getPhoneId()I

    #@637
    move-result v33

    #@638
    move/from16 v0, v33

    #@63a
    invoke-virtual {v3, v0}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    #@63d
    move-result-object v3

    #@63e
    if-eqz v3, :cond_27

    #@640
    .line 1902
    move-object/from16 v0, p0

    #@642
    iget-object v3, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    #@644
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getPhoneId()I

    #@647
    move-result v33

    #@648
    move/from16 v0, v33

    #@64a
    invoke-virtual {v3, v0}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    #@64d
    move-result-object v3

    #@64e
    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/UiccCard;->getOperatorBrandOverride()Ljava/lang/String;

    #@651
    move-result-object v9

    #@652
    .line 1903
    .local v9, "brandOverride":Ljava/lang/String;
    :goto_b
    if-eqz v9, :cond_28

    #@654
    .line 1904
    new-instance v3, Ljava/lang/StringBuilder;

    #@656
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@659
    const-string/jumbo v33, "EVENT_POLL_STATE_OPERATOR: use brandOverride="

    #@65c
    move-object/from16 v0, v33

    #@65e
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@661
    move-result-object v3

    #@662
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@665
    move-result-object v3

    #@666
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@669
    move-result-object v3

    #@66a
    move-object/from16 v0, p0

    #@66c
    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    #@66f
    .line 1905
    move-object/from16 v0, p0

    #@671
    iget-object v3, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@673
    const/16 v33, 0x2

    #@675
    aget-object v33, v22, v33

    #@677
    move-object/from16 v0, v33

    #@679
    invoke-virtual {v3, v9, v9, v0}, Landroid/telephony/ServiceState;->setOperatorName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@67c
    goto/16 :goto_0

    #@67e
    .line 1902
    .end local v9    # "brandOverride":Ljava/lang/String;
    :cond_27
    const/4 v9, 0x0

    #@67f
    goto :goto_b

    #@680
    .line 1907
    .restart local v9    # "brandOverride":Ljava/lang/String;
    :cond_28
    move-object/from16 v0, p0

    #@682
    iget-object v3, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@684
    const/16 v33, 0x0

    #@686
    aget-object v33, v22, v33

    #@688
    const/16 v34, 0x1

    #@68a
    aget-object v34, v22, v34

    #@68c
    const/16 v35, 0x2

    #@68e
    aget-object v35, v22, v35

    #@690
    move-object/from16 v0, v33

    #@692
    move-object/from16 v1, v34

    #@694
    move-object/from16 v2, v35

    #@696
    invoke-virtual {v3, v0, v1, v2}, Landroid/telephony/ServiceState;->setOperatorName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@699
    goto/16 :goto_0

    #@69b
    .line 1911
    .end local v9    # "brandOverride":Ljava/lang/String;
    .end local v22    # "opNames":[Ljava/lang/String;
    :cond_29
    move-object/from16 v0, p2

    #@69d
    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@69f
    move-object/from16 v22, v0

    #@6a1
    check-cast v22, [Ljava/lang/String;

    #@6a3
    .line 1913
    .restart local v22    # "opNames":[Ljava/lang/String;
    if-eqz v22, :cond_30

    #@6a5
    move-object/from16 v0, v22

    #@6a7
    array-length v3, v0

    #@6a8
    const/16 v33, 0x3

    #@6aa
    move/from16 v0, v33

    #@6ac
    if-lt v3, v0, :cond_30

    #@6ae
    .line 1916
    const/4 v3, 0x2

    #@6af
    aget-object v3, v22, v3

    #@6b1
    if-eqz v3, :cond_2a

    #@6b3
    const/4 v3, 0x2

    #@6b4
    aget-object v3, v22, v3

    #@6b6
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    #@6b9
    move-result v3

    #@6ba
    const/16 v33, 0x5

    #@6bc
    move/from16 v0, v33

    #@6be
    if-ge v3, v0, :cond_2c

    #@6c0
    .line 1919
    :cond_2a
    :goto_c
    const-string/jumbo v3, "ro.cdma.home.operator.numeric"

    #@6c3
    const-string/jumbo v33, "00000"

    #@6c6
    .line 1918
    move-object/from16 v0, v33

    #@6c8
    invoke-static {v3, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@6cb
    move-result-object v3

    #@6cc
    const/16 v33, 0x2

    #@6ce
    aput-object v3, v22, v33

    #@6d0
    .line 1921
    new-instance v3, Ljava/lang/StringBuilder;

    #@6d2
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@6d5
    const-string/jumbo v33, "RIL_REQUEST_OPERATOR.response[2], the numeric,  is bad. Using SystemProperties \'ro.cdma.home.operator.numeric\'= "

    #@6d8
    move-object/from16 v0, v33

    #@6da
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6dd
    move-result-object v3

    #@6de
    .line 1924
    const/16 v33, 0x2

    #@6e0
    aget-object v33, v22, v33

    #@6e2
    .line 1921
    move-object/from16 v0, v33

    #@6e4
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6e7
    move-result-object v3

    #@6e8
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6eb
    move-result-object v3

    #@6ec
    move-object/from16 v0, p0

    #@6ee
    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    #@6f1
    .line 1928
    :cond_2b
    move-object/from16 v0, p0

    #@6f3
    iget-boolean v3, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mIsSubscriptionFromRuim:Z

    #@6f5
    if-nez v3, :cond_2d

    #@6f7
    .line 1930
    move-object/from16 v0, p0

    #@6f9
    iget-object v3, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@6fb
    const/16 v33, 0x0

    #@6fd
    aget-object v33, v22, v33

    #@6ff
    const/16 v34, 0x1

    #@701
    aget-object v34, v22, v34

    #@703
    const/16 v35, 0x2

    #@705
    aget-object v35, v22, v35

    #@707
    move-object/from16 v0, v33

    #@709
    move-object/from16 v1, v34

    #@70b
    move-object/from16 v2, v35

    #@70d
    invoke-virtual {v3, v0, v1, v2}, Landroid/telephony/ServiceState;->setOperatorName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@710
    goto/16 :goto_0

    #@712
    .line 1917
    :cond_2c
    const-string/jumbo v3, "00000"

    #@715
    const/16 v33, 0x2

    #@717
    aget-object v33, v22, v33

    #@719
    move-object/from16 v0, v33

    #@71b
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@71e
    move-result v3

    #@71f
    .line 1916
    if-eqz v3, :cond_2b

    #@721
    goto :goto_c

    #@722
    .line 1932
    :cond_2d
    move-object/from16 v0, p0

    #@724
    iget-object v3, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    #@726
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getPhoneId()I

    #@729
    move-result v33

    #@72a
    move/from16 v0, v33

    #@72c
    invoke-virtual {v3, v0}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    #@72f
    move-result-object v3

    #@730
    if-eqz v3, :cond_2e

    #@732
    .line 1933
    move-object/from16 v0, p0

    #@734
    iget-object v3, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    #@736
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getPhoneId()I

    #@739
    move-result v33

    #@73a
    move/from16 v0, v33

    #@73c
    invoke-virtual {v3, v0}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    #@73f
    move-result-object v3

    #@740
    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/UiccCard;->getOperatorBrandOverride()Ljava/lang/String;

    #@743
    move-result-object v9

    #@744
    .line 1934
    .restart local v9    # "brandOverride":Ljava/lang/String;
    :goto_d
    if-eqz v9, :cond_2f

    #@746
    .line 1935
    move-object/from16 v0, p0

    #@748
    iget-object v3, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@74a
    const/16 v33, 0x2

    #@74c
    aget-object v33, v22, v33

    #@74e
    move-object/from16 v0, v33

    #@750
    invoke-virtual {v3, v9, v9, v0}, Landroid/telephony/ServiceState;->setOperatorName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@753
    goto/16 :goto_0

    #@755
    .line 1933
    .end local v9    # "brandOverride":Ljava/lang/String;
    :cond_2e
    const/4 v9, 0x0

    #@756
    goto :goto_d

    #@757
    .line 1937
    .restart local v9    # "brandOverride":Ljava/lang/String;
    :cond_2f
    move-object/from16 v0, p0

    #@759
    iget-object v3, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@75b
    const/16 v33, 0x0

    #@75d
    aget-object v33, v22, v33

    #@75f
    const/16 v34, 0x1

    #@761
    aget-object v34, v22, v34

    #@763
    const/16 v35, 0x2

    #@765
    aget-object v35, v22, v35

    #@767
    move-object/from16 v0, v33

    #@769
    move-object/from16 v1, v34

    #@76b
    move-object/from16 v2, v35

    #@76d
    invoke-virtual {v3, v0, v1, v2}, Landroid/telephony/ServiceState;->setOperatorName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@770
    goto/16 :goto_0

    #@772
    .line 1941
    .end local v9    # "brandOverride":Ljava/lang/String;
    :cond_30
    const-string/jumbo v3, "EVENT_POLL_STATE_OPERATOR_CDMA: error parsing opNames"

    #@775
    move-object/from16 v0, p0

    #@777
    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    #@77a
    goto/16 :goto_0

    #@77c
    .line 1948
    .end local v22    # "opNames":[Ljava/lang/String;
    :sswitch_3
    move-object/from16 v0, p2

    #@77e
    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@780
    move-object/from16 v17, v0

    #@782
    check-cast v17, [I

    #@784
    .line 1949
    .local v17, "ints":[I
    move-object/from16 v0, p0

    #@786
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@788
    move-object/from16 v33, v0

    #@78a
    const/4 v3, 0x0

    #@78b
    aget v3, v17, v3

    #@78d
    const/16 v34, 0x1

    #@78f
    move/from16 v0, v34

    #@791
    if-ne v3, v0, :cond_31

    #@793
    const/4 v3, 0x1

    #@794
    :goto_e
    move-object/from16 v0, v33

    #@796
    invoke-virtual {v0, v3}, Landroid/telephony/ServiceState;->setIsManualSelection(Z)V

    #@799
    .line 1950
    const/4 v3, 0x0

    #@79a
    aget v3, v17, v3

    #@79c
    const/16 v33, 0x1

    #@79e
    move/from16 v0, v33

    #@7a0
    if-ne v3, v0, :cond_0

    #@7a2
    move-object/from16 v0, p0

    #@7a4
    iget-object v3, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@7a6
    invoke-virtual {v3}, Lcom/android/internal/telephony/GsmCdmaPhone;->isManualNetSelAllowed()Z

    #@7a9
    move-result v3

    #@7aa
    if-nez v3, :cond_0

    #@7ac
    .line 1956
    move-object/from16 v0, p0

    #@7ae
    iget-object v3, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@7b0
    const/16 v33, 0x0

    #@7b2
    move-object/from16 v0, v33

    #@7b4
    invoke-virtual {v3, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->setNetworkSelectionModeAutomatic(Landroid/os/Message;)V

    #@7b7
    .line 1957
    const-string/jumbo v3, " Forcing Automatic Network Selection, manual selection is not allowed"

    #@7ba
    move-object/from16 v0, p0

    #@7bc
    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    #@7bf
    goto/16 :goto_0

    #@7c1
    .line 1949
    :cond_31
    const/4 v3, 0x0

    #@7c2
    goto :goto_e

    #@7c3
    .line 1613
    nop

    #@7c4
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x5 -> :sswitch_1
        0x6 -> :sswitch_2
        0xe -> :sswitch_3
    .end sparse-switch
.end method

.method protected hangupAndPowerOff()V
    .locals 3

    #@0
    .prologue
    .line 4458
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@a
    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isInCall()Z

    #@d
    move-result v0

    #@e
    if-eqz v0, :cond_1

    #@10
    .line 4459
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@12
    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCT:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    #@14
    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/GsmCdmaCall;

    #@16
    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaCall;->hangupIfAlive()V

    #@19
    .line 4460
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@1b
    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCT:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    #@1d
    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    #@1f
    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaCall;->hangupIfAlive()V

    #@22
    .line 4461
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@24
    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCT:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    #@26
    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    #@28
    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaCall;->hangupIfAlive()V

    #@2b
    .line 4464
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@2d
    const/4 v1, 0x0

    #@2e
    const/4 v2, 0x0

    #@2f
    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setRadioPower(ZLandroid/os/Message;)V

    #@32
    .line 4456
    return-void
.end method

.method protected inSameCountry(Ljava/lang/String;)Z
    .locals 10
    .param p1, "operatorNumeric"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v9, 0x5

    #@1
    const/4 v8, 0x3

    #@2
    const/4 v7, 0x0

    #@3
    .line 4769
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@6
    move-result v6

    #@7
    if-nez v6, :cond_0

    #@9
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@c
    move-result v6

    #@d
    if-ge v6, v9, :cond_1

    #@f
    .line 4771
    :cond_0
    return v7

    #@10
    .line 4773
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getHomeOperatorNumeric()Ljava/lang/String;

    #@13
    move-result-object v2

    #@14
    .line 4774
    .local v2, "homeNumeric":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@17
    move-result v6

    #@18
    if-nez v6, :cond_2

    #@1a
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@1d
    move-result v6

    #@1e
    if-ge v6, v9, :cond_3

    #@20
    .line 4776
    :cond_2
    return v7

    #@21
    .line 4778
    :cond_3
    const/4 v3, 0x1

    #@22
    .line 4779
    .local v3, "inSameCountry":Z
    invoke-virtual {p1, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@25
    move-result-object v5

    #@26
    .line 4780
    .local v5, "networkMCC":Ljava/lang/String;
    invoke-virtual {v2, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@29
    move-result-object v1

    #@2a
    .line 4781
    .local v1, "homeMCC":Ljava/lang/String;
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@2d
    move-result v6

    #@2e
    invoke-static {v6}, Lcom/android/internal/telephony/MccTable;->countryCodeForMcc(I)Ljava/lang/String;

    #@31
    move-result-object v4

    #@32
    .line 4782
    .local v4, "networkCountry":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@35
    move-result v6

    #@36
    invoke-static {v6}, Lcom/android/internal/telephony/MccTable;->countryCodeForMcc(I)Ljava/lang/String;

    #@39
    move-result-object v0

    #@3a
    .line 4783
    .local v0, "homeCountry":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    #@3d
    move-result v6

    #@3e
    if-nez v6, :cond_4

    #@40
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    #@43
    move-result v6

    #@44
    if-eqz v6, :cond_5

    #@46
    .line 4785
    :cond_4
    return v7

    #@47
    .line 4787
    :cond_5
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4a
    move-result v3

    #@4b
    .line 4788
    .local v3, "inSameCountry":Z
    if-eqz v3, :cond_6

    #@4d
    .line 4789
    return v3

    #@4e
    .line 4792
    :cond_6
    const-string/jumbo v6, "us"

    #@51
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@54
    move-result v6

    #@55
    if-eqz v6, :cond_8

    #@57
    const-string/jumbo v6, "vi"

    #@5a
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@5d
    move-result v6

    #@5e
    if-eqz v6, :cond_8

    #@60
    .line 4793
    const/4 v3, 0x1

    #@61
    .line 4797
    .end local v3    # "inSameCountry":Z
    :cond_7
    :goto_0
    return v3

    #@62
    .line 4794
    .restart local v3    # "inSameCountry":Z
    :cond_8
    const-string/jumbo v6, "vi"

    #@65
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@68
    move-result v6

    #@69
    if-eqz v6, :cond_7

    #@6b
    const-string/jumbo v6, "us"

    #@6e
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@71
    move-result v6

    #@72
    if-eqz v6, :cond_7

    #@74
    .line 4795
    const/4 v3, 0x1

    #@75
    .local v3, "inSameCountry":Z
    goto :goto_0
.end method

.method protected isCallerOnDifferentThread()Z
    .locals 3

    #@0
    .prologue
    .line 4751
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@3
    move-result-object v1

    #@4
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getLooper()Landroid/os/Looper;

    #@7
    move-result-object v2

    #@8
    invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    #@b
    move-result-object v2

    #@c
    if-eq v1, v2, :cond_0

    #@e
    const/4 v0, 0x1

    #@f
    .line 4753
    .local v0, "value":Z
    :goto_0
    return v0

    #@10
    .line 4751
    .end local v0    # "value":Z
    :cond_0
    const/4 v0, 0x0

    #@11
    goto :goto_0
.end method

.method public isConcurrentVoiceAndDataAllowed()Z
    .locals 4

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 2435
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@4
    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    #@7
    move-result v2

    #@8
    if-eqz v2, :cond_1

    #@a
    .line 2436
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@c
    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    #@f
    move-result v2

    #@10
    const/4 v3, 0x3

    #@11
    if-lt v2, v3, :cond_0

    #@13
    :goto_0
    return v0

    #@14
    :cond_0
    move v0, v1

    #@15
    goto :goto_0

    #@16
    .line 2437
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@18
    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeCdma()Z

    #@1b
    move-result v2

    #@1c
    if-eqz v2, :cond_2

    #@1e
    .line 2441
    return v1

    #@1f
    .line 2444
    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@21
    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getCssIndicator()I

    #@24
    move-result v2

    #@25
    if-ne v2, v0, :cond_3

    #@27
    :goto_1
    return v0

    #@28
    :cond_3
    move v0, v1

    #@29
    goto :goto_1
.end method

.method public isDeviceShuttingDown()Z
    .locals 1

    #@0
    .prologue
    .line 4986
    iget-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDeviceShuttingDown:Z

    #@2
    return v0
.end method

.method public isImsRegistered()Z
    .locals 1

    #@0
    .prologue
    .line 4733
    iget-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mImsRegistered:Z

    #@2
    return v0
.end method

.method protected isInvalidOperatorNumeric(Ljava/lang/String;)Z
    .locals 2
    .param p1, "operatorNumeric"    # Ljava/lang/String;

    #@0
    .prologue
    .line 3366
    if-eqz p1, :cond_0

    #@2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@5
    move-result v0

    #@6
    const/4 v1, 0x5

    #@7
    if-ge v0, v1, :cond_1

    #@9
    :cond_0
    const/4 v0, 0x1

    #@a
    :goto_0
    return v0

    #@b
    .line 3367
    :cond_1
    const-string/jumbo v0, "000"

    #@e
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@11
    move-result v0

    #@12
    goto :goto_0
.end method

.method public isMinInfoReady()Z
    .locals 1

    #@0
    .prologue
    .line 1404
    iget-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIsMinInfoReady:Z

    #@2
    return v0
.end method

.method protected final isNonRoamingInCdmaNetwork(Landroid/os/BaseBundle;Ljava/lang/String;)Z
    .locals 1
    .param p1, "b"    # Landroid/os/BaseBundle;
    .param p2, "network"    # Ljava/lang/String;

    #@0
    .prologue
    .line 4981
    const-string/jumbo v0, "cdma_nonroaming_networks_string_array"

    #@3
    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->isInNetwork(Landroid/os/BaseBundle;Ljava/lang/String;Ljava/lang/String;)Z

    #@6
    move-result v0

    #@7
    return v0
.end method

.method protected final isNonRoamingInGsmNetwork(Landroid/os/BaseBundle;Ljava/lang/String;)Z
    .locals 1
    .param p1, "b"    # Landroid/os/BaseBundle;
    .param p2, "network"    # Ljava/lang/String;

    #@0
    .prologue
    .line 4973
    const-string/jumbo v0, "gsm_nonroaming_networks_string_array"

    #@3
    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->isInNetwork(Landroid/os/BaseBundle;Ljava/lang/String;Ljava/lang/String;)Z

    #@6
    move-result v0

    #@7
    return v0
.end method

.method public isRadioOn()Z
    .locals 2

    #@0
    .prologue
    .line 2472
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@2
    invoke-interface {v0}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    #@5
    move-result-object v0

    #@6
    sget-object v1, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_ON:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    #@8
    if-ne v0, v1, :cond_0

    #@a
    const/4 v0, 0x1

    #@b
    :goto_0
    return v0

    #@c
    :cond_0
    const/4 v0, 0x0

    #@d
    goto :goto_0
.end method

.method protected final isRoamingInCdmaNetwork(Landroid/os/BaseBundle;Ljava/lang/String;)Z
    .locals 1
    .param p1, "b"    # Landroid/os/BaseBundle;
    .param p2, "network"    # Ljava/lang/String;

    #@0
    .prologue
    .line 4977
    const-string/jumbo v0, "cdma_roaming_networks_string_array"

    #@3
    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->isInNetwork(Landroid/os/BaseBundle;Ljava/lang/String;Ljava/lang/String;)Z

    #@6
    move-result v0

    #@7
    return v0
.end method

.method protected final isRoamingInGsmNetwork(Landroid/os/BaseBundle;Ljava/lang/String;)Z
    .locals 1
    .param p1, "b"    # Landroid/os/BaseBundle;
    .param p2, "network"    # Ljava/lang/String;

    #@0
    .prologue
    .line 4969
    const-string/jumbo v0, "gsm_roaming_networks_string_array"

    #@3
    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->isInNetwork(Landroid/os/BaseBundle;Ljava/lang/String;Ljava/lang/String;)Z

    #@6
    move-result v0

    #@7
    return v0
.end method

.method protected isSidsAllZeros()Z
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1345
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mHomeSystemId:[I

    #@3
    if-eqz v1, :cond_1

    #@5
    .line 1346
    const/4 v0, 0x0

    #@6
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mHomeSystemId:[I

    #@8
    array-length v1, v1

    #@9
    if-ge v0, v1, :cond_1

    #@b
    .line 1347
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mHomeSystemId:[I

    #@d
    aget v1, v1, v0

    #@f
    if-eqz v1, :cond_0

    #@11
    .line 1348
    return v2

    #@12
    .line 1346
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@14
    goto :goto_0

    #@15
    .line 1352
    .end local v0    # "i":I
    :cond_1
    const/4 v1, 0x1

    #@16
    return v1
.end method

.method protected log(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2415
    const-string/jumbo v0, "SST"

    #@3
    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@6
    .line 2414
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2419
    const-string/jumbo v0, "SST"

    #@3
    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@6
    .line 2418
    return-void
.end method

.method protected notifyDataRegStateRilRadioTechnologyChanged()V
    .locals 6

    #@0
    .prologue
    .line 677
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@2
    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    #@5
    move-result v1

    #@6
    .line 678
    .local v1, "rat":I
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@8
    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getDataRegState()I

    #@b
    move-result v0

    #@c
    .line 679
    .local v0, "drs":I
    new-instance v2, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    const-string/jumbo v3, "notifyDataRegStateRilRadioTechnologyChanged: drs="

    #@14
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v2

    #@18
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v2

    #@1c
    const-string/jumbo v3, " rat="

    #@1f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v2

    #@23
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@26
    move-result-object v2

    #@27
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a
    move-result-object v2

    #@2b
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    #@2e
    .line 681
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@30
    const-string/jumbo v3, "gsm.network.type"

    #@33
    .line 682
    invoke-static {v1}, Landroid/telephony/ServiceState;->rilRadioTechnologyToString(I)Ljava/lang/String;

    #@36
    move-result-object v4

    #@37
    .line 681
    invoke-virtual {v2, v3, v4}, Lcom/android/internal/telephony/GsmCdmaPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    #@3a
    .line 683
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDataRegStateOrRatChangedRegistrants:Landroid/os/RegistrantList;

    #@3c
    new-instance v3, Landroid/util/Pair;

    #@3e
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@41
    move-result-object v4

    #@42
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@45
    move-result-object v5

    #@46
    invoke-direct {v3, v4, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    #@49
    invoke-virtual {v2, v3}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    #@4c
    .line 676
    return-void
.end method

.method protected notifySignalStrength()Z
    .locals 4

    #@0
    .prologue
    .line 658
    const/4 v1, 0x0

    #@1
    .line 659
    .local v1, "notified":Z
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    #@3
    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mLastSignalStrength:Landroid/telephony/SignalStrength;

    #@5
    invoke-virtual {v2, v3}, Landroid/telephony/SignalStrength;->equals(Ljava/lang/Object;)Z

    #@8
    move-result v2

    #@9
    if-nez v2, :cond_0

    #@b
    .line 661
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@d
    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifySignalStrength()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    #@10
    .line 662
    const/4 v1, 0x1

    #@11
    .line 668
    :cond_0
    :goto_0
    return v1

    #@12
    .line 663
    :catch_0
    move-exception v0

    #@13
    .line 664
    .local v0, "ex":Ljava/lang/NullPointerException;
    new-instance v2, Ljava/lang/StringBuilder;

    #@15
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@18
    const-string/jumbo v3, "updateSignalStrength() Phone already destroyed: "

    #@1b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v2

    #@1f
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v2

    #@23
    .line 665
    const-string/jumbo v3, "SignalStrength not notified"

    #@26
    .line 664
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v2

    #@2a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2d
    move-result-object v2

    #@2e
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->loge(Ljava/lang/String;)V

    #@31
    goto :goto_0
.end method

.method public onImsCapabilityChanged()V
    .locals 1

    #@0
    .prologue
    .line 2468
    const/16 v0, 0x30

    #@2
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->sendMessage(Landroid/os/Message;)Z

    #@9
    .line 2467
    return-void
.end method

.method protected onSignalStrengthResult(Landroid/os/AsyncResult;)Z
    .locals 4
    .param p1, "ar"    # Landroid/os/AsyncResult;

    #@0
    .prologue
    .line 4428
    const/4 v0, 0x0

    #@1
    .line 4430
    .local v0, "isGsm":Z
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@3
    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    #@6
    move-result v2

    #@7
    if-nez v2, :cond_0

    #@9
    .line 4431
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@b
    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeCdmaLte()Z

    #@e
    move-result v2

    #@f
    if-eqz v2, :cond_1

    #@11
    .line 4432
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@13
    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    #@16
    move-result v2

    #@17
    invoke-static {v2}, Landroid/telephony/ServiceState;->isLte(I)Z

    #@1a
    move-result v2

    #@1b
    .line 4430
    if-eqz v2, :cond_1

    #@1d
    .line 4433
    :cond_0
    const/4 v0, 0x1

    #@1e
    .line 4439
    :cond_1
    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@20
    if-nez v2, :cond_2

    #@22
    iget-object v2, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@24
    if-eqz v2, :cond_2

    #@26
    .line 4440
    iget-object v2, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@28
    check-cast v2, Landroid/telephony/SignalStrength;

    #@2a
    iput-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    #@2c
    .line 4441
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    #@2e
    invoke-virtual {v2}, Landroid/telephony/SignalStrength;->validateInput()V

    #@31
    .line 4442
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    #@33
    invoke-virtual {v2, v0}, Landroid/telephony/SignalStrength;->setGsm(Z)V

    #@36
    .line 4448
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->notifySignalStrength()Z

    #@39
    move-result v1

    #@3a
    .line 4450
    .local v1, "ssChanged":Z
    return v1

    #@3b
    .line 4444
    .end local v1    # "ssChanged":Z
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    #@3d
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@40
    const-string/jumbo v3, "onSignalStrengthResult() Exception from RIL : "

    #@43
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v2

    #@47
    iget-object v3, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@49
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v2

    #@4d
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@50
    move-result-object v2

    #@51
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    #@54
    .line 4445
    new-instance v2, Landroid/telephony/SignalStrength;

    #@56
    invoke-direct {v2, v0}, Landroid/telephony/SignalStrength;-><init>(Z)V

    #@59
    iput-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    #@5b
    goto :goto_0
.end method

.method protected onUpdateIccAvailability()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 2363
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    #@3
    if-nez v1, :cond_0

    #@5
    .line 2364
    return-void

    #@6
    .line 2367
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getUiccCardApplication()Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@9
    move-result-object v0

    #@a
    .line 2369
    .local v0, "newUiccApplication":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@c
    if-eq v1, v0, :cond_3

    #@e
    .line 2370
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@10
    if-eqz v1, :cond_2

    #@12
    .line 2371
    const-string/jumbo v1, "Removing stale icc objects."

    #@15
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    #@18
    .line 2372
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@1a
    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->unregisterForReady(Landroid/os/Handler;)V

    #@1d
    .line 2373
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    #@1f
    if-eqz v1, :cond_1

    #@21
    .line 2374
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    #@23
    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/uicc/IccRecords;->unregisterForRecordsLoaded(Landroid/os/Handler;)V

    #@26
    .line 2376
    :cond_1
    iput-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    #@28
    .line 2377
    iput-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@2a
    .line 2379
    :cond_2
    if-eqz v0, :cond_3

    #@2c
    .line 2380
    const-string/jumbo v1, "New card found"

    #@2f
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    #@32
    .line 2381
    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@34
    .line 2382
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@36
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    #@39
    move-result-object v1

    #@3a
    iput-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    #@3c
    .line 2383
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@3e
    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    #@41
    move-result v1

    #@42
    if-eqz v1, :cond_4

    #@44
    .line 2384
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@46
    const/16 v2, 0x11

    #@48
    invoke-virtual {v1, p0, v2, v3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->registerForReady(Landroid/os/Handler;ILjava/lang/Object;)V

    #@4b
    .line 2385
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    #@4d
    if-eqz v1, :cond_3

    #@4f
    .line 2386
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    #@51
    const/16 v2, 0x10

    #@53
    invoke-virtual {v1, p0, v2, v3}, Lcom/android/internal/telephony/uicc/IccRecords;->registerForRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    #@56
    .line 2362
    :cond_3
    :goto_0
    return-void

    #@57
    .line 2388
    :cond_4
    iget-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIsSubscriptionFromRuim:Z

    #@59
    if-eqz v1, :cond_3

    #@5b
    .line 2389
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@5d
    const/16 v2, 0x1a

    #@5f
    invoke-virtual {v1, p0, v2, v3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->registerForReady(Landroid/os/Handler;ILjava/lang/Object;)V

    #@62
    .line 2390
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    #@64
    if-eqz v1, :cond_3

    #@66
    .line 2391
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    #@68
    const/16 v2, 0x1b

    #@6a
    invoke-virtual {v1, p0, v2, v3}, Lcom/android/internal/telephony/uicc/IccRecords;->registerForRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    #@6d
    goto :goto_0
.end method

.method protected parseSidNid(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "sidStr"    # Ljava/lang/String;
    .param p2, "nidStr"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1443
    if-eqz p1, :cond_0

    #@2
    .line 1444
    const-string/jumbo v4, ","

    #@5
    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@8
    move-result-object v3

    #@9
    .line 1445
    .local v3, "sid":[Ljava/lang/String;
    array-length v4, v3

    #@a
    new-array v4, v4, [I

    #@c
    iput-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mHomeSystemId:[I

    #@e
    .line 1446
    const/4 v1, 0x0

    #@f
    .local v1, "i":I
    :goto_0
    array-length v4, v3

    #@10
    if-ge v1, v4, :cond_0

    #@12
    .line 1448
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mHomeSystemId:[I

    #@14
    aget-object v5, v3, v1

    #@16
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@19
    move-result v5

    #@1a
    aput v5, v4, v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@1c
    .line 1446
    :goto_1
    add-int/lit8 v1, v1, 0x1

    #@1e
    goto :goto_0

    #@1f
    .line 1449
    :catch_0
    move-exception v0

    #@20
    .line 1450
    .local v0, "ex":Ljava/lang/NumberFormatException;
    new-instance v4, Ljava/lang/StringBuilder;

    #@22
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@25
    const-string/jumbo v5, "error parsing system id: "

    #@28
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v4

    #@2c
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v4

    #@30
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@33
    move-result-object v4

    #@34
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/ServiceStateTracker;->loge(Ljava/lang/String;)V

    #@37
    goto :goto_1

    #@38
    .line 1454
    .end local v0    # "ex":Ljava/lang/NumberFormatException;
    .end local v1    # "i":I
    .end local v3    # "sid":[Ljava/lang/String;
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    #@3a
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@3d
    const-string/jumbo v5, "CDMA_SUBSCRIPTION: SID="

    #@40
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v4

    #@44
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v4

    #@48
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4b
    move-result-object v4

    #@4c
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    #@4f
    .line 1456
    if-eqz p2, :cond_1

    #@51
    .line 1457
    const-string/jumbo v4, ","

    #@54
    invoke-virtual {p2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@57
    move-result-object v2

    #@58
    .line 1458
    .local v2, "nid":[Ljava/lang/String;
    array-length v4, v2

    #@59
    new-array v4, v4, [I

    #@5b
    iput-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mHomeNetworkId:[I

    #@5d
    .line 1459
    const/4 v1, 0x0

    #@5e
    .restart local v1    # "i":I
    :goto_2
    array-length v4, v2

    #@5f
    if-ge v1, v4, :cond_1

    #@61
    .line 1461
    :try_start_1
    iget-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mHomeNetworkId:[I

    #@63
    aget-object v5, v2, v1

    #@65
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@68
    move-result v5

    #@69
    aput v5, v4, v1
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    #@6b
    .line 1459
    :goto_3
    add-int/lit8 v1, v1, 0x1

    #@6d
    goto :goto_2

    #@6e
    .line 1462
    :catch_1
    move-exception v0

    #@6f
    .line 1463
    .restart local v0    # "ex":Ljava/lang/NumberFormatException;
    new-instance v4, Ljava/lang/StringBuilder;

    #@71
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@74
    const-string/jumbo v5, "CDMA_SUBSCRIPTION: error parsing network id: "

    #@77
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7a
    move-result-object v4

    #@7b
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@7e
    move-result-object v4

    #@7f
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@82
    move-result-object v4

    #@83
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/ServiceStateTracker;->loge(Ljava/lang/String;)V

    #@86
    goto :goto_3

    #@87
    .line 1467
    .end local v0    # "ex":Ljava/lang/NumberFormatException;
    .end local v1    # "i":I
    .end local v2    # "nid":[Ljava/lang/String;
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    #@89
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@8c
    const-string/jumbo v5, "CDMA_SUBSCRIPTION: NID="

    #@8f
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@92
    move-result-object v4

    #@93
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@96
    move-result-object v4

    #@97
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9a
    move-result-object v4

    #@9b
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    #@9e
    .line 1442
    return-void
.end method

.method public pollState()V
    .locals 1

    #@0
    .prologue
    .line 2484
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->pollState(Z)V

    #@4
    .line 2483
    return-void
.end method

.method public pollState(Z)V
    .locals 4
    .param p1, "modemTriggered"    # Z

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 2496
    const/4 v0, 0x1

    #@2
    new-array v0, v0, [I

    #@4
    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPollingContext:[I

    #@6
    .line 2497
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPollingContext:[I

    #@8
    aput v3, v0, v3

    #@a
    .line 2499
    invoke-static {}, Lcom/android/internal/telephony/ServiceStateTracker;->-getcom-android-internal-telephony-CommandsInterface$RadioStateSwitchesValues()[I

    #@d
    move-result-object v0

    #@e
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@10
    invoke-interface {v1}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->ordinal()I

    #@17
    move-result v1

    #@18
    aget v0, v0, v1

    #@1a
    packed-switch v0, :pswitch_data_0

    #@1d
    .line 2527
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPollingContext:[I

    #@1f
    aget v1, v0, v3

    #@21
    add-int/lit8 v1, v1, 0x1

    #@23
    aput v1, v0, v3

    #@25
    .line 2528
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@27
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPollingContext:[I

    #@29
    const/4 v2, 0x6

    #@2a
    invoke-virtual {p0, v2, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@2d
    move-result-object v1

    #@2e
    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getOperator(Landroid/os/Message;)V

    #@31
    .line 2530
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPollingContext:[I

    #@33
    aget v1, v0, v3

    #@35
    add-int/lit8 v1, v1, 0x1

    #@37
    aput v1, v0, v3

    #@39
    .line 2531
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@3b
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPollingContext:[I

    #@3d
    const/4 v2, 0x5

    #@3e
    invoke-virtual {p0, v2, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@41
    move-result-object v1

    #@42
    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getDataRegistrationState(Landroid/os/Message;)V

    #@45
    .line 2533
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPollingContext:[I

    #@47
    aget v1, v0, v3

    #@49
    add-int/lit8 v1, v1, 0x1

    #@4b
    aput v1, v0, v3

    #@4d
    .line 2534
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@4f
    .line 2535
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPollingContext:[I

    #@51
    .line 2534
    const/4 v2, 0x4

    #@52
    invoke-virtual {p0, v2, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@55
    move-result-object v1

    #@56
    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getVoiceRegistrationState(Landroid/os/Message;)V

    #@59
    .line 2537
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@5b
    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    #@5e
    move-result v0

    #@5f
    if-eqz v0, :cond_1

    #@61
    .line 2538
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPollingContext:[I

    #@63
    aget v1, v0, v3

    #@65
    add-int/lit8 v1, v1, 0x1

    #@67
    aput v1, v0, v3

    #@69
    .line 2539
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@6b
    .line 2540
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPollingContext:[I

    #@6d
    const/16 v2, 0xe

    #@6f
    .line 2539
    invoke-virtual {p0, v2, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@72
    move-result-object v1

    #@73
    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getNetworkSelectionMode(Landroid/os/Message;)V

    #@76
    .line 2495
    :cond_1
    :goto_0
    return-void

    #@77
    .line 2501
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@79
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->setStateOutOfService()V

    #@7c
    .line 2502
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewCellLoc:Landroid/telephony/CellLocation;

    #@7e
    invoke-virtual {v0}, Landroid/telephony/CellLocation;->setStateInvalid()V

    #@81
    .line 2503
    invoke-direct {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->setSignalStrengthDefaultValues()V

    #@84
    .line 2504
    iput-boolean v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mGotCountryCode:Z

    #@86
    .line 2505
    iput-boolean v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNitzUpdatedTime:Z

    #@88
    .line 2506
    invoke-direct {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->pollStateDone()V

    #@8b
    goto :goto_0

    #@8c
    .line 2510
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@8e
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->setStateOff()V

    #@91
    .line 2511
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewCellLoc:Landroid/telephony/CellLocation;

    #@93
    invoke-virtual {v0}, Landroid/telephony/CellLocation;->setStateInvalid()V

    #@96
    .line 2512
    invoke-direct {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->setSignalStrengthDefaultValues()V

    #@99
    .line 2513
    iput-boolean v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mGotCountryCode:Z

    #@9b
    .line 2514
    iput-boolean v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNitzUpdatedTime:Z

    #@9d
    .line 2518
    if-nez p1, :cond_0

    #@9f
    .line 2519
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@a1
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    #@a4
    move-result v0

    #@a5
    .line 2518
    const/16 v1, 0x12

    #@a7
    if-eq v1, v0, :cond_0

    #@a9
    .line 2520
    invoke-direct {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->pollStateDone()V

    #@ac
    goto :goto_0

    #@ad
    .line 2499
    nop

    #@ae
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected pollStateDoneCdma()V
    .locals 30

    #@0
    .prologue
    .line 2835
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ServiceStateTracker;->updateRoamingState()V

    #@3
    .line 2837
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ServiceStateTracker;->useDataRegStateForDataOnlyDevices()V

    #@6
    .line 2838
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ServiceStateTracker;->resetServiceStateInIwlanMode()V

    #@9
    .line 2839
    new-instance v27, Ljava/lang/StringBuilder;

    #@b
    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string/jumbo v28, "pollStateDone: cdma oldSS=["

    #@11
    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v27

    #@15
    move-object/from16 v0, p0

    #@17
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@19
    move-object/from16 v28, v0

    #@1b
    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v27

    #@1f
    const-string/jumbo v28, "] newSS=["

    #@22
    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v27

    #@26
    move-object/from16 v0, p0

    #@28
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@2a
    move-object/from16 v28, v0

    #@2c
    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v27

    #@30
    const-string/jumbo v28, "]"

    #@33
    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v27

    #@37
    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3a
    move-result-object v27

    #@3b
    move-object/from16 v0, p0

    #@3d
    move-object/from16 v1, v27

    #@3f
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    #@42
    .line 2842
    move-object/from16 v0, p0

    #@44
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@46
    move-object/from16 v27, v0

    #@48
    invoke-virtual/range {v27 .. v27}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    #@4b
    move-result v27

    #@4c
    if-eqz v27, :cond_1b

    #@4e
    .line 2843
    move-object/from16 v0, p0

    #@50
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@52
    move-object/from16 v27, v0

    #@54
    invoke-virtual/range {v27 .. v27}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    #@57
    move-result v27

    #@58
    if-nez v27, :cond_1a

    #@5a
    const/4 v14, 0x1

    #@5b
    .line 2846
    .local v14, "hasRegistered":Z
    :goto_0
    move-object/from16 v0, p0

    #@5d
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@5f
    move-object/from16 v27, v0

    #@61
    invoke-virtual/range {v27 .. v27}, Landroid/telephony/ServiceState;->getDataRegState()I

    #@64
    move-result v27

    #@65
    if-eqz v27, :cond_1d

    #@67
    .line 2847
    move-object/from16 v0, p0

    #@69
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@6b
    move-object/from16 v27, v0

    #@6d
    invoke-virtual/range {v27 .. v27}, Landroid/telephony/ServiceState;->getDataRegState()I

    #@70
    move-result v27

    #@71
    if-nez v27, :cond_1c

    #@73
    const/4 v7, 0x1

    #@74
    .line 2850
    .local v7, "hasCdmaDataConnectionAttached":Z
    :goto_1
    move-object/from16 v0, p0

    #@76
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@78
    move-object/from16 v27, v0

    #@7a
    invoke-virtual/range {v27 .. v27}, Landroid/telephony/ServiceState;->getDataRegState()I

    #@7d
    move-result v27

    #@7e
    if-nez v27, :cond_1f

    #@80
    .line 2851
    move-object/from16 v0, p0

    #@82
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@84
    move-object/from16 v27, v0

    #@86
    invoke-virtual/range {v27 .. v27}, Landroid/telephony/ServiceState;->getDataRegState()I

    #@89
    move-result v27

    #@8a
    if-eqz v27, :cond_1e

    #@8c
    const/4 v9, 0x1

    #@8d
    .line 2854
    .local v9, "hasCdmaDataConnectionDetached":Z
    :goto_2
    move-object/from16 v0, p0

    #@8f
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@91
    move-object/from16 v27, v0

    #@93
    invoke-virtual/range {v27 .. v27}, Landroid/telephony/ServiceState;->getDataRegState()I

    #@96
    move-result v27

    #@97
    move-object/from16 v0, p0

    #@99
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@9b
    move-object/from16 v28, v0

    #@9d
    invoke-virtual/range {v28 .. v28}, Landroid/telephony/ServiceState;->getDataRegState()I

    #@a0
    move-result v28

    #@a1
    move/from16 v0, v27

    #@a3
    move/from16 v1, v28

    #@a5
    if-eq v0, v1, :cond_20

    #@a7
    const/4 v8, 0x1

    #@a8
    .line 2856
    .local v8, "hasCdmaDataConnectionChanged":Z
    :goto_3
    move-object/from16 v0, p0

    #@aa
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewCellLoc:Landroid/telephony/CellLocation;

    #@ac
    move-object/from16 v27, v0

    #@ae
    move-object/from16 v0, p0

    #@b0
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mCellLoc:Landroid/telephony/CellLocation;

    #@b2
    move-object/from16 v28, v0

    #@b4
    invoke-virtual/range {v27 .. v28}, Landroid/telephony/CellLocation;->equals(Ljava/lang/Object;)Z

    #@b7
    move-result v27

    #@b8
    if-eqz v27, :cond_21

    #@ba
    const/4 v13, 0x0

    #@bb
    .line 2860
    .local v13, "hasLocationChanged":Z
    :goto_4
    if-nez v13, :cond_0

    #@bd
    .line 2861
    move-object/from16 v0, p0

    #@bf
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mRatRatcheter:Lcom/android/internal/telephony/RatRatcheter;

    #@c1
    move-object/from16 v27, v0

    #@c3
    move-object/from16 v0, p0

    #@c5
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@c7
    move-object/from16 v28, v0

    #@c9
    move-object/from16 v0, p0

    #@cb
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@cd
    move-object/from16 v29, v0

    #@cf
    invoke-virtual/range {v27 .. v29}, Lcom/android/internal/telephony/RatRatcheter;->ratchetRat(Landroid/telephony/ServiceState;Landroid/telephony/ServiceState;)V

    #@d2
    .line 2865
    :cond_0
    move-object/from16 v0, p0

    #@d4
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@d6
    move-object/from16 v27, v0

    #@d8
    invoke-virtual/range {v27 .. v27}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    #@db
    move-result v27

    #@dc
    move-object/from16 v0, p0

    #@de
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@e0
    move-object/from16 v28, v0

    #@e2
    invoke-virtual/range {v28 .. v28}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    #@e5
    move-result v28

    #@e6
    move/from16 v0, v27

    #@e8
    move/from16 v1, v28

    #@ea
    if-eq v0, v1, :cond_22

    #@ec
    const/16 v16, 0x1

    #@ee
    .line 2868
    .local v16, "hasRilVoiceRadioTechnologyChanged":Z
    :goto_5
    move-object/from16 v0, p0

    #@f0
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@f2
    move-object/from16 v27, v0

    #@f4
    invoke-virtual/range {v27 .. v27}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    #@f7
    move-result v27

    #@f8
    move-object/from16 v0, p0

    #@fa
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@fc
    move-object/from16 v28, v0

    #@fe
    invoke-virtual/range {v28 .. v28}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    #@101
    move-result v28

    #@102
    move/from16 v0, v27

    #@104
    move/from16 v1, v28

    #@106
    if-eq v0, v1, :cond_23

    #@108
    const/4 v15, 0x1

    #@109
    .line 2870
    .local v15, "hasRilDataRadioTechnologyChanged":Z
    :goto_6
    move-object/from16 v0, p0

    #@10b
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@10d
    move-object/from16 v27, v0

    #@10f
    move-object/from16 v0, p0

    #@111
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@113
    move-object/from16 v28, v0

    #@115
    invoke-virtual/range {v27 .. v28}, Landroid/telephony/ServiceState;->equals(Ljava/lang/Object;)Z

    #@118
    move-result v27

    #@119
    if-eqz v27, :cond_24

    #@11b
    const/4 v10, 0x0

    #@11c
    .line 2872
    .local v10, "hasChanged":Z
    :goto_7
    move-object/from16 v0, p0

    #@11e
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@120
    move-object/from16 v27, v0

    #@122
    invoke-virtual/range {v27 .. v27}, Landroid/telephony/ServiceState;->getVoiceRoaming()Z

    #@125
    move-result v27

    #@126
    if-nez v27, :cond_25

    #@128
    move-object/from16 v0, p0

    #@12a
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@12c
    move-object/from16 v27, v0

    #@12e
    invoke-virtual/range {v27 .. v27}, Landroid/telephony/ServiceState;->getVoiceRoaming()Z

    #@131
    move-result v18

    #@132
    .line 2874
    :goto_8
    move-object/from16 v0, p0

    #@134
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@136
    move-object/from16 v27, v0

    #@138
    invoke-virtual/range {v27 .. v27}, Landroid/telephony/ServiceState;->getVoiceRoaming()Z

    #@13b
    move-result v27

    #@13c
    if-eqz v27, :cond_1

    #@13e
    move-object/from16 v0, p0

    #@140
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@142
    move-object/from16 v27, v0

    #@144
    invoke-virtual/range {v27 .. v27}, Landroid/telephony/ServiceState;->getVoiceRoaming()Z

    #@147
    move-result v27

    #@148
    if-eqz v27, :cond_26

    #@14a
    :cond_1
    const/16 v17, 0x0

    #@14c
    .line 2876
    .local v17, "hasVoiceRoamingOff":Z
    :goto_9
    move-object/from16 v0, p0

    #@14e
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@150
    move-object/from16 v27, v0

    #@152
    invoke-virtual/range {v27 .. v27}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    #@155
    move-result v27

    #@156
    if-nez v27, :cond_27

    #@158
    move-object/from16 v0, p0

    #@15a
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@15c
    move-object/from16 v27, v0

    #@15e
    invoke-virtual/range {v27 .. v27}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    #@161
    move-result v12

    #@162
    .line 2878
    :goto_a
    move-object/from16 v0, p0

    #@164
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@166
    move-object/from16 v27, v0

    #@168
    invoke-virtual/range {v27 .. v27}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    #@16b
    move-result v27

    #@16c
    if-eqz v27, :cond_2

    #@16e
    move-object/from16 v0, p0

    #@170
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@172
    move-object/from16 v27, v0

    #@174
    invoke-virtual/range {v27 .. v27}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    #@177
    move-result v27

    #@178
    if-eqz v27, :cond_28

    #@17a
    :cond_2
    const/4 v11, 0x0

    #@17b
    .line 2881
    .local v11, "hasDataRoamingOff":Z
    :goto_b
    move-object/from16 v0, p0

    #@17d
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@17f
    move-object/from16 v27, v0

    #@181
    invoke-virtual/range {v27 .. v27}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    #@184
    move-result-object v27

    #@185
    const-string/jumbo v28, "phone"

    #@188
    invoke-virtual/range {v27 .. v28}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@18b
    move-result-object v25

    #@18c
    check-cast v25, Landroid/telephony/TelephonyManager;

    #@18e
    .line 2884
    .local v25, "tm":Landroid/telephony/TelephonyManager;
    move-object/from16 v0, p0

    #@190
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@192
    move-object/from16 v27, v0

    #@194
    invoke-virtual/range {v27 .. v27}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    #@197
    move-result v27

    #@198
    move-object/from16 v0, p0

    #@19a
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@19c
    move-object/from16 v28, v0

    #@19e
    invoke-virtual/range {v28 .. v28}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    #@1a1
    move-result v28

    #@1a2
    move/from16 v0, v27

    #@1a4
    move/from16 v1, v28

    #@1a6
    if-ne v0, v1, :cond_3

    #@1a8
    .line 2885
    move-object/from16 v0, p0

    #@1aa
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@1ac
    move-object/from16 v27, v0

    #@1ae
    invoke-virtual/range {v27 .. v27}, Landroid/telephony/ServiceState;->getDataRegState()I

    #@1b1
    move-result v27

    #@1b2
    move-object/from16 v0, p0

    #@1b4
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@1b6
    move-object/from16 v28, v0

    #@1b8
    invoke-virtual/range {v28 .. v28}, Landroid/telephony/ServiceState;->getDataRegState()I

    #@1bb
    move-result v28

    #@1bc
    move/from16 v0, v27

    #@1be
    move/from16 v1, v28

    #@1c0
    if-eq v0, v1, :cond_4

    #@1c2
    .line 2886
    :cond_3
    const/16 v27, 0x4

    #@1c4
    move/from16 v0, v27

    #@1c6
    new-array v0, v0, [Ljava/lang/Object;

    #@1c8
    move-object/from16 v27, v0

    #@1ca
    .line 2887
    move-object/from16 v0, p0

    #@1cc
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@1ce
    move-object/from16 v28, v0

    #@1d0
    invoke-virtual/range {v28 .. v28}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    #@1d3
    move-result v28

    #@1d4
    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1d7
    move-result-object v28

    #@1d8
    const/16 v29, 0x0

    #@1da
    aput-object v28, v27, v29

    #@1dc
    move-object/from16 v0, p0

    #@1de
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@1e0
    move-object/from16 v28, v0

    #@1e2
    invoke-virtual/range {v28 .. v28}, Landroid/telephony/ServiceState;->getDataRegState()I

    #@1e5
    move-result v28

    #@1e6
    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1e9
    move-result-object v28

    #@1ea
    const/16 v29, 0x1

    #@1ec
    aput-object v28, v27, v29

    #@1ee
    .line 2888
    move-object/from16 v0, p0

    #@1f0
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@1f2
    move-object/from16 v28, v0

    #@1f4
    invoke-virtual/range {v28 .. v28}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    #@1f7
    move-result v28

    #@1f8
    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1fb
    move-result-object v28

    #@1fc
    const/16 v29, 0x2

    #@1fe
    aput-object v28, v27, v29

    #@200
    move-object/from16 v0, p0

    #@202
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@204
    move-object/from16 v28, v0

    #@206
    invoke-virtual/range {v28 .. v28}, Landroid/telephony/ServiceState;->getDataRegState()I

    #@209
    move-result v28

    #@20a
    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@20d
    move-result-object v28

    #@20e
    const/16 v29, 0x3

    #@210
    aput-object v28, v27, v29

    #@212
    .line 2886
    const v28, 0xc3c4

    #@215
    move/from16 v0, v28

    #@217
    move-object/from16 v1, v27

    #@219
    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    #@21c
    .line 2892
    :cond_4
    move-object/from16 v0, p0

    #@21e
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@220
    move-object/from16 v26, v0

    #@222
    .line 2893
    .local v26, "tss":Landroid/telephony/ServiceState;
    move-object/from16 v0, p0

    #@224
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@226
    move-object/from16 v27, v0

    #@228
    move-object/from16 v0, v27

    #@22a
    move-object/from16 v1, p0

    #@22c
    iput-object v0, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@22e
    .line 2894
    move-object/from16 v0, v26

    #@230
    move-object/from16 v1, p0

    #@232
    iput-object v0, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@234
    .line 2896
    move-object/from16 v0, p0

    #@236
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@238
    move-object/from16 v27, v0

    #@23a
    invoke-virtual/range {v27 .. v27}, Landroid/telephony/ServiceState;->setStateOutOfService()V

    #@23d
    .line 2898
    move-object/from16 v0, p0

    #@23f
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mCellLoc:Landroid/telephony/CellLocation;

    #@241
    move-object/from16 v24, v0

    #@243
    check-cast v24, Landroid/telephony/cdma/CdmaCellLocation;

    #@245
    .line 2899
    .local v24, "tcl":Landroid/telephony/cdma/CdmaCellLocation;
    move-object/from16 v0, p0

    #@247
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewCellLoc:Landroid/telephony/CellLocation;

    #@249
    move-object/from16 v27, v0

    #@24b
    move-object/from16 v0, v27

    #@24d
    move-object/from16 v1, p0

    #@24f
    iput-object v0, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mCellLoc:Landroid/telephony/CellLocation;

    #@251
    .line 2900
    move-object/from16 v0, v24

    #@253
    move-object/from16 v1, p0

    #@255
    iput-object v0, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mNewCellLoc:Landroid/telephony/CellLocation;

    #@257
    .line 2902
    if-eqz v16, :cond_5

    #@259
    .line 2903
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ServiceStateTracker;->updatePhoneObject()V

    #@25c
    .line 2906
    :cond_5
    if-eqz v15, :cond_6

    #@25e
    .line 2907
    move-object/from16 v0, p0

    #@260
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@262
    move-object/from16 v27, v0

    #@264
    invoke-virtual/range {v27 .. v27}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    #@267
    move-result v27

    #@268
    move-object/from16 v0, p0

    #@26a
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@26c
    move-object/from16 v28, v0

    #@26e
    invoke-virtual/range {v28 .. v28}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    #@271
    move-result v28

    #@272
    move-object/from16 v0, v25

    #@274
    move/from16 v1, v27

    #@276
    move/from16 v2, v28

    #@278
    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->setDataNetworkTypeForPhone(II)V

    #@27b
    .line 2910
    move-object/from16 v0, p0

    #@27d
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@27f
    move-object/from16 v27, v0

    #@281
    invoke-virtual/range {v27 .. v27}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    #@284
    move-result v27

    #@285
    .line 2909
    const/16 v28, 0x12

    #@287
    move/from16 v0, v28

    #@289
    move/from16 v1, v27

    #@28b
    if-ne v0, v1, :cond_6

    #@28d
    .line 2911
    const-string/jumbo v27, "pollStateDone: IWLAN enabled"

    #@290
    move-object/from16 v0, p0

    #@292
    move-object/from16 v1, v27

    #@294
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    #@297
    .line 2915
    :cond_6
    if-eqz v14, :cond_7

    #@299
    .line 2916
    move-object/from16 v0, p0

    #@29b
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNetworkAttachedRegistrants:Landroid/os/RegistrantList;

    #@29d
    move-object/from16 v27, v0

    #@29f
    invoke-virtual/range {v27 .. v27}, Landroid/os/RegistrantList;->notifyRegistrants()V

    #@2a2
    .line 2919
    :cond_7
    if-eqz v10, :cond_a

    #@2a4
    .line 2920
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ServiceStateTracker;->updateSpnDisplay()V

    #@2a7
    .line 2924
    move-object/from16 v0, p0

    #@2a9
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@2ab
    move-object/from16 v27, v0

    #@2ad
    invoke-virtual/range {v27 .. v27}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    #@2b0
    move-result v27

    #@2b1
    move-object/from16 v0, p0

    #@2b3
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@2b5
    move-object/from16 v28, v0

    #@2b7
    invoke-virtual/range {v28 .. v28}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    #@2ba
    move-result-object v28

    #@2bb
    move-object/from16 v0, v25

    #@2bd
    move/from16 v1, v27

    #@2bf
    move-object/from16 v2, v28

    #@2c1
    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->setNetworkOperatorNameForPhone(ILjava/lang/String;)V

    #@2c4
    .line 2926
    move-object/from16 v0, p0

    #@2c6
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@2c8
    move-object/from16 v27, v0

    #@2ca
    invoke-virtual/range {v27 .. v27}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    #@2cd
    move-result v27

    #@2ce
    move-object/from16 v0, v25

    #@2d0
    move/from16 v1, v27

    #@2d2
    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getNetworkOperatorForPhone(I)Ljava/lang/String;

    #@2d5
    move-result-object v22

    #@2d6
    .line 2927
    .local v22, "prevOperatorNumeric":Ljava/lang/String;
    move-object/from16 v0, p0

    #@2d8
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@2da
    move-object/from16 v27, v0

    #@2dc
    invoke-virtual/range {v27 .. v27}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    #@2df
    move-result-object v21

    #@2e0
    .line 2930
    .local v21, "operatorNumeric":Ljava/lang/String;
    move-object/from16 v0, p0

    #@2e2
    move-object/from16 v1, v21

    #@2e4
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->isInvalidOperatorNumeric(Ljava/lang/String;)Z

    #@2e7
    move-result v27

    #@2e8
    if-eqz v27, :cond_8

    #@2ea
    .line 2931
    move-object/from16 v0, p0

    #@2ec
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@2ee
    move-object/from16 v27, v0

    #@2f0
    invoke-virtual/range {v27 .. v27}, Landroid/telephony/ServiceState;->getSystemId()I

    #@2f3
    move-result v23

    #@2f4
    .line 2932
    .local v23, "sid":I
    move-object/from16 v0, p0

    #@2f6
    move-object/from16 v1, v21

    #@2f8
    move/from16 v2, v23

    #@2fa
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->fixUnknownMcc(Ljava/lang/String;I)Ljava/lang/String;

    #@2fd
    move-result-object v21

    #@2fe
    .line 2935
    .end local v23    # "sid":I
    :cond_8
    move-object/from16 v0, p0

    #@300
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@302
    move-object/from16 v27, v0

    #@304
    invoke-virtual/range {v27 .. v27}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    #@307
    move-result v27

    #@308
    move-object/from16 v0, v25

    #@30a
    move/from16 v1, v27

    #@30c
    move-object/from16 v2, v21

    #@30e
    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->setNetworkOperatorNumericForPhone(ILjava/lang/String;)V

    #@311
    .line 2937
    move-object/from16 v0, p0

    #@313
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@315
    move-object/from16 v27, v0

    #@317
    invoke-virtual/range {v27 .. v27}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    #@31a
    move-result-object v27

    #@31b
    .line 2936
    move-object/from16 v0, p0

    #@31d
    move-object/from16 v1, v21

    #@31f
    move-object/from16 v2, v22

    #@321
    move-object/from16 v3, v27

    #@323
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->updateCarrierMccMncConfiguration(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    #@326
    .line 2939
    move-object/from16 v0, p0

    #@328
    move-object/from16 v1, v21

    #@32a
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->isInvalidOperatorNumeric(Ljava/lang/String;)Z

    #@32d
    move-result v27

    #@32e
    if-eqz v27, :cond_29

    #@330
    .line 2940
    new-instance v27, Ljava/lang/StringBuilder;

    #@332
    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    #@335
    const-string/jumbo v28, "operatorNumeric "

    #@338
    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33b
    move-result-object v27

    #@33c
    move-object/from16 v0, v27

    #@33e
    move-object/from16 v1, v21

    #@340
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@343
    move-result-object v27

    #@344
    const-string/jumbo v28, "is invalid"

    #@347
    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34a
    move-result-object v27

    #@34b
    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@34e
    move-result-object v27

    #@34f
    move-object/from16 v0, p0

    #@351
    move-object/from16 v1, v27

    #@353
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    #@356
    .line 2941
    move-object/from16 v0, p0

    #@358
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@35a
    move-object/from16 v27, v0

    #@35c
    invoke-virtual/range {v27 .. v27}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    #@35f
    move-result v27

    #@360
    const-string/jumbo v28, ""

    #@363
    move-object/from16 v0, v25

    #@365
    move/from16 v1, v27

    #@367
    move-object/from16 v2, v28

    #@369
    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->setNetworkCountryIsoForPhone(ILjava/lang/String;)V

    #@36c
    .line 2942
    const/16 v27, 0x0

    #@36e
    move/from16 v0, v27

    #@370
    move-object/from16 v1, p0

    #@372
    iput-boolean v0, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mGotCountryCode:Z

    #@374
    .line 2966
    :cond_9
    :goto_c
    move-object/from16 v0, p0

    #@376
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@378
    move-object/from16 v27, v0

    #@37a
    invoke-virtual/range {v27 .. v27}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    #@37d
    move-result v28

    #@37e
    .line 2967
    move-object/from16 v0, p0

    #@380
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@382
    move-object/from16 v27, v0

    #@384
    invoke-virtual/range {v27 .. v27}, Landroid/telephony/ServiceState;->getVoiceRoaming()Z

    #@387
    move-result v27

    #@388
    if-nez v27, :cond_2a

    #@38a
    move-object/from16 v0, p0

    #@38c
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@38e
    move-object/from16 v27, v0

    #@390
    invoke-virtual/range {v27 .. v27}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    #@393
    move-result v27

    #@394
    .line 2966
    :goto_d
    move-object/from16 v0, v25

    #@396
    move/from16 v1, v28

    #@398
    move/from16 v2, v27

    #@39a
    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->setNetworkRoamingForPhone(IZ)V

    #@39d
    .line 2970
    move-object/from16 v0, p0

    #@39f
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@3a1
    move-object/from16 v27, v0

    #@3a3
    move-object/from16 v0, p0

    #@3a5
    move-object/from16 v1, v27

    #@3a7
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->setRoamingType(Landroid/telephony/ServiceState;)V

    #@3aa
    .line 2971
    new-instance v27, Ljava/lang/StringBuilder;

    #@3ac
    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    #@3af
    const-string/jumbo v28, "Broadcasting ServiceState : "

    #@3b2
    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b5
    move-result-object v27

    #@3b6
    move-object/from16 v0, p0

    #@3b8
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@3ba
    move-object/from16 v28, v0

    #@3bc
    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3bf
    move-result-object v27

    #@3c0
    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3c3
    move-result-object v27

    #@3c4
    move-object/from16 v0, p0

    #@3c6
    move-object/from16 v1, v27

    #@3c8
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    #@3cb
    .line 2972
    move-object/from16 v0, p0

    #@3cd
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@3cf
    move-object/from16 v27, v0

    #@3d1
    move-object/from16 v0, p0

    #@3d3
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@3d5
    move-object/from16 v28, v0

    #@3d7
    invoke-virtual/range {v27 .. v28}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifyServiceStateChanged(Landroid/telephony/ServiceState;)V

    #@3da
    .line 2975
    .end local v21    # "operatorNumeric":Ljava/lang/String;
    .end local v22    # "prevOperatorNumeric":Ljava/lang/String;
    :cond_a
    if-nez v7, :cond_b

    #@3dc
    if-nez v9, :cond_b

    #@3de
    if-eqz v14, :cond_c

    #@3e0
    .line 2976
    :cond_b
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/ServiceStateTracker;->logAttachChange()V

    #@3e3
    .line 2979
    :cond_c
    if-eqz v7, :cond_d

    #@3e5
    .line 2980
    move-object/from16 v0, p0

    #@3e7
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mAttachedRegistrants:Landroid/os/RegistrantList;

    #@3e9
    move-object/from16 v27, v0

    #@3eb
    invoke-virtual/range {v27 .. v27}, Landroid/os/RegistrantList;->notifyRegistrants()V

    #@3ee
    .line 2983
    :cond_d
    if-eqz v9, :cond_e

    #@3f0
    .line 2984
    move-object/from16 v0, p0

    #@3f2
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mDetachedRegistrants:Landroid/os/RegistrantList;

    #@3f4
    move-object/from16 v27, v0

    #@3f6
    invoke-virtual/range {v27 .. v27}, Landroid/os/RegistrantList;->notifyRegistrants()V

    #@3f9
    .line 2987
    :cond_e
    if-nez v15, :cond_f

    #@3fb
    if-eqz v16, :cond_10

    #@3fd
    .line 2988
    :cond_f
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/ServiceStateTracker;->logRatChange()V

    #@400
    .line 2991
    :cond_10
    if-nez v8, :cond_11

    #@402
    if-eqz v15, :cond_12

    #@404
    .line 2992
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ServiceStateTracker;->notifyDataRegStateRilRadioTechnologyChanged()V

    #@407
    .line 2994
    move-object/from16 v0, p0

    #@409
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@40b
    move-object/from16 v27, v0

    #@40d
    invoke-virtual/range {v27 .. v27}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    #@410
    move-result v27

    #@411
    .line 2993
    const/16 v28, 0x12

    #@413
    move/from16 v0, v28

    #@415
    move/from16 v1, v27

    #@417
    if-ne v0, v1, :cond_2b

    #@419
    .line 2995
    move-object/from16 v0, p0

    #@41b
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@41d
    move-object/from16 v27, v0

    #@41f
    const-string/jumbo v28, "iwlanAvailable"

    #@422
    invoke-virtual/range {v27 .. v28}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifyDataConnection(Ljava/lang/String;)V

    #@425
    .line 3001
    :cond_12
    :goto_e
    if-eqz v18, :cond_13

    #@427
    .line 3002
    move-object/from16 v0, p0

    #@429
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mVoiceRoamingOnRegistrants:Landroid/os/RegistrantList;

    #@42b
    move-object/from16 v27, v0

    #@42d
    invoke-virtual/range {v27 .. v27}, Landroid/os/RegistrantList;->notifyRegistrants()V

    #@430
    .line 3005
    :cond_13
    if-eqz v17, :cond_14

    #@432
    .line 3006
    move-object/from16 v0, p0

    #@434
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mVoiceRoamingOffRegistrants:Landroid/os/RegistrantList;

    #@436
    move-object/from16 v27, v0

    #@438
    invoke-virtual/range {v27 .. v27}, Landroid/os/RegistrantList;->notifyRegistrants()V

    #@43b
    .line 3009
    :cond_14
    if-nez v18, :cond_15

    #@43d
    if-nez v17, :cond_15

    #@43f
    if-nez v12, :cond_15

    #@441
    if-eqz v11, :cond_16

    #@443
    .line 3010
    :cond_15
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/ServiceStateTracker;->logRoamingChange()V

    #@446
    .line 3013
    :cond_16
    if-eqz v12, :cond_17

    #@448
    .line 3014
    move-object/from16 v0, p0

    #@44a
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mDataRoamingOnRegistrants:Landroid/os/RegistrantList;

    #@44c
    move-object/from16 v27, v0

    #@44e
    invoke-virtual/range {v27 .. v27}, Landroid/os/RegistrantList;->notifyRegistrants()V

    #@451
    .line 3017
    :cond_17
    if-eqz v11, :cond_18

    #@453
    .line 3018
    move-object/from16 v0, p0

    #@455
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mDataRoamingOffRegistrants:Landroid/os/RegistrantList;

    #@457
    move-object/from16 v27, v0

    #@459
    invoke-virtual/range {v27 .. v27}, Landroid/os/RegistrantList;->notifyRegistrants()V

    #@45c
    .line 3021
    :cond_18
    if-eqz v13, :cond_19

    #@45e
    .line 3022
    move-object/from16 v0, p0

    #@460
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@462
    move-object/from16 v27, v0

    #@464
    invoke-virtual/range {v27 .. v27}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifyLocationChanged()V

    #@467
    .line 2834
    :cond_19
    return-void

    #@468
    .line 2843
    .end local v7    # "hasCdmaDataConnectionAttached":Z
    .end local v8    # "hasCdmaDataConnectionChanged":Z
    .end local v9    # "hasCdmaDataConnectionDetached":Z
    .end local v10    # "hasChanged":Z
    .end local v11    # "hasDataRoamingOff":Z
    .end local v13    # "hasLocationChanged":Z
    .end local v14    # "hasRegistered":Z
    .end local v15    # "hasRilDataRadioTechnologyChanged":Z
    .end local v16    # "hasRilVoiceRadioTechnologyChanged":Z
    .end local v17    # "hasVoiceRoamingOff":Z
    .end local v24    # "tcl":Landroid/telephony/cdma/CdmaCellLocation;
    .end local v25    # "tm":Landroid/telephony/TelephonyManager;
    .end local v26    # "tss":Landroid/telephony/ServiceState;
    :cond_1a
    const/4 v14, 0x0

    #@469
    .restart local v14    # "hasRegistered":Z
    goto/16 :goto_0

    #@46b
    .line 2842
    .end local v14    # "hasRegistered":Z
    :cond_1b
    const/4 v14, 0x0

    #@46c
    .restart local v14    # "hasRegistered":Z
    goto/16 :goto_0

    #@46e
    .line 2847
    :cond_1c
    const/4 v7, 0x0

    #@46f
    .restart local v7    # "hasCdmaDataConnectionAttached":Z
    goto/16 :goto_1

    #@471
    .line 2846
    .end local v7    # "hasCdmaDataConnectionAttached":Z
    :cond_1d
    const/4 v7, 0x0

    #@472
    .restart local v7    # "hasCdmaDataConnectionAttached":Z
    goto/16 :goto_1

    #@474
    .line 2851
    :cond_1e
    const/4 v9, 0x0

    #@475
    .restart local v9    # "hasCdmaDataConnectionDetached":Z
    goto/16 :goto_2

    #@477
    .line 2850
    .end local v9    # "hasCdmaDataConnectionDetached":Z
    :cond_1f
    const/4 v9, 0x0

    #@478
    .restart local v9    # "hasCdmaDataConnectionDetached":Z
    goto/16 :goto_2

    #@47a
    .line 2854
    :cond_20
    const/4 v8, 0x0

    #@47b
    .restart local v8    # "hasCdmaDataConnectionChanged":Z
    goto/16 :goto_3

    #@47d
    .line 2856
    :cond_21
    const/4 v13, 0x1

    #@47e
    goto/16 :goto_4

    #@480
    .line 2865
    .restart local v13    # "hasLocationChanged":Z
    :cond_22
    const/16 v16, 0x0

    #@482
    .restart local v16    # "hasRilVoiceRadioTechnologyChanged":Z
    goto/16 :goto_5

    #@484
    .line 2868
    :cond_23
    const/4 v15, 0x0

    #@485
    .restart local v15    # "hasRilDataRadioTechnologyChanged":Z
    goto/16 :goto_6

    #@487
    .line 2870
    :cond_24
    const/4 v10, 0x1

    #@488
    .restart local v10    # "hasChanged":Z
    goto/16 :goto_7

    #@48a
    .line 2872
    :cond_25
    const/16 v18, 0x0

    #@48c
    .local v18, "hasVoiceRoamingOn":Z
    goto/16 :goto_8

    #@48e
    .line 2874
    .end local v18    # "hasVoiceRoamingOn":Z
    :cond_26
    const/16 v17, 0x1

    #@490
    .restart local v17    # "hasVoiceRoamingOff":Z
    goto/16 :goto_9

    #@492
    .line 2876
    :cond_27
    const/4 v12, 0x0

    #@493
    .local v12, "hasDataRoamingOn":Z
    goto/16 :goto_a

    #@495
    .line 2878
    .end local v12    # "hasDataRoamingOn":Z
    :cond_28
    const/4 v11, 0x1

    #@496
    .restart local v11    # "hasDataRoamingOff":Z
    goto/16 :goto_b

    #@498
    .line 2944
    .restart local v21    # "operatorNumeric":Ljava/lang/String;
    .restart local v22    # "prevOperatorNumeric":Ljava/lang/String;
    .restart local v24    # "tcl":Landroid/telephony/cdma/CdmaCellLocation;
    .restart local v25    # "tm":Landroid/telephony/TelephonyManager;
    .restart local v26    # "tss":Landroid/telephony/ServiceState;
    :cond_29
    const-string/jumbo v19, ""

    #@49b
    .line 2945
    .local v19, "isoCountryCode":Ljava/lang/String;
    const/16 v27, 0x0

    #@49d
    const/16 v28, 0x3

    #@49f
    move-object/from16 v0, v21

    #@4a1
    move/from16 v1, v27

    #@4a3
    move/from16 v2, v28

    #@4a5
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@4a8
    move-result-object v20

    #@4a9
    .line 2948
    .local v20, "mcc":Ljava/lang/String;
    const/16 v27, 0x0

    #@4ab
    const/16 v28, 0x3

    #@4ad
    :try_start_0
    move-object/from16 v0, v21

    #@4af
    move/from16 v1, v27

    #@4b1
    move/from16 v2, v28

    #@4b3
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@4b6
    move-result-object v27

    #@4b7
    .line 2947
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@4ba
    move-result v27

    #@4bb
    invoke-static/range {v27 .. v27}, Lcom/android/internal/telephony/MccTable;->countryCodeForMcc(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    #@4be
    move-result-object v19

    #@4bf
    .line 2955
    :goto_f
    move-object/from16 v0, p0

    #@4c1
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@4c3
    move-object/from16 v27, v0

    #@4c5
    invoke-virtual/range {v27 .. v27}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    #@4c8
    move-result v27

    #@4c9
    move-object/from16 v0, v25

    #@4cb
    move/from16 v1, v27

    #@4cd
    move-object/from16 v2, v19

    #@4cf
    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->setNetworkCountryIsoForPhone(ILjava/lang/String;)V

    #@4d2
    .line 2956
    const/16 v27, 0x1

    #@4d4
    move/from16 v0, v27

    #@4d6
    move-object/from16 v1, p0

    #@4d8
    iput-boolean v0, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mGotCountryCode:Z

    #@4da
    .line 2958
    move-object/from16 v0, p0

    #@4dc
    move-object/from16 v1, v21

    #@4de
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->setOperatorIdd(Ljava/lang/String;)V

    #@4e1
    .line 2960
    move-object/from16 v0, p0

    #@4e3
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@4e5
    move-object/from16 v27, v0

    #@4e7
    .line 2961
    move-object/from16 v0, p0

    #@4e9
    iget-boolean v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNeedFixZoneAfterNitz:Z

    #@4eb
    move/from16 v28, v0

    #@4ed
    .line 2960
    move-object/from16 v0, p0

    #@4ef
    move-object/from16 v1, v27

    #@4f1
    move-object/from16 v2, v21

    #@4f3
    move-object/from16 v3, v22

    #@4f5
    move/from16 v4, v28

    #@4f7
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/ServiceStateTracker;->shouldFixTimeZoneNow(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Ljava/lang/String;Z)Z

    #@4fa
    move-result v27

    #@4fb
    if-eqz v27, :cond_9

    #@4fd
    .line 2962
    move-object/from16 v0, p0

    #@4ff
    move-object/from16 v1, v19

    #@501
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->fixTimeZone(Ljava/lang/String;)V

    #@504
    goto/16 :goto_c

    #@506
    .line 2951
    :catch_0
    move-exception v6

    #@507
    .line 2952
    .local v6, "ex":Ljava/lang/StringIndexOutOfBoundsException;
    new-instance v27, Ljava/lang/StringBuilder;

    #@509
    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    #@50c
    const-string/jumbo v28, "pollStateDone: countryCodeForMcc error"

    #@50f
    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@512
    move-result-object v27

    #@513
    move-object/from16 v0, v27

    #@515
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@518
    move-result-object v27

    #@519
    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@51c
    move-result-object v27

    #@51d
    move-object/from16 v0, p0

    #@51f
    move-object/from16 v1, v27

    #@521
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->loge(Ljava/lang/String;)V

    #@524
    goto :goto_f

    #@525
    .line 2949
    .end local v6    # "ex":Ljava/lang/StringIndexOutOfBoundsException;
    :catch_1
    move-exception v5

    #@526
    .line 2950
    .local v5, "ex":Ljava/lang/NumberFormatException;
    new-instance v27, Ljava/lang/StringBuilder;

    #@528
    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    #@52b
    const-string/jumbo v28, "pollStateDone: countryCodeForMcc error"

    #@52e
    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@531
    move-result-object v27

    #@532
    move-object/from16 v0, v27

    #@534
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@537
    move-result-object v27

    #@538
    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@53b
    move-result-object v27

    #@53c
    move-object/from16 v0, p0

    #@53e
    move-object/from16 v1, v27

    #@540
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->loge(Ljava/lang/String;)V

    #@543
    goto/16 :goto_f

    #@545
    .line 2967
    .end local v5    # "ex":Ljava/lang/NumberFormatException;
    .end local v19    # "isoCountryCode":Ljava/lang/String;
    .end local v20    # "mcc":Ljava/lang/String;
    :cond_2a
    const/16 v27, 0x1

    #@547
    goto/16 :goto_d

    #@549
    .line 2997
    .end local v21    # "operatorNumeric":Ljava/lang/String;
    .end local v22    # "prevOperatorNumeric":Ljava/lang/String;
    :cond_2b
    move-object/from16 v0, p0

    #@54b
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@54d
    move-object/from16 v27, v0

    #@54f
    const/16 v28, 0x0

    #@551
    invoke-virtual/range {v27 .. v28}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifyDataConnection(Ljava/lang/String;)V

    #@554
    goto/16 :goto_e
.end method

.method protected pollStateDoneCdmaLte()V
    .locals 34

    #@0
    .prologue
    .line 3028
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ServiceStateTracker;->updateRoamingState()V

    #@3
    .line 3030
    sget-boolean v31, Landroid/os/Build;->IS_DEBUGGABLE:Z

    #@5
    if-eqz v31, :cond_0

    #@7
    const-string/jumbo v31, "telephony.test.forceRoaming"

    #@a
    const/16 v32, 0x0

    #@c
    invoke-static/range {v31 .. v32}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    #@f
    move-result v31

    #@10
    if-eqz v31, :cond_0

    #@12
    .line 3031
    move-object/from16 v0, p0

    #@14
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@16
    move-object/from16 v31, v0

    #@18
    const/16 v32, 0x1

    #@1a
    invoke-virtual/range {v31 .. v32}, Landroid/telephony/ServiceState;->setVoiceRoaming(Z)V

    #@1d
    .line 3032
    move-object/from16 v0, p0

    #@1f
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@21
    move-object/from16 v31, v0

    #@23
    const/16 v32, 0x1

    #@25
    invoke-virtual/range {v31 .. v32}, Landroid/telephony/ServiceState;->setDataRoaming(Z)V

    #@28
    .line 3035
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ServiceStateTracker;->useDataRegStateForDataOnlyDevices()V

    #@2b
    .line 3036
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ServiceStateTracker;->resetServiceStateInIwlanMode()V

    #@2e
    .line 3037
    new-instance v31, Ljava/lang/StringBuilder;

    #@30
    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    #@33
    const-string/jumbo v32, "pollStateDone: lte 1 ss=["

    #@36
    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v31

    #@3a
    move-object/from16 v0, p0

    #@3c
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@3e
    move-object/from16 v32, v0

    #@40
    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v31

    #@44
    const-string/jumbo v32, "] newSS=["

    #@47
    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v31

    #@4b
    move-object/from16 v0, p0

    #@4d
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@4f
    move-object/from16 v32, v0

    #@51
    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v31

    #@55
    const-string/jumbo v32, "]"

    #@58
    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v31

    #@5c
    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5f
    move-result-object v31

    #@60
    move-object/from16 v0, p0

    #@62
    move-object/from16 v1, v31

    #@64
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    #@67
    .line 3039
    move-object/from16 v0, p0

    #@69
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@6b
    move-object/from16 v31, v0

    #@6d
    invoke-virtual/range {v31 .. v31}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    #@70
    move-result v31

    #@71
    if-eqz v31, :cond_1e

    #@73
    .line 3040
    move-object/from16 v0, p0

    #@75
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@77
    move-object/from16 v31, v0

    #@79
    invoke-virtual/range {v31 .. v31}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    #@7c
    move-result v31

    #@7d
    if-nez v31, :cond_1d

    #@7f
    const/16 v19, 0x1

    #@81
    .line 3042
    .local v19, "hasRegistered":Z
    :goto_0
    move-object/from16 v0, p0

    #@83
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@85
    move-object/from16 v31, v0

    #@87
    invoke-virtual/range {v31 .. v31}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    #@8a
    move-result v31

    #@8b
    if-nez v31, :cond_20

    #@8d
    .line 3043
    move-object/from16 v0, p0

    #@8f
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@91
    move-object/from16 v31, v0

    #@93
    invoke-virtual/range {v31 .. v31}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    #@96
    move-result v31

    #@97
    if-eqz v31, :cond_1f

    #@99
    const/4 v15, 0x1

    #@9a
    .line 3046
    .local v15, "hasDeregistered":Z
    :goto_1
    move-object/from16 v0, p0

    #@9c
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@9e
    move-object/from16 v31, v0

    #@a0
    invoke-virtual/range {v31 .. v31}, Landroid/telephony/ServiceState;->getDataRegState()I

    #@a3
    move-result v31

    #@a4
    if-eqz v31, :cond_22

    #@a6
    .line 3047
    move-object/from16 v0, p0

    #@a8
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@aa
    move-object/from16 v31, v0

    #@ac
    invoke-virtual/range {v31 .. v31}, Landroid/telephony/ServiceState;->getDataRegState()I

    #@af
    move-result v31

    #@b0
    if-nez v31, :cond_21

    #@b2
    const/4 v8, 0x1

    #@b3
    .line 3050
    .local v8, "hasCdmaDataConnectionAttached":Z
    :goto_2
    move-object/from16 v0, p0

    #@b5
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@b7
    move-object/from16 v31, v0

    #@b9
    invoke-virtual/range {v31 .. v31}, Landroid/telephony/ServiceState;->getDataRegState()I

    #@bc
    move-result v31

    #@bd
    if-nez v31, :cond_24

    #@bf
    .line 3051
    move-object/from16 v0, p0

    #@c1
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@c3
    move-object/from16 v31, v0

    #@c5
    invoke-virtual/range {v31 .. v31}, Landroid/telephony/ServiceState;->getDataRegState()I

    #@c8
    move-result v31

    #@c9
    if-eqz v31, :cond_23

    #@cb
    const/4 v10, 0x1

    #@cc
    .line 3054
    .local v10, "hasCdmaDataConnectionDetached":Z
    :goto_3
    move-object/from16 v0, p0

    #@ce
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@d0
    move-object/from16 v31, v0

    #@d2
    invoke-virtual/range {v31 .. v31}, Landroid/telephony/ServiceState;->getDataRegState()I

    #@d5
    move-result v31

    #@d6
    move-object/from16 v0, p0

    #@d8
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@da
    move-object/from16 v32, v0

    #@dc
    invoke-virtual/range {v32 .. v32}, Landroid/telephony/ServiceState;->getDataRegState()I

    #@df
    move-result v32

    #@e0
    move/from16 v0, v31

    #@e2
    move/from16 v1, v32

    #@e4
    if-eq v0, v1, :cond_25

    #@e6
    const/4 v9, 0x1

    #@e7
    .line 3056
    .local v9, "hasCdmaDataConnectionChanged":Z
    :goto_4
    move-object/from16 v0, p0

    #@e9
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewCellLoc:Landroid/telephony/CellLocation;

    #@eb
    move-object/from16 v31, v0

    #@ed
    move-object/from16 v0, p0

    #@ef
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mCellLoc:Landroid/telephony/CellLocation;

    #@f1
    move-object/from16 v32, v0

    #@f3
    invoke-virtual/range {v31 .. v32}, Landroid/telephony/CellLocation;->equals(Ljava/lang/Object;)Z

    #@f6
    move-result v31

    #@f7
    if-eqz v31, :cond_26

    #@f9
    const/16 v16, 0x0

    #@fb
    .line 3060
    .local v16, "hasLocationChanged":Z
    :goto_5
    if-nez v16, :cond_1

    #@fd
    .line 3061
    move-object/from16 v0, p0

    #@ff
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mRatRatcheter:Lcom/android/internal/telephony/RatRatcheter;

    #@101
    move-object/from16 v31, v0

    #@103
    move-object/from16 v0, p0

    #@105
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@107
    move-object/from16 v32, v0

    #@109
    move-object/from16 v0, p0

    #@10b
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@10d
    move-object/from16 v33, v0

    #@10f
    invoke-virtual/range {v31 .. v33}, Lcom/android/internal/telephony/RatRatcheter;->ratchetRat(Landroid/telephony/ServiceState;Landroid/telephony/ServiceState;)V

    #@112
    .line 3064
    :cond_1
    move-object/from16 v0, p0

    #@114
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@116
    move-object/from16 v31, v0

    #@118
    invoke-virtual/range {v31 .. v31}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    #@11b
    move-result v31

    #@11c
    .line 3065
    move-object/from16 v0, p0

    #@11e
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@120
    move-object/from16 v32, v0

    #@122
    invoke-virtual/range {v32 .. v32}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    #@125
    move-result v32

    #@126
    .line 3064
    move/from16 v0, v31

    #@128
    move/from16 v1, v32

    #@12a
    if-eq v0, v1, :cond_27

    #@12c
    const/16 v20, 0x1

    #@12e
    .line 3067
    .local v20, "hasVoiceRadioTechnologyChanged":Z
    :goto_6
    move-object/from16 v0, p0

    #@130
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@132
    move-object/from16 v31, v0

    #@134
    invoke-virtual/range {v31 .. v31}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    #@137
    move-result v31

    #@138
    .line 3068
    move-object/from16 v0, p0

    #@13a
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@13c
    move-object/from16 v32, v0

    #@13e
    invoke-virtual/range {v32 .. v32}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    #@141
    move-result v32

    #@142
    .line 3067
    move/from16 v0, v31

    #@144
    move/from16 v1, v32

    #@146
    if-eq v0, v1, :cond_28

    #@148
    const/4 v12, 0x1

    #@149
    .line 3070
    .local v12, "hasDataRadioTechnologyChanged":Z
    :goto_7
    move-object/from16 v0, p0

    #@14b
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@14d
    move-object/from16 v31, v0

    #@14f
    move-object/from16 v0, p0

    #@151
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@153
    move-object/from16 v32, v0

    #@155
    invoke-virtual/range {v31 .. v32}, Landroid/telephony/ServiceState;->equals(Ljava/lang/Object;)Z

    #@158
    move-result v31

    #@159
    if-eqz v31, :cond_29

    #@15b
    const/4 v11, 0x0

    #@15c
    .line 3072
    .local v11, "hasChanged":Z
    :goto_8
    move-object/from16 v0, p0

    #@15e
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@160
    move-object/from16 v31, v0

    #@162
    invoke-virtual/range {v31 .. v31}, Landroid/telephony/ServiceState;->getVoiceRoaming()Z

    #@165
    move-result v31

    #@166
    if-nez v31, :cond_2a

    #@168
    move-object/from16 v0, p0

    #@16a
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@16c
    move-object/from16 v31, v0

    #@16e
    invoke-virtual/range {v31 .. v31}, Landroid/telephony/ServiceState;->getVoiceRoaming()Z

    #@171
    move-result v22

    #@172
    .line 3074
    :goto_9
    move-object/from16 v0, p0

    #@174
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@176
    move-object/from16 v31, v0

    #@178
    invoke-virtual/range {v31 .. v31}, Landroid/telephony/ServiceState;->getVoiceRoaming()Z

    #@17b
    move-result v31

    #@17c
    if-eqz v31, :cond_2

    #@17e
    move-object/from16 v0, p0

    #@180
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@182
    move-object/from16 v31, v0

    #@184
    invoke-virtual/range {v31 .. v31}, Landroid/telephony/ServiceState;->getVoiceRoaming()Z

    #@187
    move-result v31

    #@188
    if-eqz v31, :cond_2b

    #@18a
    :cond_2
    const/16 v21, 0x0

    #@18c
    .line 3076
    .local v21, "hasVoiceRoamingOff":Z
    :goto_a
    move-object/from16 v0, p0

    #@18e
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@190
    move-object/from16 v31, v0

    #@192
    invoke-virtual/range {v31 .. v31}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    #@195
    move-result v31

    #@196
    if-nez v31, :cond_2c

    #@198
    move-object/from16 v0, p0

    #@19a
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@19c
    move-object/from16 v31, v0

    #@19e
    invoke-virtual/range {v31 .. v31}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    #@1a1
    move-result v14

    #@1a2
    .line 3078
    :goto_b
    move-object/from16 v0, p0

    #@1a4
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@1a6
    move-object/from16 v31, v0

    #@1a8
    invoke-virtual/range {v31 .. v31}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    #@1ab
    move-result v31

    #@1ac
    if-eqz v31, :cond_3

    #@1ae
    move-object/from16 v0, p0

    #@1b0
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@1b2
    move-object/from16 v31, v0

    #@1b4
    invoke-virtual/range {v31 .. v31}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    #@1b7
    move-result v31

    #@1b8
    if-eqz v31, :cond_2d

    #@1ba
    :cond_3
    const/4 v13, 0x0

    #@1bb
    .line 3081
    .local v13, "hasDataRoamingOff":Z
    :goto_c
    move-object/from16 v0, p0

    #@1bd
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@1bf
    move-object/from16 v31, v0

    #@1c1
    invoke-virtual/range {v31 .. v31}, Landroid/telephony/ServiceState;->getDataRegState()I

    #@1c4
    move-result v31

    #@1c5
    if-nez v31, :cond_30

    #@1c7
    .line 3082
    move-object/from16 v0, p0

    #@1c9
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@1cb
    move-object/from16 v31, v0

    #@1cd
    invoke-virtual/range {v31 .. v31}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    #@1d0
    move-result v31

    #@1d1
    invoke-static/range {v31 .. v31}, Landroid/telephony/ServiceState;->isLte(I)Z

    #@1d4
    move-result v31

    #@1d5
    if-eqz v31, :cond_2e

    #@1d7
    .line 3083
    move-object/from16 v0, p0

    #@1d9
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@1db
    move-object/from16 v31, v0

    #@1dd
    invoke-virtual/range {v31 .. v31}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    #@1e0
    move-result v31

    #@1e1
    const/16 v32, 0xd

    #@1e3
    move/from16 v0, v31

    #@1e5
    move/from16 v1, v32

    #@1e7
    if-ne v0, v1, :cond_2e

    #@1e9
    .line 3082
    const/4 v7, 0x1

    #@1ea
    .line 3088
    :goto_d
    move-object/from16 v0, p0

    #@1ec
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@1ee
    move-object/from16 v31, v0

    #@1f0
    invoke-virtual/range {v31 .. v31}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    #@1f3
    move-result v31

    #@1f4
    invoke-static/range {v31 .. v31}, Landroid/telephony/ServiceState;->isLte(I)Z

    #@1f7
    move-result v31

    #@1f8
    if-nez v31, :cond_4

    #@1fa
    .line 3089
    move-object/from16 v0, p0

    #@1fc
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@1fe
    move-object/from16 v31, v0

    #@200
    invoke-virtual/range {v31 .. v31}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    #@203
    move-result v31

    #@204
    const/16 v32, 0xd

    #@206
    move/from16 v0, v31

    #@208
    move/from16 v1, v32

    #@20a
    if-ne v0, v1, :cond_33

    #@20c
    .line 3090
    :cond_4
    move-object/from16 v0, p0

    #@20e
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@210
    move-object/from16 v31, v0

    #@212
    invoke-virtual/range {v31 .. v31}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    #@215
    move-result v31

    #@216
    invoke-static/range {v31 .. v31}, Landroid/telephony/ServiceState;->isLte(I)Z

    #@219
    move-result v31

    #@21a
    if-nez v31, :cond_32

    #@21c
    .line 3091
    move-object/from16 v0, p0

    #@21e
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@220
    move-object/from16 v31, v0

    #@222
    invoke-virtual/range {v31 .. v31}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    #@225
    move-result v31

    #@226
    const/16 v32, 0xd

    #@228
    move/from16 v0, v31

    #@22a
    move/from16 v1, v32

    #@22c
    if-eq v0, v1, :cond_31

    #@22e
    const/16 v18, 0x1

    #@230
    .line 3094
    .local v18, "hasMultiApnSupport":Z
    :goto_e
    move-object/from16 v0, p0

    #@232
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@234
    move-object/from16 v31, v0

    #@236
    invoke-virtual/range {v31 .. v31}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    #@239
    move-result v31

    #@23a
    const/16 v32, 0x4

    #@23c
    move/from16 v0, v31

    #@23e
    move/from16 v1, v32

    #@240
    if-lt v0, v1, :cond_35

    #@242
    .line 3095
    move-object/from16 v0, p0

    #@244
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@246
    move-object/from16 v31, v0

    #@248
    invoke-virtual/range {v31 .. v31}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    #@24b
    move-result v31

    #@24c
    const/16 v32, 0x8

    #@24e
    move/from16 v0, v31

    #@250
    move/from16 v1, v32

    #@252
    if-gt v0, v1, :cond_34

    #@254
    const/16 v17, 0x1

    #@256
    .line 3098
    .local v17, "hasLostMultiApnSupport":Z
    :goto_f
    move-object/from16 v0, p0

    #@258
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@25a
    move-object/from16 v31, v0

    #@25c
    invoke-virtual/range {v31 .. v31}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    #@25f
    move-result-object v31

    #@260
    const-string/jumbo v32, "phone"

    #@263
    invoke-virtual/range {v31 .. v32}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@266
    move-result-object v29

    #@267
    check-cast v29, Landroid/telephony/TelephonyManager;

    #@269
    .line 3101
    .local v29, "tm":Landroid/telephony/TelephonyManager;
    new-instance v31, Ljava/lang/StringBuilder;

    #@26b
    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    #@26e
    const-string/jumbo v32, "pollStateDone: hasRegistered="

    #@271
    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@274
    move-result-object v31

    #@275
    move-object/from16 v0, v31

    #@277
    move/from16 v1, v19

    #@279
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@27c
    move-result-object v31

    #@27d
    .line 3103
    const-string/jumbo v32, " hasDeegistered="

    #@280
    .line 3101
    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@283
    move-result-object v31

    #@284
    move-object/from16 v0, v31

    #@286
    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@289
    move-result-object v31

    #@28a
    .line 3104
    const-string/jumbo v32, " hasCdmaDataConnectionAttached="

    #@28d
    .line 3101
    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@290
    move-result-object v31

    #@291
    move-object/from16 v0, v31

    #@293
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@296
    move-result-object v31

    #@297
    .line 3105
    const-string/jumbo v32, " hasCdmaDataConnectionDetached="

    #@29a
    .line 3101
    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29d
    move-result-object v31

    #@29e
    move-object/from16 v0, v31

    #@2a0
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@2a3
    move-result-object v31

    #@2a4
    .line 3106
    const-string/jumbo v32, " hasCdmaDataConnectionChanged="

    #@2a7
    .line 3101
    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2aa
    move-result-object v31

    #@2ab
    move-object/from16 v0, v31

    #@2ad
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@2b0
    move-result-object v31

    #@2b1
    .line 3107
    const-string/jumbo v32, " hasVoiceRadioTechnologyChanged= "

    #@2b4
    .line 3101
    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b7
    move-result-object v31

    #@2b8
    move-object/from16 v0, v31

    #@2ba
    move/from16 v1, v20

    #@2bc
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@2bf
    move-result-object v31

    #@2c0
    .line 3108
    const-string/jumbo v32, " hasDataRadioTechnologyChanged="

    #@2c3
    .line 3101
    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c6
    move-result-object v31

    #@2c7
    move-object/from16 v0, v31

    #@2c9
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@2cc
    move-result-object v31

    #@2cd
    .line 3109
    const-string/jumbo v32, " hasChanged="

    #@2d0
    .line 3101
    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d3
    move-result-object v31

    #@2d4
    move-object/from16 v0, v31

    #@2d6
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@2d9
    move-result-object v31

    #@2da
    .line 3110
    const-string/jumbo v32, " hasVoiceRoamingOn="

    #@2dd
    .line 3101
    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e0
    move-result-object v31

    #@2e1
    move-object/from16 v0, v31

    #@2e3
    move/from16 v1, v22

    #@2e5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@2e8
    move-result-object v31

    #@2e9
    .line 3111
    const-string/jumbo v32, " hasVoiceRoamingOff="

    #@2ec
    .line 3101
    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2ef
    move-result-object v31

    #@2f0
    move-object/from16 v0, v31

    #@2f2
    move/from16 v1, v21

    #@2f4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@2f7
    move-result-object v31

    #@2f8
    .line 3112
    const-string/jumbo v32, " hasDataRoamingOn="

    #@2fb
    .line 3101
    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2fe
    move-result-object v31

    #@2ff
    move-object/from16 v0, v31

    #@301
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@304
    move-result-object v31

    #@305
    .line 3113
    const-string/jumbo v32, " hasDataRoamingOff="

    #@308
    .line 3101
    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30b
    move-result-object v31

    #@30c
    move-object/from16 v0, v31

    #@30e
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@311
    move-result-object v31

    #@312
    .line 3114
    const-string/jumbo v32, " hasLocationChanged="

    #@315
    .line 3101
    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@318
    move-result-object v31

    #@319
    move-object/from16 v0, v31

    #@31b
    move/from16 v1, v16

    #@31d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@320
    move-result-object v31

    #@321
    .line 3115
    const-string/jumbo v32, " has4gHandoff = "

    #@324
    .line 3101
    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@327
    move-result-object v31

    #@328
    move-object/from16 v0, v31

    #@32a
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@32d
    move-result-object v31

    #@32e
    .line 3116
    const-string/jumbo v32, " hasMultiApnSupport="

    #@331
    .line 3101
    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@334
    move-result-object v31

    #@335
    move-object/from16 v0, v31

    #@337
    move/from16 v1, v18

    #@339
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@33c
    move-result-object v31

    #@33d
    .line 3117
    const-string/jumbo v32, " hasLostMultiApnSupport="

    #@340
    .line 3101
    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@343
    move-result-object v31

    #@344
    move-object/from16 v0, v31

    #@346
    move/from16 v1, v17

    #@348
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@34b
    move-result-object v31

    #@34c
    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@34f
    move-result-object v31

    #@350
    move-object/from16 v0, p0

    #@352
    move-object/from16 v1, v31

    #@354
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    #@357
    .line 3120
    move-object/from16 v0, p0

    #@359
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@35b
    move-object/from16 v31, v0

    #@35d
    invoke-virtual/range {v31 .. v31}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    #@360
    move-result v31

    #@361
    move-object/from16 v0, p0

    #@363
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@365
    move-object/from16 v32, v0

    #@367
    invoke-virtual/range {v32 .. v32}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    #@36a
    move-result v32

    #@36b
    move/from16 v0, v31

    #@36d
    move/from16 v1, v32

    #@36f
    if-ne v0, v1, :cond_5

    #@371
    .line 3121
    move-object/from16 v0, p0

    #@373
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@375
    move-object/from16 v31, v0

    #@377
    invoke-virtual/range {v31 .. v31}, Landroid/telephony/ServiceState;->getDataRegState()I

    #@37a
    move-result v31

    #@37b
    move-object/from16 v0, p0

    #@37d
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@37f
    move-object/from16 v32, v0

    #@381
    invoke-virtual/range {v32 .. v32}, Landroid/telephony/ServiceState;->getDataRegState()I

    #@384
    move-result v32

    #@385
    move/from16 v0, v31

    #@387
    move/from16 v1, v32

    #@389
    if-eq v0, v1, :cond_6

    #@38b
    .line 3122
    :cond_5
    const/16 v31, 0x4

    #@38d
    move/from16 v0, v31

    #@38f
    new-array v0, v0, [Ljava/lang/Object;

    #@391
    move-object/from16 v31, v0

    #@393
    move-object/from16 v0, p0

    #@395
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@397
    move-object/from16 v32, v0

    #@399
    invoke-virtual/range {v32 .. v32}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    #@39c
    move-result v32

    #@39d
    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@3a0
    move-result-object v32

    #@3a1
    const/16 v33, 0x0

    #@3a3
    aput-object v32, v31, v33

    #@3a5
    .line 3123
    move-object/from16 v0, p0

    #@3a7
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@3a9
    move-object/from16 v32, v0

    #@3ab
    invoke-virtual/range {v32 .. v32}, Landroid/telephony/ServiceState;->getDataRegState()I

    #@3ae
    move-result v32

    #@3af
    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@3b2
    move-result-object v32

    #@3b3
    const/16 v33, 0x1

    #@3b5
    aput-object v32, v31, v33

    #@3b7
    move-object/from16 v0, p0

    #@3b9
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@3bb
    move-object/from16 v32, v0

    #@3bd
    invoke-virtual/range {v32 .. v32}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    #@3c0
    move-result v32

    #@3c1
    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@3c4
    move-result-object v32

    #@3c5
    const/16 v33, 0x2

    #@3c7
    aput-object v32, v31, v33

    #@3c9
    move-object/from16 v0, p0

    #@3cb
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@3cd
    move-object/from16 v32, v0

    #@3cf
    invoke-virtual/range {v32 .. v32}, Landroid/telephony/ServiceState;->getDataRegState()I

    #@3d2
    move-result v32

    #@3d3
    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@3d6
    move-result-object v32

    #@3d7
    const/16 v33, 0x3

    #@3d9
    aput-object v32, v31, v33

    #@3db
    .line 3122
    const v32, 0xc3c4

    #@3de
    move/from16 v0, v32

    #@3e0
    move-object/from16 v1, v31

    #@3e2
    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    #@3e5
    .line 3127
    :cond_6
    move-object/from16 v0, p0

    #@3e7
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@3e9
    move-object/from16 v30, v0

    #@3eb
    .line 3128
    .local v30, "tss":Landroid/telephony/ServiceState;
    move-object/from16 v0, p0

    #@3ed
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@3ef
    move-object/from16 v31, v0

    #@3f1
    move-object/from16 v0, v31

    #@3f3
    move-object/from16 v1, p0

    #@3f5
    iput-object v0, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@3f7
    .line 3129
    move-object/from16 v0, v30

    #@3f9
    move-object/from16 v1, p0

    #@3fb
    iput-object v0, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@3fd
    .line 3131
    move-object/from16 v0, p0

    #@3ff
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@401
    move-object/from16 v31, v0

    #@403
    invoke-virtual/range {v31 .. v31}, Landroid/telephony/ServiceState;->setStateOutOfService()V

    #@406
    .line 3133
    move-object/from16 v0, p0

    #@408
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mCellLoc:Landroid/telephony/CellLocation;

    #@40a
    move-object/from16 v28, v0

    #@40c
    check-cast v28, Landroid/telephony/cdma/CdmaCellLocation;

    #@40e
    .line 3134
    .local v28, "tcl":Landroid/telephony/cdma/CdmaCellLocation;
    move-object/from16 v0, p0

    #@410
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewCellLoc:Landroid/telephony/CellLocation;

    #@412
    move-object/from16 v31, v0

    #@414
    move-object/from16 v0, v31

    #@416
    move-object/from16 v1, p0

    #@418
    iput-object v0, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mCellLoc:Landroid/telephony/CellLocation;

    #@41a
    .line 3135
    move-object/from16 v0, v28

    #@41c
    move-object/from16 v1, p0

    #@41e
    iput-object v0, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mNewCellLoc:Landroid/telephony/CellLocation;

    #@420
    .line 3137
    move-object/from16 v0, p0

    #@422
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@424
    move-object/from16 v31, v0

    #@426
    invoke-virtual/range {v31 .. v31}, Landroid/telephony/ServiceState;->setStateOutOfService()V

    #@429
    .line 3139
    if-eqz v20, :cond_7

    #@42b
    .line 3140
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ServiceStateTracker;->updatePhoneObject()V

    #@42e
    .line 3143
    :cond_7
    if-eqz v12, :cond_8

    #@430
    .line 3144
    move-object/from16 v0, p0

    #@432
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@434
    move-object/from16 v31, v0

    #@436
    invoke-virtual/range {v31 .. v31}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    #@439
    move-result v31

    #@43a
    move-object/from16 v0, p0

    #@43c
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@43e
    move-object/from16 v32, v0

    #@440
    invoke-virtual/range {v32 .. v32}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    #@443
    move-result v32

    #@444
    move-object/from16 v0, v29

    #@446
    move/from16 v1, v31

    #@448
    move/from16 v2, v32

    #@44a
    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->setDataNetworkTypeForPhone(II)V

    #@44d
    .line 3147
    move-object/from16 v0, p0

    #@44f
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@451
    move-object/from16 v31, v0

    #@453
    invoke-virtual/range {v31 .. v31}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    #@456
    move-result v31

    #@457
    .line 3146
    const/16 v32, 0x12

    #@459
    move/from16 v0, v32

    #@45b
    move/from16 v1, v31

    #@45d
    if-ne v0, v1, :cond_8

    #@45f
    .line 3148
    const-string/jumbo v31, "pollStateDone: IWLAN enabled"

    #@462
    move-object/from16 v0, p0

    #@464
    move-object/from16 v1, v31

    #@466
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    #@469
    .line 3152
    :cond_8
    if-eqz v19, :cond_9

    #@46b
    .line 3153
    move-object/from16 v0, p0

    #@46d
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNetworkAttachedRegistrants:Landroid/os/RegistrantList;

    #@46f
    move-object/from16 v31, v0

    #@471
    invoke-virtual/range {v31 .. v31}, Landroid/os/RegistrantList;->notifyRegistrants()V

    #@474
    .line 3156
    :cond_9
    if-eqz v11, :cond_c

    #@476
    .line 3157
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ServiceStateTracker;->updateSpnDisplay()V

    #@479
    .line 3161
    move-object/from16 v0, p0

    #@47b
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@47d
    move-object/from16 v31, v0

    #@47f
    invoke-virtual/range {v31 .. v31}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    #@482
    move-result v31

    #@483
    move-object/from16 v0, p0

    #@485
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@487
    move-object/from16 v32, v0

    #@489
    invoke-virtual/range {v32 .. v32}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    #@48c
    move-result-object v32

    #@48d
    move-object/from16 v0, v29

    #@48f
    move/from16 v1, v31

    #@491
    move-object/from16 v2, v32

    #@493
    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->setNetworkOperatorNameForPhone(ILjava/lang/String;)V

    #@496
    .line 3163
    move-object/from16 v0, p0

    #@498
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@49a
    move-object/from16 v31, v0

    #@49c
    invoke-virtual/range {v31 .. v31}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    #@49f
    move-result v31

    #@4a0
    move-object/from16 v0, v29

    #@4a2
    move/from16 v1, v31

    #@4a4
    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getNetworkOperatorForPhone(I)Ljava/lang/String;

    #@4a7
    move-result-object v26

    #@4a8
    .line 3164
    .local v26, "prevOperatorNumeric":Ljava/lang/String;
    move-object/from16 v0, p0

    #@4aa
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@4ac
    move-object/from16 v31, v0

    #@4ae
    invoke-virtual/range {v31 .. v31}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    #@4b1
    move-result-object v25

    #@4b2
    .line 3166
    .local v25, "operatorNumeric":Ljava/lang/String;
    move-object/from16 v0, p0

    #@4b4
    move-object/from16 v1, v25

    #@4b6
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->isInvalidOperatorNumeric(Ljava/lang/String;)Z

    #@4b9
    move-result v31

    #@4ba
    if-eqz v31, :cond_a

    #@4bc
    .line 3167
    move-object/from16 v0, p0

    #@4be
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@4c0
    move-object/from16 v31, v0

    #@4c2
    invoke-virtual/range {v31 .. v31}, Landroid/telephony/ServiceState;->getSystemId()I

    #@4c5
    move-result v27

    #@4c6
    .line 3168
    .local v27, "sid":I
    move-object/from16 v0, p0

    #@4c8
    move-object/from16 v1, v25

    #@4ca
    move/from16 v2, v27

    #@4cc
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->fixUnknownMcc(Ljava/lang/String;I)Ljava/lang/String;

    #@4cf
    move-result-object v25

    #@4d0
    .line 3170
    .end local v27    # "sid":I
    :cond_a
    move-object/from16 v0, p0

    #@4d2
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@4d4
    move-object/from16 v31, v0

    #@4d6
    invoke-virtual/range {v31 .. v31}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    #@4d9
    move-result v31

    #@4da
    move-object/from16 v0, v29

    #@4dc
    move/from16 v1, v31

    #@4de
    move-object/from16 v2, v25

    #@4e0
    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->setNetworkOperatorNumericForPhone(ILjava/lang/String;)V

    #@4e3
    .line 3172
    move-object/from16 v0, p0

    #@4e5
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@4e7
    move-object/from16 v31, v0

    #@4e9
    invoke-virtual/range {v31 .. v31}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    #@4ec
    move-result-object v31

    #@4ed
    .line 3171
    move-object/from16 v0, p0

    #@4ef
    move-object/from16 v1, v25

    #@4f1
    move-object/from16 v2, v26

    #@4f3
    move-object/from16 v3, v31

    #@4f5
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->updateCarrierMccMncConfiguration(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    #@4f8
    .line 3174
    move-object/from16 v0, p0

    #@4fa
    move-object/from16 v1, v25

    #@4fc
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->isInvalidOperatorNumeric(Ljava/lang/String;)Z

    #@4ff
    move-result v31

    #@500
    if-eqz v31, :cond_36

    #@502
    .line 3175
    const-string/jumbo v31, "operatorNumeric is null"

    #@505
    move-object/from16 v0, p0

    #@507
    move-object/from16 v1, v31

    #@509
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    #@50c
    .line 3176
    move-object/from16 v0, p0

    #@50e
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@510
    move-object/from16 v31, v0

    #@512
    invoke-virtual/range {v31 .. v31}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    #@515
    move-result v31

    #@516
    const-string/jumbo v32, ""

    #@519
    move-object/from16 v0, v29

    #@51b
    move/from16 v1, v31

    #@51d
    move-object/from16 v2, v32

    #@51f
    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->setNetworkCountryIsoForPhone(ILjava/lang/String;)V

    #@522
    .line 3177
    const/16 v31, 0x0

    #@524
    move/from16 v0, v31

    #@526
    move-object/from16 v1, p0

    #@528
    iput-boolean v0, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mGotCountryCode:Z

    #@52a
    .line 3201
    :cond_b
    :goto_10
    move-object/from16 v0, p0

    #@52c
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@52e
    move-object/from16 v31, v0

    #@530
    invoke-virtual/range {v31 .. v31}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    #@533
    move-result v32

    #@534
    .line 3202
    move-object/from16 v0, p0

    #@536
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@538
    move-object/from16 v31, v0

    #@53a
    invoke-virtual/range {v31 .. v31}, Landroid/telephony/ServiceState;->getVoiceRoaming()Z

    #@53d
    move-result v31

    #@53e
    if-nez v31, :cond_37

    #@540
    move-object/from16 v0, p0

    #@542
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@544
    move-object/from16 v31, v0

    #@546
    invoke-virtual/range {v31 .. v31}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    #@549
    move-result v31

    #@54a
    .line 3201
    :goto_11
    move-object/from16 v0, v29

    #@54c
    move/from16 v1, v32

    #@54e
    move/from16 v2, v31

    #@550
    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->setNetworkRoamingForPhone(IZ)V

    #@553
    .line 3204
    move-object/from16 v0, p0

    #@555
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@557
    move-object/from16 v31, v0

    #@559
    move-object/from16 v0, p0

    #@55b
    move-object/from16 v1, v31

    #@55d
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->setRoamingType(Landroid/telephony/ServiceState;)V

    #@560
    .line 3205
    new-instance v31, Ljava/lang/StringBuilder;

    #@562
    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    #@565
    const-string/jumbo v32, "Broadcasting ServiceState : "

    #@568
    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56b
    move-result-object v31

    #@56c
    move-object/from16 v0, p0

    #@56e
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@570
    move-object/from16 v32, v0

    #@572
    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@575
    move-result-object v31

    #@576
    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@579
    move-result-object v31

    #@57a
    move-object/from16 v0, p0

    #@57c
    move-object/from16 v1, v31

    #@57e
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    #@581
    .line 3206
    move-object/from16 v0, p0

    #@583
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@585
    move-object/from16 v31, v0

    #@587
    move-object/from16 v0, p0

    #@589
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@58b
    move-object/from16 v32, v0

    #@58d
    invoke-virtual/range {v31 .. v32}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifyServiceStateChanged(Landroid/telephony/ServiceState;)V

    #@590
    .line 3209
    .end local v25    # "operatorNumeric":Ljava/lang/String;
    .end local v26    # "prevOperatorNumeric":Ljava/lang/String;
    :cond_c
    if-nez v8, :cond_d

    #@592
    if-nez v7, :cond_d

    #@594
    if-nez v10, :cond_d

    #@596
    if-nez v19, :cond_d

    #@598
    if-eqz v15, :cond_e

    #@59a
    .line 3211
    :cond_d
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/ServiceStateTracker;->logAttachChange()V

    #@59d
    .line 3214
    :cond_e
    if-nez v8, :cond_f

    #@59f
    if-eqz v7, :cond_10

    #@5a1
    .line 3215
    :cond_f
    move-object/from16 v0, p0

    #@5a3
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mAttachedRegistrants:Landroid/os/RegistrantList;

    #@5a5
    move-object/from16 v31, v0

    #@5a7
    invoke-virtual/range {v31 .. v31}, Landroid/os/RegistrantList;->notifyRegistrants()V

    #@5aa
    .line 3218
    :cond_10
    if-eqz v10, :cond_11

    #@5ac
    .line 3219
    move-object/from16 v0, p0

    #@5ae
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mDetachedRegistrants:Landroid/os/RegistrantList;

    #@5b0
    move-object/from16 v31, v0

    #@5b2
    invoke-virtual/range {v31 .. v31}, Landroid/os/RegistrantList;->notifyRegistrants()V

    #@5b5
    .line 3222
    :cond_11
    if-nez v12, :cond_12

    #@5b7
    if-eqz v20, :cond_13

    #@5b9
    .line 3223
    :cond_12
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/ServiceStateTracker;->logRatChange()V

    #@5bc
    .line 3226
    :cond_13
    if-nez v9, :cond_14

    #@5be
    if-eqz v12, :cond_15

    #@5c0
    .line 3227
    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ServiceStateTracker;->notifyDataRegStateRilRadioTechnologyChanged()V

    #@5c3
    .line 3229
    move-object/from16 v0, p0

    #@5c5
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@5c7
    move-object/from16 v31, v0

    #@5c9
    invoke-virtual/range {v31 .. v31}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    #@5cc
    move-result v31

    #@5cd
    .line 3228
    const/16 v32, 0x12

    #@5cf
    move/from16 v0, v32

    #@5d1
    move/from16 v1, v31

    #@5d3
    if-ne v0, v1, :cond_38

    #@5d5
    .line 3230
    move-object/from16 v0, p0

    #@5d7
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@5d9
    move-object/from16 v31, v0

    #@5db
    const-string/jumbo v32, "iwlanAvailable"

    #@5de
    invoke-virtual/range {v31 .. v32}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifyDataConnection(Ljava/lang/String;)V

    #@5e1
    .line 3236
    :cond_15
    :goto_12
    if-nez v22, :cond_16

    #@5e3
    if-nez v21, :cond_16

    #@5e5
    if-nez v14, :cond_16

    #@5e7
    if-eqz v13, :cond_17

    #@5e9
    .line 3237
    :cond_16
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/ServiceStateTracker;->logRoamingChange()V

    #@5ec
    .line 3240
    :cond_17
    if-eqz v22, :cond_18

    #@5ee
    .line 3241
    move-object/from16 v0, p0

    #@5f0
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mVoiceRoamingOnRegistrants:Landroid/os/RegistrantList;

    #@5f2
    move-object/from16 v31, v0

    #@5f4
    invoke-virtual/range {v31 .. v31}, Landroid/os/RegistrantList;->notifyRegistrants()V

    #@5f7
    .line 3244
    :cond_18
    if-eqz v21, :cond_19

    #@5f9
    .line 3245
    move-object/from16 v0, p0

    #@5fb
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mVoiceRoamingOffRegistrants:Landroid/os/RegistrantList;

    #@5fd
    move-object/from16 v31, v0

    #@5ff
    invoke-virtual/range {v31 .. v31}, Landroid/os/RegistrantList;->notifyRegistrants()V

    #@602
    .line 3248
    :cond_19
    if-eqz v14, :cond_1a

    #@604
    .line 3249
    move-object/from16 v0, p0

    #@606
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mDataRoamingOnRegistrants:Landroid/os/RegistrantList;

    #@608
    move-object/from16 v31, v0

    #@60a
    invoke-virtual/range {v31 .. v31}, Landroid/os/RegistrantList;->notifyRegistrants()V

    #@60d
    .line 3252
    :cond_1a
    if-eqz v13, :cond_1b

    #@60f
    .line 3253
    move-object/from16 v0, p0

    #@611
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mDataRoamingOffRegistrants:Landroid/os/RegistrantList;

    #@613
    move-object/from16 v31, v0

    #@615
    invoke-virtual/range {v31 .. v31}, Landroid/os/RegistrantList;->notifyRegistrants()V

    #@618
    .line 3256
    :cond_1b
    if-eqz v16, :cond_1c

    #@61a
    .line 3257
    move-object/from16 v0, p0

    #@61c
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@61e
    move-object/from16 v31, v0

    #@620
    invoke-virtual/range {v31 .. v31}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifyLocationChanged()V

    #@623
    .line 3027
    :cond_1c
    return-void

    #@624
    .line 3040
    .end local v8    # "hasCdmaDataConnectionAttached":Z
    .end local v9    # "hasCdmaDataConnectionChanged":Z
    .end local v10    # "hasCdmaDataConnectionDetached":Z
    .end local v11    # "hasChanged":Z
    .end local v12    # "hasDataRadioTechnologyChanged":Z
    .end local v13    # "hasDataRoamingOff":Z
    .end local v15    # "hasDeregistered":Z
    .end local v16    # "hasLocationChanged":Z
    .end local v17    # "hasLostMultiApnSupport":Z
    .end local v18    # "hasMultiApnSupport":Z
    .end local v19    # "hasRegistered":Z
    .end local v20    # "hasVoiceRadioTechnologyChanged":Z
    .end local v21    # "hasVoiceRoamingOff":Z
    .end local v28    # "tcl":Landroid/telephony/cdma/CdmaCellLocation;
    .end local v29    # "tm":Landroid/telephony/TelephonyManager;
    .end local v30    # "tss":Landroid/telephony/ServiceState;
    :cond_1d
    const/16 v19, 0x0

    #@626
    .restart local v19    # "hasRegistered":Z
    goto/16 :goto_0

    #@628
    .line 3039
    .end local v19    # "hasRegistered":Z
    :cond_1e
    const/16 v19, 0x0

    #@62a
    .restart local v19    # "hasRegistered":Z
    goto/16 :goto_0

    #@62c
    .line 3043
    :cond_1f
    const/4 v15, 0x0

    #@62d
    .restart local v15    # "hasDeregistered":Z
    goto/16 :goto_1

    #@62f
    .line 3042
    .end local v15    # "hasDeregistered":Z
    :cond_20
    const/4 v15, 0x0

    #@630
    .restart local v15    # "hasDeregistered":Z
    goto/16 :goto_1

    #@632
    .line 3047
    :cond_21
    const/4 v8, 0x0

    #@633
    .restart local v8    # "hasCdmaDataConnectionAttached":Z
    goto/16 :goto_2

    #@635
    .line 3046
    .end local v8    # "hasCdmaDataConnectionAttached":Z
    :cond_22
    const/4 v8, 0x0

    #@636
    .restart local v8    # "hasCdmaDataConnectionAttached":Z
    goto/16 :goto_2

    #@638
    .line 3051
    :cond_23
    const/4 v10, 0x0

    #@639
    .restart local v10    # "hasCdmaDataConnectionDetached":Z
    goto/16 :goto_3

    #@63b
    .line 3050
    .end local v10    # "hasCdmaDataConnectionDetached":Z
    :cond_24
    const/4 v10, 0x0

    #@63c
    .restart local v10    # "hasCdmaDataConnectionDetached":Z
    goto/16 :goto_3

    #@63e
    .line 3054
    :cond_25
    const/4 v9, 0x0

    #@63f
    .restart local v9    # "hasCdmaDataConnectionChanged":Z
    goto/16 :goto_4

    #@641
    .line 3056
    :cond_26
    const/16 v16, 0x1

    #@643
    goto/16 :goto_5

    #@645
    .line 3064
    .restart local v16    # "hasLocationChanged":Z
    :cond_27
    const/16 v20, 0x0

    #@647
    .restart local v20    # "hasVoiceRadioTechnologyChanged":Z
    goto/16 :goto_6

    #@649
    .line 3067
    :cond_28
    const/4 v12, 0x0

    #@64a
    .restart local v12    # "hasDataRadioTechnologyChanged":Z
    goto/16 :goto_7

    #@64c
    .line 3070
    :cond_29
    const/4 v11, 0x1

    #@64d
    .restart local v11    # "hasChanged":Z
    goto/16 :goto_8

    #@64f
    .line 3072
    :cond_2a
    const/16 v22, 0x0

    #@651
    .local v22, "hasVoiceRoamingOn":Z
    goto/16 :goto_9

    #@653
    .line 3074
    .end local v22    # "hasVoiceRoamingOn":Z
    :cond_2b
    const/16 v21, 0x1

    #@655
    .restart local v21    # "hasVoiceRoamingOff":Z
    goto/16 :goto_a

    #@657
    .line 3076
    :cond_2c
    const/4 v14, 0x0

    #@658
    .local v14, "hasDataRoamingOn":Z
    goto/16 :goto_b

    #@65a
    .line 3078
    .end local v14    # "hasDataRoamingOn":Z
    :cond_2d
    const/4 v13, 0x1

    #@65b
    .restart local v13    # "hasDataRoamingOff":Z
    goto/16 :goto_c

    #@65d
    .line 3084
    :cond_2e
    move-object/from16 v0, p0

    #@65f
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@661
    move-object/from16 v31, v0

    #@663
    invoke-virtual/range {v31 .. v31}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    #@666
    move-result v31

    #@667
    const/16 v32, 0xd

    #@669
    move/from16 v0, v31

    #@66b
    move/from16 v1, v32

    #@66d
    if-ne v0, v1, :cond_2f

    #@66f
    .line 3085
    move-object/from16 v0, p0

    #@671
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@673
    move-object/from16 v31, v0

    #@675
    invoke-virtual/range {v31 .. v31}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    #@678
    move-result v31

    #@679
    invoke-static/range {v31 .. v31}, Landroid/telephony/ServiceState;->isLte(I)Z

    #@67c
    move-result v7

    #@67d
    .local v7, "has4gHandoff":Z
    goto/16 :goto_d

    #@67f
    .line 3084
    .end local v7    # "has4gHandoff":Z
    :cond_2f
    const/4 v7, 0x0

    #@680
    .local v7, "has4gHandoff":Z
    goto/16 :goto_d

    #@682
    .line 3081
    .end local v7    # "has4gHandoff":Z
    :cond_30
    const/4 v7, 0x0

    #@683
    .restart local v7    # "has4gHandoff":Z
    goto/16 :goto_d

    #@685
    .line 3091
    .end local v7    # "has4gHandoff":Z
    :cond_31
    const/16 v18, 0x0

    #@687
    .restart local v18    # "hasMultiApnSupport":Z
    goto/16 :goto_e

    #@689
    .line 3090
    .end local v18    # "hasMultiApnSupport":Z
    :cond_32
    const/16 v18, 0x0

    #@68b
    .restart local v18    # "hasMultiApnSupport":Z
    goto/16 :goto_e

    #@68d
    .line 3088
    .end local v18    # "hasMultiApnSupport":Z
    :cond_33
    const/16 v18, 0x0

    #@68f
    .restart local v18    # "hasMultiApnSupport":Z
    goto/16 :goto_e

    #@691
    .line 3095
    :cond_34
    const/16 v17, 0x0

    #@693
    .restart local v17    # "hasLostMultiApnSupport":Z
    goto/16 :goto_f

    #@695
    .line 3094
    .end local v17    # "hasLostMultiApnSupport":Z
    :cond_35
    const/16 v17, 0x0

    #@697
    .restart local v17    # "hasLostMultiApnSupport":Z
    goto/16 :goto_f

    #@699
    .line 3179
    .restart local v25    # "operatorNumeric":Ljava/lang/String;
    .restart local v26    # "prevOperatorNumeric":Ljava/lang/String;
    .restart local v28    # "tcl":Landroid/telephony/cdma/CdmaCellLocation;
    .restart local v29    # "tm":Landroid/telephony/TelephonyManager;
    .restart local v30    # "tss":Landroid/telephony/ServiceState;
    :cond_36
    const-string/jumbo v23, ""

    #@69c
    .line 3180
    .local v23, "isoCountryCode":Ljava/lang/String;
    const/16 v31, 0x0

    #@69e
    const/16 v32, 0x3

    #@6a0
    move-object/from16 v0, v25

    #@6a2
    move/from16 v1, v31

    #@6a4
    move/from16 v2, v32

    #@6a6
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@6a9
    move-result-object v24

    #@6aa
    .line 3183
    .local v24, "mcc":Ljava/lang/String;
    const/16 v31, 0x0

    #@6ac
    const/16 v32, 0x3

    #@6ae
    .line 3182
    :try_start_0
    move-object/from16 v0, v25

    #@6b0
    move/from16 v1, v31

    #@6b2
    move/from16 v2, v32

    #@6b4
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@6b7
    move-result-object v31

    #@6b8
    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@6bb
    move-result v31

    #@6bc
    invoke-static/range {v31 .. v31}, Lcom/android/internal/telephony/MccTable;->countryCodeForMcc(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    #@6bf
    move-result-object v23

    #@6c0
    .line 3190
    :goto_13
    move-object/from16 v0, p0

    #@6c2
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@6c4
    move-object/from16 v31, v0

    #@6c6
    invoke-virtual/range {v31 .. v31}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    #@6c9
    move-result v31

    #@6ca
    move-object/from16 v0, v29

    #@6cc
    move/from16 v1, v31

    #@6ce
    move-object/from16 v2, v23

    #@6d0
    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->setNetworkCountryIsoForPhone(ILjava/lang/String;)V

    #@6d3
    .line 3191
    const/16 v31, 0x1

    #@6d5
    move/from16 v0, v31

    #@6d7
    move-object/from16 v1, p0

    #@6d9
    iput-boolean v0, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mGotCountryCode:Z

    #@6db
    .line 3193
    move-object/from16 v0, p0

    #@6dd
    move-object/from16 v1, v25

    #@6df
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->setOperatorIdd(Ljava/lang/String;)V

    #@6e2
    .line 3195
    move-object/from16 v0, p0

    #@6e4
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@6e6
    move-object/from16 v31, v0

    #@6e8
    .line 3196
    move-object/from16 v0, p0

    #@6ea
    iget-boolean v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNeedFixZoneAfterNitz:Z

    #@6ec
    move/from16 v32, v0

    #@6ee
    .line 3195
    move-object/from16 v0, p0

    #@6f0
    move-object/from16 v1, v31

    #@6f2
    move-object/from16 v2, v25

    #@6f4
    move-object/from16 v3, v26

    #@6f6
    move/from16 v4, v32

    #@6f8
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/ServiceStateTracker;->shouldFixTimeZoneNow(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Ljava/lang/String;Z)Z

    #@6fb
    move-result v31

    #@6fc
    if-eqz v31, :cond_b

    #@6fe
    .line 3197
    move-object/from16 v0, p0

    #@700
    move-object/from16 v1, v23

    #@702
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->fixTimeZone(Ljava/lang/String;)V

    #@705
    goto/16 :goto_10

    #@707
    .line 3186
    :catch_0
    move-exception v6

    #@708
    .line 3187
    .local v6, "ex":Ljava/lang/StringIndexOutOfBoundsException;
    new-instance v31, Ljava/lang/StringBuilder;

    #@70a
    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    #@70d
    const-string/jumbo v32, "countryCodeForMcc error"

    #@710
    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@713
    move-result-object v31

    #@714
    move-object/from16 v0, v31

    #@716
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@719
    move-result-object v31

    #@71a
    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@71d
    move-result-object v31

    #@71e
    move-object/from16 v0, p0

    #@720
    move-object/from16 v1, v31

    #@722
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->loge(Ljava/lang/String;)V

    #@725
    goto :goto_13

    #@726
    .line 3184
    .end local v6    # "ex":Ljava/lang/StringIndexOutOfBoundsException;
    :catch_1
    move-exception v5

    #@727
    .line 3185
    .local v5, "ex":Ljava/lang/NumberFormatException;
    new-instance v31, Ljava/lang/StringBuilder;

    #@729
    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    #@72c
    const-string/jumbo v32, "countryCodeForMcc error"

    #@72f
    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@732
    move-result-object v31

    #@733
    move-object/from16 v0, v31

    #@735
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@738
    move-result-object v31

    #@739
    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@73c
    move-result-object v31

    #@73d
    move-object/from16 v0, p0

    #@73f
    move-object/from16 v1, v31

    #@741
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->loge(Ljava/lang/String;)V

    #@744
    goto/16 :goto_13

    #@746
    .line 3202
    .end local v5    # "ex":Ljava/lang/NumberFormatException;
    .end local v23    # "isoCountryCode":Ljava/lang/String;
    .end local v24    # "mcc":Ljava/lang/String;
    :cond_37
    const/16 v31, 0x1

    #@748
    goto/16 :goto_11

    #@74a
    .line 3232
    .end local v25    # "operatorNumeric":Ljava/lang/String;
    .end local v26    # "prevOperatorNumeric":Ljava/lang/String;
    :cond_38
    move-object/from16 v0, p0

    #@74c
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@74e
    move-object/from16 v31, v0

    #@750
    const/16 v32, 0x0

    #@752
    invoke-virtual/range {v31 .. v32}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifyDataConnection(Ljava/lang/String;)V

    #@755
    goto/16 :goto_12
.end method

.method public powerOffRadioSafely(Lcom/android/internal/telephony/dataconnection/DcTracker;)V
    .locals 8
    .param p1, "dcTracker"    # Lcom/android/internal/telephony/dataconnection/DcTracker;

    #@0
    .prologue
    .line 4315
    monitor-enter p0

    #@1
    .line 4316
    :try_start_0
    iget-boolean v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPendingRadioPowerOffAfterDataOff:Z

    #@3
    if-nez v5, :cond_2

    #@5
    .line 4317
    iget-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@7
    invoke-virtual {v5}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    #@a
    move-result v5

    #@b
    if-nez v5, :cond_0

    #@d
    iget-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@f
    invoke-virtual {v5}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeCdmaLte()Z

    #@12
    move-result v5

    #@13
    if-eqz v5, :cond_8

    #@15
    .line 4318
    :cond_0
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    #@18
    move-result v1

    #@19
    .line 4321
    .local v1, "dds":I
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->isDisconnected()Z

    #@1c
    move-result v5

    #@1d
    if-eqz v5, :cond_3

    #@1f
    .line 4322
    iget-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@21
    invoke-virtual {v5}, Lcom/android/internal/telephony/GsmCdmaPhone;->getSubId()I

    #@24
    move-result v5

    #@25
    if-eq v1, v5, :cond_1

    #@27
    .line 4323
    iget-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@29
    invoke-virtual {v5}, Lcom/android/internal/telephony/GsmCdmaPhone;->getSubId()I

    #@2c
    move-result v5

    #@2d
    if-eq v1, v5, :cond_3

    #@2f
    .line 4324
    invoke-static {}, Lcom/android/internal/telephony/ProxyController;->getInstance()Lcom/android/internal/telephony/ProxyController;

    #@32
    move-result-object v5

    #@33
    invoke-virtual {v5, v1}, Lcom/android/internal/telephony/ProxyController;->isDataDisconnected(I)Z

    #@36
    move-result v5

    #@37
    .line 4321
    if-eqz v5, :cond_3

    #@39
    .line 4326
    :cond_1
    const-string/jumbo v5, "radioTurnedOff"

    #@3c
    invoke-virtual {p1, v5}, Lcom/android/internal/telephony/dataconnection/DcTracker;->cleanUpAllConnections(Ljava/lang/String;)V

    #@3f
    .line 4327
    const-string/jumbo v5, "Data disconnected, turn off radio right away."

    #@42
    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    #@45
    .line 4328
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->hangupAndPowerOff()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@48
    .end local v1    # "dds":I
    :cond_2
    :goto_0
    monitor-exit p0

    #@49
    .line 4314
    return-void

    #@4a
    .line 4331
    .restart local v1    # "dds":I
    :cond_3
    :try_start_1
    iget-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@4c
    invoke-virtual {v5}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    #@4f
    move-result v5

    #@50
    if-eqz v5, :cond_4

    #@52
    iget-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@54
    invoke-virtual {v5}, Lcom/android/internal/telephony/GsmCdmaPhone;->isInCall()Z

    #@57
    move-result v5

    #@58
    if-eqz v5, :cond_4

    #@5a
    .line 4332
    iget-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@5c
    iget-object v5, v5, Lcom/android/internal/telephony/GsmCdmaPhone;->mCT:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    #@5e
    iget-object v5, v5, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/GsmCdmaCall;

    #@60
    invoke-virtual {v5}, Lcom/android/internal/telephony/GsmCdmaCall;->hangupIfAlive()V

    #@63
    .line 4333
    iget-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@65
    iget-object v5, v5, Lcom/android/internal/telephony/GsmCdmaPhone;->mCT:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    #@67
    iget-object v5, v5, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    #@69
    invoke-virtual {v5}, Lcom/android/internal/telephony/GsmCdmaCall;->hangupIfAlive()V

    #@6c
    .line 4334
    iget-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@6e
    iget-object v5, v5, Lcom/android/internal/telephony/GsmCdmaPhone;->mCT:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    #@70
    iget-object v5, v5, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    #@72
    invoke-virtual {v5}, Lcom/android/internal/telephony/GsmCdmaCall;->hangupIfAlive()V

    #@75
    .line 4336
    :cond_4
    const-string/jumbo v5, "radioTurnedOff"

    #@78
    invoke-virtual {p1, v5}, Lcom/android/internal/telephony/dataconnection/DcTracker;->cleanUpAllConnections(Ljava/lang/String;)V

    #@7b
    .line 4337
    iget-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@7d
    invoke-virtual {v5}, Lcom/android/internal/telephony/GsmCdmaPhone;->getSubId()I

    #@80
    move-result v5

    #@81
    if-eq v1, v5, :cond_5

    #@83
    .line 4338
    invoke-static {}, Lcom/android/internal/telephony/ProxyController;->getInstance()Lcom/android/internal/telephony/ProxyController;

    #@86
    move-result-object v5

    #@87
    invoke-virtual {v5, v1}, Lcom/android/internal/telephony/ProxyController;->isDataDisconnected(I)Z

    #@8a
    move-result v5

    #@8b
    if-eqz v5, :cond_6

    #@8d
    .line 4346
    :cond_5
    :goto_1
    invoke-static {p0}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    #@90
    move-result-object v3

    #@91
    .line 4347
    .local v3, "msg":Landroid/os/Message;
    const/16 v5, 0x26

    #@93
    iput v5, v3, Landroid/os/Message;->what:I

    #@95
    .line 4348
    iget v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPendingRadioPowerOffAfterDataOffTag:I

    #@97
    add-int/lit8 v5, v5, 0x1

    #@99
    iput v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPendingRadioPowerOffAfterDataOffTag:I

    #@9b
    iput v5, v3, Landroid/os/Message;->arg1:I

    #@9d
    .line 4349
    const-wide/16 v6, 0x7530

    #@9f
    invoke-virtual {p0, v3, v6, v7}, Lcom/android/internal/telephony/ServiceStateTracker;->sendMessageDelayed(Landroid/os/Message;J)Z

    #@a2
    move-result v5

    #@a3
    if-eqz v5, :cond_7

    #@a5
    .line 4350
    const-string/jumbo v5, "Wait upto 30s for data to disconnect, then turn off radio."

    #@a8
    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    #@ab
    .line 4351
    const/4 v5, 0x1

    #@ac
    iput-boolean v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPendingRadioPowerOffAfterDataOff:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@ae
    goto :goto_0

    #@af
    .line 4315
    .end local v1    # "dds":I
    .end local v3    # "msg":Landroid/os/Message;
    :catchall_0
    move-exception v5

    #@b0
    monitor-exit p0

    #@b1
    throw v5

    #@b2
    .line 4339
    .restart local v1    # "dds":I
    :cond_6
    :try_start_2
    const-string/jumbo v5, "Data is active on DDS.  Wait for all data disconnect"

    #@b5
    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    #@b8
    .line 4342
    invoke-static {}, Lcom/android/internal/telephony/ProxyController;->getInstance()Lcom/android/internal/telephony/ProxyController;

    #@bb
    move-result-object v5

    #@bc
    .line 4343
    const/16 v6, 0x31

    #@be
    const/4 v7, 0x0

    #@bf
    .line 4342
    invoke-virtual {v5, v1, p0, v6, v7}, Lcom/android/internal/telephony/ProxyController;->registerForAllDataDisconnected(ILandroid/os/Handler;ILjava/lang/Object;)V

    #@c2
    .line 4344
    const/4 v5, 0x1

    #@c3
    iput-boolean v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPendingRadioPowerOffAfterDataOff:Z

    #@c5
    goto :goto_1

    #@c6
    .line 4353
    .restart local v3    # "msg":Landroid/os/Message;
    :cond_7
    const-string/jumbo v5, "Cannot send delayed Msg, turn off radio right away."

    #@c9
    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    #@cc
    .line 4354
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->hangupAndPowerOff()V

    #@cf
    .line 4355
    const/4 v5, 0x0

    #@d0
    iput-boolean v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPendingRadioPowerOffAfterDataOff:Z

    #@d2
    goto/16 :goto_0

    #@d4
    .line 4363
    .end local v1    # "dds":I
    .end local v3    # "msg":Landroid/os/Message;
    :cond_8
    iget-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@d6
    invoke-virtual {v5}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    #@d9
    move-result-object v5

    #@da
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@dd
    move-result-object v5

    #@de
    .line 4364
    const v6, 0x1070044

    #@e1
    .line 4363
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    #@e4
    move-result-object v4

    #@e5
    .line 4365
    .local v4, "networkNotClearData":[Ljava/lang/String;
    iget-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@e7
    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    #@ea
    move-result-object v0

    #@eb
    .line 4366
    .local v0, "currentNetwork":Ljava/lang/String;
    if-eqz v4, :cond_a

    #@ed
    if-eqz v0, :cond_a

    #@ef
    .line 4367
    const/4 v2, 0x0

    #@f0
    .local v2, "i":I
    :goto_2
    array-length v5, v4

    #@f1
    if-ge v2, v5, :cond_a

    #@f3
    .line 4368
    aget-object v5, v4, v2

    #@f5
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@f8
    move-result v5

    #@f9
    if-eqz v5, :cond_9

    #@fb
    .line 4371
    new-instance v5, Ljava/lang/StringBuilder;

    #@fd
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@100
    const-string/jumbo v6, "Not disconnecting data for "

    #@103
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@106
    move-result-object v5

    #@107
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10a
    move-result-object v5

    #@10b
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@10e
    move-result-object v5

    #@10f
    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    #@112
    .line 4372
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->hangupAndPowerOff()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@115
    monitor-exit p0

    #@116
    .line 4373
    return-void

    #@117
    .line 4367
    :cond_9
    add-int/lit8 v2, v2, 0x1

    #@119
    goto :goto_2

    #@11a
    .line 4379
    .end local v2    # "i":I
    :cond_a
    :try_start_3
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->isDisconnected()Z

    #@11d
    move-result v5

    #@11e
    if-eqz v5, :cond_b

    #@120
    .line 4381
    const-string/jumbo v5, "radioTurnedOff"

    #@123
    invoke-virtual {p1, v5}, Lcom/android/internal/telephony/dataconnection/DcTracker;->cleanUpAllConnections(Ljava/lang/String;)V

    #@126
    .line 4382
    const-string/jumbo v5, "Data disconnected, turn off radio right away."

    #@129
    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    #@12c
    .line 4383
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->hangupAndPowerOff()V

    #@12f
    goto/16 :goto_0

    #@131
    .line 4385
    :cond_b
    const-string/jumbo v5, "radioTurnedOff"

    #@134
    invoke-virtual {p1, v5}, Lcom/android/internal/telephony/dataconnection/DcTracker;->cleanUpAllConnections(Ljava/lang/String;)V

    #@137
    .line 4386
    invoke-static {p0}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    #@13a
    move-result-object v3

    #@13b
    .line 4387
    .restart local v3    # "msg":Landroid/os/Message;
    const/16 v5, 0x26

    #@13d
    iput v5, v3, Landroid/os/Message;->what:I

    #@13f
    .line 4388
    iget v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPendingRadioPowerOffAfterDataOffTag:I

    #@141
    add-int/lit8 v5, v5, 0x1

    #@143
    iput v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPendingRadioPowerOffAfterDataOffTag:I

    #@145
    iput v5, v3, Landroid/os/Message;->arg1:I

    #@147
    .line 4389
    const-wide/16 v6, 0x7530

    #@149
    invoke-virtual {p0, v3, v6, v7}, Lcom/android/internal/telephony/ServiceStateTracker;->sendMessageDelayed(Landroid/os/Message;J)Z

    #@14c
    move-result v5

    #@14d
    if-eqz v5, :cond_c

    #@14f
    .line 4391
    const-string/jumbo v5, "Wait upto 30s for data to disconnect, then turn off radio."

    #@152
    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    #@155
    .line 4392
    const/4 v5, 0x1

    #@156
    iput-boolean v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPendingRadioPowerOffAfterDataOff:Z

    #@158
    goto/16 :goto_0

    #@15a
    .line 4394
    :cond_c
    const-string/jumbo v5, "Cannot send delayed Msg, turn off radio right away."

    #@15d
    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    #@160
    .line 4395
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->hangupAndPowerOff()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@163
    goto/16 :goto_0
.end method

.method public processPendingRadioPowerOffAfterDataOff()Z
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 4409
    monitor-enter p0

    #@2
    .line 4410
    :try_start_0
    iget-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPendingRadioPowerOffAfterDataOff:Z

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 4411
    const-string/jumbo v0, "Process pending request to turn radio off."

    #@9
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    #@c
    .line 4412
    iget v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPendingRadioPowerOffAfterDataOffTag:I

    #@e
    add-int/lit8 v0, v0, 0x1

    #@10
    iput v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPendingRadioPowerOffAfterDataOffTag:I

    #@12
    .line 4413
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->hangupAndPowerOff()V

    #@15
    .line 4414
    const/4 v0, 0x0

    #@16
    iput-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPendingRadioPowerOffAfterDataOff:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    .line 4415
    const/4 v0, 0x1

    #@19
    monitor-exit p0

    #@1a
    return v0

    #@1b
    :cond_0
    monitor-exit p0

    #@1c
    .line 4417
    return v1

    #@1d
    .line 4409
    :catchall_0
    move-exception v0

    #@1e
    monitor-exit p0

    #@1f
    throw v0
.end method

.method public reRegisterNetwork(Landroid/os/Message;)V
    .locals 2
    .param p1, "onComplete"    # Landroid/os/Message;

    #@0
    .prologue
    .line 809
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@2
    .line 810
    const/16 v1, 0x13

    #@4
    invoke-virtual {p0, v1, p1}, Lcom/android/internal/telephony/ServiceStateTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@7
    move-result-object v1

    #@8
    .line 809
    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getPreferredNetworkType(Landroid/os/Message;)V

    #@b
    .line 808
    return-void
.end method

.method public registerForDataConnectionAttached(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 4206
    new-instance v0, Landroid/os/Registrant;

    #@2
    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    #@5
    .line 4207
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mAttachedRegistrants:Landroid/os/RegistrantList;

    #@7
    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    #@a
    .line 4209
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getCurrentDataConnectionState()I

    #@d
    move-result v1

    #@e
    if-nez v1, :cond_0

    #@10
    .line 4210
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    #@13
    .line 4205
    :cond_0
    return-void
.end method

.method public registerForDataConnectionDetached(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 4224
    new-instance v0, Landroid/os/Registrant;

    #@2
    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    #@5
    .line 4225
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDetachedRegistrants:Landroid/os/RegistrantList;

    #@7
    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    #@a
    .line 4227
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getCurrentDataConnectionState()I

    #@d
    move-result v1

    #@e
    if-eqz v1, :cond_0

    #@10
    .line 4228
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    #@13
    .line 4223
    :cond_0
    return-void
.end method

.method public registerForDataRegStateOrRatChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 4245
    new-instance v0, Landroid/os/Registrant;

    #@2
    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    #@5
    .line 4246
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDataRegStateOrRatChangedRegistrants:Landroid/os/RegistrantList;

    #@7
    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    #@a
    .line 4247
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->notifyDataRegStateRilRadioTechnologyChanged()V

    #@d
    .line 4244
    return-void
.end method

.method public registerForDataRoamingOff(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 787
    new-instance v0, Landroid/os/Registrant;

    #@2
    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    #@5
    .line 788
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDataRoamingOffRegistrants:Landroid/os/RegistrantList;

    #@7
    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    #@a
    .line 790
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@c
    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    #@f
    move-result v1

    #@10
    if-nez v1, :cond_0

    #@12
    .line 791
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    #@15
    .line 786
    :cond_0
    return-void
.end method

.method public registerForDataRoamingOn(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 766
    new-instance v0, Landroid/os/Registrant;

    #@2
    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    #@5
    .line 767
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDataRoamingOnRegistrants:Landroid/os/RegistrantList;

    #@7
    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    #@a
    .line 769
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@c
    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    #@f
    move-result v1

    #@10
    if-eqz v1, :cond_0

    #@12
    .line 770
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    #@15
    .line 765
    :cond_0
    return-void
.end method

.method public registerForNetworkAttached(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 4260
    new-instance v0, Landroid/os/Registrant;

    #@2
    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    #@5
    .line 4262
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNetworkAttachedRegistrants:Landroid/os/RegistrantList;

    #@7
    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    #@a
    .line 4263
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@c
    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    #@f
    move-result v1

    #@10
    if-nez v1, :cond_0

    #@12
    .line 4264
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    #@15
    .line 4259
    :cond_0
    return-void
.end method

.method public registerForPsRestrictedDisabled(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 4297
    new-instance v0, Landroid/os/Registrant;

    #@2
    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    #@5
    .line 4298
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPsRestrictDisabledRegistrants:Landroid/os/RegistrantList;

    #@7
    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    #@a
    .line 4300
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    #@c
    invoke-virtual {v1}, Lcom/android/internal/telephony/RestrictedState;->isPsRestricted()Z

    #@f
    move-result v1

    #@10
    if-eqz v1, :cond_0

    #@12
    .line 4301
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    #@15
    .line 4296
    :cond_0
    return-void
.end method

.method public registerForPsRestrictedEnabled(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 4278
    new-instance v0, Landroid/os/Registrant;

    #@2
    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    #@5
    .line 4279
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPsRestrictEnabledRegistrants:Landroid/os/RegistrantList;

    #@7
    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    #@a
    .line 4281
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    #@c
    invoke-virtual {v1}, Lcom/android/internal/telephony/RestrictedState;->isPsRestricted()Z

    #@f
    move-result v1

    #@10
    if-eqz v1, :cond_0

    #@12
    .line 4282
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    #@15
    .line 4277
    :cond_0
    return-void
.end method

.method public registerForSubscriptionInfoReady(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 4594
    new-instance v0, Landroid/os/Registrant;

    #@2
    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    #@5
    .line 4595
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCdmaForSubscriptionInfoReadyRegistrants:Landroid/os/RegistrantList;

    #@7
    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    #@a
    .line 4597
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->isMinInfoReady()Z

    #@d
    move-result v1

    #@e
    if-eqz v1, :cond_0

    #@10
    .line 4598
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    #@13
    .line 4593
    :cond_0
    return-void
.end method

.method public registerForVoiceRoamingOff(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 745
    new-instance v0, Landroid/os/Registrant;

    #@2
    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    #@5
    .line 746
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mVoiceRoamingOffRegistrants:Landroid/os/RegistrantList;

    #@7
    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    #@a
    .line 748
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@c
    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getVoiceRoaming()Z

    #@f
    move-result v1

    #@10
    if-nez v1, :cond_0

    #@12
    .line 749
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    #@15
    .line 744
    :cond_0
    return-void
.end method

.method public registerForVoiceRoamingOn(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 724
    new-instance v0, Landroid/os/Registrant;

    #@2
    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    #@5
    .line 725
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mVoiceRoamingOnRegistrants:Landroid/os/RegistrantList;

    #@7
    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    #@a
    .line 727
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@c
    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getVoiceRoaming()Z

    #@f
    move-result v1

    #@10
    if-eqz v1, :cond_0

    #@12
    .line 728
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    #@15
    .line 723
    :cond_0
    return-void
.end method

.method public requestShutdown()V
    .locals 1

    #@0
    .prologue
    .line 636
    iget-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDeviceShuttingDown:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    return-void

    #@5
    .line 637
    :cond_0
    const/4 v0, 0x1

    #@6
    iput-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDeviceShuttingDown:Z

    #@8
    .line 638
    const/4 v0, 0x0

    #@9
    iput-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDesiredPowerState:Z

    #@b
    .line 639
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->setPowerStateToDesired()V

    #@e
    .line 635
    return-void
.end method

.method protected resetServiceStateInIwlanMode()V
    .locals 5

    #@0
    .prologue
    const/16 v4, 0x12

    #@2
    .line 4916
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@4
    invoke-interface {v2}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    #@7
    move-result-object v2

    #@8
    sget-object v3, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_OFF:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    #@a
    if-ne v2, v3, :cond_1

    #@c
    .line 4917
    const/4 v1, 0x0

    #@d
    .line 4918
    .local v1, "resetIwlanRatVal":Z
    const-string/jumbo v2, "set service state as POWER_OFF"

    #@10
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    #@13
    .line 4920
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@15
    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    #@18
    move-result v2

    #@19
    .line 4919
    if-ne v4, v2, :cond_0

    #@1b
    .line 4921
    new-instance v2, Ljava/lang/StringBuilder;

    #@1d
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@20
    const-string/jumbo v3, "pollStateDone: mNewSS = "

    #@23
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v2

    #@27
    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@29
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v2

    #@2d
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@30
    move-result-object v2

    #@31
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    #@34
    .line 4922
    const-string/jumbo v2, "pollStateDone: reset iwlan RAT value"

    #@37
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    #@3a
    .line 4923
    const/4 v1, 0x1

    #@3b
    .line 4926
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@3d
    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    #@40
    move-result-object v0

    #@41
    .line 4927
    .local v0, "operator":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@43
    invoke-virtual {v2}, Landroid/telephony/ServiceState;->setStateOff()V

    #@46
    .line 4928
    if-eqz v1, :cond_1

    #@48
    .line 4929
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@4a
    invoke-virtual {v2, v4}, Landroid/telephony/ServiceState;->setRilDataRadioTechnology(I)V

    #@4d
    .line 4930
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@4f
    const/4 v3, 0x0

    #@50
    invoke-virtual {v2, v3}, Landroid/telephony/ServiceState;->setDataRegState(I)V

    #@53
    .line 4931
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@55
    invoke-virtual {v2, v0}, Landroid/telephony/ServiceState;->setOperatorAlphaLong(Ljava/lang/String;)V

    #@58
    .line 4932
    new-instance v2, Ljava/lang/StringBuilder;

    #@5a
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@5d
    const-string/jumbo v3, "pollStateDone: mNewSS = "

    #@60
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@63
    move-result-object v2

    #@64
    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@66
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@69
    move-result-object v2

    #@6a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6d
    move-result-object v2

    #@6e
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    #@71
    .line 4915
    .end local v0    # "operator":Ljava/lang/String;
    .end local v1    # "resetIwlanRatVal":Z
    :cond_1
    return-void
.end method

.method public setImsRegistrationState(Z)V
    .locals 4
    .param p1, "registered"    # Z

    #@0
    .prologue
    .line 2449
    new-instance v2, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v3, "ImsRegistrationState - registered : "

    #@8
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v2

    #@c
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@f
    move-result-object v2

    #@10
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13
    move-result-object v2

    #@14
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    #@17
    .line 2451
    iget-boolean v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mImsRegistrationOnOff:Z

    #@19
    if-eqz v2, :cond_0

    #@1b
    if-eqz p1, :cond_1

    #@1d
    .line 2464
    :cond_0
    iput-boolean p1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mImsRegistrationOnOff:Z

    #@1f
    .line 2448
    return-void

    #@20
    .line 2452
    :cond_1
    iget-boolean v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mAlarmSwitch:Z

    #@22
    if-eqz v2, :cond_0

    #@24
    .line 2453
    iput-boolean p1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mImsRegistrationOnOff:Z

    #@26
    .line 2455
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@28
    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    #@2b
    move-result-object v1

    #@2c
    .line 2456
    .local v1, "context":Landroid/content/Context;
    const-string/jumbo v2, "alarm"

    #@2f
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@32
    move-result-object v0

    #@33
    check-cast v0, Landroid/app/AlarmManager;

    #@35
    .line 2457
    .local v0, "am":Landroid/app/AlarmManager;
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRadioOffIntent:Landroid/app/PendingIntent;

    #@37
    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    #@3a
    .line 2458
    const/4 v2, 0x0

    #@3b
    iput-boolean v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mAlarmSwitch:Z

    #@3d
    .line 2460
    const/16 v2, 0x2d

    #@3f
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    #@42
    move-result-object v2

    #@43
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->sendMessage(Landroid/os/Message;)Z

    #@46
    .line 2461
    return-void
.end method

.method protected setOperatorIdd(Ljava/lang/String;)V
    .locals 4
    .param p1, "operatorNumeric"    # Ljava/lang/String;

    #@0
    .prologue
    .line 3354
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mHbpcdUtils:Lcom/android/internal/telephony/HbpcdUtils;

    #@2
    .line 3355
    const/4 v2, 0x0

    #@3
    const/4 v3, 0x3

    #@4
    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@7
    move-result-object v2

    #@8
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@b
    move-result v2

    #@c
    .line 3354
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/HbpcdUtils;->getIddByMcc(I)Ljava/lang/String;

    #@f
    move-result-object v0

    #@10
    .line 3356
    .local v0, "idd":Ljava/lang/String;
    if-eqz v0, :cond_0

    #@12
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    #@15
    move-result v1

    #@16
    if-eqz v1, :cond_1

    #@18
    .line 3361
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@1a
    const-string/jumbo v2, "gsm.operator.idpstring"

    #@1d
    const-string/jumbo v3, "+"

    #@20
    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/GsmCdmaPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    #@23
    .line 3351
    :goto_0
    return-void

    #@24
    .line 3357
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@26
    const-string/jumbo v2, "gsm.operator.idpstring"

    #@29
    invoke-virtual {v1, v2, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    #@2c
    goto :goto_0
.end method

.method protected setPowerStateToDesired()V
    .locals 9

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    const/4 v7, 0x1

    #@2
    const/4 v6, 0x0

    #@3
    .line 2314
    new-instance v4, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v5, "mDeviceShuttingDown="

    #@b
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v4

    #@f
    iget-boolean v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDeviceShuttingDown:Z

    #@11
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@14
    move-result-object v4

    #@15
    .line 2315
    const-string/jumbo v5, ", mDesiredPowerState="

    #@18
    .line 2314
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v4

    #@1c
    .line 2315
    iget-boolean v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDesiredPowerState:Z

    #@1e
    .line 2314
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@21
    move-result-object v4

    #@22
    .line 2316
    const-string/jumbo v5, ", getRadioState="

    #@25
    .line 2314
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v4

    #@29
    .line 2316
    iget-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@2b
    invoke-interface {v5}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    #@2e
    move-result-object v5

    #@2f
    .line 2314
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v4

    #@33
    .line 2317
    const-string/jumbo v5, ", mPowerOffDelayNeed="

    #@36
    .line 2314
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v4

    #@3a
    .line 2317
    iget-boolean v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPowerOffDelayNeed:Z

    #@3c
    .line 2314
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v4

    #@40
    .line 2318
    const-string/jumbo v5, ", mAlarmSwitch="

    #@43
    .line 2314
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v4

    #@47
    .line 2318
    iget-boolean v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mAlarmSwitch:Z

    #@49
    .line 2314
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v4

    #@4d
    .line 2319
    const-string/jumbo v5, ", mRadioDisabledByCarrier="

    #@50
    .line 2314
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v4

    #@54
    .line 2319
    iget-boolean v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRadioDisabledByCarrier:Z

    #@56
    .line 2314
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@59
    move-result-object v4

    #@5a
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5d
    move-result-object v4

    #@5e
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    #@61
    .line 2322
    iget-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@63
    invoke-virtual {v4}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    #@66
    move-result v4

    #@67
    if-eqz v4, :cond_0

    #@69
    iget-boolean v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mAlarmSwitch:Z

    #@6b
    if-eqz v4, :cond_0

    #@6d
    .line 2323
    const-string/jumbo v4, "mAlarmSwitch == true"

    #@70
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    #@73
    .line 2324
    iget-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@75
    invoke-virtual {v4}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    #@78
    move-result-object v1

    #@79
    .line 2325
    .local v1, "context":Landroid/content/Context;
    const-string/jumbo v4, "alarm"

    #@7c
    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@7f
    move-result-object v0

    #@80
    check-cast v0, Landroid/app/AlarmManager;

    #@82
    .line 2326
    .local v0, "am":Landroid/app/AlarmManager;
    iget-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRadioOffIntent:Landroid/app/PendingIntent;

    #@84
    invoke-virtual {v0, v4}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    #@87
    .line 2327
    iput-boolean v6, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mAlarmSwitch:Z

    #@89
    .line 2331
    .end local v0    # "am":Landroid/app/AlarmManager;
    .end local v1    # "context":Landroid/content/Context;
    :cond_0
    iget-boolean v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDesiredPowerState:Z

    #@8b
    if-eqz v4, :cond_1

    #@8d
    iget-boolean v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRadioDisabledByCarrier:Z

    #@8f
    if-eqz v4, :cond_5

    #@91
    .line 2334
    :cond_1
    iget-boolean v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDesiredPowerState:Z

    #@93
    if-eqz v4, :cond_2

    #@95
    iget-boolean v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRadioDisabledByCarrier:Z

    #@97
    if-eqz v4, :cond_8

    #@99
    :cond_2
    iget-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@9b
    invoke-interface {v4}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    #@9e
    move-result-object v4

    #@9f
    invoke-virtual {v4}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    #@a2
    move-result v4

    #@a3
    if-eqz v4, :cond_8

    #@a5
    .line 2336
    iget-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@a7
    invoke-virtual {v4}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    #@aa
    move-result v4

    #@ab
    if-eqz v4, :cond_7

    #@ad
    iget-boolean v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPowerOffDelayNeed:Z

    #@af
    if-eqz v4, :cond_7

    #@b1
    .line 2337
    iget-boolean v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mImsRegistrationOnOff:Z

    #@b3
    if-eqz v4, :cond_3

    #@b5
    iget-boolean v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mAlarmSwitch:Z

    #@b7
    if-eqz v4, :cond_6

    #@b9
    .line 2350
    :cond_3
    iget-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@bb
    iget-object v2, v4, Lcom/android/internal/telephony/GsmCdmaPhone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTracker;

    #@bd
    .line 2351
    .local v2, "dcTracker":Lcom/android/internal/telephony/dataconnection/DcTracker;
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->powerOffRadioSafely(Lcom/android/internal/telephony/dataconnection/DcTracker;)V

    #@c0
    .line 2312
    .end local v2    # "dcTracker":Lcom/android/internal/telephony/dataconnection/DcTracker;
    :cond_4
    :goto_0
    return-void

    #@c1
    .line 2332
    :cond_5
    iget-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@c3
    invoke-interface {v4}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    #@c6
    move-result-object v4

    #@c7
    sget-object v5, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_OFF:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    #@c9
    if-ne v4, v5, :cond_1

    #@cb
    .line 2333
    iget-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@cd
    invoke-interface {v4, v7, v8}, Lcom/android/internal/telephony/CommandsInterface;->setRadioPower(ZLandroid/os/Message;)V

    #@d0
    goto :goto_0

    #@d1
    .line 2338
    :cond_6
    const-string/jumbo v4, "mImsRegistrationOnOff == true"

    #@d4
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    #@d7
    .line 2339
    iget-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@d9
    invoke-virtual {v4}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    #@dc
    move-result-object v1

    #@dd
    .line 2340
    .restart local v1    # "context":Landroid/content/Context;
    const-string/jumbo v4, "alarm"

    #@e0
    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@e3
    move-result-object v0

    #@e4
    check-cast v0, Landroid/app/AlarmManager;

    #@e6
    .line 2342
    .restart local v0    # "am":Landroid/app/AlarmManager;
    new-instance v3, Landroid/content/Intent;

    #@e8
    const-string/jumbo v4, "android.intent.action.ACTION_RADIO_OFF"

    #@eb
    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@ee
    .line 2343
    .local v3, "intent":Landroid/content/Intent;
    invoke-static {v1, v6, v3, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    #@f1
    move-result-object v4

    #@f2
    iput-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRadioOffIntent:Landroid/app/PendingIntent;

    #@f4
    .line 2345
    iput-boolean v7, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mAlarmSwitch:Z

    #@f6
    .line 2346
    const-string/jumbo v4, "Alarm setting"

    #@f9
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    #@fc
    .line 2348
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@ff
    move-result-wide v4

    #@100
    const-wide/16 v6, 0xbb8

    #@102
    add-long/2addr v4, v6

    #@103
    iget-object v6, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRadioOffIntent:Landroid/app/PendingIntent;

    #@105
    .line 2347
    const/4 v7, 0x2

    #@106
    invoke-virtual {v0, v7, v4, v5, v6}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    #@109
    goto :goto_0

    #@10a
    .line 2354
    .end local v0    # "am":Landroid/app/AlarmManager;
    .end local v1    # "context":Landroid/content/Context;
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_7
    iget-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@10c
    iget-object v2, v4, Lcom/android/internal/telephony/GsmCdmaPhone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTracker;

    #@10e
    .line 2355
    .restart local v2    # "dcTracker":Lcom/android/internal/telephony/dataconnection/DcTracker;
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->powerOffRadioSafely(Lcom/android/internal/telephony/dataconnection/DcTracker;)V

    #@111
    goto :goto_0

    #@112
    .line 2357
    .end local v2    # "dcTracker":Lcom/android/internal/telephony/dataconnection/DcTracker;
    :cond_8
    iget-boolean v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDeviceShuttingDown:Z

    #@114
    if-eqz v4, :cond_4

    #@116
    iget-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@118
    invoke-interface {v4}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    #@11b
    move-result-object v4

    #@11c
    invoke-virtual {v4}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isAvailable()Z

    #@11f
    move-result v4

    #@120
    if-eqz v4, :cond_4

    #@122
    .line 2358
    iget-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@124
    invoke-interface {v4, v8}, Lcom/android/internal/telephony/CommandsInterface;->requestShutdown(Landroid/os/Message;)V

    #@127
    goto :goto_0
.end method

.method public setRadioPower(Z)V
    .locals 0
    .param p1, "power"    # Z

    #@0
    .prologue
    .line 815
    iput-boolean p1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDesiredPowerState:Z

    #@2
    .line 817
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->setPowerStateToDesired()V

    #@5
    .line 814
    return-void
.end method

.method public setRadioPowerFromCarrier(Z)V
    .locals 1
    .param p1, "enable"    # Z

    #@0
    .prologue
    .line 826
    if-eqz p1, :cond_0

    #@2
    const/4 v0, 0x0

    #@3
    :goto_0
    iput-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRadioDisabledByCarrier:Z

    #@5
    .line 827
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->setPowerStateToDesired()V

    #@8
    .line 825
    return-void

    #@9
    .line 826
    :cond_0
    const/4 v0, 0x1

    #@a
    goto :goto_0
.end method

.method protected setRoamingType(Landroid/telephony/ServiceState;)V
    .locals 12
    .param p1, "currentServiceState"    # Landroid/telephony/ServiceState;

    #@0
    .prologue
    const/4 v11, 0x3

    #@1
    const/4 v10, 0x2

    #@2
    const/4 v6, 0x1

    #@3
    const/4 v7, 0x0

    #@4
    .line 4806
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    #@7
    move-result v8

    #@8
    if-nez v8, :cond_2

    #@a
    move v5, v6

    #@b
    .line 4807
    .local v5, "isVoiceInService":Z
    :goto_0
    if-eqz v5, :cond_0

    #@d
    .line 4808
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getVoiceRoaming()Z

    #@10
    move-result v8

    #@11
    if-eqz v8, :cond_8

    #@13
    .line 4809
    iget-object v8, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@15
    invoke-virtual {v8}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    #@18
    move-result v8

    #@19
    if-eqz v8, :cond_4

    #@1b
    .line 4811
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getVoiceOperatorNumeric()Ljava/lang/String;

    #@1e
    move-result-object v8

    #@1f
    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/ServiceStateTracker;->inSameCountry(Ljava/lang/String;)Z

    #@22
    move-result v8

    #@23
    if-eqz v8, :cond_3

    #@25
    .line 4812
    invoke-virtual {p1, v10}, Landroid/telephony/ServiceState;->setVoiceRoamingType(I)V

    #@28
    .line 4849
    :cond_0
    :goto_1
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getDataRegState()I

    #@2b
    move-result v8

    #@2c
    if-nez v8, :cond_9

    #@2e
    const/4 v4, 0x1

    #@2f
    .line 4850
    .local v4, "isDataInService":Z
    :goto_2
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    #@32
    move-result v1

    #@33
    .line 4851
    .local v1, "dataRegType":I
    if-eqz v4, :cond_1

    #@35
    .line 4852
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    #@38
    move-result v8

    #@39
    if-nez v8, :cond_a

    #@3b
    .line 4853
    invoke-virtual {p1, v7}, Landroid/telephony/ServiceState;->setDataRoamingType(I)V

    #@3e
    .line 4804
    :cond_1
    :goto_3
    return-void

    #@3f
    .end local v1    # "dataRegType":I
    .end local v4    # "isDataInService":Z
    .end local v5    # "isVoiceInService":Z
    :cond_2
    move v5, v7

    #@40
    .line 4806
    goto :goto_0

    #@41
    .line 4815
    .restart local v5    # "isVoiceInService":Z
    :cond_3
    invoke-virtual {p1, v11}, Landroid/telephony/ServiceState;->setVoiceRoamingType(I)V

    #@44
    goto :goto_1

    #@45
    .line 4820
    :cond_4
    iget-object v8, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@47
    invoke-virtual {v8}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    #@4a
    move-result-object v8

    #@4b
    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@4e
    move-result-object v8

    #@4f
    .line 4821
    const v9, 0x1070047

    #@52
    .line 4820
    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getIntArray(I)[I

    #@55
    move-result-object v3

    #@56
    .line 4822
    .local v3, "intRoamingIndicators":[I
    if-eqz v3, :cond_6

    #@58
    array-length v8, v3

    #@59
    if-lez v8, :cond_6

    #@5b
    .line 4824
    invoke-virtual {p1, v10}, Landroid/telephony/ServiceState;->setVoiceRoamingType(I)V

    #@5e
    .line 4825
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getCdmaRoamingIndicator()I

    #@61
    move-result v0

    #@62
    .line 4826
    .local v0, "curRoamingIndicator":I
    const/4 v2, 0x0

    #@63
    .local v2, "i":I
    :goto_4
    array-length v8, v3

    #@64
    if-ge v2, v8, :cond_0

    #@66
    .line 4827
    aget v8, v3, v2

    #@68
    if-ne v0, v8, :cond_5

    #@6a
    .line 4828
    invoke-virtual {p1, v11}, Landroid/telephony/ServiceState;->setVoiceRoamingType(I)V

    #@6d
    goto :goto_1

    #@6e
    .line 4826
    :cond_5
    add-int/lit8 v2, v2, 0x1

    #@70
    goto :goto_4

    #@71
    .line 4835
    .end local v0    # "curRoamingIndicator":I
    .end local v2    # "i":I
    :cond_6
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getVoiceOperatorNumeric()Ljava/lang/String;

    #@74
    move-result-object v8

    #@75
    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/ServiceStateTracker;->inSameCountry(Ljava/lang/String;)Z

    #@78
    move-result v8

    #@79
    if-eqz v8, :cond_7

    #@7b
    .line 4836
    invoke-virtual {p1, v10}, Landroid/telephony/ServiceState;->setVoiceRoamingType(I)V

    #@7e
    goto :goto_1

    #@7f
    .line 4839
    :cond_7
    invoke-virtual {p1, v11}, Landroid/telephony/ServiceState;->setVoiceRoamingType(I)V

    #@82
    goto :goto_1

    #@83
    .line 4845
    .end local v3    # "intRoamingIndicators":[I
    :cond_8
    invoke-virtual {p1, v7}, Landroid/telephony/ServiceState;->setVoiceRoamingType(I)V

    #@86
    goto :goto_1

    #@87
    .line 4849
    :cond_9
    const/4 v4, 0x0

    #@88
    .restart local v4    # "isDataInService":Z
    goto :goto_2

    #@89
    .line 4855
    .restart local v1    # "dataRegType":I
    :cond_a
    iget-object v7, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@8b
    invoke-virtual {v7}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    #@8e
    move-result v7

    #@8f
    if-eqz v7, :cond_d

    #@91
    .line 4856
    invoke-static {v1}, Landroid/telephony/ServiceState;->isGsm(I)Z

    #@94
    move-result v7

    #@95
    if-eqz v7, :cond_c

    #@97
    .line 4857
    if-eqz v5, :cond_b

    #@99
    .line 4859
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getVoiceRoamingType()I

    #@9c
    move-result v6

    #@9d
    invoke-virtual {p1, v6}, Landroid/telephony/ServiceState;->setDataRoamingType(I)V

    #@a0
    goto :goto_3

    #@a1
    .line 4863
    :cond_b
    invoke-virtual {p1, v6}, Landroid/telephony/ServiceState;->setDataRoamingType(I)V

    #@a4
    goto :goto_3

    #@a5
    .line 4867
    :cond_c
    invoke-virtual {p1, v6}, Landroid/telephony/ServiceState;->setDataRoamingType(I)V

    #@a8
    goto :goto_3

    #@a9
    .line 4870
    :cond_d
    invoke-static {v1}, Landroid/telephony/ServiceState;->isCdma(I)Z

    #@ac
    move-result v7

    #@ad
    if-eqz v7, :cond_f

    #@af
    .line 4871
    if-eqz v5, :cond_e

    #@b1
    .line 4873
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getVoiceRoamingType()I

    #@b4
    move-result v6

    #@b5
    invoke-virtual {p1, v6}, Landroid/telephony/ServiceState;->setDataRoamingType(I)V

    #@b8
    goto :goto_3

    #@b9
    .line 4878
    :cond_e
    invoke-virtual {p1, v6}, Landroid/telephony/ServiceState;->setDataRoamingType(I)V

    #@bc
    goto :goto_3

    #@bd
    .line 4882
    :cond_f
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getDataOperatorNumeric()Ljava/lang/String;

    #@c0
    move-result-object v6

    #@c1
    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/ServiceStateTracker;->inSameCountry(Ljava/lang/String;)Z

    #@c4
    move-result v6

    #@c5
    if-eqz v6, :cond_10

    #@c7
    .line 4883
    invoke-virtual {p1, v10}, Landroid/telephony/ServiceState;->setDataRoamingType(I)V

    #@ca
    goto/16 :goto_3

    #@cc
    .line 4885
    :cond_10
    invoke-virtual {p1, v11}, Landroid/telephony/ServiceState;->setDataRoamingType(I)V

    #@cf
    goto/16 :goto_3
.end method

.method protected shouldFixTimeZoneNow(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 10
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p2, "operatorNumeric"    # Ljava/lang/String;
    .param p3, "prevOperatorNumeric"    # Ljava/lang/String;
    .param p4, "needToFixTimeZone"    # Z

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    .line 4493
    const/4 v7, 0x0

    #@2
    const/4 v8, 0x3

    #@3
    :try_start_0
    invoke-virtual {p2, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@6
    move-result-object v7

    #@7
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    move-result v4

    #@b
    .line 4506
    .local v4, "mcc":I
    const/4 v7, 0x0

    #@c
    const/4 v8, 0x3

    #@d
    :try_start_1
    invoke-virtual {p3, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@10
    move-result-object v7

    #@11
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    #@14
    move-result v5

    #@15
    .line 4512
    .local v5, "prevMcc":I
    :goto_0
    const/4 v3, 0x0

    #@16
    .line 4513
    .local v3, "iccCardExist":Z
    iget-object v7, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@18
    if-eqz v7, :cond_0

    #@1a
    .line 4514
    iget-object v7, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@1c
    invoke-virtual {v7}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getState()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    #@1f
    move-result-object v7

    #@20
    sget-object v8, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_UNKNOWN:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    #@22
    if-eq v7, v8, :cond_1

    #@24
    const/4 v3, 0x1

    #@25
    .line 4518
    :cond_0
    :goto_1
    if-eqz v3, :cond_2

    #@27
    if-eq v4, v5, :cond_2

    #@29
    const/4 v6, 0x1

    #@2a
    .line 4520
    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@2d
    move-result-wide v0

    #@2e
    .line 4521
    .local v0, "ctm":J
    new-instance v7, Ljava/lang/StringBuilder;

    #@30
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@33
    const-string/jumbo v8, "shouldFixTimeZoneNow: retVal="

    #@36
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v7

    #@3a
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v7

    #@3e
    .line 4522
    const-string/jumbo v8, " iccCardExist="

    #@41
    .line 4521
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v7

    #@45
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@48
    move-result-object v7

    #@49
    .line 4523
    const-string/jumbo v8, " operatorNumeric="

    #@4c
    .line 4521
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v7

    #@50
    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v7

    #@54
    .line 4523
    const-string/jumbo v8, " mcc="

    #@57
    .line 4521
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v7

    #@5b
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v7

    #@5f
    .line 4524
    const-string/jumbo v8, " prevOperatorNumeric="

    #@62
    .line 4521
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@65
    move-result-object v7

    #@66
    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@69
    move-result-object v7

    #@6a
    .line 4524
    const-string/jumbo v8, " prevMcc="

    #@6d
    .line 4521
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@70
    move-result-object v7

    #@71
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@74
    move-result-object v7

    #@75
    .line 4525
    const-string/jumbo v8, " needToFixTimeZone="

    #@78
    .line 4521
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7b
    move-result-object v7

    #@7c
    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@7f
    move-result-object v7

    #@80
    .line 4526
    const-string/jumbo v8, " ltod="

    #@83
    .line 4521
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@86
    move-result-object v7

    #@87
    .line 4526
    invoke-static {v0, v1}, Landroid/util/TimeUtils;->logTimeOfDay(J)Ljava/lang/String;

    #@8a
    move-result-object v8

    #@8b
    .line 4521
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8e
    move-result-object v7

    #@8f
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@92
    move-result-object v7

    #@93
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    #@96
    .line 4528
    return v6

    #@97
    .line 4494
    .end local v0    # "ctm":J
    .end local v3    # "iccCardExist":Z
    .end local v4    # "mcc":I
    .end local v5    # "prevMcc":I
    :catch_0
    move-exception v2

    #@98
    .line 4496
    .local v2, "e":Ljava/lang/Exception;
    new-instance v7, Ljava/lang/StringBuilder;

    #@9a
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@9d
    const-string/jumbo v8, "shouldFixTimeZoneNow: no mcc, operatorNumeric="

    #@a0
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a3
    move-result-object v7

    #@a4
    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a7
    move-result-object v7

    #@a8
    .line 4497
    const-string/jumbo v8, " retVal=false"

    #@ab
    .line 4496
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ae
    move-result-object v7

    #@af
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b2
    move-result-object v7

    #@b3
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    #@b6
    .line 4499
    return v9

    #@b7
    .line 4507
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v4    # "mcc":I
    :catch_1
    move-exception v2

    #@b8
    .line 4508
    .restart local v2    # "e":Ljava/lang/Exception;
    add-int/lit8 v5, v4, 0x1

    #@ba
    .restart local v5    # "prevMcc":I
    goto/16 :goto_0

    #@bc
    .line 4514
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v3    # "iccCardExist":Z
    :cond_1
    const/4 v3, 0x0

    #@bd
    goto/16 :goto_1

    #@bf
    .line 4518
    :cond_2
    move v6, p4

    #@c0
    .local v6, "retVal":Z
    goto/16 :goto_2
.end method

.method public unregisterForDataConnectionAttached(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 4214
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mAttachedRegistrants:Landroid/os/RegistrantList;

    #@2
    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    #@5
    .line 4213
    return-void
.end method

.method public unregisterForDataConnectionDetached(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 4232
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDetachedRegistrants:Landroid/os/RegistrantList;

    #@2
    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    #@5
    .line 4231
    return-void
.end method

.method public unregisterForDataRegStateOrRatChanged(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 4250
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDataRegStateOrRatChangedRegistrants:Landroid/os/RegistrantList;

    #@2
    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    #@5
    .line 4249
    return-void
.end method

.method public unregisterForDataRoamingOff(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 796
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDataRoamingOffRegistrants:Landroid/os/RegistrantList;

    #@2
    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    #@5
    .line 795
    return-void
.end method

.method public unregisterForDataRoamingOn(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 775
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDataRoamingOnRegistrants:Landroid/os/RegistrantList;

    #@2
    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    #@5
    .line 774
    return-void
.end method

.method public unregisterForNetworkAttached(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 4268
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNetworkAttachedRegistrants:Landroid/os/RegistrantList;

    #@2
    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    #@5
    .line 4267
    return-void
.end method

.method public unregisterForPsRestrictedDisabled(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 4306
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPsRestrictDisabledRegistrants:Landroid/os/RegistrantList;

    #@2
    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    #@5
    .line 4305
    return-void
.end method

.method public unregisterForPsRestrictedEnabled(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 4287
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPsRestrictEnabledRegistrants:Landroid/os/RegistrantList;

    #@2
    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    #@5
    .line 4286
    return-void
.end method

.method public unregisterForSubscriptionInfoReady(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 4603
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCdmaForSubscriptionInfoReadyRegistrants:Landroid/os/RegistrantList;

    #@2
    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    #@5
    .line 4602
    return-void
.end method

.method public unregisterForVoiceRoamingOff(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 754
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mVoiceRoamingOffRegistrants:Landroid/os/RegistrantList;

    #@2
    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    #@5
    .line 753
    return-void
.end method

.method public unregisterForVoiceRoamingOn(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 733
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mVoiceRoamingOnRegistrants:Landroid/os/RegistrantList;

    #@2
    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    #@5
    .line 732
    return-void
.end method

.method protected updateCarrierMccMncConfiguration(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 2
    .param p1, "newOp"    # Ljava/lang/String;
    .param p2, "oldOp"    # Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 4758
    if-nez p1, :cond_1

    #@2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_1

    #@8
    .line 4760
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v1, "update mccmnc="

    #@10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v0

    #@14
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v0

    #@18
    const-string/jumbo v1, " fromServiceState=true"

    #@1b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v0

    #@23
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    #@26
    .line 4761
    const/4 v0, 0x1

    #@27
    invoke-static {p3, p1, v0}, Lcom/android/internal/telephony/MccTable;->updateMccMncConfiguration(Landroid/content/Context;Ljava/lang/String;Z)V

    #@2a
    .line 4756
    :cond_0
    return-void

    #@2b
    .line 4759
    :cond_1
    if-eqz p1, :cond_0

    #@2d
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@30
    move-result v0

    #@31
    if-nez v0, :cond_0

    #@33
    goto :goto_0
.end method

.method protected updateOtaspState()V
    .locals 4

    #@0
    .prologue
    .line 1471
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getOtasp()I

    #@3
    move-result v1

    #@4
    .line 1472
    .local v1, "otaspMode":I
    iget v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCurrentOtaspMode:I

    #@6
    .line 1473
    .local v0, "oldOtaspMode":I
    iput v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCurrentOtaspMode:I

    #@8
    .line 1475
    iget v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCurrentOtaspMode:I

    #@a
    if-eq v0, v2, :cond_0

    #@c
    .line 1477
    new-instance v2, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    const-string/jumbo v3, "updateOtaspState: call notifyOtaspChanged old otaspMode="

    #@14
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v2

    #@18
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v2

    #@1c
    .line 1478
    const-string/jumbo v3, " new otaspMode="

    #@1f
    .line 1477
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v2

    #@23
    .line 1478
    iget v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCurrentOtaspMode:I

    #@25
    .line 1477
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@28
    move-result-object v2

    #@29
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c
    move-result-object v2

    #@2d
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    #@30
    .line 1480
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@32
    iget v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCurrentOtaspMode:I

    #@34
    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifyOtaspChanged(I)V

    #@37
    .line 1470
    :cond_0
    return-void
.end method

.method protected updatePhoneObject()V
    .locals 4

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 702
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@4
    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    #@7
    move-result-object v2

    #@8
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@b
    move-result-object v2

    #@c
    .line 703
    const v3, 0x1120099

    #@f
    .line 702
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@12
    move-result v2

    #@13
    if-eqz v2, :cond_3

    #@15
    .line 705
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@17
    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    #@1a
    move-result v2

    #@1b
    if-eqz v2, :cond_0

    #@1d
    .line 706
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@1f
    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    #@22
    move-result v2

    #@23
    const/4 v3, 0x2

    #@24
    if-ne v2, v3, :cond_1

    #@26
    .line 707
    .local v0, "isRegistered":Z
    :cond_0
    :goto_0
    if-nez v0, :cond_2

    #@28
    .line 708
    const-string/jumbo v1, "updatePhoneObject: Ignore update"

    #@2b
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    #@2e
    .line 709
    return-void

    #@2f
    .end local v0    # "isRegistered":Z
    :cond_1
    move v0, v1

    #@30
    .line 706
    goto :goto_0

    #@31
    .line 711
    .restart local v0    # "isRegistered":Z
    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@33
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@35
    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    #@38
    move-result v2

    #@39
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->updatePhoneObject(I)V

    #@3c
    .line 701
    .end local v0    # "isRegistered":Z
    :cond_3
    return-void
.end method

.method public updatePhoneType()V
    .locals 5

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    const/4 v4, 0x0

    #@2
    .line 555
    new-instance v0, Landroid/telephony/ServiceState;

    #@4
    invoke-direct {v0}, Landroid/telephony/ServiceState;-><init>()V

    #@7
    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@9
    .line 556
    new-instance v0, Landroid/telephony/ServiceState;

    #@b
    invoke-direct {v0}, Landroid/telephony/ServiceState;-><init>()V

    #@e
    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@10
    .line 557
    const-wide/16 v2, 0x0

    #@12
    iput-wide v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mLastCellInfoListTime:J

    #@14
    .line 558
    iput-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mLastCellInfoList:Ljava/util/List;

    #@16
    .line 559
    new-instance v0, Landroid/telephony/SignalStrength;

    #@18
    invoke-direct {v0}, Landroid/telephony/SignalStrength;-><init>()V

    #@1b
    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    #@1d
    .line 560
    new-instance v0, Lcom/android/internal/telephony/RestrictedState;

    #@1f
    invoke-direct {v0}, Lcom/android/internal/telephony/RestrictedState;-><init>()V

    #@22
    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    #@24
    .line 561
    iput-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mStartedGprsRegCheck:Z

    #@26
    .line 562
    iput-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mReportedGprsNoReg:Z

    #@28
    .line 563
    iput-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mMdn:Ljava/lang/String;

    #@2a
    .line 564
    iput-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mMin:Ljava/lang/String;

    #@2c
    .line 565
    iput-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPrlVersion:Ljava/lang/String;

    #@2e
    .line 566
    iput-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIsMinInfoReady:Z

    #@30
    .line 567
    iput-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNitzUpdatedTime:Z

    #@32
    .line 570
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->cancelPollState()V

    #@35
    .line 572
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@37
    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    #@3a
    move-result v0

    #@3b
    if-eqz v0, :cond_1

    #@3d
    .line 574
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    #@3f
    if-eqz v0, :cond_0

    #@41
    .line 575
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    #@43
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->dispose(Landroid/os/Handler;)V

    #@46
    .line 578
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@48
    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForCdmaPrlChanged(Landroid/os/Handler;)V

    #@4b
    .line 579
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@4d
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->unregisterForEriFileLoaded(Landroid/os/Handler;)V

    #@50
    .line 580
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@52
    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForCdmaOtaProvision(Landroid/os/Handler;)V

    #@55
    .line 581
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@57
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->unregisterForSimRecordsLoaded(Landroid/os/Handler;)V

    #@5a
    .line 583
    new-instance v0, Landroid/telephony/gsm/GsmCellLocation;

    #@5c
    invoke-direct {v0}, Landroid/telephony/gsm/GsmCellLocation;-><init>()V

    #@5f
    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCellLoc:Landroid/telephony/CellLocation;

    #@61
    .line 584
    new-instance v0, Landroid/telephony/gsm/GsmCellLocation;

    #@63
    invoke-direct {v0}, Landroid/telephony/gsm/GsmCellLocation;-><init>()V

    #@66
    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewCellLoc:Landroid/telephony/CellLocation;

    #@68
    .line 585
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@6a
    const/16 v2, 0xd

    #@6c
    invoke-interface {v0, p0, v2, v4}, Lcom/android/internal/telephony/CommandsInterface;->registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    #@6f
    .line 586
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@71
    const/16 v2, 0x17

    #@73
    invoke-interface {v0, p0, v2, v4}, Lcom/android/internal/telephony/CommandsInterface;->setOnRestrictedStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    #@76
    .line 613
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->onUpdateIccAvailability()V

    #@79
    .line 615
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@7b
    const-string/jumbo v2, "gsm.network.type"

    #@7e
    .line 616
    invoke-static {v1}, Landroid/telephony/ServiceState;->rilRadioTechnologyToString(I)Ljava/lang/String;

    #@81
    move-result-object v1

    #@82
    .line 615
    invoke-virtual {v0, v2, v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    #@85
    .line 621
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@87
    const/4 v1, 0x3

    #@88
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    #@8b
    move-result-object v1

    #@8c
    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getSignalStrength(Landroid/os/Message;)V

    #@8f
    .line 622
    const/16 v0, 0x32

    #@91
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    #@94
    move-result-object v0

    #@95
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->sendMessage(Landroid/os/Message;)Z

    #@98
    .line 624
    invoke-direct {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->logPhoneTypeChange()V

    #@9b
    .line 628
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mVoiceRoamingOffRegistrants:Landroid/os/RegistrantList;

    #@9d
    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    #@a0
    .line 629
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDataRoamingOffRegistrants:Landroid/os/RegistrantList;

    #@a2
    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    #@a5
    .line 630
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDetachedRegistrants:Landroid/os/RegistrantList;

    #@a7
    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    #@aa
    .line 631
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->notifyDataRegStateRilRadioTechnologyChanged()V

    #@ad
    .line 554
    return-void

    #@ae
    .line 589
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@b0
    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForAvailable(Landroid/os/Handler;)V

    #@b3
    .line 590
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@b5
    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnRestrictedStateChanged(Landroid/os/Handler;)V

    #@b8
    .line 592
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@ba
    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeCdmaLte()Z

    #@bd
    move-result v0

    #@be
    if-eqz v0, :cond_2

    #@c0
    .line 593
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@c2
    const/16 v2, 0x10

    #@c4
    invoke-virtual {v0, p0, v2, v4}, Lcom/android/internal/telephony/GsmCdmaPhone;->registerForSimRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    #@c7
    .line 595
    :cond_2
    new-instance v0, Landroid/telephony/cdma/CdmaCellLocation;

    #@c9
    invoke-direct {v0}, Landroid/telephony/cdma/CdmaCellLocation;-><init>()V

    #@cc
    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCellLoc:Landroid/telephony/CellLocation;

    #@ce
    .line 596
    new-instance v0, Landroid/telephony/cdma/CdmaCellLocation;

    #@d0
    invoke-direct {v0}, Landroid/telephony/cdma/CdmaCellLocation;-><init>()V

    #@d3
    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewCellLoc:Landroid/telephony/CellLocation;

    #@d5
    .line 597
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@d7
    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    #@da
    move-result-object v0

    #@db
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@dd
    .line 598
    const/16 v3, 0x27

    #@df
    .line 597
    invoke-static {v0, v2, p0, v3, v4}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->getInstance(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Landroid/os/Handler;ILjava/lang/Object;)Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    #@e2
    move-result-object v0

    #@e3
    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    #@e5
    .line 599
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    #@e7
    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->getCdmaSubscriptionSource()I

    #@ea
    move-result v0

    #@eb
    if-nez v0, :cond_3

    #@ed
    const/4 v0, 0x1

    #@ee
    :goto_1
    iput-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIsSubscriptionFromRuim:Z

    #@f0
    .line 602
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@f2
    const/16 v2, 0x28

    #@f4
    invoke-interface {v0, p0, v2, v4}, Lcom/android/internal/telephony/CommandsInterface;->registerForCdmaPrlChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    #@f7
    .line 603
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@f9
    const/16 v2, 0x24

    #@fb
    invoke-virtual {v0, p0, v2, v4}, Lcom/android/internal/telephony/GsmCdmaPhone;->registerForEriFileLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    #@fe
    .line 604
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@100
    const/16 v2, 0x25

    #@102
    invoke-interface {v0, p0, v2, v4}, Lcom/android/internal/telephony/CommandsInterface;->registerForCdmaOtaProvision(Landroid/os/Handler;ILjava/lang/Object;)V

    #@105
    .line 606
    new-instance v0, Lcom/android/internal/telephony/HbpcdUtils;

    #@107
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@109
    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    #@10c
    move-result-object v2

    #@10d
    invoke-direct {v0, v2}, Lcom/android/internal/telephony/HbpcdUtils;-><init>(Landroid/content/Context;)V

    #@110
    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mHbpcdUtils:Lcom/android/internal/telephony/HbpcdUtils;

    #@112
    .line 608
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->updateOtaspState()V

    #@115
    goto/16 :goto_0

    #@117
    :cond_3
    move v0, v1

    #@118
    .line 599
    goto :goto_1
.end method

.method protected updateRoamingState()V
    .locals 8

    #@0
    .prologue
    const/4 v7, 0x1

    #@1
    .line 2001
    iget-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@3
    invoke-virtual {v5}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    #@6
    move-result v5

    #@7
    if-eqz v5, :cond_9

    #@9
    .line 2015
    iget-boolean v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mGsmRoaming:Z

    #@b
    if-nez v5, :cond_3

    #@d
    iget-boolean v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDataRoaming:Z

    #@f
    .line 2016
    :goto_0
    iget-boolean v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mGsmRoaming:Z

    #@11
    if-eqz v5, :cond_0

    #@13
    iget-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@15
    invoke-direct {p0, v5}, Lcom/android/internal/telephony/ServiceStateTracker;->isOperatorConsideredRoaming(Landroid/telephony/ServiceState;)Z

    #@18
    move-result v5

    #@19
    if-eqz v5, :cond_4

    #@1b
    .line 2022
    :cond_0
    :goto_1
    iget-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@1d
    invoke-virtual {v5, v3}, Landroid/telephony/ServiceState;->setDataRoamingFromRegistration(Z)V

    #@20
    .line 2025
    iget-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@22
    invoke-virtual {v5}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    #@25
    move-result-object v5

    #@26
    const-string/jumbo v6, "carrier_config"

    #@29
    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@2c
    move-result-object v1

    #@2d
    .line 2024
    check-cast v1, Landroid/telephony/CarrierConfigManager;

    #@2f
    .line 2027
    .local v1, "configLoader":Landroid/telephony/CarrierConfigManager;
    if-eqz v1, :cond_8

    #@31
    .line 2029
    :try_start_0
    iget-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@33
    invoke-virtual {v5}, Lcom/android/internal/telephony/GsmCdmaPhone;->getSubId()I

    #@36
    move-result v5

    #@37
    invoke-virtual {v1, v5}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    #@3a
    move-result-object v0

    #@3b
    .line 2031
    .local v0, "b":Landroid/os/PersistableBundle;
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->alwaysOnHomeNetwork(Landroid/os/BaseBundle;)Z

    #@3e
    move-result v5

    #@3f
    if-eqz v5, :cond_6

    #@41
    .line 2032
    const-string/jumbo v5, "updateRoamingState: carrier config override always on home network"

    #@44
    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@47
    .line 2033
    const/4 v3, 0x0

    #@48
    .line 2050
    .end local v0    # "b":Landroid/os/PersistableBundle;
    :cond_1
    :goto_2
    iget-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@4a
    invoke-virtual {v5, v3}, Landroid/telephony/ServiceState;->setVoiceRoaming(Z)V

    #@4d
    .line 2051
    iget-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@4f
    invoke-virtual {v5, v3}, Landroid/telephony/ServiceState;->setDataRoaming(Z)V

    #@52
    .line 2000
    :cond_2
    :goto_3
    return-void

    #@53
    .line 2015
    .end local v1    # "configLoader":Landroid/telephony/CarrierConfigManager;
    :cond_3
    const/4 v3, 0x1

    #@54
    .local v3, "roaming":Z
    goto :goto_0

    #@55
    .line 2017
    .end local v3    # "roaming":Z
    :cond_4
    iget-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@57
    invoke-direct {p0, v5}, Lcom/android/internal/telephony/ServiceStateTracker;->isSameNamedOperators(Landroid/telephony/ServiceState;)Z

    #@5a
    move-result v5

    #@5b
    if-nez v5, :cond_5

    #@5d
    iget-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@5f
    invoke-direct {p0, v5}, Lcom/android/internal/telephony/ServiceStateTracker;->isOperatorConsideredNonRoaming(Landroid/telephony/ServiceState;)Z

    #@62
    move-result v5

    #@63
    .line 2016
    if-eqz v5, :cond_0

    #@65
    .line 2018
    :cond_5
    const/4 v3, 0x0

    #@66
    .restart local v3    # "roaming":Z
    goto :goto_1

    #@67
    .line 2034
    .end local v3    # "roaming":Z
    .restart local v0    # "b":Landroid/os/PersistableBundle;
    .restart local v1    # "configLoader":Landroid/telephony/CarrierConfigManager;
    :cond_6
    :try_start_1
    iget-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@69
    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    #@6c
    move-result-object v5

    #@6d
    invoke-virtual {p0, v0, v5}, Lcom/android/internal/telephony/ServiceStateTracker;->isNonRoamingInGsmNetwork(Landroid/os/BaseBundle;Ljava/lang/String;)Z

    #@70
    move-result v5

    #@71
    if-eqz v5, :cond_7

    #@73
    .line 2035
    new-instance v5, Ljava/lang/StringBuilder;

    #@75
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@78
    const-string/jumbo v6, "updateRoamingState: carrier config override set non roaming:"

    #@7b
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7e
    move-result-object v5

    #@7f
    .line 2036
    iget-object v6, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@81
    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    #@84
    move-result-object v6

    #@85
    .line 2035
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@88
    move-result-object v5

    #@89
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8c
    move-result-object v5

    #@8d
    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    #@90
    .line 2037
    const/4 v3, 0x0

    #@91
    .restart local v3    # "roaming":Z
    goto :goto_2

    #@92
    .line 2038
    .end local v3    # "roaming":Z
    :cond_7
    iget-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@94
    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    #@97
    move-result-object v5

    #@98
    invoke-virtual {p0, v0, v5}, Lcom/android/internal/telephony/ServiceStateTracker;->isRoamingInGsmNetwork(Landroid/os/BaseBundle;Ljava/lang/String;)Z

    #@9b
    move-result v5

    #@9c
    if-eqz v5, :cond_1

    #@9e
    .line 2039
    new-instance v5, Ljava/lang/StringBuilder;

    #@a0
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@a3
    const-string/jumbo v6, "updateRoamingState: carrier config override set roaming:"

    #@a6
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a9
    move-result-object v5

    #@aa
    .line 2040
    iget-object v6, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@ac
    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    #@af
    move-result-object v6

    #@b0
    .line 2039
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b3
    move-result-object v5

    #@b4
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b7
    move-result-object v5

    #@b8
    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    #@bb
    .line 2041
    const/4 v3, 0x1

    #@bc
    .restart local v3    # "roaming":Z
    goto :goto_2

    #@bd
    .line 2043
    .end local v0    # "b":Landroid/os/PersistableBundle;
    .end local v3    # "roaming":Z
    :catch_0
    move-exception v2

    #@be
    .line 2044
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "updateRoamingState: unable to access carrier config service"

    #@c1
    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/ServiceStateTracker;->loge(Ljava/lang/String;)V

    #@c4
    goto :goto_2

    #@c5
    .line 2047
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_8
    const-string/jumbo v5, "updateRoamingState: no carrier config service available"

    #@c8
    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    #@cb
    goto/16 :goto_2

    #@cd
    .line 2054
    .end local v1    # "configLoader":Landroid/telephony/CarrierConfigManager;
    :cond_9
    iget-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@cf
    iget-object v6, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@d1
    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    #@d4
    move-result v6

    #@d5
    invoke-virtual {v5, v6}, Landroid/telephony/ServiceState;->setDataRoamingFromRegistration(Z)V

    #@d8
    .line 2057
    iget-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@da
    invoke-virtual {v5}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    #@dd
    move-result-object v5

    #@de
    const-string/jumbo v6, "carrier_config"

    #@e1
    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@e4
    move-result-object v1

    #@e5
    .line 2056
    check-cast v1, Landroid/telephony/CarrierConfigManager;

    #@e7
    .line 2058
    .restart local v1    # "configLoader":Landroid/telephony/CarrierConfigManager;
    if-eqz v1, :cond_f

    #@e9
    .line 2060
    :try_start_2
    iget-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@eb
    invoke-virtual {v5}, Lcom/android/internal/telephony/GsmCdmaPhone;->getSubId()I

    #@ee
    move-result v5

    #@ef
    invoke-virtual {v1, v5}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    #@f2
    move-result-object v0

    #@f3
    .line 2061
    .restart local v0    # "b":Landroid/os/PersistableBundle;
    iget-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@f5
    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getSystemId()I

    #@f8
    move-result v5

    #@f9
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@fc
    move-result-object v4

    #@fd
    .line 2063
    .local v4, "systemId":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->alwaysOnHomeNetwork(Landroid/os/BaseBundle;)Z

    #@100
    move-result v5

    #@101
    if-eqz v5, :cond_b

    #@103
    .line 2064
    const-string/jumbo v5, "updateRoamingState: carrier config override always on home network"

    #@106
    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    #@109
    .line 2065
    invoke-direct {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->setRoamingOff()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    #@10c
    .line 2084
    .end local v0    # "b":Landroid/os/PersistableBundle;
    .end local v4    # "systemId":Ljava/lang/String;
    :cond_a
    :goto_4
    sget-boolean v5, Landroid/os/Build;->IS_DEBUGGABLE:Z

    #@10e
    if-eqz v5, :cond_2

    #@110
    const-string/jumbo v5, "telephony.test.forceRoaming"

    #@113
    const/4 v6, 0x0

    #@114
    invoke-static {v5, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    #@117
    move-result v5

    #@118
    if-eqz v5, :cond_2

    #@11a
    .line 2085
    iget-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@11c
    invoke-virtual {v5, v7}, Landroid/telephony/ServiceState;->setVoiceRoaming(Z)V

    #@11f
    .line 2086
    iget-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@121
    invoke-virtual {v5, v7}, Landroid/telephony/ServiceState;->setDataRoaming(Z)V

    #@124
    goto/16 :goto_3

    #@126
    .line 2066
    .restart local v0    # "b":Landroid/os/PersistableBundle;
    .restart local v4    # "systemId":Ljava/lang/String;
    :cond_b
    :try_start_3
    iget-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@128
    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    #@12b
    move-result-object v5

    #@12c
    invoke-virtual {p0, v0, v5}, Lcom/android/internal/telephony/ServiceStateTracker;->isNonRoamingInGsmNetwork(Landroid/os/BaseBundle;Ljava/lang/String;)Z

    #@12f
    move-result v5

    #@130
    if-nez v5, :cond_c

    #@132
    .line 2067
    invoke-virtual {p0, v0, v4}, Lcom/android/internal/telephony/ServiceStateTracker;->isNonRoamingInCdmaNetwork(Landroid/os/BaseBundle;Ljava/lang/String;)Z

    #@135
    move-result v5

    #@136
    .line 2066
    if-eqz v5, :cond_d

    #@138
    .line 2068
    :cond_c
    new-instance v5, Ljava/lang/StringBuilder;

    #@13a
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@13d
    const-string/jumbo v6, "updateRoamingState: carrier config override set non-roaming:"

    #@140
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@143
    move-result-object v5

    #@144
    .line 2069
    iget-object v6, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@146
    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    #@149
    move-result-object v6

    #@14a
    .line 2068
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14d
    move-result-object v5

    #@14e
    .line 2069
    const-string/jumbo v6, ", "

    #@151
    .line 2068
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@154
    move-result-object v5

    #@155
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@158
    move-result-object v5

    #@159
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@15c
    move-result-object v5

    #@15d
    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    #@160
    .line 2070
    invoke-direct {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->setRoamingOff()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    #@163
    goto :goto_4

    #@164
    .line 2077
    .end local v0    # "b":Landroid/os/PersistableBundle;
    .end local v4    # "systemId":Ljava/lang/String;
    :catch_1
    move-exception v2

    #@165
    .line 2078
    .restart local v2    # "e":Ljava/lang/Exception;
    const-string/jumbo v5, "updateRoamingState: unable to access carrier config service"

    #@168
    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/ServiceStateTracker;->loge(Ljava/lang/String;)V

    #@16b
    goto :goto_4

    #@16c
    .line 2071
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "b":Landroid/os/PersistableBundle;
    .restart local v4    # "systemId":Ljava/lang/String;
    :cond_d
    :try_start_4
    iget-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@16e
    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    #@171
    move-result-object v5

    #@172
    invoke-virtual {p0, v0, v5}, Lcom/android/internal/telephony/ServiceStateTracker;->isRoamingInGsmNetwork(Landroid/os/BaseBundle;Ljava/lang/String;)Z

    #@175
    move-result v5

    #@176
    if-nez v5, :cond_e

    #@178
    .line 2072
    invoke-virtual {p0, v0, v4}, Lcom/android/internal/telephony/ServiceStateTracker;->isRoamingInCdmaNetwork(Landroid/os/BaseBundle;Ljava/lang/String;)Z

    #@17b
    move-result v5

    #@17c
    .line 2071
    if-eqz v5, :cond_a

    #@17e
    .line 2073
    :cond_e
    new-instance v5, Ljava/lang/StringBuilder;

    #@180
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@183
    const-string/jumbo v6, "updateRoamingState: carrier config override set roaming:"

    #@186
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@189
    move-result-object v5

    #@18a
    .line 2074
    iget-object v6, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@18c
    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    #@18f
    move-result-object v6

    #@190
    .line 2073
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@193
    move-result-object v5

    #@194
    .line 2074
    const-string/jumbo v6, ", "

    #@197
    .line 2073
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19a
    move-result-object v5

    #@19b
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19e
    move-result-object v5

    #@19f
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a2
    move-result-object v5

    #@1a3
    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    #@1a6
    .line 2075
    invoke-direct {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->setRoamingOn()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    #@1a9
    goto/16 :goto_4

    #@1ab
    .line 2081
    .end local v0    # "b":Landroid/os/PersistableBundle;
    .end local v4    # "systemId":Ljava/lang/String;
    :cond_f
    const-string/jumbo v5, "updateRoamingState: no carrier config service available"

    #@1ae
    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    #@1b1
    goto/16 :goto_4
.end method

.method protected updateSpnDisplay()V
    .locals 30

    #@0
    .prologue
    .line 2105
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/ServiceStateTracker;->updateOperatorNameFromEri()V

    #@3
    .line 2107
    const/16 v29, 0x0

    #@5
    .line 2108
    .local v29, "wfcVoiceSpnFormat":Ljava/lang/String;
    const/16 v27, 0x0

    #@7
    .line 2109
    .local v27, "wfcDataSpnFormat":Ljava/lang/String;
    move-object/from16 v0, p0

    #@9
    iget-object v2, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@b
    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    #@e
    move-result-object v2

    #@f
    if-eqz v2, :cond_1

    #@11
    move-object/from16 v0, p0

    #@13
    iget-object v2, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@15
    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    #@18
    move-result-object v2

    #@19
    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->isWifiCallingEnabled()Z

    #@1c
    move-result v2

    #@1d
    if-eqz v2, :cond_1

    #@1f
    .line 2112
    move-object/from16 v0, p0

    #@21
    iget-object v2, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@23
    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    #@26
    move-result-object v2

    #@27
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@2a
    move-result-object v2

    #@2b
    .line 2113
    const v3, 0x1070055

    #@2e
    .line 2112
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    #@31
    move-result-object v28

    #@32
    .line 2114
    .local v28, "wfcSpnFormats":[Ljava/lang/String;
    const/16 v26, 0x0

    #@34
    .line 2115
    .local v26, "voiceIdx":I
    const/16 v16, 0x0

    #@36
    .line 2117
    .local v16, "dataIdx":I
    move-object/from16 v0, p0

    #@38
    iget-object v2, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@3a
    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    #@3d
    move-result-object v2

    #@3e
    const-string/jumbo v3, "carrier_config"

    #@41
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@44
    move-result-object v15

    #@45
    .line 2116
    check-cast v15, Landroid/telephony/CarrierConfigManager;

    #@47
    .line 2118
    .local v15, "configLoader":Landroid/telephony/CarrierConfigManager;
    if-eqz v15, :cond_0

    #@49
    .line 2120
    :try_start_0
    move-object/from16 v0, p0

    #@4b
    iget-object v2, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@4d
    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->getSubId()I

    #@50
    move-result v2

    #@51
    invoke-virtual {v15, v2}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    #@54
    move-result-object v14

    #@55
    .line 2121
    .local v14, "b":Landroid/os/PersistableBundle;
    if-eqz v14, :cond_0

    #@57
    .line 2122
    const-string/jumbo v2, "wfc_spn_format_idx_int"

    #@5a
    invoke-virtual {v14, v2}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    #@5d
    move-result v26

    #@5e
    .line 2124
    const-string/jumbo v2, "wfc_data_spn_format_idx_int"

    #@61
    .line 2123
    invoke-virtual {v14, v2}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@64
    move-result v16

    #@65
    .line 2131
    .end local v14    # "b":Landroid/os/PersistableBundle;
    :cond_0
    :goto_0
    aget-object v29, v28, v26

    #@67
    .line 2132
    .local v29, "wfcVoiceSpnFormat":Ljava/lang/String;
    aget-object v27, v28, v16

    #@69
    .line 2135
    .end local v15    # "configLoader":Landroid/telephony/CarrierConfigManager;
    .end local v16    # "dataIdx":I
    .end local v26    # "voiceIdx":I
    .end local v27    # "wfcDataSpnFormat":Ljava/lang/String;
    .end local v28    # "wfcSpnFormats":[Ljava/lang/String;
    .end local v29    # "wfcVoiceSpnFormat":Ljava/lang/String;
    :cond_1
    move-object/from16 v0, p0

    #@6b
    iget-object v2, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@6d
    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    #@70
    move-result v2

    #@71
    if-eqz v2, :cond_14

    #@73
    .line 2154
    move-object/from16 v0, p0

    #@75
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    #@77
    move-object/from16 v19, v0

    #@79
    .line 2155
    .local v19, "iccRecords":Lcom/android/internal/telephony/uicc/IccRecords;
    const/4 v5, 0x0

    #@7a
    .line 2156
    .local v5, "plmn":Ljava/lang/String;
    const/4 v4, 0x0

    #@7b
    .line 2157
    .local v4, "showPlmn":Z
    if-eqz v19, :cond_9

    #@7d
    move-object/from16 v0, p0

    #@7f
    iget-object v2, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@81
    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    #@84
    move-result-object v2

    #@85
    move-object/from16 v0, v19

    #@87
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/IccRecords;->getDisplayRule(Ljava/lang/String;)I

    #@8a
    move-result v23

    #@8b
    .line 2158
    .local v23, "rule":I
    :goto_1
    move-object/from16 v0, p0

    #@8d
    iget-object v2, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@8f
    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    #@92
    move-result v2

    #@93
    const/4 v3, 0x1

    #@94
    if-eq v2, v3, :cond_2

    #@96
    .line 2159
    move-object/from16 v0, p0

    #@98
    iget-object v2, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@9a
    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    #@9d
    move-result v2

    #@9e
    const/4 v3, 0x2

    #@9f
    if-ne v2, v3, :cond_b

    #@a1
    .line 2160
    :cond_2
    const/4 v4, 0x1

    #@a2
    .line 2161
    move-object/from16 v0, p0

    #@a4
    iget-boolean v2, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mEmergencyOnly:Z

    #@a6
    if-eqz v2, :cond_a

    #@a8
    .line 2163
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    #@ab
    move-result-object v2

    #@ac
    .line 2164
    const v3, 0x10402a9

    #@af
    .line 2163
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    #@b2
    move-result-object v2

    #@b3
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@b6
    move-result-object v5

    #@b7
    .line 2170
    .local v5, "plmn":Ljava/lang/String;
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    #@b9
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@bc
    const-string/jumbo v3, "updateSpnDisplay: radio is on but out of service, set plmn=\'"

    #@bf
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c2
    move-result-object v2

    #@c3
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c6
    move-result-object v2

    #@c7
    .line 2171
    const-string/jumbo v3, "\'"

    #@ca
    .line 2170
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cd
    move-result-object v2

    #@ce
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d1
    move-result-object v2

    #@d2
    move-object/from16 v0, p0

    #@d4
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    #@d7
    .line 2191
    :goto_3
    if-eqz v19, :cond_f

    #@d9
    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/uicc/IccRecords;->getServiceProviderName()Ljava/lang/String;

    #@dc
    move-result-object v7

    #@dd
    .line 2192
    .local v7, "spn":Ljava/lang/String;
    :goto_4
    move-object/from16 v17, v7

    #@df
    .line 2193
    .local v17, "dataSpn":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@e2
    move-result v2

    #@e3
    if-nez v2, :cond_11

    #@e5
    .line 2194
    and-int/lit8 v2, v23, 0x1

    #@e7
    .line 2195
    const/4 v3, 0x1

    #@e8
    .line 2194
    if-ne v2, v3, :cond_10

    #@ea
    const/4 v6, 0x1

    #@eb
    .line 2197
    .local v6, "showSpn":Z
    :goto_5
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@ee
    move-result v2

    #@ef
    if-nez v2, :cond_3

    #@f1
    invoke-static/range {v29 .. v29}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@f4
    move-result v2

    #@f5
    if-eqz v2, :cond_12

    #@f7
    .line 2206
    :cond_3
    move-object/from16 v0, p0

    #@f9
    iget-object v2, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@fb
    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    #@fe
    move-result v2

    #@ff
    const/4 v3, 0x3

    #@100
    if-eq v2, v3, :cond_4

    #@102
    .line 2207
    if-eqz v4, :cond_5

    #@104
    invoke-static {v7, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    #@107
    move-result v2

    #@108
    .line 2206
    if-eqz v2, :cond_5

    #@10a
    .line 2209
    :cond_4
    const/4 v7, 0x0

    #@10b
    .line 2210
    .local v7, "spn":Ljava/lang/String;
    const/4 v6, 0x0

    #@10c
    .line 2213
    .end local v7    # "spn":Ljava/lang/String;
    :cond_5
    :goto_6
    const/16 v24, -0x1

    #@10e
    .line 2214
    .local v24, "subId":I
    move-object/from16 v0, p0

    #@110
    iget-object v2, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@112
    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    #@115
    move-result v2

    #@116
    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    #@119
    move-result-object v25

    #@11a
    .line 2215
    .local v25, "subIds":[I
    if-eqz v25, :cond_6

    #@11c
    move-object/from16 v0, v25

    #@11e
    array-length v2, v0

    #@11f
    if-lez v2, :cond_6

    #@121
    .line 2216
    const/4 v2, 0x0

    #@122
    aget v24, v25, v2

    #@124
    .line 2220
    :cond_6
    move-object/from16 v0, p0

    #@126
    iget v2, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSubId:I

    #@128
    move/from16 v0, v24

    #@12a
    if-ne v2, v0, :cond_7

    #@12c
    .line 2221
    move-object/from16 v0, p0

    #@12e
    iget-boolean v2, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mCurShowPlmn:Z

    #@130
    if-eq v4, v2, :cond_13

    #@132
    .line 2227
    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    #@134
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@137
    const-string/jumbo v3, "updateSpnDisplay: changed sending intent rule="

    #@13a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13d
    move-result-object v2

    #@13e
    move/from16 v0, v23

    #@140
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@143
    move-result-object v2

    #@144
    .line 2228
    const-string/jumbo v3, " showPlmn=\'%b\' plmn=\'%s\' showSpn=\'%b\' spn=\'%s\' dataSpn=\'%s\' "

    #@147
    .line 2227
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14a
    move-result-object v2

    #@14b
    .line 2229
    const-string/jumbo v3, "subId=\'%d\'"

    #@14e
    .line 2227
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@151
    move-result-object v2

    #@152
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@155
    move-result-object v2

    #@156
    const/4 v3, 0x6

    #@157
    new-array v3, v3, [Ljava/lang/Object;

    #@159
    .line 2229
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@15c
    move-result-object v8

    #@15d
    const/4 v9, 0x0

    #@15e
    aput-object v8, v3, v9

    #@160
    const/4 v8, 0x1

    #@161
    aput-object v5, v3, v8

    #@163
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@166
    move-result-object v8

    #@167
    const/4 v9, 0x2

    #@168
    aput-object v8, v3, v9

    #@16a
    const/4 v8, 0x3

    #@16b
    aput-object v7, v3, v8

    #@16d
    const/4 v8, 0x4

    #@16e
    aput-object v17, v3, v8

    #@170
    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@173
    move-result-object v8

    #@174
    const/4 v9, 0x5

    #@175
    aput-object v8, v3, v9

    #@177
    .line 2227
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@17a
    move-result-object v2

    #@17b
    move-object/from16 v0, p0

    #@17d
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    #@180
    .line 2231
    new-instance v20, Landroid/content/Intent;

    #@182
    const-string/jumbo v2, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    #@185
    move-object/from16 v0, v20

    #@187
    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@18a
    .line 2232
    .local v20, "intent":Landroid/content/Intent;
    const/high16 v2, 0x20000000

    #@18c
    move-object/from16 v0, v20

    #@18e
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@191
    .line 2233
    const-string/jumbo v2, "showSpn"

    #@194
    move-object/from16 v0, v20

    #@196
    invoke-virtual {v0, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    #@199
    .line 2234
    const-string/jumbo v2, "spn"

    #@19c
    move-object/from16 v0, v20

    #@19e
    invoke-virtual {v0, v2, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@1a1
    .line 2235
    const-string/jumbo v2, "spnData"

    #@1a4
    move-object/from16 v0, v20

    #@1a6
    move-object/from16 v1, v17

    #@1a8
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@1ab
    .line 2236
    const-string/jumbo v2, "showPlmn"

    #@1ae
    move-object/from16 v0, v20

    #@1b0
    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    #@1b3
    .line 2237
    const-string/jumbo v2, "plmn"

    #@1b6
    move-object/from16 v0, v20

    #@1b8
    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@1bb
    .line 2238
    move-object/from16 v0, p0

    #@1bd
    iget-object v2, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@1bf
    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    #@1c2
    move-result v2

    #@1c3
    move-object/from16 v0, v20

    #@1c5
    invoke-static {v0, v2}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    #@1c8
    .line 2239
    move-object/from16 v0, p0

    #@1ca
    iget-object v2, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@1cc
    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    #@1cf
    move-result-object v2

    #@1d0
    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@1d2
    move-object/from16 v0, v20

    #@1d4
    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    #@1d7
    .line 2241
    move-object/from16 v0, p0

    #@1d9
    iget-object v2, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    #@1db
    move-object/from16 v0, p0

    #@1dd
    iget-object v3, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@1df
    invoke-virtual {v3}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    #@1e2
    move-result v3

    #@1e3
    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/telephony/SubscriptionController;->setPlmnSpn(IZLjava/lang/String;ZLjava/lang/String;)Z

    #@1e6
    move-result v2

    #@1e7
    if-nez v2, :cond_8

    #@1e9
    .line 2243
    const/4 v2, 0x1

    #@1ea
    move-object/from16 v0, p0

    #@1ec
    iput-boolean v2, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSpnUpdatePending:Z

    #@1ee
    .line 2247
    .end local v20    # "intent":Landroid/content/Intent;
    :cond_8
    :goto_7
    move/from16 v0, v24

    #@1f0
    move-object/from16 v1, p0

    #@1f2
    iput v0, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mSubId:I

    #@1f4
    .line 2248
    move-object/from16 v0, p0

    #@1f6
    iput-boolean v6, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mCurShowSpn:Z

    #@1f8
    .line 2249
    move-object/from16 v0, p0

    #@1fa
    iput-boolean v4, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mCurShowPlmn:Z

    #@1fc
    .line 2250
    move-object/from16 v0, p0

    #@1fe
    iput-object v7, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mCurSpn:Ljava/lang/String;

    #@200
    .line 2251
    move-object/from16 v0, v17

    #@202
    move-object/from16 v1, p0

    #@204
    iput-object v0, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mCurDataSpn:Ljava/lang/String;

    #@206
    .line 2252
    move-object/from16 v0, p0

    #@208
    iput-object v5, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mCurPlmn:Ljava/lang/String;

    #@20a
    .line 2104
    .end local v5    # "plmn":Ljava/lang/String;
    .end local v6    # "showSpn":Z
    .end local v17    # "dataSpn":Ljava/lang/String;
    .end local v19    # "iccRecords":Lcom/android/internal/telephony/uicc/IccRecords;
    .end local v23    # "rule":I
    :goto_8
    return-void

    #@20b
    .line 2126
    .end local v4    # "showPlmn":Z
    .end local v24    # "subId":I
    .end local v25    # "subIds":[I
    .restart local v15    # "configLoader":Landroid/telephony/CarrierConfigManager;
    .restart local v16    # "dataIdx":I
    .restart local v26    # "voiceIdx":I
    .restart local v27    # "wfcDataSpnFormat":Ljava/lang/String;
    .restart local v28    # "wfcSpnFormats":[Ljava/lang/String;
    .local v29, "wfcVoiceSpnFormat":Ljava/lang/String;
    :catch_0
    move-exception v18

    #@20c
    .line 2127
    .local v18, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    #@20e
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@211
    const-string/jumbo v3, "updateSpnDisplay: carrier config error: "

    #@214
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@217
    move-result-object v2

    #@218
    move-object/from16 v0, v18

    #@21a
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@21d
    move-result-object v2

    #@21e
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@221
    move-result-object v2

    #@222
    move-object/from16 v0, p0

    #@224
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->loge(Ljava/lang/String;)V

    #@227
    goto/16 :goto_0

    #@229
    .line 2157
    .end local v15    # "configLoader":Landroid/telephony/CarrierConfigManager;
    .end local v16    # "dataIdx":I
    .end local v18    # "e":Ljava/lang/Exception;
    .end local v26    # "voiceIdx":I
    .end local v27    # "wfcDataSpnFormat":Ljava/lang/String;
    .end local v28    # "wfcSpnFormats":[Ljava/lang/String;
    .end local v29    # "wfcVoiceSpnFormat":Ljava/lang/String;
    .restart local v4    # "showPlmn":Z
    .local v5, "plmn":Ljava/lang/String;
    .restart local v19    # "iccRecords":Lcom/android/internal/telephony/uicc/IccRecords;
    :cond_9
    const/16 v23, 0x0

    #@22b
    .restart local v23    # "rule":I
    goto/16 :goto_1

    #@22d
    .line 2167
    :cond_a
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    #@230
    move-result-object v2

    #@231
    .line 2168
    const v3, 0x1040290

    #@234
    .line 2167
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    #@237
    move-result-object v2

    #@238
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@23b
    move-result-object v5

    #@23c
    .local v5, "plmn":Ljava/lang/String;
    goto/16 :goto_2

    #@23e
    .line 2172
    .local v5, "plmn":Ljava/lang/String;
    :cond_b
    move-object/from16 v0, p0

    #@240
    iget-object v2, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@242
    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    #@245
    move-result v2

    #@246
    if-nez v2, :cond_e

    #@248
    .line 2174
    move-object/from16 v0, p0

    #@24a
    iget-object v2, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@24c
    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    #@24f
    move-result-object v5

    #@250
    .line 2175
    .local v5, "plmn":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@253
    move-result v2

    #@254
    if-nez v2, :cond_d

    #@256
    .line 2176
    and-int/lit8 v2, v23, 0x2

    #@258
    .line 2177
    const/4 v3, 0x2

    #@259
    .line 2176
    if-ne v2, v3, :cond_c

    #@25b
    const/4 v4, 0x1

    #@25c
    goto/16 :goto_3

    #@25e
    :cond_c
    const/4 v4, 0x0

    #@25f
    goto/16 :goto_3

    #@261
    .line 2175
    :cond_d
    const/4 v4, 0x0

    #@262
    goto/16 :goto_3

    #@264
    .line 2180
    .local v5, "plmn":Ljava/lang/String;
    :cond_e
    const/4 v4, 0x1

    #@265
    .line 2181
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    #@268
    move-result-object v2

    #@269
    .line 2182
    const v3, 0x1040290

    #@26c
    .line 2181
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    #@26f
    move-result-object v2

    #@270
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@273
    move-result-object v5

    #@274
    .line 2183
    .local v5, "plmn":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    #@276
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@279
    const-string/jumbo v3, "updateSpnDisplay: radio is off w/ showPlmn="

    #@27c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27f
    move-result-object v2

    #@280
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@283
    move-result-object v2

    #@284
    .line 2184
    const-string/jumbo v3, " plmn="

    #@287
    .line 2183
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28a
    move-result-object v2

    #@28b
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28e
    move-result-object v2

    #@28f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@292
    move-result-object v2

    #@293
    move-object/from16 v0, p0

    #@295
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    #@298
    goto/16 :goto_3

    #@29a
    .line 2191
    :cond_f
    const-string/jumbo v7, ""

    #@29d
    goto/16 :goto_4

    #@29f
    .line 2194
    .local v7, "spn":Ljava/lang/String;
    .restart local v17    # "dataSpn":Ljava/lang/String;
    :cond_10
    const/4 v6, 0x0

    #@2a0
    .restart local v6    # "showSpn":Z
    goto/16 :goto_5

    #@2a2
    .line 2193
    .end local v6    # "showSpn":Z
    :cond_11
    const/4 v6, 0x0

    #@2a3
    .restart local v6    # "showSpn":Z
    goto/16 :goto_5

    #@2a5
    .line 2198
    :cond_12
    invoke-static/range {v27 .. v27}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@2a8
    move-result v2

    #@2a9
    if-nez v2, :cond_3

    #@2ab
    .line 2201
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@2ae
    move-result-object v22

    #@2af
    .line 2202
    .local v22, "originalSpn":Ljava/lang/String;
    const/4 v2, 0x1

    #@2b0
    new-array v2, v2, [Ljava/lang/Object;

    #@2b2
    const/4 v3, 0x0

    #@2b3
    aput-object v22, v2, v3

    #@2b5
    move-object/from16 v0, v29

    #@2b7
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@2ba
    move-result-object v7

    #@2bb
    .line 2203
    const/4 v2, 0x1

    #@2bc
    new-array v2, v2, [Ljava/lang/Object;

    #@2be
    const/4 v3, 0x0

    #@2bf
    aput-object v22, v2, v3

    #@2c1
    move-object/from16 v0, v27

    #@2c3
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@2c6
    move-result-object v17

    #@2c7
    .line 2204
    const/4 v6, 0x1

    #@2c8
    .line 2205
    const/4 v4, 0x0

    #@2c9
    .line 2198
    goto/16 :goto_6

    #@2cb
    .line 2222
    .end local v7    # "spn":Ljava/lang/String;
    .end local v22    # "originalSpn":Ljava/lang/String;
    .restart local v24    # "subId":I
    .restart local v25    # "subIds":[I
    :cond_13
    move-object/from16 v0, p0

    #@2cd
    iget-boolean v2, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mCurShowSpn:Z

    #@2cf
    if-ne v6, v2, :cond_7

    #@2d1
    .line 2223
    move-object/from16 v0, p0

    #@2d3
    iget-object v2, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mCurSpn:Ljava/lang/String;

    #@2d5
    invoke-static {v7, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    #@2d8
    move-result v2

    #@2d9
    if-eqz v2, :cond_7

    #@2db
    .line 2224
    move-object/from16 v0, p0

    #@2dd
    iget-object v2, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mCurDataSpn:Ljava/lang/String;

    #@2df
    move-object/from16 v0, v17

    #@2e1
    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    #@2e4
    move-result v2

    #@2e5
    if-eqz v2, :cond_7

    #@2e7
    .line 2225
    move-object/from16 v0, p0

    #@2e9
    iget-object v2, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mCurPlmn:Ljava/lang/String;

    #@2eb
    invoke-static {v5, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    #@2ee
    move-result v2

    #@2ef
    if-eqz v2, :cond_7

    #@2f1
    goto/16 :goto_7

    #@2f3
    .line 2255
    .end local v4    # "showPlmn":Z
    .end local v5    # "plmn":Ljava/lang/String;
    .end local v6    # "showSpn":Z
    .end local v17    # "dataSpn":Ljava/lang/String;
    .end local v19    # "iccRecords":Lcom/android/internal/telephony/uicc/IccRecords;
    .end local v23    # "rule":I
    .end local v24    # "subId":I
    .end local v25    # "subIds":[I
    :cond_14
    move-object/from16 v0, p0

    #@2f5
    iget-object v2, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@2f7
    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    #@2fa
    move-result-object v5

    #@2fb
    .line 2256
    .restart local v5    # "plmn":Ljava/lang/String;
    const/4 v4, 0x0

    #@2fc
    .line 2258
    .restart local v4    # "showPlmn":Z
    if-eqz v5, :cond_19

    #@2fe
    const/4 v4, 0x1

    #@2ff
    .line 2260
    :goto_9
    const/16 v24, -0x1

    #@301
    .line 2261
    .restart local v24    # "subId":I
    move-object/from16 v0, p0

    #@303
    iget-object v2, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@305
    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    #@308
    move-result v2

    #@309
    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    #@30c
    move-result-object v25

    #@30d
    .line 2262
    .restart local v25    # "subIds":[I
    if-eqz v25, :cond_15

    #@30f
    move-object/from16 v0, v25

    #@311
    array-length v2, v0

    #@312
    if-lez v2, :cond_15

    #@314
    .line 2263
    const/4 v2, 0x0

    #@315
    aget v24, v25, v2

    #@317
    .line 2266
    :cond_15
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@31a
    move-result v2

    #@31b
    if-nez v2, :cond_16

    #@31d
    invoke-static/range {v29 .. v29}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@320
    move-result v2

    #@321
    if-eqz v2, :cond_1a

    #@323
    .line 2271
    :cond_16
    move-object/from16 v0, p0

    #@325
    iget-object v2, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@327
    invoke-interface {v2}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    #@32a
    move-result-object v2

    #@32b
    sget-object v3, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_OFF:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    #@32d
    if-ne v2, v3, :cond_17

    #@32f
    .line 2275
    new-instance v2, Ljava/lang/StringBuilder;

    #@331
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@334
    const-string/jumbo v3, "updateSpnDisplay: overwriting plmn from "

    #@337
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33a
    move-result-object v2

    #@33b
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33e
    move-result-object v2

    #@33f
    const-string/jumbo v3, " to null as radio "

    #@342
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@345
    move-result-object v2

    #@346
    .line 2276
    const-string/jumbo v3, "state is off"

    #@349
    .line 2275
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34c
    move-result-object v2

    #@34d
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@350
    move-result-object v2

    #@351
    move-object/from16 v0, p0

    #@353
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    #@356
    .line 2277
    const/4 v5, 0x0

    #@357
    .line 2280
    .end local v5    # "plmn":Ljava/lang/String;
    :cond_17
    :goto_a
    move-object/from16 v0, p0

    #@359
    iget v2, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSubId:I

    #@35b
    move/from16 v0, v24

    #@35d
    if-ne v2, v0, :cond_1b

    #@35f
    move-object/from16 v0, p0

    #@361
    iget-object v2, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mCurPlmn:Ljava/lang/String;

    #@363
    invoke-static {v5, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    #@366
    move-result v2

    #@367
    if-eqz v2, :cond_1b

    #@369
    .line 2304
    :cond_18
    :goto_b
    move/from16 v0, v24

    #@36b
    move-object/from16 v1, p0

    #@36d
    iput v0, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mSubId:I

    #@36f
    .line 2305
    const/4 v2, 0x0

    #@370
    move-object/from16 v0, p0

    #@372
    iput-boolean v2, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mCurShowSpn:Z

    #@374
    .line 2306
    move-object/from16 v0, p0

    #@376
    iput-boolean v4, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mCurShowPlmn:Z

    #@378
    .line 2307
    const-string/jumbo v2, ""

    #@37b
    move-object/from16 v0, p0

    #@37d
    iput-object v2, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mCurSpn:Ljava/lang/String;

    #@37f
    .line 2308
    move-object/from16 v0, p0

    #@381
    iput-object v5, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mCurPlmn:Ljava/lang/String;

    #@383
    goto/16 :goto_8

    #@385
    .line 2258
    .end local v24    # "subId":I
    .end local v25    # "subIds":[I
    .restart local v5    # "plmn":Ljava/lang/String;
    :cond_19
    const/4 v4, 0x0

    #@386
    goto/16 :goto_9

    #@388
    .line 2269
    .restart local v24    # "subId":I
    .restart local v25    # "subIds":[I
    :cond_1a
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@38b
    move-result-object v21

    #@38c
    .line 2270
    .local v21, "originalPlmn":Ljava/lang/String;
    const/4 v2, 0x1

    #@38d
    new-array v2, v2, [Ljava/lang/Object;

    #@38f
    const/4 v3, 0x0

    #@390
    aput-object v21, v2, v3

    #@392
    move-object/from16 v0, v29

    #@394
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@397
    move-result-object v5

    #@398
    goto :goto_a

    #@399
    .line 2286
    .end local v5    # "plmn":Ljava/lang/String;
    .end local v21    # "originalPlmn":Ljava/lang/String;
    :cond_1b
    const-string/jumbo v2, "updateSpnDisplay: changed sending intent showPlmn=\'%b\' plmn=\'%s\' subId=\'%d\'"

    #@39c
    const/4 v3, 0x3

    #@39d
    new-array v3, v3, [Ljava/lang/Object;

    #@39f
    .line 2287
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@3a2
    move-result-object v8

    #@3a3
    const/4 v9, 0x0

    #@3a4
    aput-object v8, v3, v9

    #@3a6
    const/4 v8, 0x1

    #@3a7
    aput-object v5, v3, v8

    #@3a9
    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@3ac
    move-result-object v8

    #@3ad
    const/4 v9, 0x2

    #@3ae
    aput-object v8, v3, v9

    #@3b0
    .line 2286
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@3b3
    move-result-object v2

    #@3b4
    move-object/from16 v0, p0

    #@3b6
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    #@3b9
    .line 2289
    new-instance v20, Landroid/content/Intent;

    #@3bb
    const-string/jumbo v2, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    #@3be
    move-object/from16 v0, v20

    #@3c0
    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@3c3
    .line 2290
    .restart local v20    # "intent":Landroid/content/Intent;
    const/high16 v2, 0x20000000

    #@3c5
    move-object/from16 v0, v20

    #@3c7
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@3ca
    .line 2291
    const-string/jumbo v2, "showSpn"

    #@3cd
    const/4 v3, 0x0

    #@3ce
    move-object/from16 v0, v20

    #@3d0
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    #@3d3
    .line 2292
    const-string/jumbo v2, "spn"

    #@3d6
    const-string/jumbo v3, ""

    #@3d9
    move-object/from16 v0, v20

    #@3db
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@3de
    .line 2293
    const-string/jumbo v2, "showPlmn"

    #@3e1
    move-object/from16 v0, v20

    #@3e3
    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    #@3e6
    .line 2294
    const-string/jumbo v2, "plmn"

    #@3e9
    move-object/from16 v0, v20

    #@3eb
    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@3ee
    .line 2295
    move-object/from16 v0, p0

    #@3f0
    iget-object v2, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@3f2
    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    #@3f5
    move-result v2

    #@3f6
    move-object/from16 v0, v20

    #@3f8
    invoke-static {v0, v2}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    #@3fb
    .line 2296
    move-object/from16 v0, p0

    #@3fd
    iget-object v2, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@3ff
    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    #@402
    move-result-object v2

    #@403
    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@405
    move-object/from16 v0, v20

    #@407
    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    #@40a
    .line 2298
    move-object/from16 v0, p0

    #@40c
    iget-object v8, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    #@40e
    move-object/from16 v0, p0

    #@410
    iget-object v2, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@412
    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    #@415
    move-result v9

    #@416
    .line 2299
    const-string/jumbo v13, ""

    #@419
    const/4 v12, 0x0

    #@41a
    move v10, v4

    #@41b
    move-object v11, v5

    #@41c
    .line 2298
    invoke-virtual/range {v8 .. v13}, Lcom/android/internal/telephony/SubscriptionController;->setPlmnSpn(IZLjava/lang/String;ZLjava/lang/String;)Z

    #@41f
    move-result v2

    #@420
    if-nez v2, :cond_18

    #@422
    .line 2300
    const/4 v2, 0x1

    #@423
    move-object/from16 v0, p0

    #@425
    iput-boolean v2, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSpnUpdatePending:Z

    #@427
    goto/16 :goto_b
.end method

.method protected useDataRegStateForDataOnlyDevices()V
    .locals 2

    #@0
    .prologue
    .line 691
    iget-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mVoiceCapable:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 693
    new-instance v0, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    const-string/jumbo v1, "useDataRegStateForDataOnlyDevice: VoiceRegState="

    #@c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@12
    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    #@15
    move-result v1

    #@16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@19
    move-result-object v0

    #@1a
    .line 694
    const-string/jumbo v1, " DataRegState="

    #@1d
    .line 693
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v0

    #@21
    .line 694
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@23
    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getDataRegState()I

    #@26
    move-result v1

    #@27
    .line 693
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v0

    #@2b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2e
    move-result-object v0

    #@2f
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    #@32
    .line 697
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@34
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@36
    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getDataRegState()I

    #@39
    move-result v1

    #@3a
    invoke-virtual {v0, v1}, Landroid/telephony/ServiceState;->setVoiceRegState(I)V

    #@3d
    .line 690
    :cond_0
    return-void
.end method
