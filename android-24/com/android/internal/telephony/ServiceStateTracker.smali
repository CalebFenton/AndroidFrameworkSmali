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

.field private mEventLog:Lcom/android/internal/telephony/TelephonyEventLog;

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

.field private mPollingContext:[I

.field private mPowerOffDelayNeed:Z

.field private mPreferredNetworkType:I

.field private mPrlVersion:Ljava/lang/String;

.field private mPsRestrictDisabledRegistrants:Landroid/os/RegistrantList;

.field private mPsRestrictEnabledRegistrants:Landroid/os/RegistrantList;

.field private mRadioOffIntent:Landroid/app/PendingIntent;

.field private mReasonDataDenied:I

.field private mRegistrationDeniedReason:Ljava/lang/String;

.field private mRegistrationState:I

.field private mReportedGprsNoReg:Z

.field public mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

.field private mRoamingIndicator:I

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
    .line 221
    const/16 v0, 0x14

    #@2
    new-array v0, v0, [Ljava/lang/String;

    #@4
    .line 222
    const-string/jumbo v1, "bf"

    #@7
    const/4 v2, 0x0

    #@8
    aput-object v1, v0, v2

    #@a
    .line 223
    const-string/jumbo v1, "ci"

    #@d
    const/4 v2, 0x1

    #@e
    aput-object v1, v0, v2

    #@10
    .line 224
    const-string/jumbo v1, "eh"

    #@13
    const/4 v2, 0x2

    #@14
    aput-object v1, v0, v2

    #@16
    .line 225
    const-string/jumbo v1, "fo"

    #@19
    const/4 v2, 0x3

    #@1a
    aput-object v1, v0, v2

    #@1c
    .line 226
    const-string/jumbo v1, "gb"

    #@1f
    const/4 v2, 0x4

    #@20
    aput-object v1, v0, v2

    #@22
    .line 227
    const-string/jumbo v1, "gh"

    #@25
    const/4 v2, 0x5

    #@26
    aput-object v1, v0, v2

    #@28
    .line 228
    const-string/jumbo v1, "gm"

    #@2b
    const/4 v2, 0x6

    #@2c
    aput-object v1, v0, v2

    #@2e
    .line 229
    const-string/jumbo v1, "gn"

    #@31
    const/4 v2, 0x7

    #@32
    aput-object v1, v0, v2

    #@34
    .line 230
    const-string/jumbo v1, "gw"

    #@37
    const/16 v2, 0x8

    #@39
    aput-object v1, v0, v2

    #@3b
    .line 231
    const-string/jumbo v1, "ie"

    #@3e
    const/16 v2, 0x9

    #@40
    aput-object v1, v0, v2

    #@42
    .line 232
    const-string/jumbo v1, "lr"

    #@45
    const/16 v2, 0xa

    #@47
    aput-object v1, v0, v2

    #@49
    .line 233
    const-string/jumbo v1, "is"

    #@4c
    const/16 v2, 0xb

    #@4e
    aput-object v1, v0, v2

    #@50
    .line 234
    const-string/jumbo v1, "ma"

    #@53
    const/16 v2, 0xc

    #@55
    aput-object v1, v0, v2

    #@57
    .line 235
    const-string/jumbo v1, "ml"

    #@5a
    const/16 v2, 0xd

    #@5c
    aput-object v1, v0, v2

    #@5e
    .line 236
    const-string/jumbo v1, "mr"

    #@61
    const/16 v2, 0xe

    #@63
    aput-object v1, v0, v2

    #@65
    .line 237
    const-string/jumbo v1, "pt"

    #@68
    const/16 v2, 0xf

    #@6a
    aput-object v1, v0, v2

    #@6c
    .line 238
    const-string/jumbo v1, "sl"

    #@6f
    const/16 v2, 0x10

    #@71
    aput-object v1, v0, v2

    #@73
    .line 239
    const-string/jumbo v1, "sn"

    #@76
    const/16 v2, 0x11

    #@78
    aput-object v1, v0, v2

    #@7a
    .line 240
    const-string/jumbo v1, "st"

    #@7d
    const/16 v2, 0x12

    #@7f
    aput-object v1, v0, v2

    #@81
    .line 241
    const-string/jumbo v1, "tg"

    #@84
    const/16 v2, 0x13

    #@86
    aput-object v1, v0, v2

    #@88
    .line 221
    sput-object v0, Lcom/android/internal/telephony/ServiceStateTracker;->GMT_COUNTRY_CODES:[Ljava/lang/String;

    #@8a
    .line 96
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/GsmCdmaPhone;Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 6
    .param p1, "phone"    # Lcom/android/internal/telephony/GsmCdmaPhone;
    .param p2, "ci"    # Lcom/android/internal/telephony/CommandsInterface;

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v4, -0x1

    #@2
    const/4 v3, 0x0

    #@3
    const/4 v2, 0x0

    #@4
    .line 484
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    #@7
    .line 104
    iput-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    #@9
    .line 105
    iput-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@b
    .line 106
    iput-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    #@d
    .line 116
    iput-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mLastCellInfoList:Ljava/util/List;

    #@f
    .line 146
    iput-boolean v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDontPollSignalStrength:Z

    #@11
    .line 148
    new-instance v0, Landroid/os/RegistrantList;

    #@13
    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    #@16
    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mVoiceRoamingOnRegistrants:Landroid/os/RegistrantList;

    #@18
    .line 149
    new-instance v0, Landroid/os/RegistrantList;

    #@1a
    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    #@1d
    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mVoiceRoamingOffRegistrants:Landroid/os/RegistrantList;

    #@1f
    .line 150
    new-instance v0, Landroid/os/RegistrantList;

    #@21
    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    #@24
    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDataRoamingOnRegistrants:Landroid/os/RegistrantList;

    #@26
    .line 151
    new-instance v0, Landroid/os/RegistrantList;

    #@28
    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    #@2b
    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDataRoamingOffRegistrants:Landroid/os/RegistrantList;

    #@2d
    .line 152
    new-instance v0, Landroid/os/RegistrantList;

    #@2f
    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    #@32
    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mAttachedRegistrants:Landroid/os/RegistrantList;

    #@34
    .line 153
    new-instance v0, Landroid/os/RegistrantList;

    #@36
    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    #@39
    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDetachedRegistrants:Landroid/os/RegistrantList;

    #@3b
    .line 154
    new-instance v0, Landroid/os/RegistrantList;

    #@3d
    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    #@40
    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDataRegStateOrRatChangedRegistrants:Landroid/os/RegistrantList;

    #@42
    .line 155
    new-instance v0, Landroid/os/RegistrantList;

    #@44
    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    #@47
    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNetworkAttachedRegistrants:Landroid/os/RegistrantList;

    #@49
    .line 156
    new-instance v0, Landroid/os/RegistrantList;

    #@4b
    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    #@4e
    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPsRestrictEnabledRegistrants:Landroid/os/RegistrantList;

    #@50
    .line 157
    new-instance v0, Landroid/os/RegistrantList;

    #@52
    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    #@55
    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPsRestrictDisabledRegistrants:Landroid/os/RegistrantList;

    #@57
    .line 160
    iput-boolean v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPendingRadioPowerOffAfterDataOff:Z

    #@59
    .line 161
    iput v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPendingRadioPowerOffAfterDataOffTag:I

    #@5b
    .line 253
    iput-boolean v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mImsRegistrationOnOff:Z

    #@5d
    .line 254
    iput-boolean v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mAlarmSwitch:Z

    #@5f
    .line 255
    iput-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRadioOffIntent:Landroid/app/PendingIntent;

    #@61
    .line 257
    iput-boolean v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPowerOffDelayNeed:Z

    #@63
    .line 258
    iput-boolean v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDeviceShuttingDown:Z

    #@65
    .line 260
    iput-boolean v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSpnUpdatePending:Z

    #@67
    .line 261
    iput-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCurSpn:Ljava/lang/String;

    #@69
    .line 262
    iput-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCurDataSpn:Ljava/lang/String;

    #@6b
    .line 263
    iput-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCurPlmn:Ljava/lang/String;

    #@6d
    .line 264
    iput-boolean v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCurShowPlmn:Z

    #@6f
    .line 265
    iput-boolean v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCurShowSpn:Z

    #@71
    .line 266
    iput v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSubId:I

    #@73
    .line 268
    iput-boolean v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mImsRegistered:Z

    #@75
    .line 273
    new-instance v0, Lcom/android/internal/telephony/ServiceStateTracker$SstSubscriptionsChangedListener;

    #@77
    invoke-direct {v0, p0, v3}, Lcom/android/internal/telephony/ServiceStateTracker$SstSubscriptionsChangedListener;-><init>(Lcom/android/internal/telephony/ServiceStateTracker;Lcom/android/internal/telephony/ServiceStateTracker$SstSubscriptionsChangedListener;)V

    #@7a
    .line 272
    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mOnSubscriptionsChangedListener:Lcom/android/internal/telephony/ServiceStateTracker$SstSubscriptionsChangedListener;

    #@7c
    .line 359
    iput-boolean v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNeedFixZoneAfterNitz:Z

    #@7e
    .line 363
    iput-boolean v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mGotCountryCode:Z

    #@80
    .line 371
    new-instance v0, Lcom/android/internal/telephony/ServiceStateTracker$1;

    #@82
    new-instance v1, Landroid/os/Handler;

    #@84
    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    #@87
    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/ServiceStateTracker$1;-><init>(Lcom/android/internal/telephony/ServiceStateTracker;Landroid/os/Handler;)V

    #@8a
    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mAutoTimeObserver:Landroid/database/ContentObserver;

    #@8c
    .line 379
    new-instance v0, Lcom/android/internal/telephony/ServiceStateTracker$2;

    #@8e
    new-instance v1, Landroid/os/Handler;

    #@90
    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    #@93
    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/ServiceStateTracker$2;-><init>(Lcom/android/internal/telephony/ServiceStateTracker;Landroid/os/Handler;)V

    #@96
    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mAutoTimeZoneObserver:Landroid/database/ContentObserver;

    #@98
    .line 389
    iput v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mMaxDataCalls:I

    #@9a
    .line 390
    iput v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewMaxDataCalls:I

    #@9c
    .line 391
    iput v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mReasonDataDenied:I

    #@9e
    .line 392
    iput v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewReasonDataDenied:I

    #@a0
    .line 397
    iput-boolean v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mGsmRoaming:Z

    #@a2
    .line 402
    iput-boolean v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDataRoaming:Z

    #@a4
    .line 406
    iput-boolean v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mEmergencyOnly:Z

    #@a6
    .line 408
    iput-boolean v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNitzUpdatedTime:Z

    #@a8
    .line 427
    new-instance v0, Lcom/android/internal/telephony/ServiceStateTracker$3;

    #@aa
    invoke-direct {v0, p0}, Lcom/android/internal/telephony/ServiceStateTracker$3;-><init>(Lcom/android/internal/telephony/ServiceStateTracker;)V

    #@ad
    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    #@af
    .line 451
    iput v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCurrentOtaspMode:I

    #@b1
    .line 454
    const-string/jumbo v0, "ro.nitz_update_spacing"

    #@b4
    .line 455
    const v1, 0x927c0

    #@b7
    .line 454
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    #@ba
    move-result v0

    #@bb
    iput v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNitzUpdateSpacing:I

    #@bd
    .line 458
    const-string/jumbo v0, "ro.nitz_update_diff"

    #@c0
    .line 459
    const/16 v1, 0x7d0

    #@c2
    .line 458
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    #@c5
    move-result v0

    #@c6
    iput v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNitzUpdateDiff:I

    #@c8
    .line 466
    iput v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRegistrationState:I

    #@ca
    .line 467
    new-instance v0, Landroid/os/RegistrantList;

    #@cc
    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    #@cf
    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCdmaForSubscriptionInfoReadyRegistrants:Landroid/os/RegistrantList;

    #@d1
    .line 469
    iput-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mHomeSystemId:[I

    #@d3
    .line 470
    iput-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mHomeNetworkId:[I

    #@d5
    .line 473
    iput-boolean v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIsMinInfoReady:Z

    #@d7
    .line 474
    iput-boolean v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIsEriTextLoaded:Z

    #@d9
    .line 475
    iput-boolean v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIsSubscriptionFromRuim:Z

    #@db
    .line 479
    iput-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mHbpcdUtils:Lcom/android/internal/telephony/HbpcdUtils;

    #@dd
    .line 482
    iput-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCurrentCarrier:Ljava/lang/String;

    #@df
    .line 636
    iput-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mLastSignalStrength:Landroid/telephony/SignalStrength;

    #@e1
    .line 485
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/ServiceStateTracker;->initOnce(Lcom/android/internal/telephony/GsmCdmaPhone;Lcom/android/internal/telephony/CommandsInterface;)V

    #@e4
    .line 486
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->updatePhoneType()V

    #@e7
    .line 484
    return-void
.end method

.method private currentMccEqualsSimMcc(Landroid/telephony/ServiceState;)Z
    .locals 7
    .param p1, "s"    # Landroid/telephony/ServiceState;

    #@0
    .prologue
    .line 3443
    iget-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@2
    invoke-virtual {v4}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    #@5
    move-result-object v4

    #@6
    .line 3444
    const-string/jumbo v5, "phone"

    #@9
    .line 3443
    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@c
    move-result-object v4

    #@d
    check-cast v4, Landroid/telephony/TelephonyManager;

    #@f
    .line 3445
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getPhoneId()I

    #@12
    move-result v5

    #@13
    .line 3443
    invoke-virtual {v4, v5}, Landroid/telephony/TelephonyManager;->getSimOperatorNumericForPhone(I)Ljava/lang/String;

    #@16
    move-result-object v3

    #@17
    .line 3446
    .local v3, "simNumeric":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    #@1a
    move-result-object v2

    #@1b
    .line 3447
    .local v2, "operatorNumeric":Ljava/lang/String;
    const/4 v1, 0x1

    #@1c
    .line 3450
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
    .line 3451
    const/4 v5, 0x0

    #@23
    const/4 v6, 0x3

    #@24
    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@27
    move-result-object v5

    #@28
    .line 3450
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@2b
    move-result v1

    #@2c
    .line 3454
    .end local v1    # "equalsMcc":Z
    :goto_0
    return v1

    #@2d
    .line 3452
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
    .line 3359
    move v2, p1

    #@1
    .line 3360
    .local v2, "rawOffset":I
    if-eqz p2, :cond_0

    #@3
    .line 3361
    const v6, 0x36ee80

    #@6
    sub-int v2, p1, v6

    #@8
    .line 3363
    :cond_0
    invoke-static {v2}, Ljava/util/TimeZone;->getAvailableIDs(I)[Ljava/lang/String;

    #@b
    move-result-object v5

    #@c
    .line 3364
    .local v5, "zones":[Ljava/lang/String;
    const/4 v1, 0x0

    #@d
    .line 3365
    .local v1, "guess":Ljava/util/TimeZone;
    new-instance v0, Ljava/util/Date;

    #@f
    invoke-direct {v0, p3, p4}, Ljava/util/Date;-><init>(J)V

    #@12
    .line 3366
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
    .line 3367
    .local v4, "zone":Ljava/lang/String;
    invoke-static {v4}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    #@1b
    move-result-object v3

    #@1c
    .line 3368
    .local v3, "tz":Ljava/util/TimeZone;
    invoke-virtual {v3, p3, p4}, Ljava/util/TimeZone;->getOffset(J)I

    #@1f
    move-result v8

    #@20
    if-ne v8, p1, :cond_2

    #@22
    .line 3369
    invoke-virtual {v3, v0}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    #@25
    move-result v8

    #@26
    if-ne v8, p2, :cond_2

    #@28
    .line 3370
    move-object v1, v3

    #@29
    .line 3375
    .end local v1    # "guess":Ljava/util/TimeZone;
    .end local v3    # "tz":Ljava/util/TimeZone;
    .end local v4    # "zone":Ljava/lang/String;
    :cond_1
    return-object v1

    #@2a
    .line 3366
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
    .line 3878
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
    .line 3879
    :catch_0
    move-exception v0

    #@11
    .line 3880
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
    .line 3886
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
    .line 3887
    :catch_0
    move-exception v0

    #@11
    .line 3888
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
    .line 3349
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/ServiceStateTracker;->findTimeZone(IZJ)Ljava/util/TimeZone;

    #@3
    move-result-object v0

    #@4
    .line 3350
    .local v0, "guess":Ljava/util/TimeZone;
    if-nez v0, :cond_0

    #@6
    .line 3352
    if-eqz p2, :cond_1

    #@8
    const/4 v1, 0x0

    #@9
    :goto_0
    invoke-direct {p0, p1, v1, p3, p4}, Lcom/android/internal/telephony/ServiceStateTracker;->findTimeZone(IZJ)Ljava/util/TimeZone;

    #@c
    move-result-object v0

    #@d
    .line 3354
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
    .line 3355
    return-object v0

    #@28
    .line 3352
    :cond_1
    const/4 v1, 0x1

    #@29
    goto :goto_0

    #@2a
    .line 3354
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
    .line 4490
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
    .line 4493
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->pollState()V

    #@e
    .line 4489
    return-void
.end method

.method private getUiccCardApplication()Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .locals 3

    #@0
    .prologue
    .line 4035
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 4036
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    #@a
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@c
    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    #@f
    move-result v1

    #@10
    .line 4037
    const/4 v2, 0x1

    #@11
    .line 4036
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCardApplication(II)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@14
    move-result-object v0

    #@15
    return-object v0

    #@16
    .line 4039
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    #@18
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@1a
    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    #@1d
    move-result v1

    #@1e
    .line 4040
    const/4 v2, 0x2

    #@1f
    .line 4039
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
    .line 4497
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
    .line 4499
    if-nez p1, :cond_0

    #@1a
    const/4 v0, 0x1

    #@1b
    .line 4498
    :cond_0
    iput-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIsSubscriptionFromRuim:Z

    #@1d
    .line 4500
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
    .line 4501
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ServiceStateTracker;->saveCdmaSubscriptionSource(I)V

    #@39
    .line 4502
    iget-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIsSubscriptionFromRuim:Z

    #@3b
    if-nez v0, :cond_1

    #@3d
    .line 4504
    const/16 v0, 0x23

    #@3f
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    #@42
    move-result-object v0

    #@43
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->sendMessage(Landroid/os/Message;)Z

    #@46
    .line 4496
    :cond_1
    return-void
.end method

.method private initOnce(Lcom/android/internal/telephony/GsmCdmaPhone;Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 10
    .param p1, "phone"    # Lcom/android/internal/telephony/GsmCdmaPhone;
    .param p2, "ci"    # Lcom/android/internal/telephony/CommandsInterface;

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    const/4 v7, 0x0

    #@2
    const/4 v9, 0x0

    #@3
    .line 490
    iput-object p1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@5
    .line 491
    iput-object p2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@7
    .line 492
    iget-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@9
    invoke-virtual {v5}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    #@c
    move-result-object v5

    #@d
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@10
    move-result-object v5

    #@11
    .line 493
    const v8, 0x1120059

    #@14
    .line 492
    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@17
    move-result v5

    #@18
    iput-boolean v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mVoiceCapable:Z

    #@1a
    .line 494
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    #@1d
    move-result-object v5

    #@1e
    iput-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    #@20
    .line 496
    iget-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    #@22
    const/16 v8, 0x2a

    #@24
    invoke-virtual {v5, p0, v8, v9}, Lcom/android/internal/telephony/uicc/UiccController;->registerForIccChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    #@27
    .line 497
    iget-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@29
    const/16 v8, 0xc

    #@2b
    invoke-interface {v5, p0, v8, v9}, Lcom/android/internal/telephony/CommandsInterface;->setOnSignalStrengthUpdate(Landroid/os/Handler;ILjava/lang/Object;)V

    #@2e
    .line 498
    iget-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@30
    const/16 v8, 0x2c

    #@32
    invoke-interface {v5, p0, v8, v9}, Lcom/android/internal/telephony/CommandsInterface;->registerForCellInfoList(Landroid/os/Handler;ILjava/lang/Object;)V

    #@35
    .line 500
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    #@38
    move-result-object v5

    #@39
    iput-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    #@3b
    .line 501
    invoke-virtual {p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    #@3e
    move-result-object v5

    #@3f
    invoke-static {v5}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    #@42
    move-result-object v5

    #@43
    iput-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    #@45
    .line 502
    iget-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    #@47
    .line 503
    iget-object v8, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mOnSubscriptionsChangedListener:Lcom/android/internal/telephony/ServiceStateTracker$SstSubscriptionsChangedListener;

    #@49
    .line 502
    invoke-virtual {v5, v8}, Landroid/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    #@4c
    .line 505
    iget-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@4e
    const/16 v8, 0x2e

    #@50
    invoke-interface {v5, p0, v8, v9}, Lcom/android/internal/telephony/CommandsInterface;->registerForImsNetworkStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    #@53
    .line 508
    invoke-virtual {p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    #@56
    move-result-object v5

    #@57
    const-string/jumbo v8, "power"

    #@5a
    invoke-virtual {v5, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@5d
    move-result-object v4

    #@5e
    check-cast v4, Landroid/os/PowerManager;

    #@60
    .line 509
    .local v4, "powerManager":Landroid/os/PowerManager;
    const-string/jumbo v5, "ServiceStateTracker"

    #@63
    invoke-virtual {v4, v6, v5}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    #@66
    move-result-object v5

    #@67
    iput-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@69
    .line 511
    iget-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@6b
    invoke-interface {v5, p0, v6, v9}, Lcom/android/internal/telephony/CommandsInterface;->registerForRadioStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    #@6e
    .line 512
    iget-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@70
    const/4 v8, 0x2

    #@71
    invoke-interface {v5, p0, v8, v9}, Lcom/android/internal/telephony/CommandsInterface;->registerForVoiceNetworkStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    #@74
    .line 513
    iget-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@76
    const/16 v8, 0xb

    #@78
    invoke-interface {v5, p0, v8, v9}, Lcom/android/internal/telephony/CommandsInterface;->setOnNITZTime(Landroid/os/Handler;ILjava/lang/Object;)V

    #@7b
    .line 515
    invoke-virtual {p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    #@7e
    move-result-object v5

    #@7f
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@82
    move-result-object v5

    #@83
    iput-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCr:Landroid/content/ContentResolver;

    #@85
    .line 517
    iget-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCr:Landroid/content/ContentResolver;

    #@87
    const-string/jumbo v8, "airplane_mode_on"

    #@8a
    invoke-static {v5, v8, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@8d
    move-result v0

    #@8e
    .line 518
    .local v0, "airplaneMode":I
    iget-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCr:Landroid/content/ContentResolver;

    #@90
    .line 519
    const-string/jumbo v8, "enable_cellular_on_boot"

    #@93
    .line 518
    invoke-static {v5, v8, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@96
    move-result v2

    #@97
    .line 520
    .local v2, "enableCellularOnBoot":I
    if-lez v2, :cond_0

    #@99
    if-gtz v0, :cond_0

    #@9b
    move v5, v6

    #@9c
    :goto_0
    iput-boolean v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDesiredPowerState:Z

    #@9e
    .line 522
    iget-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCr:Landroid/content/ContentResolver;

    #@a0
    .line 523
    const-string/jumbo v8, "auto_time"

    #@a3
    invoke-static {v8}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    #@a6
    move-result-object v8

    #@a7
    .line 524
    iget-object v9, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mAutoTimeObserver:Landroid/database/ContentObserver;

    #@a9
    .line 522
    invoke-virtual {v5, v8, v6, v9}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    #@ac
    .line 525
    iget-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCr:Landroid/content/ContentResolver;

    #@ae
    .line 526
    const-string/jumbo v8, "auto_time_zone"

    #@b1
    invoke-static {v8}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    #@b4
    move-result-object v8

    #@b5
    .line 527
    iget-object v9, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mAutoTimeZoneObserver:Landroid/database/ContentObserver;

    #@b7
    .line 525
    invoke-virtual {v5, v8, v6, v9}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    #@ba
    .line 528
    invoke-direct {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->setSignalStrengthDefaultValues()V

    #@bd
    .line 531
    iget-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@bf
    invoke-virtual {v5}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    #@c2
    move-result-object v1

    #@c3
    .line 532
    .local v1, "context":Landroid/content/Context;
    new-instance v3, Landroid/content/IntentFilter;

    #@c5
    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    #@c8
    .line 533
    .local v3, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v5, "android.intent.action.LOCALE_CHANGED"

    #@cb
    invoke-virtual {v3, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@ce
    .line 534
    iget-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    #@d0
    invoke-virtual {v1, v5, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    #@d3
    .line 535
    new-instance v3, Landroid/content/IntentFilter;

    #@d5
    .end local v3    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    #@d8
    .line 536
    .restart local v3    # "filter":Landroid/content/IntentFilter;
    const-string/jumbo v5, "android.intent.action.ACTION_RADIO_OFF"

    #@db
    invoke-virtual {v3, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@de
    .line 537
    iget-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    #@e0
    invoke-virtual {v1, v5, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    #@e3
    .line 539
    new-instance v5, Lcom/android/internal/telephony/TelephonyEventLog;

    #@e5
    iget-object v6, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@e7
    invoke-virtual {v6}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    #@ea
    move-result v6

    #@eb
    invoke-direct {v5, v6}, Lcom/android/internal/telephony/TelephonyEventLog;-><init>(I)V

    #@ee
    iput-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mEventLog:Lcom/android/internal/telephony/TelephonyEventLog;

    #@f0
    .line 540
    iget-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@f2
    invoke-virtual {v5, v7}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifyOtaspChanged(I)V

    #@f5
    .line 489
    return-void

    #@f6
    .end local v1    # "context":Landroid/content/Context;
    .end local v3    # "filter":Landroid/content/IntentFilter;
    :cond_0
    move v5, v7

    #@f7
    .line 520
    goto :goto_0
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
    .line 3341
    if-nez p2, :cond_0

    #@4
    .line 3342
    if-nez p1, :cond_1

    #@6
    .line 3341
    :cond_0
    :goto_0
    return v0

    #@7
    :cond_1
    move v0, v1

    #@8
    .line 3342
    goto :goto_0
.end method

.method private isHomeSid(I)Z
    .locals 2
    .param p1, "sid"    # I

    #@0
    .prologue
    .line 1328
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mHomeSystemId:[I

    #@2
    if-eqz v1, :cond_1

    #@4
    .line 1329
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
    .line 1330
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mHomeSystemId:[I

    #@c
    aget v1, v1, v0

    #@e
    if-ne p1, v1, :cond_0

    #@10
    .line 1331
    const/4 v1, 0x1

    #@11
    return v1

    #@12
    .line 1329
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@14
    goto :goto_0

    #@15
    .line 1335
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
    .line 3203
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->isSidsAllZeros()Z

    #@8
    move-result v1

    #@9
    if-eqz v1, :cond_0

    #@b
    return v4

    #@c
    .line 3206
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
    .line 3208
    :cond_1
    if-nez p1, :cond_2

    #@17
    return v4

    #@18
    .line 3210
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
    .line 3213
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mHomeSystemId:[I

    #@20
    aget v1, v1, v0

    #@22
    if-ne v1, p1, :cond_5

    #@24
    .line 3214
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
    .line 3216
    :cond_3
    return v4

    #@31
    .line 3215
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
    .line 3210
    :cond_5
    add-int/lit8 v0, v0, 0x1

    #@3d
    goto :goto_0

    #@3e
    .line 3220
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
    .line 4807
    invoke-virtual {p1, p3}, Landroid/os/BaseBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 4809
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
    .line 4810
    const/4 v1, 0x1

    #@11
    return v1

    #@12
    .line 4812
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
    .line 3468
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    #@4
    move-result-object v2

    #@5
    .line 3469
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
    .line 3470
    const v5, 0x107003a

    #@12
    .line 3469
    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    #@15
    move-result-object v1

    #@16
    .line 3472
    .local v1, "numericArray":[Ljava/lang/String;
    array-length v3, v1

    #@17
    if-eqz v3, :cond_0

    #@19
    if-nez v2, :cond_1

    #@1b
    .line 3473
    :cond_0
    return v4

    #@1c
    .line 3476
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
    .line 3477
    .local v0, "numeric":Ljava/lang/String;
    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@25
    move-result v6

    #@26
    if-eqz v6, :cond_2

    #@28
    .line 3478
    const/4 v3, 0x1

    #@29
    return v3

    #@2a
    .line 3476
    :cond_2
    add-int/lit8 v3, v3, 0x1

    #@2c
    goto :goto_0

    #@2d
    .line 3481
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
    .line 3485
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    #@4
    move-result-object v2

    #@5
    .line 3486
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
    .line 3487
    const v5, 0x107003b

    #@12
    .line 3486
    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    #@15
    move-result-object v1

    #@16
    .line 3489
    .local v1, "numericArray":[Ljava/lang/String;
    array-length v3, v1

    #@17
    if-eqz v3, :cond_0

    #@19
    if-nez v2, :cond_1

    #@1b
    .line 3490
    :cond_0
    return v4

    #@1c
    .line 3493
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
    .line 3494
    .local v0, "numeric":Ljava/lang/String;
    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@25
    move-result v6

    #@26
    if-eqz v6, :cond_2

    #@28
    .line 3495
    const/4 v3, 0x1

    #@29
    return v3

    #@2a
    .line 3493
    :cond_2
    add-int/lit8 v3, v3, 0x1

    #@2c
    goto :goto_0

    #@2d
    .line 3498
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
    .line 1950
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
    .line 1951
    const v4, 0x107003f

    #@e
    .line 1950
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    #@11
    move-result-object v1

    #@12
    .line 1953
    .local v1, "homeRoamIndicators":[Ljava/lang/String;
    if-eqz v1, :cond_2

    #@14
    .line 1956
    array-length v4, v1

    #@15
    move v2, v3

    #@16
    :goto_0
    if-ge v2, v4, :cond_1

    #@18
    aget-object v0, v1, v2

    #@1a
    .line 1957
    .local v0, "homeRoamInd":Ljava/lang/String;
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1d
    move-result v5

    #@1e
    if-eqz v5, :cond_0

    #@20
    .line 1958
    const/4 v2, 0x1

    #@21
    return v2

    #@22
    .line 1956
    :cond_0
    add-int/lit8 v2, v2, 0x1

    #@24
    goto :goto_0

    #@25
    .line 1962
    .end local v0    # "homeRoamInd":Ljava/lang/String;
    :cond_1
    return v3

    #@26
    .line 1966
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
    .line 1577
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
    .line 3433
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
    .line 3410
    iget-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@2
    invoke-virtual {v5}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    #@5
    move-result-object v5

    #@6
    .line 3411
    const-string/jumbo v6, "phone"

    #@9
    .line 3410
    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@c
    move-result-object v5

    #@d
    check-cast v5, Landroid/telephony/TelephonyManager;

    #@f
    .line 3412
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getPhoneId()I

    #@12
    move-result v6

    #@13
    .line 3410
    invoke-virtual {v5, v6}, Landroid/telephony/TelephonyManager;->getSimOperatorNameForPhone(I)Ljava/lang/String;

    #@16
    move-result-object v4

    #@17
    .line 3416
    .local v4, "spn":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    #@1a
    move-result-object v2

    #@1b
    .line 3417
    .local v2, "onsl":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorAlphaShort()Ljava/lang/String;

    #@1e
    move-result-object v3

    #@1f
    .line 3419
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
    .line 3420
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
    .line 3422
    :goto_1
    if-nez v0, :cond_2

    #@35
    :goto_2
    return v1

    #@36
    .line 3419
    :cond_0
    const/4 v0, 0x0

    #@37
    .local v0, "equalsOnsl":Z
    goto :goto_0

    #@38
    .line 3420
    .end local v0    # "equalsOnsl":Z
    :cond_1
    const/4 v1, 0x0

    #@39
    .local v1, "equalsOnss":Z
    goto :goto_1

    #@3a
    .line 3422
    .end local v1    # "equalsOnss":Z
    :cond_2
    const/4 v1, 0x1

    #@3b
    goto :goto_2
.end method

.method private modemTriggeredPollState()V
    .locals 1

    #@0
    .prologue
    .line 2426
    const/4 v0, 0x1

    #@1
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->pollState(Z)V

    #@4
    .line 2425
    return-void
.end method

.method private notifyCdmaSubscriptionInfoReady()V
    .locals 1

    #@0
    .prologue
    .line 4063
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCdmaForSubscriptionInfoReadyRegistrants:Landroid/os/RegistrantList;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 4064
    const-string/jumbo v0, "CDMA_SUBSCRIPTION: call notifyRegistrants()"

    #@7
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    #@a
    .line 4065
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCdmaForSubscriptionInfoReadyRegistrants:Landroid/os/RegistrantList;

    #@c
    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    #@f
    .line 4062
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
    .line 3509
    new-instance v1, Lcom/android/internal/telephony/RestrictedState;

    #@a
    invoke-direct {v1}, Lcom/android/internal/telephony/RestrictedState;-><init>()V

    #@d
    .line 3511
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
    .line 3513
    iget-object v3, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@28
    if-nez v3, :cond_3

    #@2a
    .line 3514
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@2c
    check-cast v0, [I

    #@2e
    .line 3515
    .local v0, "ints":[I
    aget v2, v0, v5

    #@30
    .line 3518
    .local v2, "state":I
    and-int/lit8 v3, v2, 0x1

    #@32
    if-nez v3, :cond_4

    #@34
    .line 3519
    and-int/lit8 v3, v2, 0x4

    #@36
    if-eqz v3, :cond_5

    #@38
    move v3, v4

    #@39
    .line 3517
    :goto_0
    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/RestrictedState;->setCsEmergencyRestricted(Z)V

    #@3c
    .line 3521
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
    .line 3523
    and-int/lit8 v3, v2, 0x2

    #@4c
    if-nez v3, :cond_6

    #@4e
    .line 3524
    and-int/lit8 v3, v2, 0x4

    #@50
    if-eqz v3, :cond_7

    #@52
    move v3, v4

    #@53
    .line 3522
    :goto_1
    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/RestrictedState;->setCsNormalRestricted(Z)V

    #@56
    .line 3526
    and-int/lit8 v3, v2, 0x10

    #@58
    if-eqz v3, :cond_8

    #@5a
    .line 3525
    :goto_2
    invoke-virtual {v1, v4}, Lcom/android/internal/telephony/RestrictedState;->setPsRestricted(Z)V

    #@5d
    .line 3529
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
    .line 3531
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
    .line 3532
    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPsRestrictEnabledRegistrants:Landroid/os/RegistrantList;

    #@84
    invoke-virtual {v3}, Landroid/os/RegistrantList;->notifyRegistrants()V

    #@87
    .line 3533
    const/16 v3, 0x3e9

    #@89
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->setNotification(I)V

    #@8c
    .line 3544
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
    .line 3545
    invoke-virtual {v1}, Lcom/android/internal/telephony/RestrictedState;->isCsRestricted()Z

    #@97
    move-result v3

    #@98
    if-nez v3, :cond_a

    #@9a
    .line 3547
    invoke-direct {p0, v8}, Lcom/android/internal/telephony/ServiceStateTracker;->setNotification(I)V

    #@9d
    .line 3592
    :cond_2
    :goto_4
    iput-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    #@9f
    .line 3594
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
    .line 3508
    return-void

    #@b9
    .restart local v0    # "ints":[I
    .restart local v2    # "state":I
    :cond_4
    move v3, v4

    #@ba
    .line 3518
    goto/16 :goto_0

    #@bc
    :cond_5
    move v3, v5

    #@bd
    .line 3519
    goto/16 :goto_0

    #@bf
    :cond_6
    move v3, v4

    #@c0
    .line 3523
    goto :goto_1

    #@c1
    :cond_7
    move v3, v5

    #@c2
    .line 3524
    goto :goto_1

    #@c3
    :cond_8
    move v4, v5

    #@c4
    .line 3526
    goto :goto_2

    #@c5
    .line 3534
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
    .line 3535
    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPsRestrictDisabledRegistrants:Landroid/os/RegistrantList;

    #@d5
    invoke-virtual {v3}, Landroid/os/RegistrantList;->notifyRegistrants()V

    #@d8
    .line 3536
    const/16 v3, 0x3ea

    #@da
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->setNotification(I)V

    #@dd
    goto :goto_3

    #@de
    .line 3548
    :cond_a
    invoke-virtual {v1}, Lcom/android/internal/telephony/RestrictedState;->isCsNormalRestricted()Z

    #@e1
    move-result v3

    #@e2
    if-nez v3, :cond_b

    #@e4
    .line 3550
    const/16 v3, 0x3ee

    #@e6
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->setNotification(I)V

    #@e9
    goto :goto_4

    #@ea
    .line 3551
    :cond_b
    invoke-virtual {v1}, Lcom/android/internal/telephony/RestrictedState;->isCsEmergencyRestricted()Z

    #@ed
    move-result v3

    #@ee
    if-nez v3, :cond_2

    #@f0
    .line 3553
    invoke-direct {p0, v9}, Lcom/android/internal/telephony/ServiceStateTracker;->setNotification(I)V

    #@f3
    goto :goto_4

    #@f4
    .line 3555
    :cond_c
    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    #@f6
    invoke-virtual {v3}, Lcom/android/internal/telephony/RestrictedState;->isCsEmergencyRestricted()Z

    #@f9
    move-result v3

    #@fa
    if-eqz v3, :cond_d

    #@fc
    .line 3556
    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    #@fe
    invoke-virtual {v3}, Lcom/android/internal/telephony/RestrictedState;->isCsNormalRestricted()Z

    #@101
    move-result v3

    #@102
    if-eqz v3, :cond_e

    #@104
    .line 3567
    :cond_d
    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    #@106
    invoke-virtual {v3}, Lcom/android/internal/telephony/RestrictedState;->isCsEmergencyRestricted()Z

    #@109
    move-result v3

    #@10a
    if-nez v3, :cond_13

    #@10c
    .line 3568
    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    #@10e
    invoke-virtual {v3}, Lcom/android/internal/telephony/RestrictedState;->isCsNormalRestricted()Z

    #@111
    move-result v3

    #@112
    .line 3567
    if-eqz v3, :cond_13

    #@114
    .line 3569
    invoke-virtual {v1}, Lcom/android/internal/telephony/RestrictedState;->isCsRestricted()Z

    #@117
    move-result v3

    #@118
    if-nez v3, :cond_11

    #@11a
    .line 3571
    invoke-direct {p0, v8}, Lcom/android/internal/telephony/ServiceStateTracker;->setNotification(I)V

    #@11d
    goto :goto_4

    #@11e
    .line 3557
    :cond_e
    invoke-virtual {v1}, Lcom/android/internal/telephony/RestrictedState;->isCsRestricted()Z

    #@121
    move-result v3

    #@122
    if-nez v3, :cond_f

    #@124
    .line 3559
    invoke-direct {p0, v8}, Lcom/android/internal/telephony/ServiceStateTracker;->setNotification(I)V

    #@127
    goto/16 :goto_4

    #@129
    .line 3560
    :cond_f
    invoke-virtual {v1}, Lcom/android/internal/telephony/RestrictedState;->isCsRestricted()Z

    #@12c
    move-result v3

    #@12d
    if-eqz v3, :cond_10

    #@12f
    .line 3562
    invoke-direct {p0, v7}, Lcom/android/internal/telephony/ServiceStateTracker;->setNotification(I)V

    #@132
    goto/16 :goto_4

    #@134
    .line 3563
    :cond_10
    invoke-virtual {v1}, Lcom/android/internal/telephony/RestrictedState;->isCsNormalRestricted()Z

    #@137
    move-result v3

    #@138
    if-eqz v3, :cond_2

    #@13a
    .line 3565
    invoke-direct {p0, v9}, Lcom/android/internal/telephony/ServiceStateTracker;->setNotification(I)V

    #@13d
    goto/16 :goto_4

    #@13f
    .line 3572
    :cond_11
    invoke-virtual {v1}, Lcom/android/internal/telephony/RestrictedState;->isCsRestricted()Z

    #@142
    move-result v3

    #@143
    if-eqz v3, :cond_12

    #@145
    .line 3574
    invoke-direct {p0, v7}, Lcom/android/internal/telephony/ServiceStateTracker;->setNotification(I)V

    #@148
    goto/16 :goto_4

    #@14a
    .line 3575
    :cond_12
    invoke-virtual {v1}, Lcom/android/internal/telephony/RestrictedState;->isCsEmergencyRestricted()Z

    #@14d
    move-result v3

    #@14e
    if-eqz v3, :cond_2

    #@150
    .line 3577
    const/16 v3, 0x3ee

    #@152
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->setNotification(I)V

    #@155
    goto/16 :goto_4

    #@157
    .line 3580
    :cond_13
    invoke-virtual {v1}, Lcom/android/internal/telephony/RestrictedState;->isCsRestricted()Z

    #@15a
    move-result v3

    #@15b
    if-eqz v3, :cond_14

    #@15d
    .line 3582
    invoke-direct {p0, v7}, Lcom/android/internal/telephony/ServiceStateTracker;->setNotification(I)V

    #@160
    goto/16 :goto_4

    #@162
    .line 3583
    :cond_14
    invoke-virtual {v1}, Lcom/android/internal/telephony/RestrictedState;->isCsEmergencyRestricted()Z

    #@165
    move-result v3

    #@166
    if-eqz v3, :cond_15

    #@168
    .line 3585
    const/16 v3, 0x3ee

    #@16a
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->setNotification(I)V

    #@16d
    goto/16 :goto_4

    #@16f
    .line 3586
    :cond_15
    invoke-virtual {v1}, Lcom/android/internal/telephony/RestrictedState;->isCsNormalRestricted()Z

    #@172
    move-result v3

    #@173
    if-eqz v3, :cond_2

    #@175
    .line 3588
    invoke-direct {p0, v9}, Lcom/android/internal/telephony/ServiceStateTracker;->setNotification(I)V

    #@178
    goto/16 :goto_4
.end method

.method private pollStateDone()V
    .locals 1

    #@0
    .prologue
    .line 2482
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 2483
    invoke-direct {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->pollStateDoneGsm()V

    #@b
    .line 2481
    :goto_0
    return-void

    #@c
    .line 2484
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@e
    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeCdma()Z

    #@11
    move-result v0

    #@12
    if-eqz v0, :cond_1

    #@14
    .line 2485
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->pollStateDoneCdma()V

    #@17
    goto :goto_0

    #@18
    .line 2487
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->pollStateDoneCdmaLte()V

    #@1b
    goto :goto_0
.end method

.method private pollStateDoneGsm()V
    .locals 40

    #@0
    .prologue
    .line 2492
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
    .line 2493
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
    .line 2494
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
    .line 2496
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ServiceStateTracker;->useDataRegStateForDataOnlyDevices()V

    #@28
    .line 2497
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ServiceStateTracker;->resetServiceStateInIwlanMode()V

    #@2b
    .line 2500
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
    .line 2501
    move-object/from16 v0, p0

    #@39
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@3b
    move-object/from16 v36, v0

    #@3d
    .line 2500
    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v35

    #@41
    .line 2501
    const-string/jumbo v36, "] newSS=["

    #@44
    .line 2500
    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v35

    #@48
    .line 2501
    move-object/from16 v0, p0

    #@4a
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@4c
    move-object/from16 v36, v0

    #@4e
    .line 2500
    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v35

    #@52
    .line 2501
    const-string/jumbo v36, "]"

    #@55
    .line 2500
    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@58
    move-result-object v35

    #@59
    .line 2502
    const-string/jumbo v36, " oldMaxDataCalls="

    #@5c
    .line 2500
    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v35

    #@60
    .line 2502
    move-object/from16 v0, p0

    #@62
    iget v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mMaxDataCalls:I

    #@64
    move/from16 v36, v0

    #@66
    .line 2500
    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@69
    move-result-object v35

    #@6a
    .line 2503
    const-string/jumbo v36, " mNewMaxDataCalls="

    #@6d
    .line 2500
    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@70
    move-result-object v35

    #@71
    .line 2503
    move-object/from16 v0, p0

    #@73
    iget v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewMaxDataCalls:I

    #@75
    move/from16 v36, v0

    #@77
    .line 2500
    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@7a
    move-result-object v35

    #@7b
    .line 2504
    const-string/jumbo v36, " oldReasonDataDenied="

    #@7e
    .line 2500
    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@81
    move-result-object v35

    #@82
    .line 2504
    move-object/from16 v0, p0

    #@84
    iget v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mReasonDataDenied:I

    #@86
    move/from16 v36, v0

    #@88
    .line 2500
    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@8b
    move-result-object v35

    #@8c
    .line 2505
    const-string/jumbo v36, " mNewReasonDataDenied="

    #@8f
    .line 2500
    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@92
    move-result-object v35

    #@93
    .line 2505
    move-object/from16 v0, p0

    #@95
    iget v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewReasonDataDenied:I

    #@97
    move/from16 v36, v0

    #@99
    .line 2500
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
    .line 2509
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
    if-eqz v35, :cond_17

    #@b4
    .line 2510
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
    if-nez v35, :cond_16

    #@c0
    const/16 v18, 0x1

    #@c2
    .line 2513
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
    if-nez v35, :cond_19

    #@ce
    .line 2514
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
    if-eqz v35, :cond_18

    #@da
    const/4 v14, 0x1

    #@db
    .line 2517
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
    if-eqz v35, :cond_1b

    #@e7
    .line 2518
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
    if-nez v35, :cond_1a

    #@f3
    const/4 v15, 0x1

    #@f4
    .line 2521
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
    if-nez v35, :cond_1d

    #@100
    .line 2522
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
    if-eqz v35, :cond_1c

    #@10c
    const/16 v16, 0x1

    #@10e
    .line 2525
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
    if-eq v0, v1, :cond_1e

    #@128
    const/4 v11, 0x1

    #@129
    .line 2528
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
    if-eq v0, v1, :cond_1f

    #@143
    const/16 v21, 0x1

    #@145
    .line 2531
    .local v21, "hasVoiceRegStateChanged":Z
    :goto_5
    move-object/from16 v0, p0

    #@147
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@149
    move-object/from16 v35, v0

    #@14b
    invoke-virtual/range {v35 .. v35}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    #@14e
    move-result v35

    #@14f
    move-object/from16 v0, p0

    #@151
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@153
    move-object/from16 v36, v0

    #@155
    invoke-virtual/range {v36 .. v36}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    #@158
    move-result v36

    #@159
    move/from16 v0, v35

    #@15b
    move/from16 v1, v36

    #@15d
    if-eq v0, v1, :cond_20

    #@15f
    const/16 v20, 0x1

    #@161
    .line 2534
    .local v20, "hasRilVoiceRadioTechnologyChanged":Z
    :goto_6
    move-object/from16 v0, p0

    #@163
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@165
    move-object/from16 v35, v0

    #@167
    invoke-virtual/range {v35 .. v35}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    #@16a
    move-result v35

    #@16b
    move-object/from16 v0, p0

    #@16d
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@16f
    move-object/from16 v36, v0

    #@171
    invoke-virtual/range {v36 .. v36}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    #@174
    move-result v36

    #@175
    move/from16 v0, v35

    #@177
    move/from16 v1, v36

    #@179
    if-eq v0, v1, :cond_21

    #@17b
    const/16 v19, 0x1

    #@17d
    .line 2536
    .local v19, "hasRilDataRadioTechnologyChanged":Z
    :goto_7
    move-object/from16 v0, p0

    #@17f
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@181
    move-object/from16 v35, v0

    #@183
    move-object/from16 v0, p0

    #@185
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@187
    move-object/from16 v36, v0

    #@189
    invoke-virtual/range {v35 .. v36}, Landroid/telephony/ServiceState;->equals(Ljava/lang/Object;)Z

    #@18c
    move-result v35

    #@18d
    if-eqz v35, :cond_22

    #@18f
    const/4 v10, 0x0

    #@190
    .line 2538
    .local v10, "hasChanged":Z
    :goto_8
    move-object/from16 v0, p0

    #@192
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@194
    move-object/from16 v35, v0

    #@196
    invoke-virtual/range {v35 .. v35}, Landroid/telephony/ServiceState;->getVoiceRoaming()Z

    #@199
    move-result v35

    #@19a
    if-nez v35, :cond_23

    #@19c
    move-object/from16 v0, p0

    #@19e
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@1a0
    move-object/from16 v35, v0

    #@1a2
    invoke-virtual/range {v35 .. v35}, Landroid/telephony/ServiceState;->getVoiceRoaming()Z

    #@1a5
    move-result v23

    #@1a6
    .line 2540
    :goto_9
    move-object/from16 v0, p0

    #@1a8
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@1aa
    move-object/from16 v35, v0

    #@1ac
    invoke-virtual/range {v35 .. v35}, Landroid/telephony/ServiceState;->getVoiceRoaming()Z

    #@1af
    move-result v35

    #@1b0
    if-eqz v35, :cond_1

    #@1b2
    move-object/from16 v0, p0

    #@1b4
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@1b6
    move-object/from16 v35, v0

    #@1b8
    invoke-virtual/range {v35 .. v35}, Landroid/telephony/ServiceState;->getVoiceRoaming()Z

    #@1bb
    move-result v35

    #@1bc
    if-eqz v35, :cond_24

    #@1be
    :cond_1
    const/16 v22, 0x0

    #@1c0
    .line 2542
    .local v22, "hasVoiceRoamingOff":Z
    :goto_a
    move-object/from16 v0, p0

    #@1c2
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@1c4
    move-object/from16 v35, v0

    #@1c6
    invoke-virtual/range {v35 .. v35}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    #@1c9
    move-result v35

    #@1ca
    if-nez v35, :cond_25

    #@1cc
    move-object/from16 v0, p0

    #@1ce
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@1d0
    move-object/from16 v35, v0

    #@1d2
    invoke-virtual/range {v35 .. v35}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    #@1d5
    move-result v13

    #@1d6
    .line 2544
    :goto_b
    move-object/from16 v0, p0

    #@1d8
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@1da
    move-object/from16 v35, v0

    #@1dc
    invoke-virtual/range {v35 .. v35}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    #@1df
    move-result v35

    #@1e0
    if-eqz v35, :cond_2

    #@1e2
    move-object/from16 v0, p0

    #@1e4
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@1e6
    move-object/from16 v35, v0

    #@1e8
    invoke-virtual/range {v35 .. v35}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    #@1eb
    move-result v35

    #@1ec
    if-eqz v35, :cond_26

    #@1ee
    :cond_2
    const/4 v12, 0x0

    #@1ef
    .line 2546
    .local v12, "hasDataRoamingOff":Z
    :goto_c
    move-object/from16 v0, p0

    #@1f1
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewCellLoc:Landroid/telephony/CellLocation;

    #@1f3
    move-object/from16 v35, v0

    #@1f5
    move-object/from16 v0, p0

    #@1f7
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mCellLoc:Landroid/telephony/CellLocation;

    #@1f9
    move-object/from16 v36, v0

    #@1fb
    invoke-virtual/range {v35 .. v36}, Landroid/telephony/CellLocation;->equals(Ljava/lang/Object;)Z

    #@1fe
    move-result v35

    #@1ff
    if-eqz v35, :cond_27

    #@201
    const/16 v17, 0x0

    #@203
    .line 2548
    .local v17, "hasLocationChanged":Z
    :goto_d
    move-object/from16 v0, p0

    #@205
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@207
    move-object/from16 v35, v0

    #@209
    invoke-virtual/range {v35 .. v35}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    #@20c
    move-result-object v35

    #@20d
    const-string/jumbo v36, "phone"

    #@210
    invoke-virtual/range {v35 .. v36}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@213
    move-result-object v31

    #@214
    check-cast v31, Landroid/telephony/TelephonyManager;

    #@216
    .line 2551
    .local v31, "tm":Landroid/telephony/TelephonyManager;
    if-nez v21, :cond_3

    #@218
    if-eqz v11, :cond_4

    #@21a
    .line 2552
    :cond_3
    const/16 v35, 0x4

    #@21c
    move/from16 v0, v35

    #@21e
    new-array v0, v0, [Ljava/lang/Object;

    #@220
    move-object/from16 v35, v0

    #@222
    .line 2553
    move-object/from16 v0, p0

    #@224
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@226
    move-object/from16 v36, v0

    #@228
    invoke-virtual/range {v36 .. v36}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    #@22b
    move-result v36

    #@22c
    invoke-static/range {v36 .. v36}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@22f
    move-result-object v36

    #@230
    const/16 v37, 0x0

    #@232
    aput-object v36, v35, v37

    #@234
    move-object/from16 v0, p0

    #@236
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@238
    move-object/from16 v36, v0

    #@23a
    invoke-virtual/range {v36 .. v36}, Landroid/telephony/ServiceState;->getDataRegState()I

    #@23d
    move-result v36

    #@23e
    invoke-static/range {v36 .. v36}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@241
    move-result-object v36

    #@242
    const/16 v37, 0x1

    #@244
    aput-object v36, v35, v37

    #@246
    .line 2554
    move-object/from16 v0, p0

    #@248
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@24a
    move-object/from16 v36, v0

    #@24c
    invoke-virtual/range {v36 .. v36}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    #@24f
    move-result v36

    #@250
    invoke-static/range {v36 .. v36}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@253
    move-result-object v36

    #@254
    const/16 v37, 0x2

    #@256
    aput-object v36, v35, v37

    #@258
    move-object/from16 v0, p0

    #@25a
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@25c
    move-object/from16 v36, v0

    #@25e
    invoke-virtual/range {v36 .. v36}, Landroid/telephony/ServiceState;->getDataRegState()I

    #@261
    move-result v36

    #@262
    invoke-static/range {v36 .. v36}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@265
    move-result-object v36

    #@266
    const/16 v37, 0x3

    #@268
    aput-object v36, v35, v37

    #@26a
    .line 2552
    const v36, 0xc3c2

    #@26d
    move/from16 v0, v36

    #@26f
    move-object/from16 v1, v35

    #@271
    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    #@274
    .line 2560
    :cond_4
    if-eqz v20, :cond_6

    #@276
    .line 2561
    const/4 v7, -0x1

    #@277
    .line 2562
    .local v7, "cid":I
    move-object/from16 v0, p0

    #@279
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewCellLoc:Landroid/telephony/CellLocation;

    #@27b
    move-object/from16 v25, v0

    #@27d
    check-cast v25, Landroid/telephony/gsm/GsmCellLocation;

    #@27f
    .line 2563
    .local v25, "loc":Landroid/telephony/gsm/GsmCellLocation;
    if-eqz v25, :cond_5

    #@281
    invoke-virtual/range {v25 .. v25}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    #@284
    move-result v7

    #@285
    .line 2568
    :cond_5
    const/16 v35, 0x3

    #@287
    move/from16 v0, v35

    #@289
    new-array v0, v0, [Ljava/lang/Object;

    #@28b
    move-object/from16 v35, v0

    #@28d
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@290
    move-result-object v36

    #@291
    const/16 v37, 0x0

    #@293
    aput-object v36, v35, v37

    #@295
    .line 2569
    move-object/from16 v0, p0

    #@297
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@299
    move-object/from16 v36, v0

    #@29b
    invoke-virtual/range {v36 .. v36}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    #@29e
    move-result v36

    #@29f
    invoke-static/range {v36 .. v36}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@2a2
    move-result-object v36

    #@2a3
    const/16 v37, 0x1

    #@2a5
    aput-object v36, v35, v37

    #@2a7
    .line 2570
    move-object/from16 v0, p0

    #@2a9
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@2ab
    move-object/from16 v36, v0

    #@2ad
    invoke-virtual/range {v36 .. v36}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    #@2b0
    move-result v36

    #@2b1
    invoke-static/range {v36 .. v36}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@2b4
    move-result-object v36

    #@2b5
    const/16 v37, 0x2

    #@2b7
    aput-object v36, v35, v37

    #@2b9
    .line 2568
    const v36, 0xc3cb

    #@2bc
    move/from16 v0, v36

    #@2be
    move-object/from16 v1, v35

    #@2c0
    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    #@2c3
    .line 2572
    new-instance v35, Ljava/lang/StringBuilder;

    #@2c5
    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    #@2c8
    const-string/jumbo v36, "RAT switched "

    #@2cb
    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2ce
    move-result-object v35

    #@2cf
    .line 2573
    move-object/from16 v0, p0

    #@2d1
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@2d3
    move-object/from16 v36, v0

    #@2d5
    invoke-virtual/range {v36 .. v36}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    #@2d8
    move-result v36

    #@2d9
    invoke-static/range {v36 .. v36}, Landroid/telephony/ServiceState;->rilRadioTechnologyToString(I)Ljava/lang/String;

    #@2dc
    move-result-object v36

    #@2dd
    .line 2572
    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e0
    move-result-object v35

    #@2e1
    .line 2574
    const-string/jumbo v36, " -> "

    #@2e4
    .line 2572
    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e7
    move-result-object v35

    #@2e8
    .line 2576
    move-object/from16 v0, p0

    #@2ea
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@2ec
    move-object/from16 v36, v0

    #@2ee
    invoke-virtual/range {v36 .. v36}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    #@2f1
    move-result v36

    #@2f2
    .line 2575
    invoke-static/range {v36 .. v36}, Landroid/telephony/ServiceState;->rilRadioTechnologyToString(I)Ljava/lang/String;

    #@2f5
    move-result-object v36

    #@2f6
    .line 2572
    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f9
    move-result-object v35

    #@2fa
    .line 2576
    const-string/jumbo v36, " at cell "

    #@2fd
    .line 2572
    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@300
    move-result-object v35

    #@301
    move-object/from16 v0, v35

    #@303
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@306
    move-result-object v35

    #@307
    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@30a
    move-result-object v35

    #@30b
    move-object/from16 v0, p0

    #@30d
    move-object/from16 v1, v35

    #@30f
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    #@312
    .line 2581
    .end local v7    # "cid":I
    .end local v25    # "loc":Landroid/telephony/gsm/GsmCellLocation;
    :cond_6
    move-object/from16 v0, p0

    #@314
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@316
    move-object/from16 v32, v0

    #@318
    .line 2582
    .local v32, "tss":Landroid/telephony/ServiceState;
    move-object/from16 v0, p0

    #@31a
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@31c
    move-object/from16 v35, v0

    #@31e
    move-object/from16 v0, v35

    #@320
    move-object/from16 v1, p0

    #@322
    iput-object v0, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@324
    .line 2583
    move-object/from16 v0, v32

    #@326
    move-object/from16 v1, p0

    #@328
    iput-object v0, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@32a
    .line 2585
    move-object/from16 v0, p0

    #@32c
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@32e
    move-object/from16 v35, v0

    #@330
    invoke-virtual/range {v35 .. v35}, Landroid/telephony/ServiceState;->setStateOutOfService()V

    #@333
    .line 2588
    move-object/from16 v0, p0

    #@335
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mCellLoc:Landroid/telephony/CellLocation;

    #@337
    move-object/from16 v29, v0

    #@339
    check-cast v29, Landroid/telephony/gsm/GsmCellLocation;

    #@33b
    .line 2589
    .local v29, "tcl":Landroid/telephony/gsm/GsmCellLocation;
    move-object/from16 v0, p0

    #@33d
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewCellLoc:Landroid/telephony/CellLocation;

    #@33f
    move-object/from16 v35, v0

    #@341
    move-object/from16 v0, v35

    #@343
    move-object/from16 v1, p0

    #@345
    iput-object v0, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mCellLoc:Landroid/telephony/CellLocation;

    #@347
    .line 2590
    move-object/from16 v0, v29

    #@349
    move-object/from16 v1, p0

    #@34b
    iput-object v0, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mNewCellLoc:Landroid/telephony/CellLocation;

    #@34d
    .line 2592
    move-object/from16 v0, p0

    #@34f
    iget v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewReasonDataDenied:I

    #@351
    move/from16 v35, v0

    #@353
    move/from16 v0, v35

    #@355
    move-object/from16 v1, p0

    #@357
    iput v0, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mReasonDataDenied:I

    #@359
    .line 2593
    move-object/from16 v0, p0

    #@35b
    iget v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewMaxDataCalls:I

    #@35d
    move/from16 v35, v0

    #@35f
    move/from16 v0, v35

    #@361
    move-object/from16 v1, p0

    #@363
    iput v0, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mMaxDataCalls:I

    #@365
    .line 2595
    if-eqz v20, :cond_7

    #@367
    .line 2596
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ServiceStateTracker;->updatePhoneObject()V

    #@36a
    .line 2599
    :cond_7
    if-eqz v19, :cond_8

    #@36c
    .line 2600
    move-object/from16 v0, p0

    #@36e
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@370
    move-object/from16 v35, v0

    #@372
    invoke-virtual/range {v35 .. v35}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    #@375
    move-result v35

    #@376
    move-object/from16 v0, p0

    #@378
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@37a
    move-object/from16 v36, v0

    #@37c
    invoke-virtual/range {v36 .. v36}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    #@37f
    move-result v36

    #@380
    move-object/from16 v0, v31

    #@382
    move/from16 v1, v35

    #@384
    move/from16 v2, v36

    #@386
    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->setDataNetworkTypeForPhone(II)V

    #@389
    .line 2603
    move-object/from16 v0, p0

    #@38b
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@38d
    move-object/from16 v35, v0

    #@38f
    invoke-virtual/range {v35 .. v35}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    #@392
    move-result v35

    #@393
    .line 2602
    const/16 v36, 0x12

    #@395
    move/from16 v0, v36

    #@397
    move/from16 v1, v35

    #@399
    if-ne v0, v1, :cond_8

    #@39b
    .line 2604
    const-string/jumbo v35, "pollStateDone: IWLAN enabled"

    #@39e
    move-object/from16 v0, p0

    #@3a0
    move-object/from16 v1, v35

    #@3a2
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    #@3a5
    .line 2608
    :cond_8
    if-eqz v18, :cond_9

    #@3a7
    .line 2609
    move-object/from16 v0, p0

    #@3a9
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNetworkAttachedRegistrants:Landroid/os/RegistrantList;

    #@3ab
    move-object/from16 v35, v0

    #@3ad
    invoke-virtual/range {v35 .. v35}, Landroid/os/RegistrantList;->notifyRegistrants()V

    #@3b0
    .line 2612
    new-instance v35, Ljava/lang/StringBuilder;

    #@3b2
    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    #@3b5
    const-string/jumbo v36, "pollStateDone: registering current mNitzUpdatedTime="

    #@3b8
    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3bb
    move-result-object v35

    #@3bc
    .line 2613
    move-object/from16 v0, p0

    #@3be
    iget-boolean v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNitzUpdatedTime:Z

    #@3c0
    move/from16 v36, v0

    #@3c2
    .line 2612
    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@3c5
    move-result-object v35

    #@3c6
    .line 2613
    const-string/jumbo v36, " changing to false"

    #@3c9
    .line 2612
    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3cc
    move-result-object v35

    #@3cd
    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3d0
    move-result-object v35

    #@3d1
    move-object/from16 v0, p0

    #@3d3
    move-object/from16 v1, v35

    #@3d5
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    #@3d8
    .line 2615
    const/16 v35, 0x0

    #@3da
    move/from16 v0, v35

    #@3dc
    move-object/from16 v1, p0

    #@3de
    iput-boolean v0, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mNitzUpdatedTime:Z

    #@3e0
    .line 2618
    :cond_9
    if-eqz v10, :cond_b

    #@3e2
    .line 2621
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ServiceStateTracker;->updateSpnDisplay()V

    #@3e5
    .line 2623
    move-object/from16 v0, p0

    #@3e7
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@3e9
    move-object/from16 v35, v0

    #@3eb
    invoke-virtual/range {v35 .. v35}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    #@3ee
    move-result v35

    #@3ef
    move-object/from16 v0, p0

    #@3f1
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@3f3
    move-object/from16 v36, v0

    #@3f5
    invoke-virtual/range {v36 .. v36}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    #@3f8
    move-result-object v36

    #@3f9
    move-object/from16 v0, v31

    #@3fb
    move/from16 v1, v35

    #@3fd
    move-object/from16 v2, v36

    #@3ff
    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->setNetworkOperatorNameForPhone(ILjava/lang/String;)V

    #@402
    .line 2625
    move-object/from16 v0, p0

    #@404
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@406
    move-object/from16 v35, v0

    #@408
    invoke-virtual/range {v35 .. v35}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    #@40b
    move-result v35

    #@40c
    move-object/from16 v0, v31

    #@40e
    move/from16 v1, v35

    #@410
    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getNetworkOperatorForPhone(I)Ljava/lang/String;

    #@413
    move-result-object v28

    #@414
    .line 2626
    .local v28, "prevOperatorNumeric":Ljava/lang/String;
    move-object/from16 v0, p0

    #@416
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@418
    move-object/from16 v35, v0

    #@41a
    invoke-virtual/range {v35 .. v35}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    #@41d
    move-result-object v27

    #@41e
    .line 2627
    .local v27, "operatorNumeric":Ljava/lang/String;
    move-object/from16 v0, p0

    #@420
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@422
    move-object/from16 v35, v0

    #@424
    invoke-virtual/range {v35 .. v35}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    #@427
    move-result v35

    #@428
    move-object/from16 v0, v31

    #@42a
    move/from16 v1, v35

    #@42c
    move-object/from16 v2, v27

    #@42e
    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->setNetworkOperatorNumericForPhone(ILjava/lang/String;)V

    #@431
    .line 2629
    move-object/from16 v0, p0

    #@433
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@435
    move-object/from16 v35, v0

    #@437
    invoke-virtual/range {v35 .. v35}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    #@43a
    move-result-object v35

    #@43b
    .line 2628
    move-object/from16 v0, p0

    #@43d
    move-object/from16 v1, v27

    #@43f
    move-object/from16 v2, v28

    #@441
    move-object/from16 v3, v35

    #@443
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->updateCarrierMccMncConfiguration(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    #@446
    .line 2630
    if-nez v27, :cond_28

    #@448
    .line 2631
    const-string/jumbo v35, "operatorNumeric is null"

    #@44b
    move-object/from16 v0, p0

    #@44d
    move-object/from16 v1, v35

    #@44f
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    #@452
    .line 2632
    move-object/from16 v0, p0

    #@454
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@456
    move-object/from16 v35, v0

    #@458
    invoke-virtual/range {v35 .. v35}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    #@45b
    move-result v35

    #@45c
    const-string/jumbo v36, ""

    #@45f
    move-object/from16 v0, v31

    #@461
    move/from16 v1, v35

    #@463
    move-object/from16 v2, v36

    #@465
    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->setNetworkCountryIsoForPhone(ILjava/lang/String;)V

    #@468
    .line 2633
    const/16 v35, 0x0

    #@46a
    move/from16 v0, v35

    #@46c
    move-object/from16 v1, p0

    #@46e
    iput-boolean v0, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mGotCountryCode:Z

    #@470
    .line 2634
    const/16 v35, 0x0

    #@472
    move/from16 v0, v35

    #@474
    move-object/from16 v1, p0

    #@476
    iput-boolean v0, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mNitzUpdatedTime:Z

    #@478
    .line 2685
    :cond_a
    :goto_e
    move-object/from16 v0, p0

    #@47a
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@47c
    move-object/from16 v35, v0

    #@47e
    invoke-virtual/range {v35 .. v35}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    #@481
    move-result v35

    #@482
    move-object/from16 v0, p0

    #@484
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@486
    move-object/from16 v36, v0

    #@488
    invoke-virtual/range {v36 .. v36}, Landroid/telephony/ServiceState;->getVoiceRoaming()Z

    #@48b
    move-result v36

    #@48c
    move-object/from16 v0, v31

    #@48e
    move/from16 v1, v35

    #@490
    move/from16 v2, v36

    #@492
    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->setNetworkRoamingForPhone(IZ)V

    #@495
    .line 2687
    move-object/from16 v0, p0

    #@497
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@499
    move-object/from16 v35, v0

    #@49b
    move-object/from16 v0, p0

    #@49d
    move-object/from16 v1, v35

    #@49f
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->setRoamingType(Landroid/telephony/ServiceState;)V

    #@4a2
    .line 2688
    new-instance v35, Ljava/lang/StringBuilder;

    #@4a4
    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    #@4a7
    const-string/jumbo v36, "Broadcasting ServiceState : "

    #@4aa
    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4ad
    move-result-object v35

    #@4ae
    move-object/from16 v0, p0

    #@4b0
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@4b2
    move-object/from16 v36, v0

    #@4b4
    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4b7
    move-result-object v35

    #@4b8
    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4bb
    move-result-object v35

    #@4bc
    move-object/from16 v0, p0

    #@4be
    move-object/from16 v1, v35

    #@4c0
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    #@4c3
    .line 2689
    move-object/from16 v0, p0

    #@4c5
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@4c7
    move-object/from16 v35, v0

    #@4c9
    move-object/from16 v0, p0

    #@4cb
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@4cd
    move-object/from16 v36, v0

    #@4cf
    invoke-virtual/range {v35 .. v36}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifyServiceStateChanged(Landroid/telephony/ServiceState;)V

    #@4d2
    .line 2691
    move-object/from16 v0, p0

    #@4d4
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mEventLog:Lcom/android/internal/telephony/TelephonyEventLog;

    #@4d6
    move-object/from16 v35, v0

    #@4d8
    move-object/from16 v0, p0

    #@4da
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@4dc
    move-object/from16 v36, v0

    #@4de
    invoke-virtual/range {v35 .. v36}, Lcom/android/internal/telephony/TelephonyEventLog;->writeServiceStateChanged(Landroid/telephony/ServiceState;)V

    #@4e1
    .line 2694
    .end local v27    # "operatorNumeric":Ljava/lang/String;
    .end local v28    # "prevOperatorNumeric":Ljava/lang/String;
    :cond_b
    if-eqz v15, :cond_c

    #@4e3
    .line 2695
    move-object/from16 v0, p0

    #@4e5
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mAttachedRegistrants:Landroid/os/RegistrantList;

    #@4e7
    move-object/from16 v35, v0

    #@4e9
    invoke-virtual/range {v35 .. v35}, Landroid/os/RegistrantList;->notifyRegistrants()V

    #@4ec
    .line 2698
    :cond_c
    if-eqz v16, :cond_d

    #@4ee
    .line 2699
    move-object/from16 v0, p0

    #@4f0
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mDetachedRegistrants:Landroid/os/RegistrantList;

    #@4f2
    move-object/from16 v35, v0

    #@4f4
    invoke-virtual/range {v35 .. v35}, Landroid/os/RegistrantList;->notifyRegistrants()V

    #@4f7
    .line 2702
    :cond_d
    if-nez v11, :cond_e

    #@4f9
    if-eqz v19, :cond_f

    #@4fb
    .line 2703
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ServiceStateTracker;->notifyDataRegStateRilRadioTechnologyChanged()V

    #@4fe
    .line 2706
    move-object/from16 v0, p0

    #@500
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@502
    move-object/from16 v35, v0

    #@504
    invoke-virtual/range {v35 .. v35}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    #@507
    move-result v35

    #@508
    .line 2705
    const/16 v36, 0x12

    #@50a
    move/from16 v0, v36

    #@50c
    move/from16 v1, v35

    #@50e
    if-ne v0, v1, :cond_2f

    #@510
    .line 2707
    move-object/from16 v0, p0

    #@512
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@514
    move-object/from16 v35, v0

    #@516
    const-string/jumbo v36, "iwlanAvailable"

    #@519
    invoke-virtual/range {v35 .. v36}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifyDataConnection(Ljava/lang/String;)V

    #@51c
    .line 2713
    :cond_f
    :goto_f
    if-eqz v23, :cond_10

    #@51e
    .line 2714
    move-object/from16 v0, p0

    #@520
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mVoiceRoamingOnRegistrants:Landroid/os/RegistrantList;

    #@522
    move-object/from16 v35, v0

    #@524
    invoke-virtual/range {v35 .. v35}, Landroid/os/RegistrantList;->notifyRegistrants()V

    #@527
    .line 2717
    :cond_10
    if-eqz v22, :cond_11

    #@529
    .line 2718
    move-object/from16 v0, p0

    #@52b
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mVoiceRoamingOffRegistrants:Landroid/os/RegistrantList;

    #@52d
    move-object/from16 v35, v0

    #@52f
    invoke-virtual/range {v35 .. v35}, Landroid/os/RegistrantList;->notifyRegistrants()V

    #@532
    .line 2721
    :cond_11
    if-eqz v13, :cond_12

    #@534
    .line 2722
    move-object/from16 v0, p0

    #@536
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mDataRoamingOnRegistrants:Landroid/os/RegistrantList;

    #@538
    move-object/from16 v35, v0

    #@53a
    invoke-virtual/range {v35 .. v35}, Landroid/os/RegistrantList;->notifyRegistrants()V

    #@53d
    .line 2725
    :cond_12
    if-eqz v12, :cond_13

    #@53f
    .line 2726
    move-object/from16 v0, p0

    #@541
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mDataRoamingOffRegistrants:Landroid/os/RegistrantList;

    #@543
    move-object/from16 v35, v0

    #@545
    invoke-virtual/range {v35 .. v35}, Landroid/os/RegistrantList;->notifyRegistrants()V

    #@548
    .line 2729
    :cond_13
    if-eqz v17, :cond_14

    #@54a
    .line 2730
    move-object/from16 v0, p0

    #@54c
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@54e
    move-object/from16 v35, v0

    #@550
    invoke-virtual/range {v35 .. v35}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifyLocationChanged()V

    #@553
    .line 2733
    :cond_14
    move-object/from16 v0, p0

    #@555
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@557
    move-object/from16 v35, v0

    #@559
    invoke-virtual/range {v35 .. v35}, Landroid/telephony/ServiceState;->getDataRegState()I

    #@55c
    move-result v35

    #@55d
    move-object/from16 v0, p0

    #@55f
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@561
    move-object/from16 v36, v0

    #@563
    invoke-virtual/range {v36 .. v36}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    #@566
    move-result v36

    #@567
    move-object/from16 v0, p0

    #@569
    move/from16 v1, v35

    #@56b
    move/from16 v2, v36

    #@56d
    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->isGprsConsistent(II)Z

    #@570
    move-result v35

    #@571
    if-nez v35, :cond_31

    #@573
    .line 2734
    move-object/from16 v0, p0

    #@575
    iget-boolean v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mStartedGprsRegCheck:Z

    #@577
    move/from16 v35, v0

    #@579
    if-nez v35, :cond_15

    #@57b
    move-object/from16 v0, p0

    #@57d
    iget-boolean v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mReportedGprsNoReg:Z

    #@57f
    move/from16 v35, v0

    #@581
    if-eqz v35, :cond_30

    #@583
    .line 2491
    :cond_15
    :goto_10
    return-void

    #@584
    .line 2510
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
    :cond_16
    const/16 v18, 0x0

    #@586
    .restart local v18    # "hasRegistered":Z
    goto/16 :goto_0

    #@588
    .line 2509
    .end local v18    # "hasRegistered":Z
    :cond_17
    const/16 v18, 0x0

    #@58a
    .restart local v18    # "hasRegistered":Z
    goto/16 :goto_0

    #@58c
    .line 2514
    :cond_18
    const/4 v14, 0x0

    #@58d
    .restart local v14    # "hasDeregistered":Z
    goto/16 :goto_1

    #@58f
    .line 2513
    .end local v14    # "hasDeregistered":Z
    :cond_19
    const/4 v14, 0x0

    #@590
    .restart local v14    # "hasDeregistered":Z
    goto/16 :goto_1

    #@592
    .line 2518
    :cond_1a
    const/4 v15, 0x0

    #@593
    .restart local v15    # "hasGprsAttached":Z
    goto/16 :goto_2

    #@595
    .line 2517
    .end local v15    # "hasGprsAttached":Z
    :cond_1b
    const/4 v15, 0x0

    #@596
    .restart local v15    # "hasGprsAttached":Z
    goto/16 :goto_2

    #@598
    .line 2522
    :cond_1c
    const/16 v16, 0x0

    #@59a
    .restart local v16    # "hasGprsDetached":Z
    goto/16 :goto_3

    #@59c
    .line 2521
    .end local v16    # "hasGprsDetached":Z
    :cond_1d
    const/16 v16, 0x0

    #@59e
    .restart local v16    # "hasGprsDetached":Z
    goto/16 :goto_3

    #@5a0
    .line 2525
    :cond_1e
    const/4 v11, 0x0

    #@5a1
    .restart local v11    # "hasDataRegStateChanged":Z
    goto/16 :goto_4

    #@5a3
    .line 2528
    :cond_1f
    const/16 v21, 0x0

    #@5a5
    .restart local v21    # "hasVoiceRegStateChanged":Z
    goto/16 :goto_5

    #@5a7
    .line 2531
    :cond_20
    const/16 v20, 0x0

    #@5a9
    .restart local v20    # "hasRilVoiceRadioTechnologyChanged":Z
    goto/16 :goto_6

    #@5ab
    .line 2534
    :cond_21
    const/16 v19, 0x0

    #@5ad
    .restart local v19    # "hasRilDataRadioTechnologyChanged":Z
    goto/16 :goto_7

    #@5af
    .line 2536
    :cond_22
    const/4 v10, 0x1

    #@5b0
    .restart local v10    # "hasChanged":Z
    goto/16 :goto_8

    #@5b2
    .line 2538
    :cond_23
    const/16 v23, 0x0

    #@5b4
    .local v23, "hasVoiceRoamingOn":Z
    goto/16 :goto_9

    #@5b6
    .line 2540
    .end local v23    # "hasVoiceRoamingOn":Z
    :cond_24
    const/16 v22, 0x1

    #@5b8
    .restart local v22    # "hasVoiceRoamingOff":Z
    goto/16 :goto_a

    #@5ba
    .line 2542
    :cond_25
    const/4 v13, 0x0

    #@5bb
    .local v13, "hasDataRoamingOn":Z
    goto/16 :goto_b

    #@5bd
    .line 2544
    .end local v13    # "hasDataRoamingOn":Z
    :cond_26
    const/4 v12, 0x1

    #@5be
    .restart local v12    # "hasDataRoamingOff":Z
    goto/16 :goto_c

    #@5c0
    .line 2546
    :cond_27
    const/16 v17, 0x1

    #@5c2
    .restart local v17    # "hasLocationChanged":Z
    goto/16 :goto_d

    #@5c4
    .line 2636
    .restart local v27    # "operatorNumeric":Ljava/lang/String;
    .restart local v28    # "prevOperatorNumeric":Ljava/lang/String;
    .restart local v29    # "tcl":Landroid/telephony/gsm/GsmCellLocation;
    .restart local v31    # "tm":Landroid/telephony/TelephonyManager;
    .restart local v32    # "tss":Landroid/telephony/ServiceState;
    :cond_28
    const-string/jumbo v24, ""

    #@5c7
    .line 2637
    .local v24, "iso":Ljava/lang/String;
    const-string/jumbo v26, ""

    #@5ca
    .line 2639
    .local v26, "mcc":Ljava/lang/String;
    const/16 v35, 0x0

    #@5cc
    const/16 v36, 0x3

    #@5ce
    :try_start_0
    move-object/from16 v0, v27

    #@5d0
    move/from16 v1, v35

    #@5d2
    move/from16 v2, v36

    #@5d4
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@5d7
    move-result-object v26

    #@5d8
    .line 2640
    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@5db
    move-result v35

    #@5dc
    invoke-static/range {v35 .. v35}, Lcom/android/internal/telephony/MccTable;->countryCodeForMcc(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    #@5df
    move-result-object v24

    #@5e0
    .line 2647
    :goto_11
    move-object/from16 v0, p0

    #@5e2
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@5e4
    move-object/from16 v35, v0

    #@5e6
    invoke-virtual/range {v35 .. v35}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    #@5e9
    move-result v35

    #@5ea
    move-object/from16 v0, v31

    #@5ec
    move/from16 v1, v35

    #@5ee
    move-object/from16 v2, v24

    #@5f0
    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->setNetworkCountryIsoForPhone(ILjava/lang/String;)V

    #@5f3
    .line 2648
    const/16 v35, 0x1

    #@5f5
    move/from16 v0, v35

    #@5f7
    move-object/from16 v1, p0

    #@5f9
    iput-boolean v0, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mGotCountryCode:Z

    #@5fb
    .line 2650
    const/16 v34, 0x0

    #@5fd
    .line 2652
    .local v34, "zone":Ljava/util/TimeZone;
    move-object/from16 v0, p0

    #@5ff
    iget-boolean v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNitzUpdatedTime:Z

    #@601
    move/from16 v35, v0

    #@603
    if-nez v35, :cond_29

    #@605
    const-string/jumbo v35, "000"

    #@608
    move-object/from16 v0, v26

    #@60a
    move-object/from16 v1, v35

    #@60c
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@60f
    move-result v35

    #@610
    if-eqz v35, :cond_2a

    #@612
    .line 2679
    .end local v34    # "zone":Ljava/util/TimeZone;
    :cond_29
    :goto_12
    move-object/from16 v0, p0

    #@614
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@616
    move-object/from16 v35, v0

    #@618
    .line 2680
    move-object/from16 v0, p0

    #@61a
    iget-boolean v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNeedFixZoneAfterNitz:Z

    #@61c
    move/from16 v36, v0

    #@61e
    .line 2679
    move-object/from16 v0, p0

    #@620
    move-object/from16 v1, v35

    #@622
    move-object/from16 v2, v27

    #@624
    move-object/from16 v3, v28

    #@626
    move/from16 v4, v36

    #@628
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/ServiceStateTracker;->shouldFixTimeZoneNow(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Ljava/lang/String;Z)Z

    #@62b
    move-result v35

    #@62c
    if-eqz v35, :cond_a

    #@62e
    .line 2681
    move-object/from16 v0, p0

    #@630
    move-object/from16 v1, v24

    #@632
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->fixTimeZone(Ljava/lang/String;)V

    #@635
    goto/16 :goto_e

    #@637
    .line 2643
    :catch_0
    move-exception v9

    #@638
    .line 2644
    .local v9, "ex":Ljava/lang/StringIndexOutOfBoundsException;
    new-instance v35, Ljava/lang/StringBuilder;

    #@63a
    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    #@63d
    const-string/jumbo v36, "pollStateDone: countryCodeForMcc error"

    #@640
    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@643
    move-result-object v35

    #@644
    move-object/from16 v0, v35

    #@646
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@649
    move-result-object v35

    #@64a
    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@64d
    move-result-object v35

    #@64e
    move-object/from16 v0, p0

    #@650
    move-object/from16 v1, v35

    #@652
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->loge(Ljava/lang/String;)V

    #@655
    goto :goto_11

    #@656
    .line 2641
    .end local v9    # "ex":Ljava/lang/StringIndexOutOfBoundsException;
    :catch_1
    move-exception v8

    #@657
    .line 2642
    .local v8, "ex":Ljava/lang/NumberFormatException;
    new-instance v35, Ljava/lang/StringBuilder;

    #@659
    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    #@65c
    const-string/jumbo v36, "pollStateDone: countryCodeForMcc error"

    #@65f
    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@662
    move-result-object v35

    #@663
    move-object/from16 v0, v35

    #@665
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@668
    move-result-object v35

    #@669
    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@66c
    move-result-object v35

    #@66d
    move-object/from16 v0, p0

    #@66f
    move-object/from16 v1, v35

    #@671
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->loge(Ljava/lang/String;)V

    #@674
    goto/16 :goto_11

    #@676
    .line 2652
    .end local v8    # "ex":Ljava/lang/NumberFormatException;
    .restart local v34    # "zone":Ljava/util/TimeZone;
    :cond_2a
    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@679
    move-result v35

    #@67a
    if-nez v35, :cond_29

    #@67c
    .line 2653
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getAutoTimeZone()Z

    #@67f
    move-result v35

    #@680
    .line 2652
    if-eqz v35, :cond_29

    #@682
    .line 2657
    const-string/jumbo v35, "telephony.test.ignore.nitz"

    #@685
    const/16 v36, 0x0

    #@687
    .line 2656
    invoke-static/range {v35 .. v36}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    #@68a
    move-result v35

    #@68b
    if-eqz v35, :cond_2d

    #@68d
    .line 2658
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@690
    move-result-wide v36

    #@691
    const-wide/16 v38, 0x1

    #@693
    and-long v36, v36, v38

    #@695
    const-wide/16 v38, 0x0

    #@697
    cmp-long v35, v36, v38

    #@699
    if-nez v35, :cond_2c

    #@69b
    const/16 v30, 0x1

    #@69d
    .line 2660
    .local v30, "testOneUniqueOffsetPath":Z
    :goto_13
    invoke-static/range {v24 .. v24}, Landroid/util/TimeUtils;->getTimeZonesWithUniqueOffsets(Ljava/lang/String;)Ljava/util/ArrayList;

    #@6a0
    move-result-object v33

    #@6a1
    .line 2661
    .local v33, "uniqueZones":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/TimeZone;>;"
    invoke-virtual/range {v33 .. v33}, Ljava/util/ArrayList;->size()I

    #@6a4
    move-result v35

    #@6a5
    const/16 v36, 0x1

    #@6a7
    move/from16 v0, v35

    #@6a9
    move/from16 v1, v36

    #@6ab
    if-eq v0, v1, :cond_2b

    #@6ad
    if-eqz v30, :cond_2e

    #@6af
    .line 2662
    :cond_2b
    const/16 v35, 0x0

    #@6b1
    move-object/from16 v0, v33

    #@6b3
    move/from16 v1, v35

    #@6b5
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@6b8
    move-result-object v34

    #@6b9
    .end local v34    # "zone":Ljava/util/TimeZone;
    check-cast v34, Ljava/util/TimeZone;

    #@6bb
    .line 2664
    .local v34, "zone":Ljava/util/TimeZone;
    new-instance v35, Ljava/lang/StringBuilder;

    #@6bd
    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    #@6c0
    const-string/jumbo v36, "pollStateDone: no nitz but one TZ for iso-cc="

    #@6c3
    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6c6
    move-result-object v35

    #@6c7
    move-object/from16 v0, v35

    #@6c9
    move-object/from16 v1, v24

    #@6cb
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6ce
    move-result-object v35

    #@6cf
    .line 2665
    const-string/jumbo v36, " with zone.getID="

    #@6d2
    .line 2664
    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6d5
    move-result-object v35

    #@6d6
    .line 2665
    invoke-virtual/range {v34 .. v34}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    #@6d9
    move-result-object v36

    #@6da
    .line 2664
    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6dd
    move-result-object v35

    #@6de
    .line 2666
    const-string/jumbo v36, " testOneUniqueOffsetPath="

    #@6e1
    .line 2664
    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6e4
    move-result-object v35

    #@6e5
    move-object/from16 v0, v35

    #@6e7
    move/from16 v1, v30

    #@6e9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@6ec
    move-result-object v35

    #@6ed
    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6f0
    move-result-object v35

    #@6f1
    move-object/from16 v0, p0

    #@6f3
    move-object/from16 v1, v35

    #@6f5
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    #@6f8
    .line 2668
    invoke-virtual/range {v34 .. v34}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    #@6fb
    move-result-object v35

    #@6fc
    move-object/from16 v0, p0

    #@6fe
    move-object/from16 v1, v35

    #@700
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->setAndBroadcastNetworkSetTimeZone(Ljava/lang/String;)V

    #@703
    goto/16 :goto_12

    #@705
    .line 2658
    .end local v30    # "testOneUniqueOffsetPath":Z
    .end local v33    # "uniqueZones":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/TimeZone;>;"
    .local v34, "zone":Ljava/util/TimeZone;
    :cond_2c
    const/16 v30, 0x0

    #@707
    .restart local v30    # "testOneUniqueOffsetPath":Z
    goto :goto_13

    #@708
    .line 2656
    .end local v30    # "testOneUniqueOffsetPath":Z
    :cond_2d
    const/16 v30, 0x0

    #@70a
    .restart local v30    # "testOneUniqueOffsetPath":Z
    goto :goto_13

    #@70b
    .line 2671
    .restart local v33    # "uniqueZones":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/TimeZone;>;"
    :cond_2e
    new-instance v35, Ljava/lang/StringBuilder;

    #@70d
    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    #@710
    const-string/jumbo v36, "pollStateDone: there are "

    #@713
    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@716
    move-result-object v35

    #@717
    invoke-virtual/range {v33 .. v33}, Ljava/util/ArrayList;->size()I

    #@71a
    move-result v36

    #@71b
    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@71e
    move-result-object v35

    #@71f
    .line 2672
    const-string/jumbo v36, " unique offsets for iso-cc=\'"

    #@722
    .line 2671
    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@725
    move-result-object v35

    #@726
    move-object/from16 v0, v35

    #@728
    move-object/from16 v1, v24

    #@72a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@72d
    move-result-object v35

    #@72e
    .line 2673
    const-string/jumbo v36, " testOneUniqueOffsetPath="

    #@731
    .line 2671
    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@734
    move-result-object v35

    #@735
    move-object/from16 v0, v35

    #@737
    move/from16 v1, v30

    #@739
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@73c
    move-result-object v35

    #@73d
    .line 2674
    const-string/jumbo v36, "\', do nothing"

    #@740
    .line 2671
    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@743
    move-result-object v35

    #@744
    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@747
    move-result-object v35

    #@748
    move-object/from16 v0, p0

    #@74a
    move-object/from16 v1, v35

    #@74c
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    #@74f
    goto/16 :goto_12

    #@751
    .line 2709
    .end local v24    # "iso":Ljava/lang/String;
    .end local v26    # "mcc":Ljava/lang/String;
    .end local v27    # "operatorNumeric":Ljava/lang/String;
    .end local v28    # "prevOperatorNumeric":Ljava/lang/String;
    .end local v30    # "testOneUniqueOffsetPath":Z
    .end local v33    # "uniqueZones":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/TimeZone;>;"
    .end local v34    # "zone":Ljava/util/TimeZone;
    :cond_2f
    move-object/from16 v0, p0

    #@753
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@755
    move-object/from16 v35, v0

    #@757
    const/16 v36, 0x0

    #@759
    invoke-virtual/range {v35 .. v36}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifyDataConnection(Ljava/lang/String;)V

    #@75c
    goto/16 :goto_f

    #@75e
    .line 2735
    :cond_30
    const/16 v35, 0x1

    #@760
    move/from16 v0, v35

    #@762
    move-object/from16 v1, p0

    #@764
    iput-boolean v0, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mStartedGprsRegCheck:Z

    #@766
    .line 2738
    move-object/from16 v0, p0

    #@768
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@76a
    move-object/from16 v35, v0

    #@76c
    invoke-virtual/range {v35 .. v35}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    #@76f
    move-result-object v35

    #@770
    invoke-virtual/range {v35 .. v35}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@773
    move-result-object v35

    #@774
    .line 2739
    const-string/jumbo v36, "gprs_register_check_period_ms"

    #@777
    .line 2740
    const v37, 0xea60

    #@77a
    .line 2737
    invoke-static/range {v35 .. v37}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@77d
    move-result v6

    #@77e
    .line 2741
    .local v6, "check_period":I
    const/16 v35, 0x16

    #@780
    move-object/from16 v0, p0

    #@782
    move/from16 v1, v35

    #@784
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    #@787
    move-result-object v35

    #@788
    .line 2742
    int-to-long v0, v6

    #@789
    move-wide/from16 v36, v0

    #@78b
    .line 2741
    move-object/from16 v0, p0

    #@78d
    move-object/from16 v1, v35

    #@78f
    move-wide/from16 v2, v36

    #@791
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->sendMessageDelayed(Landroid/os/Message;J)Z

    #@794
    goto/16 :goto_10

    #@796
    .line 2745
    .end local v6    # "check_period":I
    :cond_31
    const/16 v35, 0x0

    #@798
    move/from16 v0, v35

    #@79a
    move-object/from16 v1, p0

    #@79c
    iput-boolean v0, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mReportedGprsNoReg:Z

    #@79e
    goto/16 :goto_10
.end method

.method private queueNextSignalStrengthPoll()V
    .locals 4

    #@0
    .prologue
    .line 4045
    iget-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDontPollSignalStrength:Z

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 4048
    return-void

    #@5
    .line 4053
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->obtainMessage()Landroid/os/Message;

    #@8
    move-result-object v0

    #@9
    .line 4054
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0xa

    #@b
    iput v1, v0, Landroid/os/Message;->what:I

    #@d
    .line 4059
    const-wide/16 v2, 0x4e20

    #@f
    invoke-virtual {p0, v0, v2, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->sendMessageDelayed(Landroid/os/Message;J)Z

    #@12
    .line 4044
    return-void
.end method

.method private regCodeIsRoaming(I)Z
    .locals 1
    .param p1, "code"    # I

    #@0
    .prologue
    .line 3406
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
    .line 3380
    packed-switch p1, :pswitch_data_0

    #@4
    .line 3396
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
    .line 3397
    return v2

    #@1c
    .line 3389
    :pswitch_1
    return v2

    #@1d
    .line 3393
    :pswitch_2
    const/4 v0, 0x0

    #@1e
    return v0

    #@1f
    .line 3380
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
    .line 3938
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
    .line 3939
    return-void

    #@f
    .line 3942
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
    .line 3943
    iget-wide v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSavedAtTime:J

    #@2a
    .line 3942
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
    .line 3945
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
    .line 3946
    iget-wide v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSavedTime:J

    #@43
    .line 3947
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@46
    move-result-wide v2

    #@47
    iget-wide v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSavedAtTime:J

    #@49
    sub-long/2addr v2, v4

    #@4a
    .line 3946
    add-long/2addr v0, v2

    #@4b
    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->setAndBroadcastNetworkSetTime(J)V

    #@4e
    .line 3937
    :cond_1
    return-void
.end method

.method private revertToNitzTimeZone()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 3952
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
    .line 3953
    return-void

    #@d
    .line 3955
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
    .line 3956
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSavedTimeZone:Ljava/lang/String;

    #@28
    if-eqz v0, :cond_1

    #@2a
    .line 3957
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSavedTimeZone:Ljava/lang/String;

    #@2c
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->setAndBroadcastNetworkSetTimeZone(Ljava/lang/String;)V

    #@2f
    .line 3951
    :cond_1
    return-void
.end method

.method private saveCdmaSubscriptionSource(I)V
    .locals 4
    .param p1, "source"    # I

    #@0
    .prologue
    .line 4481
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
    .line 4482
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
    .line 4483
    const-string/jumbo v1, "subscription_mode"

    #@24
    .line 4482
    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    #@27
    .line 4485
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
    .line 4486
    const-string/jumbo v2, "subscription_mode"

    #@40
    const/4 v3, -0x1

    #@41
    .line 4485
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
    .line 4480
    return-void
.end method

.method private saveNitzTime(J)V
    .locals 3
    .param p1, "time"    # J

    #@0
    .prologue
    .line 3897
    iput-wide p1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSavedTime:J

    #@2
    .line 3898
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@5
    move-result-wide v0

    #@6
    iput-wide v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSavedAtTime:J

    #@8
    .line 3896
    return-void
.end method

.method private saveNitzTimeZone(Ljava/lang/String;)V
    .locals 0
    .param p1, "zoneId"    # Ljava/lang/String;

    #@0
    .prologue
    .line 3893
    iput-object p1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSavedTimeZone:Ljava/lang/String;

    #@2
    .line 3892
    return-void
.end method

.method private setAndBroadcastNetworkSetTime(J)V
    .locals 3
    .param p1, "time"    # J

    #@0
    .prologue
    .line 3929
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
    .line 3930
    invoke-static {p1, p2}, Landroid/os/SystemClock;->setCurrentTimeMillis(J)Z

    #@21
    .line 3931
    new-instance v0, Landroid/content/Intent;

    #@23
    const-string/jumbo v1, "android.intent.action.NETWORK_SET_TIME"

    #@26
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@29
    .line 3932
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x20000000

    #@2b
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@2e
    .line 3933
    const-string/jumbo v1, "time"

    #@31
    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    #@34
    .line 3934
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
    .line 3928
    return-void
.end method

.method private setAndBroadcastNetworkSetTimeZone(Ljava/lang/String;)V
    .locals 4
    .param p1, "zoneId"    # Ljava/lang/String;

    #@0
    .prologue
    .line 3908
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
    .line 3910
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
    .line 3911
    .local v0, "alarm":Landroid/app/AlarmManager;
    invoke-virtual {v0, p1}, Landroid/app/AlarmManager;->setTimeZone(Ljava/lang/String;)V

    #@29
    .line 3912
    new-instance v1, Landroid/content/Intent;

    #@2b
    const-string/jumbo v2, "android.intent.action.NETWORK_SET_TIMEZONE"

    #@2e
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@31
    .line 3913
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x20000000

    #@33
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@36
    .line 3914
    const-string/jumbo v2, "time-zone"

    #@39
    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@3c
    .line 3915
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
    .line 3917
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
    .line 3907
    return-void
.end method

.method private setNotification(I)V
    .locals 12
    .param p1, "notifyType"    # I

    #@0
    .prologue
    const v10, 0x10400c3

    #@3
    .line 3967
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
    .line 3970
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
    .line 3971
    const v9, 0x112005b

    #@27
    .line 3970
    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@2a
    move-result v4

    #@2b
    .line 3972
    .local v4, "isSetNotification":Z
    if-nez v4, :cond_0

    #@2d
    .line 3973
    const-string/jumbo v8, "Ignore all the notifications"

    #@30
    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    #@33
    .line 3974
    return-void

    #@34
    .line 3977
    :cond_0
    iget-object v8, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@36
    invoke-virtual {v8}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    #@39
    move-result-object v0

    #@3a
    .line 3980
    .local v0, "context":Landroid/content/Context;
    const-string/jumbo v1, ""

    #@3d
    .line 3981
    .local v1, "details":Ljava/lang/CharSequence;
    invoke-virtual {v0, v10}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@40
    move-result-object v7

    #@41
    .line 3982
    .local v7, "title":Ljava/lang/CharSequence;
    const/16 v5, 0x3e7

    #@43
    .line 3984
    .local v5, "notificationId":I
    packed-switch p1, :pswitch_data_0

    #@46
    .line 4010
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
    .line 4011
    new-instance v8, Landroid/app/Notification$Builder;

    #@6a
    invoke-direct {v8, v0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    #@6d
    .line 4012
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@70
    move-result-wide v10

    #@71
    .line 4011
    invoke-virtual {v8, v10, v11}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    #@74
    move-result-object v8

    #@75
    .line 4013
    const/4 v9, 0x1

    #@76
    .line 4011
    invoke-virtual {v8, v9}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    #@79
    move-result-object v8

    #@7a
    .line 4014
    const v9, 0x108008a

    #@7d
    .line 4011
    invoke-virtual {v8, v9}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    #@80
    move-result-object v8

    #@81
    invoke-virtual {v8, v7}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    #@84
    move-result-object v8

    #@85
    .line 4016
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@88
    move-result-object v9

    #@89
    .line 4017
    const v10, 0x1060059

    #@8c
    .line 4016
    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    #@8f
    move-result v9

    #@90
    .line 4011
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
    .line 4023
    const-string/jumbo v8, "notification"

    #@a5
    invoke-virtual {v0, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@a8
    move-result-object v6

    #@a9
    .line 4022
    check-cast v6, Landroid/app/NotificationManager;

    #@ab
    .line 4025
    .local v6, "notificationManager":Landroid/app/NotificationManager;
    const/16 v8, 0x3ea

    #@ad
    if-eq p1, v8, :cond_1

    #@af
    const/16 v8, 0x3ec

    #@b1
    if-ne p1, v8, :cond_3

    #@b3
    .line 4027
    :cond_1
    invoke-virtual {v6, v5}, Landroid/app/NotificationManager;->cancel(I)V

    #@b6
    .line 3966
    :goto_1
    return-void

    #@b7
    .line 3986
    .end local v6    # "notificationManager":Landroid/app/NotificationManager;
    :pswitch_1
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    #@ba
    move-result v8

    #@bb
    int-to-long v2, v8

    #@bc
    .line 3987
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
    .line 3988
    return-void

    #@c8
    .line 3990
    :cond_2
    const/16 v5, 0x378

    #@ca
    .line 3991
    invoke-virtual {v0, v10}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@cd
    move-result-object v1

    #@ce
    goto/16 :goto_0

    #@d0
    .line 3994
    .end local v2    # "dataSubId":J
    :pswitch_2
    const/16 v5, 0x378

    #@d2
    .line 3995
    goto/16 :goto_0

    #@d4
    .line 3997
    :pswitch_3
    const v8, 0x10400c6

    #@d7
    invoke-virtual {v0, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@da
    move-result-object v1

    #@db
    goto/16 :goto_0

    #@dd
    .line 4000
    :pswitch_4
    const v8, 0x10400c5

    #@e0
    invoke-virtual {v0, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@e3
    move-result-object v1

    #@e4
    goto/16 :goto_0

    #@e6
    .line 4003
    :pswitch_5
    const v8, 0x10400c4

    #@e9
    invoke-virtual {v0, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@ec
    move-result-object v1

    #@ed
    goto/16 :goto_0

    #@ef
    .line 4030
    .restart local v6    # "notificationManager":Landroid/app/NotificationManager;
    :cond_3
    iget-object v8, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNotification:Landroid/app/Notification;

    #@f1
    invoke-virtual {v6, v5, v8}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    #@f4
    goto :goto_1

    #@f5
    .line 3984
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
    .line 2072
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@3
    invoke-virtual {v0, v1}, Landroid/telephony/ServiceState;->setVoiceRoaming(Z)V

    #@6
    .line 2073
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@8
    invoke-virtual {v0, v1}, Landroid/telephony/ServiceState;->setDataRoaming(Z)V

    #@b
    .line 2074
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@d
    const/4 v1, 0x1

    #@e
    invoke-virtual {v0, v1}, Landroid/telephony/ServiceState;->setCdmaEriIconIndex(I)V

    #@11
    .line 2071
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
    .line 2065
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@4
    invoke-virtual {v0, v2}, Landroid/telephony/ServiceState;->setVoiceRoaming(Z)V

    #@7
    .line 2066
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@9
    invoke-virtual {v0, v2}, Landroid/telephony/ServiceState;->setDataRoaming(Z)V

    #@c
    .line 2067
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@e
    invoke-virtual {v0, v1}, Landroid/telephony/ServiceState;->setCdmaEriIconIndex(I)V

    #@11
    .line 2068
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@13
    invoke-virtual {v0, v1}, Landroid/telephony/ServiceState;->setCdmaEriIconMode(I)V

    #@16
    .line 2064
    return-void
.end method

.method private setSignalStrengthDefaultValues()V
    .locals 2

    #@0
    .prologue
    .line 4745
    new-instance v0, Landroid/telephony/SignalStrength;

    #@2
    const/4 v1, 0x1

    #@3
    invoke-direct {v0, v1}, Landroid/telephony/SignalStrength;-><init>(Z)V

    #@6
    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    #@8
    .line 4744
    return-void
.end method

.method private setTimeFromNITZString(Ljava/lang/String;J)V
    .locals 40
    .param p1, "nitz"    # Ljava/lang/String;
    .param p2, "nitzReceiveTime"    # J

    #@0
    .prologue
    .line 3675
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@3
    move-result-wide v26

    #@4
    .line 3676
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
    .line 3677
    const-string/jumbo v35, " start="

    #@2a
    .line 3676
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
    .line 3677
    const-string/jumbo v35, " delay="

    #@39
    .line 3676
    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v34

    #@3d
    .line 3677
    sub-long v36, v26, p2

    #@3f
    .line 3676
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
    .line 3683
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
    .line 3685
    .local v6, "c":Ljava/util/Calendar;
    invoke-virtual {v6}, Ljava/util/Calendar;->clear()V

    #@60
    .line 3686
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
    .line 3688
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
    .line 3690
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
    .line 3691
    .local v32, "year":I
    const/16 v34, 0x7f5

    #@86
    move/from16 v0, v32

    #@88
    move/from16 v1, v34

    #@8a
    if-le v0, v1, :cond_0

    #@8c
    .line 3692
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
    .line 3693
    return-void

    #@b3
    .line 3695
    :cond_0
    const/16 v34, 0x1

    #@b5
    move/from16 v0, v34

    #@b7
    move/from16 v1, v32

    #@b9
    invoke-virtual {v6, v0, v1}, Ljava/util/Calendar;->set(II)V

    #@bc
    .line 3698
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
    .line 3699
    .local v20, "month":I
    const/16 v34, 0x2

    #@c8
    move/from16 v0, v34

    #@ca
    move/from16 v1, v20

    #@cc
    invoke-virtual {v6, v0, v1}, Ljava/util/Calendar;->set(II)V

    #@cf
    .line 3701
    const/16 v34, 0x2

    #@d1
    aget-object v34, v21, v34

    #@d3
    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@d6
    move-result v7

    #@d7
    .line 3702
    .local v7, "date":I
    const/16 v34, 0x5

    #@d9
    move/from16 v0, v34

    #@db
    invoke-virtual {v6, v0, v7}, Ljava/util/Calendar;->set(II)V

    #@de
    .line 3704
    const/16 v34, 0x3

    #@e0
    aget-object v34, v21, v34

    #@e2
    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@e5
    move-result v14

    #@e6
    .line 3705
    .local v14, "hour":I
    const/16 v34, 0xa

    #@e8
    move/from16 v0, v34

    #@ea
    invoke-virtual {v6, v0, v14}, Ljava/util/Calendar;->set(II)V

    #@ed
    .line 3707
    const/16 v34, 0x4

    #@ef
    aget-object v34, v21, v34

    #@f1
    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@f4
    move-result v17

    #@f5
    .line 3708
    .local v17, "minute":I
    const/16 v34, 0xc

    #@f7
    move/from16 v0, v34

    #@f9
    move/from16 v1, v17

    #@fb
    invoke-virtual {v6, v0, v1}, Ljava/util/Calendar;->set(II)V

    #@fe
    .line 3710
    const/16 v34, 0x5

    #@100
    aget-object v34, v21, v34

    #@102
    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@105
    move-result v24

    #@106
    .line 3711
    .local v24, "second":I
    const/16 v34, 0xd

    #@108
    move/from16 v0, v34

    #@10a
    move/from16 v1, v24

    #@10c
    invoke-virtual {v6, v0, v1}, Ljava/util/Calendar;->set(II)V

    #@10f
    .line 3713
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
    .line 3715
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
    .line 3717
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
    .line 3726
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
    .line 3728
    const/16 v33, 0x0

    #@152
    .line 3734
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
    .line 3735
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
    .line 3736
    .local v31, "tzname":Ljava/lang/String;
    invoke-static/range {v31 .. v31}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    #@16e
    move-result-object v33

    #@16f
    .line 3739
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
    .line 3740
    const-string/jumbo v35, "phone"

    #@17c
    .line 3739
    invoke-virtual/range {v34 .. v35}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@17f
    move-result-object v34

    #@180
    check-cast v34, Landroid/telephony/TelephonyManager;

    #@182
    .line 3741
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
    .line 3739
    invoke-virtual/range {v34 .. v35}, Landroid/telephony/TelephonyManager;->getNetworkCountryIsoForPhone(I)Ljava/lang/String;

    #@18f
    move-result-object v16

    #@190
    .line 3743
    .local v16, "iso":Ljava/lang/String;
    if-nez v33, :cond_2

    #@192
    .line 3745
    move-object/from16 v0, p0

    #@194
    iget-boolean v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mGotCountryCode:Z

    #@196
    move/from16 v34, v0

    #@198
    if-eqz v34, :cond_2

    #@19a
    .line 3746
    if-eqz v16, :cond_b

    #@19c
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    #@19f
    move-result v34

    #@1a0
    if-lez v34, :cond_b

    #@1a2
    .line 3747
    if-eqz v8, :cond_a

    #@1a4
    const/16 v34, 0x1

    #@1a6
    .line 3748
    :goto_3
    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    #@1a9
    move-result-wide v36

    #@1aa
    .line 3747
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
    .line 3760
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
    .line 3765
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
    .line 3766
    move/from16 v0, v30

    #@1ce
    move-object/from16 v1, p0

    #@1d0
    iput v0, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mZoneOffset:I

    #@1d2
    .line 3767
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
    .line 3768
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
    .line 3771
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
    .line 3772
    if-eqz v33, :cond_10

    #@210
    invoke-virtual/range {v33 .. v33}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    #@213
    move-result-object v34

    #@214
    .line 3771
    :goto_7
    move-object/from16 v0, v35

    #@216
    move-object/from16 v1, v34

    #@218
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21b
    move-result-object v34

    #@21c
    .line 3773
    const-string/jumbo v35, " iso="

    #@21f
    .line 3771
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
    .line 3773
    const-string/jumbo v35, " mGotCountryCode="

    #@22e
    .line 3771
    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@231
    move-result-object v34

    #@232
    .line 3773
    move-object/from16 v0, p0

    #@234
    iget-boolean v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mGotCountryCode:Z

    #@236
    move/from16 v35, v0

    #@238
    .line 3771
    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@23b
    move-result-object v34

    #@23c
    .line 3774
    const-string/jumbo v35, " mNeedFixZoneAfterNitz="

    #@23f
    .line 3771
    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@242
    move-result-object v34

    #@243
    .line 3774
    move-object/from16 v0, p0

    #@245
    iget-boolean v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNeedFixZoneAfterNitz:Z

    #@247
    move/from16 v35, v0

    #@249
    .line 3771
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
    .line 3777
    if-eqz v33, :cond_6

    #@25a
    .line 3778
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getAutoTimeZone()Z

    #@25d
    move-result v34

    #@25e
    if-eqz v34, :cond_5

    #@260
    .line 3779
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
    .line 3781
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
    .line 3784
    :cond_6
    const-string/jumbo v34, "gsm.ignore-nitz"

    #@279
    invoke-static/range {v34 .. v34}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    #@27c
    move-result-object v15

    #@27d
    .line 3785
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
    .line 3786
    const-string/jumbo v34, "NITZ: Not setting clock because gsm.ignore-nitz is set"

    #@28d
    move-object/from16 v0, p0

    #@28f
    move-object/from16 v1, v34

    #@291
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    #@294
    .line 3787
    return-void

    #@295
    .line 3713
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
    .line 3717
    .restart local v30    # "tzOffset":I
    :cond_8
    const/4 v8, 0x0

    #@29a
    .restart local v8    # "dst":I
    goto/16 :goto_1

    #@29c
    .line 3726
    :cond_9
    const/16 v34, -0x1

    #@29e
    goto/16 :goto_2

    #@2a0
    .line 3747
    .restart local v16    # "iso":Ljava/lang/String;
    :cond_a
    const/16 v34, 0x0

    #@2a2
    goto/16 :goto_3

    #@2a4
    .line 3755
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
    .line 3760
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
    .line 3767
    :cond_f
    const/16 v34, 0x0

    #@2d4
    goto/16 :goto_6

    #@2d6
    .line 3772
    :cond_10
    const-string/jumbo v34, "NULL"
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    #@2d9
    goto/16 :goto_7

    #@2db
    .line 3791
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
    .line 3793
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
    .line 3795
    :cond_12
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@2f9
    move-result-wide v34

    #@2fa
    sub-long v18, v34, p2

    #@2fc
    .line 3797
    .local v18, "millisSinceNitzReceived":J
    const-wide/16 v34, 0x0

    #@2fe
    cmp-long v34, v18, v34

    #@300
    if-gez v34, :cond_13

    #@302
    .line 3800
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
    .line 3866
    :try_start_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@324
    move-result-wide v10

    #@325
    .line 3867
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
    .line 3869
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
    .line 3804
    return-void

    #@35d
    .line 3807
    .end local v10    # "end":J
    :cond_13
    const-wide/32 v34, 0x7fffffff

    #@360
    cmp-long v34, v18, v34

    #@362
    if-lez v34, :cond_14

    #@364
    .line 3810
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
    .line 3811
    const-wide/32 v36, 0x5265c00

    #@373
    div-long v36, v18, v36

    #@375
    .line 3810
    move-object/from16 v0, v34

    #@377
    move-wide/from16 v1, v36

    #@379
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@37c
    move-result-object v34

    #@37d
    .line 3812
    const-string/jumbo v35, " days"

    #@380
    .line 3810
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
    .line 3866
    :try_start_4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@392
    move-result-wide v10

    #@393
    .line 3867
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
    .line 3869
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
    .line 3814
    return-void

    #@3cb
    .line 3818
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
    .line 3821
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
    .line 3822
    const-string/jumbo v35, " NITZ receive delay(ms): "

    #@3f0
    .line 3821
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
    .line 3823
    const-string/jumbo v35, " gained(ms): "

    #@3ff
    .line 3821
    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@402
    move-result-object v34

    #@403
    .line 3824
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
    .line 3821
    move-object/from16 v0, v34

    #@40f
    move-wide/from16 v1, v36

    #@411
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@414
    move-result-object v34

    #@415
    .line 3825
    const-string/jumbo v35, " from "

    #@418
    .line 3821
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
    .line 3827
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
    .line 3828
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
    .line 3829
    const-string/jumbo v34, "SST"

    #@449
    const-string/jumbo v35, "NITZ: after Setting time of day"

    #@44c
    invoke-static/range {v34 .. v35}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@44f
    .line 3861
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
    .line 3862
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
    .line 3863
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
    .line 3866
    :try_start_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@473
    move-result-wide v10

    #@474
    .line 3867
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
    .line 3869
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
    .line 3671
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
    .line 3831
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
    .line 3835
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
    .line 3836
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
    .line 3837
    .local v28, "timeSinceLastUpdate":J
    move-object/from16 v0, p0

    #@4ca
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mCr:Landroid/content/ContentResolver;

    #@4cc
    move-object/from16 v34, v0

    #@4ce
    .line 3838
    const-string/jumbo v35, "nitz_update_spacing"

    #@4d1
    move-object/from16 v0, p0

    #@4d3
    iget v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNitzUpdateSpacing:I

    #@4d5
    move/from16 v36, v0

    #@4d7
    .line 3837
    invoke-static/range {v34 .. v36}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@4da
    move-result v23

    #@4db
    .line 3839
    .local v23, "nitzUpdateSpacing":I
    move-object/from16 v0, p0

    #@4dd
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mCr:Landroid/content/ContentResolver;

    #@4df
    move-object/from16 v34, v0

    #@4e1
    .line 3840
    const-string/jumbo v35, "nitz_update_diff"

    #@4e4
    move-object/from16 v0, p0

    #@4e6
    iget v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNitzUpdateDiff:I

    #@4e8
    move/from16 v36, v0

    #@4ea
    .line 3839
    invoke-static/range {v34 .. v36}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@4ed
    move-result v22

    #@4ee
    .line 3842
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
    .line 3845
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
    .line 3846
    const-string/jumbo v35, " NITZ receive delay="

    #@51a
    .line 3845
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
    .line 3847
    const-string/jumbo v35, "ms gained="

    #@529
    .line 3845
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
    .line 3847
    const-string/jumbo v35, "ms from "

    #@536
    .line 3845
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
    .line 3850
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
    .line 3864
    .end local v12    # "gained":J
    .end local v18    # "millisSinceNitzReceived":J
    .end local v22    # "nitzUpdateDiff":I
    .end local v23    # "nitzUpdateSpacing":I
    .end local v28    # "timeSinceLastUpdate":J
    :catchall_0
    move-exception v34

    #@55b
    .line 3866
    :try_start_8
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@55e
    move-result-wide v10

    #@55f
    .line 3867
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
    .line 3869
    move-object/from16 v0, p0

    #@58b
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@58d
    move-object/from16 v35, v0

    #@58f
    invoke-virtual/range {v35 .. v35}, Landroid/os/PowerManager$WakeLock;->release()V

    #@592
    .line 3864
    throw v34
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_0

    #@593
    .line 3871
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
    .line 3872
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
    .line 3843
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
    .line 3853
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
    .line 3854
    const-string/jumbo v35, "ms ago and gained="

    #@5e6
    .line 3853
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
    .line 3854
    const-string/jumbo v35, "ms"

    #@5f3
    .line 3853
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
    .line 3866
    :try_start_a
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@605
    move-result-wide v10

    #@606
    .line 3867
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
    .line 3869
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
    .line 3856
    return-void
.end method


# virtual methods
.method protected final alwaysOnHomeNetwork(Landroid/os/BaseBundle;)Z
    .locals 1
    .param p1, "b"    # Landroid/os/BaseBundle;

    #@0
    .prologue
    .line 4792
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
    .line 4341
    const/4 v0, 0x1

    #@1
    new-array v0, v0, [I

    #@3
    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPollingContext:[I

    #@5
    .line 4339
    return-void
.end method

.method protected checkCorrectThread()V
    .locals 2

    #@0
    .prologue
    .line 4594
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
    .line 4595
    new-instance v0, Ljava/lang/RuntimeException;

    #@10
    .line 4596
    const-string/jumbo v1, "ServiceStateTracker must be used from within one thread"

    #@13
    .line 4595
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@16
    throw v0

    #@17
    .line 4593
    :cond_0
    return-void
.end method

.method public disableLocationUpdates()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 833
    iput-boolean v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mWantContinuousLocationUpdates:Z

    #@3
    .line 834
    iget-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mWantSingleLocationUpdate:Z

    #@5
    if-nez v0, :cond_0

    #@7
    iget-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mWantContinuousLocationUpdates:Z

    #@9
    if-eqz v0, :cond_1

    #@b
    .line 832
    :cond_0
    :goto_0
    return-void

    #@c
    .line 835
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
    .line 826
    iput-boolean v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mWantSingleLocationUpdate:Z

    #@3
    .line 827
    iget-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mWantSingleLocationUpdate:Z

    #@5
    if-nez v0, :cond_0

    #@7
    iget-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mWantContinuousLocationUpdates:Z

    #@9
    if-eqz v0, :cond_1

    #@b
    .line 825
    :cond_0
    :goto_0
    return-void

    #@c
    .line 828
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
    .line 624
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@2
    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnSignalStrengthUpdate(Landroid/os/Handler;)V

    #@5
    .line 625
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    #@7
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/UiccController;->unregisterForIccChanged(Landroid/os/Handler;)V

    #@a
    .line 626
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@c
    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForCellInfoList(Landroid/os/Handler;)V

    #@f
    .line 627
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    #@11
    .line 628
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mOnSubscriptionsChangedListener:Lcom/android/internal/telephony/ServiceStateTracker$SstSubscriptionsChangedListener;

    #@13
    .line 627
    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager;->removeOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    #@16
    .line 629
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@18
    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForImsNetworkStateChanged(Landroid/os/Handler;)V

    #@1b
    .line 623
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 4509
    const-string/jumbo v0, "ServiceStateTracker:"

    #@3
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@6
    .line 4510
    new-instance v0, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string/jumbo v1, " mSubId="

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    iget v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSubId:I

    #@14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@17
    move-result-object v0

    #@18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v0

    #@1c
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1f
    .line 4511
    new-instance v0, Ljava/lang/StringBuilder;

    #@21
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@24
    const-string/jumbo v1, " mSS="

    #@27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v0

    #@2b
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@2d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v0

    #@31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@34
    move-result-object v0

    #@35
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@38
    .line 4512
    new-instance v0, Ljava/lang/StringBuilder;

    #@3a
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@3d
    const-string/jumbo v1, " mNewSS="

    #@40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v0

    #@44
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v0

    #@4a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4d
    move-result-object v0

    #@4e
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@51
    .line 4513
    new-instance v0, Ljava/lang/StringBuilder;

    #@53
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@56
    const-string/jumbo v1, " mVoiceCapable="

    #@59
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v0

    #@5d
    iget-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mVoiceCapable:Z

    #@5f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@62
    move-result-object v0

    #@63
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@66
    move-result-object v0

    #@67
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@6a
    .line 4514
    new-instance v0, Ljava/lang/StringBuilder;

    #@6c
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@6f
    const-string/jumbo v1, " mRestrictedState="

    #@72
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@75
    move-result-object v0

    #@76
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    #@78
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@7b
    move-result-object v0

    #@7c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7f
    move-result-object v0

    #@80
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@83
    .line 4515
    new-instance v0, Ljava/lang/StringBuilder;

    #@85
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@88
    const-string/jumbo v1, " mPollingContext="

    #@8b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8e
    move-result-object v0

    #@8f
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPollingContext:[I

    #@91
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@94
    move-result-object v0

    #@95
    const-string/jumbo v1, " - "

    #@98
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9b
    move-result-object v1

    #@9c
    .line 4516
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPollingContext:[I

    #@9e
    if-eqz v0, :cond_0

    #@a0
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPollingContext:[I

    #@a2
    const/4 v2, 0x0

    #@a3
    aget v0, v0, v2

    #@a5
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@a8
    move-result-object v0

    #@a9
    .line 4515
    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@ac
    move-result-object v0

    #@ad
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b0
    move-result-object v0

    #@b1
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@b4
    .line 4517
    new-instance v0, Ljava/lang/StringBuilder;

    #@b6
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@b9
    const-string/jumbo v1, " mDesiredPowerState="

    #@bc
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bf
    move-result-object v0

    #@c0
    iget-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDesiredPowerState:Z

    #@c2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@c5
    move-result-object v0

    #@c6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c9
    move-result-object v0

    #@ca
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@cd
    .line 4518
    new-instance v0, Ljava/lang/StringBuilder;

    #@cf
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@d2
    const-string/jumbo v1, " mDontPollSignalStrength="

    #@d5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d8
    move-result-object v0

    #@d9
    iget-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDontPollSignalStrength:Z

    #@db
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@de
    move-result-object v0

    #@df
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e2
    move-result-object v0

    #@e3
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@e6
    .line 4519
    new-instance v0, Ljava/lang/StringBuilder;

    #@e8
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@eb
    const-string/jumbo v1, " mSignalStrength="

    #@ee
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f1
    move-result-object v0

    #@f2
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    #@f4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@f7
    move-result-object v0

    #@f8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@fb
    move-result-object v0

    #@fc
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@ff
    .line 4520
    new-instance v0, Ljava/lang/StringBuilder;

    #@101
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@104
    const-string/jumbo v1, " mLastSignalStrength="

    #@107
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10a
    move-result-object v0

    #@10b
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mLastSignalStrength:Landroid/telephony/SignalStrength;

    #@10d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@110
    move-result-object v0

    #@111
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@114
    move-result-object v0

    #@115
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@118
    .line 4521
    new-instance v0, Ljava/lang/StringBuilder;

    #@11a
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@11d
    const-string/jumbo v1, " mRestrictedState="

    #@120
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@123
    move-result-object v0

    #@124
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    #@126
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@129
    move-result-object v0

    #@12a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@12d
    move-result-object v0

    #@12e
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@131
    .line 4522
    new-instance v0, Ljava/lang/StringBuilder;

    #@133
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@136
    const-string/jumbo v1, " mPendingRadioPowerOffAfterDataOff="

    #@139
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13c
    move-result-object v0

    #@13d
    iget-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPendingRadioPowerOffAfterDataOff:Z

    #@13f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@142
    move-result-object v0

    #@143
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@146
    move-result-object v0

    #@147
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@14a
    .line 4523
    new-instance v0, Ljava/lang/StringBuilder;

    #@14c
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@14f
    const-string/jumbo v1, " mPendingRadioPowerOffAfterDataOffTag="

    #@152
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@155
    move-result-object v0

    #@156
    iget v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPendingRadioPowerOffAfterDataOffTag:I

    #@158
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@15b
    move-result-object v0

    #@15c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@15f
    move-result-object v0

    #@160
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@163
    .line 4524
    new-instance v0, Ljava/lang/StringBuilder;

    #@165
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@168
    const-string/jumbo v1, " mCellLoc="

    #@16b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16e
    move-result-object v0

    #@16f
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCellLoc:Landroid/telephony/CellLocation;

    #@171
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@174
    move-result-object v0

    #@175
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@178
    move-result-object v0

    #@179
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@17c
    .line 4525
    new-instance v0, Ljava/lang/StringBuilder;

    #@17e
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@181
    const-string/jumbo v1, " mNewCellLoc="

    #@184
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@187
    move-result-object v0

    #@188
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewCellLoc:Landroid/telephony/CellLocation;

    #@18a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@18d
    move-result-object v0

    #@18e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@191
    move-result-object v0

    #@192
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@195
    .line 4526
    new-instance v0, Ljava/lang/StringBuilder;

    #@197
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@19a
    const-string/jumbo v1, " mLastCellInfoListTime="

    #@19d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a0
    move-result-object v0

    #@1a1
    iget-wide v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mLastCellInfoListTime:J

    #@1a3
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@1a6
    move-result-object v0

    #@1a7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1aa
    move-result-object v0

    #@1ab
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1ae
    .line 4527
    new-instance v0, Ljava/lang/StringBuilder;

    #@1b0
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@1b3
    const-string/jumbo v1, " mPreferredNetworkType="

    #@1b6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b9
    move-result-object v0

    #@1ba
    iget v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPreferredNetworkType:I

    #@1bc
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1bf
    move-result-object v0

    #@1c0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c3
    move-result-object v0

    #@1c4
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1c7
    .line 4528
    new-instance v0, Ljava/lang/StringBuilder;

    #@1c9
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@1cc
    const-string/jumbo v1, " mMaxDataCalls="

    #@1cf
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d2
    move-result-object v0

    #@1d3
    iget v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mMaxDataCalls:I

    #@1d5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1d8
    move-result-object v0

    #@1d9
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1dc
    move-result-object v0

    #@1dd
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1e0
    .line 4529
    new-instance v0, Ljava/lang/StringBuilder;

    #@1e2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@1e5
    const-string/jumbo v1, " mNewMaxDataCalls="

    #@1e8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1eb
    move-result-object v0

    #@1ec
    iget v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewMaxDataCalls:I

    #@1ee
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1f1
    move-result-object v0

    #@1f2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f5
    move-result-object v0

    #@1f6
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1f9
    .line 4530
    new-instance v0, Ljava/lang/StringBuilder;

    #@1fb
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@1fe
    const-string/jumbo v1, " mReasonDataDenied="

    #@201
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@204
    move-result-object v0

    #@205
    iget v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mReasonDataDenied:I

    #@207
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@20a
    move-result-object v0

    #@20b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20e
    move-result-object v0

    #@20f
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@212
    .line 4531
    new-instance v0, Ljava/lang/StringBuilder;

    #@214
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@217
    const-string/jumbo v1, " mNewReasonDataDenied="

    #@21a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21d
    move-result-object v0

    #@21e
    iget v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewReasonDataDenied:I

    #@220
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@223
    move-result-object v0

    #@224
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@227
    move-result-object v0

    #@228
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@22b
    .line 4532
    new-instance v0, Ljava/lang/StringBuilder;

    #@22d
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@230
    const-string/jumbo v1, " mGsmRoaming="

    #@233
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@236
    move-result-object v0

    #@237
    iget-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mGsmRoaming:Z

    #@239
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@23c
    move-result-object v0

    #@23d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@240
    move-result-object v0

    #@241
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@244
    .line 4533
    new-instance v0, Ljava/lang/StringBuilder;

    #@246
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@249
    const-string/jumbo v1, " mDataRoaming="

    #@24c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24f
    move-result-object v0

    #@250
    iget-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDataRoaming:Z

    #@252
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@255
    move-result-object v0

    #@256
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@259
    move-result-object v0

    #@25a
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@25d
    .line 4534
    new-instance v0, Ljava/lang/StringBuilder;

    #@25f
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@262
    const-string/jumbo v1, " mEmergencyOnly="

    #@265
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@268
    move-result-object v0

    #@269
    iget-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mEmergencyOnly:Z

    #@26b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@26e
    move-result-object v0

    #@26f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@272
    move-result-object v0

    #@273
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@276
    .line 4535
    new-instance v0, Ljava/lang/StringBuilder;

    #@278
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@27b
    const-string/jumbo v1, " mNeedFixZoneAfterNitz="

    #@27e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@281
    move-result-object v0

    #@282
    iget-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNeedFixZoneAfterNitz:Z

    #@284
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@287
    move-result-object v0

    #@288
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28b
    move-result-object v0

    #@28c
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@28f
    .line 4536
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    #@292
    .line 4537
    new-instance v0, Ljava/lang/StringBuilder;

    #@294
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@297
    const-string/jumbo v1, " mZoneOffset="

    #@29a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29d
    move-result-object v0

    #@29e
    iget v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mZoneOffset:I

    #@2a0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2a3
    move-result-object v0

    #@2a4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a7
    move-result-object v0

    #@2a8
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@2ab
    .line 4538
    new-instance v0, Ljava/lang/StringBuilder;

    #@2ad
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@2b0
    const-string/jumbo v1, " mZoneDst="

    #@2b3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b6
    move-result-object v0

    #@2b7
    iget-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mZoneDst:Z

    #@2b9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@2bc
    move-result-object v0

    #@2bd
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c0
    move-result-object v0

    #@2c1
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@2c4
    .line 4539
    new-instance v0, Ljava/lang/StringBuilder;

    #@2c6
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@2c9
    const-string/jumbo v1, " mZoneTime="

    #@2cc
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2cf
    move-result-object v0

    #@2d0
    iget-wide v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mZoneTime:J

    #@2d2
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@2d5
    move-result-object v0

    #@2d6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2d9
    move-result-object v0

    #@2da
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@2dd
    .line 4540
    new-instance v0, Ljava/lang/StringBuilder;

    #@2df
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@2e2
    const-string/jumbo v1, " mGotCountryCode="

    #@2e5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e8
    move-result-object v0

    #@2e9
    iget-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mGotCountryCode:Z

    #@2eb
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@2ee
    move-result-object v0

    #@2ef
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f2
    move-result-object v0

    #@2f3
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@2f6
    .line 4541
    new-instance v0, Ljava/lang/StringBuilder;

    #@2f8
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@2fb
    const-string/jumbo v1, " mNitzUpdatedTime="

    #@2fe
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@301
    move-result-object v0

    #@302
    iget-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNitzUpdatedTime:Z

    #@304
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@307
    move-result-object v0

    #@308
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@30b
    move-result-object v0

    #@30c
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@30f
    .line 4542
    new-instance v0, Ljava/lang/StringBuilder;

    #@311
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@314
    const-string/jumbo v1, " mSavedTimeZone="

    #@317
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31a
    move-result-object v0

    #@31b
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSavedTimeZone:Ljava/lang/String;

    #@31d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@320
    move-result-object v0

    #@321
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@324
    move-result-object v0

    #@325
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@328
    .line 4543
    new-instance v0, Ljava/lang/StringBuilder;

    #@32a
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@32d
    const-string/jumbo v1, " mSavedTime="

    #@330
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@333
    move-result-object v0

    #@334
    iget-wide v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSavedTime:J

    #@336
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@339
    move-result-object v0

    #@33a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@33d
    move-result-object v0

    #@33e
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@341
    .line 4544
    new-instance v0, Ljava/lang/StringBuilder;

    #@343
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@346
    const-string/jumbo v1, " mSavedAtTime="

    #@349
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34c
    move-result-object v0

    #@34d
    iget-wide v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSavedAtTime:J

    #@34f
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@352
    move-result-object v0

    #@353
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@356
    move-result-object v0

    #@357
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@35a
    .line 4545
    new-instance v0, Ljava/lang/StringBuilder;

    #@35c
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@35f
    const-string/jumbo v1, " mStartedGprsRegCheck="

    #@362
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@365
    move-result-object v0

    #@366
    iget-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mStartedGprsRegCheck:Z

    #@368
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@36b
    move-result-object v0

    #@36c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@36f
    move-result-object v0

    #@370
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@373
    .line 4546
    new-instance v0, Ljava/lang/StringBuilder;

    #@375
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@378
    const-string/jumbo v1, " mReportedGprsNoReg="

    #@37b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37e
    move-result-object v0

    #@37f
    iget-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mReportedGprsNoReg:Z

    #@381
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@384
    move-result-object v0

    #@385
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@388
    move-result-object v0

    #@389
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@38c
    .line 4547
    new-instance v0, Ljava/lang/StringBuilder;

    #@38e
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@391
    const-string/jumbo v1, " mNotification="

    #@394
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@397
    move-result-object v0

    #@398
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNotification:Landroid/app/Notification;

    #@39a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@39d
    move-result-object v0

    #@39e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3a1
    move-result-object v0

    #@3a2
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@3a5
    .line 4548
    new-instance v0, Ljava/lang/StringBuilder;

    #@3a7
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@3aa
    const-string/jumbo v1, " mWakeLock="

    #@3ad
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b0
    move-result-object v0

    #@3b1
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@3b3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3b6
    move-result-object v0

    #@3b7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3ba
    move-result-object v0

    #@3bb
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@3be
    .line 4549
    new-instance v0, Ljava/lang/StringBuilder;

    #@3c0
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@3c3
    const-string/jumbo v1, " mCurSpn="

    #@3c6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c9
    move-result-object v0

    #@3ca
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCurSpn:Ljava/lang/String;

    #@3cc
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3cf
    move-result-object v0

    #@3d0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3d3
    move-result-object v0

    #@3d4
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@3d7
    .line 4550
    new-instance v0, Ljava/lang/StringBuilder;

    #@3d9
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@3dc
    const-string/jumbo v1, " mCurDataSpn="

    #@3df
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e2
    move-result-object v0

    #@3e3
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCurDataSpn:Ljava/lang/String;

    #@3e5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e8
    move-result-object v0

    #@3e9
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3ec
    move-result-object v0

    #@3ed
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@3f0
    .line 4551
    new-instance v0, Ljava/lang/StringBuilder;

    #@3f2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@3f5
    const-string/jumbo v1, " mCurShowSpn="

    #@3f8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3fb
    move-result-object v0

    #@3fc
    iget-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCurShowSpn:Z

    #@3fe
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@401
    move-result-object v0

    #@402
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@405
    move-result-object v0

    #@406
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@409
    .line 4552
    new-instance v0, Ljava/lang/StringBuilder;

    #@40b
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@40e
    const-string/jumbo v1, " mCurPlmn="

    #@411
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@414
    move-result-object v0

    #@415
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCurPlmn:Ljava/lang/String;

    #@417
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41a
    move-result-object v0

    #@41b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@41e
    move-result-object v0

    #@41f
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@422
    .line 4553
    new-instance v0, Ljava/lang/StringBuilder;

    #@424
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@427
    const-string/jumbo v1, " mCurShowPlmn="

    #@42a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42d
    move-result-object v0

    #@42e
    iget-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCurShowPlmn:Z

    #@430
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@433
    move-result-object v0

    #@434
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@437
    move-result-object v0

    #@438
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@43b
    .line 4554
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    #@43e
    .line 4555
    new-instance v0, Ljava/lang/StringBuilder;

    #@440
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@443
    const-string/jumbo v1, " mCurrentOtaspMode="

    #@446
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@449
    move-result-object v0

    #@44a
    iget v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCurrentOtaspMode:I

    #@44c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@44f
    move-result-object v0

    #@450
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@453
    move-result-object v0

    #@454
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@457
    .line 4556
    new-instance v0, Ljava/lang/StringBuilder;

    #@459
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@45c
    const-string/jumbo v1, " mRoamingIndicator="

    #@45f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@462
    move-result-object v0

    #@463
    iget v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRoamingIndicator:I

    #@465
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@468
    move-result-object v0

    #@469
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@46c
    move-result-object v0

    #@46d
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@470
    .line 4557
    new-instance v0, Ljava/lang/StringBuilder;

    #@472
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@475
    const-string/jumbo v1, " mIsInPrl="

    #@478
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47b
    move-result-object v0

    #@47c
    iget-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIsInPrl:Z

    #@47e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@481
    move-result-object v0

    #@482
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@485
    move-result-object v0

    #@486
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@489
    .line 4558
    new-instance v0, Ljava/lang/StringBuilder;

    #@48b
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@48e
    const-string/jumbo v1, " mDefaultRoamingIndicator="

    #@491
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@494
    move-result-object v0

    #@495
    iget v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDefaultRoamingIndicator:I

    #@497
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@49a
    move-result-object v0

    #@49b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@49e
    move-result-object v0

    #@49f
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@4a2
    .line 4559
    new-instance v0, Ljava/lang/StringBuilder;

    #@4a4
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@4a7
    const-string/jumbo v1, " mRegistrationState="

    #@4aa
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4ad
    move-result-object v0

    #@4ae
    iget v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRegistrationState:I

    #@4b0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4b3
    move-result-object v0

    #@4b4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4b7
    move-result-object v0

    #@4b8
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@4bb
    .line 4560
    new-instance v0, Ljava/lang/StringBuilder;

    #@4bd
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@4c0
    const-string/jumbo v1, " mMdn="

    #@4c3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c6
    move-result-object v0

    #@4c7
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mMdn:Ljava/lang/String;

    #@4c9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4cc
    move-result-object v0

    #@4cd
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4d0
    move-result-object v0

    #@4d1
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@4d4
    .line 4561
    new-instance v0, Ljava/lang/StringBuilder;

    #@4d6
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@4d9
    const-string/jumbo v1, " mHomeSystemId="

    #@4dc
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4df
    move-result-object v0

    #@4e0
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mHomeSystemId:[I

    #@4e2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4e5
    move-result-object v0

    #@4e6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4e9
    move-result-object v0

    #@4ea
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@4ed
    .line 4562
    new-instance v0, Ljava/lang/StringBuilder;

    #@4ef
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@4f2
    const-string/jumbo v1, " mHomeNetworkId="

    #@4f5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f8
    move-result-object v0

    #@4f9
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mHomeNetworkId:[I

    #@4fb
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4fe
    move-result-object v0

    #@4ff
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@502
    move-result-object v0

    #@503
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@506
    .line 4563
    new-instance v0, Ljava/lang/StringBuilder;

    #@508
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@50b
    const-string/jumbo v1, " mMin="

    #@50e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@511
    move-result-object v0

    #@512
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mMin:Ljava/lang/String;

    #@514
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@517
    move-result-object v0

    #@518
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@51b
    move-result-object v0

    #@51c
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@51f
    .line 4564
    new-instance v0, Ljava/lang/StringBuilder;

    #@521
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@524
    const-string/jumbo v1, " mPrlVersion="

    #@527
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52a
    move-result-object v0

    #@52b
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPrlVersion:Ljava/lang/String;

    #@52d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@530
    move-result-object v0

    #@531
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@534
    move-result-object v0

    #@535
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@538
    .line 4565
    new-instance v0, Ljava/lang/StringBuilder;

    #@53a
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@53d
    const-string/jumbo v1, " mIsMinInfoReady="

    #@540
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@543
    move-result-object v0

    #@544
    iget-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIsMinInfoReady:Z

    #@546
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@549
    move-result-object v0

    #@54a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@54d
    move-result-object v0

    #@54e
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@551
    .line 4566
    new-instance v0, Ljava/lang/StringBuilder;

    #@553
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@556
    const-string/jumbo v1, " mIsEriTextLoaded="

    #@559
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55c
    move-result-object v0

    #@55d
    iget-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIsEriTextLoaded:Z

    #@55f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@562
    move-result-object v0

    #@563
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@566
    move-result-object v0

    #@567
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@56a
    .line 4567
    new-instance v0, Ljava/lang/StringBuilder;

    #@56c
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@56f
    const-string/jumbo v1, " mIsSubscriptionFromRuim="

    #@572
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@575
    move-result-object v0

    #@576
    iget-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIsSubscriptionFromRuim:Z

    #@578
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@57b
    move-result-object v0

    #@57c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@57f
    move-result-object v0

    #@580
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@583
    .line 4568
    new-instance v0, Ljava/lang/StringBuilder;

    #@585
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@588
    const-string/jumbo v1, " mCdmaSSM="

    #@58b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@58e
    move-result-object v0

    #@58f
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    #@591
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@594
    move-result-object v0

    #@595
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@598
    move-result-object v0

    #@599
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@59c
    .line 4569
    new-instance v0, Ljava/lang/StringBuilder;

    #@59e
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5a1
    const-string/jumbo v1, " mRegistrationDeniedReason="

    #@5a4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a7
    move-result-object v0

    #@5a8
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRegistrationDeniedReason:Ljava/lang/String;

    #@5aa
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5ad
    move-result-object v0

    #@5ae
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5b1
    move-result-object v0

    #@5b2
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@5b5
    .line 4570
    new-instance v0, Ljava/lang/StringBuilder;

    #@5b7
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5ba
    const-string/jumbo v1, " mCurrentCarrier="

    #@5bd
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c0
    move-result-object v0

    #@5c1
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCurrentCarrier:Ljava/lang/String;

    #@5c3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c6
    move-result-object v0

    #@5c7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5ca
    move-result-object v0

    #@5cb
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@5ce
    .line 4571
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    #@5d1
    .line 4572
    new-instance v0, Ljava/lang/StringBuilder;

    #@5d3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5d6
    const-string/jumbo v1, " mImsRegistered="

    #@5d9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5dc
    move-result-object v0

    #@5dd
    iget-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mImsRegistered:Z

    #@5df
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@5e2
    move-result-object v0

    #@5e3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5e6
    move-result-object v0

    #@5e7
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@5ea
    .line 4573
    new-instance v0, Ljava/lang/StringBuilder;

    #@5ec
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5ef
    const-string/jumbo v1, " mImsRegistrationOnOff="

    #@5f2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f5
    move-result-object v0

    #@5f6
    iget-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mImsRegistrationOnOff:Z

    #@5f8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@5fb
    move-result-object v0

    #@5fc
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5ff
    move-result-object v0

    #@600
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@603
    .line 4574
    new-instance v0, Ljava/lang/StringBuilder;

    #@605
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@608
    const-string/jumbo v1, " mAlarmSwitch="

    #@60b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@60e
    move-result-object v0

    #@60f
    iget-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mAlarmSwitch:Z

    #@611
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@614
    move-result-object v0

    #@615
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@618
    move-result-object v0

    #@619
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@61c
    .line 4575
    new-instance v0, Ljava/lang/StringBuilder;

    #@61e
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@621
    const-string/jumbo v1, " mPowerOffDelayNeed="

    #@624
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@627
    move-result-object v0

    #@628
    iget-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPowerOffDelayNeed:Z

    #@62a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@62d
    move-result-object v0

    #@62e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@631
    move-result-object v0

    #@632
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@635
    .line 4576
    new-instance v0, Ljava/lang/StringBuilder;

    #@637
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@63a
    const-string/jumbo v1, " mDeviceShuttingDown="

    #@63d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@640
    move-result-object v0

    #@641
    iget-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDeviceShuttingDown:Z

    #@643
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@646
    move-result-object v0

    #@647
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@64a
    move-result-object v0

    #@64b
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@64e
    .line 4577
    new-instance v0, Ljava/lang/StringBuilder;

    #@650
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@653
    const-string/jumbo v1, " mSpnUpdatePending="

    #@656
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@659
    move-result-object v0

    #@65a
    iget-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSpnUpdatePending:Z

    #@65c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@65f
    move-result-object v0

    #@660
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@663
    move-result-object v0

    #@664
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@667
    .line 4508
    return-void

    #@668
    .line 4516
    :cond_0
    const-string/jumbo v0, ""

    #@66b
    goto/16 :goto_0
.end method

.method public enableLocationUpdates()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 820
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
    .line 821
    :cond_1
    iput-boolean v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mWantContinuousLocationUpdates:Z

    #@c
    .line 822
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
    .line 819
    return-void
.end method

.method public enableSingleLocationUpdate()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 814
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
    .line 815
    :cond_1
    iput-boolean v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mWantSingleLocationUpdate:Z

    #@c
    .line 816
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
    .line 813
    return-void
.end method

.method protected fixTimeZone(Ljava/lang/String;)V
    .locals 13
    .param p1, "isoCountryCode"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v12, 0x0

    #@1
    .line 3274
    const/4 v6, 0x0

    #@2
    .line 3277
    .local v6, "zone":Ljava/util/TimeZone;
    const-string/jumbo v8, "persist.sys.timezone"

    #@5
    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    #@8
    move-result-object v7

    #@9
    .line 3279
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
    .line 3280
    const-string/jumbo v9, "\' mZoneOffset="

    #@1c
    .line 3279
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v8

    #@20
    .line 3280
    iget v9, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mZoneOffset:I

    #@22
    .line 3279
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@25
    move-result-object v8

    #@26
    .line 3280
    const-string/jumbo v9, " mZoneDst="

    #@29
    .line 3279
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v8

    #@2d
    .line 3280
    iget-boolean v9, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mZoneDst:Z

    #@2f
    .line 3279
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@32
    move-result-object v8

    #@33
    .line 3281
    const-string/jumbo v9, " iso-cc=\'"

    #@36
    .line 3279
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v8

    #@3a
    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v8

    #@3e
    .line 3282
    const-string/jumbo v9, "\' iso-cc-idx="

    #@41
    .line 3279
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v8

    #@45
    .line 3282
    sget-object v9, Lcom/android/internal/telephony/ServiceStateTracker;->GMT_COUNTRY_CODES:[Ljava/lang/String;

    #@47
    invoke-static {v9, p1}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    #@4a
    move-result v9

    #@4b
    .line 3279
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
    .line 3284
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
    .line 3287
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
    .line 3288
    .local v6, "zone":Ljava/util/TimeZone;
    const-string/jumbo v8, "pollStateDone: using NITZ TimeZone"

    #@70
    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    #@73
    .line 3318
    :goto_0
    iput-boolean v12, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNeedFixZoneAfterNitz:Z

    #@75
    .line 3320
    if-eqz v6, :cond_5

    #@77
    .line 3321
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
    .line 3322
    invoke-direct {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getAutoTimeZone()Z

    #@95
    move-result v8

    #@96
    if-eqz v8, :cond_4

    #@98
    .line 3323
    invoke-virtual {v6}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    #@9b
    move-result-object v8

    #@9c
    invoke-direct {p0, v8}, Lcom/android/internal/telephony/ServiceStateTracker;->setAndBroadcastNetworkSetTimeZone(Ljava/lang/String;)V

    #@9f
    .line 3327
    :goto_1
    invoke-virtual {v6}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    #@a2
    move-result-object v8

    #@a3
    invoke-direct {p0, v8}, Lcom/android/internal/telephony/ServiceStateTracker;->saveNitzTimeZone(Ljava/lang/String;)V

    #@a6
    .line 3273
    :goto_2
    return-void

    #@a7
    .line 3289
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
    .line 3290
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    #@b4
    move-result v8

    #@b5
    if-lez v8, :cond_3

    #@b7
    .line 3291
    sget-object v8, Lcom/android/internal/telephony/ServiceStateTracker;->GMT_COUNTRY_CODES:[Ljava/lang/String;

    #@b9
    invoke-static {v8, p1}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    #@bc
    move-result v8

    #@bd
    if-gez v8, :cond_3

    #@bf
    .line 3294
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    #@c2
    move-result-object v6

    #@c3
    .line 3295
    .local v6, "zone":Ljava/util/TimeZone;
    iget-boolean v8, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNeedFixZoneAfterNitz:Z

    #@c5
    if-eqz v8, :cond_1

    #@c7
    .line 3296
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@ca
    move-result-wide v2

    #@cb
    .line 3297
    .local v2, "ctm":J
    invoke-virtual {v6, v2, v3}, Ljava/util/TimeZone;->getOffset(J)I

    #@ce
    move-result v8

    #@cf
    int-to-long v4, v8

    #@d0
    .line 3299
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
    .line 3300
    const-string/jumbo v9, " ltod="

    #@e3
    .line 3299
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e6
    move-result-object v8

    #@e7
    .line 3300
    invoke-static {v2, v3}, Landroid/util/TimeUtils;->logTimeOfDay(J)Ljava/lang/String;

    #@ea
    move-result-object v9

    #@eb
    .line 3299
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
    .line 3302
    invoke-direct {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getAutoTime()Z

    #@f9
    move-result v8

    #@fa
    if-eqz v8, :cond_2

    #@fc
    .line 3303
    sub-long v0, v2, v4

    #@fe
    .line 3304
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
    .line 3305
    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->setAndBroadcastNetworkSetTime(J)V

    #@11c
    .line 3312
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
    .line 3308
    .restart local v2    # "ctm":J
    .restart local v4    # "tzOffset":J
    :cond_2
    iget-wide v8, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSavedTime:J

    #@126
    sub-long/2addr v8, v4

    #@127
    iput-wide v8, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSavedTime:J

    #@129
    .line 3309
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
    .line 3314
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
    .line 3315
    .local v6, "zone":Ljava/util/TimeZone;
    const-string/jumbo v8, "fixTimeZone: using getTimeZone(off, dst, time, iso)"

    #@150
    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    #@153
    goto/16 :goto_0

    #@155
    .line 3325
    :cond_4
    const-string/jumbo v8, "fixTimeZone: skip changing zone as getAutoTimeZone was false"

    #@158
    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    #@15b
    goto/16 :goto_1

    #@15d
    .line 3329
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
    .line 3243
    if-gtz p2, :cond_0

    #@6
    .line 3245
    return-object p1

    #@7
    .line 3252
    :cond_0
    const/4 v0, 0x0

    #@8
    .line 3253
    .local v0, "isNitzTimeZone":Z
    const/4 v2, 0x0

    #@9
    .line 3254
    .local v2, "timeZone":I
    const/4 v3, 0x0

    #@a
    .line 3255
    .local v3, "tzone":Ljava/util/TimeZone;
    iget-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSavedTimeZone:Ljava/lang/String;

    #@c
    if-eqz v5, :cond_4

    #@e
    .line 3257
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
    .line 3258
    const/4 v0, 0x1

    #@1b
    .line 3265
    .end local v3    # "tzone":Ljava/util/TimeZone;
    :cond_1
    :goto_0
    iget-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mHbpcdUtils:Lcom/android/internal/telephony/HbpcdUtils;

    #@1d
    .line 3266
    iget-boolean v6, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mZoneDst:Z

    #@1f
    if-eqz v6, :cond_2

    #@21
    const/4 v4, 0x1

    #@22
    .line 3265
    :cond_2
    invoke-virtual {v5, p2, v2, v4, v0}, Lcom/android/internal/telephony/HbpcdUtils;->getMcc(IIIZ)I

    #@25
    move-result v1

    #@26
    .line 3267
    .local v1, "mcc":I
    if-lez v1, :cond_3

    #@28
    .line 3268
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
    .line 3270
    :cond_3
    return-object p1

    #@41
    .line 3260
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
    .line 3261
    .local v3, "tzone":Ljava/util/TimeZone;
    if-eqz v3, :cond_1

    #@4d
    .line 3262
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
    .line 4409
    new-instance v2, Lcom/android/internal/telephony/ServiceStateTracker$CellInfoResult;

    #@3
    invoke-direct {v2, p0, v8}, Lcom/android/internal/telephony/ServiceStateTracker$CellInfoResult;-><init>(Lcom/android/internal/telephony/ServiceStateTracker;Lcom/android/internal/telephony/ServiceStateTracker$CellInfoResult;)V

    #@6
    .line 4411
    .local v2, "result":Lcom/android/internal/telephony/ServiceStateTracker$CellInfoResult;
    iget-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@8
    invoke-interface {v4}, Lcom/android/internal/telephony/CommandsInterface;->getRilVersion()I

    #@b
    move-result v3

    #@c
    .line 4412
    .local v3, "ver":I
    const/16 v4, 0x8

    #@e
    if-lt v3, v4, :cond_2

    #@10
    .line 4413
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->isCallerOnDifferentThread()Z

    #@13
    move-result v4

    #@14
    if-eqz v4, :cond_1

    #@16
    .line 4414
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@19
    move-result-wide v4

    #@1a
    iget-wide v6, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mLastCellInfoListTime:J

    #@1c
    sub-long/2addr v4, v6

    #@1d
    .line 4415
    const-wide/16 v6, 0x7d0

    #@1f
    .line 4414
    cmp-long v4, v4, v6

    #@21
    if-lez v4, :cond_0

    #@23
    .line 4416
    const/16 v4, 0x2b

    #@25
    invoke-virtual {p0, v4, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@28
    move-result-object v1

    #@29
    .line 4417
    .local v1, "msg":Landroid/os/Message;
    iget-object v5, v2, Lcom/android/internal/telephony/ServiceStateTracker$CellInfoResult;->lockObj:Ljava/lang/Object;

    #@2b
    monitor-enter v5

    #@2c
    .line 4418
    const/4 v4, 0x0

    #@2d
    :try_start_0
    iput-object v4, v2, Lcom/android/internal/telephony/ServiceStateTracker$CellInfoResult;->list:Ljava/util/List;

    #@2f
    .line 4419
    iget-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@31
    invoke-interface {v4, v1}, Lcom/android/internal/telephony/CommandsInterface;->getCellInfoList(Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@34
    .line 4421
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
    .line 4438
    .end local v1    # "msg":Landroid/os/Message;
    :goto_1
    iget-object v5, v2, Lcom/android/internal/telephony/ServiceStateTracker$CellInfoResult;->lockObj:Ljava/lang/Object;

    #@3e
    monitor-enter v5

    #@3f
    .line 4439
    :try_start_2
    iget-object v4, v2, Lcom/android/internal/telephony/ServiceStateTracker$CellInfoResult;->list:Ljava/util/List;

    #@41
    if-eqz v4, :cond_3

    #@43
    .line 4442
    iget-object v4, v2, Lcom/android/internal/telephony/ServiceStateTracker$CellInfoResult;->list:Ljava/util/List;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@45
    monitor-exit v5

    #@46
    return-object v4

    #@47
    .line 4422
    .restart local v1    # "msg":Landroid/os/Message;
    :catch_0
    move-exception v0

    #@48
    .line 4423
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@4b
    goto :goto_0

    #@4c
    .line 4417
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v4

    #@4d
    monitor-exit v5

    #@4e
    throw v4

    #@4f
    .line 4427
    .end local v1    # "msg":Landroid/os/Message;
    :cond_0
    const-string/jumbo v4, "SST.getAllCellInfo(): return last, back to back calls"

    #@52
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    #@55
    .line 4428
    iget-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mLastCellInfoList:Ljava/util/List;

    #@57
    iput-object v4, v2, Lcom/android/internal/telephony/ServiceStateTracker$CellInfoResult;->list:Ljava/util/List;

    #@59
    goto :goto_1

    #@5a
    .line 4431
    :cond_1
    const-string/jumbo v4, "SST.getAllCellInfo(): return last, same thread can\'t block"

    #@5d
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    #@60
    .line 4432
    iget-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mLastCellInfoList:Ljava/util/List;

    #@62
    iput-object v4, v2, Lcom/android/internal/telephony/ServiceStateTracker$CellInfoResult;->list:Ljava/util/List;

    #@64
    goto :goto_1

    #@65
    .line 4435
    :cond_2
    const-string/jumbo v4, "SST.getAllCellInfo(): not implemented"

    #@68
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    #@6b
    .line 4436
    iput-object v8, v2, Lcom/android/internal/telephony/ServiceStateTracker$CellInfoResult;->list:Ljava/util/List;

    #@6d
    goto :goto_1

    #@6e
    .line 4444
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
    .line 4445
    return-object v8

    #@76
    .line 4438
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
    .line 1343
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
    .line 3602
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
    .line 3603
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
    .line 3604
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
    .line 3605
    iget-object v10, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCellLoc:Landroid/telephony/CellLocation;

    #@33
    return-object v10

    #@34
    .line 3607
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getAllCellInfo()Ljava/util/List;

    #@37
    move-result-object v9

    #@38
    .line 3608
    .local v9, "result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    if-eqz v9, :cond_6

    #@3a
    .line 3621
    new-instance v6, Landroid/telephony/gsm/GsmCellLocation;

    #@3c
    invoke-direct {v6}, Landroid/telephony/gsm/GsmCellLocation;-><init>()V

    #@3f
    .line 3622
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
    .line 3623
    .local v7, "ci":Landroid/telephony/CellInfo;
    instance-of v10, v7, Landroid/telephony/CellInfoGsm;

    #@51
    if-eqz v10, :cond_2

    #@53
    move-object v3, v7

    #@54
    .line 3624
    check-cast v3, Landroid/telephony/CellInfoGsm;

    #@56
    .line 3625
    .local v3, "cellInfoGsm":Landroid/telephony/CellInfoGsm;
    invoke-virtual {v3}, Landroid/telephony/CellInfoGsm;->getCellIdentity()Landroid/telephony/CellIdentityGsm;

    #@59
    move-result-object v0

    #@5a
    .line 3626
    .local v0, "cellIdentityGsm":Landroid/telephony/CellIdentityGsm;
    invoke-virtual {v0}, Landroid/telephony/CellIdentityGsm;->getLac()I

    #@5d
    move-result v10

    #@5e
    .line 3627
    invoke-virtual {v0}, Landroid/telephony/CellIdentityGsm;->getCid()I

    #@61
    move-result v11

    #@62
    .line 3626
    invoke-virtual {v6, v10, v11}, Landroid/telephony/gsm/GsmCellLocation;->setLacAndCid(II)V

    #@65
    .line 3628
    invoke-virtual {v0}, Landroid/telephony/CellIdentityGsm;->getPsc()I

    #@68
    move-result v10

    #@69
    invoke-virtual {v6, v10}, Landroid/telephony/gsm/GsmCellLocation;->setPsc(I)V

    #@6c
    .line 3629
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
    .line 3630
    return-object v6

    #@84
    .line 3631
    .end local v0    # "cellIdentityGsm":Landroid/telephony/CellIdentityGsm;
    .end local v3    # "cellInfoGsm":Landroid/telephony/CellInfoGsm;
    :cond_2
    instance-of v10, v7, Landroid/telephony/CellInfoWcdma;

    #@86
    if-eqz v10, :cond_3

    #@88
    move-object v5, v7

    #@89
    .line 3632
    check-cast v5, Landroid/telephony/CellInfoWcdma;

    #@8b
    .line 3633
    .local v5, "cellInfoWcdma":Landroid/telephony/CellInfoWcdma;
    invoke-virtual {v5}, Landroid/telephony/CellInfoWcdma;->getCellIdentity()Landroid/telephony/CellIdentityWcdma;

    #@8e
    move-result-object v2

    #@8f
    .line 3634
    .local v2, "cellIdentityWcdma":Landroid/telephony/CellIdentityWcdma;
    invoke-virtual {v2}, Landroid/telephony/CellIdentityWcdma;->getLac()I

    #@92
    move-result v10

    #@93
    .line 3635
    invoke-virtual {v2}, Landroid/telephony/CellIdentityWcdma;->getCid()I

    #@96
    move-result v11

    #@97
    .line 3634
    invoke-virtual {v6, v10, v11}, Landroid/telephony/gsm/GsmCellLocation;->setLacAndCid(II)V

    #@9a
    .line 3636
    invoke-virtual {v2}, Landroid/telephony/CellIdentityWcdma;->getPsc()I

    #@9d
    move-result v10

    #@9e
    invoke-virtual {v6, v10}, Landroid/telephony/gsm/GsmCellLocation;->setPsc(I)V

    #@a1
    .line 3637
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
    .line 3638
    return-object v6

    #@b9
    .line 3639
    .end local v2    # "cellIdentityWcdma":Landroid/telephony/CellIdentityWcdma;
    .end local v5    # "cellInfoWcdma":Landroid/telephony/CellInfoWcdma;
    :cond_3
    instance-of v10, v7, Landroid/telephony/CellInfoLte;

    #@bb
    if-eqz v10, :cond_1

    #@bd
    .line 3640
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
    .line 3642
    check-cast v4, Landroid/telephony/CellInfoLte;

    #@cc
    .line 3643
    .local v4, "cellInfoLte":Landroid/telephony/CellInfoLte;
    invoke-virtual {v4}, Landroid/telephony/CellInfoLte;->getCellIdentity()Landroid/telephony/CellIdentityLte;

    #@cf
    move-result-object v1

    #@d0
    .line 3644
    .local v1, "cellIdentityLte":Landroid/telephony/CellIdentityLte;
    invoke-virtual {v1}, Landroid/telephony/CellIdentityLte;->getTac()I

    #@d3
    move-result v10

    #@d4
    if-eq v10, v13, :cond_1

    #@d6
    .line 3645
    invoke-virtual {v1}, Landroid/telephony/CellIdentityLte;->getCi()I

    #@d9
    move-result v10

    #@da
    if-eq v10, v13, :cond_1

    #@dc
    .line 3646
    invoke-virtual {v1}, Landroid/telephony/CellIdentityLte;->getTac()I

    #@df
    move-result v10

    #@e0
    .line 3647
    invoke-virtual {v1}, Landroid/telephony/CellIdentityLte;->getCi()I

    #@e3
    move-result v11

    #@e4
    .line 3646
    invoke-virtual {v6, v10, v11}, Landroid/telephony/gsm/GsmCellLocation;->setLacAndCid(II)V

    #@e7
    .line 3648
    invoke-virtual {v6, v12}, Landroid/telephony/gsm/GsmCellLocation;->setPsc(I)V

    #@ea
    .line 3650
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
    .line 3656
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
    .line 3658
    return-object v6

    #@11b
    .line 3661
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
    .line 3663
    iget-object v10, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCellLoc:Landroid/telephony/CellLocation;

    #@136
    return-object v10
.end method

.method public getCurrentDataConnectionState()I
    .locals 1

    #@0
    .prologue
    .line 2363
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
    .line 633
    iget-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDesiredPowerState:Z

    #@2
    return v0
.end method

.method protected getHomeOperatorNumeric()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 4749
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@2
    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    #@5
    move-result-object v1

    #@6
    .line 4750
    const-string/jumbo v2, "phone"

    #@9
    .line 4749
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@c
    move-result-object v1

    #@d
    check-cast v1, Landroid/telephony/TelephonyManager;

    #@f
    .line 4751
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@11
    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    #@14
    move-result v2

    #@15
    .line 4749
    invoke-virtual {v1, v2}, Landroid/telephony/TelephonyManager;->getSimOperatorNumericForPhone(I)Ljava/lang/String;

    #@18
    move-result-object v0

    #@19
    .line 4752
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
    .line 4753
    const-string/jumbo v1, "ro.cdma.home.operator.numeric"

    #@2a
    const-string/jumbo v2, ""

    #@2d
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@30
    move-result-object v0

    #@31
    .line 4755
    :cond_0
    return-object v0
.end method

.method public getImsi()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1356
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@3
    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    #@6
    move-result-object v1

    #@7
    .line 1357
    const-string/jumbo v2, "phone"

    #@a
    .line 1356
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@d
    move-result-object v1

    #@e
    check-cast v1, Landroid/telephony/TelephonyManager;

    #@10
    .line 1358
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@12
    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    #@15
    move-result v2

    #@16
    .line 1356
    invoke-virtual {v1, v2}, Landroid/telephony/TelephonyManager;->getSimOperatorNumericForPhone(I)Ljava/lang/String;

    #@19
    move-result-object v0

    #@1a
    .line 1360
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
    .line 1361
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
    .line 1363
    :cond_0
    return-object v3
.end method

.method public getMdnNumber()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1339
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
    .line 1382
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@4
    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getIccRecordsLoaded()Z

    #@7
    move-result v1

    #@8
    if-nez v1, :cond_0

    #@a
    .line 1383
    const-string/jumbo v1, "getOtasp: otasp uninitialized due to sim not loaded"

    #@d
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    #@10
    .line 1384
    return v3

    #@11
    .line 1387
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@13
    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    #@16
    move-result v1

    #@17
    if-eqz v1, :cond_1

    #@19
    .line 1388
    const-string/jumbo v1, "getOtasp: otasp not needed for GSM"

    #@1c
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    #@1f
    .line 1389
    const/4 v1, 0x3

    #@20
    return v1

    #@21
    .line 1392
    :cond_1
    iget-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIsSubscriptionFromRuim:Z

    #@23
    if-eqz v1, :cond_2

    #@25
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mMin:Ljava/lang/String;

    #@27
    if-nez v1, :cond_2

    #@29
    .line 1393
    const/4 v1, 0x2

    #@2a
    return v1

    #@2b
    .line 1395
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
    .line 1396
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
    .line 1397
    const/4 v0, 0x1

    #@58
    .line 1407
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
    .line 1408
    return v0

    #@70
    .line 1399
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
    .line 1400
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
    .line 1399
    if-nez v1, :cond_5

    #@8a
    .line 1401
    const-string/jumbo v1, "test_cdma_setup"

    #@8d
    invoke-static {v1, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    #@90
    move-result v1

    #@91
    .line 1399
    if-eqz v1, :cond_6

    #@93
    .line 1402
    :cond_5
    const/4 v0, 0x2

    #@94
    .restart local v0    # "provisioningState":I
    goto :goto_0

    #@95
    .line 1404
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
    .line 1454
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@2
    return-object v0
.end method

.method protected getPhoneId()I
    .locals 1

    #@0
    .prologue
    .line 4759
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getPrlVersion()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1348
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPrlVersion:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getSignalStrength()Landroid/telephony/SignalStrength;
    .locals 1

    #@0
    .prologue
    .line 4454
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
    .line 4402
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
    .line 844
    move-object/from16 v0, p1

    #@2
    iget v4, v0, Landroid/os/Message;->what:I

    #@4
    packed-switch v4, :pswitch_data_0

    #@7
    .line 1308
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
    .line 840
    :cond_0
    :goto_0
    :pswitch_1
    return-void

    #@2b
    .line 846
    :pswitch_2
    monitor-enter p0

    #@2c
    .line 847
    :try_start_0
    move-object/from16 v0, p0

    #@2e
    iget-boolean v4, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mPendingRadioPowerOffAfterDataOff:Z

    #@30
    if-eqz v4, :cond_1

    #@32
    .line 848
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
    .line 849
    const-string/jumbo v4, "EVENT_SET_RADIO_OFF, turn radio off now."

    #@43
    move-object/from16 v0, p0

    #@45
    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    #@48
    .line 850
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ServiceStateTracker;->hangupAndPowerOff()V

    #@4b
    .line 851
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
    .line 852
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
    .line 854
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
    .line 855
    const-string/jumbo v29, "!= tag="

    #@79
    .line 854
    move-object/from16 v0, v29

    #@7b
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7e
    move-result-object v4

    #@7f
    .line 855
    move-object/from16 v0, p0

    #@81
    iget v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mPendingRadioPowerOffAfterDataOffTag:I

    #@83
    move/from16 v29, v0

    #@85
    .line 854
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
    .line 846
    :catchall_0
    move-exception v4

    #@96
    monitor-exit p0

    #@97
    throw v4

    #@98
    .line 861
    :pswitch_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ServiceStateTracker;->onUpdateIccAvailability()V

    #@9b
    goto :goto_0

    #@9c
    .line 865
    :pswitch_4
    move-object/from16 v0, p1

    #@9e
    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@a0
    check-cast v10, Landroid/os/AsyncResult;

    #@a2
    .line 866
    .local v10, "ar":Landroid/os/AsyncResult;
    iget-object v0, v10, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    #@a4
    move-object/from16 v25, v0

    #@a6
    check-cast v25, Lcom/android/internal/telephony/ServiceStateTracker$CellInfoResult;

    #@a8
    .line 867
    .local v25, "result":Lcom/android/internal/telephony/ServiceStateTracker$CellInfoResult;
    move-object/from16 v0, v25

    #@aa
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker$CellInfoResult;->lockObj:Ljava/lang/Object;

    #@ac
    move-object/from16 v29, v0

    #@ae
    monitor-enter v29

    #@af
    .line 868
    :try_start_2
    iget-object v4, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@b1
    if-eqz v4, :cond_2

    #@b3
    .line 869
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
    .line 870
    const/4 v4, 0x0

    #@d5
    move-object/from16 v0, v25

    #@d7
    iput-object v4, v0, Lcom/android/internal/telephony/ServiceStateTracker$CellInfoResult;->list:Ljava/util/List;

    #@d9
    .line 879
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
    .line 880
    move-object/from16 v0, v25

    #@e5
    iget-object v4, v0, Lcom/android/internal/telephony/ServiceStateTracker$CellInfoResult;->list:Ljava/util/List;

    #@e7
    move-object/from16 v0, p0

    #@e9
    iput-object v4, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mLastCellInfoList:Ljava/util/List;

    #@eb
    .line 881
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
    .line 872
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
    .line 867
    :catchall_1
    move-exception v4

    #@ff
    monitor-exit v29

    #@100
    throw v4

    #@101
    .line 887
    .end local v10    # "ar":Landroid/os/AsyncResult;
    .end local v25    # "result":Lcom/android/internal/telephony/ServiceStateTracker$CellInfoResult;
    :pswitch_5
    move-object/from16 v0, p1

    #@103
    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@105
    check-cast v10, Landroid/os/AsyncResult;

    #@107
    .line 888
    .restart local v10    # "ar":Landroid/os/AsyncResult;
    iget-object v4, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@109
    if-eqz v4, :cond_3

    #@10b
    .line 889
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
    .line 891
    :cond_3
    iget-object v0, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@130
    move-object/from16 v17, v0

    #@132
    check-cast v17, Ljava/util/List;

    #@134
    .line 895
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
    .line 896
    move-object/from16 v0, v17

    #@140
    move-object/from16 v1, p0

    #@142
    iput-object v0, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mLastCellInfoList:Ljava/util/List;

    #@144
    .line 897
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
    .line 903
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
    .line 907
    :pswitch_7
    move-object/from16 v0, p1

    #@166
    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@168
    check-cast v10, Landroid/os/AsyncResult;

    #@16a
    .line 908
    .restart local v10    # "ar":Landroid/os/AsyncResult;
    iget-object v4, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@16c
    if-nez v4, :cond_0

    #@16e
    .line 909
    iget-object v0, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@170
    move-object/from16 v24, v0

    #@172
    check-cast v24, [I

    #@174
    .line 910
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
    .line 923
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
    .line 924
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ServiceStateTracker;->pollState()V

    #@196
    .line 926
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/ServiceStateTracker;->queueNextSignalStrengthPoll()V

    #@199
    goto/16 :goto_0

    #@19b
    .line 931
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
    .line 932
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
    .line 933
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
    .line 936
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/ServiceStateTracker;->queueNextSignalStrengthPoll()V

    #@1c3
    .line 939
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ServiceStateTracker;->setPowerStateToDesired()V

    #@1c6
    .line 940
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ServiceStateTracker;->pollState()V

    #@1c9
    goto/16 :goto_0

    #@1cb
    .line 944
    :pswitch_a
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/ServiceStateTracker;->modemTriggeredPollState()V

    #@1ce
    goto/16 :goto_0

    #@1d0
    .line 951
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
    .line 953
    return-void

    #@1df
    .line 955
    :cond_6
    move-object/from16 v0, p1

    #@1e1
    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@1e3
    check-cast v10, Landroid/os/AsyncResult;

    #@1e5
    .line 956
    .restart local v10    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, p0

    #@1e7
    invoke-virtual {v0, v10}, Lcom/android/internal/telephony/ServiceStateTracker;->onSignalStrengthResult(Landroid/os/AsyncResult;)Z

    #@1ea
    .line 957
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/ServiceStateTracker;->queueNextSignalStrengthPoll()V

    #@1ed
    goto/16 :goto_0

    #@1ef
    .line 962
    .end local v10    # "ar":Landroid/os/AsyncResult;
    :pswitch_c
    move-object/from16 v0, p1

    #@1f1
    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@1f3
    check-cast v10, Landroid/os/AsyncResult;

    #@1f5
    .line 964
    .restart local v10    # "ar":Landroid/os/AsyncResult;
    iget-object v4, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@1f7
    if-nez v4, :cond_9

    #@1f9
    .line 965
    iget-object v0, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@1fb
    move-object/from16 v27, v0

    #@1fd
    check-cast v27, [Ljava/lang/String;

    #@1ff
    .line 966
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
    .line 967
    const/16 v16, -0x1

    #@20b
    .line 968
    .local v16, "lac":I
    const/4 v12, -0x1

    #@20c
    .line 969
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
    .line 971
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
    .line 972
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
    .line 974
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
    .line 975
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
    .line 981
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
    .line 1019
    .end local v12    # "cid":I
    .end local v16    # "lac":I
    :goto_5
    move-object/from16 v0, p0

    #@254
    iget-object v4, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@256
    invoke-virtual {v4}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifyLocationChanged()V

    #@259
    .line 1024
    .end local v27    # "states":[Ljava/lang/String;
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ServiceStateTracker;->disableSingleLocationUpdate()V

    #@25c
    goto/16 :goto_0

    #@25e
    .line 977
    .restart local v12    # "cid":I
    .restart local v16    # "lac":I
    .restart local v27    # "states":[Ljava/lang/String;
    :catch_0
    move-exception v14

    #@25f
    .line 978
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
    .line 983
    .end local v12    # "cid":I
    .end local v14    # "ex":Ljava/lang/NumberFormatException;
    .end local v16    # "lac":I
    :cond_a
    const/4 v5, -0x1

    #@27f
    .line 984
    .local v5, "baseStationId":I
    const v6, 0x7fffffff

    #@282
    .line 985
    .local v6, "baseStationLatitude":I
    const v7, 0x7fffffff

    #@285
    .line 986
    .local v7, "baseStationLongitude":I
    const/4 v8, -0x1

    #@286
    .line 987
    .local v8, "systemId":I
    const/4 v9, -0x1

    #@287
    .line 989
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
    .line 991
    const/4 v4, 0x4

    #@291
    :try_start_5
    aget-object v4, v27, v4

    #@293
    if-eqz v4, :cond_b

    #@295
    .line 992
    const/4 v4, 0x4

    #@296
    aget-object v4, v27, v4

    #@298
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@29b
    move-result v5

    #@29c
    .line 994
    :cond_b
    const/4 v4, 0x5

    #@29d
    aget-object v4, v27, v4

    #@29f
    if-eqz v4, :cond_c

    #@2a1
    .line 995
    const/4 v4, 0x5

    #@2a2
    aget-object v4, v27, v4

    #@2a4
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@2a7
    move-result v6

    #@2a8
    .line 997
    :cond_c
    const/4 v4, 0x6

    #@2a9
    aget-object v4, v27, v4

    #@2ab
    if-eqz v4, :cond_d

    #@2ad
    .line 998
    const/4 v4, 0x6

    #@2ae
    aget-object v4, v27, v4

    #@2b0
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@2b3
    move-result v7

    #@2b4
    .line 1001
    :cond_d
    if-nez v6, :cond_e

    #@2b6
    if-nez v7, :cond_e

    #@2b8
    .line 1002
    const v6, 0x7fffffff

    #@2bb
    .line 1003
    const v7, 0x7fffffff

    #@2be
    .line 1005
    :cond_e
    const/16 v4, 0x8

    #@2c0
    aget-object v4, v27, v4

    #@2c2
    if-eqz v4, :cond_f

    #@2c4
    .line 1006
    const/16 v4, 0x8

    #@2c6
    aget-object v4, v27, v4

    #@2c8
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@2cb
    move-result v8

    #@2cc
    .line 1008
    :cond_f
    const/16 v4, 0x9

    #@2ce
    aget-object v4, v27, v4

    #@2d0
    if-eqz v4, :cond_10

    #@2d2
    .line 1009
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
    .line 1016
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
    .line 1011
    :catch_1
    move-exception v14

    #@2e6
    .line 1012
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
    .line 1030
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
    .line 1031
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
    .line 1035
    .end local v10    # "ar":Landroid/os/AsyncResult;
    :pswitch_e
    const-string/jumbo v4, "EVENT_POLL_STATE_NETWORK_SELECTION_MODE"

    #@316
    move-object/from16 v0, p0

    #@318
    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    #@31b
    .line 1036
    move-object/from16 v0, p1

    #@31d
    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@31f
    check-cast v10, Landroid/os/AsyncResult;

    #@321
    .line 1037
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
    .line 1038
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
    .line 1040
    :cond_11
    iget-object v4, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@338
    if-nez v4, :cond_12

    #@33a
    iget-object v4, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@33c
    if-eqz v4, :cond_12

    #@33e
    .line 1041
    iget-object v15, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@340
    check-cast v15, [I

    #@342
    .line 1042
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
    .line 1043
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
    .line 1046
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
    .line 1054
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
    .line 1058
    :pswitch_10
    move-object/from16 v0, p1

    #@379
    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@37b
    check-cast v10, Landroid/os/AsyncResult;

    #@37d
    .line 1060
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
    .line 1061
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
    .line 1063
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
    .line 1069
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
    .line 1073
    .restart local v10    # "ar":Landroid/os/AsyncResult;
    const/4 v4, 0x1

    #@3a7
    move-object/from16 v0, p0

    #@3a9
    iput-boolean v4, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mDontPollSignalStrength:Z

    #@3ab
    .line 1075
    move-object/from16 v0, p0

    #@3ad
    invoke-virtual {v0, v10}, Lcom/android/internal/telephony/ServiceStateTracker;->onSignalStrengthResult(Landroid/os/AsyncResult;)Z

    #@3b0
    goto/16 :goto_0

    #@3b2
    .line 1079
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
    .line 1080
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ServiceStateTracker;->updatePhoneObject()V

    #@3d8
    .line 1081
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ServiceStateTracker;->updateOtaspState()V

    #@3db
    .line 1082
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
    .line 1083
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ServiceStateTracker;->updateSpnDisplay()V

    #@3e8
    goto/16 :goto_0

    #@3ea
    .line 1088
    :pswitch_13
    move-object/from16 v0, p1

    #@3ec
    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@3ee
    check-cast v10, Landroid/os/AsyncResult;

    #@3f0
    .line 1090
    .restart local v10    # "ar":Landroid/os/AsyncResult;
    iget-object v4, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@3f2
    if-nez v4, :cond_0

    #@3f4
    .line 1091
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
    .line 1096
    .end local v10    # "ar":Landroid/os/AsyncResult;
    :pswitch_14
    move-object/from16 v0, p1

    #@40f
    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@411
    check-cast v10, Landroid/os/AsyncResult;

    #@413
    .line 1098
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
    .line 1099
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
    .line 1103
    .end local v10    # "ar":Landroid/os/AsyncResult;
    .end local v19    # "message":Landroid/os/Message;
    :pswitch_15
    move-object/from16 v0, p1

    #@434
    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@436
    check-cast v10, Landroid/os/AsyncResult;

    #@438
    .line 1104
    .restart local v10    # "ar":Landroid/os/AsyncResult;
    iget-object v4, v10, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    #@43a
    if-eqz v4, :cond_0

    #@43c
    .line 1105
    iget-object v4, v10, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    #@43e
    check-cast v4, Landroid/os/Message;

    #@440
    invoke-static {v4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    #@443
    move-result-object v4

    #@444
    .line 1106
    iget-object v0, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@446
    move-object/from16 v29, v0

    #@448
    .line 1105
    move-object/from16 v0, v29

    #@44a
    iput-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@44c
    .line 1107
    iget-object v4, v10, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    #@44e
    check-cast v4, Landroid/os/Message;

    #@450
    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    #@453
    goto/16 :goto_0

    #@455
    .line 1112
    .end local v10    # "ar":Landroid/os/AsyncResult;
    :pswitch_16
    move-object/from16 v0, p1

    #@457
    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@459
    check-cast v10, Landroid/os/AsyncResult;

    #@45b
    .line 1114
    .restart local v10    # "ar":Landroid/os/AsyncResult;
    iget-object v4, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@45d
    if-nez v4, :cond_13

    #@45f
    .line 1115
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
    .line 1120
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
    .line 1121
    .restart local v19    # "message":Landroid/os/Message;
    const/16 v28, 0x7

    #@479
    .line 1123
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
    .line 1117
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
    .line 1127
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
    .line 1128
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
    .line 1138
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
    .line 1133
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
    .line 1134
    .local v18, "loc":Landroid/telephony/gsm/GsmCellLocation;
    const/4 v4, 0x2

    #@4ca
    new-array v0, v4, [Ljava/lang/Object;

    #@4cc
    move-object/from16 v29, v0

    #@4ce
    .line 1135
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
    .line 1134
    const v4, 0xc3bb

    #@4eb
    move-object/from16 v0, v29

    #@4ed
    invoke-static {v4, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    #@4f0
    .line 1136
    const/4 v4, 0x1

    #@4f1
    move-object/from16 v0, p0

    #@4f3
    iput-boolean v4, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mReportedGprsNoReg:Z

    #@4f5
    goto :goto_8

    #@4f6
    .line 1135
    :cond_16
    const/4 v4, -0x1

    #@4f7
    goto :goto_9

    #@4f8
    .line 1142
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
    .line 1146
    const-string/jumbo v4, "EVENT_RESTRICTED_STATE_CHANGED"

    #@505
    move-object/from16 v0, p0

    #@507
    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    #@50a
    .line 1148
    move-object/from16 v0, p1

    #@50c
    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@50e
    check-cast v10, Landroid/os/AsyncResult;

    #@510
    .line 1150
    .restart local v10    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, p0

    #@512
    invoke-direct {v0, v10}, Lcom/android/internal/telephony/ServiceStateTracker;->onRestrictedStateChanged(Landroid/os/AsyncResult;)V

    #@515
    goto/16 :goto_0

    #@517
    .line 1155
    .end local v10    # "ar":Landroid/os/AsyncResult;
    :pswitch_19
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    #@51a
    move-result v13

    #@51b
    .line 1156
    .local v13, "dds":I
    invoke-static {}, Lcom/android/internal/telephony/ProxyController;->getInstance()Lcom/android/internal/telephony/ProxyController;

    #@51e
    move-result-object v4

    #@51f
    move-object/from16 v0, p0

    #@521
    invoke-virtual {v4, v13, v0}, Lcom/android/internal/telephony/ProxyController;->unregisterForAllDataDisconnected(ILandroid/os/Handler;)V

    #@524
    .line 1157
    monitor-enter p0

    #@525
    .line 1158
    :try_start_6
    move-object/from16 v0, p0

    #@527
    iget-boolean v4, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mPendingRadioPowerOffAfterDataOff:Z

    #@529
    if-eqz v4, :cond_17

    #@52b
    .line 1159
    const-string/jumbo v4, "EVENT_ALL_DATA_DISCONNECTED, turn radio off now."

    #@52e
    move-object/from16 v0, p0

    #@530
    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    #@533
    .line 1160
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ServiceStateTracker;->hangupAndPowerOff()V

    #@536
    .line 1161
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
    .line 1157
    :catchall_2
    move-exception v4

    #@53e
    monitor-exit p0

    #@53f
    throw v4

    #@540
    .line 1163
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
    .line 1169
    .end local v13    # "dds":I
    :pswitch_1a
    const-string/jumbo v4, "EVENT_CHANGE_IMS_STATE:"

    #@54d
    move-object/from16 v0, p0

    #@54f
    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    #@552
    .line 1171
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ServiceStateTracker;->setPowerStateToDesired()V

    #@555
    goto/16 :goto_0

    #@557
    .line 1175
    :pswitch_1b
    const-string/jumbo v4, "EVENT_IMS_CAPABILITY_CHANGED"

    #@55a
    move-object/from16 v0, p0

    #@55c
    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    #@55f
    .line 1176
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ServiceStateTracker;->updateSpnDisplay()V

    #@562
    goto/16 :goto_0

    #@564
    .line 1181
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
    .line 1185
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
    .line 1187
    const-string/jumbo v4, "Receive EVENT_RUIM_READY"

    #@584
    move-object/from16 v0, p0

    #@586
    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    #@589
    .line 1188
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ServiceStateTracker;->pollState()V

    #@58c
    .line 1195
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
    .line 1190
    :cond_18
    const-string/jumbo v4, "Receive EVENT_RUIM_READY and Send Request getCDMASubscription."

    #@5a4
    move-object/from16 v0, p0

    #@5a6
    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    #@5a9
    .line 1191
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getSubscriptionInfoAndStartPollingThreads()V

    #@5ac
    goto :goto_a

    #@5ad
    .line 1200
    :pswitch_1e
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ServiceStateTracker;->updatePhoneObject()V

    #@5b0
    .line 1203
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
    .line 1208
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getSubscriptionInfoAndStartPollingThreads()V

    #@5c6
    goto/16 :goto_0

    #@5c8
    .line 1212
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
    .line 1213
    move-object/from16 v0, p1

    #@5d4
    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@5d6
    check-cast v10, Landroid/os/AsyncResult;

    #@5d8
    .line 1215
    .restart local v10    # "ar":Landroid/os/AsyncResult;
    iget-object v4, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@5da
    if-nez v4, :cond_0

    #@5dc
    .line 1216
    iget-object v11, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@5de
    check-cast v11, [Ljava/lang/String;

    #@5e0
    .line 1217
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
    .line 1218
    const/4 v4, 0x0

    #@5ea
    aget-object v4, v11, v4

    #@5ec
    move-object/from16 v0, p0

    #@5ee
    iput-object v4, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mMdn:Ljava/lang/String;

    #@5f0
    .line 1219
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
    .line 1221
    const/4 v4, 0x3

    #@5ff
    aget-object v4, v11, v4

    #@601
    move-object/from16 v0, p0

    #@603
    iput-object v4, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mMin:Ljava/lang/String;

    #@605
    .line 1222
    const/4 v4, 0x4

    #@606
    aget-object v4, v11, v4

    #@608
    move-object/from16 v0, p0

    #@60a
    iput-object v4, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mPrlVersion:Ljava/lang/String;

    #@60c
    .line 1223
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
    .line 1225
    const/4 v4, 0x1

    #@630
    move-object/from16 v0, p0

    #@632
    iput-boolean v4, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mIsMinInfoReady:Z

    #@634
    .line 1227
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ServiceStateTracker;->updateOtaspState()V

    #@637
    .line 1229
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/ServiceStateTracker;->notifyCdmaSubscriptionInfoReady()V

    #@63a
    .line 1231
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
    .line 1233
    const-string/jumbo v4, "GET_CDMA_SUBSCRIPTION set imsi in mIccRecords"

    #@649
    move-object/from16 v0, p0

    #@64b
    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    #@64e
    .line 1235
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
    .line 1238
    :cond_19
    const-string/jumbo v4, "GET_CDMA_SUBSCRIPTION either mIccRecords is null or NV type device - not setting Imsi in mIccRecords"

    #@660
    move-object/from16 v0, p0

    #@662
    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    #@665
    goto/16 :goto_0

    #@667
    .line 1244
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
    .line 1245
    array-length v0, v11

    #@676
    move/from16 v29, v0

    #@678
    .line 1244
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
    .line 1253
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
    .line 1254
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
    .line 1255
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ServiceStateTracker;->updatePhoneObject()V

    #@6b9
    .line 1256
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
    .line 1257
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ServiceStateTracker;->updateSpnDisplay()V

    #@6c6
    goto/16 :goto_0

    #@6c8
    .line 1259
    :cond_1b
    move-object/from16 v0, p0

    #@6ca
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    #@6cc
    move-object/from16 v26, v0

    #@6ce
    check-cast v26, Lcom/android/internal/telephony/uicc/RuimRecords;

    #@6d0
    .line 1260
    .local v26, "ruim":Lcom/android/internal/telephony/uicc/RuimRecords;
    if-eqz v26, :cond_1d

    #@6d2
    .line 1261
    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/telephony/uicc/RuimRecords;->isProvisioned()Z

    #@6d5
    move-result v4

    #@6d6
    if-eqz v4, :cond_1c

    #@6d8
    .line 1262
    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/telephony/uicc/RuimRecords;->getMdn()Ljava/lang/String;

    #@6db
    move-result-object v4

    #@6dc
    move-object/from16 v0, p0

    #@6de
    iput-object v4, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mMdn:Ljava/lang/String;

    #@6e0
    .line 1263
    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/telephony/uicc/RuimRecords;->getMin()Ljava/lang/String;

    #@6e3
    move-result-object v4

    #@6e4
    move-object/from16 v0, p0

    #@6e6
    iput-object v4, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mMin:Ljava/lang/String;

    #@6e8
    .line 1264
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
    .line 1265
    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/telephony/uicc/RuimRecords;->getPrlVersion()Ljava/lang/String;

    #@6fa
    move-result-object v4

    #@6fb
    move-object/from16 v0, p0

    #@6fd
    iput-object v4, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mPrlVersion:Ljava/lang/String;

    #@6ff
    .line 1266
    const/4 v4, 0x1

    #@700
    move-object/from16 v0, p0

    #@702
    iput-boolean v4, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mIsMinInfoReady:Z

    #@704
    .line 1268
    :cond_1c
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ServiceStateTracker;->updateOtaspState()V

    #@707
    .line 1270
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/ServiceStateTracker;->notifyCdmaSubscriptionInfoReady()V

    #@70a
    .line 1275
    :cond_1d
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ServiceStateTracker;->pollState()V

    #@70d
    goto/16 :goto_0

    #@70f
    .line 1282
    .end local v26    # "ruim":Lcom/android/internal/telephony/uicc/RuimRecords;
    :pswitch_21
    const-string/jumbo v4, "ERI file has been loaded, repolling."

    #@712
    move-object/from16 v0, p0

    #@714
    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    #@717
    .line 1283
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ServiceStateTracker;->pollState()V

    #@71a
    goto/16 :goto_0

    #@71c
    .line 1287
    :pswitch_22
    move-object/from16 v0, p1

    #@71e
    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@720
    check-cast v10, Landroid/os/AsyncResult;

    #@722
    .line 1288
    .restart local v10    # "ar":Landroid/os/AsyncResult;
    iget-object v4, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@724
    if-nez v4, :cond_0

    #@726
    .line 1289
    iget-object v15, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@728
    check-cast v15, [I

    #@72a
    .line 1290
    .restart local v15    # "ints":[I
    const/4 v4, 0x0

    #@72b
    aget v23, v15, v4

    #@72d
    .line 1291
    .local v23, "otaStatus":I
    const/16 v4, 0x8

    #@72f
    move/from16 v0, v23

    #@731
    if-eq v0, v4, :cond_1e

    #@733
    .line 1292
    const/16 v4, 0xa

    #@735
    move/from16 v0, v23

    #@737
    if-ne v0, v4, :cond_0

    #@739
    .line 1293
    :cond_1e
    const-string/jumbo v4, "EVENT_OTA_PROVISION_STATUS_CHANGE: Complete, Reload MDN"

    #@73c
    move-object/from16 v0, p0

    #@73e
    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    #@741
    .line 1294
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
    .line 1300
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
    .line 1301
    .restart local v10    # "ar":Landroid/os/AsyncResult;
    iget-object v4, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@75e
    if-nez v4, :cond_0

    #@760
    .line 1302
    iget-object v15, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@762
    check-cast v15, [I

    #@764
    .line 1303
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
    .line 844
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
    .line 1459
    iget-object v7, p2, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    #@5
    iget-object v8, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPollingContext:[I

    #@7
    if-eq v7, v8, :cond_0

    #@9
    return-void

    #@a
    .line 1461
    :cond_0
    iget-object v7, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@c
    if-eqz v7, :cond_5

    #@e
    .line 1462
    const/4 v1, 0x0

    #@f
    .line 1464
    .local v1, "err":Lcom/android/internal/telephony/CommandException$Error;
    iget-object v7, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@11
    instance-of v7, v7, Lcom/android/internal/telephony/CommandException;

    #@13
    if-eqz v7, :cond_1

    #@15
    .line 1465
    iget-object v7, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@17
    check-cast v7, Lcom/android/internal/telephony/CommandException;

    #@19
    invoke-virtual {v7}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    #@1c
    move-result-object v1

    #@1d
    .line 1468
    .end local v1    # "err":Lcom/android/internal/telephony/CommandException$Error;
    :cond_1
    sget-object v7, Lcom/android/internal/telephony/CommandException$Error;->RADIO_NOT_AVAILABLE:Lcom/android/internal/telephony/CommandException$Error;

    #@1f
    if-ne v1, v7, :cond_2

    #@21
    .line 1470
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->cancelPollState()V

    #@24
    .line 1471
    return-void

    #@25
    .line 1474
    :cond_2
    sget-object v7, Lcom/android/internal/telephony/CommandException$Error;->OP_NOT_ALLOWED_BEFORE_REG_NW:Lcom/android/internal/telephony/CommandException$Error;

    #@27
    if-eq v1, v7, :cond_3

    #@29
    .line 1475
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
    .line 1476
    iget-object v8, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@37
    .line 1475
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
    .line 1484
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
    .line 1486
    iget-object v7, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPollingContext:[I

    #@4c
    aget v7, v7, v9

    #@4e
    if-nez v7, :cond_4

    #@50
    .line 1487
    iget-object v7, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@52
    invoke-virtual {v7}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    #@55
    move-result v7

    #@56
    if-eqz v7, :cond_6

    #@58
    .line 1488
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->updateRoamingState()V

    #@5b
    .line 1489
    iget-object v7, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@5d
    iget-boolean v8, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mEmergencyOnly:Z

    #@5f
    invoke-virtual {v7, v8}, Landroid/telephony/ServiceState;->setEmergencyOnly(Z)V

    #@62
    .line 1565
    :goto_1
    invoke-direct {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->pollStateDone()V

    #@65
    .line 1457
    :cond_4
    return-void

    #@66
    .line 1479
    :cond_5
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/ServiceStateTracker;->handlePollStateResultMessage(ILandroid/os/AsyncResult;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    #@69
    goto :goto_0

    #@6a
    .line 1480
    :catch_0
    move-exception v2

    #@6b
    .line 1481
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
    .line 1491
    .end local v2    # "ex":Ljava/lang/RuntimeException;
    :cond_6
    const/4 v5, 0x0

    #@84
    .line 1492
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
    .line 1493
    const/4 v5, 0x1

    #@97
    .line 1497
    :cond_7
    iget-boolean v7, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIsSubscriptionFromRuim:Z

    #@99
    if-eqz v7, :cond_8

    #@9b
    .line 1498
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
    .line 1502
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
    .line 1503
    .local v4, "isVoiceInService":Z
    :goto_2
    iget-object v7, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@b7
    invoke-virtual {v7}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    #@ba
    move-result v0

    #@bb
    .line 1504
    .local v0, "dataRegType":I
    if-eqz v4, :cond_9

    #@bd
    invoke-static {v0}, Landroid/telephony/ServiceState;->isCdma(I)Z

    #@c0
    move-result v7

    #@c1
    if-eqz v7, :cond_9

    #@c3
    .line 1505
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
    .line 1509
    :cond_9
    iget-object v7, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@d0
    iget v8, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDefaultRoamingIndicator:I

    #@d2
    invoke-virtual {v7, v8}, Landroid/telephony/ServiceState;->setCdmaDefaultRoamingIndicator(I)V

    #@d5
    .line 1510
    iget-object v7, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@d7
    iget v8, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRoamingIndicator:I

    #@d9
    invoke-virtual {v7, v8}, Landroid/telephony/ServiceState;->setCdmaRoamingIndicator(I)V

    #@dc
    .line 1511
    const/4 v3, 0x1

    #@dd
    .line 1512
    .local v3, "isPrlLoaded":Z
    iget-object v7, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPrlVersion:Ljava/lang/String;

    #@df
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@e2
    move-result v7

    #@e3
    if-eqz v7, :cond_a

    #@e5
    .line 1513
    const/4 v3, 0x0

    #@e6
    .line 1515
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
    .line 1517
    :cond_b
    const-string/jumbo v7, "Turn off roaming indicator if !isPrlLoaded or voice RAT is unknown"

    #@f3
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    #@f6
    .line 1518
    iget-object v7, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@f8
    invoke-virtual {v7, v10}, Landroid/telephony/ServiceState;->setCdmaRoamingIndicator(I)V

    #@fb
    .line 1546
    :cond_c
    :goto_3
    iget-object v7, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@fd
    invoke-virtual {v7}, Landroid/telephony/ServiceState;->getCdmaRoamingIndicator()I

    #@100
    move-result v6

    #@101
    .line 1547
    .local v6, "roamingIndicator":I
    iget-object v7, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@103
    iget-object v8, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@105
    iget-object v8, v8, Lcom/android/internal/telephony/GsmCdmaPhone;->mEriManager:Lcom/android/internal/telephony/cdma/EriManager;

    #@107
    .line 1548
    iget v9, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDefaultRoamingIndicator:I

    #@109
    .line 1547
    invoke-virtual {v8, v6, v9}, Lcom/android/internal/telephony/cdma/EriManager;->getCdmaEriIconIndex(II)I

    #@10c
    move-result v8

    #@10d
    invoke-virtual {v7, v8}, Landroid/telephony/ServiceState;->setCdmaEriIconIndex(I)V

    #@110
    .line 1549
    iget-object v7, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@112
    iget-object v8, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@114
    iget-object v8, v8, Lcom/android/internal/telephony/GsmCdmaPhone;->mEriManager:Lcom/android/internal/telephony/cdma/EriManager;

    #@116
    .line 1550
    iget v9, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDefaultRoamingIndicator:I

    #@118
    .line 1549
    invoke-virtual {v8, v6, v9}, Lcom/android/internal/telephony/cdma/EriManager;->getCdmaEriIconMode(II)I

    #@11b
    move-result v8

    #@11c
    invoke-virtual {v7, v8}, Landroid/telephony/ServiceState;->setCdmaEriIconMode(I)V

    #@11f
    .line 1556
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
    .line 1557
    const-string/jumbo v8, ". voiceRoaming = "

    #@138
    .line 1556
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13b
    move-result-object v7

    #@13c
    .line 1557
    iget-object v8, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@13e
    invoke-virtual {v8}, Landroid/telephony/ServiceState;->getVoiceRoaming()Z

    #@141
    move-result v8

    #@142
    .line 1556
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@145
    move-result-object v7

    #@146
    .line 1558
    const-string/jumbo v8, ". dataRoaming = "

    #@149
    .line 1556
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14c
    move-result-object v7

    #@14d
    .line 1558
    iget-object v8, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@14f
    invoke-virtual {v8}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    #@152
    move-result v8

    #@153
    .line 1556
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@156
    move-result-object v7

    #@157
    .line 1559
    const-string/jumbo v8, ", isPrlLoaded = "

    #@15a
    .line 1556
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15d
    move-result-object v7

    #@15e
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@161
    move-result-object v7

    #@162
    .line 1560
    const-string/jumbo v8, ". namMatch = "

    #@165
    .line 1556
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@168
    move-result-object v7

    #@169
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@16c
    move-result-object v7

    #@16d
    .line 1560
    const-string/jumbo v8, " , mIsInPrl = "

    #@170
    .line 1556
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@173
    move-result-object v7

    #@174
    .line 1560
    iget-boolean v8, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIsInPrl:Z

    #@176
    .line 1556
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@179
    move-result-object v7

    #@17a
    .line 1561
    const-string/jumbo v8, ", mRoamingIndicator = "

    #@17d
    .line 1556
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@180
    move-result-object v7

    #@181
    .line 1561
    iget v8, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRoamingIndicator:I

    #@183
    .line 1556
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@186
    move-result-object v7

    #@187
    .line 1562
    const-string/jumbo v8, ", mDefaultRoamingIndicator= "

    #@18a
    .line 1556
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18d
    move-result-object v7

    #@18e
    .line 1562
    iget v8, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDefaultRoamingIndicator:I

    #@190
    .line 1556
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
    .line 1502
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
    .line 1519
    .restart local v0    # "dataRegType":I
    .restart local v3    # "isPrlLoaded":Z
    :cond_e
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->isSidsAllZeros()Z

    #@1a3
    move-result v7

    #@1a4
    if-nez v7, :cond_c

    #@1a6
    .line 1520
    if-nez v5, :cond_f

    #@1a8
    iget-boolean v7, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIsInPrl:Z

    #@1aa
    if-eqz v7, :cond_11

    #@1ac
    .line 1523
    :cond_f
    if-eqz v5, :cond_10

    #@1ae
    iget-boolean v7, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIsInPrl:Z

    #@1b0
    if-eqz v7, :cond_12

    #@1b2
    .line 1532
    :cond_10
    if-nez v5, :cond_14

    #@1b4
    iget-boolean v7, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIsInPrl:Z

    #@1b6
    if-eqz v7, :cond_14

    #@1b8
    .line 1534
    iget-object v7, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@1ba
    iget v8, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRoamingIndicator:I

    #@1bc
    invoke-virtual {v7, v8}, Landroid/telephony/ServiceState;->setCdmaRoamingIndicator(I)V

    #@1bf
    goto/16 :goto_3

    #@1c1
    .line 1522
    :cond_11
    iget-object v7, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@1c3
    iget v8, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDefaultRoamingIndicator:I

    #@1c5
    invoke-virtual {v7, v8}, Landroid/telephony/ServiceState;->setCdmaRoamingIndicator(I)V

    #@1c8
    goto/16 :goto_3

    #@1ca
    .line 1525
    :cond_12
    iget-object v7, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@1cc
    invoke-virtual {v7}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    #@1cf
    move-result v7

    #@1d0
    .line 1526
    const/16 v8, 0xe

    #@1d2
    .line 1525
    if-ne v7, v8, :cond_13

    #@1d4
    .line 1527
    const-string/jumbo v7, "Turn off roaming indicator as voice is LTE"

    #@1d7
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    #@1da
    .line 1528
    iget-object v7, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@1dc
    invoke-virtual {v7, v10}, Landroid/telephony/ServiceState;->setCdmaRoamingIndicator(I)V

    #@1df
    goto/16 :goto_3

    #@1e1
    .line 1530
    :cond_13
    iget-object v7, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@1e3
    invoke-virtual {v7, v11}, Landroid/telephony/ServiceState;->setCdmaRoamingIndicator(I)V

    #@1e6
    goto/16 :goto_3

    #@1e8
    .line 1537
    :cond_14
    iget v7, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRoamingIndicator:I

    #@1ea
    if-gt v7, v11, :cond_15

    #@1ec
    .line 1538
    iget-object v7, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@1ee
    invoke-virtual {v7, v10}, Landroid/telephony/ServiceState;->setCdmaRoamingIndicator(I)V

    #@1f1
    goto/16 :goto_3

    #@1f3
    .line 1541
    :cond_15
    iget-object v7, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@1f5
    iget v8, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRoamingIndicator:I

    #@1f7
    invoke-virtual {v7, v8}, Landroid/telephony/ServiceState;->setCdmaRoamingIndicator(I)V

    #@1fa
    goto/16 :goto_3
.end method

.method handlePollStateResultMessage(ILandroid/os/AsyncResult;)V
    .locals 36
    .param p1, "what"    # I
    .param p2, "ar"    # Landroid/os/AsyncResult;

    #@0
    .prologue
    .line 1583
    sparse-switch p1, :sswitch_data_0

    #@3
    .line 1937
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
    .line 1580
    :cond_0
    :goto_0
    return-void

    #@21
    .line 1585
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
    .line 1586
    move-object/from16 v0, p2

    #@2d
    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@2f
    move-object/from16 v30, v0

    #@31
    check-cast v30, [Ljava/lang/String;

    #@33
    .line 1587
    .local v30, "states":[Ljava/lang/String;
    const/16 v19, -0x1

    #@35
    .line 1588
    .local v19, "lac":I
    const/4 v11, -0x1

    #@36
    .line 1589
    .local v11, "cid":I
    const/16 v32, 0x0

    #@38
    .line 1590
    .local v32, "type":I
    const/16 v27, 0x4

    #@3a
    .line 1591
    .local v27, "regState":I
    const/16 v26, -0x1

    #@3c
    .line 1592
    .local v26, "reasonRegStateDenied":I
    const/16 v23, -0x1

    #@3e
    .line 1593
    .local v23, "psc":I
    move-object/from16 v0, v30

    #@40
    array-length v3, v0

    #@41
    if-lez v3, :cond_4

    #@43
    .line 1595
    const/4 v3, 0x0

    #@44
    :try_start_0
    aget-object v3, v30, v3

    #@46
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@49
    move-result v27

    #@4a
    .line 1596
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
    .line 1597
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
    .line 1598
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
    .line 1600
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
    .line 1601
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
    .line 1605
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
    .line 1606
    const/4 v3, 0x3

    #@94
    aget-object v3, v30, v3

    #@96
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@99
    move-result v32

    #@9a
    .line 1609
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
    .line 1610
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
    .line 1611
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
    .line 1619
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
    .line 1620
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
    .line 1621
    move-object/from16 v0, p0

    #@de
    iget-object v3, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@e0
    move/from16 v0, v32

    #@e2
    invoke-virtual {v3, v0}, Landroid/telephony/ServiceState;->setRilVoiceRadioTechnology(I)V

    #@e5
    .line 1623
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
    .line 1624
    const v33, 0x1120059

    #@f4
    .line 1623
    move/from16 v0, v33

    #@f6
    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@f9
    move-result v18

    #@fa
    .line 1625
    .local v18, "isVoiceCapable":Z
    const/16 v3, 0xd

    #@fc
    move/from16 v0, v27

    #@fe
    if-eq v0, v3, :cond_5

    #@100
    .line 1626
    const/16 v3, 0xa

    #@102
    move/from16 v0, v27

    #@104
    if-ne v0, v3, :cond_6

    #@106
    .line 1625
    :cond_5
    if-eqz v18, :cond_7

    #@108
    .line 1630
    const/4 v3, 0x1

    #@109
    move-object/from16 v0, p0

    #@10b
    iput-boolean v3, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mEmergencyOnly:Z

    #@10d
    .line 1636
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
    .line 1637
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
    .line 1614
    .end local v18    # "isVoiceCapable":Z
    :catch_0
    move-exception v16

    #@126
    .line 1615
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
    .line 1627
    .end local v16    # "ex":Ljava/lang/NumberFormatException;
    .restart local v18    # "isVoiceCapable":Z
    :cond_6
    const/16 v3, 0xc

    #@147
    move/from16 v0, v27

    #@149
    if-eq v0, v3, :cond_5

    #@14b
    .line 1628
    const/16 v3, 0xe

    #@14d
    move/from16 v0, v27

    #@14f
    if-eq v0, v3, :cond_5

    #@151
    .line 1632
    :cond_7
    const/4 v3, 0x0

    #@152
    move-object/from16 v0, p0

    #@154
    iput-boolean v3, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mEmergencyOnly:Z

    #@156
    goto :goto_2

    #@157
    .line 1639
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
    .line 1641
    .restart local v30    # "states":[Ljava/lang/String;
    const/16 v28, 0x4

    #@161
    .line 1642
    .local v28, "registrationState":I
    const/16 v24, -0x1

    #@163
    .line 1643
    .local v24, "radioTechnology":I
    const/4 v4, -0x1

    #@164
    .line 1645
    .local v4, "baseStationId":I
    const v5, 0x7fffffff

    #@167
    .line 1647
    .local v5, "baseStationLatitude":I
    const v6, 0x7fffffff

    #@16a
    .line 1648
    .local v6, "baseStationLongitude":I
    const/4 v12, 0x0

    #@16b
    .line 1649
    .local v12, "cssIndicator":I
    const/4 v7, 0x0

    #@16c
    .line 1650
    .local v7, "systemId":I
    const/4 v8, 0x0

    #@16d
    .line 1651
    .local v8, "networkId":I
    const/16 v29, -0x1

    #@16f
    .line 1652
    .local v29, "roamingIndicator":I
    const/16 v31, 0x0

    #@171
    .line 1653
    .local v31, "systemIsInPrl":I
    const/4 v15, 0x0

    #@172
    .line 1654
    .local v15, "defaultRoamingIndicator":I
    const/16 v25, 0x0

    #@174
    .line 1656
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
    .line 1658
    const/4 v3, 0x0

    #@17e
    :try_start_1
    aget-object v3, v30, v3

    #@180
    if-eqz v3, :cond_9

    #@182
    .line 1659
    const/4 v3, 0x0

    #@183
    aget-object v3, v30, v3

    #@185
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@188
    move-result v28

    #@189
    .line 1661
    :cond_9
    const/4 v3, 0x3

    #@18a
    aget-object v3, v30, v3

    #@18c
    if-eqz v3, :cond_a

    #@18e
    .line 1662
    const/4 v3, 0x3

    #@18f
    aget-object v3, v30, v3

    #@191
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@194
    move-result v24

    #@195
    .line 1664
    :cond_a
    const/4 v3, 0x4

    #@196
    aget-object v3, v30, v3

    #@198
    if-eqz v3, :cond_b

    #@19a
    .line 1665
    const/4 v3, 0x4

    #@19b
    aget-object v3, v30, v3

    #@19d
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@1a0
    move-result v4

    #@1a1
    .line 1667
    :cond_b
    const/4 v3, 0x5

    #@1a2
    aget-object v3, v30, v3

    #@1a4
    if-eqz v3, :cond_c

    #@1a6
    .line 1668
    const/4 v3, 0x5

    #@1a7
    aget-object v3, v30, v3

    #@1a9
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@1ac
    move-result v5

    #@1ad
    .line 1670
    :cond_c
    const/4 v3, 0x6

    #@1ae
    aget-object v3, v30, v3

    #@1b0
    if-eqz v3, :cond_d

    #@1b2
    .line 1671
    const/4 v3, 0x6

    #@1b3
    aget-object v3, v30, v3

    #@1b5
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@1b8
    move-result v6

    #@1b9
    .line 1674
    :cond_d
    if-nez v5, :cond_e

    #@1bb
    if-nez v6, :cond_e

    #@1bd
    .line 1675
    const v5, 0x7fffffff

    #@1c0
    .line 1676
    const v6, 0x7fffffff

    #@1c3
    .line 1678
    :cond_e
    const/4 v3, 0x7

    #@1c4
    aget-object v3, v30, v3

    #@1c6
    if-eqz v3, :cond_f

    #@1c8
    .line 1679
    const/4 v3, 0x7

    #@1c9
    aget-object v3, v30, v3

    #@1cb
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@1ce
    move-result v12

    #@1cf
    .line 1681
    :cond_f
    const/16 v3, 0x8

    #@1d1
    aget-object v3, v30, v3

    #@1d3
    if-eqz v3, :cond_10

    #@1d5
    .line 1682
    const/16 v3, 0x8

    #@1d7
    aget-object v3, v30, v3

    #@1d9
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@1dc
    move-result v7

    #@1dd
    .line 1684
    :cond_10
    const/16 v3, 0x9

    #@1df
    aget-object v3, v30, v3

    #@1e1
    if-eqz v3, :cond_11

    #@1e3
    .line 1685
    const/16 v3, 0x9

    #@1e5
    aget-object v3, v30, v3

    #@1e7
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@1ea
    move-result v8

    #@1eb
    .line 1687
    :cond_11
    const/16 v3, 0xa

    #@1ed
    aget-object v3, v30, v3

    #@1ef
    if-eqz v3, :cond_12

    #@1f1
    .line 1688
    const/16 v3, 0xa

    #@1f3
    aget-object v3, v30, v3

    #@1f5
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@1f8
    move-result v29

    #@1f9
    .line 1690
    :cond_12
    const/16 v3, 0xb

    #@1fb
    aget-object v3, v30, v3

    #@1fd
    if-eqz v3, :cond_13

    #@1ff
    .line 1691
    const/16 v3, 0xb

    #@201
    aget-object v3, v30, v3

    #@203
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@206
    move-result v31

    #@207
    .line 1693
    :cond_13
    const/16 v3, 0xc

    #@209
    aget-object v3, v30, v3

    #@20b
    if-eqz v3, :cond_14

    #@20d
    .line 1694
    const/16 v3, 0xc

    #@20f
    aget-object v3, v30, v3

    #@211
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@214
    move-result v15

    #@215
    .line 1696
    :cond_14
    const/16 v3, 0xd

    #@217
    aget-object v3, v30, v3

    #@219
    if-eqz v3, :cond_15

    #@21b
    .line 1697
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
    .line 1708
    :cond_15
    :goto_3
    move/from16 v0, v28

    #@225
    move-object/from16 v1, p0

    #@227
    iput v0, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mRegistrationState:I

    #@229
    .line 1713
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
    .line 1714
    .local v10, "cdmaRoaming":Z
    :goto_4
    move-object/from16 v0, p0

    #@242
    iget-object v3, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@244
    invoke-virtual {v3, v10}, Landroid/telephony/ServiceState;->setVoiceRoaming(Z)V

    #@247
    .line 1715
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
    .line 1717
    move-object/from16 v0, p0

    #@25a
    iget-object v3, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@25c
    move/from16 v0, v24

    #@25e
    invoke-virtual {v3, v0}, Landroid/telephony/ServiceState;->setRilVoiceRadioTechnology(I)V

    #@261
    .line 1719
    move-object/from16 v0, p0

    #@263
    iget-object v3, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@265
    invoke-virtual {v3, v12}, Landroid/telephony/ServiceState;->setCssIndicator(I)V

    #@268
    .line 1720
    move-object/from16 v0, p0

    #@26a
    iget-object v3, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@26c
    invoke-virtual {v3, v7, v8}, Landroid/telephony/ServiceState;->setSystemAndNetworkId(II)V

    #@26f
    .line 1721
    move/from16 v0, v29

    #@271
    move-object/from16 v1, p0

    #@273
    iput v0, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mRoamingIndicator:I

    #@275
    .line 1722
    if-nez v31, :cond_19

    #@277
    const/4 v3, 0x0

    #@278
    :goto_5
    move-object/from16 v0, p0

    #@27a
    iput-boolean v3, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mIsInPrl:Z

    #@27c
    .line 1723
    move-object/from16 v0, p0

    #@27e
    iput v15, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mDefaultRoamingIndicator:I

    #@280
    .line 1727
    move-object/from16 v0, p0

    #@282
    iget-object v3, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewCellLoc:Landroid/telephony/CellLocation;

    #@284
    check-cast v3, Landroid/telephony/cdma/CdmaCellLocation;

    #@286
    invoke-virtual/range {v3 .. v8}, Landroid/telephony/cdma/CdmaCellLocation;->setCellLocationData(IIIII)V

    #@289
    .line 1730
    if-nez v25, :cond_1a

    #@28b
    .line 1731
    const-string/jumbo v3, "General"

    #@28e
    move-object/from16 v0, p0

    #@290
    iput-object v3, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mRegistrationDeniedReason:Ljava/lang/String;

    #@292
    .line 1738
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
    .line 1739
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
    .line 1699
    .end local v10    # "cdmaRoaming":Z
    :catch_1
    move-exception v16

    #@2c2
    .line 1700
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
    .line 1703
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
    .line 1705
    move-object/from16 v0, v30

    #@2f1
    array-length v0, v0

    #@2f2
    move/from16 v34, v0

    #@2f4
    .line 1703
    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2f7
    move-result-object v33

    #@2f8
    .line 1705
    const-string/jumbo v34, " strings"

    #@2fb
    .line 1703
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
    .line 1713
    :cond_18
    const/4 v10, 0x1

    #@30a
    .restart local v10    # "cdmaRoaming":Z
    goto/16 :goto_4

    #@30c
    .line 1722
    :cond_19
    const/4 v3, 0x1

    #@30d
    goto/16 :goto_5

    #@30f
    .line 1732
    :cond_1a
    const/4 v3, 0x1

    #@310
    move/from16 v0, v25

    #@312
    if-ne v0, v3, :cond_1b

    #@314
    .line 1733
    const-string/jumbo v3, "Authentication Failure"

    #@317
    move-object/from16 v0, p0

    #@319
    iput-object v3, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mRegistrationDeniedReason:Ljava/lang/String;

    #@31b
    goto/16 :goto_6

    #@31d
    .line 1735
    :cond_1b
    const-string/jumbo v3, ""

    #@320
    move-object/from16 v0, p0

    #@322
    iput-object v3, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mRegistrationDeniedReason:Ljava/lang/String;

    #@324
    goto/16 :goto_6

    #@326
    .line 1746
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
    .line 1747
    move-object/from16 v0, p2

    #@332
    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@334
    move-object/from16 v30, v0

    #@336
    check-cast v30, [Ljava/lang/String;

    #@338
    .line 1749
    .restart local v30    # "states":[Ljava/lang/String;
    const/16 v32, 0x0

    #@33a
    .line 1750
    .restart local v32    # "type":I
    const/16 v27, 0x4

    #@33c
    .line 1751
    .restart local v27    # "regState":I
    const/4 v3, -0x1

    #@33d
    move-object/from16 v0, p0

    #@33f
    iput v3, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewReasonDataDenied:I

    #@341
    .line 1752
    const/4 v3, 0x1

    #@342
    move-object/from16 v0, p0

    #@344
    iput v3, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewMaxDataCalls:I

    #@346
    .line 1753
    move-object/from16 v0, v30

    #@348
    array-length v3, v0

    #@349
    if-lez v3, :cond_1e

    #@34b
    .line 1755
    const/4 v3, 0x0

    #@34c
    :try_start_2
    aget-object v3, v30, v3

    #@34e
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@351
    move-result v27

    #@352
    .line 1758
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
    .line 1759
    const/4 v3, 0x3

    #@361
    aget-object v3, v30, v3

    #@363
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@366
    move-result v32

    #@367
    .line 1761
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
    .line 1762
    const/4 v3, 0x3

    #@371
    move/from16 v0, v27

    #@373
    if-ne v0, v3, :cond_1d

    #@375
    .line 1763
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
    .line 1765
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
    .line 1766
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
    .line 1772
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
    .line 1773
    .local v14, "dataRegState":I
    move-object/from16 v0, p0

    #@39e
    iget-object v3, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@3a0
    invoke-virtual {v3, v14}, Landroid/telephony/ServiceState;->setDataRegState(I)V

    #@3a3
    .line 1774
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
    .line 1775
    move-object/from16 v0, p0

    #@3b1
    iget-object v3, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@3b3
    move/from16 v0, v32

    #@3b5
    invoke-virtual {v3, v0}, Landroid/telephony/ServiceState;->setRilDataRadioTechnology(I)V

    #@3b8
    .line 1777
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
    .line 1778
    const-string/jumbo v33, " regState="

    #@3cd
    .line 1777
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
    .line 1779
    const-string/jumbo v33, " dataRadioTechnology="

    #@3dc
    .line 1777
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
    .line 1768
    .end local v14    # "dataRegState":I
    :catch_2
    move-exception v16

    #@3f4
    .line 1769
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
    .line 1781
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
    .line 1782
    move-object/from16 v0, p2

    #@41e
    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@420
    move-object/from16 v30, v0

    #@422
    check-cast v30, [Ljava/lang/String;

    #@424
    .line 1784
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
    .line 1785
    move-object/from16 v0, v30

    #@434
    array-length v0, v0

    #@435
    move/from16 v33, v0

    #@437
    .line 1784
    move/from16 v0, v33

    #@439
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@43c
    move-result-object v3

    #@43d
    .line 1785
    const-string/jumbo v33, " states="

    #@440
    .line 1784
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
    .line 1788
    const/16 v27, 0x4

    #@457
    .line 1789
    .restart local v27    # "regState":I
    const/4 v13, 0x0

    #@458
    .line 1791
    .local v13, "dataRadioTechnology":I
    move-object/from16 v0, v30

    #@45a
    array-length v3, v0

    #@45b
    if-lez v3, :cond_20

    #@45d
    .line 1793
    const/4 v3, 0x0

    #@45e
    :try_start_3
    aget-object v3, v30, v3

    #@460
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@463
    move-result v27

    #@464
    .line 1796
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
    .line 1797
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
    .line 1805
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
    .line 1806
    .restart local v14    # "dataRegState":I
    move-object/from16 v0, p0

    #@483
    iget-object v3, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@485
    invoke-virtual {v3, v14}, Landroid/telephony/ServiceState;->setDataRegState(I)V

    #@488
    .line 1807
    move-object/from16 v0, p0

    #@48a
    iget-object v3, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@48c
    invoke-virtual {v3, v13}, Landroid/telephony/ServiceState;->setRilDataRadioTechnology(I)V

    #@48f
    .line 1808
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
    .line 1810
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
    .line 1811
    const-string/jumbo v33, " regState="

    #@4b5
    .line 1810
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
    .line 1812
    const-string/jumbo v33, " dataRadioTechnology="

    #@4c4
    .line 1810
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
    .line 1799
    .end local v14    # "dataRegState":I
    :catch_3
    move-exception v16

    #@4da
    .line 1800
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
    .line 1815
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
    .line 1817
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
    .line 1818
    move-object/from16 v0, v30

    #@510
    array-length v0, v0

    #@511
    move/from16 v33, v0

    #@513
    .line 1817
    move/from16 v0, v33

    #@515
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@518
    move-result-object v3

    #@519
    .line 1818
    const-string/jumbo v33, " states="

    #@51c
    .line 1817
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
    .line 1821
    const/16 v20, 0x0

    #@533
    .line 1822
    .local v20, "newDataRAT":I
    const/16 v27, -0x1

    #@535
    .line 1823
    .restart local v27    # "regState":I
    move-object/from16 v0, v30

    #@537
    array-length v3, v0

    #@538
    if-lez v3, :cond_22

    #@53a
    .line 1825
    const/4 v3, 0x0

    #@53b
    :try_start_4
    aget-object v3, v30, v3

    #@53d
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@540
    move-result v27

    #@541
    .line 1828
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
    .line 1829
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
    .line 1844
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
    .line 1845
    .local v21, "oldDataRAT":I
    if-nez v21, :cond_25

    #@560
    .line 1846
    if-eqz v20, :cond_25

    #@562
    .line 1851
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
    .line 1854
    :cond_24
    move-object/from16 v0, p0

    #@577
    iget-object v3, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@579
    move/from16 v0, v20

    #@57b
    invoke-virtual {v3, v0}, Landroid/telephony/ServiceState;->setRilDataRadioTechnology(I)V

    #@57e
    .line 1855
    move-object/from16 v0, p0

    #@580
    move/from16 v1, v27

    #@582
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->regCodeToServiceState(I)I

    #@585
    move-result v14

    #@586
    .line 1856
    .restart local v14    # "dataRegState":I
    move-object/from16 v0, p0

    #@588
    iget-object v3, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@58a
    invoke-virtual {v3, v14}, Landroid/telephony/ServiceState;->setDataRegState(I)V

    #@58d
    .line 1858
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
    .line 1860
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
    .line 1861
    const-string/jumbo v33, " regState="

    #@5b3
    .line 1860
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
    .line 1862
    const-string/jumbo v33, " dataRadioTechnology="

    #@5c2
    .line 1860
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
    .line 1831
    .end local v14    # "dataRegState":I
    .end local v21    # "oldDataRAT":I
    :catch_4
    move-exception v16

    #@5da
    .line 1832
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
    .line 1847
    .end local v16    # "ex":Ljava/lang/NumberFormatException;
    .restart local v21    # "oldDataRAT":I
    :cond_25
    invoke-static/range {v21 .. v21}, Landroid/telephony/ServiceState;->isCdma(I)Z

    #@5fc
    move-result v3

    #@5fd
    if-eqz v3, :cond_26

    #@5ff
    .line 1848
    const/16 v3, 0xe

    #@601
    move/from16 v0, v20

    #@603
    if-eq v0, v3, :cond_23

    #@605
    .line 1849
    :cond_26
    const/16 v3, 0xe

    #@607
    move/from16 v0, v21

    #@609
    if-ne v0, v3, :cond_24

    #@60b
    .line 1850
    invoke-static/range {v20 .. v20}, Landroid/telephony/ServiceState;->isCdma(I)Z

    #@60e
    move-result v3

    #@60f
    .line 1845
    if-eqz v3, :cond_24

    #@611
    goto/16 :goto_a

    #@613
    .line 1869
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
    .line 1870
    move-object/from16 v0, p2

    #@61f
    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@621
    move-object/from16 v22, v0

    #@623
    check-cast v22, [Ljava/lang/String;

    #@625
    .line 1872
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
    .line 1874
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
    .line 1875
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
    .line 1876
    .local v9, "brandOverride":Ljava/lang/String;
    :goto_b
    if-eqz v9, :cond_28

    #@654
    .line 1877
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
    .line 1878
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
    .line 1875
    .end local v9    # "brandOverride":Ljava/lang/String;
    :cond_27
    const/4 v9, 0x0

    #@67f
    goto :goto_b

    #@680
    .line 1880
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
    .line 1884
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
    .line 1886
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
    .line 1889
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
    .line 1892
    :cond_2a
    :goto_c
    const-string/jumbo v3, "ro.cdma.home.operator.numeric"

    #@6c3
    const-string/jumbo v33, "00000"

    #@6c6
    .line 1891
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
    .line 1894
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
    .line 1897
    const/16 v33, 0x2

    #@6e0
    aget-object v33, v22, v33

    #@6e2
    .line 1894
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
    .line 1901
    :cond_2b
    move-object/from16 v0, p0

    #@6f3
    iget-boolean v3, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mIsSubscriptionFromRuim:Z

    #@6f5
    if-nez v3, :cond_2d

    #@6f7
    .line 1903
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
    .line 1890
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
    .line 1889
    if-eqz v3, :cond_2b

    #@721
    goto :goto_c

    #@722
    .line 1905
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
    .line 1906
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
    .line 1907
    .restart local v9    # "brandOverride":Ljava/lang/String;
    :goto_d
    if-eqz v9, :cond_2f

    #@746
    .line 1908
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
    .line 1906
    .end local v9    # "brandOverride":Ljava/lang/String;
    :cond_2e
    const/4 v9, 0x0

    #@756
    goto :goto_d

    #@757
    .line 1910
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
    .line 1914
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
    .line 1921
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
    .line 1922
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
    .line 1923
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
    .line 1929
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
    .line 1930
    const-string/jumbo v3, " Forcing Automatic Network Selection, manual selection is not allowed"

    #@7ba
    move-object/from16 v0, p0

    #@7bc
    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    #@7bf
    goto/16 :goto_0

    #@7c1
    .line 1922
    :cond_31
    const/4 v3, 0x0

    #@7c2
    goto :goto_e

    #@7c3
    .line 1583
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
    .line 4328
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
    .line 4329
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@12
    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCT:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    #@14
    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/GsmCdmaCall;

    #@16
    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaCall;->hangupIfAlive()V

    #@19
    .line 4330
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@1b
    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCT:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    #@1d
    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    #@1f
    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaCall;->hangupIfAlive()V

    #@22
    .line 4331
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@24
    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCT:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    #@26
    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    #@28
    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaCall;->hangupIfAlive()V

    #@2b
    .line 4334
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@2d
    const/4 v1, 0x0

    #@2e
    const/4 v2, 0x0

    #@2f
    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setRadioPower(ZLandroid/os/Message;)V

    #@32
    .line 4326
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
    .line 4619
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
    .line 4621
    :cond_0
    return v7

    #@10
    .line 4623
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getHomeOperatorNumeric()Ljava/lang/String;

    #@13
    move-result-object v2

    #@14
    .line 4624
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
    .line 4626
    :cond_2
    return v7

    #@21
    .line 4628
    :cond_3
    const/4 v3, 0x1

    #@22
    .line 4629
    .local v3, "inSameCountry":Z
    invoke-virtual {p1, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@25
    move-result-object v5

    #@26
    .line 4630
    .local v5, "networkMCC":Ljava/lang/String;
    invoke-virtual {v2, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@29
    move-result-object v1

    #@2a
    .line 4631
    .local v1, "homeMCC":Ljava/lang/String;
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@2d
    move-result v6

    #@2e
    invoke-static {v6}, Lcom/android/internal/telephony/MccTable;->countryCodeForMcc(I)Ljava/lang/String;

    #@31
    move-result-object v4

    #@32
    .line 4632
    .local v4, "networkCountry":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@35
    move-result v6

    #@36
    invoke-static {v6}, Lcom/android/internal/telephony/MccTable;->countryCodeForMcc(I)Ljava/lang/String;

    #@39
    move-result-object v0

    #@3a
    .line 4633
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
    .line 4635
    :cond_4
    return v7

    #@47
    .line 4637
    :cond_5
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4a
    move-result v3

    #@4b
    .line 4638
    .local v3, "inSameCountry":Z
    if-eqz v3, :cond_6

    #@4d
    .line 4639
    return v3

    #@4e
    .line 4642
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
    .line 4643
    const/4 v3, 0x1

    #@61
    .line 4647
    .end local v3    # "inSameCountry":Z
    :cond_7
    :goto_0
    return v3

    #@62
    .line 4644
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
    .line 4645
    const/4 v3, 0x1

    #@75
    .local v3, "inSameCountry":Z
    goto :goto_0
.end method

.method protected isCallerOnDifferentThread()Z
    .locals 3

    #@0
    .prologue
    .line 4601
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
    .line 4603
    .local v0, "value":Z
    :goto_0
    return v0

    #@10
    .line 4601
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
    .line 2371
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@4
    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    #@7
    move-result v2

    #@8
    if-eqz v2, :cond_1

    #@a
    .line 2372
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
    .line 2373
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@18
    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeCdma()Z

    #@1b
    move-result v2

    #@1c
    if-eqz v2, :cond_2

    #@1e
    .line 2377
    return v1

    #@1f
    .line 2380
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
    .line 4833
    iget-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDeviceShuttingDown:Z

    #@2
    return v0
.end method

.method public isImsRegistered()Z
    .locals 1

    #@0
    .prologue
    .line 4583
    iget-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mImsRegistered:Z

    #@2
    return v0
.end method

.method protected isInvalidOperatorNumeric(Ljava/lang/String;)Z
    .locals 2
    .param p1, "operatorNumeric"    # Ljava/lang/String;

    #@0
    .prologue
    .line 3238
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
    .line 3239
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
    .line 1373
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
    .line 4828
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
    .line 4820
    const-string/jumbo v0, "gsm_nonroaming_networks_string_array"

    #@3
    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->isInNetwork(Landroid/os/BaseBundle;Ljava/lang/String;Ljava/lang/String;)Z

    #@6
    move-result v0

    #@7
    return v0
.end method

.method protected final isRoamingInCdmaNetwork(Landroid/os/BaseBundle;Ljava/lang/String;)Z
    .locals 1
    .param p1, "b"    # Landroid/os/BaseBundle;
    .param p2, "network"    # Ljava/lang/String;

    #@0
    .prologue
    .line 4824
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
    .line 4816
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
    .line 1314
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mHomeSystemId:[I

    #@3
    if-eqz v1, :cond_1

    #@5
    .line 1315
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
    .line 1316
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mHomeSystemId:[I

    #@d
    aget v1, v1, v0

    #@f
    if-eqz v1, :cond_0

    #@11
    .line 1317
    return v2

    #@12
    .line 1315
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@14
    goto :goto_0

    #@15
    .line 1321
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
    .line 2351
    const-string/jumbo v0, "SST"

    #@3
    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@6
    .line 2350
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2355
    const-string/jumbo v0, "SST"

    #@3
    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@6
    .line 2354
    return-void
.end method

.method protected notifyDataRegStateRilRadioTechnologyChanged()V
    .locals 6

    #@0
    .prologue
    .line 657
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@2
    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    #@5
    move-result v1

    #@6
    .line 658
    .local v1, "rat":I
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@8
    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getDataRegState()I

    #@b
    move-result v0

    #@c
    .line 659
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
    .line 661
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@30
    const-string/jumbo v3, "gsm.network.type"

    #@33
    .line 662
    invoke-static {v1}, Landroid/telephony/ServiceState;->rilRadioTechnologyToString(I)Ljava/lang/String;

    #@36
    move-result-object v4

    #@37
    .line 661
    invoke-virtual {v2, v3, v4}, Lcom/android/internal/telephony/GsmCdmaPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    #@3a
    .line 663
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
    .line 656
    return-void
.end method

.method protected notifySignalStrength()Z
    .locals 4

    #@0
    .prologue
    .line 638
    const/4 v1, 0x0

    #@1
    .line 639
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
    .line 641
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@d
    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifySignalStrength()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    #@10
    .line 642
    const/4 v1, 0x1

    #@11
    .line 648
    :cond_0
    :goto_0
    return v1

    #@12
    .line 643
    :catch_0
    move-exception v0

    #@13
    .line 644
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
    .line 645
    const-string/jumbo v3, "SignalStrength not notified"

    #@26
    .line 644
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
    .line 2404
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 2405
    const/16 v0, 0x30

    #@a
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    #@d
    move-result-object v0

    #@e
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->sendMessage(Landroid/os/Message;)Z

    #@11
    .line 2403
    :cond_0
    return-void
.end method

.method protected onSignalStrengthResult(Landroid/os/AsyncResult;)Z
    .locals 4
    .param p1, "ar"    # Landroid/os/AsyncResult;

    #@0
    .prologue
    .line 4298
    const/4 v0, 0x0

    #@1
    .line 4300
    .local v0, "isGsm":Z
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@3
    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    #@6
    move-result v2

    #@7
    if-nez v2, :cond_0

    #@9
    .line 4301
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@b
    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeCdmaLte()Z

    #@e
    move-result v2

    #@f
    if-eqz v2, :cond_1

    #@11
    .line 4302
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@13
    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    #@16
    move-result v2

    #@17
    const/16 v3, 0xe

    #@19
    if-ne v2, v3, :cond_1

    #@1b
    .line 4303
    :cond_0
    const/4 v0, 0x1

    #@1c
    .line 4309
    :cond_1
    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@1e
    if-nez v2, :cond_2

    #@20
    iget-object v2, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@22
    if-eqz v2, :cond_2

    #@24
    .line 4310
    iget-object v2, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@26
    check-cast v2, Landroid/telephony/SignalStrength;

    #@28
    iput-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    #@2a
    .line 4311
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    #@2c
    invoke-virtual {v2}, Landroid/telephony/SignalStrength;->validateInput()V

    #@2f
    .line 4312
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    #@31
    invoke-virtual {v2, v0}, Landroid/telephony/SignalStrength;->setGsm(Z)V

    #@34
    .line 4318
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->notifySignalStrength()Z

    #@37
    move-result v1

    #@38
    .line 4320
    .local v1, "ssChanged":Z
    return v1

    #@39
    .line 4314
    .end local v1    # "ssChanged":Z
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    #@3b
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@3e
    const-string/jumbo v3, "onSignalStrengthResult() Exception from RIL : "

    #@41
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v2

    #@45
    iget-object v3, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@47
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v2

    #@4b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4e
    move-result-object v2

    #@4f
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    #@52
    .line 4315
    new-instance v2, Landroid/telephony/SignalStrength;

    #@54
    invoke-direct {v2, v0}, Landroid/telephony/SignalStrength;-><init>(Z)V

    #@57
    iput-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    #@59
    goto :goto_0
.end method

.method protected onUpdateIccAvailability()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 2315
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    #@3
    if-nez v1, :cond_0

    #@5
    .line 2316
    return-void

    #@6
    .line 2319
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getUiccCardApplication()Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@9
    move-result-object v0

    #@a
    .line 2321
    .local v0, "newUiccApplication":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@c
    if-eq v1, v0, :cond_3

    #@e
    .line 2322
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@10
    if-eqz v1, :cond_2

    #@12
    .line 2323
    const-string/jumbo v1, "Removing stale icc objects."

    #@15
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    #@18
    .line 2324
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@1a
    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->unregisterForReady(Landroid/os/Handler;)V

    #@1d
    .line 2325
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    #@1f
    if-eqz v1, :cond_1

    #@21
    .line 2326
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    #@23
    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/uicc/IccRecords;->unregisterForRecordsLoaded(Landroid/os/Handler;)V

    #@26
    .line 2328
    :cond_1
    iput-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    #@28
    .line 2329
    iput-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@2a
    .line 2331
    :cond_2
    if-eqz v0, :cond_3

    #@2c
    .line 2332
    const-string/jumbo v1, "New card found"

    #@2f
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    #@32
    .line 2333
    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@34
    .line 2334
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@36
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    #@39
    move-result-object v1

    #@3a
    iput-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    #@3c
    .line 2335
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@3e
    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    #@41
    move-result v1

    #@42
    if-eqz v1, :cond_4

    #@44
    .line 2336
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@46
    const/16 v2, 0x11

    #@48
    invoke-virtual {v1, p0, v2, v3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->registerForReady(Landroid/os/Handler;ILjava/lang/Object;)V

    #@4b
    .line 2337
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    #@4d
    if-eqz v1, :cond_3

    #@4f
    .line 2338
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    #@51
    const/16 v2, 0x10

    #@53
    invoke-virtual {v1, p0, v2, v3}, Lcom/android/internal/telephony/uicc/IccRecords;->registerForRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    #@56
    .line 2314
    :cond_3
    :goto_0
    return-void

    #@57
    .line 2340
    :cond_4
    iget-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIsSubscriptionFromRuim:Z

    #@59
    if-eqz v1, :cond_3

    #@5b
    .line 2341
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@5d
    const/16 v2, 0x1a

    #@5f
    invoke-virtual {v1, p0, v2, v3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->registerForReady(Landroid/os/Handler;ILjava/lang/Object;)V

    #@62
    .line 2342
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    #@64
    if-eqz v1, :cond_3

    #@66
    .line 2343
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
    .line 1412
    if-eqz p1, :cond_0

    #@2
    .line 1413
    const-string/jumbo v4, ","

    #@5
    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@8
    move-result-object v3

    #@9
    .line 1414
    .local v3, "sid":[Ljava/lang/String;
    array-length v4, v3

    #@a
    new-array v4, v4, [I

    #@c
    iput-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mHomeSystemId:[I

    #@e
    .line 1415
    const/4 v1, 0x0

    #@f
    .local v1, "i":I
    :goto_0
    array-length v4, v3

    #@10
    if-ge v1, v4, :cond_0

    #@12
    .line 1417
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
    .line 1415
    :goto_1
    add-int/lit8 v1, v1, 0x1

    #@1e
    goto :goto_0

    #@1f
    .line 1418
    :catch_0
    move-exception v0

    #@20
    .line 1419
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
    .line 1423
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
    .line 1425
    if-eqz p2, :cond_1

    #@51
    .line 1426
    const-string/jumbo v4, ","

    #@54
    invoke-virtual {p2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@57
    move-result-object v2

    #@58
    .line 1427
    .local v2, "nid":[Ljava/lang/String;
    array-length v4, v2

    #@59
    new-array v4, v4, [I

    #@5b
    iput-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mHomeNetworkId:[I

    #@5d
    .line 1428
    const/4 v1, 0x0

    #@5e
    .restart local v1    # "i":I
    :goto_2
    array-length v4, v2

    #@5f
    if-ge v1, v4, :cond_1

    #@61
    .line 1430
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
    .line 1428
    :goto_3
    add-int/lit8 v1, v1, 0x1

    #@6d
    goto :goto_2

    #@6e
    .line 1431
    :catch_1
    move-exception v0

    #@6f
    .line 1432
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
    .line 1436
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
    .line 1411
    return-void
.end method

.method public pollState()V
    .locals 1

    #@0
    .prologue
    .line 2418
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->pollState(Z)V

    #@4
    .line 2417
    return-void
.end method

.method public pollState(Z)V
    .locals 4
    .param p1, "modemTriggered"    # Z

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 2430
    const/4 v0, 0x1

    #@2
    new-array v0, v0, [I

    #@4
    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPollingContext:[I

    #@6
    .line 2431
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPollingContext:[I

    #@8
    aput v3, v0, v3

    #@a
    .line 2433
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
    .line 2461
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPollingContext:[I

    #@1f
    aget v1, v0, v3

    #@21
    add-int/lit8 v1, v1, 0x1

    #@23
    aput v1, v0, v3

    #@25
    .line 2462
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
    .line 2464
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPollingContext:[I

    #@33
    aget v1, v0, v3

    #@35
    add-int/lit8 v1, v1, 0x1

    #@37
    aput v1, v0, v3

    #@39
    .line 2465
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
    .line 2467
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPollingContext:[I

    #@47
    aget v1, v0, v3

    #@49
    add-int/lit8 v1, v1, 0x1

    #@4b
    aput v1, v0, v3

    #@4d
    .line 2468
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@4f
    .line 2469
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPollingContext:[I

    #@51
    .line 2468
    const/4 v2, 0x4

    #@52
    invoke-virtual {p0, v2, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@55
    move-result-object v1

    #@56
    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getVoiceRegistrationState(Landroid/os/Message;)V

    #@59
    .line 2471
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@5b
    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    #@5e
    move-result v0

    #@5f
    if-eqz v0, :cond_1

    #@61
    .line 2472
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPollingContext:[I

    #@63
    aget v1, v0, v3

    #@65
    add-int/lit8 v1, v1, 0x1

    #@67
    aput v1, v0, v3

    #@69
    .line 2473
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@6b
    .line 2474
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPollingContext:[I

    #@6d
    const/16 v2, 0xe

    #@6f
    .line 2473
    invoke-virtual {p0, v2, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@72
    move-result-object v1

    #@73
    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getNetworkSelectionMode(Landroid/os/Message;)V

    #@76
    .line 2429
    :cond_1
    :goto_0
    return-void

    #@77
    .line 2435
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@79
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->setStateOutOfService()V

    #@7c
    .line 2436
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewCellLoc:Landroid/telephony/CellLocation;

    #@7e
    invoke-virtual {v0}, Landroid/telephony/CellLocation;->setStateInvalid()V

    #@81
    .line 2437
    invoke-direct {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->setSignalStrengthDefaultValues()V

    #@84
    .line 2438
    iput-boolean v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mGotCountryCode:Z

    #@86
    .line 2439
    iput-boolean v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNitzUpdatedTime:Z

    #@88
    .line 2440
    invoke-direct {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->pollStateDone()V

    #@8b
    goto :goto_0

    #@8c
    .line 2444
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@8e
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->setStateOff()V

    #@91
    .line 2445
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewCellLoc:Landroid/telephony/CellLocation;

    #@93
    invoke-virtual {v0}, Landroid/telephony/CellLocation;->setStateInvalid()V

    #@96
    .line 2446
    invoke-direct {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->setSignalStrengthDefaultValues()V

    #@99
    .line 2447
    iput-boolean v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mGotCountryCode:Z

    #@9b
    .line 2448
    iput-boolean v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNitzUpdatedTime:Z

    #@9d
    .line 2452
    if-nez p1, :cond_0

    #@9f
    .line 2453
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@a1
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    #@a4
    move-result v0

    #@a5
    .line 2452
    const/16 v1, 0x12

    #@a7
    if-eq v1, v0, :cond_0

    #@a9
    .line 2454
    invoke-direct {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->pollStateDone()V

    #@ac
    goto :goto_0

    #@ad
    .line 2433
    nop

    #@ae
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected pollStateDoneCdma()V
    .locals 31

    #@0
    .prologue
    .line 2750
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ServiceStateTracker;->updateRoamingState()V

    #@3
    .line 2752
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ServiceStateTracker;->useDataRegStateForDataOnlyDevices()V

    #@6
    .line 2753
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ServiceStateTracker;->resetServiceStateInIwlanMode()V

    #@9
    .line 2754
    new-instance v28, Ljava/lang/StringBuilder;

    #@b
    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string/jumbo v29, "pollStateDone: cdma oldSS=["

    #@11
    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v28

    #@15
    move-object/from16 v0, p0

    #@17
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@19
    move-object/from16 v29, v0

    #@1b
    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v28

    #@1f
    const-string/jumbo v29, "] newSS=["

    #@22
    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v28

    #@26
    move-object/from16 v0, p0

    #@28
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@2a
    move-object/from16 v29, v0

    #@2c
    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v28

    #@30
    const-string/jumbo v29, "]"

    #@33
    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v28

    #@37
    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3a
    move-result-object v28

    #@3b
    move-object/from16 v0, p0

    #@3d
    move-object/from16 v1, v28

    #@3f
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    #@42
    .line 2757
    move-object/from16 v0, p0

    #@44
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@46
    move-object/from16 v28, v0

    #@48
    invoke-virtual/range {v28 .. v28}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    #@4b
    move-result v28

    #@4c
    if-eqz v28, :cond_15

    #@4e
    .line 2758
    move-object/from16 v0, p0

    #@50
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@52
    move-object/from16 v28, v0

    #@54
    invoke-virtual/range {v28 .. v28}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    #@57
    move-result v28

    #@58
    if-nez v28, :cond_14

    #@5a
    const/4 v15, 0x1

    #@5b
    .line 2761
    .local v15, "hasRegistered":Z
    :goto_0
    move-object/from16 v0, p0

    #@5d
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@5f
    move-object/from16 v28, v0

    #@61
    invoke-virtual/range {v28 .. v28}, Landroid/telephony/ServiceState;->getDataRegState()I

    #@64
    move-result v28

    #@65
    if-eqz v28, :cond_17

    #@67
    .line 2762
    move-object/from16 v0, p0

    #@69
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@6b
    move-object/from16 v28, v0

    #@6d
    invoke-virtual/range {v28 .. v28}, Landroid/telephony/ServiceState;->getDataRegState()I

    #@70
    move-result v28

    #@71
    if-nez v28, :cond_16

    #@73
    const/4 v8, 0x1

    #@74
    .line 2765
    .local v8, "hasCdmaDataConnectionAttached":Z
    :goto_1
    move-object/from16 v0, p0

    #@76
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@78
    move-object/from16 v28, v0

    #@7a
    invoke-virtual/range {v28 .. v28}, Landroid/telephony/ServiceState;->getDataRegState()I

    #@7d
    move-result v28

    #@7e
    if-nez v28, :cond_19

    #@80
    .line 2766
    move-object/from16 v0, p0

    #@82
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@84
    move-object/from16 v28, v0

    #@86
    invoke-virtual/range {v28 .. v28}, Landroid/telephony/ServiceState;->getDataRegState()I

    #@89
    move-result v28

    #@8a
    if-eqz v28, :cond_18

    #@8c
    const/4 v10, 0x1

    #@8d
    .line 2769
    .local v10, "hasCdmaDataConnectionDetached":Z
    :goto_2
    move-object/from16 v0, p0

    #@8f
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@91
    move-object/from16 v28, v0

    #@93
    invoke-virtual/range {v28 .. v28}, Landroid/telephony/ServiceState;->getDataRegState()I

    #@96
    move-result v28

    #@97
    move-object/from16 v0, p0

    #@99
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@9b
    move-object/from16 v29, v0

    #@9d
    invoke-virtual/range {v29 .. v29}, Landroid/telephony/ServiceState;->getDataRegState()I

    #@a0
    move-result v29

    #@a1
    move/from16 v0, v28

    #@a3
    move/from16 v1, v29

    #@a5
    if-eq v0, v1, :cond_1a

    #@a7
    const/4 v9, 0x1

    #@a8
    .line 2772
    .local v9, "hasCdmaDataConnectionChanged":Z
    :goto_3
    move-object/from16 v0, p0

    #@aa
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@ac
    move-object/from16 v28, v0

    #@ae
    invoke-virtual/range {v28 .. v28}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    #@b1
    move-result v28

    #@b2
    move-object/from16 v0, p0

    #@b4
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@b6
    move-object/from16 v29, v0

    #@b8
    invoke-virtual/range {v29 .. v29}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    #@bb
    move-result v29

    #@bc
    move/from16 v0, v28

    #@be
    move/from16 v1, v29

    #@c0
    if-eq v0, v1, :cond_1b

    #@c2
    const/16 v17, 0x1

    #@c4
    .line 2775
    .local v17, "hasRilVoiceRadioTechnologyChanged":Z
    :goto_4
    move-object/from16 v0, p0

    #@c6
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@c8
    move-object/from16 v28, v0

    #@ca
    invoke-virtual/range {v28 .. v28}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    #@cd
    move-result v28

    #@ce
    move-object/from16 v0, p0

    #@d0
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@d2
    move-object/from16 v29, v0

    #@d4
    invoke-virtual/range {v29 .. v29}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    #@d7
    move-result v29

    #@d8
    move/from16 v0, v28

    #@da
    move/from16 v1, v29

    #@dc
    if-eq v0, v1, :cond_1c

    #@de
    const/16 v16, 0x1

    #@e0
    .line 2777
    .local v16, "hasRilDataRadioTechnologyChanged":Z
    :goto_5
    move-object/from16 v0, p0

    #@e2
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@e4
    move-object/from16 v28, v0

    #@e6
    move-object/from16 v0, p0

    #@e8
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@ea
    move-object/from16 v29, v0

    #@ec
    invoke-virtual/range {v28 .. v29}, Landroid/telephony/ServiceState;->equals(Ljava/lang/Object;)Z

    #@ef
    move-result v28

    #@f0
    if-eqz v28, :cond_1d

    #@f2
    const/4 v11, 0x0

    #@f3
    .line 2779
    .local v11, "hasChanged":Z
    :goto_6
    move-object/from16 v0, p0

    #@f5
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@f7
    move-object/from16 v28, v0

    #@f9
    invoke-virtual/range {v28 .. v28}, Landroid/telephony/ServiceState;->getVoiceRoaming()Z

    #@fc
    move-result v28

    #@fd
    if-nez v28, :cond_1e

    #@ff
    move-object/from16 v0, p0

    #@101
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@103
    move-object/from16 v28, v0

    #@105
    invoke-virtual/range {v28 .. v28}, Landroid/telephony/ServiceState;->getVoiceRoaming()Z

    #@108
    move-result v19

    #@109
    .line 2781
    :goto_7
    move-object/from16 v0, p0

    #@10b
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@10d
    move-object/from16 v28, v0

    #@10f
    invoke-virtual/range {v28 .. v28}, Landroid/telephony/ServiceState;->getVoiceRoaming()Z

    #@112
    move-result v28

    #@113
    if-eqz v28, :cond_0

    #@115
    move-object/from16 v0, p0

    #@117
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@119
    move-object/from16 v28, v0

    #@11b
    invoke-virtual/range {v28 .. v28}, Landroid/telephony/ServiceState;->getVoiceRoaming()Z

    #@11e
    move-result v28

    #@11f
    if-eqz v28, :cond_1f

    #@121
    :cond_0
    const/16 v18, 0x0

    #@123
    .line 2783
    .local v18, "hasVoiceRoamingOff":Z
    :goto_8
    move-object/from16 v0, p0

    #@125
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@127
    move-object/from16 v28, v0

    #@129
    invoke-virtual/range {v28 .. v28}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    #@12c
    move-result v28

    #@12d
    if-nez v28, :cond_20

    #@12f
    move-object/from16 v0, p0

    #@131
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@133
    move-object/from16 v28, v0

    #@135
    invoke-virtual/range {v28 .. v28}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    #@138
    move-result v13

    #@139
    .line 2785
    :goto_9
    move-object/from16 v0, p0

    #@13b
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@13d
    move-object/from16 v28, v0

    #@13f
    invoke-virtual/range {v28 .. v28}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    #@142
    move-result v28

    #@143
    if-eqz v28, :cond_1

    #@145
    move-object/from16 v0, p0

    #@147
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@149
    move-object/from16 v28, v0

    #@14b
    invoke-virtual/range {v28 .. v28}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    #@14e
    move-result v28

    #@14f
    if-eqz v28, :cond_21

    #@151
    :cond_1
    const/4 v12, 0x0

    #@152
    .line 2787
    .local v12, "hasDataRoamingOff":Z
    :goto_a
    move-object/from16 v0, p0

    #@154
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewCellLoc:Landroid/telephony/CellLocation;

    #@156
    move-object/from16 v28, v0

    #@158
    move-object/from16 v0, p0

    #@15a
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mCellLoc:Landroid/telephony/CellLocation;

    #@15c
    move-object/from16 v29, v0

    #@15e
    invoke-virtual/range {v28 .. v29}, Landroid/telephony/CellLocation;->equals(Ljava/lang/Object;)Z

    #@161
    move-result v28

    #@162
    if-eqz v28, :cond_22

    #@164
    const/4 v14, 0x0

    #@165
    .line 2790
    .local v14, "hasLocationChanged":Z
    :goto_b
    move-object/from16 v0, p0

    #@167
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@169
    move-object/from16 v28, v0

    #@16b
    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    #@16e
    move-result-object v28

    #@16f
    const-string/jumbo v29, "phone"

    #@172
    invoke-virtual/range {v28 .. v29}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@175
    move-result-object v26

    #@176
    check-cast v26, Landroid/telephony/TelephonyManager;

    #@178
    .line 2793
    .local v26, "tm":Landroid/telephony/TelephonyManager;
    move-object/from16 v0, p0

    #@17a
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@17c
    move-object/from16 v28, v0

    #@17e
    invoke-virtual/range {v28 .. v28}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    #@181
    move-result v28

    #@182
    move-object/from16 v0, p0

    #@184
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@186
    move-object/from16 v29, v0

    #@188
    invoke-virtual/range {v29 .. v29}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    #@18b
    move-result v29

    #@18c
    move/from16 v0, v28

    #@18e
    move/from16 v1, v29

    #@190
    if-ne v0, v1, :cond_2

    #@192
    .line 2794
    move-object/from16 v0, p0

    #@194
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@196
    move-object/from16 v28, v0

    #@198
    invoke-virtual/range {v28 .. v28}, Landroid/telephony/ServiceState;->getDataRegState()I

    #@19b
    move-result v28

    #@19c
    move-object/from16 v0, p0

    #@19e
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@1a0
    move-object/from16 v29, v0

    #@1a2
    invoke-virtual/range {v29 .. v29}, Landroid/telephony/ServiceState;->getDataRegState()I

    #@1a5
    move-result v29

    #@1a6
    move/from16 v0, v28

    #@1a8
    move/from16 v1, v29

    #@1aa
    if-eq v0, v1, :cond_3

    #@1ac
    .line 2795
    :cond_2
    const/16 v28, 0x4

    #@1ae
    move/from16 v0, v28

    #@1b0
    new-array v0, v0, [Ljava/lang/Object;

    #@1b2
    move-object/from16 v28, v0

    #@1b4
    .line 2796
    move-object/from16 v0, p0

    #@1b6
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@1b8
    move-object/from16 v29, v0

    #@1ba
    invoke-virtual/range {v29 .. v29}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    #@1bd
    move-result v29

    #@1be
    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1c1
    move-result-object v29

    #@1c2
    const/16 v30, 0x0

    #@1c4
    aput-object v29, v28, v30

    #@1c6
    move-object/from16 v0, p0

    #@1c8
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@1ca
    move-object/from16 v29, v0

    #@1cc
    invoke-virtual/range {v29 .. v29}, Landroid/telephony/ServiceState;->getDataRegState()I

    #@1cf
    move-result v29

    #@1d0
    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1d3
    move-result-object v29

    #@1d4
    const/16 v30, 0x1

    #@1d6
    aput-object v29, v28, v30

    #@1d8
    .line 2797
    move-object/from16 v0, p0

    #@1da
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@1dc
    move-object/from16 v29, v0

    #@1de
    invoke-virtual/range {v29 .. v29}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    #@1e1
    move-result v29

    #@1e2
    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1e5
    move-result-object v29

    #@1e6
    const/16 v30, 0x2

    #@1e8
    aput-object v29, v28, v30

    #@1ea
    move-object/from16 v0, p0

    #@1ec
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@1ee
    move-object/from16 v29, v0

    #@1f0
    invoke-virtual/range {v29 .. v29}, Landroid/telephony/ServiceState;->getDataRegState()I

    #@1f3
    move-result v29

    #@1f4
    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1f7
    move-result-object v29

    #@1f8
    const/16 v30, 0x3

    #@1fa
    aput-object v29, v28, v30

    #@1fc
    .line 2795
    const v29, 0xc3c4

    #@1ff
    move/from16 v0, v29

    #@201
    move-object/from16 v1, v28

    #@203
    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    #@206
    .line 2801
    :cond_3
    move-object/from16 v0, p0

    #@208
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@20a
    move-object/from16 v27, v0

    #@20c
    .line 2802
    .local v27, "tss":Landroid/telephony/ServiceState;
    move-object/from16 v0, p0

    #@20e
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@210
    move-object/from16 v28, v0

    #@212
    move-object/from16 v0, v28

    #@214
    move-object/from16 v1, p0

    #@216
    iput-object v0, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@218
    .line 2803
    move-object/from16 v0, v27

    #@21a
    move-object/from16 v1, p0

    #@21c
    iput-object v0, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@21e
    .line 2805
    move-object/from16 v0, p0

    #@220
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@222
    move-object/from16 v28, v0

    #@224
    invoke-virtual/range {v28 .. v28}, Landroid/telephony/ServiceState;->setStateOutOfService()V

    #@227
    .line 2807
    move-object/from16 v0, p0

    #@229
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mCellLoc:Landroid/telephony/CellLocation;

    #@22b
    move-object/from16 v25, v0

    #@22d
    check-cast v25, Landroid/telephony/cdma/CdmaCellLocation;

    #@22f
    .line 2808
    .local v25, "tcl":Landroid/telephony/cdma/CdmaCellLocation;
    move-object/from16 v0, p0

    #@231
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewCellLoc:Landroid/telephony/CellLocation;

    #@233
    move-object/from16 v28, v0

    #@235
    move-object/from16 v0, v28

    #@237
    move-object/from16 v1, p0

    #@239
    iput-object v0, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mCellLoc:Landroid/telephony/CellLocation;

    #@23b
    .line 2809
    move-object/from16 v0, v25

    #@23d
    move-object/from16 v1, p0

    #@23f
    iput-object v0, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mNewCellLoc:Landroid/telephony/CellLocation;

    #@241
    .line 2811
    if-eqz v17, :cond_4

    #@243
    .line 2812
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ServiceStateTracker;->updatePhoneObject()V

    #@246
    .line 2815
    :cond_4
    if-eqz v16, :cond_5

    #@248
    .line 2816
    move-object/from16 v0, p0

    #@24a
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@24c
    move-object/from16 v28, v0

    #@24e
    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    #@251
    move-result v28

    #@252
    move-object/from16 v0, p0

    #@254
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@256
    move-object/from16 v29, v0

    #@258
    invoke-virtual/range {v29 .. v29}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    #@25b
    move-result v29

    #@25c
    move-object/from16 v0, v26

    #@25e
    move/from16 v1, v28

    #@260
    move/from16 v2, v29

    #@262
    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->setDataNetworkTypeForPhone(II)V

    #@265
    .line 2819
    move-object/from16 v0, p0

    #@267
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@269
    move-object/from16 v28, v0

    #@26b
    invoke-virtual/range {v28 .. v28}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    #@26e
    move-result v28

    #@26f
    .line 2818
    const/16 v29, 0x12

    #@271
    move/from16 v0, v29

    #@273
    move/from16 v1, v28

    #@275
    if-ne v0, v1, :cond_5

    #@277
    .line 2820
    const-string/jumbo v28, "pollStateDone: IWLAN enabled"

    #@27a
    move-object/from16 v0, p0

    #@27c
    move-object/from16 v1, v28

    #@27e
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    #@281
    .line 2824
    :cond_5
    if-eqz v15, :cond_6

    #@283
    .line 2825
    move-object/from16 v0, p0

    #@285
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNetworkAttachedRegistrants:Landroid/os/RegistrantList;

    #@287
    move-object/from16 v28, v0

    #@289
    invoke-virtual/range {v28 .. v28}, Landroid/os/RegistrantList;->notifyRegistrants()V

    #@28c
    .line 2828
    :cond_6
    if-eqz v11, :cond_a

    #@28e
    .line 2829
    move-object/from16 v0, p0

    #@290
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@292
    move-object/from16 v28, v0

    #@294
    invoke-interface/range {v28 .. v28}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    #@297
    move-result-object v28

    #@298
    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    #@29b
    move-result v28

    #@29c
    if-eqz v28, :cond_7

    #@29e
    move-object/from16 v0, p0

    #@2a0
    iget-boolean v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mIsSubscriptionFromRuim:Z

    #@2a2
    move/from16 v28, v0

    #@2a4
    if-eqz v28, :cond_23

    #@2a6
    .line 2845
    :cond_7
    :goto_c
    move-object/from16 v0, p0

    #@2a8
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@2aa
    move-object/from16 v28, v0

    #@2ac
    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    #@2af
    move-result v28

    #@2b0
    move-object/from16 v0, p0

    #@2b2
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@2b4
    move-object/from16 v29, v0

    #@2b6
    invoke-virtual/range {v29 .. v29}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    #@2b9
    move-result-object v29

    #@2ba
    move-object/from16 v0, v26

    #@2bc
    move/from16 v1, v28

    #@2be
    move-object/from16 v2, v29

    #@2c0
    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->setNetworkOperatorNameForPhone(ILjava/lang/String;)V

    #@2c3
    .line 2847
    move-object/from16 v0, p0

    #@2c5
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@2c7
    move-object/from16 v28, v0

    #@2c9
    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    #@2cc
    move-result v28

    #@2cd
    move-object/from16 v0, v26

    #@2cf
    move/from16 v1, v28

    #@2d1
    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getNetworkOperatorForPhone(I)Ljava/lang/String;

    #@2d4
    move-result-object v23

    #@2d5
    .line 2848
    .local v23, "prevOperatorNumeric":Ljava/lang/String;
    move-object/from16 v0, p0

    #@2d7
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@2d9
    move-object/from16 v28, v0

    #@2db
    invoke-virtual/range {v28 .. v28}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    #@2de
    move-result-object v22

    #@2df
    .line 2851
    .local v22, "operatorNumeric":Ljava/lang/String;
    move-object/from16 v0, p0

    #@2e1
    move-object/from16 v1, v22

    #@2e3
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->isInvalidOperatorNumeric(Ljava/lang/String;)Z

    #@2e6
    move-result v28

    #@2e7
    if-eqz v28, :cond_8

    #@2e9
    .line 2852
    move-object/from16 v0, p0

    #@2eb
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@2ed
    move-object/from16 v28, v0

    #@2ef
    invoke-virtual/range {v28 .. v28}, Landroid/telephony/ServiceState;->getSystemId()I

    #@2f2
    move-result v24

    #@2f3
    .line 2853
    .local v24, "sid":I
    move-object/from16 v0, p0

    #@2f5
    move-object/from16 v1, v22

    #@2f7
    move/from16 v2, v24

    #@2f9
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->fixUnknownMcc(Ljava/lang/String;I)Ljava/lang/String;

    #@2fc
    move-result-object v22

    #@2fd
    .line 2856
    .end local v24    # "sid":I
    :cond_8
    move-object/from16 v0, p0

    #@2ff
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@301
    move-object/from16 v28, v0

    #@303
    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    #@306
    move-result v28

    #@307
    move-object/from16 v0, v26

    #@309
    move/from16 v1, v28

    #@30b
    move-object/from16 v2, v22

    #@30d
    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->setNetworkOperatorNumericForPhone(ILjava/lang/String;)V

    #@310
    .line 2858
    move-object/from16 v0, p0

    #@312
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@314
    move-object/from16 v28, v0

    #@316
    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    #@319
    move-result-object v28

    #@31a
    .line 2857
    move-object/from16 v0, p0

    #@31c
    move-object/from16 v1, v22

    #@31e
    move-object/from16 v2, v23

    #@320
    move-object/from16 v3, v28

    #@322
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->updateCarrierMccMncConfiguration(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    #@325
    .line 2860
    move-object/from16 v0, p0

    #@327
    move-object/from16 v1, v22

    #@329
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->isInvalidOperatorNumeric(Ljava/lang/String;)Z

    #@32c
    move-result v28

    #@32d
    if-eqz v28, :cond_25

    #@32f
    .line 2861
    new-instance v28, Ljava/lang/StringBuilder;

    #@331
    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    #@334
    const-string/jumbo v29, "operatorNumeric "

    #@337
    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33a
    move-result-object v28

    #@33b
    move-object/from16 v0, v28

    #@33d
    move-object/from16 v1, v22

    #@33f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@342
    move-result-object v28

    #@343
    const-string/jumbo v29, "is invalid"

    #@346
    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@349
    move-result-object v28

    #@34a
    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@34d
    move-result-object v28

    #@34e
    move-object/from16 v0, p0

    #@350
    move-object/from16 v1, v28

    #@352
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    #@355
    .line 2862
    move-object/from16 v0, p0

    #@357
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@359
    move-object/from16 v28, v0

    #@35b
    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    #@35e
    move-result v28

    #@35f
    const-string/jumbo v29, ""

    #@362
    move-object/from16 v0, v26

    #@364
    move/from16 v1, v28

    #@366
    move-object/from16 v2, v29

    #@368
    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->setNetworkCountryIsoForPhone(ILjava/lang/String;)V

    #@36b
    .line 2863
    const/16 v28, 0x0

    #@36d
    move/from16 v0, v28

    #@36f
    move-object/from16 v1, p0

    #@371
    iput-boolean v0, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mGotCountryCode:Z

    #@373
    .line 2887
    :cond_9
    :goto_d
    move-object/from16 v0, p0

    #@375
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@377
    move-object/from16 v28, v0

    #@379
    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    #@37c
    move-result v29

    #@37d
    .line 2888
    move-object/from16 v0, p0

    #@37f
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@381
    move-object/from16 v28, v0

    #@383
    invoke-virtual/range {v28 .. v28}, Landroid/telephony/ServiceState;->getVoiceRoaming()Z

    #@386
    move-result v28

    #@387
    if-nez v28, :cond_26

    #@389
    move-object/from16 v0, p0

    #@38b
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@38d
    move-object/from16 v28, v0

    #@38f
    invoke-virtual/range {v28 .. v28}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    #@392
    move-result v28

    #@393
    .line 2887
    :goto_e
    move-object/from16 v0, v26

    #@395
    move/from16 v1, v29

    #@397
    move/from16 v2, v28

    #@399
    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->setNetworkRoamingForPhone(IZ)V

    #@39c
    .line 2890
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ServiceStateTracker;->updateSpnDisplay()V

    #@39f
    .line 2892
    move-object/from16 v0, p0

    #@3a1
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@3a3
    move-object/from16 v28, v0

    #@3a5
    move-object/from16 v0, p0

    #@3a7
    move-object/from16 v1, v28

    #@3a9
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->setRoamingType(Landroid/telephony/ServiceState;)V

    #@3ac
    .line 2893
    new-instance v28, Ljava/lang/StringBuilder;

    #@3ae
    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    #@3b1
    const-string/jumbo v29, "Broadcasting ServiceState : "

    #@3b4
    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b7
    move-result-object v28

    #@3b8
    move-object/from16 v0, p0

    #@3ba
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@3bc
    move-object/from16 v29, v0

    #@3be
    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3c1
    move-result-object v28

    #@3c2
    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3c5
    move-result-object v28

    #@3c6
    move-object/from16 v0, p0

    #@3c8
    move-object/from16 v1, v28

    #@3ca
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    #@3cd
    .line 2894
    move-object/from16 v0, p0

    #@3cf
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@3d1
    move-object/from16 v28, v0

    #@3d3
    move-object/from16 v0, p0

    #@3d5
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@3d7
    move-object/from16 v29, v0

    #@3d9
    invoke-virtual/range {v28 .. v29}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifyServiceStateChanged(Landroid/telephony/ServiceState;)V

    #@3dc
    .line 2897
    .end local v22    # "operatorNumeric":Ljava/lang/String;
    .end local v23    # "prevOperatorNumeric":Ljava/lang/String;
    :cond_a
    if-eqz v8, :cond_b

    #@3de
    .line 2898
    move-object/from16 v0, p0

    #@3e0
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mAttachedRegistrants:Landroid/os/RegistrantList;

    #@3e2
    move-object/from16 v28, v0

    #@3e4
    invoke-virtual/range {v28 .. v28}, Landroid/os/RegistrantList;->notifyRegistrants()V

    #@3e7
    .line 2901
    :cond_b
    if-eqz v10, :cond_c

    #@3e9
    .line 2902
    move-object/from16 v0, p0

    #@3eb
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mDetachedRegistrants:Landroid/os/RegistrantList;

    #@3ed
    move-object/from16 v28, v0

    #@3ef
    invoke-virtual/range {v28 .. v28}, Landroid/os/RegistrantList;->notifyRegistrants()V

    #@3f2
    .line 2905
    :cond_c
    if-nez v9, :cond_d

    #@3f4
    if-eqz v16, :cond_e

    #@3f6
    .line 2906
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ServiceStateTracker;->notifyDataRegStateRilRadioTechnologyChanged()V

    #@3f9
    .line 2908
    move-object/from16 v0, p0

    #@3fb
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@3fd
    move-object/from16 v28, v0

    #@3ff
    invoke-virtual/range {v28 .. v28}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    #@402
    move-result v28

    #@403
    .line 2907
    const/16 v29, 0x12

    #@405
    move/from16 v0, v29

    #@407
    move/from16 v1, v28

    #@409
    if-ne v0, v1, :cond_27

    #@40b
    .line 2909
    move-object/from16 v0, p0

    #@40d
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@40f
    move-object/from16 v28, v0

    #@411
    const-string/jumbo v29, "iwlanAvailable"

    #@414
    invoke-virtual/range {v28 .. v29}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifyDataConnection(Ljava/lang/String;)V

    #@417
    .line 2915
    :cond_e
    :goto_f
    if-eqz v19, :cond_f

    #@419
    .line 2916
    move-object/from16 v0, p0

    #@41b
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mVoiceRoamingOnRegistrants:Landroid/os/RegistrantList;

    #@41d
    move-object/from16 v28, v0

    #@41f
    invoke-virtual/range {v28 .. v28}, Landroid/os/RegistrantList;->notifyRegistrants()V

    #@422
    .line 2919
    :cond_f
    if-eqz v18, :cond_10

    #@424
    .line 2920
    move-object/from16 v0, p0

    #@426
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mVoiceRoamingOffRegistrants:Landroid/os/RegistrantList;

    #@428
    move-object/from16 v28, v0

    #@42a
    invoke-virtual/range {v28 .. v28}, Landroid/os/RegistrantList;->notifyRegistrants()V

    #@42d
    .line 2923
    :cond_10
    if-eqz v13, :cond_11

    #@42f
    .line 2924
    move-object/from16 v0, p0

    #@431
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mDataRoamingOnRegistrants:Landroid/os/RegistrantList;

    #@433
    move-object/from16 v28, v0

    #@435
    invoke-virtual/range {v28 .. v28}, Landroid/os/RegistrantList;->notifyRegistrants()V

    #@438
    .line 2927
    :cond_11
    if-eqz v12, :cond_12

    #@43a
    .line 2928
    move-object/from16 v0, p0

    #@43c
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mDataRoamingOffRegistrants:Landroid/os/RegistrantList;

    #@43e
    move-object/from16 v28, v0

    #@440
    invoke-virtual/range {v28 .. v28}, Landroid/os/RegistrantList;->notifyRegistrants()V

    #@443
    .line 2931
    :cond_12
    if-eqz v14, :cond_13

    #@445
    .line 2932
    move-object/from16 v0, p0

    #@447
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@449
    move-object/from16 v28, v0

    #@44b
    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifyLocationChanged()V

    #@44e
    .line 2749
    :cond_13
    return-void

    #@44f
    .line 2758
    .end local v8    # "hasCdmaDataConnectionAttached":Z
    .end local v9    # "hasCdmaDataConnectionChanged":Z
    .end local v10    # "hasCdmaDataConnectionDetached":Z
    .end local v11    # "hasChanged":Z
    .end local v12    # "hasDataRoamingOff":Z
    .end local v14    # "hasLocationChanged":Z
    .end local v15    # "hasRegistered":Z
    .end local v16    # "hasRilDataRadioTechnologyChanged":Z
    .end local v17    # "hasRilVoiceRadioTechnologyChanged":Z
    .end local v18    # "hasVoiceRoamingOff":Z
    .end local v25    # "tcl":Landroid/telephony/cdma/CdmaCellLocation;
    .end local v26    # "tm":Landroid/telephony/TelephonyManager;
    .end local v27    # "tss":Landroid/telephony/ServiceState;
    :cond_14
    const/4 v15, 0x0

    #@450
    .restart local v15    # "hasRegistered":Z
    goto/16 :goto_0

    #@452
    .line 2757
    .end local v15    # "hasRegistered":Z
    :cond_15
    const/4 v15, 0x0

    #@453
    .restart local v15    # "hasRegistered":Z
    goto/16 :goto_0

    #@455
    .line 2762
    :cond_16
    const/4 v8, 0x0

    #@456
    .restart local v8    # "hasCdmaDataConnectionAttached":Z
    goto/16 :goto_1

    #@458
    .line 2761
    .end local v8    # "hasCdmaDataConnectionAttached":Z
    :cond_17
    const/4 v8, 0x0

    #@459
    .restart local v8    # "hasCdmaDataConnectionAttached":Z
    goto/16 :goto_1

    #@45b
    .line 2766
    :cond_18
    const/4 v10, 0x0

    #@45c
    .restart local v10    # "hasCdmaDataConnectionDetached":Z
    goto/16 :goto_2

    #@45e
    .line 2765
    .end local v10    # "hasCdmaDataConnectionDetached":Z
    :cond_19
    const/4 v10, 0x0

    #@45f
    .restart local v10    # "hasCdmaDataConnectionDetached":Z
    goto/16 :goto_2

    #@461
    .line 2769
    :cond_1a
    const/4 v9, 0x0

    #@462
    .restart local v9    # "hasCdmaDataConnectionChanged":Z
    goto/16 :goto_3

    #@464
    .line 2772
    :cond_1b
    const/16 v17, 0x0

    #@466
    .restart local v17    # "hasRilVoiceRadioTechnologyChanged":Z
    goto/16 :goto_4

    #@468
    .line 2775
    :cond_1c
    const/16 v16, 0x0

    #@46a
    .restart local v16    # "hasRilDataRadioTechnologyChanged":Z
    goto/16 :goto_5

    #@46c
    .line 2777
    :cond_1d
    const/4 v11, 0x1

    #@46d
    .restart local v11    # "hasChanged":Z
    goto/16 :goto_6

    #@46f
    .line 2779
    :cond_1e
    const/16 v19, 0x0

    #@471
    .local v19, "hasVoiceRoamingOn":Z
    goto/16 :goto_7

    #@473
    .line 2781
    .end local v19    # "hasVoiceRoamingOn":Z
    :cond_1f
    const/16 v18, 0x1

    #@475
    .restart local v18    # "hasVoiceRoamingOff":Z
    goto/16 :goto_8

    #@477
    .line 2783
    :cond_20
    const/4 v13, 0x0

    #@478
    .local v13, "hasDataRoamingOn":Z
    goto/16 :goto_9

    #@47a
    .line 2785
    .end local v13    # "hasDataRoamingOn":Z
    :cond_21
    const/4 v12, 0x1

    #@47b
    .restart local v12    # "hasDataRoamingOff":Z
    goto/16 :goto_a

    #@47d
    .line 2787
    :cond_22
    const/4 v14, 0x1

    #@47e
    .restart local v14    # "hasLocationChanged":Z
    goto/16 :goto_b

    #@480
    .line 2832
    .restart local v25    # "tcl":Landroid/telephony/cdma/CdmaCellLocation;
    .restart local v26    # "tm":Landroid/telephony/TelephonyManager;
    .restart local v27    # "tss":Landroid/telephony/ServiceState;
    :cond_23
    move-object/from16 v0, p0

    #@482
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@484
    move-object/from16 v28, v0

    #@486
    invoke-virtual/range {v28 .. v28}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    #@489
    move-result v28

    #@48a
    if-nez v28, :cond_24

    #@48c
    .line 2833
    move-object/from16 v0, p0

    #@48e
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@490
    move-object/from16 v28, v0

    #@492
    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/telephony/GsmCdmaPhone;->getCdmaEriText()Ljava/lang/String;

    #@495
    move-result-object v5

    #@496
    .line 2840
    .local v5, "eriText":Ljava/lang/String;
    :goto_10
    move-object/from16 v0, p0

    #@498
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@49a
    move-object/from16 v28, v0

    #@49c
    move-object/from16 v0, v28

    #@49e
    invoke-virtual {v0, v5}, Landroid/telephony/ServiceState;->setOperatorAlphaLong(Ljava/lang/String;)V

    #@4a1
    goto/16 :goto_c

    #@4a3
    .line 2837
    .end local v5    # "eriText":Ljava/lang/String;
    :cond_24
    move-object/from16 v0, p0

    #@4a5
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@4a7
    move-object/from16 v28, v0

    #@4a9
    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    #@4ac
    move-result-object v28

    #@4ad
    .line 2838
    const v29, 0x10400e4

    #@4b0
    .line 2837
    invoke-virtual/range {v28 .. v29}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@4b3
    move-result-object v28

    #@4b4
    invoke-interface/range {v28 .. v28}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@4b7
    move-result-object v5

    #@4b8
    .restart local v5    # "eriText":Ljava/lang/String;
    goto :goto_10

    #@4b9
    .line 2865
    .end local v5    # "eriText":Ljava/lang/String;
    .restart local v22    # "operatorNumeric":Ljava/lang/String;
    .restart local v23    # "prevOperatorNumeric":Ljava/lang/String;
    :cond_25
    const-string/jumbo v20, ""

    #@4bc
    .line 2866
    .local v20, "isoCountryCode":Ljava/lang/String;
    const/16 v28, 0x0

    #@4be
    const/16 v29, 0x3

    #@4c0
    move-object/from16 v0, v22

    #@4c2
    move/from16 v1, v28

    #@4c4
    move/from16 v2, v29

    #@4c6
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@4c9
    move-result-object v21

    #@4ca
    .line 2869
    .local v21, "mcc":Ljava/lang/String;
    const/16 v28, 0x0

    #@4cc
    const/16 v29, 0x3

    #@4ce
    :try_start_0
    move-object/from16 v0, v22

    #@4d0
    move/from16 v1, v28

    #@4d2
    move/from16 v2, v29

    #@4d4
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@4d7
    move-result-object v28

    #@4d8
    .line 2868
    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@4db
    move-result v28

    #@4dc
    invoke-static/range {v28 .. v28}, Lcom/android/internal/telephony/MccTable;->countryCodeForMcc(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    #@4df
    move-result-object v20

    #@4e0
    .line 2876
    :goto_11
    move-object/from16 v0, p0

    #@4e2
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@4e4
    move-object/from16 v28, v0

    #@4e6
    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    #@4e9
    move-result v28

    #@4ea
    move-object/from16 v0, v26

    #@4ec
    move/from16 v1, v28

    #@4ee
    move-object/from16 v2, v20

    #@4f0
    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->setNetworkCountryIsoForPhone(ILjava/lang/String;)V

    #@4f3
    .line 2877
    const/16 v28, 0x1

    #@4f5
    move/from16 v0, v28

    #@4f7
    move-object/from16 v1, p0

    #@4f9
    iput-boolean v0, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mGotCountryCode:Z

    #@4fb
    .line 2879
    move-object/from16 v0, p0

    #@4fd
    move-object/from16 v1, v22

    #@4ff
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->setOperatorIdd(Ljava/lang/String;)V

    #@502
    .line 2881
    move-object/from16 v0, p0

    #@504
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@506
    move-object/from16 v28, v0

    #@508
    .line 2882
    move-object/from16 v0, p0

    #@50a
    iget-boolean v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNeedFixZoneAfterNitz:Z

    #@50c
    move/from16 v29, v0

    #@50e
    .line 2881
    move-object/from16 v0, p0

    #@510
    move-object/from16 v1, v28

    #@512
    move-object/from16 v2, v22

    #@514
    move-object/from16 v3, v23

    #@516
    move/from16 v4, v29

    #@518
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/ServiceStateTracker;->shouldFixTimeZoneNow(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Ljava/lang/String;Z)Z

    #@51b
    move-result v28

    #@51c
    if-eqz v28, :cond_9

    #@51e
    .line 2883
    move-object/from16 v0, p0

    #@520
    move-object/from16 v1, v20

    #@522
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->fixTimeZone(Ljava/lang/String;)V

    #@525
    goto/16 :goto_d

    #@527
    .line 2872
    :catch_0
    move-exception v7

    #@528
    .line 2873
    .local v7, "ex":Ljava/lang/StringIndexOutOfBoundsException;
    new-instance v28, Ljava/lang/StringBuilder;

    #@52a
    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    #@52d
    const-string/jumbo v29, "pollStateDone: countryCodeForMcc error"

    #@530
    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@533
    move-result-object v28

    #@534
    move-object/from16 v0, v28

    #@536
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@539
    move-result-object v28

    #@53a
    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@53d
    move-result-object v28

    #@53e
    move-object/from16 v0, p0

    #@540
    move-object/from16 v1, v28

    #@542
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->loge(Ljava/lang/String;)V

    #@545
    goto :goto_11

    #@546
    .line 2870
    .end local v7    # "ex":Ljava/lang/StringIndexOutOfBoundsException;
    :catch_1
    move-exception v6

    #@547
    .line 2871
    .local v6, "ex":Ljava/lang/NumberFormatException;
    new-instance v28, Ljava/lang/StringBuilder;

    #@549
    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    #@54c
    const-string/jumbo v29, "pollStateDone: countryCodeForMcc error"

    #@54f
    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@552
    move-result-object v28

    #@553
    move-object/from16 v0, v28

    #@555
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@558
    move-result-object v28

    #@559
    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@55c
    move-result-object v28

    #@55d
    move-object/from16 v0, p0

    #@55f
    move-object/from16 v1, v28

    #@561
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->loge(Ljava/lang/String;)V

    #@564
    goto/16 :goto_11

    #@566
    .line 2888
    .end local v6    # "ex":Ljava/lang/NumberFormatException;
    .end local v20    # "isoCountryCode":Ljava/lang/String;
    .end local v21    # "mcc":Ljava/lang/String;
    :cond_26
    const/16 v28, 0x1

    #@568
    goto/16 :goto_e

    #@56a
    .line 2911
    .end local v22    # "operatorNumeric":Ljava/lang/String;
    .end local v23    # "prevOperatorNumeric":Ljava/lang/String;
    :cond_27
    move-object/from16 v0, p0

    #@56c
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@56e
    move-object/from16 v28, v0

    #@570
    const/16 v29, 0x0

    #@572
    invoke-virtual/range {v28 .. v29}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifyDataConnection(Ljava/lang/String;)V

    #@575
    goto/16 :goto_f
.end method

.method protected pollStateDoneCdmaLte()V
    .locals 38

    #@0
    .prologue
    .line 2938
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ServiceStateTracker;->updateRoamingState()V

    #@3
    .line 2940
    sget-boolean v35, Landroid/os/Build;->IS_DEBUGGABLE:Z

    #@5
    if-eqz v35, :cond_0

    #@7
    const-string/jumbo v35, "telephony.test.forceRoaming"

    #@a
    const/16 v36, 0x0

    #@c
    invoke-static/range {v35 .. v36}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    #@f
    move-result v35

    #@10
    if-eqz v35, :cond_0

    #@12
    .line 2941
    move-object/from16 v0, p0

    #@14
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@16
    move-object/from16 v35, v0

    #@18
    const/16 v36, 0x1

    #@1a
    invoke-virtual/range {v35 .. v36}, Landroid/telephony/ServiceState;->setVoiceRoaming(Z)V

    #@1d
    .line 2942
    move-object/from16 v0, p0

    #@1f
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@21
    move-object/from16 v35, v0

    #@23
    const/16 v36, 0x1

    #@25
    invoke-virtual/range {v35 .. v36}, Landroid/telephony/ServiceState;->setDataRoaming(Z)V

    #@28
    .line 2945
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ServiceStateTracker;->useDataRegStateForDataOnlyDevices()V

    #@2b
    .line 2946
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ServiceStateTracker;->resetServiceStateInIwlanMode()V

    #@2e
    .line 2947
    new-instance v35, Ljava/lang/StringBuilder;

    #@30
    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    #@33
    const-string/jumbo v36, "pollStateDone: lte 1 ss=["

    #@36
    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v35

    #@3a
    move-object/from16 v0, p0

    #@3c
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@3e
    move-object/from16 v36, v0

    #@40
    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v35

    #@44
    const-string/jumbo v36, "] newSS=["

    #@47
    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v35

    #@4b
    move-object/from16 v0, p0

    #@4d
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@4f
    move-object/from16 v36, v0

    #@51
    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v35

    #@55
    const-string/jumbo v36, "]"

    #@58
    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v35

    #@5c
    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5f
    move-result-object v35

    #@60
    move-object/from16 v0, p0

    #@62
    move-object/from16 v1, v35

    #@64
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    #@67
    .line 2949
    move-object/from16 v0, p0

    #@69
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@6b
    move-object/from16 v35, v0

    #@6d
    invoke-virtual/range {v35 .. v35}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    #@70
    move-result v35

    #@71
    if-eqz v35, :cond_1b

    #@73
    .line 2950
    move-object/from16 v0, p0

    #@75
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@77
    move-object/from16 v35, v0

    #@79
    invoke-virtual/range {v35 .. v35}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    #@7c
    move-result v35

    #@7d
    if-nez v35, :cond_1a

    #@7f
    const/16 v21, 0x1

    #@81
    .line 2952
    .local v21, "hasRegistered":Z
    :goto_0
    move-object/from16 v0, p0

    #@83
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@85
    move-object/from16 v35, v0

    #@87
    invoke-virtual/range {v35 .. v35}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    #@8a
    move-result v35

    #@8b
    if-nez v35, :cond_1d

    #@8d
    .line 2953
    move-object/from16 v0, p0

    #@8f
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@91
    move-object/from16 v35, v0

    #@93
    invoke-virtual/range {v35 .. v35}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    #@96
    move-result v35

    #@97
    if-eqz v35, :cond_1c

    #@99
    const/16 v17, 0x1

    #@9b
    .line 2956
    .local v17, "hasDeregistered":Z
    :goto_1
    move-object/from16 v0, p0

    #@9d
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@9f
    move-object/from16 v35, v0

    #@a1
    invoke-virtual/range {v35 .. v35}, Landroid/telephony/ServiceState;->getDataRegState()I

    #@a4
    move-result v35

    #@a5
    if-eqz v35, :cond_1f

    #@a7
    .line 2957
    move-object/from16 v0, p0

    #@a9
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@ab
    move-object/from16 v35, v0

    #@ad
    invoke-virtual/range {v35 .. v35}, Landroid/telephony/ServiceState;->getDataRegState()I

    #@b0
    move-result v35

    #@b1
    if-nez v35, :cond_1e

    #@b3
    const/4 v10, 0x1

    #@b4
    .line 2960
    .local v10, "hasCdmaDataConnectionAttached":Z
    :goto_2
    move-object/from16 v0, p0

    #@b6
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@b8
    move-object/from16 v35, v0

    #@ba
    invoke-virtual/range {v35 .. v35}, Landroid/telephony/ServiceState;->getDataRegState()I

    #@bd
    move-result v35

    #@be
    if-nez v35, :cond_21

    #@c0
    .line 2961
    move-object/from16 v0, p0

    #@c2
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@c4
    move-object/from16 v35, v0

    #@c6
    invoke-virtual/range {v35 .. v35}, Landroid/telephony/ServiceState;->getDataRegState()I

    #@c9
    move-result v35

    #@ca
    if-eqz v35, :cond_20

    #@cc
    const/4 v12, 0x1

    #@cd
    .line 2964
    .local v12, "hasCdmaDataConnectionDetached":Z
    :goto_3
    move-object/from16 v0, p0

    #@cf
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@d1
    move-object/from16 v35, v0

    #@d3
    invoke-virtual/range {v35 .. v35}, Landroid/telephony/ServiceState;->getDataRegState()I

    #@d6
    move-result v35

    #@d7
    move-object/from16 v0, p0

    #@d9
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@db
    move-object/from16 v36, v0

    #@dd
    invoke-virtual/range {v36 .. v36}, Landroid/telephony/ServiceState;->getDataRegState()I

    #@e0
    move-result v36

    #@e1
    move/from16 v0, v35

    #@e3
    move/from16 v1, v36

    #@e5
    if-eq v0, v1, :cond_22

    #@e7
    const/4 v11, 0x1

    #@e8
    .line 2966
    .local v11, "hasCdmaDataConnectionChanged":Z
    :goto_4
    move-object/from16 v0, p0

    #@ea
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@ec
    move-object/from16 v35, v0

    #@ee
    invoke-virtual/range {v35 .. v35}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    #@f1
    move-result v35

    #@f2
    .line 2967
    move-object/from16 v0, p0

    #@f4
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@f6
    move-object/from16 v36, v0

    #@f8
    invoke-virtual/range {v36 .. v36}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    #@fb
    move-result v36

    #@fc
    .line 2966
    move/from16 v0, v35

    #@fe
    move/from16 v1, v36

    #@100
    if-eq v0, v1, :cond_23

    #@102
    const/16 v22, 0x1

    #@104
    .line 2969
    .local v22, "hasVoiceRadioTechnologyChanged":Z
    :goto_5
    move-object/from16 v0, p0

    #@106
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@108
    move-object/from16 v35, v0

    #@10a
    invoke-virtual/range {v35 .. v35}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    #@10d
    move-result v35

    #@10e
    .line 2970
    move-object/from16 v0, p0

    #@110
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@112
    move-object/from16 v36, v0

    #@114
    invoke-virtual/range {v36 .. v36}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    #@117
    move-result v36

    #@118
    .line 2969
    move/from16 v0, v35

    #@11a
    move/from16 v1, v36

    #@11c
    if-eq v0, v1, :cond_24

    #@11e
    const/4 v14, 0x1

    #@11f
    .line 2972
    .local v14, "hasDataRadioTechnologyChanged":Z
    :goto_6
    move-object/from16 v0, p0

    #@121
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@123
    move-object/from16 v35, v0

    #@125
    move-object/from16 v0, p0

    #@127
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@129
    move-object/from16 v36, v0

    #@12b
    invoke-virtual/range {v35 .. v36}, Landroid/telephony/ServiceState;->equals(Ljava/lang/Object;)Z

    #@12e
    move-result v35

    #@12f
    if-eqz v35, :cond_25

    #@131
    const/4 v13, 0x0

    #@132
    .line 2974
    .local v13, "hasChanged":Z
    :goto_7
    move-object/from16 v0, p0

    #@134
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@136
    move-object/from16 v35, v0

    #@138
    invoke-virtual/range {v35 .. v35}, Landroid/telephony/ServiceState;->getVoiceRoaming()Z

    #@13b
    move-result v35

    #@13c
    if-nez v35, :cond_26

    #@13e
    move-object/from16 v0, p0

    #@140
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@142
    move-object/from16 v35, v0

    #@144
    invoke-virtual/range {v35 .. v35}, Landroid/telephony/ServiceState;->getVoiceRoaming()Z

    #@147
    move-result v24

    #@148
    .line 2976
    :goto_8
    move-object/from16 v0, p0

    #@14a
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@14c
    move-object/from16 v35, v0

    #@14e
    invoke-virtual/range {v35 .. v35}, Landroid/telephony/ServiceState;->getVoiceRoaming()Z

    #@151
    move-result v35

    #@152
    if-eqz v35, :cond_1

    #@154
    move-object/from16 v0, p0

    #@156
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@158
    move-object/from16 v35, v0

    #@15a
    invoke-virtual/range {v35 .. v35}, Landroid/telephony/ServiceState;->getVoiceRoaming()Z

    #@15d
    move-result v35

    #@15e
    if-eqz v35, :cond_27

    #@160
    :cond_1
    const/16 v23, 0x0

    #@162
    .line 2978
    .local v23, "hasVoiceRoamingOff":Z
    :goto_9
    move-object/from16 v0, p0

    #@164
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@166
    move-object/from16 v35, v0

    #@168
    invoke-virtual/range {v35 .. v35}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    #@16b
    move-result v35

    #@16c
    if-nez v35, :cond_28

    #@16e
    move-object/from16 v0, p0

    #@170
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@172
    move-object/from16 v35, v0

    #@174
    invoke-virtual/range {v35 .. v35}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    #@177
    move-result v16

    #@178
    .line 2980
    :goto_a
    move-object/from16 v0, p0

    #@17a
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@17c
    move-object/from16 v35, v0

    #@17e
    invoke-virtual/range {v35 .. v35}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    #@181
    move-result v35

    #@182
    if-eqz v35, :cond_2

    #@184
    move-object/from16 v0, p0

    #@186
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@188
    move-object/from16 v35, v0

    #@18a
    invoke-virtual/range {v35 .. v35}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    #@18d
    move-result v35

    #@18e
    if-eqz v35, :cond_29

    #@190
    :cond_2
    const/4 v15, 0x0

    #@191
    .line 2982
    .local v15, "hasDataRoamingOff":Z
    :goto_b
    move-object/from16 v0, p0

    #@193
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewCellLoc:Landroid/telephony/CellLocation;

    #@195
    move-object/from16 v35, v0

    #@197
    move-object/from16 v0, p0

    #@199
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mCellLoc:Landroid/telephony/CellLocation;

    #@19b
    move-object/from16 v36, v0

    #@19d
    invoke-virtual/range {v35 .. v36}, Landroid/telephony/CellLocation;->equals(Ljava/lang/Object;)Z

    #@1a0
    move-result v35

    #@1a1
    if-eqz v35, :cond_2a

    #@1a3
    const/16 v18, 0x0

    #@1a5
    .line 2985
    .local v18, "hasLocationChanged":Z
    :goto_c
    move-object/from16 v0, p0

    #@1a7
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@1a9
    move-object/from16 v35, v0

    #@1ab
    invoke-virtual/range {v35 .. v35}, Landroid/telephony/ServiceState;->getDataRegState()I

    #@1ae
    move-result v35

    #@1af
    if-nez v35, :cond_2e

    #@1b1
    .line 2986
    move-object/from16 v0, p0

    #@1b3
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@1b5
    move-object/from16 v35, v0

    #@1b7
    invoke-virtual/range {v35 .. v35}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    #@1ba
    move-result v35

    #@1bb
    const/16 v36, 0xe

    #@1bd
    move/from16 v0, v35

    #@1bf
    move/from16 v1, v36

    #@1c1
    if-ne v0, v1, :cond_2b

    #@1c3
    .line 2987
    move-object/from16 v0, p0

    #@1c5
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@1c7
    move-object/from16 v35, v0

    #@1c9
    invoke-virtual/range {v35 .. v35}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    #@1cc
    move-result v35

    #@1cd
    const/16 v36, 0xd

    #@1cf
    move/from16 v0, v35

    #@1d1
    move/from16 v1, v36

    #@1d3
    if-ne v0, v1, :cond_2b

    #@1d5
    .line 2986
    const/4 v8, 0x1

    #@1d6
    .line 2992
    .local v8, "has4gHandoff":Z
    :goto_d
    move-object/from16 v0, p0

    #@1d8
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@1da
    move-object/from16 v35, v0

    #@1dc
    invoke-virtual/range {v35 .. v35}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    #@1df
    move-result v35

    #@1e0
    const/16 v36, 0xe

    #@1e2
    move/from16 v0, v35

    #@1e4
    move/from16 v1, v36

    #@1e6
    if-eq v0, v1, :cond_3

    #@1e8
    .line 2993
    move-object/from16 v0, p0

    #@1ea
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@1ec
    move-object/from16 v35, v0

    #@1ee
    invoke-virtual/range {v35 .. v35}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    #@1f1
    move-result v35

    #@1f2
    const/16 v36, 0xd

    #@1f4
    move/from16 v0, v35

    #@1f6
    move/from16 v1, v36

    #@1f8
    if-ne v0, v1, :cond_31

    #@1fa
    .line 2994
    :cond_3
    move-object/from16 v0, p0

    #@1fc
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@1fe
    move-object/from16 v35, v0

    #@200
    invoke-virtual/range {v35 .. v35}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    #@203
    move-result v35

    #@204
    const/16 v36, 0xe

    #@206
    move/from16 v0, v35

    #@208
    move/from16 v1, v36

    #@20a
    if-eq v0, v1, :cond_30

    #@20c
    .line 2995
    move-object/from16 v0, p0

    #@20e
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@210
    move-object/from16 v35, v0

    #@212
    invoke-virtual/range {v35 .. v35}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    #@215
    move-result v35

    #@216
    const/16 v36, 0xd

    #@218
    move/from16 v0, v35

    #@21a
    move/from16 v1, v36

    #@21c
    if-eq v0, v1, :cond_2f

    #@21e
    const/16 v20, 0x1

    #@220
    .line 2998
    .local v20, "hasMultiApnSupport":Z
    :goto_e
    move-object/from16 v0, p0

    #@222
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@224
    move-object/from16 v35, v0

    #@226
    invoke-virtual/range {v35 .. v35}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    #@229
    move-result v35

    #@22a
    const/16 v36, 0x4

    #@22c
    move/from16 v0, v35

    #@22e
    move/from16 v1, v36

    #@230
    if-lt v0, v1, :cond_33

    #@232
    .line 2999
    move-object/from16 v0, p0

    #@234
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@236
    move-object/from16 v35, v0

    #@238
    invoke-virtual/range {v35 .. v35}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    #@23b
    move-result v35

    #@23c
    const/16 v36, 0x8

    #@23e
    move/from16 v0, v35

    #@240
    move/from16 v1, v36

    #@242
    if-gt v0, v1, :cond_32

    #@244
    const/16 v19, 0x1

    #@246
    .line 3002
    .local v19, "hasLostMultiApnSupport":Z
    :goto_f
    move-object/from16 v0, p0

    #@248
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@24a
    move-object/from16 v35, v0

    #@24c
    invoke-virtual/range {v35 .. v35}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    #@24f
    move-result-object v35

    #@250
    const-string/jumbo v36, "phone"

    #@253
    invoke-virtual/range {v35 .. v36}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@256
    move-result-object v33

    #@257
    check-cast v33, Landroid/telephony/TelephonyManager;

    #@259
    .line 3005
    .local v33, "tm":Landroid/telephony/TelephonyManager;
    new-instance v35, Ljava/lang/StringBuilder;

    #@25b
    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    #@25e
    const-string/jumbo v36, "pollStateDone: hasRegistered="

    #@261
    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@264
    move-result-object v35

    #@265
    move-object/from16 v0, v35

    #@267
    move/from16 v1, v21

    #@269
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@26c
    move-result-object v35

    #@26d
    .line 3007
    const-string/jumbo v36, " hasDeegistered="

    #@270
    .line 3005
    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@273
    move-result-object v35

    #@274
    move-object/from16 v0, v35

    #@276
    move/from16 v1, v17

    #@278
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@27b
    move-result-object v35

    #@27c
    .line 3008
    const-string/jumbo v36, " hasCdmaDataConnectionAttached="

    #@27f
    .line 3005
    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@282
    move-result-object v35

    #@283
    move-object/from16 v0, v35

    #@285
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@288
    move-result-object v35

    #@289
    .line 3009
    const-string/jumbo v36, " hasCdmaDataConnectionDetached="

    #@28c
    .line 3005
    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28f
    move-result-object v35

    #@290
    move-object/from16 v0, v35

    #@292
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@295
    move-result-object v35

    #@296
    .line 3010
    const-string/jumbo v36, " hasCdmaDataConnectionChanged="

    #@299
    .line 3005
    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29c
    move-result-object v35

    #@29d
    move-object/from16 v0, v35

    #@29f
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@2a2
    move-result-object v35

    #@2a3
    .line 3011
    const-string/jumbo v36, " hasVoiceRadioTechnologyChanged= "

    #@2a6
    .line 3005
    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a9
    move-result-object v35

    #@2aa
    move-object/from16 v0, v35

    #@2ac
    move/from16 v1, v22

    #@2ae
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@2b1
    move-result-object v35

    #@2b2
    .line 3012
    const-string/jumbo v36, " hasDataRadioTechnologyChanged="

    #@2b5
    .line 3005
    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b8
    move-result-object v35

    #@2b9
    move-object/from16 v0, v35

    #@2bb
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@2be
    move-result-object v35

    #@2bf
    .line 3013
    const-string/jumbo v36, " hasChanged="

    #@2c2
    .line 3005
    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c5
    move-result-object v35

    #@2c6
    move-object/from16 v0, v35

    #@2c8
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@2cb
    move-result-object v35

    #@2cc
    .line 3014
    const-string/jumbo v36, " hasVoiceRoamingOn="

    #@2cf
    .line 3005
    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d2
    move-result-object v35

    #@2d3
    move-object/from16 v0, v35

    #@2d5
    move/from16 v1, v24

    #@2d7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@2da
    move-result-object v35

    #@2db
    .line 3015
    const-string/jumbo v36, " hasVoiceRoamingOff="

    #@2de
    .line 3005
    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e1
    move-result-object v35

    #@2e2
    move-object/from16 v0, v35

    #@2e4
    move/from16 v1, v23

    #@2e6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@2e9
    move-result-object v35

    #@2ea
    .line 3016
    const-string/jumbo v36, " hasDataRoamingOn="

    #@2ed
    .line 3005
    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f0
    move-result-object v35

    #@2f1
    move-object/from16 v0, v35

    #@2f3
    move/from16 v1, v16

    #@2f5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@2f8
    move-result-object v35

    #@2f9
    .line 3017
    const-string/jumbo v36, " hasDataRoamingOff="

    #@2fc
    .line 3005
    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2ff
    move-result-object v35

    #@300
    move-object/from16 v0, v35

    #@302
    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@305
    move-result-object v35

    #@306
    .line 3018
    const-string/jumbo v36, " hasLocationChanged="

    #@309
    .line 3005
    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30c
    move-result-object v35

    #@30d
    move-object/from16 v0, v35

    #@30f
    move/from16 v1, v18

    #@311
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@314
    move-result-object v35

    #@315
    .line 3019
    const-string/jumbo v36, " has4gHandoff = "

    #@318
    .line 3005
    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31b
    move-result-object v35

    #@31c
    move-object/from16 v0, v35

    #@31e
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@321
    move-result-object v35

    #@322
    .line 3020
    const-string/jumbo v36, " hasMultiApnSupport="

    #@325
    .line 3005
    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@328
    move-result-object v35

    #@329
    move-object/from16 v0, v35

    #@32b
    move/from16 v1, v20

    #@32d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@330
    move-result-object v35

    #@331
    .line 3021
    const-string/jumbo v36, " hasLostMultiApnSupport="

    #@334
    .line 3005
    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@337
    move-result-object v35

    #@338
    move-object/from16 v0, v35

    #@33a
    move/from16 v1, v19

    #@33c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@33f
    move-result-object v35

    #@340
    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@343
    move-result-object v35

    #@344
    move-object/from16 v0, p0

    #@346
    move-object/from16 v1, v35

    #@348
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    #@34b
    .line 3024
    move-object/from16 v0, p0

    #@34d
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@34f
    move-object/from16 v35, v0

    #@351
    invoke-virtual/range {v35 .. v35}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    #@354
    move-result v35

    #@355
    move-object/from16 v0, p0

    #@357
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@359
    move-object/from16 v36, v0

    #@35b
    invoke-virtual/range {v36 .. v36}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    #@35e
    move-result v36

    #@35f
    move/from16 v0, v35

    #@361
    move/from16 v1, v36

    #@363
    if-ne v0, v1, :cond_4

    #@365
    .line 3025
    move-object/from16 v0, p0

    #@367
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@369
    move-object/from16 v35, v0

    #@36b
    invoke-virtual/range {v35 .. v35}, Landroid/telephony/ServiceState;->getDataRegState()I

    #@36e
    move-result v35

    #@36f
    move-object/from16 v0, p0

    #@371
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@373
    move-object/from16 v36, v0

    #@375
    invoke-virtual/range {v36 .. v36}, Landroid/telephony/ServiceState;->getDataRegState()I

    #@378
    move-result v36

    #@379
    move/from16 v0, v35

    #@37b
    move/from16 v1, v36

    #@37d
    if-eq v0, v1, :cond_5

    #@37f
    .line 3026
    :cond_4
    const/16 v35, 0x4

    #@381
    move/from16 v0, v35

    #@383
    new-array v0, v0, [Ljava/lang/Object;

    #@385
    move-object/from16 v35, v0

    #@387
    move-object/from16 v0, p0

    #@389
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@38b
    move-object/from16 v36, v0

    #@38d
    invoke-virtual/range {v36 .. v36}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    #@390
    move-result v36

    #@391
    invoke-static/range {v36 .. v36}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@394
    move-result-object v36

    #@395
    const/16 v37, 0x0

    #@397
    aput-object v36, v35, v37

    #@399
    .line 3027
    move-object/from16 v0, p0

    #@39b
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@39d
    move-object/from16 v36, v0

    #@39f
    invoke-virtual/range {v36 .. v36}, Landroid/telephony/ServiceState;->getDataRegState()I

    #@3a2
    move-result v36

    #@3a3
    invoke-static/range {v36 .. v36}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@3a6
    move-result-object v36

    #@3a7
    const/16 v37, 0x1

    #@3a9
    aput-object v36, v35, v37

    #@3ab
    move-object/from16 v0, p0

    #@3ad
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@3af
    move-object/from16 v36, v0

    #@3b1
    invoke-virtual/range {v36 .. v36}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    #@3b4
    move-result v36

    #@3b5
    invoke-static/range {v36 .. v36}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@3b8
    move-result-object v36

    #@3b9
    const/16 v37, 0x2

    #@3bb
    aput-object v36, v35, v37

    #@3bd
    move-object/from16 v0, p0

    #@3bf
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@3c1
    move-object/from16 v36, v0

    #@3c3
    invoke-virtual/range {v36 .. v36}, Landroid/telephony/ServiceState;->getDataRegState()I

    #@3c6
    move-result v36

    #@3c7
    invoke-static/range {v36 .. v36}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@3ca
    move-result-object v36

    #@3cb
    const/16 v37, 0x3

    #@3cd
    aput-object v36, v35, v37

    #@3cf
    .line 3026
    const v36, 0xc3c4

    #@3d2
    move/from16 v0, v36

    #@3d4
    move-object/from16 v1, v35

    #@3d6
    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    #@3d9
    .line 3031
    :cond_5
    move-object/from16 v0, p0

    #@3db
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@3dd
    move-object/from16 v34, v0

    #@3df
    .line 3032
    .local v34, "tss":Landroid/telephony/ServiceState;
    move-object/from16 v0, p0

    #@3e1
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@3e3
    move-object/from16 v35, v0

    #@3e5
    move-object/from16 v0, v35

    #@3e7
    move-object/from16 v1, p0

    #@3e9
    iput-object v0, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@3eb
    .line 3033
    move-object/from16 v0, v34

    #@3ed
    move-object/from16 v1, p0

    #@3ef
    iput-object v0, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@3f1
    .line 3035
    move-object/from16 v0, p0

    #@3f3
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@3f5
    move-object/from16 v35, v0

    #@3f7
    invoke-virtual/range {v35 .. v35}, Landroid/telephony/ServiceState;->setStateOutOfService()V

    #@3fa
    .line 3037
    move-object/from16 v0, p0

    #@3fc
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mCellLoc:Landroid/telephony/CellLocation;

    #@3fe
    move-object/from16 v32, v0

    #@400
    check-cast v32, Landroid/telephony/cdma/CdmaCellLocation;

    #@402
    .line 3038
    .local v32, "tcl":Landroid/telephony/cdma/CdmaCellLocation;
    move-object/from16 v0, p0

    #@404
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewCellLoc:Landroid/telephony/CellLocation;

    #@406
    move-object/from16 v35, v0

    #@408
    move-object/from16 v0, v35

    #@40a
    move-object/from16 v1, p0

    #@40c
    iput-object v0, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mCellLoc:Landroid/telephony/CellLocation;

    #@40e
    .line 3039
    move-object/from16 v0, v32

    #@410
    move-object/from16 v1, p0

    #@412
    iput-object v0, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mNewCellLoc:Landroid/telephony/CellLocation;

    #@414
    .line 3041
    move-object/from16 v0, p0

    #@416
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@418
    move-object/from16 v35, v0

    #@41a
    invoke-virtual/range {v35 .. v35}, Landroid/telephony/ServiceState;->setStateOutOfService()V

    #@41d
    .line 3043
    if-eqz v22, :cond_6

    #@41f
    .line 3044
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ServiceStateTracker;->updatePhoneObject()V

    #@422
    .line 3047
    :cond_6
    if-eqz v14, :cond_7

    #@424
    .line 3048
    move-object/from16 v0, p0

    #@426
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@428
    move-object/from16 v35, v0

    #@42a
    invoke-virtual/range {v35 .. v35}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    #@42d
    move-result v35

    #@42e
    move-object/from16 v0, p0

    #@430
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@432
    move-object/from16 v36, v0

    #@434
    invoke-virtual/range {v36 .. v36}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    #@437
    move-result v36

    #@438
    move-object/from16 v0, v33

    #@43a
    move/from16 v1, v35

    #@43c
    move/from16 v2, v36

    #@43e
    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->setDataNetworkTypeForPhone(II)V

    #@441
    .line 3051
    move-object/from16 v0, p0

    #@443
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@445
    move-object/from16 v35, v0

    #@447
    invoke-virtual/range {v35 .. v35}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    #@44a
    move-result v35

    #@44b
    .line 3050
    const/16 v36, 0x12

    #@44d
    move/from16 v0, v36

    #@44f
    move/from16 v1, v35

    #@451
    if-ne v0, v1, :cond_7

    #@453
    .line 3052
    const-string/jumbo v35, "pollStateDone: IWLAN enabled"

    #@456
    move-object/from16 v0, p0

    #@458
    move-object/from16 v1, v35

    #@45a
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    #@45d
    .line 3056
    :cond_7
    if-eqz v21, :cond_8

    #@45f
    .line 3057
    move-object/from16 v0, p0

    #@461
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNetworkAttachedRegistrants:Landroid/os/RegistrantList;

    #@463
    move-object/from16 v35, v0

    #@465
    invoke-virtual/range {v35 .. v35}, Landroid/os/RegistrantList;->notifyRegistrants()V

    #@468
    .line 3060
    :cond_8
    if-eqz v13, :cond_f

    #@46a
    .line 3061
    move-object/from16 v0, p0

    #@46c
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    #@46e
    move-object/from16 v35, v0

    #@470
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getPhoneId()I

    #@473
    move-result v36

    #@474
    invoke-virtual/range {v35 .. v36}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    #@477
    move-result-object v35

    #@478
    if-nez v35, :cond_34

    #@47a
    const/4 v9, 0x0

    #@47b
    .line 3063
    .local v9, "hasBrandOverride":Z
    :goto_10
    if-nez v9, :cond_b

    #@47d
    move-object/from16 v0, p0

    #@47f
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@481
    move-object/from16 v35, v0

    #@483
    invoke-interface/range {v35 .. v35}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    #@486
    move-result-object v35

    #@487
    invoke-virtual/range {v35 .. v35}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    #@48a
    move-result v35

    #@48b
    if-eqz v35, :cond_b

    #@48d
    move-object/from16 v0, p0

    #@48f
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@491
    move-object/from16 v35, v0

    #@493
    invoke-virtual/range {v35 .. v35}, Lcom/android/internal/telephony/GsmCdmaPhone;->isEriFileLoaded()Z

    #@496
    move-result v35

    #@497
    if-eqz v35, :cond_b

    #@499
    .line 3064
    move-object/from16 v0, p0

    #@49b
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@49d
    move-object/from16 v35, v0

    #@49f
    invoke-virtual/range {v35 .. v35}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    #@4a2
    move-result v35

    #@4a3
    const/16 v36, 0xe

    #@4a5
    move/from16 v0, v35

    #@4a7
    move/from16 v1, v36

    #@4a9
    if-ne v0, v1, :cond_9

    #@4ab
    .line 3065
    move-object/from16 v0, p0

    #@4ad
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@4af
    move-object/from16 v35, v0

    #@4b1
    invoke-virtual/range {v35 .. v35}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    #@4b4
    move-result-object v35

    #@4b5
    invoke-virtual/range {v35 .. v35}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@4b8
    move-result-object v35

    #@4b9
    const v36, 0x112009d

    #@4bc
    invoke-virtual/range {v35 .. v36}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@4bf
    move-result v35

    #@4c0
    .line 3063
    if-eqz v35, :cond_b

    #@4c2
    .line 3068
    :cond_9
    move-object/from16 v0, p0

    #@4c4
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@4c6
    move-object/from16 v35, v0

    #@4c8
    invoke-virtual/range {v35 .. v35}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    #@4cb
    move-result-object v5

    #@4cc
    .line 3070
    .local v5, "eriText":Ljava/lang/String;
    move-object/from16 v0, p0

    #@4ce
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@4d0
    move-object/from16 v35, v0

    #@4d2
    invoke-virtual/range {v35 .. v35}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    #@4d5
    move-result v35

    #@4d6
    if-nez v35, :cond_36

    #@4d8
    .line 3071
    move-object/from16 v0, p0

    #@4da
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@4dc
    move-object/from16 v35, v0

    #@4de
    invoke-virtual/range {v35 .. v35}, Lcom/android/internal/telephony/GsmCdmaPhone;->getCdmaEriText()Ljava/lang/String;

    #@4e1
    move-result-object v5

    #@4e2
    .line 3085
    :cond_a
    :goto_11
    move-object/from16 v0, p0

    #@4e4
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@4e6
    move-object/from16 v35, v0

    #@4e8
    move-object/from16 v0, v35

    #@4ea
    invoke-virtual {v0, v5}, Landroid/telephony/ServiceState;->setOperatorAlphaLong(Ljava/lang/String;)V

    #@4ed
    .line 3088
    .end local v5    # "eriText":Ljava/lang/String;
    :cond_b
    move-object/from16 v0, p0

    #@4ef
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@4f1
    move-object/from16 v35, v0

    #@4f3
    if-eqz v35, :cond_c

    #@4f5
    move-object/from16 v0, p0

    #@4f7
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@4f9
    move-object/from16 v35, v0

    #@4fb
    invoke-virtual/range {v35 .. v35}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getState()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    #@4fe
    move-result-object v35

    #@4ff
    sget-object v36, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_READY:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    #@501
    move-object/from16 v0, v35

    #@503
    move-object/from16 v1, v36

    #@505
    if-ne v0, v1, :cond_c

    #@507
    .line 3089
    move-object/from16 v0, p0

    #@509
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    #@50b
    move-object/from16 v35, v0

    #@50d
    if-eqz v35, :cond_c

    #@50f
    move-object/from16 v0, p0

    #@511
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@513
    move-object/from16 v35, v0

    #@515
    invoke-virtual/range {v35 .. v35}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    #@518
    move-result v35

    #@519
    if-nez v35, :cond_c

    #@51b
    .line 3090
    move-object/from16 v0, p0

    #@51d
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@51f
    move-object/from16 v35, v0

    #@521
    invoke-virtual/range {v35 .. v35}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    #@524
    move-result v35

    #@525
    const/16 v36, 0xe

    #@527
    move/from16 v0, v35

    #@529
    move/from16 v1, v36

    #@52b
    if-eq v0, v1, :cond_c

    #@52d
    .line 3095
    move-object/from16 v0, p0

    #@52f
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    #@531
    move-object/from16 v35, v0

    #@533
    check-cast v35, Lcom/android/internal/telephony/uicc/RuimRecords;

    #@535
    invoke-virtual/range {v35 .. v35}, Lcom/android/internal/telephony/uicc/RuimRecords;->getCsimSpnDisplayCondition()Z

    #@538
    move-result v30

    #@539
    .line 3096
    .local v30, "showSpn":Z
    move-object/from16 v0, p0

    #@53b
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@53d
    move-object/from16 v35, v0

    #@53f
    invoke-virtual/range {v35 .. v35}, Landroid/telephony/ServiceState;->getCdmaEriIconIndex()I

    #@542
    move-result v25

    #@543
    .line 3098
    .local v25, "iconIndex":I
    if-eqz v30, :cond_c

    #@545
    const/16 v35, 0x1

    #@547
    move/from16 v0, v25

    #@549
    move/from16 v1, v35

    #@54b
    if-ne v0, v1, :cond_c

    #@54d
    .line 3099
    move-object/from16 v0, p0

    #@54f
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@551
    move-object/from16 v35, v0

    #@553
    invoke-virtual/range {v35 .. v35}, Landroid/telephony/ServiceState;->getSystemId()I

    #@556
    move-result v35

    #@557
    move-object/from16 v0, p0

    #@559
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@55b
    move-object/from16 v36, v0

    #@55d
    invoke-virtual/range {v36 .. v36}, Landroid/telephony/ServiceState;->getNetworkId()I

    #@560
    move-result v36

    #@561
    move-object/from16 v0, p0

    #@563
    move/from16 v1, v35

    #@565
    move/from16 v2, v36

    #@567
    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->isInHomeSidNid(II)Z

    #@56a
    move-result v35

    #@56b
    .line 3098
    if-eqz v35, :cond_c

    #@56d
    .line 3100
    move-object/from16 v0, p0

    #@56f
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    #@571
    move-object/from16 v35, v0

    #@573
    if-eqz v35, :cond_c

    #@575
    .line 3101
    move-object/from16 v0, p0

    #@577
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@579
    move-object/from16 v35, v0

    #@57b
    move-object/from16 v0, p0

    #@57d
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    #@57f
    move-object/from16 v36, v0

    #@581
    invoke-virtual/range {v36 .. v36}, Lcom/android/internal/telephony/uicc/IccRecords;->getServiceProviderName()Ljava/lang/String;

    #@584
    move-result-object v36

    #@585
    invoke-virtual/range {v35 .. v36}, Landroid/telephony/ServiceState;->setOperatorAlphaLong(Ljava/lang/String;)V

    #@588
    .line 3107
    .end local v25    # "iconIndex":I
    .end local v30    # "showSpn":Z
    :cond_c
    move-object/from16 v0, p0

    #@58a
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@58c
    move-object/from16 v35, v0

    #@58e
    invoke-virtual/range {v35 .. v35}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    #@591
    move-result v35

    #@592
    move-object/from16 v0, p0

    #@594
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@596
    move-object/from16 v36, v0

    #@598
    invoke-virtual/range {v36 .. v36}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    #@59b
    move-result-object v36

    #@59c
    move-object/from16 v0, v33

    #@59e
    move/from16 v1, v35

    #@5a0
    move-object/from16 v2, v36

    #@5a2
    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->setNetworkOperatorNameForPhone(ILjava/lang/String;)V

    #@5a5
    .line 3109
    move-object/from16 v0, p0

    #@5a7
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@5a9
    move-object/from16 v35, v0

    #@5ab
    invoke-virtual/range {v35 .. v35}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    #@5ae
    move-result v35

    #@5af
    move-object/from16 v0, v33

    #@5b1
    move/from16 v1, v35

    #@5b3
    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getNetworkOperatorForPhone(I)Ljava/lang/String;

    #@5b6
    move-result-object v29

    #@5b7
    .line 3110
    .local v29, "prevOperatorNumeric":Ljava/lang/String;
    move-object/from16 v0, p0

    #@5b9
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@5bb
    move-object/from16 v35, v0

    #@5bd
    invoke-virtual/range {v35 .. v35}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    #@5c0
    move-result-object v28

    #@5c1
    .line 3112
    .local v28, "operatorNumeric":Ljava/lang/String;
    move-object/from16 v0, p0

    #@5c3
    move-object/from16 v1, v28

    #@5c5
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->isInvalidOperatorNumeric(Ljava/lang/String;)Z

    #@5c8
    move-result v35

    #@5c9
    if-eqz v35, :cond_d

    #@5cb
    .line 3113
    move-object/from16 v0, p0

    #@5cd
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@5cf
    move-object/from16 v35, v0

    #@5d1
    invoke-virtual/range {v35 .. v35}, Landroid/telephony/ServiceState;->getSystemId()I

    #@5d4
    move-result v31

    #@5d5
    .line 3114
    .local v31, "sid":I
    move-object/from16 v0, p0

    #@5d7
    move-object/from16 v1, v28

    #@5d9
    move/from16 v2, v31

    #@5db
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->fixUnknownMcc(Ljava/lang/String;I)Ljava/lang/String;

    #@5de
    move-result-object v28

    #@5df
    .line 3116
    .end local v31    # "sid":I
    :cond_d
    move-object/from16 v0, p0

    #@5e1
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@5e3
    move-object/from16 v35, v0

    #@5e5
    invoke-virtual/range {v35 .. v35}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    #@5e8
    move-result v35

    #@5e9
    move-object/from16 v0, v33

    #@5eb
    move/from16 v1, v35

    #@5ed
    move-object/from16 v2, v28

    #@5ef
    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->setNetworkOperatorNumericForPhone(ILjava/lang/String;)V

    #@5f2
    .line 3118
    move-object/from16 v0, p0

    #@5f4
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@5f6
    move-object/from16 v35, v0

    #@5f8
    invoke-virtual/range {v35 .. v35}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    #@5fb
    move-result-object v35

    #@5fc
    .line 3117
    move-object/from16 v0, p0

    #@5fe
    move-object/from16 v1, v28

    #@600
    move-object/from16 v2, v29

    #@602
    move-object/from16 v3, v35

    #@604
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->updateCarrierMccMncConfiguration(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    #@607
    .line 3120
    move-object/from16 v0, p0

    #@609
    move-object/from16 v1, v28

    #@60b
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->isInvalidOperatorNumeric(Ljava/lang/String;)Z

    #@60e
    move-result v35

    #@60f
    if-eqz v35, :cond_39

    #@611
    .line 3121
    const-string/jumbo v35, "operatorNumeric is null"

    #@614
    move-object/from16 v0, p0

    #@616
    move-object/from16 v1, v35

    #@618
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    #@61b
    .line 3122
    move-object/from16 v0, p0

    #@61d
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@61f
    move-object/from16 v35, v0

    #@621
    invoke-virtual/range {v35 .. v35}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    #@624
    move-result v35

    #@625
    const-string/jumbo v36, ""

    #@628
    move-object/from16 v0, v33

    #@62a
    move/from16 v1, v35

    #@62c
    move-object/from16 v2, v36

    #@62e
    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->setNetworkCountryIsoForPhone(ILjava/lang/String;)V

    #@631
    .line 3123
    const/16 v35, 0x0

    #@633
    move/from16 v0, v35

    #@635
    move-object/from16 v1, p0

    #@637
    iput-boolean v0, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mGotCountryCode:Z

    #@639
    .line 3147
    :cond_e
    :goto_12
    move-object/from16 v0, p0

    #@63b
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@63d
    move-object/from16 v35, v0

    #@63f
    invoke-virtual/range {v35 .. v35}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    #@642
    move-result v36

    #@643
    .line 3148
    move-object/from16 v0, p0

    #@645
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@647
    move-object/from16 v35, v0

    #@649
    invoke-virtual/range {v35 .. v35}, Landroid/telephony/ServiceState;->getVoiceRoaming()Z

    #@64c
    move-result v35

    #@64d
    if-nez v35, :cond_3a

    #@64f
    move-object/from16 v0, p0

    #@651
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@653
    move-object/from16 v35, v0

    #@655
    invoke-virtual/range {v35 .. v35}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    #@658
    move-result v35

    #@659
    .line 3147
    :goto_13
    move-object/from16 v0, v33

    #@65b
    move/from16 v1, v36

    #@65d
    move/from16 v2, v35

    #@65f
    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->setNetworkRoamingForPhone(IZ)V

    #@662
    .line 3150
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ServiceStateTracker;->updateSpnDisplay()V

    #@665
    .line 3151
    move-object/from16 v0, p0

    #@667
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@669
    move-object/from16 v35, v0

    #@66b
    move-object/from16 v0, p0

    #@66d
    move-object/from16 v1, v35

    #@66f
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->setRoamingType(Landroid/telephony/ServiceState;)V

    #@672
    .line 3152
    new-instance v35, Ljava/lang/StringBuilder;

    #@674
    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    #@677
    const-string/jumbo v36, "Broadcasting ServiceState : "

    #@67a
    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@67d
    move-result-object v35

    #@67e
    move-object/from16 v0, p0

    #@680
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@682
    move-object/from16 v36, v0

    #@684
    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@687
    move-result-object v35

    #@688
    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@68b
    move-result-object v35

    #@68c
    move-object/from16 v0, p0

    #@68e
    move-object/from16 v1, v35

    #@690
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    #@693
    .line 3153
    move-object/from16 v0, p0

    #@695
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@697
    move-object/from16 v35, v0

    #@699
    move-object/from16 v0, p0

    #@69b
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@69d
    move-object/from16 v36, v0

    #@69f
    invoke-virtual/range {v35 .. v36}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifyServiceStateChanged(Landroid/telephony/ServiceState;)V

    #@6a2
    .line 3156
    .end local v9    # "hasBrandOverride":Z
    .end local v28    # "operatorNumeric":Ljava/lang/String;
    .end local v29    # "prevOperatorNumeric":Ljava/lang/String;
    :cond_f
    if-nez v10, :cond_10

    #@6a4
    if-eqz v8, :cond_11

    #@6a6
    .line 3157
    :cond_10
    move-object/from16 v0, p0

    #@6a8
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mAttachedRegistrants:Landroid/os/RegistrantList;

    #@6aa
    move-object/from16 v35, v0

    #@6ac
    invoke-virtual/range {v35 .. v35}, Landroid/os/RegistrantList;->notifyRegistrants()V

    #@6af
    .line 3160
    :cond_11
    if-eqz v12, :cond_12

    #@6b1
    .line 3161
    move-object/from16 v0, p0

    #@6b3
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mDetachedRegistrants:Landroid/os/RegistrantList;

    #@6b5
    move-object/from16 v35, v0

    #@6b7
    invoke-virtual/range {v35 .. v35}, Landroid/os/RegistrantList;->notifyRegistrants()V

    #@6ba
    .line 3164
    :cond_12
    if-nez v11, :cond_13

    #@6bc
    if-eqz v14, :cond_14

    #@6be
    .line 3165
    :cond_13
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ServiceStateTracker;->notifyDataRegStateRilRadioTechnologyChanged()V

    #@6c1
    .line 3167
    move-object/from16 v0, p0

    #@6c3
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@6c5
    move-object/from16 v35, v0

    #@6c7
    invoke-virtual/range {v35 .. v35}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    #@6ca
    move-result v35

    #@6cb
    .line 3166
    const/16 v36, 0x12

    #@6cd
    move/from16 v0, v36

    #@6cf
    move/from16 v1, v35

    #@6d1
    if-ne v0, v1, :cond_3b

    #@6d3
    .line 3168
    move-object/from16 v0, p0

    #@6d5
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@6d7
    move-object/from16 v35, v0

    #@6d9
    const-string/jumbo v36, "iwlanAvailable"

    #@6dc
    invoke-virtual/range {v35 .. v36}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifyDataConnection(Ljava/lang/String;)V

    #@6df
    .line 3174
    :cond_14
    :goto_14
    if-eqz v24, :cond_15

    #@6e1
    .line 3175
    move-object/from16 v0, p0

    #@6e3
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mVoiceRoamingOnRegistrants:Landroid/os/RegistrantList;

    #@6e5
    move-object/from16 v35, v0

    #@6e7
    invoke-virtual/range {v35 .. v35}, Landroid/os/RegistrantList;->notifyRegistrants()V

    #@6ea
    .line 3178
    :cond_15
    if-eqz v23, :cond_16

    #@6ec
    .line 3179
    move-object/from16 v0, p0

    #@6ee
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mVoiceRoamingOffRegistrants:Landroid/os/RegistrantList;

    #@6f0
    move-object/from16 v35, v0

    #@6f2
    invoke-virtual/range {v35 .. v35}, Landroid/os/RegistrantList;->notifyRegistrants()V

    #@6f5
    .line 3182
    :cond_16
    if-eqz v16, :cond_17

    #@6f7
    .line 3183
    move-object/from16 v0, p0

    #@6f9
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mDataRoamingOnRegistrants:Landroid/os/RegistrantList;

    #@6fb
    move-object/from16 v35, v0

    #@6fd
    invoke-virtual/range {v35 .. v35}, Landroid/os/RegistrantList;->notifyRegistrants()V

    #@700
    .line 3186
    :cond_17
    if-eqz v15, :cond_18

    #@702
    .line 3187
    move-object/from16 v0, p0

    #@704
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mDataRoamingOffRegistrants:Landroid/os/RegistrantList;

    #@706
    move-object/from16 v35, v0

    #@708
    invoke-virtual/range {v35 .. v35}, Landroid/os/RegistrantList;->notifyRegistrants()V

    #@70b
    .line 3190
    :cond_18
    if-eqz v18, :cond_19

    #@70d
    .line 3191
    move-object/from16 v0, p0

    #@70f
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@711
    move-object/from16 v35, v0

    #@713
    invoke-virtual/range {v35 .. v35}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifyLocationChanged()V

    #@716
    .line 2937
    :cond_19
    return-void

    #@717
    .line 2950
    .end local v8    # "has4gHandoff":Z
    .end local v10    # "hasCdmaDataConnectionAttached":Z
    .end local v11    # "hasCdmaDataConnectionChanged":Z
    .end local v12    # "hasCdmaDataConnectionDetached":Z
    .end local v13    # "hasChanged":Z
    .end local v14    # "hasDataRadioTechnologyChanged":Z
    .end local v15    # "hasDataRoamingOff":Z
    .end local v17    # "hasDeregistered":Z
    .end local v18    # "hasLocationChanged":Z
    .end local v19    # "hasLostMultiApnSupport":Z
    .end local v20    # "hasMultiApnSupport":Z
    .end local v21    # "hasRegistered":Z
    .end local v22    # "hasVoiceRadioTechnologyChanged":Z
    .end local v23    # "hasVoiceRoamingOff":Z
    .end local v32    # "tcl":Landroid/telephony/cdma/CdmaCellLocation;
    .end local v33    # "tm":Landroid/telephony/TelephonyManager;
    .end local v34    # "tss":Landroid/telephony/ServiceState;
    :cond_1a
    const/16 v21, 0x0

    #@719
    .restart local v21    # "hasRegistered":Z
    goto/16 :goto_0

    #@71b
    .line 2949
    .end local v21    # "hasRegistered":Z
    :cond_1b
    const/16 v21, 0x0

    #@71d
    .restart local v21    # "hasRegistered":Z
    goto/16 :goto_0

    #@71f
    .line 2953
    :cond_1c
    const/16 v17, 0x0

    #@721
    .restart local v17    # "hasDeregistered":Z
    goto/16 :goto_1

    #@723
    .line 2952
    .end local v17    # "hasDeregistered":Z
    :cond_1d
    const/16 v17, 0x0

    #@725
    .restart local v17    # "hasDeregistered":Z
    goto/16 :goto_1

    #@727
    .line 2957
    :cond_1e
    const/4 v10, 0x0

    #@728
    .restart local v10    # "hasCdmaDataConnectionAttached":Z
    goto/16 :goto_2

    #@72a
    .line 2956
    .end local v10    # "hasCdmaDataConnectionAttached":Z
    :cond_1f
    const/4 v10, 0x0

    #@72b
    .restart local v10    # "hasCdmaDataConnectionAttached":Z
    goto/16 :goto_2

    #@72d
    .line 2961
    :cond_20
    const/4 v12, 0x0

    #@72e
    .restart local v12    # "hasCdmaDataConnectionDetached":Z
    goto/16 :goto_3

    #@730
    .line 2960
    .end local v12    # "hasCdmaDataConnectionDetached":Z
    :cond_21
    const/4 v12, 0x0

    #@731
    .restart local v12    # "hasCdmaDataConnectionDetached":Z
    goto/16 :goto_3

    #@733
    .line 2964
    :cond_22
    const/4 v11, 0x0

    #@734
    .restart local v11    # "hasCdmaDataConnectionChanged":Z
    goto/16 :goto_4

    #@736
    .line 2966
    :cond_23
    const/16 v22, 0x0

    #@738
    .restart local v22    # "hasVoiceRadioTechnologyChanged":Z
    goto/16 :goto_5

    #@73a
    .line 2969
    :cond_24
    const/4 v14, 0x0

    #@73b
    .restart local v14    # "hasDataRadioTechnologyChanged":Z
    goto/16 :goto_6

    #@73d
    .line 2972
    :cond_25
    const/4 v13, 0x1

    #@73e
    .restart local v13    # "hasChanged":Z
    goto/16 :goto_7

    #@740
    .line 2974
    :cond_26
    const/16 v24, 0x0

    #@742
    .local v24, "hasVoiceRoamingOn":Z
    goto/16 :goto_8

    #@744
    .line 2976
    .end local v24    # "hasVoiceRoamingOn":Z
    :cond_27
    const/16 v23, 0x1

    #@746
    .restart local v23    # "hasVoiceRoamingOff":Z
    goto/16 :goto_9

    #@748
    .line 2978
    :cond_28
    const/16 v16, 0x0

    #@74a
    .local v16, "hasDataRoamingOn":Z
    goto/16 :goto_a

    #@74c
    .line 2980
    .end local v16    # "hasDataRoamingOn":Z
    :cond_29
    const/4 v15, 0x1

    #@74d
    .restart local v15    # "hasDataRoamingOff":Z
    goto/16 :goto_b

    #@74f
    .line 2982
    :cond_2a
    const/16 v18, 0x1

    #@751
    .restart local v18    # "hasLocationChanged":Z
    goto/16 :goto_c

    #@753
    .line 2988
    :cond_2b
    move-object/from16 v0, p0

    #@755
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@757
    move-object/from16 v35, v0

    #@759
    invoke-virtual/range {v35 .. v35}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    #@75c
    move-result v35

    #@75d
    const/16 v36, 0xd

    #@75f
    move/from16 v0, v35

    #@761
    move/from16 v1, v36

    #@763
    if-ne v0, v1, :cond_2d

    #@765
    .line 2989
    move-object/from16 v0, p0

    #@767
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@769
    move-object/from16 v35, v0

    #@76b
    invoke-virtual/range {v35 .. v35}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    #@76e
    move-result v35

    #@76f
    const/16 v36, 0xe

    #@771
    move/from16 v0, v35

    #@773
    move/from16 v1, v36

    #@775
    if-ne v0, v1, :cond_2c

    #@777
    const/4 v8, 0x1

    #@778
    .restart local v8    # "has4gHandoff":Z
    goto/16 :goto_d

    #@77a
    .end local v8    # "has4gHandoff":Z
    :cond_2c
    const/4 v8, 0x0

    #@77b
    .restart local v8    # "has4gHandoff":Z
    goto/16 :goto_d

    #@77d
    .line 2988
    .end local v8    # "has4gHandoff":Z
    :cond_2d
    const/4 v8, 0x0

    #@77e
    .restart local v8    # "has4gHandoff":Z
    goto/16 :goto_d

    #@780
    .line 2985
    .end local v8    # "has4gHandoff":Z
    :cond_2e
    const/4 v8, 0x0

    #@781
    .restart local v8    # "has4gHandoff":Z
    goto/16 :goto_d

    #@783
    .line 2995
    :cond_2f
    const/16 v20, 0x0

    #@785
    .restart local v20    # "hasMultiApnSupport":Z
    goto/16 :goto_e

    #@787
    .line 2994
    .end local v20    # "hasMultiApnSupport":Z
    :cond_30
    const/16 v20, 0x0

    #@789
    .restart local v20    # "hasMultiApnSupport":Z
    goto/16 :goto_e

    #@78b
    .line 2992
    .end local v20    # "hasMultiApnSupport":Z
    :cond_31
    const/16 v20, 0x0

    #@78d
    .restart local v20    # "hasMultiApnSupport":Z
    goto/16 :goto_e

    #@78f
    .line 2999
    :cond_32
    const/16 v19, 0x0

    #@791
    .restart local v19    # "hasLostMultiApnSupport":Z
    goto/16 :goto_f

    #@793
    .line 2998
    .end local v19    # "hasLostMultiApnSupport":Z
    :cond_33
    const/16 v19, 0x0

    #@795
    .restart local v19    # "hasLostMultiApnSupport":Z
    goto/16 :goto_f

    #@797
    .line 3062
    .restart local v32    # "tcl":Landroid/telephony/cdma/CdmaCellLocation;
    .restart local v33    # "tm":Landroid/telephony/TelephonyManager;
    .restart local v34    # "tss":Landroid/telephony/ServiceState;
    :cond_34
    move-object/from16 v0, p0

    #@799
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    #@79b
    move-object/from16 v35, v0

    #@79d
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getPhoneId()I

    #@7a0
    move-result v36

    #@7a1
    invoke-virtual/range {v35 .. v36}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    #@7a4
    move-result-object v35

    #@7a5
    invoke-virtual/range {v35 .. v35}, Lcom/android/internal/telephony/uicc/UiccCard;->getOperatorBrandOverride()Ljava/lang/String;

    #@7a8
    move-result-object v35

    #@7a9
    if-eqz v35, :cond_35

    #@7ab
    const/4 v9, 0x1

    #@7ac
    goto/16 :goto_10

    #@7ae
    :cond_35
    const/4 v9, 0x0

    #@7af
    goto/16 :goto_10

    #@7b1
    .line 3072
    .restart local v5    # "eriText":Ljava/lang/String;
    .restart local v9    # "hasBrandOverride":Z
    :cond_36
    move-object/from16 v0, p0

    #@7b3
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@7b5
    move-object/from16 v35, v0

    #@7b7
    invoke-virtual/range {v35 .. v35}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    #@7ba
    move-result v35

    #@7bb
    const/16 v36, 0x3

    #@7bd
    move/from16 v0, v35

    #@7bf
    move/from16 v1, v36

    #@7c1
    if-ne v0, v1, :cond_38

    #@7c3
    .line 3073
    move-object/from16 v0, p0

    #@7c5
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    #@7c7
    move-object/from16 v35, v0

    #@7c9
    if-eqz v35, :cond_37

    #@7cb
    move-object/from16 v0, p0

    #@7cd
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    #@7cf
    move-object/from16 v35, v0

    #@7d1
    invoke-virtual/range {v35 .. v35}, Lcom/android/internal/telephony/uicc/IccRecords;->getServiceProviderName()Ljava/lang/String;

    #@7d4
    move-result-object v5

    #@7d5
    .line 3074
    :goto_15
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@7d8
    move-result v35

    #@7d9
    if-eqz v35, :cond_a

    #@7db
    .line 3077
    const-string/jumbo v35, "ro.cdma.home.operator.alpha"

    #@7de
    invoke-static/range {v35 .. v35}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    #@7e1
    move-result-object v5

    #@7e2
    goto/16 :goto_11

    #@7e4
    .line 3073
    :cond_37
    const/4 v5, 0x0

    #@7e5
    goto :goto_15

    #@7e6
    .line 3079
    :cond_38
    move-object/from16 v0, p0

    #@7e8
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@7ea
    move-object/from16 v35, v0

    #@7ec
    invoke-virtual/range {v35 .. v35}, Landroid/telephony/ServiceState;->getDataRegState()I

    #@7ef
    move-result v35

    #@7f0
    if-eqz v35, :cond_a

    #@7f2
    .line 3082
    move-object/from16 v0, p0

    #@7f4
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@7f6
    move-object/from16 v35, v0

    #@7f8
    invoke-virtual/range {v35 .. v35}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    #@7fb
    move-result-object v35

    #@7fc
    .line 3083
    const v36, 0x10400e4

    #@7ff
    .line 3082
    invoke-virtual/range {v35 .. v36}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@802
    move-result-object v35

    #@803
    invoke-interface/range {v35 .. v35}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@806
    move-result-object v5

    #@807
    goto/16 :goto_11

    #@809
    .line 3125
    .end local v5    # "eriText":Ljava/lang/String;
    .restart local v28    # "operatorNumeric":Ljava/lang/String;
    .restart local v29    # "prevOperatorNumeric":Ljava/lang/String;
    :cond_39
    const-string/jumbo v26, ""

    #@80c
    .line 3126
    .local v26, "isoCountryCode":Ljava/lang/String;
    const/16 v35, 0x0

    #@80e
    const/16 v36, 0x3

    #@810
    move-object/from16 v0, v28

    #@812
    move/from16 v1, v35

    #@814
    move/from16 v2, v36

    #@816
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@819
    move-result-object v27

    #@81a
    .line 3129
    .local v27, "mcc":Ljava/lang/String;
    const/16 v35, 0x0

    #@81c
    const/16 v36, 0x3

    #@81e
    .line 3128
    :try_start_0
    move-object/from16 v0, v28

    #@820
    move/from16 v1, v35

    #@822
    move/from16 v2, v36

    #@824
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@827
    move-result-object v35

    #@828
    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@82b
    move-result v35

    #@82c
    invoke-static/range {v35 .. v35}, Lcom/android/internal/telephony/MccTable;->countryCodeForMcc(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    #@82f
    move-result-object v26

    #@830
    .line 3136
    :goto_16
    move-object/from16 v0, p0

    #@832
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@834
    move-object/from16 v35, v0

    #@836
    invoke-virtual/range {v35 .. v35}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    #@839
    move-result v35

    #@83a
    move-object/from16 v0, v33

    #@83c
    move/from16 v1, v35

    #@83e
    move-object/from16 v2, v26

    #@840
    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->setNetworkCountryIsoForPhone(ILjava/lang/String;)V

    #@843
    .line 3137
    const/16 v35, 0x1

    #@845
    move/from16 v0, v35

    #@847
    move-object/from16 v1, p0

    #@849
    iput-boolean v0, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mGotCountryCode:Z

    #@84b
    .line 3139
    move-object/from16 v0, p0

    #@84d
    move-object/from16 v1, v28

    #@84f
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->setOperatorIdd(Ljava/lang/String;)V

    #@852
    .line 3141
    move-object/from16 v0, p0

    #@854
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@856
    move-object/from16 v35, v0

    #@858
    .line 3142
    move-object/from16 v0, p0

    #@85a
    iget-boolean v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNeedFixZoneAfterNitz:Z

    #@85c
    move/from16 v36, v0

    #@85e
    .line 3141
    move-object/from16 v0, p0

    #@860
    move-object/from16 v1, v35

    #@862
    move-object/from16 v2, v28

    #@864
    move-object/from16 v3, v29

    #@866
    move/from16 v4, v36

    #@868
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/ServiceStateTracker;->shouldFixTimeZoneNow(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Ljava/lang/String;Z)Z

    #@86b
    move-result v35

    #@86c
    if-eqz v35, :cond_e

    #@86e
    .line 3143
    move-object/from16 v0, p0

    #@870
    move-object/from16 v1, v26

    #@872
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->fixTimeZone(Ljava/lang/String;)V

    #@875
    goto/16 :goto_12

    #@877
    .line 3132
    :catch_0
    move-exception v7

    #@878
    .line 3133
    .local v7, "ex":Ljava/lang/StringIndexOutOfBoundsException;
    new-instance v35, Ljava/lang/StringBuilder;

    #@87a
    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    #@87d
    const-string/jumbo v36, "countryCodeForMcc error"

    #@880
    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@883
    move-result-object v35

    #@884
    move-object/from16 v0, v35

    #@886
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@889
    move-result-object v35

    #@88a
    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@88d
    move-result-object v35

    #@88e
    move-object/from16 v0, p0

    #@890
    move-object/from16 v1, v35

    #@892
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->loge(Ljava/lang/String;)V

    #@895
    goto :goto_16

    #@896
    .line 3130
    .end local v7    # "ex":Ljava/lang/StringIndexOutOfBoundsException;
    :catch_1
    move-exception v6

    #@897
    .line 3131
    .local v6, "ex":Ljava/lang/NumberFormatException;
    new-instance v35, Ljava/lang/StringBuilder;

    #@899
    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    #@89c
    const-string/jumbo v36, "countryCodeForMcc error"

    #@89f
    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8a2
    move-result-object v35

    #@8a3
    move-object/from16 v0, v35

    #@8a5
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@8a8
    move-result-object v35

    #@8a9
    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8ac
    move-result-object v35

    #@8ad
    move-object/from16 v0, p0

    #@8af
    move-object/from16 v1, v35

    #@8b1
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->loge(Ljava/lang/String;)V

    #@8b4
    goto/16 :goto_16

    #@8b6
    .line 3148
    .end local v6    # "ex":Ljava/lang/NumberFormatException;
    .end local v26    # "isoCountryCode":Ljava/lang/String;
    .end local v27    # "mcc":Ljava/lang/String;
    :cond_3a
    const/16 v35, 0x1

    #@8b8
    goto/16 :goto_13

    #@8ba
    .line 3170
    .end local v9    # "hasBrandOverride":Z
    .end local v28    # "operatorNumeric":Ljava/lang/String;
    .end local v29    # "prevOperatorNumeric":Ljava/lang/String;
    :cond_3b
    move-object/from16 v0, p0

    #@8bc
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@8be
    move-object/from16 v35, v0

    #@8c0
    const/16 v36, 0x0

    #@8c2
    invoke-virtual/range {v35 .. v36}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifyDataConnection(Ljava/lang/String;)V

    #@8c5
    goto/16 :goto_14
.end method

.method public powerOffRadioSafely(Lcom/android/internal/telephony/dataconnection/DcTracker;)V
    .locals 8
    .param p1, "dcTracker"    # Lcom/android/internal/telephony/dataconnection/DcTracker;

    #@0
    .prologue
    .line 4185
    monitor-enter p0

    #@1
    .line 4186
    :try_start_0
    iget-boolean v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPendingRadioPowerOffAfterDataOff:Z

    #@3
    if-nez v5, :cond_2

    #@5
    .line 4187
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
    .line 4188
    :cond_0
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    #@18
    move-result v1

    #@19
    .line 4191
    .local v1, "dds":I
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->isDisconnected()Z

    #@1c
    move-result v5

    #@1d
    if-eqz v5, :cond_3

    #@1f
    .line 4192
    iget-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@21
    invoke-virtual {v5}, Lcom/android/internal/telephony/GsmCdmaPhone;->getSubId()I

    #@24
    move-result v5

    #@25
    if-eq v1, v5, :cond_1

    #@27
    .line 4193
    iget-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@29
    invoke-virtual {v5}, Lcom/android/internal/telephony/GsmCdmaPhone;->getSubId()I

    #@2c
    move-result v5

    #@2d
    if-eq v1, v5, :cond_3

    #@2f
    .line 4194
    invoke-static {}, Lcom/android/internal/telephony/ProxyController;->getInstance()Lcom/android/internal/telephony/ProxyController;

    #@32
    move-result-object v5

    #@33
    invoke-virtual {v5, v1}, Lcom/android/internal/telephony/ProxyController;->isDataDisconnected(I)Z

    #@36
    move-result v5

    #@37
    .line 4191
    if-eqz v5, :cond_3

    #@39
    .line 4196
    :cond_1
    const-string/jumbo v5, "radioTurnedOff"

    #@3c
    invoke-virtual {p1, v5}, Lcom/android/internal/telephony/dataconnection/DcTracker;->cleanUpAllConnections(Ljava/lang/String;)V

    #@3f
    .line 4197
    const-string/jumbo v5, "Data disconnected, turn off radio right away."

    #@42
    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    #@45
    .line 4198
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->hangupAndPowerOff()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@48
    .end local v1    # "dds":I
    :cond_2
    :goto_0
    monitor-exit p0

    #@49
    .line 4184
    return-void

    #@4a
    .line 4201
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
    .line 4202
    iget-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@5c
    iget-object v5, v5, Lcom/android/internal/telephony/GsmCdmaPhone;->mCT:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    #@5e
    iget-object v5, v5, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/GsmCdmaCall;

    #@60
    invoke-virtual {v5}, Lcom/android/internal/telephony/GsmCdmaCall;->hangupIfAlive()V

    #@63
    .line 4203
    iget-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@65
    iget-object v5, v5, Lcom/android/internal/telephony/GsmCdmaPhone;->mCT:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    #@67
    iget-object v5, v5, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    #@69
    invoke-virtual {v5}, Lcom/android/internal/telephony/GsmCdmaCall;->hangupIfAlive()V

    #@6c
    .line 4204
    iget-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@6e
    iget-object v5, v5, Lcom/android/internal/telephony/GsmCdmaPhone;->mCT:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    #@70
    iget-object v5, v5, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    #@72
    invoke-virtual {v5}, Lcom/android/internal/telephony/GsmCdmaCall;->hangupIfAlive()V

    #@75
    .line 4206
    :cond_4
    const-string/jumbo v5, "radioTurnedOff"

    #@78
    invoke-virtual {p1, v5}, Lcom/android/internal/telephony/dataconnection/DcTracker;->cleanUpAllConnections(Ljava/lang/String;)V

    #@7b
    .line 4207
    iget-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@7d
    invoke-virtual {v5}, Lcom/android/internal/telephony/GsmCdmaPhone;->getSubId()I

    #@80
    move-result v5

    #@81
    if-eq v1, v5, :cond_5

    #@83
    .line 4208
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
    .line 4216
    :cond_5
    :goto_1
    invoke-static {p0}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    #@90
    move-result-object v3

    #@91
    .line 4217
    .local v3, "msg":Landroid/os/Message;
    const/16 v5, 0x26

    #@93
    iput v5, v3, Landroid/os/Message;->what:I

    #@95
    .line 4218
    iget v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPendingRadioPowerOffAfterDataOffTag:I

    #@97
    add-int/lit8 v5, v5, 0x1

    #@99
    iput v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPendingRadioPowerOffAfterDataOffTag:I

    #@9b
    iput v5, v3, Landroid/os/Message;->arg1:I

    #@9d
    .line 4219
    const-wide/16 v6, 0x7530

    #@9f
    invoke-virtual {p0, v3, v6, v7}, Lcom/android/internal/telephony/ServiceStateTracker;->sendMessageDelayed(Landroid/os/Message;J)Z

    #@a2
    move-result v5

    #@a3
    if-eqz v5, :cond_7

    #@a5
    .line 4220
    const-string/jumbo v5, "Wait upto 30s for data to disconnect, then turn off radio."

    #@a8
    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    #@ab
    .line 4221
    const/4 v5, 0x1

    #@ac
    iput-boolean v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPendingRadioPowerOffAfterDataOff:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@ae
    goto :goto_0

    #@af
    .line 4185
    .end local v1    # "dds":I
    .end local v3    # "msg":Landroid/os/Message;
    :catchall_0
    move-exception v5

    #@b0
    monitor-exit p0

    #@b1
    throw v5

    #@b2
    .line 4209
    .restart local v1    # "dds":I
    :cond_6
    :try_start_2
    const-string/jumbo v5, "Data is active on DDS.  Wait for all data disconnect"

    #@b5
    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    #@b8
    .line 4212
    invoke-static {}, Lcom/android/internal/telephony/ProxyController;->getInstance()Lcom/android/internal/telephony/ProxyController;

    #@bb
    move-result-object v5

    #@bc
    .line 4213
    const/16 v6, 0x31

    #@be
    const/4 v7, 0x0

    #@bf
    .line 4212
    invoke-virtual {v5, v1, p0, v6, v7}, Lcom/android/internal/telephony/ProxyController;->registerForAllDataDisconnected(ILandroid/os/Handler;ILjava/lang/Object;)V

    #@c2
    .line 4214
    const/4 v5, 0x1

    #@c3
    iput-boolean v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPendingRadioPowerOffAfterDataOff:Z

    #@c5
    goto :goto_1

    #@c6
    .line 4223
    .restart local v3    # "msg":Landroid/os/Message;
    :cond_7
    const-string/jumbo v5, "Cannot send delayed Msg, turn off radio right away."

    #@c9
    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    #@cc
    .line 4224
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->hangupAndPowerOff()V

    #@cf
    .line 4225
    const/4 v5, 0x0

    #@d0
    iput-boolean v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPendingRadioPowerOffAfterDataOff:Z

    #@d2
    goto/16 :goto_0

    #@d4
    .line 4233
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
    .line 4234
    const v6, 0x1070044

    #@e1
    .line 4233
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    #@e4
    move-result-object v4

    #@e5
    .line 4235
    .local v4, "networkNotClearData":[Ljava/lang/String;
    iget-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@e7
    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    #@ea
    move-result-object v0

    #@eb
    .line 4236
    .local v0, "currentNetwork":Ljava/lang/String;
    if-eqz v4, :cond_a

    #@ed
    if-eqz v0, :cond_a

    #@ef
    .line 4237
    const/4 v2, 0x0

    #@f0
    .local v2, "i":I
    :goto_2
    array-length v5, v4

    #@f1
    if-ge v2, v5, :cond_a

    #@f3
    .line 4238
    aget-object v5, v4, v2

    #@f5
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@f8
    move-result v5

    #@f9
    if-eqz v5, :cond_9

    #@fb
    .line 4241
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
    .line 4242
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->hangupAndPowerOff()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@115
    monitor-exit p0

    #@116
    .line 4243
    return-void

    #@117
    .line 4237
    :cond_9
    add-int/lit8 v2, v2, 0x1

    #@119
    goto :goto_2

    #@11a
    .line 4249
    .end local v2    # "i":I
    :cond_a
    :try_start_3
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->isDisconnected()Z

    #@11d
    move-result v5

    #@11e
    if-eqz v5, :cond_b

    #@120
    .line 4251
    const-string/jumbo v5, "radioTurnedOff"

    #@123
    invoke-virtual {p1, v5}, Lcom/android/internal/telephony/dataconnection/DcTracker;->cleanUpAllConnections(Ljava/lang/String;)V

    #@126
    .line 4252
    const-string/jumbo v5, "Data disconnected, turn off radio right away."

    #@129
    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    #@12c
    .line 4253
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->hangupAndPowerOff()V

    #@12f
    goto/16 :goto_0

    #@131
    .line 4255
    :cond_b
    const-string/jumbo v5, "radioTurnedOff"

    #@134
    invoke-virtual {p1, v5}, Lcom/android/internal/telephony/dataconnection/DcTracker;->cleanUpAllConnections(Ljava/lang/String;)V

    #@137
    .line 4256
    invoke-static {p0}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    #@13a
    move-result-object v3

    #@13b
    .line 4257
    .restart local v3    # "msg":Landroid/os/Message;
    const/16 v5, 0x26

    #@13d
    iput v5, v3, Landroid/os/Message;->what:I

    #@13f
    .line 4258
    iget v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPendingRadioPowerOffAfterDataOffTag:I

    #@141
    add-int/lit8 v5, v5, 0x1

    #@143
    iput v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPendingRadioPowerOffAfterDataOffTag:I

    #@145
    iput v5, v3, Landroid/os/Message;->arg1:I

    #@147
    .line 4259
    const-wide/16 v6, 0x7530

    #@149
    invoke-virtual {p0, v3, v6, v7}, Lcom/android/internal/telephony/ServiceStateTracker;->sendMessageDelayed(Landroid/os/Message;J)Z

    #@14c
    move-result v5

    #@14d
    if-eqz v5, :cond_c

    #@14f
    .line 4261
    const-string/jumbo v5, "Wait upto 30s for data to disconnect, then turn off radio."

    #@152
    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    #@155
    .line 4262
    const/4 v5, 0x1

    #@156
    iput-boolean v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPendingRadioPowerOffAfterDataOff:Z

    #@158
    goto/16 :goto_0

    #@15a
    .line 4264
    :cond_c
    const-string/jumbo v5, "Cannot send delayed Msg, turn off radio right away."

    #@15d
    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    #@160
    .line 4265
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
    .line 4279
    monitor-enter p0

    #@2
    .line 4280
    :try_start_0
    iget-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPendingRadioPowerOffAfterDataOff:Z

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 4281
    const-string/jumbo v0, "Process pending request to turn radio off."

    #@9
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    #@c
    .line 4282
    iget v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPendingRadioPowerOffAfterDataOffTag:I

    #@e
    add-int/lit8 v0, v0, 0x1

    #@10
    iput v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPendingRadioPowerOffAfterDataOffTag:I

    #@12
    .line 4283
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->hangupAndPowerOff()V

    #@15
    .line 4284
    const/4 v0, 0x0

    #@16
    iput-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPendingRadioPowerOffAfterDataOff:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    .line 4285
    const/4 v0, 0x1

    #@19
    monitor-exit p0

    #@1a
    return v0

    #@1b
    :cond_0
    monitor-exit p0

    #@1c
    .line 4287
    return v1

    #@1d
    .line 4279
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
    .line 789
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@2
    .line 790
    const/16 v1, 0x13

    #@4
    invoke-virtual {p0, v1, p1}, Lcom/android/internal/telephony/ServiceStateTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@7
    move-result-object v1

    #@8
    .line 789
    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getPreferredNetworkType(Landroid/os/Message;)V

    #@b
    .line 788
    return-void
.end method

.method public registerForDataConnectionAttached(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 4076
    new-instance v0, Landroid/os/Registrant;

    #@2
    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    #@5
    .line 4077
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mAttachedRegistrants:Landroid/os/RegistrantList;

    #@7
    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    #@a
    .line 4079
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getCurrentDataConnectionState()I

    #@d
    move-result v1

    #@e
    if-nez v1, :cond_0

    #@10
    .line 4080
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    #@13
    .line 4075
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
    .line 4094
    new-instance v0, Landroid/os/Registrant;

    #@2
    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    #@5
    .line 4095
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDetachedRegistrants:Landroid/os/RegistrantList;

    #@7
    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    #@a
    .line 4097
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getCurrentDataConnectionState()I

    #@d
    move-result v1

    #@e
    if-eqz v1, :cond_0

    #@10
    .line 4098
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    #@13
    .line 4093
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
    .line 4115
    new-instance v0, Landroid/os/Registrant;

    #@2
    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    #@5
    .line 4116
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDataRegStateOrRatChangedRegistrants:Landroid/os/RegistrantList;

    #@7
    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    #@a
    .line 4117
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->notifyDataRegStateRilRadioTechnologyChanged()V

    #@d
    .line 4114
    return-void
.end method

.method public registerForDataRoamingOff(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 767
    new-instance v0, Landroid/os/Registrant;

    #@2
    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    #@5
    .line 768
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDataRoamingOffRegistrants:Landroid/os/RegistrantList;

    #@7
    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    #@a
    .line 770
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@c
    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    #@f
    move-result v1

    #@10
    if-nez v1, :cond_0

    #@12
    .line 771
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    #@15
    .line 766
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
    .line 746
    new-instance v0, Landroid/os/Registrant;

    #@2
    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    #@5
    .line 747
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDataRoamingOnRegistrants:Landroid/os/RegistrantList;

    #@7
    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    #@a
    .line 749
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@c
    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    #@f
    move-result v1

    #@10
    if-eqz v1, :cond_0

    #@12
    .line 750
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    #@15
    .line 745
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
    .line 4130
    new-instance v0, Landroid/os/Registrant;

    #@2
    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    #@5
    .line 4132
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNetworkAttachedRegistrants:Landroid/os/RegistrantList;

    #@7
    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    #@a
    .line 4133
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@c
    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    #@f
    move-result v1

    #@10
    if-nez v1, :cond_0

    #@12
    .line 4134
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    #@15
    .line 4129
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
    .line 4167
    new-instance v0, Landroid/os/Registrant;

    #@2
    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    #@5
    .line 4168
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPsRestrictDisabledRegistrants:Landroid/os/RegistrantList;

    #@7
    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    #@a
    .line 4170
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    #@c
    invoke-virtual {v1}, Lcom/android/internal/telephony/RestrictedState;->isPsRestricted()Z

    #@f
    move-result v1

    #@10
    if-eqz v1, :cond_0

    #@12
    .line 4171
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    #@15
    .line 4166
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
    .line 4148
    new-instance v0, Landroid/os/Registrant;

    #@2
    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    #@5
    .line 4149
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPsRestrictEnabledRegistrants:Landroid/os/RegistrantList;

    #@7
    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    #@a
    .line 4151
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    #@c
    invoke-virtual {v1}, Lcom/android/internal/telephony/RestrictedState;->isPsRestricted()Z

    #@f
    move-result v1

    #@10
    if-eqz v1, :cond_0

    #@12
    .line 4152
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    #@15
    .line 4147
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
    .line 4464
    new-instance v0, Landroid/os/Registrant;

    #@2
    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    #@5
    .line 4465
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCdmaForSubscriptionInfoReadyRegistrants:Landroid/os/RegistrantList;

    #@7
    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    #@a
    .line 4467
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->isMinInfoReady()Z

    #@d
    move-result v1

    #@e
    if-eqz v1, :cond_0

    #@10
    .line 4468
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    #@13
    .line 4463
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
    .line 725
    new-instance v0, Landroid/os/Registrant;

    #@2
    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    #@5
    .line 726
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mVoiceRoamingOffRegistrants:Landroid/os/RegistrantList;

    #@7
    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    #@a
    .line 728
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@c
    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getVoiceRoaming()Z

    #@f
    move-result v1

    #@10
    if-nez v1, :cond_0

    #@12
    .line 729
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    #@15
    .line 724
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
    .line 704
    new-instance v0, Landroid/os/Registrant;

    #@2
    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    #@5
    .line 705
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mVoiceRoamingOnRegistrants:Landroid/os/RegistrantList;

    #@7
    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    #@a
    .line 707
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@c
    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getVoiceRoaming()Z

    #@f
    move-result v1

    #@10
    if-eqz v1, :cond_0

    #@12
    .line 708
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    #@15
    .line 703
    :cond_0
    return-void
.end method

.method public requestShutdown()V
    .locals 1

    #@0
    .prologue
    .line 617
    iget-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDeviceShuttingDown:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    return-void

    #@5
    .line 618
    :cond_0
    const/4 v0, 0x1

    #@6
    iput-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDeviceShuttingDown:Z

    #@8
    .line 619
    const/4 v0, 0x0

    #@9
    iput-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDesiredPowerState:Z

    #@b
    .line 620
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->setPowerStateToDesired()V

    #@e
    .line 616
    return-void
.end method

.method protected resetServiceStateInIwlanMode()V
    .locals 4

    #@0
    .prologue
    const/16 v3, 0x12

    #@2
    .line 4766
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@4
    invoke-interface {v1}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    #@7
    move-result-object v1

    #@8
    sget-object v2, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_OFF:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    #@a
    if-ne v1, v2, :cond_1

    #@c
    .line 4767
    const/4 v0, 0x0

    #@d
    .line 4768
    .local v0, "resetIwlanRatVal":Z
    const-string/jumbo v1, "set service state as POWER_OFF"

    #@10
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    #@13
    .line 4770
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@15
    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    #@18
    move-result v1

    #@19
    .line 4769
    if-ne v3, v1, :cond_0

    #@1b
    .line 4771
    new-instance v1, Ljava/lang/StringBuilder;

    #@1d
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@20
    const-string/jumbo v2, "pollStateDone: mNewSS = "

    #@23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v1

    #@27
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v1

    #@2d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@30
    move-result-object v1

    #@31
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    #@34
    .line 4772
    const-string/jumbo v1, "pollStateDone: reset iwlan RAT value"

    #@37
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    #@3a
    .line 4773
    const/4 v0, 0x1

    #@3b
    .line 4775
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@3d
    invoke-virtual {v1}, Landroid/telephony/ServiceState;->setStateOff()V

    #@40
    .line 4776
    if-eqz v0, :cond_1

    #@42
    .line 4777
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@44
    invoke-virtual {v1, v3}, Landroid/telephony/ServiceState;->setRilDataRadioTechnology(I)V

    #@47
    .line 4778
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@49
    const/4 v2, 0x0

    #@4a
    invoke-virtual {v1, v2}, Landroid/telephony/ServiceState;->setDataRegState(I)V

    #@4d
    .line 4779
    new-instance v1, Ljava/lang/StringBuilder;

    #@4f
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@52
    const-string/jumbo v2, "pollStateDone: mNewSS = "

    #@55
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@58
    move-result-object v1

    #@59
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@5b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v1

    #@5f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@62
    move-result-object v1

    #@63
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    #@66
    .line 4765
    .end local v0    # "resetIwlanRatVal":Z
    :cond_1
    return-void
.end method

.method public setImsRegistrationState(Z)V
    .locals 4
    .param p1, "registered"    # Z

    #@0
    .prologue
    .line 2385
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
    .line 2387
    iget-boolean v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mImsRegistrationOnOff:Z

    #@19
    if-eqz v2, :cond_0

    #@1b
    if-eqz p1, :cond_1

    #@1d
    .line 2400
    :cond_0
    iput-boolean p1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mImsRegistrationOnOff:Z

    #@1f
    .line 2384
    return-void

    #@20
    .line 2388
    :cond_1
    iget-boolean v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mAlarmSwitch:Z

    #@22
    if-eqz v2, :cond_0

    #@24
    .line 2389
    iput-boolean p1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mImsRegistrationOnOff:Z

    #@26
    .line 2391
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@28
    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    #@2b
    move-result-object v1

    #@2c
    .line 2392
    .local v1, "context":Landroid/content/Context;
    const-string/jumbo v2, "alarm"

    #@2f
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@32
    move-result-object v0

    #@33
    check-cast v0, Landroid/app/AlarmManager;

    #@35
    .line 2393
    .local v0, "am":Landroid/app/AlarmManager;
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRadioOffIntent:Landroid/app/PendingIntent;

    #@37
    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    #@3a
    .line 2394
    const/4 v2, 0x0

    #@3b
    iput-boolean v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mAlarmSwitch:Z

    #@3d
    .line 2396
    const/16 v2, 0x2d

    #@3f
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    #@42
    move-result-object v2

    #@43
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->sendMessage(Landroid/os/Message;)Z

    #@46
    .line 2397
    return-void
.end method

.method protected setOperatorIdd(Ljava/lang/String;)V
    .locals 4
    .param p1, "operatorNumeric"    # Ljava/lang/String;

    #@0
    .prologue
    .line 3226
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mHbpcdUtils:Lcom/android/internal/telephony/HbpcdUtils;

    #@2
    .line 3227
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
    .line 3226
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/HbpcdUtils;->getIddByMcc(I)Ljava/lang/String;

    #@f
    move-result-object v0

    #@10
    .line 3228
    .local v0, "idd":Ljava/lang/String;
    if-eqz v0, :cond_0

    #@12
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    #@15
    move-result v1

    #@16
    if-eqz v1, :cond_1

    #@18
    .line 3233
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@1a
    const-string/jumbo v2, "gsm.operator.idpstring"

    #@1d
    const-string/jumbo v3, "+"

    #@20
    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/GsmCdmaPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    #@23
    .line 3223
    :goto_0
    return-void

    #@24
    .line 3229
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
    .line 2267
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
    .line 2268
    const-string/jumbo v5, ", mDesiredPowerState="

    #@18
    .line 2267
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v4

    #@1c
    .line 2268
    iget-boolean v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDesiredPowerState:Z

    #@1e
    .line 2267
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@21
    move-result-object v4

    #@22
    .line 2269
    const-string/jumbo v5, ", getRadioState="

    #@25
    .line 2267
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v4

    #@29
    .line 2269
    iget-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@2b
    invoke-interface {v5}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    #@2e
    move-result-object v5

    #@2f
    .line 2267
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v4

    #@33
    .line 2270
    const-string/jumbo v5, ", mPowerOffDelayNeed="

    #@36
    .line 2267
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v4

    #@3a
    .line 2270
    iget-boolean v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPowerOffDelayNeed:Z

    #@3c
    .line 2267
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v4

    #@40
    .line 2271
    const-string/jumbo v5, ", mAlarmSwitch="

    #@43
    .line 2267
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v4

    #@47
    .line 2271
    iget-boolean v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mAlarmSwitch:Z

    #@49
    .line 2267
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v4

    #@4d
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@50
    move-result-object v4

    #@51
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    #@54
    .line 2274
    iget-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@56
    invoke-virtual {v4}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    #@59
    move-result v4

    #@5a
    if-eqz v4, :cond_0

    #@5c
    iget-boolean v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mAlarmSwitch:Z

    #@5e
    if-eqz v4, :cond_0

    #@60
    .line 2275
    const-string/jumbo v4, "mAlarmSwitch == true"

    #@63
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    #@66
    .line 2276
    iget-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@68
    invoke-virtual {v4}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    #@6b
    move-result-object v1

    #@6c
    .line 2277
    .local v1, "context":Landroid/content/Context;
    const-string/jumbo v4, "alarm"

    #@6f
    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@72
    move-result-object v0

    #@73
    check-cast v0, Landroid/app/AlarmManager;

    #@75
    .line 2278
    .local v0, "am":Landroid/app/AlarmManager;
    iget-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRadioOffIntent:Landroid/app/PendingIntent;

    #@77
    invoke-virtual {v0, v4}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    #@7a
    .line 2279
    iput-boolean v6, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mAlarmSwitch:Z

    #@7c
    .line 2283
    .end local v0    # "am":Landroid/app/AlarmManager;
    .end local v1    # "context":Landroid/content/Context;
    :cond_0
    iget-boolean v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDesiredPowerState:Z

    #@7e
    if-eqz v4, :cond_2

    #@80
    .line 2284
    iget-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@82
    invoke-interface {v4}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    #@85
    move-result-object v4

    #@86
    sget-object v5, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_OFF:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    #@88
    if-ne v4, v5, :cond_2

    #@8a
    .line 2285
    iget-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@8c
    invoke-interface {v4, v7, v8}, Lcom/android/internal/telephony/CommandsInterface;->setRadioPower(ZLandroid/os/Message;)V

    #@8f
    .line 2265
    :cond_1
    :goto_0
    return-void

    #@90
    .line 2286
    :cond_2
    iget-boolean v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDesiredPowerState:Z

    #@92
    if-nez v4, :cond_6

    #@94
    iget-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@96
    invoke-interface {v4}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    #@99
    move-result-object v4

    #@9a
    invoke-virtual {v4}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    #@9d
    move-result v4

    #@9e
    if-eqz v4, :cond_6

    #@a0
    .line 2288
    iget-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@a2
    invoke-virtual {v4}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    #@a5
    move-result v4

    #@a6
    if-eqz v4, :cond_5

    #@a8
    iget-boolean v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPowerOffDelayNeed:Z

    #@aa
    if-eqz v4, :cond_5

    #@ac
    .line 2289
    iget-boolean v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mImsRegistrationOnOff:Z

    #@ae
    if-eqz v4, :cond_3

    #@b0
    iget-boolean v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mAlarmSwitch:Z

    #@b2
    if-eqz v4, :cond_4

    #@b4
    .line 2302
    :cond_3
    iget-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@b6
    iget-object v2, v4, Lcom/android/internal/telephony/GsmCdmaPhone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTracker;

    #@b8
    .line 2303
    .local v2, "dcTracker":Lcom/android/internal/telephony/dataconnection/DcTracker;
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->powerOffRadioSafely(Lcom/android/internal/telephony/dataconnection/DcTracker;)V

    #@bb
    goto :goto_0

    #@bc
    .line 2290
    .end local v2    # "dcTracker":Lcom/android/internal/telephony/dataconnection/DcTracker;
    :cond_4
    const-string/jumbo v4, "mImsRegistrationOnOff == true"

    #@bf
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    #@c2
    .line 2291
    iget-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@c4
    invoke-virtual {v4}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    #@c7
    move-result-object v1

    #@c8
    .line 2292
    .restart local v1    # "context":Landroid/content/Context;
    const-string/jumbo v4, "alarm"

    #@cb
    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@ce
    move-result-object v0

    #@cf
    check-cast v0, Landroid/app/AlarmManager;

    #@d1
    .line 2294
    .restart local v0    # "am":Landroid/app/AlarmManager;
    new-instance v3, Landroid/content/Intent;

    #@d3
    const-string/jumbo v4, "android.intent.action.ACTION_RADIO_OFF"

    #@d6
    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@d9
    .line 2295
    .local v3, "intent":Landroid/content/Intent;
    invoke-static {v1, v6, v3, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    #@dc
    move-result-object v4

    #@dd
    iput-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRadioOffIntent:Landroid/app/PendingIntent;

    #@df
    .line 2297
    iput-boolean v7, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mAlarmSwitch:Z

    #@e1
    .line 2298
    const-string/jumbo v4, "Alarm setting"

    #@e4
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    #@e7
    .line 2300
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@ea
    move-result-wide v4

    #@eb
    const-wide/16 v6, 0xbb8

    #@ed
    add-long/2addr v4, v6

    #@ee
    iget-object v6, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRadioOffIntent:Landroid/app/PendingIntent;

    #@f0
    .line 2299
    const/4 v7, 0x2

    #@f1
    invoke-virtual {v0, v7, v4, v5, v6}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    #@f4
    goto :goto_0

    #@f5
    .line 2306
    .end local v0    # "am":Landroid/app/AlarmManager;
    .end local v1    # "context":Landroid/content/Context;
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_5
    iget-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@f7
    iget-object v2, v4, Lcom/android/internal/telephony/GsmCdmaPhone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTracker;

    #@f9
    .line 2307
    .restart local v2    # "dcTracker":Lcom/android/internal/telephony/dataconnection/DcTracker;
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->powerOffRadioSafely(Lcom/android/internal/telephony/dataconnection/DcTracker;)V

    #@fc
    goto :goto_0

    #@fd
    .line 2309
    .end local v2    # "dcTracker":Lcom/android/internal/telephony/dataconnection/DcTracker;
    :cond_6
    iget-boolean v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDeviceShuttingDown:Z

    #@ff
    if-eqz v4, :cond_1

    #@101
    iget-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@103
    invoke-interface {v4}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    #@106
    move-result-object v4

    #@107
    invoke-virtual {v4}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isAvailable()Z

    #@10a
    move-result v4

    #@10b
    if-eqz v4, :cond_1

    #@10d
    .line 2310
    iget-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@10f
    invoke-interface {v4, v8}, Lcom/android/internal/telephony/CommandsInterface;->requestShutdown(Landroid/os/Message;)V

    #@112
    goto/16 :goto_0
.end method

.method public setRadioPower(Z)V
    .locals 0
    .param p1, "power"    # Z

    #@0
    .prologue
    .line 795
    iput-boolean p1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDesiredPowerState:Z

    #@2
    .line 797
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->setPowerStateToDesired()V

    #@5
    .line 794
    return-void
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
    .line 4656
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    #@7
    move-result v8

    #@8
    if-nez v8, :cond_2

    #@a
    move v5, v6

    #@b
    .line 4657
    .local v5, "isVoiceInService":Z
    :goto_0
    if-eqz v5, :cond_0

    #@d
    .line 4658
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getVoiceRoaming()Z

    #@10
    move-result v8

    #@11
    if-eqz v8, :cond_8

    #@13
    .line 4659
    iget-object v8, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@15
    invoke-virtual {v8}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    #@18
    move-result v8

    #@19
    if-eqz v8, :cond_4

    #@1b
    .line 4661
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
    .line 4662
    invoke-virtual {p1, v10}, Landroid/telephony/ServiceState;->setVoiceRoamingType(I)V

    #@28
    .line 4699
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
    .line 4700
    .local v4, "isDataInService":Z
    :goto_2
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    #@32
    move-result v1

    #@33
    .line 4701
    .local v1, "dataRegType":I
    if-eqz v4, :cond_1

    #@35
    .line 4702
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    #@38
    move-result v8

    #@39
    if-nez v8, :cond_a

    #@3b
    .line 4703
    invoke-virtual {p1, v7}, Landroid/telephony/ServiceState;->setDataRoamingType(I)V

    #@3e
    .line 4654
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
    .line 4656
    goto :goto_0

    #@41
    .line 4665
    .restart local v5    # "isVoiceInService":Z
    :cond_3
    invoke-virtual {p1, v11}, Landroid/telephony/ServiceState;->setVoiceRoamingType(I)V

    #@44
    goto :goto_1

    #@45
    .line 4670
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
    .line 4671
    const v9, 0x1070047

    #@52
    .line 4670
    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getIntArray(I)[I

    #@55
    move-result-object v3

    #@56
    .line 4672
    .local v3, "intRoamingIndicators":[I
    if-eqz v3, :cond_6

    #@58
    array-length v8, v3

    #@59
    if-lez v8, :cond_6

    #@5b
    .line 4674
    invoke-virtual {p1, v10}, Landroid/telephony/ServiceState;->setVoiceRoamingType(I)V

    #@5e
    .line 4675
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getCdmaRoamingIndicator()I

    #@61
    move-result v0

    #@62
    .line 4676
    .local v0, "curRoamingIndicator":I
    const/4 v2, 0x0

    #@63
    .local v2, "i":I
    :goto_4
    array-length v8, v3

    #@64
    if-ge v2, v8, :cond_0

    #@66
    .line 4677
    aget v8, v3, v2

    #@68
    if-ne v0, v8, :cond_5

    #@6a
    .line 4678
    invoke-virtual {p1, v11}, Landroid/telephony/ServiceState;->setVoiceRoamingType(I)V

    #@6d
    goto :goto_1

    #@6e
    .line 4676
    :cond_5
    add-int/lit8 v2, v2, 0x1

    #@70
    goto :goto_4

    #@71
    .line 4685
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
    .line 4686
    invoke-virtual {p1, v10}, Landroid/telephony/ServiceState;->setVoiceRoamingType(I)V

    #@7e
    goto :goto_1

    #@7f
    .line 4689
    :cond_7
    invoke-virtual {p1, v11}, Landroid/telephony/ServiceState;->setVoiceRoamingType(I)V

    #@82
    goto :goto_1

    #@83
    .line 4695
    .end local v3    # "intRoamingIndicators":[I
    :cond_8
    invoke-virtual {p1, v7}, Landroid/telephony/ServiceState;->setVoiceRoamingType(I)V

    #@86
    goto :goto_1

    #@87
    .line 4699
    :cond_9
    const/4 v4, 0x0

    #@88
    .restart local v4    # "isDataInService":Z
    goto :goto_2

    #@89
    .line 4705
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
    .line 4706
    invoke-static {v1}, Landroid/telephony/ServiceState;->isGsm(I)Z

    #@94
    move-result v7

    #@95
    if-eqz v7, :cond_c

    #@97
    .line 4707
    if-eqz v5, :cond_b

    #@99
    .line 4709
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getVoiceRoamingType()I

    #@9c
    move-result v6

    #@9d
    invoke-virtual {p1, v6}, Landroid/telephony/ServiceState;->setDataRoamingType(I)V

    #@a0
    goto :goto_3

    #@a1
    .line 4713
    :cond_b
    invoke-virtual {p1, v6}, Landroid/telephony/ServiceState;->setDataRoamingType(I)V

    #@a4
    goto :goto_3

    #@a5
    .line 4717
    :cond_c
    invoke-virtual {p1, v6}, Landroid/telephony/ServiceState;->setDataRoamingType(I)V

    #@a8
    goto :goto_3

    #@a9
    .line 4720
    :cond_d
    invoke-static {v1}, Landroid/telephony/ServiceState;->isCdma(I)Z

    #@ac
    move-result v7

    #@ad
    if-eqz v7, :cond_f

    #@af
    .line 4721
    if-eqz v5, :cond_e

    #@b1
    .line 4723
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getVoiceRoamingType()I

    #@b4
    move-result v6

    #@b5
    invoke-virtual {p1, v6}, Landroid/telephony/ServiceState;->setDataRoamingType(I)V

    #@b8
    goto :goto_3

    #@b9
    .line 4728
    :cond_e
    invoke-virtual {p1, v6}, Landroid/telephony/ServiceState;->setDataRoamingType(I)V

    #@bc
    goto :goto_3

    #@bd
    .line 4732
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
    .line 4733
    invoke-virtual {p1, v10}, Landroid/telephony/ServiceState;->setDataRoamingType(I)V

    #@ca
    goto/16 :goto_3

    #@cc
    .line 4735
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
    .line 4363
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
    .line 4376
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
    .line 4382
    .local v5, "prevMcc":I
    :goto_0
    const/4 v3, 0x0

    #@16
    .line 4383
    .local v3, "iccCardExist":Z
    iget-object v7, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@18
    if-eqz v7, :cond_0

    #@1a
    .line 4384
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
    .line 4388
    :cond_0
    :goto_1
    if-eqz v3, :cond_2

    #@27
    if-eq v4, v5, :cond_2

    #@29
    const/4 v6, 0x1

    #@2a
    .line 4390
    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@2d
    move-result-wide v0

    #@2e
    .line 4391
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
    .line 4392
    const-string/jumbo v8, " iccCardExist="

    #@41
    .line 4391
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v7

    #@45
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@48
    move-result-object v7

    #@49
    .line 4393
    const-string/jumbo v8, " operatorNumeric="

    #@4c
    .line 4391
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v7

    #@50
    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v7

    #@54
    .line 4393
    const-string/jumbo v8, " mcc="

    #@57
    .line 4391
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v7

    #@5b
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v7

    #@5f
    .line 4394
    const-string/jumbo v8, " prevOperatorNumeric="

    #@62
    .line 4391
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@65
    move-result-object v7

    #@66
    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@69
    move-result-object v7

    #@6a
    .line 4394
    const-string/jumbo v8, " prevMcc="

    #@6d
    .line 4391
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@70
    move-result-object v7

    #@71
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@74
    move-result-object v7

    #@75
    .line 4395
    const-string/jumbo v8, " needToFixTimeZone="

    #@78
    .line 4391
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7b
    move-result-object v7

    #@7c
    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@7f
    move-result-object v7

    #@80
    .line 4396
    const-string/jumbo v8, " ltod="

    #@83
    .line 4391
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@86
    move-result-object v7

    #@87
    .line 4396
    invoke-static {v0, v1}, Landroid/util/TimeUtils;->logTimeOfDay(J)Ljava/lang/String;

    #@8a
    move-result-object v8

    #@8b
    .line 4391
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
    .line 4398
    return v6

    #@97
    .line 4364
    .end local v0    # "ctm":J
    .end local v3    # "iccCardExist":Z
    .end local v4    # "mcc":I
    .end local v5    # "prevMcc":I
    :catch_0
    move-exception v2

    #@98
    .line 4366
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
    .line 4367
    const-string/jumbo v8, " retVal=false"

    #@ab
    .line 4366
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
    .line 4369
    return v9

    #@b7
    .line 4377
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v4    # "mcc":I
    :catch_1
    move-exception v2

    #@b8
    .line 4378
    .restart local v2    # "e":Ljava/lang/Exception;
    add-int/lit8 v5, v4, 0x1

    #@ba
    .restart local v5    # "prevMcc":I
    goto/16 :goto_0

    #@bc
    .line 4384
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v3    # "iccCardExist":Z
    :cond_1
    const/4 v3, 0x0

    #@bd
    goto/16 :goto_1

    #@bf
    .line 4388
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
    .line 4084
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mAttachedRegistrants:Landroid/os/RegistrantList;

    #@2
    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    #@5
    .line 4083
    return-void
.end method

.method public unregisterForDataConnectionDetached(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 4102
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDetachedRegistrants:Landroid/os/RegistrantList;

    #@2
    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    #@5
    .line 4101
    return-void
.end method

.method public unregisterForDataRegStateOrRatChanged(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 4120
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDataRegStateOrRatChangedRegistrants:Landroid/os/RegistrantList;

    #@2
    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    #@5
    .line 4119
    return-void
.end method

.method public unregisterForDataRoamingOff(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 776
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDataRoamingOffRegistrants:Landroid/os/RegistrantList;

    #@2
    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    #@5
    .line 775
    return-void
.end method

.method public unregisterForDataRoamingOn(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 755
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDataRoamingOnRegistrants:Landroid/os/RegistrantList;

    #@2
    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    #@5
    .line 754
    return-void
.end method

.method public unregisterForNetworkAttached(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 4138
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNetworkAttachedRegistrants:Landroid/os/RegistrantList;

    #@2
    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    #@5
    .line 4137
    return-void
.end method

.method public unregisterForPsRestrictedDisabled(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 4176
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPsRestrictDisabledRegistrants:Landroid/os/RegistrantList;

    #@2
    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    #@5
    .line 4175
    return-void
.end method

.method public unregisterForPsRestrictedEnabled(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 4157
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPsRestrictEnabledRegistrants:Landroid/os/RegistrantList;

    #@2
    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    #@5
    .line 4156
    return-void
.end method

.method public unregisterForSubscriptionInfoReady(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 4473
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCdmaForSubscriptionInfoReadyRegistrants:Landroid/os/RegistrantList;

    #@2
    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    #@5
    .line 4472
    return-void
.end method

.method public unregisterForVoiceRoamingOff(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 734
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mVoiceRoamingOffRegistrants:Landroid/os/RegistrantList;

    #@2
    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    #@5
    .line 733
    return-void
.end method

.method public unregisterForVoiceRoamingOn(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 713
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mVoiceRoamingOnRegistrants:Landroid/os/RegistrantList;

    #@2
    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    #@5
    .line 712
    return-void
.end method

.method protected updateCarrierMccMncConfiguration(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 2
    .param p1, "newOp"    # Ljava/lang/String;
    .param p2, "oldOp"    # Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 4608
    if-nez p1, :cond_1

    #@2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_1

    #@8
    .line 4610
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
    .line 4611
    const/4 v0, 0x1

    #@27
    invoke-static {p3, p1, v0}, Lcom/android/internal/telephony/MccTable;->updateMccMncConfiguration(Landroid/content/Context;Ljava/lang/String;Z)V

    #@2a
    .line 4606
    :cond_0
    return-void

    #@2b
    .line 4609
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
    .line 1440
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getOtasp()I

    #@3
    move-result v1

    #@4
    .line 1441
    .local v1, "otaspMode":I
    iget v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCurrentOtaspMode:I

    #@6
    .line 1442
    .local v0, "oldOtaspMode":I
    iput v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCurrentOtaspMode:I

    #@8
    .line 1444
    iget v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCurrentOtaspMode:I

    #@a
    if-eq v0, v2, :cond_0

    #@c
    .line 1446
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
    .line 1447
    const-string/jumbo v3, " new otaspMode="

    #@1f
    .line 1446
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v2

    #@23
    .line 1447
    iget v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCurrentOtaspMode:I

    #@25
    .line 1446
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
    .line 1449
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@32
    iget v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCurrentOtaspMode:I

    #@34
    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifyOtaspChanged(I)V

    #@37
    .line 1439
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
    .line 682
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
    .line 683
    const v3, 0x1120097

    #@f
    .line 682
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@12
    move-result v2

    #@13
    if-eqz v2, :cond_3

    #@15
    .line 685
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@17
    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    #@1a
    move-result v2

    #@1b
    if-eqz v2, :cond_0

    #@1d
    .line 686
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
    .line 687
    .local v0, "isRegistered":Z
    :cond_0
    :goto_0
    if-nez v0, :cond_2

    #@28
    .line 688
    const-string/jumbo v1, "updatePhoneObject: Ignore update"

    #@2b
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    #@2e
    .line 689
    return-void

    #@2f
    .end local v0    # "isRegistered":Z
    :cond_1
    move v0, v1

    #@30
    .line 686
    goto :goto_0

    #@31
    .line 691
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
    .line 681
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
    .line 545
    new-instance v0, Landroid/telephony/ServiceState;

    #@4
    invoke-direct {v0}, Landroid/telephony/ServiceState;-><init>()V

    #@7
    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@9
    .line 546
    new-instance v0, Landroid/telephony/ServiceState;

    #@b
    invoke-direct {v0}, Landroid/telephony/ServiceState;-><init>()V

    #@e
    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@10
    .line 547
    const-wide/16 v2, 0x0

    #@12
    iput-wide v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mLastCellInfoListTime:J

    #@14
    .line 548
    iput-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mLastCellInfoList:Ljava/util/List;

    #@16
    .line 549
    new-instance v0, Landroid/telephony/SignalStrength;

    #@18
    invoke-direct {v0}, Landroid/telephony/SignalStrength;-><init>()V

    #@1b
    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    #@1d
    .line 550
    new-instance v0, Lcom/android/internal/telephony/RestrictedState;

    #@1f
    invoke-direct {v0}, Lcom/android/internal/telephony/RestrictedState;-><init>()V

    #@22
    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    #@24
    .line 551
    iput-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mStartedGprsRegCheck:Z

    #@26
    .line 552
    iput-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mReportedGprsNoReg:Z

    #@28
    .line 553
    iput-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mMdn:Ljava/lang/String;

    #@2a
    .line 554
    iput-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mMin:Ljava/lang/String;

    #@2c
    .line 555
    iput-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPrlVersion:Ljava/lang/String;

    #@2e
    .line 556
    iput-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIsMinInfoReady:Z

    #@30
    .line 557
    iput-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNitzUpdatedTime:Z

    #@32
    .line 560
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->cancelPollState()V

    #@35
    .line 562
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@37
    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    #@3a
    move-result v0

    #@3b
    if-eqz v0, :cond_1

    #@3d
    .line 564
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    #@3f
    if-eqz v0, :cond_0

    #@41
    .line 565
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    #@43
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->dispose(Landroid/os/Handler;)V

    #@46
    .line 568
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@48
    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForCdmaPrlChanged(Landroid/os/Handler;)V

    #@4b
    .line 569
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@4d
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->unregisterForEriFileLoaded(Landroid/os/Handler;)V

    #@50
    .line 570
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@52
    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForCdmaOtaProvision(Landroid/os/Handler;)V

    #@55
    .line 571
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@57
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->unregisterForSimRecordsLoaded(Landroid/os/Handler;)V

    #@5a
    .line 573
    new-instance v0, Landroid/telephony/gsm/GsmCellLocation;

    #@5c
    invoke-direct {v0}, Landroid/telephony/gsm/GsmCellLocation;-><init>()V

    #@5f
    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCellLoc:Landroid/telephony/CellLocation;

    #@61
    .line 574
    new-instance v0, Landroid/telephony/gsm/GsmCellLocation;

    #@63
    invoke-direct {v0}, Landroid/telephony/gsm/GsmCellLocation;-><init>()V

    #@66
    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewCellLoc:Landroid/telephony/CellLocation;

    #@68
    .line 575
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@6a
    const/16 v2, 0xd

    #@6c
    invoke-interface {v0, p0, v2, v4}, Lcom/android/internal/telephony/CommandsInterface;->registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    #@6f
    .line 576
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@71
    const/16 v2, 0x17

    #@73
    invoke-interface {v0, p0, v2, v4}, Lcom/android/internal/telephony/CommandsInterface;->setOnRestrictedStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    #@76
    .line 603
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->onUpdateIccAvailability()V

    #@79
    .line 605
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@7b
    const-string/jumbo v2, "gsm.network.type"

    #@7e
    .line 606
    invoke-static {v1}, Landroid/telephony/ServiceState;->rilRadioTechnologyToString(I)Ljava/lang/String;

    #@81
    move-result-object v1

    #@82
    .line 605
    invoke-virtual {v0, v2, v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    #@85
    .line 611
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
    .line 612
    const/16 v0, 0x32

    #@91
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    #@94
    move-result-object v0

    #@95
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->sendMessage(Landroid/os/Message;)Z

    #@98
    .line 544
    return-void

    #@99
    .line 579
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@9b
    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForAvailable(Landroid/os/Handler;)V

    #@9e
    .line 580
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@a0
    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnRestrictedStateChanged(Landroid/os/Handler;)V

    #@a3
    .line 582
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@a5
    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeCdmaLte()Z

    #@a8
    move-result v0

    #@a9
    if-eqz v0, :cond_2

    #@ab
    .line 583
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@ad
    const/16 v2, 0x10

    #@af
    invoke-virtual {v0, p0, v2, v4}, Lcom/android/internal/telephony/GsmCdmaPhone;->registerForSimRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    #@b2
    .line 585
    :cond_2
    new-instance v0, Landroid/telephony/cdma/CdmaCellLocation;

    #@b4
    invoke-direct {v0}, Landroid/telephony/cdma/CdmaCellLocation;-><init>()V

    #@b7
    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCellLoc:Landroid/telephony/CellLocation;

    #@b9
    .line 586
    new-instance v0, Landroid/telephony/cdma/CdmaCellLocation;

    #@bb
    invoke-direct {v0}, Landroid/telephony/cdma/CdmaCellLocation;-><init>()V

    #@be
    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewCellLoc:Landroid/telephony/CellLocation;

    #@c0
    .line 587
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@c2
    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    #@c5
    move-result-object v0

    #@c6
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@c8
    .line 588
    const/16 v3, 0x27

    #@ca
    .line 587
    invoke-static {v0, v2, p0, v3, v4}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->getInstance(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Landroid/os/Handler;ILjava/lang/Object;)Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    #@cd
    move-result-object v0

    #@ce
    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    #@d0
    .line 589
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    #@d2
    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->getCdmaSubscriptionSource()I

    #@d5
    move-result v0

    #@d6
    if-nez v0, :cond_3

    #@d8
    const/4 v0, 0x1

    #@d9
    :goto_1
    iput-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIsSubscriptionFromRuim:Z

    #@db
    .line 592
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@dd
    const/16 v2, 0x28

    #@df
    invoke-interface {v0, p0, v2, v4}, Lcom/android/internal/telephony/CommandsInterface;->registerForCdmaPrlChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    #@e2
    .line 593
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@e4
    const/16 v2, 0x24

    #@e6
    invoke-virtual {v0, p0, v2, v4}, Lcom/android/internal/telephony/GsmCdmaPhone;->registerForEriFileLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    #@e9
    .line 594
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@eb
    const/16 v2, 0x25

    #@ed
    invoke-interface {v0, p0, v2, v4}, Lcom/android/internal/telephony/CommandsInterface;->registerForCdmaOtaProvision(Landroid/os/Handler;ILjava/lang/Object;)V

    #@f0
    .line 596
    new-instance v0, Lcom/android/internal/telephony/HbpcdUtils;

    #@f2
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@f4
    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    #@f7
    move-result-object v2

    #@f8
    invoke-direct {v0, v2}, Lcom/android/internal/telephony/HbpcdUtils;-><init>(Landroid/content/Context;)V

    #@fb
    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mHbpcdUtils:Lcom/android/internal/telephony/HbpcdUtils;

    #@fd
    .line 598
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->updateOtaspState()V

    #@100
    goto/16 :goto_0

    #@102
    :cond_3
    move v0, v1

    #@103
    .line 589
    goto :goto_1
.end method

.method protected updateRoamingState()V
    .locals 8

    #@0
    .prologue
    const/4 v7, 0x1

    #@1
    .line 1974
    iget-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@3
    invoke-virtual {v5}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    #@6
    move-result v5

    #@7
    if-eqz v5, :cond_9

    #@9
    .line 1988
    iget-boolean v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mGsmRoaming:Z

    #@b
    if-nez v5, :cond_3

    #@d
    iget-boolean v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDataRoaming:Z

    #@f
    .line 1989
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
    .line 1995
    :cond_0
    :goto_1
    iget-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@1d
    invoke-virtual {v5, v3}, Landroid/telephony/ServiceState;->setDataRoamingFromRegistration(Z)V

    #@20
    .line 1998
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
    .line 1997
    check-cast v1, Landroid/telephony/CarrierConfigManager;

    #@2f
    .line 2000
    .local v1, "configLoader":Landroid/telephony/CarrierConfigManager;
    if-eqz v1, :cond_8

    #@31
    .line 2002
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
    .line 2004
    .local v0, "b":Landroid/os/PersistableBundle;
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->alwaysOnHomeNetwork(Landroid/os/BaseBundle;)Z

    #@3e
    move-result v5

    #@3f
    if-eqz v5, :cond_6

    #@41
    .line 2005
    const-string/jumbo v5, "updateRoamingState: carrier config override always on home network"

    #@44
    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@47
    .line 2006
    const/4 v3, 0x0

    #@48
    .line 2023
    .end local v0    # "b":Landroid/os/PersistableBundle;
    :cond_1
    :goto_2
    iget-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@4a
    invoke-virtual {v5, v3}, Landroid/telephony/ServiceState;->setVoiceRoaming(Z)V

    #@4d
    .line 2024
    iget-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@4f
    invoke-virtual {v5, v3}, Landroid/telephony/ServiceState;->setDataRoaming(Z)V

    #@52
    .line 1973
    :cond_2
    :goto_3
    return-void

    #@53
    .line 1988
    .end local v1    # "configLoader":Landroid/telephony/CarrierConfigManager;
    :cond_3
    const/4 v3, 0x1

    #@54
    .local v3, "roaming":Z
    goto :goto_0

    #@55
    .line 1990
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
    .line 1989
    if-eqz v5, :cond_0

    #@65
    .line 1991
    :cond_5
    const/4 v3, 0x0

    #@66
    .restart local v3    # "roaming":Z
    goto :goto_1

    #@67
    .line 2007
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
    .line 2008
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
    .line 2009
    iget-object v6, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@81
    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    #@84
    move-result-object v6

    #@85
    .line 2008
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
    .line 2010
    const/4 v3, 0x0

    #@91
    .restart local v3    # "roaming":Z
    goto :goto_2

    #@92
    .line 2011
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
    .line 2012
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
    .line 2013
    iget-object v6, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@ac
    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    #@af
    move-result-object v6

    #@b0
    .line 2012
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
    .line 2014
    const/4 v3, 0x1

    #@bc
    .restart local v3    # "roaming":Z
    goto :goto_2

    #@bd
    .line 2016
    .end local v0    # "b":Landroid/os/PersistableBundle;
    .end local v3    # "roaming":Z
    :catch_0
    move-exception v2

    #@be
    .line 2017
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "updateRoamingState: unable to access carrier config service"

    #@c1
    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/ServiceStateTracker;->loge(Ljava/lang/String;)V

    #@c4
    goto :goto_2

    #@c5
    .line 2020
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_8
    const-string/jumbo v5, "updateRoamingState: no carrier config service available"

    #@c8
    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    #@cb
    goto/16 :goto_2

    #@cd
    .line 2027
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
    .line 2030
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
    .line 2029
    check-cast v1, Landroid/telephony/CarrierConfigManager;

    #@e7
    .line 2031
    .restart local v1    # "configLoader":Landroid/telephony/CarrierConfigManager;
    if-eqz v1, :cond_f

    #@e9
    .line 2033
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
    .line 2034
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
    .line 2036
    .local v4, "systemId":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->alwaysOnHomeNetwork(Landroid/os/BaseBundle;)Z

    #@100
    move-result v5

    #@101
    if-eqz v5, :cond_b

    #@103
    .line 2037
    const-string/jumbo v5, "updateRoamingState: carrier config override always on home network"

    #@106
    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    #@109
    .line 2038
    invoke-direct {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->setRoamingOff()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    #@10c
    .line 2057
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
    .line 2058
    iget-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@11c
    invoke-virtual {v5, v7}, Landroid/telephony/ServiceState;->setVoiceRoaming(Z)V

    #@11f
    .line 2059
    iget-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@121
    invoke-virtual {v5, v7}, Landroid/telephony/ServiceState;->setDataRoaming(Z)V

    #@124
    goto/16 :goto_3

    #@126
    .line 2039
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
    .line 2040
    invoke-virtual {p0, v0, v4}, Lcom/android/internal/telephony/ServiceStateTracker;->isNonRoamingInCdmaNetwork(Landroid/os/BaseBundle;Ljava/lang/String;)Z

    #@135
    move-result v5

    #@136
    .line 2039
    if-eqz v5, :cond_d

    #@138
    .line 2041
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
    .line 2042
    iget-object v6, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@146
    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    #@149
    move-result-object v6

    #@14a
    .line 2041
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14d
    move-result-object v5

    #@14e
    .line 2042
    const-string/jumbo v6, ", "

    #@151
    .line 2041
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
    .line 2043
    invoke-direct {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->setRoamingOff()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    #@163
    goto :goto_4

    #@164
    .line 2050
    .end local v0    # "b":Landroid/os/PersistableBundle;
    .end local v4    # "systemId":Ljava/lang/String;
    :catch_1
    move-exception v2

    #@165
    .line 2051
    .restart local v2    # "e":Ljava/lang/Exception;
    const-string/jumbo v5, "updateRoamingState: unable to access carrier config service"

    #@168
    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/ServiceStateTracker;->loge(Ljava/lang/String;)V

    #@16b
    goto :goto_4

    #@16c
    .line 2044
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
    .line 2045
    invoke-virtual {p0, v0, v4}, Lcom/android/internal/telephony/ServiceStateTracker;->isRoamingInCdmaNetwork(Landroid/os/BaseBundle;Ljava/lang/String;)Z

    #@17b
    move-result v5

    #@17c
    .line 2044
    if-eqz v5, :cond_a

    #@17e
    .line 2046
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
    .line 2047
    iget-object v6, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@18c
    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    #@18f
    move-result-object v6

    #@190
    .line 2046
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@193
    move-result-object v5

    #@194
    .line 2047
    const-string/jumbo v6, ", "

    #@197
    .line 2046
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
    .line 2048
    invoke-direct {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->setRoamingOn()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    #@1a9
    goto/16 :goto_4

    #@1ab
    .line 2054
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
    .locals 29

    #@0
    .prologue
    .line 2078
    move-object/from16 v0, p0

    #@2
    iget-object v2, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@4
    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    #@7
    move-result v2

    #@8
    if-eqz v2, :cond_12

    #@a
    .line 2097
    move-object/from16 v0, p0

    #@c
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    #@e
    move-object/from16 v21, v0

    #@10
    .line 2098
    .local v21, "iccRecords":Lcom/android/internal/telephony/uicc/IccRecords;
    const/4 v5, 0x0

    #@11
    .line 2099
    .local v5, "plmn":Ljava/lang/String;
    const/4 v4, 0x0

    #@12
    .line 2100
    .local v4, "showPlmn":Z
    if-eqz v21, :cond_6

    #@14
    move-object/from16 v0, p0

    #@16
    iget-object v2, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@18
    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    #@1b
    move-result-object v2

    #@1c
    move-object/from16 v0, v21

    #@1e
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/IccRecords;->getDisplayRule(Ljava/lang/String;)I

    #@21
    move-result v24

    #@22
    .line 2101
    .local v24, "rule":I
    :goto_0
    move-object/from16 v0, p0

    #@24
    iget-object v2, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@26
    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    #@29
    move-result v2

    #@2a
    const/4 v3, 0x1

    #@2b
    if-eq v2, v3, :cond_0

    #@2d
    .line 2102
    move-object/from16 v0, p0

    #@2f
    iget-object v2, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@31
    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    #@34
    move-result v2

    #@35
    const/4 v3, 0x2

    #@36
    if-ne v2, v3, :cond_8

    #@38
    .line 2103
    :cond_0
    const/4 v4, 0x1

    #@39
    .line 2104
    move-object/from16 v0, p0

    #@3b
    iget-boolean v2, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mEmergencyOnly:Z

    #@3d
    if-eqz v2, :cond_7

    #@3f
    .line 2106
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    #@42
    move-result-object v2

    #@43
    .line 2107
    const v3, 0x10402a0

    #@46
    .line 2106
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    #@49
    move-result-object v2

    #@4a
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@4d
    move-result-object v5

    #@4e
    .line 2113
    .local v5, "plmn":Ljava/lang/String;
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    #@50
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@53
    const-string/jumbo v3, "updateSpnDisplay: radio is on but out of service, set plmn=\'"

    #@56
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v2

    #@5a
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v2

    #@5e
    .line 2114
    const-string/jumbo v3, "\'"

    #@61
    .line 2113
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@64
    move-result-object v2

    #@65
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@68
    move-result-object v2

    #@69
    move-object/from16 v0, p0

    #@6b
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    #@6e
    .line 2134
    :goto_2
    if-eqz v21, :cond_c

    #@70
    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/uicc/IccRecords;->getServiceProviderName()Ljava/lang/String;

    #@73
    move-result-object v7

    #@74
    .line 2135
    .local v7, "spn":Ljava/lang/String;
    :goto_3
    move-object/from16 v17, v7

    #@76
    .line 2136
    .local v17, "dataSpn":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@79
    move-result v2

    #@7a
    if-nez v2, :cond_e

    #@7c
    .line 2137
    and-int/lit8 v2, v24, 0x1

    #@7e
    .line 2138
    const/4 v3, 0x1

    #@7f
    .line 2137
    if-ne v2, v3, :cond_d

    #@81
    const/4 v6, 0x1

    #@82
    .line 2140
    .local v6, "showSpn":Z
    :goto_4
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@85
    move-result v2

    #@86
    if-nez v2, :cond_f

    #@88
    .line 2141
    move-object/from16 v0, p0

    #@8a
    iget-object v2, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@8c
    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    #@8f
    move-result-object v2

    #@90
    if-eqz v2, :cond_f

    #@92
    .line 2142
    move-object/from16 v0, p0

    #@94
    iget-object v2, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@96
    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    #@99
    move-result-object v2

    #@9a
    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->isWifiCallingEnabled()Z

    #@9d
    move-result v2

    #@9e
    .line 2140
    if-eqz v2, :cond_f

    #@a0
    .line 2146
    move-object/from16 v0, p0

    #@a2
    iget-object v2, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@a4
    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    #@a7
    move-result-object v2

    #@a8
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@ab
    move-result-object v2

    #@ac
    .line 2147
    const v3, 0x1070050

    #@af
    .line 2146
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    #@b2
    move-result-object v28

    #@b3
    .line 2148
    .local v28, "wfcSpnFormats":[Ljava/lang/String;
    const/16 v27, 0x0

    #@b5
    .line 2149
    .local v27, "voiceIdx":I
    const/16 v16, 0x0

    #@b7
    .line 2151
    .local v16, "dataIdx":I
    move-object/from16 v0, p0

    #@b9
    iget-object v2, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@bb
    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    #@be
    move-result-object v2

    #@bf
    const-string/jumbo v3, "carrier_config"

    #@c2
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@c5
    move-result-object v15

    #@c6
    .line 2150
    check-cast v15, Landroid/telephony/CarrierConfigManager;

    #@c8
    .line 2152
    .local v15, "configLoader":Landroid/telephony/CarrierConfigManager;
    if-eqz v15, :cond_1

    #@ca
    .line 2154
    :try_start_0
    move-object/from16 v0, p0

    #@cc
    iget-object v2, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@ce
    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->getSubId()I

    #@d1
    move-result v2

    #@d2
    invoke-virtual {v15, v2}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    #@d5
    move-result-object v14

    #@d6
    .line 2155
    .local v14, "b":Landroid/os/PersistableBundle;
    if-eqz v14, :cond_1

    #@d8
    .line 2156
    const-string/jumbo v2, "wfc_spn_format_idx_int"

    #@db
    invoke-virtual {v14, v2}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    #@de
    move-result v27

    #@df
    .line 2158
    const-string/jumbo v2, "wfc_data_spn_format_idx_int"

    #@e2
    .line 2157
    invoke-virtual {v14, v2}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@e5
    move-result v16

    #@e6
    .line 2165
    .end local v14    # "b":Landroid/os/PersistableBundle;
    :cond_1
    :goto_5
    aget-object v20, v28, v27

    #@e8
    .line 2166
    .local v20, "formatVoice":Ljava/lang/String;
    aget-object v19, v28, v16

    #@ea
    .line 2167
    .local v19, "formatData":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@ed
    move-result-object v23

    #@ee
    .line 2168
    .local v23, "originalSpn":Ljava/lang/String;
    const/4 v2, 0x1

    #@ef
    new-array v2, v2, [Ljava/lang/Object;

    #@f1
    const/4 v3, 0x0

    #@f2
    aput-object v23, v2, v3

    #@f4
    move-object/from16 v0, v20

    #@f6
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@f9
    move-result-object v7

    #@fa
    .line 2169
    const/4 v2, 0x1

    #@fb
    new-array v2, v2, [Ljava/lang/Object;

    #@fd
    const/4 v3, 0x0

    #@fe
    aput-object v23, v2, v3

    #@100
    move-object/from16 v0, v19

    #@102
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@105
    move-result-object v17

    #@106
    .line 2170
    const/4 v6, 0x1

    #@107
    .line 2171
    const/4 v4, 0x0

    #@108
    .line 2179
    .end local v7    # "spn":Ljava/lang/String;
    .end local v15    # "configLoader":Landroid/telephony/CarrierConfigManager;
    .end local v16    # "dataIdx":I
    .end local v19    # "formatData":Ljava/lang/String;
    .end local v20    # "formatVoice":Ljava/lang/String;
    .end local v23    # "originalSpn":Ljava/lang/String;
    .end local v27    # "voiceIdx":I
    .end local v28    # "wfcSpnFormats":[Ljava/lang/String;
    :cond_2
    :goto_6
    const/16 v25, -0x1

    #@10a
    .line 2180
    .local v25, "subId":I
    move-object/from16 v0, p0

    #@10c
    iget-object v2, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@10e
    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    #@111
    move-result v2

    #@112
    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    #@115
    move-result-object v26

    #@116
    .line 2181
    .local v26, "subIds":[I
    if-eqz v26, :cond_3

    #@118
    move-object/from16 v0, v26

    #@11a
    array-length v2, v0

    #@11b
    if-lez v2, :cond_3

    #@11d
    .line 2182
    const/4 v2, 0x0

    #@11e
    aget v25, v26, v2

    #@120
    .line 2186
    :cond_3
    move-object/from16 v0, p0

    #@122
    iget v2, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSubId:I

    #@124
    move/from16 v0, v25

    #@126
    if-ne v2, v0, :cond_4

    #@128
    .line 2187
    move-object/from16 v0, p0

    #@12a
    iget-boolean v2, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mCurShowPlmn:Z

    #@12c
    if-eq v4, v2, :cond_11

    #@12e
    .line 2193
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    #@130
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@133
    const-string/jumbo v3, "updateSpnDisplay: changed sending intent rule="

    #@136
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@139
    move-result-object v2

    #@13a
    move/from16 v0, v24

    #@13c
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@13f
    move-result-object v2

    #@140
    .line 2195
    const-string/jumbo v3, " showPlmn=\'%b\' plmn=\'%s\' showSpn=\'%b\' spn=\'%s\' dataSpn=\'%s\' subId=\'%d\'"

    #@143
    .line 2193
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@146
    move-result-object v2

    #@147
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@14a
    move-result-object v2

    #@14b
    const/4 v3, 0x6

    #@14c
    new-array v3, v3, [Ljava/lang/Object;

    #@14e
    .line 2196
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@151
    move-result-object v8

    #@152
    const/4 v9, 0x0

    #@153
    aput-object v8, v3, v9

    #@155
    const/4 v8, 0x1

    #@156
    aput-object v5, v3, v8

    #@158
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@15b
    move-result-object v8

    #@15c
    const/4 v9, 0x2

    #@15d
    aput-object v8, v3, v9

    #@15f
    const/4 v8, 0x3

    #@160
    aput-object v7, v3, v8

    #@162
    const/4 v8, 0x4

    #@163
    aput-object v17, v3, v8

    #@165
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@168
    move-result-object v8

    #@169
    const/4 v9, 0x5

    #@16a
    aput-object v8, v3, v9

    #@16c
    .line 2193
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@16f
    move-result-object v2

    #@170
    move-object/from16 v0, p0

    #@172
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    #@175
    .line 2198
    new-instance v22, Landroid/content/Intent;

    #@177
    const-string/jumbo v2, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    #@17a
    move-object/from16 v0, v22

    #@17c
    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@17f
    .line 2199
    .local v22, "intent":Landroid/content/Intent;
    const/high16 v2, 0x20000000

    #@181
    move-object/from16 v0, v22

    #@183
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@186
    .line 2200
    const-string/jumbo v2, "showSpn"

    #@189
    move-object/from16 v0, v22

    #@18b
    invoke-virtual {v0, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    #@18e
    .line 2201
    const-string/jumbo v2, "spn"

    #@191
    move-object/from16 v0, v22

    #@193
    invoke-virtual {v0, v2, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@196
    .line 2202
    const-string/jumbo v2, "spnData"

    #@199
    move-object/from16 v0, v22

    #@19b
    move-object/from16 v1, v17

    #@19d
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@1a0
    .line 2203
    const-string/jumbo v2, "showPlmn"

    #@1a3
    move-object/from16 v0, v22

    #@1a5
    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    #@1a8
    .line 2204
    const-string/jumbo v2, "plmn"

    #@1ab
    move-object/from16 v0, v22

    #@1ad
    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@1b0
    .line 2205
    move-object/from16 v0, p0

    #@1b2
    iget-object v2, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@1b4
    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    #@1b7
    move-result v2

    #@1b8
    move-object/from16 v0, v22

    #@1ba
    invoke-static {v0, v2}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    #@1bd
    .line 2206
    move-object/from16 v0, p0

    #@1bf
    iget-object v2, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@1c1
    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    #@1c4
    move-result-object v2

    #@1c5
    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@1c7
    move-object/from16 v0, v22

    #@1c9
    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    #@1cc
    .line 2208
    move-object/from16 v0, p0

    #@1ce
    iget-object v2, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    #@1d0
    move-object/from16 v0, p0

    #@1d2
    iget-object v3, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@1d4
    invoke-virtual {v3}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    #@1d7
    move-result v3

    #@1d8
    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/telephony/SubscriptionController;->setPlmnSpn(IZLjava/lang/String;ZLjava/lang/String;)Z

    #@1db
    move-result v2

    #@1dc
    if-nez v2, :cond_5

    #@1de
    .line 2210
    const/4 v2, 0x1

    #@1df
    move-object/from16 v0, p0

    #@1e1
    iput-boolean v2, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSpnUpdatePending:Z

    #@1e3
    .line 2214
    .end local v22    # "intent":Landroid/content/Intent;
    :cond_5
    :goto_7
    move/from16 v0, v25

    #@1e5
    move-object/from16 v1, p0

    #@1e7
    iput v0, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mSubId:I

    #@1e9
    .line 2215
    move-object/from16 v0, p0

    #@1eb
    iput-boolean v6, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mCurShowSpn:Z

    #@1ed
    .line 2216
    move-object/from16 v0, p0

    #@1ef
    iput-boolean v4, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mCurShowPlmn:Z

    #@1f1
    .line 2217
    move-object/from16 v0, p0

    #@1f3
    iput-object v7, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mCurSpn:Ljava/lang/String;

    #@1f5
    .line 2218
    move-object/from16 v0, v17

    #@1f7
    move-object/from16 v1, p0

    #@1f9
    iput-object v0, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mCurDataSpn:Ljava/lang/String;

    #@1fb
    .line 2219
    move-object/from16 v0, p0

    #@1fd
    iput-object v5, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mCurPlmn:Ljava/lang/String;

    #@1ff
    .line 2077
    .end local v6    # "showSpn":Z
    .end local v17    # "dataSpn":Ljava/lang/String;
    .end local v21    # "iccRecords":Lcom/android/internal/telephony/uicc/IccRecords;
    .end local v24    # "rule":I
    :goto_8
    return-void

    #@200
    .line 2100
    .end local v25    # "subId":I
    .end local v26    # "subIds":[I
    .local v5, "plmn":Ljava/lang/String;
    .restart local v21    # "iccRecords":Lcom/android/internal/telephony/uicc/IccRecords;
    :cond_6
    const/16 v24, 0x0

    #@202
    .restart local v24    # "rule":I
    goto/16 :goto_0

    #@204
    .line 2110
    :cond_7
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    #@207
    move-result-object v2

    #@208
    .line 2111
    const v3, 0x1040288

    #@20b
    .line 2110
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    #@20e
    move-result-object v2

    #@20f
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@212
    move-result-object v5

    #@213
    .local v5, "plmn":Ljava/lang/String;
    goto/16 :goto_1

    #@215
    .line 2115
    .local v5, "plmn":Ljava/lang/String;
    :cond_8
    move-object/from16 v0, p0

    #@217
    iget-object v2, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@219
    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    #@21c
    move-result v2

    #@21d
    if-nez v2, :cond_b

    #@21f
    .line 2117
    move-object/from16 v0, p0

    #@221
    iget-object v2, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@223
    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    #@226
    move-result-object v5

    #@227
    .line 2118
    .local v5, "plmn":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@22a
    move-result v2

    #@22b
    if-nez v2, :cond_a

    #@22d
    .line 2119
    and-int/lit8 v2, v24, 0x2

    #@22f
    .line 2120
    const/4 v3, 0x2

    #@230
    .line 2119
    if-ne v2, v3, :cond_9

    #@232
    const/4 v4, 0x1

    #@233
    goto/16 :goto_2

    #@235
    :cond_9
    const/4 v4, 0x0

    #@236
    goto/16 :goto_2

    #@238
    .line 2118
    :cond_a
    const/4 v4, 0x0

    #@239
    goto/16 :goto_2

    #@23b
    .line 2123
    .local v5, "plmn":Ljava/lang/String;
    :cond_b
    const/4 v4, 0x1

    #@23c
    .line 2124
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    #@23f
    move-result-object v2

    #@240
    .line 2125
    const v3, 0x1040288

    #@243
    .line 2124
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    #@246
    move-result-object v2

    #@247
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@24a
    move-result-object v5

    #@24b
    .line 2126
    .local v5, "plmn":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    #@24d
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@250
    const-string/jumbo v3, "updateSpnDisplay: radio is off w/ showPlmn="

    #@253
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@256
    move-result-object v2

    #@257
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@25a
    move-result-object v2

    #@25b
    .line 2127
    const-string/jumbo v3, " plmn="

    #@25e
    .line 2126
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@261
    move-result-object v2

    #@262
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@265
    move-result-object v2

    #@266
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@269
    move-result-object v2

    #@26a
    move-object/from16 v0, p0

    #@26c
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    #@26f
    goto/16 :goto_2

    #@271
    .line 2134
    :cond_c
    const-string/jumbo v7, ""

    #@274
    goto/16 :goto_3

    #@276
    .line 2137
    .restart local v7    # "spn":Ljava/lang/String;
    .restart local v17    # "dataSpn":Ljava/lang/String;
    :cond_d
    const/4 v6, 0x0

    #@277
    .restart local v6    # "showSpn":Z
    goto/16 :goto_4

    #@279
    .line 2136
    .end local v6    # "showSpn":Z
    :cond_e
    const/4 v6, 0x0

    #@27a
    .restart local v6    # "showSpn":Z
    goto/16 :goto_4

    #@27c
    .line 2160
    .restart local v15    # "configLoader":Landroid/telephony/CarrierConfigManager;
    .restart local v16    # "dataIdx":I
    .restart local v27    # "voiceIdx":I
    .restart local v28    # "wfcSpnFormats":[Ljava/lang/String;
    :catch_0
    move-exception v18

    #@27d
    .line 2161
    .local v18, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    #@27f
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@282
    const-string/jumbo v3, "updateSpnDisplay: carrier config error: "

    #@285
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@288
    move-result-object v2

    #@289
    move-object/from16 v0, v18

    #@28b
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@28e
    move-result-object v2

    #@28f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@292
    move-result-object v2

    #@293
    move-object/from16 v0, p0

    #@295
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->loge(Ljava/lang/String;)V

    #@298
    goto/16 :goto_5

    #@29a
    .line 2172
    .end local v15    # "configLoader":Landroid/telephony/CarrierConfigManager;
    .end local v16    # "dataIdx":I
    .end local v18    # "e":Ljava/lang/Exception;
    .end local v27    # "voiceIdx":I
    .end local v28    # "wfcSpnFormats":[Ljava/lang/String;
    :cond_f
    move-object/from16 v0, p0

    #@29c
    iget-object v2, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@29e
    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    #@2a1
    move-result v2

    #@2a2
    const/4 v3, 0x3

    #@2a3
    if-eq v2, v3, :cond_10

    #@2a5
    .line 2173
    if-eqz v4, :cond_2

    #@2a7
    invoke-static {v7, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    #@2aa
    move-result v2

    #@2ab
    .line 2172
    if-eqz v2, :cond_2

    #@2ad
    .line 2175
    :cond_10
    const/4 v7, 0x0

    #@2ae
    .line 2176
    .local v7, "spn":Ljava/lang/String;
    const/4 v6, 0x0

    #@2af
    goto/16 :goto_6

    #@2b1
    .line 2188
    .end local v7    # "spn":Ljava/lang/String;
    .restart local v25    # "subId":I
    .restart local v26    # "subIds":[I
    :cond_11
    move-object/from16 v0, p0

    #@2b3
    iget-boolean v2, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mCurShowSpn:Z

    #@2b5
    if-ne v6, v2, :cond_4

    #@2b7
    .line 2189
    move-object/from16 v0, p0

    #@2b9
    iget-object v2, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mCurSpn:Ljava/lang/String;

    #@2bb
    invoke-static {v7, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    #@2be
    move-result v2

    #@2bf
    if-eqz v2, :cond_4

    #@2c1
    .line 2190
    move-object/from16 v0, p0

    #@2c3
    iget-object v2, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mCurDataSpn:Ljava/lang/String;

    #@2c5
    move-object/from16 v0, v17

    #@2c7
    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    #@2ca
    move-result v2

    #@2cb
    if-eqz v2, :cond_4

    #@2cd
    .line 2191
    move-object/from16 v0, p0

    #@2cf
    iget-object v2, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mCurPlmn:Ljava/lang/String;

    #@2d1
    invoke-static {v5, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    #@2d4
    move-result v2

    #@2d5
    if-eqz v2, :cond_4

    #@2d7
    goto/16 :goto_7

    #@2d9
    .line 2222
    .end local v4    # "showPlmn":Z
    .end local v5    # "plmn":Ljava/lang/String;
    .end local v6    # "showSpn":Z
    .end local v17    # "dataSpn":Ljava/lang/String;
    .end local v21    # "iccRecords":Lcom/android/internal/telephony/uicc/IccRecords;
    .end local v24    # "rule":I
    .end local v25    # "subId":I
    .end local v26    # "subIds":[I
    :cond_12
    move-object/from16 v0, p0

    #@2db
    iget-object v2, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@2dd
    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    #@2e0
    move-result-object v5

    #@2e1
    .line 2223
    .restart local v5    # "plmn":Ljava/lang/String;
    const/4 v4, 0x0

    #@2e2
    .line 2225
    .restart local v4    # "showPlmn":Z
    if-eqz v5, :cond_15

    #@2e4
    const/4 v4, 0x1

    #@2e5
    .line 2227
    :goto_9
    const/16 v25, -0x1

    #@2e7
    .line 2228
    .restart local v25    # "subId":I
    move-object/from16 v0, p0

    #@2e9
    iget-object v2, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@2eb
    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    #@2ee
    move-result v2

    #@2ef
    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    #@2f2
    move-result-object v26

    #@2f3
    .line 2229
    .restart local v26    # "subIds":[I
    if-eqz v26, :cond_13

    #@2f5
    move-object/from16 v0, v26

    #@2f7
    array-length v2, v0

    #@2f8
    if-lez v2, :cond_13

    #@2fa
    .line 2230
    const/4 v2, 0x0

    #@2fb
    aget v25, v26, v2

    #@2fd
    .line 2233
    :cond_13
    move-object/from16 v0, p0

    #@2ff
    iget v2, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSubId:I

    #@301
    move/from16 v0, v25

    #@303
    if-ne v2, v0, :cond_16

    #@305
    move-object/from16 v0, p0

    #@307
    iget-object v2, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mCurPlmn:Ljava/lang/String;

    #@309
    invoke-static {v5, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    #@30c
    move-result v2

    #@30d
    if-eqz v2, :cond_16

    #@30f
    .line 2257
    :cond_14
    :goto_a
    move/from16 v0, v25

    #@311
    move-object/from16 v1, p0

    #@313
    iput v0, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mSubId:I

    #@315
    .line 2258
    const/4 v2, 0x0

    #@316
    move-object/from16 v0, p0

    #@318
    iput-boolean v2, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mCurShowSpn:Z

    #@31a
    .line 2259
    move-object/from16 v0, p0

    #@31c
    iput-boolean v4, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mCurShowPlmn:Z

    #@31e
    .line 2260
    const-string/jumbo v2, ""

    #@321
    move-object/from16 v0, p0

    #@323
    iput-object v2, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mCurSpn:Ljava/lang/String;

    #@325
    .line 2261
    move-object/from16 v0, p0

    #@327
    iput-object v5, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mCurPlmn:Ljava/lang/String;

    #@329
    goto/16 :goto_8

    #@32b
    .line 2225
    .end local v25    # "subId":I
    .end local v26    # "subIds":[I
    :cond_15
    const/4 v4, 0x0

    #@32c
    goto :goto_9

    #@32d
    .line 2239
    .restart local v25    # "subId":I
    .restart local v26    # "subIds":[I
    :cond_16
    const-string/jumbo v2, "updateSpnDisplay: changed sending intent showPlmn=\'%b\' plmn=\'%s\' subId=\'%d\'"

    #@330
    const/4 v3, 0x3

    #@331
    new-array v3, v3, [Ljava/lang/Object;

    #@333
    .line 2240
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@336
    move-result-object v8

    #@337
    const/4 v9, 0x0

    #@338
    aput-object v8, v3, v9

    #@33a
    const/4 v8, 0x1

    #@33b
    aput-object v5, v3, v8

    #@33d
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@340
    move-result-object v8

    #@341
    const/4 v9, 0x2

    #@342
    aput-object v8, v3, v9

    #@344
    .line 2239
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@347
    move-result-object v2

    #@348
    move-object/from16 v0, p0

    #@34a
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    #@34d
    .line 2242
    new-instance v22, Landroid/content/Intent;

    #@34f
    const-string/jumbo v2, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    #@352
    move-object/from16 v0, v22

    #@354
    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@357
    .line 2243
    .restart local v22    # "intent":Landroid/content/Intent;
    const/high16 v2, 0x20000000

    #@359
    move-object/from16 v0, v22

    #@35b
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@35e
    .line 2244
    const-string/jumbo v2, "showSpn"

    #@361
    const/4 v3, 0x0

    #@362
    move-object/from16 v0, v22

    #@364
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    #@367
    .line 2245
    const-string/jumbo v2, "spn"

    #@36a
    const-string/jumbo v3, ""

    #@36d
    move-object/from16 v0, v22

    #@36f
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@372
    .line 2246
    const-string/jumbo v2, "showPlmn"

    #@375
    move-object/from16 v0, v22

    #@377
    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    #@37a
    .line 2247
    const-string/jumbo v2, "plmn"

    #@37d
    move-object/from16 v0, v22

    #@37f
    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@382
    .line 2248
    move-object/from16 v0, p0

    #@384
    iget-object v2, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@386
    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    #@389
    move-result v2

    #@38a
    move-object/from16 v0, v22

    #@38c
    invoke-static {v0, v2}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    #@38f
    .line 2249
    move-object/from16 v0, p0

    #@391
    iget-object v2, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@393
    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    #@396
    move-result-object v2

    #@397
    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@399
    move-object/from16 v0, v22

    #@39b
    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    #@39e
    .line 2251
    move-object/from16 v0, p0

    #@3a0
    iget-object v8, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    #@3a2
    move-object/from16 v0, p0

    #@3a4
    iget-object v2, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    #@3a6
    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    #@3a9
    move-result v9

    #@3aa
    .line 2252
    const-string/jumbo v13, ""

    #@3ad
    const/4 v12, 0x0

    #@3ae
    move v10, v4

    #@3af
    move-object v11, v5

    #@3b0
    .line 2251
    invoke-virtual/range {v8 .. v13}, Lcom/android/internal/telephony/SubscriptionController;->setPlmnSpn(IZLjava/lang/String;ZLjava/lang/String;)Z

    #@3b3
    move-result v2

    #@3b4
    if-nez v2, :cond_14

    #@3b6
    .line 2253
    const/4 v2, 0x1

    #@3b7
    move-object/from16 v0, p0

    #@3b9
    iput-boolean v2, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSpnUpdatePending:Z

    #@3bb
    goto/16 :goto_a
.end method

.method protected useDataRegStateForDataOnlyDevices()V
    .locals 2

    #@0
    .prologue
    .line 671
    iget-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mVoiceCapable:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 673
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
    .line 674
    const-string/jumbo v1, " DataRegState="

    #@1d
    .line 673
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v0

    #@21
    .line 674
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    #@23
    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getDataRegState()I

    #@26
    move-result v1

    #@27
    .line 673
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
    .line 677
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
    .line 670
    :cond_0
    return-void
.end method
