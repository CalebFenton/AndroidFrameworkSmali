.class public Lcom/android/internal/telephony/GsmCdmaPhone;
.super Lcom/android/internal/telephony/Phone;
.source "GsmCdmaPhone.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/GsmCdmaPhone$ImsManagerFactory;,
        Lcom/android/internal/telephony/GsmCdmaPhone$Cfu;
    }
.end annotation


# static fields
.field public static final blacklist CANCEL_ECM_TIMER:I = 0x1

.field public static final blacklist CURR_SUBID:Ljava/lang/String; = "curr_subid"

.field public static blacklist ENABLE_UICC_APPS_MAX_RETRIES:I = 0x3

.field public static final blacklist LOG_TAG:Ljava/lang/String; = "GsmCdmaPhone"

.field private static final blacklist N1_MODE_DISALLOWED_REASON_CARRIER:Ljava/lang/Integer;

.field private static final blacklist N1_MODE_DISALLOWED_REASON_IMS:Ljava/lang/Integer;

.field public static final blacklist PROPERTY_CDMA_HOME_OPERATOR_NUMERIC:Ljava/lang/String; = "ro.cdma.home.operator.numeric"

.field public static final blacklist RESTART_ECM_TIMER:I

.field private static final blacklist VOICE_PS_CALL_RADIO_TECHNOLOGY:[I

.field private static blacklist pOtaSpNumSchema:Ljava/util/regex/Pattern;


# instance fields
.field private blacklist mBroadcastEmergencyCallStateChanges:Z

.field private blacklist mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private blacklist mCDM:Lcom/android/internal/telephony/CarrierKeyDownloadManager;

.field private blacklist mCIM:Lcom/android/internal/telephony/CarrierInfoManager;

.field public greylist-max-r mCT:Lcom/android/internal/telephony/GsmCdmaCallTracker;

.field private final blacklist mCallWaitingController:Lcom/android/internal/telephony/CallWaitingController;

.field private blacklist mCarrierOtaSpNumSchema:Ljava/lang/String;

.field private final blacklist mCarrierPrivilegesTracker:Lcom/android/internal/telephony/CarrierPrivilegesTracker;

.field private blacklist mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

.field public blacklist mCdmaSubscriptionSource:I

.field public blacklist mCellBroadcastConfigTracker:Lcom/android/internal/telephony/CellBroadcastConfigTracker;

.field private blacklist mDialArgs:Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;

.field private greylist mEcmExitRespRegistrant:Lcom/android/internal/telephony/Registrant;

.field private final blacklist mEcmTimerResetRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field private final blacklist mEmergencyDomainSelectedRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field public blacklist mEmergencyNumberTracker:Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;

.field private blacklist mEsn:Ljava/lang/String;

.field private blacklist mExitEcmRunnable:Ljava/lang/Runnable;

.field private blacklist mIccPhoneBookIntManager:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

.field private greylist-max-r mIccSmsInterfaceManager:Lcom/android/internal/telephony/IccSmsInterfaceManager;

.field private blacklist mIdentifierDisclosureNotifier:Lcom/android/internal/telephony/security/CellularIdentifierDisclosureNotifier;

.field private blacklist mImei:Ljava/lang/String;

.field private blacklist mImeiSv:Ljava/lang/String;

.field private blacklist mImeiType:I

.field private final blacklist mImsManagerFactory:Lcom/android/internal/telephony/GsmCdmaPhone$ImsManagerFactory;

.field private blacklist mIsIdentifierDisclosureTransparencySupported:Z

.field private blacklist mIsNullCipherAndIntegritySupported:Z

.field private blacklist mIsNullCipherNotificationSupported:Z

.field private blacklist mIsTestingEmergencyCallbackMode:Z

.field private greylist-max-r mIsimUiccRecords:Lcom/android/internal/telephony/uicc/IsimUiccRecords;

.field private blacklist mManualNetworkSelectionPlmn:Ljava/lang/String;

.field private blacklist mMeid:Ljava/lang/String;

.field private blacklist mModemN1Mode:Ljava/lang/Boolean;

.field private final blacklist mN1ModeDisallowedReasons:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mNullCipherNotifier:Lcom/android/internal/telephony/security/NullCipherNotifier;

.field private greylist-max-r mPendingMMIs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/telephony/MmiCode;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mPrecisePhoneType:I

.field private blacklist mResetModemOnRadioTechnologyChange:Z

.field private blacklist mRilVersion:I

.field public greylist-max-r mSST:Lcom/android/internal/telephony/ServiceStateTracker;

.field private blacklist mSafetySource:Lcom/android/internal/telephony/security/CellularNetworkSecuritySafetySource;

.field private blacklist mSimRecords:Lcom/android/internal/telephony/uicc/SIMRecords;

.field private blacklist mSimState:I

.field private blacklist mSsOverCdmaSupported:Z

.field private blacklist mSsnRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field private final blacklist mSubscriptionsChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

.field private blacklist mTelecomVoiceServiceStateOverride:I

.field private blacklist mUiccApplicationsEnabled:Ljava/lang/Boolean;

.field private blacklist mVmNumber:Ljava/lang/String;

.field private final blacklist mVolteSilentRedialRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field private blacklist mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public static synthetic blacklist $r8$lambda$46E5C3y7TPJNhHUSZtfxwtV33eE(Lcom/android/internal/telephony/GsmCdmaPhone;Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->lambda$refreshSafetySources$4(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$Gj2ZMYioTdq8TtHU4zYFYNHuxRg(Lcom/android/internal/telephony/GsmCdmaPhone;I)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->lambda$handleMessage$2(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$ZdLqlaV3LPWXwF1E197ZecWFvYY(Lcom/android/internal/telephony/GsmCdmaPhone;ZLandroid/os/Message;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/GsmCdmaPhone;->lambda$setN1ModeEnabled$1(ZLandroid/os/Message;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$i3skBIMvj1rtaeV_ZUidvmcVHx4(Ljava/lang/String;Landroid/telephony/SubscriptionInfo;)Z
    .registers 2

    .line 5222
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getIccId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0}, Lcom/android/internal/telephony/uicc/IccUtils;->stripTrailingFs(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSimState(Lcom/android/internal/telephony/GsmCdmaPhone;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSimState:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSimState(Lcom/android/internal/telephony/GsmCdmaPhone;I)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSimState:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mcurrentSlotSubIdChanged(Lcom/android/internal/telephony/GsmCdmaPhone;)Z
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->currentSlotSubIdChanged()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mreapplyUiccAppsEnablementIfNeeded(Lcom/android/internal/telephony/GsmCdmaPhone;I)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->reapplyUiccAppsEnablementIfNeeded(I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mupdateTtyMode(Lcom/android/internal/telephony/GsmCdmaPhone;I)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->updateTtyMode(I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mupdateUiTtyMode(Lcom/android/internal/telephony/GsmCdmaPhone;I)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->updateUiTtyMode(I)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 4

    const/4 v0, 0x1

    .line 313
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/GsmCdmaPhone;->N1_MODE_DISALLOWED_REASON_CARRIER:Ljava/lang/Integer;

    const/4 v0, 0x2

    .line 317
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/GsmCdmaPhone;->N1_MODE_DISALLOWED_REASON_IMS:Ljava/lang/Integer;

    .line 4340
    const-string v0, "[,\\s]+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/GsmCdmaPhone;->pOtaSpNumSchema:Ljava/util/regex/Pattern;

    const/16 v0, 0x12

    const/16 v1, 0x14

    const/16 v2, 0xe

    const/16 v3, 0x13

    .line 4921
    filled-new-array {v2, v3, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/GsmCdmaPhone;->VOICE_PS_CALL_RADIO_TECHNOLOGY:[I

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;IILcom/android/internal/telephony/TelephonyComponentFactory;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)V
    .registers 17

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    .line 331
    invoke-direct/range {v0 .. v8}, Lcom/android/internal/telephony/GsmCdmaPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;ZIILcom/android/internal/telephony/TelephonyComponentFactory;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;ZIILcom/android/internal/telephony/TelephonyComponentFactory;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)V
    .registers 19

    .line 339
    new-instance v8, Lcom/android/internal/telephony/GsmCdmaPhone$$ExternalSyntheticLambda1;

    invoke-direct {v8}, Lcom/android/internal/telephony/GsmCdmaPhone$$ExternalSyntheticLambda1;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/android/internal/telephony/GsmCdmaPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;ZIILcom/android/internal/telephony/TelephonyComponentFactory;Lcom/android/internal/telephony/GsmCdmaPhone$ImsManagerFactory;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;ZIILcom/android/internal/telephony/TelephonyComponentFactory;Lcom/android/internal/telephony/GsmCdmaPhone$ImsManagerFactory;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)V
    .registers 21

    move/from16 v0, p6

    const/4 v10, 0x1

    if-ne v0, v10, :cond_14

    .line 349
    const-string v1, "GSM"

    :goto_7
    move-object v4, p1

    move-object v5, p2

    move-object v3, p3

    move v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p7

    move-object/from16 v9, p9

    move-object v2, v1

    move-object v1, p0

    goto :goto_17

    :cond_14
    const-string v1, "CDMA"

    goto :goto_7

    :goto_17
    invoke-direct/range {v1 .. v9}, Lcom/android/internal/telephony/Phone;-><init>(Ljava/lang/String;Lcom/android/internal/telephony/PhoneNotifier;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;ZILcom/android/internal/telephony/TelephonyComponentFactory;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)V

    .line 179
    new-instance p3, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {p3}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object p3, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSsnRegistrants:Lcom/android/internal/telephony/RegistrantList;

    const/4 p3, -0x1

    .line 188
    iput p3, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCdmaSubscriptionSource:I

    const/4 v1, 0x0

    .line 197
    iput-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mUiccApplicationsEnabled:Ljava/lang/Boolean;

    const/4 v2, 0x0

    .line 200
    iput-boolean v2, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mIsTestingEmergencyCallbackMode:Z

    .line 206
    new-instance v3, Lcom/android/internal/telephony/GsmCdmaPhone$1;

    invoke-direct {v3, p0}, Lcom/android/internal/telephony/GsmCdmaPhone$1;-><init>(Lcom/android/internal/telephony/GsmCdmaPhone;)V

    iput-object v3, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mExitEcmRunnable:Ljava/lang/Runnable;

    .line 233
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mPendingMMIs:Ljava/util/ArrayList;

    .line 240
    new-instance v3, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v3}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v3, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mEcmTimerResetRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 242
    new-instance v3, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v3}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v3, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mVolteSilentRedialRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 243
    iput-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mDialArgs:Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;

    .line 244
    new-instance v3, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v3}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v3, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mEmergencyDomainSelectedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 248
    iput p3, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mImeiType:I

    .line 249
    iput v2, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSimState:I

    .line 253
    invoke-static {p0, v1, v10}, Lcom/android/internal/telephony/CellBroadcastConfigTracker;->make(Lcom/android/internal/telephony/Phone;Landroid/os/Handler;Z)Lcom/android/internal/telephony/CellBroadcastConfigTracker;

    move-result-object p3

    iput-object p3, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCellBroadcastConfigTracker:Lcom/android/internal/telephony/CellBroadcastConfigTracker;

    .line 255
    iput-boolean v2, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mIsNullCipherAndIntegritySupported:Z

    .line 256
    iput-boolean v2, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mIsIdentifierDisclosureTransparencySupported:Z

    .line 257
    iput-boolean v2, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mIsNullCipherNotificationSupported:Z

    .line 287
    iput-boolean v2, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mResetModemOnRadioTechnologyChange:Z

    .line 288
    iput-boolean v2, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSsOverCdmaSupported:Z

    .line 291
    iput-boolean v2, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mBroadcastEmergencyCallStateChanges:Z

    .line 292
    iput v10, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mTelecomVoiceServiceStateOverride:I

    .line 320
    new-instance p3, Landroid/util/ArraySet;

    invoke-direct {p3}, Landroid/util/ArraySet;-><init>()V

    iput-object p3, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mN1ModeDisallowedReasons:Ljava/util/Set;

    .line 324
    iput-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mModemN1Mode:Ljava/lang/Boolean;

    .line 438
    new-instance p3, Lcom/android/internal/telephony/GsmCdmaPhone$4;

    invoke-direct {p3, p0}, Lcom/android/internal/telephony/GsmCdmaPhone$4;-><init>(Lcom/android/internal/telephony/GsmCdmaPhone;)V

    iput-object p3, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 353
    iput v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mPrecisePhoneType:I

    .line 354
    new-instance p3, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;

    iget v2, p0, Lcom/android/internal/telephony/Phone;->mPhoneId:I

    invoke-direct {p3, v2, p0, v9}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;-><init>(ILcom/android/internal/telephony/Phone;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)V

    iput-object p3, p0, Lcom/android/internal/telephony/Phone;->mVoiceCallSessionStats:Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;

    move-object/from16 p3, p8

    .line 355
    iput-object p3, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mImsManagerFactory:Lcom/android/internal/telephony/GsmCdmaPhone$ImsManagerFactory;

    .line 356
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/GsmCdmaPhone;->initOnce(Lcom/android/internal/telephony/CommandsInterface;)V

    .line 357
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->initRatSpecific(I)V

    .line 360
    iget-object p2, p0, Lcom/android/internal/telephony/Phone;->mTelephonyComponentFactory:Lcom/android/internal/telephony/TelephonyComponentFactory;

    const-class p3, Lcom/android/internal/telephony/CarrierActionAgent;

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/android/internal/telephony/TelephonyComponentFactory;->inject(Ljava/lang/String;)Lcom/android/internal/telephony/TelephonyComponentFactory;

    move-result-object p2

    .line 361
    invoke-virtual {p2, p0}, Lcom/android/internal/telephony/TelephonyComponentFactory;->makeCarrierActionAgent(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/CarrierActionAgent;

    move-result-object p2

    iput-object p2, p0, Lcom/android/internal/telephony/Phone;->mCarrierActionAgent:Lcom/android/internal/telephony/CarrierActionAgent;

    .line 362
    iget-object p2, p0, Lcom/android/internal/telephony/Phone;->mTelephonyComponentFactory:Lcom/android/internal/telephony/TelephonyComponentFactory;

    const-class p3, Lcom/android/internal/telephony/CarrierSignalAgent;

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/android/internal/telephony/TelephonyComponentFactory;->inject(Ljava/lang/String;)Lcom/android/internal/telephony/TelephonyComponentFactory;

    move-result-object p2

    .line 363
    invoke-virtual {p2, p0}, Lcom/android/internal/telephony/TelephonyComponentFactory;->makeCarrierSignalAgent(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/CarrierSignalAgent;

    move-result-object p2

    iput-object p2, p0, Lcom/android/internal/telephony/Phone;->mCarrierSignalAgent:Lcom/android/internal/telephony/CarrierSignalAgent;

    .line 364
    iget-object p2, p0, Lcom/android/internal/telephony/Phone;->mTelephonyComponentFactory:Lcom/android/internal/telephony/TelephonyComponentFactory;

    const-class p3, Lcom/android/internal/telephony/data/AccessNetworksManager;

    .line 365
    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/android/internal/telephony/TelephonyComponentFactory;->inject(Ljava/lang/String;)Lcom/android/internal/telephony/TelephonyComponentFactory;

    move-result-object p2

    .line 366
    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-virtual {p2, p0, p3}, Lcom/android/internal/telephony/TelephonyComponentFactory;->makeAccessNetworksManager(Lcom/android/internal/telephony/Phone;Landroid/os/Looper;)Lcom/android/internal/telephony/data/AccessNetworksManager;

    move-result-object p2

    iput-object p2, p0, Lcom/android/internal/telephony/Phone;->mAccessNetworksManager:Lcom/android/internal/telephony/data/AccessNetworksManager;

    .line 368
    iget-object p2, p0, Lcom/android/internal/telephony/Phone;->mTelephonyComponentFactory:Lcom/android/internal/telephony/TelephonyComponentFactory;

    const-class p3, Lcom/android/internal/telephony/SignalStrengthController;

    .line 369
    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    .line 368
    invoke-virtual {p2, p3}, Lcom/android/internal/telephony/TelephonyComponentFactory;->inject(Ljava/lang/String;)Lcom/android/internal/telephony/TelephonyComponentFactory;

    move-result-object p2

    .line 369
    invoke-virtual {p2, p0}, Lcom/android/internal/telephony/TelephonyComponentFactory;->makeSignalStrengthController(Lcom/android/internal/telephony/GsmCdmaPhone;)Lcom/android/internal/telephony/SignalStrengthController;

    move-result-object p2

    iput-object p2, p0, Lcom/android/internal/telephony/Phone;->mSignalStrengthController:Lcom/android/internal/telephony/SignalStrengthController;

    .line 370
    iget-object p2, p0, Lcom/android/internal/telephony/Phone;->mTelephonyComponentFactory:Lcom/android/internal/telephony/TelephonyComponentFactory;

    const-class p3, Lcom/android/internal/telephony/ServiceStateTracker;

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/android/internal/telephony/TelephonyComponentFactory;->inject(Ljava/lang/String;)Lcom/android/internal/telephony/TelephonyComponentFactory;

    move-result-object p2

    iget-object p3, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 371
    invoke-virtual {p2, p0, p3, v9}, Lcom/android/internal/telephony/TelephonyComponentFactory;->makeServiceStateTracker(Lcom/android/internal/telephony/GsmCdmaPhone;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object p2

    iput-object p2, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    .line 372
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->hasCalling()Z

    move-result p2

    if-nez p2, :cond_f8

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->hasMessaging()Z

    move-result p2

    if-eqz p2, :cond_10e

    .line 373
    :cond_f8
    iget-object p2, p0, Lcom/android/internal/telephony/Phone;->mTelephonyComponentFactory:Lcom/android/internal/telephony/TelephonyComponentFactory;

    const-class p3, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;

    .line 374
    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/android/internal/telephony/TelephonyComponentFactory;->inject(Ljava/lang/String;)Lcom/android/internal/telephony/TelephonyComponentFactory;

    move-result-object p2

    iget-object p3, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mFeatureFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

    invoke-virtual {p2, p0, p3, v0}, Lcom/android/internal/telephony/TelephonyComponentFactory;->makeEmergencyNumberTracker(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;

    move-result-object p2

    iput-object p2, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mEmergencyNumberTracker:Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;

    .line 377
    :cond_10e
    iget-object p2, p0, Lcom/android/internal/telephony/Phone;->mTelephonyComponentFactory:Lcom/android/internal/telephony/TelephonyComponentFactory;

    const-class p3, Lcom/android/internal/telephony/DeviceStateMonitor;

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/android/internal/telephony/TelephonyComponentFactory;->inject(Ljava/lang/String;)Lcom/android/internal/telephony/TelephonyComponentFactory;

    move-result-object p2

    iget-object p3, p0, Lcom/android/internal/telephony/Phone;->mFeatureFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

    .line 378
    invoke-virtual {p2, p0, p3}, Lcom/android/internal/telephony/TelephonyComponentFactory;->makeDeviceStateMonitor(Lcom/android/internal/telephony/Phone;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)Lcom/android/internal/telephony/DeviceStateMonitor;

    move-result-object p2

    iput-object p2, p0, Lcom/android/internal/telephony/Phone;->mDeviceStateMonitor:Lcom/android/internal/telephony/DeviceStateMonitor;

    .line 382
    iget-object p2, p0, Lcom/android/internal/telephony/Phone;->mTelephonyComponentFactory:Lcom/android/internal/telephony/TelephonyComponentFactory;

    const-class p3, Lcom/android/internal/telephony/DisplayInfoController;

    .line 383
    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    .line 382
    invoke-virtual {p2, p3}, Lcom/android/internal/telephony/TelephonyComponentFactory;->inject(Ljava/lang/String;)Lcom/android/internal/telephony/TelephonyComponentFactory;

    move-result-object p2

    .line 384
    invoke-virtual {p2, p0, v9}, Lcom/android/internal/telephony/TelephonyComponentFactory;->makeDisplayInfoController(Lcom/android/internal/telephony/Phone;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)Lcom/android/internal/telephony/DisplayInfoController;

    move-result-object p2

    iput-object p2, p0, Lcom/android/internal/telephony/Phone;->mDisplayInfoController:Lcom/android/internal/telephony/DisplayInfoController;

    .line 386
    iget-object p2, p0, Lcom/android/internal/telephony/Phone;->mTelephonyComponentFactory:Lcom/android/internal/telephony/TelephonyComponentFactory;

    const-class p3, Lcom/android/internal/telephony/data/DataNetworkController;

    .line 387
    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    .line 386
    invoke-virtual {p2, p3}, Lcom/android/internal/telephony/TelephonyComponentFactory;->inject(Ljava/lang/String;)Lcom/android/internal/telephony/TelephonyComponentFactory;

    move-result-object p2

    .line 388
    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-virtual {p2, p0, p3, v9}, Lcom/android/internal/telephony/TelephonyComponentFactory;->makeDataNetworkController(Lcom/android/internal/telephony/Phone;Landroid/os/Looper;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)Lcom/android/internal/telephony/data/DataNetworkController;

    move-result-object p2

    iput-object p2, p0, Lcom/android/internal/telephony/Phone;->mDataNetworkController:Lcom/android/internal/telephony/data/DataNetworkController;

    .line 390
    iget-object p2, p0, Lcom/android/internal/telephony/Phone;->mTelephonyComponentFactory:Lcom/android/internal/telephony/TelephonyComponentFactory;

    const-class p3, Lcom/android/internal/telephony/CarrierResolver;

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/android/internal/telephony/TelephonyComponentFactory;->inject(Ljava/lang/String;)Lcom/android/internal/telephony/TelephonyComponentFactory;

    move-result-object p2

    .line 391
    invoke-virtual {p2, p0, v9}, Lcom/android/internal/telephony/TelephonyComponentFactory;->makeCarrierResolver(Lcom/android/internal/telephony/Phone;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)Lcom/android/internal/telephony/CarrierResolver;

    move-result-object p2

    iput-object p2, p0, Lcom/android/internal/telephony/Phone;->mCarrierResolver:Lcom/android/internal/telephony/CarrierResolver;

    .line 392
    new-instance p2, Lcom/android/internal/telephony/CarrierPrivilegesTracker;

    .line 393
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {p2, p3, p0, p1, v9}, Lcom/android/internal/telephony/CarrierPrivilegesTracker;-><init>(Landroid/os/Looper;Lcom/android/internal/telephony/Phone;Landroid/content/Context;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)V

    iput-object p2, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCarrierPrivilegesTracker:Lcom/android/internal/telephony/CarrierPrivilegesTracker;

    .line 395
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getCarrierActionAgent()Lcom/android/internal/telephony/CarrierActionAgent;

    move-result-object p2

    const/4 p3, 0x0

    const/4 v0, 0x0

    const/4 v2, 0x0

    const/16 v3, 0x30

    move-object p4, p0

    move-object/from16 p6, p3

    move/from16 p7, v0

    move p3, v2

    move/from16 p5, v3

    invoke-virtual/range {p2 .. p7}, Lcom/android/internal/telephony/CarrierActionAgent;->registerForCarrierAction(ILandroid/os/Handler;ILjava/lang/Object;Z)V

    .line 399
    iget-object p2, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    const/16 p3, 0x13

    invoke-virtual {p2, p0, p3, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForNetworkAttached(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 400
    iget-object p2, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    const/16 p3, 0x2e

    invoke-virtual {p2, p0, p3, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForVoiceRegStateOrRatChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 401
    iget-object p2, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    invoke-virtual {p2}, Lcom/android/internal/telephony/ServiceStateTracker;->getServiceStateStats()Lcom/android/internal/telephony/metrics/ServiceStateStats;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/internal/telephony/metrics/ServiceStateStats;->registerDataNetworkControllerCallback()V

    .line 403
    iget-object p2, p0, Lcom/android/internal/telephony/Phone;->mSubscriptionManagerService:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    new-instance p3, Lcom/android/internal/telephony/GsmCdmaPhone$2;

    new-instance v0, Lcom/android/internal/telephony/GsmCdmaPhone$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/GsmCdmaPhone$$ExternalSyntheticLambda3;-><init>(Lcom/android/internal/telephony/GsmCdmaPhone;)V

    invoke-direct {p3, p0, v0}, Lcom/android/internal/telephony/GsmCdmaPhone$2;-><init>(Lcom/android/internal/telephony/GsmCdmaPhone;Ljava/util/concurrent/Executor;)V

    invoke-virtual {p2, p3}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->registerCallback(Lcom/android/internal/telephony/subscription/SubscriptionManagerService$SubscriptionManagerServiceCallback;)V

    .line 411
    iget-object p2, p0, Lcom/android/internal/telephony/Phone;->mTelephonyComponentFactory:Lcom/android/internal/telephony/TelephonyComponentFactory;

    const-class p3, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;

    .line 412
    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/android/internal/telephony/TelephonyComponentFactory;->inject(Ljava/lang/String;)Lcom/android/internal/telephony/TelephonyComponentFactory;

    move-result-object p2

    .line 413
    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-virtual {p2, p0, p3}, Lcom/android/internal/telephony/TelephonyComponentFactory;->makeLinkBandwidthEstimator(Lcom/android/internal/telephony/Phone;Landroid/os/Looper;)Lcom/android/internal/telephony/data/LinkBandwidthEstimator;

    move-result-object p2

    iput-object p2, p0, Lcom/android/internal/telephony/Phone;->mLinkBandwidthEstimator:Lcom/android/internal/telephony/data/LinkBandwidthEstimator;

    .line 415
    new-instance p2, Lcom/android/internal/telephony/CallWaitingController;

    invoke-direct {p2, p0}, Lcom/android/internal/telephony/CallWaitingController;-><init>(Lcom/android/internal/telephony/GsmCdmaPhone;)V

    iput-object p2, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCallWaitingController:Lcom/android/internal/telephony/CallWaitingController;

    .line 417
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->hasCalling()Z

    move-result p2

    if-eqz p2, :cond_1ce

    .line 418
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->loadTtyMode()V

    .line 420
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object p2

    invoke-virtual {p2, p0}, Lcom/android/internal/telephony/CallManager;->registerPhone(Lcom/android/internal/telephony/Phone;)Z

    .line 423
    :cond_1ce
    new-instance p2, Lcom/android/internal/telephony/GsmCdmaPhone$3;

    invoke-direct {p2, p0}, Lcom/android/internal/telephony/GsmCdmaPhone$3;-><init>(Lcom/android/internal/telephony/GsmCdmaPhone;)V

    iput-object p2, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSubscriptionsChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    .line 431
    const-class p3, Landroid/telephony/SubscriptionManager;

    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/SubscriptionManager;

    .line 432
    new-instance p3, Landroid/os/HandlerExecutor;

    invoke-direct {p3, p0}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    invoke-virtual {p1, p3, p2}, Landroid/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Ljava/util/concurrent/Executor;Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 435
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "GsmCdmaPhone: constructor: sub = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/internal/telephony/Phone;->mPhoneId:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist checkForTestEmergencyNumber(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 4843
    const-string v0, "ril.test.emergencynumber"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4844
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5a

    .line 4845
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 4846
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkForTestEmergencyNumber: values.length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 4847
    array-length v1, v0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_5a

    const/4 v1, 0x0

    .line 4848
    aget-object v1, v0, v1

    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5a

    .line 4849
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkForTestEmergencyNumber: remap "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " to "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x1

    aget-object v2, v0, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 4850
    aget-object p0, v0, p1

    return-object p0

    :cond_5a
    return-object p1
.end method

.method private static blacklist checkOtaSpNumBasedOnSysSelCode(I[Ljava/lang/String;)Z
    .registers 9

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 4404
    :try_start_2
    aget-object v2, p1, v0

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    move v3, v1

    :goto_9
    if-ge v3, v2, :cond_3e

    mul-int/lit8 v4, v3, 0x2

    add-int/lit8 v5, v4, 0x2

    .line 4406
    aget-object v6, p1, v5

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_34

    add-int/lit8 v4, v4, 0x3

    aget-object v6, p1, v4

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_34

    .line 4407
    aget-object v5, p1, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 4408
    aget-object v4, p1, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4
    :try_end_2d
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2d} :catch_32

    if-lt p0, v5, :cond_34

    if-gt p0, v4, :cond_34

    return v0

    :catch_32
    move-exception p0

    goto :goto_37

    :cond_34
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 4420
    :goto_37
    const-string p1, "GsmCdmaPhone"

    const-string v0, "checkOtaSpNumBasedOnSysSelCode, error"

    invoke-static {p1, v0, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3e
    return v1
.end method

.method private blacklist currentSlotSubIdChanged()Z
    .registers 5

    .line 3846
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mContext:Landroid/content/Context;

    .line 3847
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 3848
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "curr_subid"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/internal/telephony/Phone;->mPhoneId:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, -0x1

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 3849
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v3

    if-eq v1, v3, :cond_26

    const/4 v1, 0x1

    goto :goto_27

    :cond_26
    const/4 v1, 0x0

    :goto_27
    if-eqz v1, :cond_48

    .line 3852
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 3853
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/telephony/Phone;->mPhoneId:I

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result p0

    invoke-interface {v0, v2, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 3854
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 3856
    :cond_48
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "currentSlotSubIdChanged: changed="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "GsmCdmaPhone"

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private blacklist doesResultIndicateModemSupport(Landroid/os/AsyncResult;)Z
    .registers 2

    if-eqz p1, :cond_9

    .line 3820
    iget-object p0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez p0, :cond_7

    goto :goto_9

    :cond_7
    const/4 p0, 0x0

    return p0

    :cond_9
    :goto_9
    const/4 p0, 0x1

    return p0
.end method

.method private static blacklist extractSelCodeFromOtaSpNum(Ljava/lang/String;)I
    .registers 5

    .line 4377
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    .line 4380
    const-string v2, "*228"

    const/4 v3, 0x4

    invoke-virtual {p0, v1, v2, v1, v3}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v1

    if-eqz v1, :cond_1a

    const/4 v1, 0x6

    if-lt v0, v1, :cond_1a

    .line 4387
    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 4386
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    goto :goto_1b

    :cond_1a
    const/4 p0, -0x1

    .line 4390
    :goto_1b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "extractSelCodeFromOtaSpNum "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GsmCdmaPhone"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method private blacklist getCsCallRadioTech(II)I
    .registers 5

    .line 4967
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCsCallRadioTech, current vrs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", vrat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    if-nez p1, :cond_26

    .line 4969
    sget-object p1, Lcom/android/internal/telephony/GsmCdmaPhone;->VOICE_PS_CALL_RADIO_TECHNOLOGY:[I

    .line 4970
    invoke-static {p1, p2}, Lcom/android/internal/telephony/util/ArrayUtils;->contains([II)Z

    move-result p1

    if-eqz p1, :cond_27

    :cond_26
    const/4 p2, 0x0

    .line 4974
    :cond_27
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getCsCallRadioTech, result calcVrat="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    return p2
.end method

.method private blacklist getUiccProfile()Lcom/android/internal/telephony/uicc/UiccProfile;
    .registers 2

    .line 4748
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v0

    iget p0, p0, Lcom/android/internal/telephony/Phone;->mPhoneId:I

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccProfileForPhone(I)Lcom/android/internal/telephony/uicc/UiccProfile;

    move-result-object p0

    return-object p0
.end method

.method private blacklist getVmSimImsi()Ljava/lang/String;
    .registers 4

    .line 1997
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1998
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "vm_sim_imsi_key"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private blacklist handleCallDeflectionIncallSupplementaryService(Ljava/lang/String;)Z
    .registers 5

    .line 1197
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->hasCalling()Z

    move-result v0

    if-eqz v0, :cond_48

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v0, 0x1

    if-le p1, v0, :cond_e

    goto :goto_48

    .line 1201
    :cond_e
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object p1

    sget-object v1, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq p1, v1, :cond_33

    .line 1202
    const-string p1, "MmiCode 0: rejectCall"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 1204
    :try_start_1f
    iget-object p1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCT:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    invoke-virtual {p1}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->rejectCall()V
    :try_end_24
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_1f .. :try_end_24} :catch_25

    goto :goto_47

    :catch_25
    move-exception p1

    .line 1206
    const-string v1, "GsmCdmaPhone"

    const-string v2, "reject failed"

    invoke-static {v1, v2, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1208
    sget-object p1, Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;->REJECT:Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifySuppServiceFailed(Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;)V

    goto :goto_47

    .line 1210
    :cond_33
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getBackgroundCall()Lcom/android/internal/telephony/GsmCdmaCall;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object p1

    if-eq p1, v1, :cond_47

    .line 1211
    const-string p1, "MmiCode 0: hangupWaitingOrBackground"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 1212
    iget-object p0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCT:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->hangupWaitingOrBackground()V

    :cond_47
    :goto_47
    return v0

    :cond_48
    :goto_48
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist handleCallHoldIncallSupplementaryService(Ljava/lang/String;)Z
    .registers 7

    .line 1257
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_9

    const/4 p0, 0x0

    return p0

    .line 1263
    :cond_9
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getForegroundCall()Lcom/android/internal/telephony/GsmCdmaCall;

    move-result-object v1

    .line 1265
    const-string v2, "GsmCdmaPhone"

    const/4 v3, 0x1

    if-le v0, v3, :cond_67

    .line 1267
    :try_start_12
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result p1

    add-int/lit8 p1, p1, -0x30

    .line 1269
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCT:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->getConnectionByIndex(Lcom/android/internal/telephony/GsmCdmaCall;I)Lcom/android/internal/telephony/GsmCdmaConnection;

    move-result-object v0

    if-eqz v0, :cond_42

    if-lt p1, v3, :cond_42

    const/16 v1, 0x13

    if-gt p1, v1, :cond_42

    .line 1273
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MmiCode 2: separate call "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 1274
    iget-object p1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCT:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->separate(Lcom/android/internal/telephony/GsmCdmaConnection;)V

    goto :goto_95

    :catch_40
    move-exception p1

    goto :goto_5c

    .line 1276
    :cond_42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "separate: invalid call index "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 1277
    sget-object p1, Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;->SEPARATE:Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifySuppServiceFailed(Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;)V
    :try_end_5b
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_12 .. :try_end_5b} :catch_40

    goto :goto_95

    .line 1280
    :goto_5c
    const-string v0, "separate failed"

    invoke-static {v2, v0, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1281
    sget-object p1, Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;->SEPARATE:Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifySuppServiceFailed(Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;)V

    goto :goto_95

    .line 1285
    :cond_67
    :try_start_67
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object p1

    sget-object v0, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq p1, v0, :cond_80

    .line 1286
    const-string p1, "MmiCode 2: accept ringing call"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 1287
    iget-object p1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCT:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    invoke-virtual {p1}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->acceptCall()V

    goto :goto_95

    :catch_7e
    move-exception p1

    goto :goto_8b

    .line 1289
    :cond_80
    const-string p1, "MmiCode 2: switchWaitingOrHoldingAndActive"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 1290
    iget-object p1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCT:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    invoke-virtual {p1}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->switchWaitingOrHoldingAndActive()V
    :try_end_8a
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_67 .. :try_end_8a} :catch_7e

    goto :goto_95

    .line 1293
    :goto_8b
    const-string v0, "switch failed"

    invoke-static {v2, v0, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1294
    sget-object p1, Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;->SWITCH:Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifySuppServiceFailed(Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;)V

    :goto_95
    return v3
.end method

.method private blacklist handleCallWaitingIncallSupplementaryService(Ljava/lang/String;)Z
    .registers 6

    .line 1220
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 1222
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->hasCalling()Z

    move-result v1

    if-eqz v1, :cond_68

    const/4 v1, 0x2

    if-le v0, v1, :cond_e

    goto :goto_68

    .line 1226
    :cond_e
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getForegroundCall()Lcom/android/internal/telephony/GsmCdmaCall;

    move-result-object v1

    const/4 v2, 0x1

    if-le v0, v2, :cond_3d

    .line 1230
    :try_start_15
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result p1

    add-int/lit8 p1, p1, -0x30

    if-lt p1, v2, :cond_67

    const/16 v0, 0x13

    if-gt p1, v0, :cond_67

    .line 1234
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MmiCode 1: hangupConnectionByIndex "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 1235
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCT:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->hangupConnectionByIndex(Lcom/android/internal/telephony/GsmCdmaCall;I)V

    goto :goto_67

    :catch_3b
    move-exception p1

    goto :goto_5b

    .line 1238
    :cond_3d
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object p1

    sget-object v0, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq p1, v0, :cond_50

    .line 1239
    const-string p1, "MmiCode 1: hangup foreground"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 1241
    iget-object p1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCT:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->hangup(Lcom/android/internal/telephony/GsmCdmaCall;)V

    goto :goto_67

    .line 1243
    :cond_50
    const-string p1, "MmiCode 1: switchWaitingOrHoldingAndActive"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 1244
    iget-object p1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCT:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    invoke-virtual {p1}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->switchWaitingOrHoldingAndActive()V
    :try_end_5a
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_15 .. :try_end_5a} :catch_3b

    goto :goto_67

    .line 1248
    :goto_5b
    const-string v0, "GsmCdmaPhone"

    const-string v1, "hangup failed"

    invoke-static {v0, v1, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1250
    sget-object p1, Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;->HANGUP:Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifySuppServiceFailed(Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;)V

    :cond_67
    :goto_67
    return v2

    :cond_68
    :goto_68
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist handleCcbsIncallSupplementaryService(Ljava/lang/String;)Z
    .registers 4

    .line 1325
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v0, 0x1

    if-le p1, v0, :cond_9

    const/4 p0, 0x0

    return p0

    .line 1329
    :cond_9
    const-string p1, "GsmCdmaPhone"

    const-string v1, "MmiCode 5: CCBS not supported!"

    invoke-static {p1, v1}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1331
    sget-object p1, Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;->UNKNOWN:Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifySuppServiceFailed(Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;)V

    return v0
.end method

.method private blacklist handleCfuQueryResult([Lcom/android/internal/telephony/CallForwardInfo;)V
    .registers 8

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_22

    .line 4029
    array-length v2, p1

    if-nez v2, :cond_8

    goto :goto_22

    .line 4034
    :cond_8
    array-length v2, p1

    move v3, v0

    :goto_a
    if-ge v3, v2, :cond_21

    .line 4035
    aget-object v4, p1, v3

    iget v5, v4, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    and-int/2addr v5, v1

    if-eqz v5, :cond_1e

    .line 4036
    iget p1, v4, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    if-ne p1, v1, :cond_18

    move v0, v1

    :cond_18
    iget-object p1, v4, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    invoke-virtual {p0, v1, v0, p1}, Lcom/android/internal/telephony/Phone;->setVoiceCallForwardingFlag(IZLjava/lang/String;)V

    return-void

    :cond_1e
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_21
    return-void

    :cond_22
    :goto_22
    const/4 p1, 0x0

    .line 4032
    invoke-virtual {p0, v1, v0, p1}, Lcom/android/internal/telephony/Phone;->setVoiceCallForwardingFlag(IZLjava/lang/String;)V

    return-void
.end method

.method private blacklist handleEctIncallSupplementaryService(Ljava/lang/String;)Z
    .registers 3

    .line 1313
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_9

    const/4 p0, 0x0

    return p0

    .line 1319
    :cond_9
    const-string p1, "MmiCode 4: explicit call transfer"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 1320
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->explicitCallTransfer()V

    return v0
.end method

.method private blacklist handleEnterEmergencyCallbackMode(Landroid/os/Message;)V
    .registers 4

    .line 4230
    invoke-static {}, Lcom/android/internal/telephony/domainselection/DomainSelectionResolver;->getInstance()Lcom/android/internal/telephony/domainselection/DomainSelectionResolver;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/telephony/domainselection/DomainSelectionResolver;->isDomainSelectionSupported()Z

    move-result p1

    const-string v0, "GsmCdmaPhone"

    if-eqz p1, :cond_12

    .line 4231
    const-string p0, "DomainSelection enabled: ignore ECBM enter event."

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 4235
    :cond_12
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleEnterEmergencyCallbackMode, isInEcm()="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4236
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->isInEcm()Z

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 4235
    invoke-static {v0, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4239
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->isInEcm()Z

    move-result p1

    if-nez p1, :cond_56

    const/4 p1, 0x1

    .line 4240
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Phone;->setIsInEcm(Z)V

    .line 4243
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->sendEmergencyCallbackModeChange()V

    .line 4247
    invoke-static {}, Landroid/internal/telephony/sysprop/TelephonyProperties;->ecm_exit_timer()Ljava/util/Optional;

    move-result-object p1

    const-wide/32 v0, 0x493e0

    .line 4248
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 4249
    iget-object p1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mExitEcmRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 4251
    iget-object p0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    :cond_56
    return-void
.end method

.method private blacklist handleExitEmergencyCallbackMode(Landroid/os/Message;)V
    .registers 5

    .line 4257
    invoke-static {}, Lcom/android/internal/telephony/domainselection/DomainSelectionResolver;->getInstance()Lcom/android/internal/telephony/domainselection/DomainSelectionResolver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/domainselection/DomainSelectionResolver;->isDomainSelectionSupported()Z

    move-result v0

    const-string v1, "GsmCdmaPhone"

    if-eqz v0, :cond_12

    .line 4258
    const-string p0, "DomainSelection enabled: ignore ECBM exit event."

    invoke-static {v1, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 4261
    :cond_12
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 4263
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleExitEmergencyCallbackMode,ar.exception , isInEcm="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 4264
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->isInEcm()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4263
    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4267
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mExitEcmRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4269
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mEcmExitRespRegistrant:Lcom/android/internal/telephony/Registrant;

    if-eqz v0, :cond_3f

    .line 4270
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    .line 4274
    :cond_3f
    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    const/4 v0, 0x0

    if-eqz p1, :cond_48

    iget-boolean p1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mIsTestingEmergencyCallbackMode:Z

    if-eqz p1, :cond_64

    .line 4275
    :cond_48
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->isInEcm()Z

    move-result p1

    if-eqz p1, :cond_51

    .line 4276
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/Phone;->setIsInEcm(Z)V

    .line 4280
    :cond_51
    iget-object p1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result p1

    if-eqz p1, :cond_5e

    .line 4281
    iget-object p1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 4285
    :cond_5e
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->sendEmergencyCallbackModeChange()V

    .line 4286
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifyEmergencyCallRegistrants(Z)V

    .line 4288
    :cond_64
    iput-boolean v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mIsTestingEmergencyCallbackMode:Z

    return-void
.end method

.method private blacklist handleMultipartyIncallSupplementaryService(Ljava/lang/String;)Z
    .registers 3

    .line 1302
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v0, 0x1

    if-le p1, v0, :cond_9

    const/4 p0, 0x0

    return p0

    .line 1306
    :cond_9
    const-string p1, "MmiCode 3: merge calls"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 1307
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->conference()V

    return v0
.end method

.method private blacklist handleRadioAvailable()V
    .registers 3

    .line 3212
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x6

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getBasebandVersion(Landroid/os/Message;)V

    .line 3213
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x43

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getImei(Landroid/os/Message;)V

    .line 3214
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x15

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getDeviceIdentity(Landroid/os/Message;)V

    .line 3215
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x23

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getRadioCapability(Landroid/os/Message;)V

    .line 3216
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x37

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->areUiccApplicationsEnabled(Landroid/os/Message;)V

    .line 3218
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->handleNullCipherEnabledChange()V

    .line 3219
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->handleIdentifierDisclosureNotificationPreferenceChange()V

    .line 3220
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->handleNullCipherNotificationPreferenceChanged()V

    return-void
.end method

.method private blacklist handleRadioOffOrNotAvailable()V
    .registers 3

    .line 3233
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 3239
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mPendingMMIs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_e
    if-ltz v0, :cond_2c

    .line 3240
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mPendingMMIs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/gsm/GsmMmiCode;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isPendingUSSD()Z

    move-result v1

    if-eqz v1, :cond_29

    .line 3241
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mPendingMMIs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/gsm/GsmMmiCode;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->onUssdFinishedError()V

    :cond_29
    add-int/lit8 v0, v0, -0x1

    goto :goto_e

    .line 3245
    :cond_2c
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mRadioOffOrNotAvailableRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants()V

    return-void
.end method

.method private blacklist handleRadioOn()V
    .registers 3

    .line 3225
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x28

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getVoiceRadioTechnology(Landroid/os/Message;)V

    .line 3227
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-nez v0, :cond_19

    .line 3228
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->getCdmaSubscriptionSource()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCdmaSubscriptionSource:I

    :cond_19
    return-void
.end method

.method private blacklist handleRadioPowerStateChange()V
    .registers 4

    .line 3249
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()I

    move-result v0

    .line 3250
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleRadioPowerStateChange, state= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GsmCdmaPhone"

    invoke-static {v2, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3251
    iget-object v1, p0, Lcom/android/internal/telephony/Phone;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-interface {v1, p0, v0}, Lcom/android/internal/telephony/PhoneNotifier;->notifyRadioPowerStateChanged(Lcom/android/internal/telephony/Phone;I)V

    .line 3252
    invoke-static {}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->getInstance()Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    move-result-object v1

    iget p0, p0, Lcom/android/internal/telephony/Phone;->mPhoneId:I

    invoke-virtual {v1, p0, v0}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeRadioState(II)V

    return-void
.end method

.method private blacklist initOnce(Lcom/android/internal/telephony/CommandsInterface;)V
    .registers 14

    .line 472
    instance-of v0, p1, Lcom/android/internal/telephony/test/SimulatedRadioControl;

    if-eqz v0, :cond_8

    .line 473
    check-cast p1, Lcom/android/internal/telephony/test/SimulatedRadioControl;

    iput-object p1, p0, Lcom/android/internal/telephony/Phone;->mSimulatedRadioControl:Lcom/android/internal/telephony/test/SimulatedRadioControl;

    .line 476
    :cond_8
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->hasCalling()Z

    move-result p1

    if-eqz p1, :cond_22

    .line 477
    iget-object p1, p0, Lcom/android/internal/telephony/Phone;->mTelephonyComponentFactory:Lcom/android/internal/telephony/TelephonyComponentFactory;

    const-class v0, Lcom/android/internal/telephony/GsmCdmaCallTracker;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/TelephonyComponentFactory;->inject(Ljava/lang/String;)Lcom/android/internal/telephony/TelephonyComponentFactory;

    move-result-object p1

    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mFeatureFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

    .line 478
    invoke-virtual {p1, p0, v0}, Lcom/android/internal/telephony/TelephonyComponentFactory;->makeGsmCdmaCallTracker(Lcom/android/internal/telephony/GsmCdmaPhone;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)Lcom/android/internal/telephony/GsmCdmaCallTracker;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCT:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    .line 480
    :cond_22
    iget-object p1, p0, Lcom/android/internal/telephony/Phone;->mTelephonyComponentFactory:Lcom/android/internal/telephony/TelephonyComponentFactory;

    const-class v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    .line 481
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/TelephonyComponentFactory;->inject(Ljava/lang/String;)Lcom/android/internal/telephony/TelephonyComponentFactory;

    move-result-object p1

    .line 482
    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/TelephonyComponentFactory;->makeIccPhoneBookInterfaceManager(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mIccPhoneBookIntManager:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    .line 483
    iget-object p1, p0, Lcom/android/internal/telephony/Phone;->mContext:Landroid/content/Context;

    const-string v0, "power"

    .line 484
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    .line 485
    const-string v0, "GsmCdmaPhone"

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 486
    iget-object p1, p0, Lcom/android/internal/telephony/Phone;->mTelephonyComponentFactory:Lcom/android/internal/telephony/TelephonyComponentFactory;

    const-class v0, Lcom/android/internal/telephony/IccSmsInterfaceManager;

    .line 487
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/TelephonyComponentFactory;->inject(Ljava/lang/String;)Lcom/android/internal/telephony/TelephonyComponentFactory;

    move-result-object p1

    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mFeatureFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

    .line 488
    invoke-virtual {p1, p0, v0}, Lcom/android/internal/telephony/TelephonyComponentFactory;->makeIccSmsInterfaceManager(Lcom/android/internal/telephony/Phone;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mIccSmsInterfaceManager:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    .line 490
    iget-object p1, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v0, 0x0

    invoke-interface {p1, p0, v1, v0}, Lcom/android/internal/telephony/CommandsInterface;->registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 491
    iget-object p1, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x8

    invoke-interface {p1, p0, v1, v0}, Lcom/android/internal/telephony/CommandsInterface;->registerForOffOrNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 492
    iget-object p1, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x5

    invoke-interface {p1, p0, v1, v0}, Lcom/android/internal/telephony/CommandsInterface;->registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 493
    iget-object p1, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x2f

    invoke-interface {p1, p0, v1, v0}, Lcom/android/internal/telephony/CommandsInterface;->registerForRadioStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 494
    iget-object p1, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x35

    invoke-interface {p1, p0, v1, v0}, Lcom/android/internal/telephony/CommandsInterface;->registerUiccApplicationEnablementChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 497
    iget-object p1, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x2

    invoke-interface {p1, p0, v1, v0}, Lcom/android/internal/telephony/CommandsInterface;->setOnSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 498
    iget-object p1, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x39

    invoke-interface {p1, p0, v1, v0}, Lcom/android/internal/telephony/CommandsInterface;->setOnRegistrationFailed(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 499
    iget-object p1, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x3a

    invoke-interface {p1, p0, v1, v0}, Lcom/android/internal/telephony/CommandsInterface;->registerForBarringInfoChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 502
    iget-object p1, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x7

    invoke-interface {p1, p0, v1, v0}, Lcom/android/internal/telephony/CommandsInterface;->setOnUSSD(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 503
    iget-object p1, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x24

    invoke-interface {p1, p0, v1, v0}, Lcom/android/internal/telephony/CommandsInterface;->setOnSs(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 506
    iget-object p1, p0, Lcom/android/internal/telephony/Phone;->mTelephonyComponentFactory:Lcom/android/internal/telephony/TelephonyComponentFactory;

    const-class v1, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/TelephonyComponentFactory;->inject(Ljava/lang/String;)Lcom/android/internal/telephony/TelephonyComponentFactory;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/Phone;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v6, 0x1b

    const/4 v7, 0x0

    move-object v5, p0

    .line 507
    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/telephony/TelephonyComponentFactory;->getCdmaSubscriptionSourceManagerInstance(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Landroid/os/Handler;ILjava/lang/Object;)Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    move-result-object p0

    iput-object p0, v5, Lcom/android/internal/telephony/GsmCdmaPhone;->mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    .line 509
    iget-object p0, v5, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 p1, 0x19

    invoke-interface {p0, v5, p1, v0}, Lcom/android/internal/telephony/CommandsInterface;->setEmergencyCallbackMode(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 510
    iget-object p0, v5, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 p1, 0x1a

    invoke-interface {p0, v5, p1, v0}, Lcom/android/internal/telephony/CommandsInterface;->registerForExitEmergencyCallbackMode(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 512
    iget-object p0, v5, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 p1, 0x2d

    invoke-interface {p0, v5, p1, v0}, Lcom/android/internal/telephony/CommandsInterface;->registerForModemReset(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 514
    iget-object p0, v5, Lcom/android/internal/telephony/Phone;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object p0

    .line 515
    invoke-virtual {v5}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p1

    const-string v1, ""

    .line 514
    invoke-virtual {p0, p1, v1}, Landroid/telephony/TelephonyManager;->getOtaSpNumberSchemaForPhone(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v5, Lcom/android/internal/telephony/GsmCdmaPhone;->mCarrierOtaSpNumSchema:Ljava/lang/String;

    .line 517
    invoke-static {}, Landroid/internal/telephony/sysprop/TelephonyProperties;->reset_on_radio_tech_change()Ljava/util/Optional;

    move-result-object p0

    .line 518
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    iput-boolean p0, v5, Lcom/android/internal/telephony/GsmCdmaPhone;->mResetModemOnRadioTechnologyChange:Z

    .line 520
    iget-object p0, v5, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 p1, 0x29

    invoke-interface {p0, v5, p1, v0}, Lcom/android/internal/telephony/CommandsInterface;->registerForRilConnected(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 521
    iget-object p0, v5, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 p1, 0x27

    invoke-interface {p0, v5, p1, v0}, Lcom/android/internal/telephony/CommandsInterface;->registerForVoiceRadioTechChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 522
    iget-object p0, v5, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 p1, 0x3b

    invoke-interface {p0, v5, p1, v0}, Lcom/android/internal/telephony/CommandsInterface;->registerForLceInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 523
    iget-object p0, v5, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 p1, 0x3c

    invoke-interface {p0, v5, p1, v0}, Lcom/android/internal/telephony/CommandsInterface;->registerForCarrierInfoForImsiEncryption(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 525
    iget-object p0, v5, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 p1, 0x41

    invoke-interface {p0, v5, p1, v0}, Lcom/android/internal/telephony/CommandsInterface;->registerForTriggerImsDeregistration(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 526
    iget-object p0, v5, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 p1, 0x44

    invoke-interface {p0, v5, p1, v0}, Lcom/android/internal/telephony/CommandsInterface;->registerForNotifyAnbr(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 527
    new-instance v8, Landroid/content/IntentFilter;

    const-string p0, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    invoke-direct {v8, p0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 529
    const-string p0, "android.telecom.action.CURRENT_TTY_MODE_CHANGED"

    invoke-virtual {v8, p0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 530
    const-string p0, "android.telecom.action.TTY_PREFERRED_MODE_CHANGED"

    invoke-virtual {v8, p0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 531
    const-string p0, "android.telephony.action.SIM_APPLICATION_STATE_CHANGED"

    invoke-virtual {v8, p0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 532
    iget-object v6, v5, Lcom/android/internal/telephony/Phone;->mContext:Landroid/content/Context;

    iget-object v7, v5, Lcom/android/internal/telephony/GsmCdmaPhone;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    const/4 v10, 0x0

    const/4 v11, 0x2

    const-string v9, "android.permission.MODIFY_PHONE_STATE"

    invoke-virtual/range {v6 .. v11}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 535
    new-instance p0, Lcom/android/internal/telephony/CarrierKeyDownloadManager;

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/CarrierKeyDownloadManager;-><init>(Lcom/android/internal/telephony/Phone;)V

    iput-object p0, v5, Lcom/android/internal/telephony/GsmCdmaPhone;->mCDM:Lcom/android/internal/telephony/CarrierKeyDownloadManager;

    .line 536
    new-instance p0, Lcom/android/internal/telephony/CarrierInfoManager;

    invoke-direct {p0}, Lcom/android/internal/telephony/CarrierInfoManager;-><init>()V

    iput-object p0, v5, Lcom/android/internal/telephony/GsmCdmaPhone;->mCIM:Lcom/android/internal/telephony/CarrierInfoManager;

    .line 538
    iget-object p0, v5, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 p1, 0x47

    invoke-interface {p0, v5, p1, v0}, Lcom/android/internal/telephony/CommandsInterface;->registerForImeiMappingChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 540
    iget-object p0, v5, Lcom/android/internal/telephony/Phone;->mTelephonyComponentFactory:Lcom/android/internal/telephony/TelephonyComponentFactory;

    iget-object p1, v5, Lcom/android/internal/telephony/Phone;->mContext:Landroid/content/Context;

    .line 541
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/TelephonyComponentFactory;->makeCellularNetworkSecuritySafetySource(Landroid/content/Context;)Lcom/android/internal/telephony/security/CellularNetworkSecuritySafetySource;

    move-result-object p0

    iput-object p0, v5, Lcom/android/internal/telephony/GsmCdmaPhone;->mSafetySource:Lcom/android/internal/telephony/security/CellularNetworkSecuritySafetySource;

    .line 543
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "enable_identifier_disclosure_transparency_unsol_events is on. Registering for cellular identifier disclosures from phone "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 546
    invoke-virtual {v5}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 543
    invoke-direct {v5, p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->logi(Ljava/lang/String;)V

    .line 547
    iget-object p0, v5, Lcom/android/internal/telephony/Phone;->mTelephonyComponentFactory:Lcom/android/internal/telephony/TelephonyComponentFactory;

    const-class p1, Lcom/android/internal/telephony/security/CellularIdentifierDisclosureNotifier;

    .line 549
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/TelephonyComponentFactory;->inject(Ljava/lang/String;)Lcom/android/internal/telephony/TelephonyComponentFactory;

    move-result-object p0

    iget-object p1, v5, Lcom/android/internal/telephony/GsmCdmaPhone;->mSafetySource:Lcom/android/internal/telephony/security/CellularNetworkSecuritySafetySource;

    .line 550
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/TelephonyComponentFactory;->makeIdentifierDisclosureNotifier(Lcom/android/internal/telephony/security/CellularNetworkSecuritySafetySource;)Lcom/android/internal/telephony/security/CellularIdentifierDisclosureNotifier;

    move-result-object p0

    iput-object p0, v5, Lcom/android/internal/telephony/GsmCdmaPhone;->mIdentifierDisclosureNotifier:Lcom/android/internal/telephony/security/CellularIdentifierDisclosureNotifier;

    .line 551
    iget-object p0, v5, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 p1, 0x48

    invoke-interface {p0, v5, p1, v0}, Lcom/android/internal/telephony/CommandsInterface;->registerForCellularIdentifierDisclosures(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 554
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "enable_modem_cipher_transparency_unsol_events is on. Registering for security algorithm updates from phone "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 557
    invoke-virtual {v5}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 554
    invoke-direct {v5, p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->logi(Ljava/lang/String;)V

    .line 558
    iget-object p0, v5, Lcom/android/internal/telephony/Phone;->mTelephonyComponentFactory:Lcom/android/internal/telephony/TelephonyComponentFactory;

    const-class p1, Lcom/android/internal/telephony/security/NullCipherNotifier;

    .line 560
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/TelephonyComponentFactory;->inject(Ljava/lang/String;)Lcom/android/internal/telephony/TelephonyComponentFactory;

    move-result-object p0

    iget-object p1, v5, Lcom/android/internal/telephony/GsmCdmaPhone;->mSafetySource:Lcom/android/internal/telephony/security/CellularNetworkSecuritySafetySource;

    .line 561
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/TelephonyComponentFactory;->makeNullCipherNotifier(Lcom/android/internal/telephony/security/CellularNetworkSecuritySafetySource;)Lcom/android/internal/telephony/security/NullCipherNotifier;

    move-result-object p0

    iput-object p0, v5, Lcom/android/internal/telephony/GsmCdmaPhone;->mNullCipherNotifier:Lcom/android/internal/telephony/security/NullCipherNotifier;

    .line 562
    iget-object p0, v5, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 p1, 0x4a

    invoke-interface {p0, v5, p1, v0}, Lcom/android/internal/telephony/CommandsInterface;->registerForSecurityAlgorithmUpdates(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 565
    invoke-direct {v5}, Lcom/android/internal/telephony/GsmCdmaPhone;->initializeCarrierApps()V

    return-void
.end method

.method private blacklist initRatSpecific(I)V
    .registers 8

    .line 569
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mPendingMMIs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 570
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mIccPhoneBookIntManager:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->updateIccRecords(Lcom/android/internal/telephony/uicc/IccRecords;)V

    .line 572
    iput p1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mPrecisePhoneType:I

    .line 573
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Precise phone type "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mPrecisePhoneType:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 575
    iget-object p1, p0, Lcom/android/internal/telephony/Phone;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object p1

    .line 576
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getUiccProfile()Lcom/android/internal/telephony/uicc/UiccProfile;

    move-result-object v0

    .line 577
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v2

    const/4 v3, 0x3

    if-eqz v2, :cond_47

    .line 578
    iget-object v1, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setPhoneType(I)V

    .line 579
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p0

    invoke-virtual {p1, p0, v2}, Landroid/telephony/TelephonyManager;->setPhoneType(II)V

    if-eqz v0, :cond_161

    .line 581
    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/uicc/UiccProfile;->setVoiceRadioTech(I)V

    return-void

    .line 584
    :cond_47
    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->getCdmaSubscriptionSource()I

    move-result v2

    iput v2, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCdmaSubscriptionSource:I

    .line 586
    invoke-static {}, Lcom/android/internal/telephony/Phone;->getInEcmMode()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/internal/telephony/Phone;->mIsPhoneInEcmState:Z

    if-eqz v2, :cond_6e

    .line 588
    invoke-static {}, Lcom/android/internal/telephony/domainselection/DomainSelectionResolver;->getInstance()Lcom/android/internal/telephony/domainselection/DomainSelectionResolver;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/domainselection/DomainSelectionResolver;->isDomainSelectionSupported()Z

    move-result v2

    if-eqz v2, :cond_69

    .line 589
    invoke-static {}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->getInstance()Lcom/android/internal/telephony/emergency/EmergencyStateTracker;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->exitEmergencyCallbackMode()V

    goto :goto_6e

    .line 592
    :cond_69
    iget-object v2, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2, v1}, Lcom/android/internal/telephony/CommandsInterface;->exitEmergencyCallbackMode(Landroid/os/Message;)V

    .line 596
    :cond_6e
    :goto_6e
    iget-object v1, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setPhoneType(I)V

    .line 597
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    invoke-virtual {p1, v1, v2}, Landroid/telephony/TelephonyManager;->setPhoneType(II)V

    if-eqz v0, :cond_81

    const/4 v1, 0x6

    .line 599
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/UiccProfile;->setVoiceRadioTech(I)V

    .line 602
    :cond_81
    const-string v0, "ro.cdma.home.operator.alpha"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 603
    const-string v1, "ro.cdma.home.operator.numeric"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 604
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "init: operatorAlpha=\'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\' operatorNumeric=\'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 606
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_d0

    .line 607
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "init: set \'gsm.sim.operator.alpha\' to operator=\'"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 608
    iget v2, p0, Lcom/android/internal/telephony/Phone;->mPhoneId:I

    invoke-virtual {p1, v2, v0}, Landroid/telephony/TelephonyManager;->setSimOperatorNameForPhone(ILjava/lang/String;)V

    .line 610
    :cond_d0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_15e

    .line 611
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init: set \'gsm.sim.operator.numeric\' to operator=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 613
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "update icc_operator_numeric="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 614
    iget v0, p0, Lcom/android/internal/telephony/Phone;->mPhoneId:I

    invoke-virtual {p1, v0, v1}, Landroid/telephony/TelephonyManager;->setSimOperatorNumericForPhone(ILjava/lang/String;)V

    .line 616
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mSubscriptionManagerService:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v2

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->setMccMnc(ILjava/lang/String;)V

    const/4 v0, 0x0

    .line 621
    :try_start_110
    invoke-virtual {v1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/MccTable;->countryCodeForMcc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_118
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_110 .. :try_end_118} :catch_119

    goto :goto_123

    :catch_119
    move-exception v0

    .line 623
    const-string v2, "GsmCdmaPhone"

    const-string v3, "init: countryCodeForMcc error"

    invoke-static {v2, v3, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string v0, ""

    .line 626
    :goto_123
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init: set \'gsm.sim.operator.iso-country\' to iso="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 627
    iget v2, p0, Lcom/android/internal/telephony/Phone;->mPhoneId:I

    invoke-virtual {p1, v2, v0}, Landroid/telephony/TelephonyManager;->setSimCountryIsoForPhone(ILjava/lang/String;)V

    .line 628
    iget-object p1, p0, Lcom/android/internal/telephony/Phone;->mSubscriptionManagerService:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v2

    invoke-virtual {p1, v2, v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->setCountryIso(ILjava/lang/String;)V

    .line 631
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "update mccmnc="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 632
    iget-object p1, p0, Lcom/android/internal/telephony/Phone;->mContext:Landroid/content/Context;

    invoke-static {p1, v1}, Lcom/android/internal/telephony/MccTable;->updateMccMncConfiguration(Landroid/content/Context;Ljava/lang/String;)V

    .line 636
    :cond_15e
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->updateCurrentCarrierInProvider(Ljava/lang/String;)Z

    :cond_161
    return-void
.end method

.method private blacklist initializeCarrierApps()V
    .registers 5

    .line 645
    iget v0, p0, Lcom/android/internal/telephony/Phone;->mPhoneId:I

    if-eqz v0, :cond_5

    return-void

    .line 647
    :cond_5
    const-string v0, "initializeCarrierApps"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 648
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/internal/telephony/GsmCdmaPhone$5;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/GsmCdmaPhone$5;-><init>(Lcom/android/internal/telephony/GsmCdmaPhone;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.USER_FOREGROUND"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/content/Context;->registerReceiverForAllUsers(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 661
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    .line 662
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mContext:Landroid/content/Context;

    .line 661
    invoke-static {v0, v1, v2, p0}, Lcom/android/internal/telephony/CarrierAppUtils;->disableCarrierAppsUntilPrivileged(Ljava/lang/String;Landroid/telephony/TelephonyManager;ILandroid/content/Context;)V

    return-void
.end method

.method private blacklist isCarrierOtaSpNum(Ljava/lang/String;)Z
    .registers 9

    .line 4446
    invoke-static {p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->extractSelCodeFromOtaSpNum(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_9

    return v1

    .line 4451
    :cond_9
    iget-object v3, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCarrierOtaSpNumSchema:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const-string v4, "GsmCdmaPhone"

    if-nez v3, :cond_b5

    .line 4452
    sget-object v3, Lcom/android/internal/telephony/GsmCdmaPhone;->pOtaSpNumSchema:Ljava/util/regex/Pattern;

    iget-object v5, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCarrierOtaSpNumSchema:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 4454
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isCarrierOtaSpNum,schema"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCarrierOtaSpNumSchema:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4457
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_9e

    .line 4458
    sget-object v3, Lcom/android/internal/telephony/GsmCdmaPhone;->pOtaSpNumSchema:Ljava/util/regex/Pattern;

    iget-object p0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCarrierOtaSpNumSchema:Ljava/lang/String;

    invoke-virtual {v3, p0}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object p0

    .line 4460
    aget-object v3, p0, v1

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5e

    aget-object v3, p0, v1

    const-string v5, "SELC"

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5e

    if-eq v0, v2, :cond_58

    .line 4462
    invoke-static {v0, p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->checkOtaSpNumBasedOnSysSelCode(I[Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 4465
    :cond_58
    const-string p0, "isCarrierOtaSpNum,sysSelCodeInt is invalid"

    invoke-static {v4, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 4468
    :cond_5e
    aget-object v0, p0, v1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_87

    aget-object v0, p0, v1

    const-string v2, "FC"

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_87

    const/4 v0, 0x1

    .line 4469
    aget-object v2, p0, v0

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x2

    .line 4470
    aget-object p0, p0, v3

    .line 4471
    invoke-virtual {p1, v1, p0, v1, v2}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result p0

    if-eqz p0, :cond_81

    return v0

    .line 4474
    :cond_81
    const-string p0, "isCarrierOtaSpNum,not otasp number"

    invoke-static {v4, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 4478
    :cond_87
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isCarrierOtaSpNum,ota schema not supported"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p0, p0, v1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 4483
    :cond_9e
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isCarrierOtaSpNum,ota schema pattern not right"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCarrierOtaSpNumSchema:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 4488
    :cond_b5
    const-string p0, "isCarrierOtaSpNum,ota schema pattern empty"

    invoke-static {v4, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private greylist-max-r isCfEnable(I)Z
    .registers 3

    .line 0
    const/4 p0, 0x1

    if-eq p1, p0, :cond_8

    const/4 v0, 0x3

    if-ne p1, v0, :cond_7

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :cond_8
    :goto_8
    return p0
.end method

.method private blacklist isCsRetry(Landroid/os/Message;)Z
    .registers 3

    const/4 p0, 0x0

    if-eqz p1, :cond_d

    .line 2441
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "cs_fallback_ss"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    :cond_d
    return p0
.end method

.method private static blacklist isIs683OtaSpDialStr(Ljava/lang/String;)Z
    .registers 4

    .line 4346
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x1

    if-ne v0, v1, :cond_11

    .line 4349
    const-string v0, "*228"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_18

    return v2

    .line 4353
    :cond_11
    invoke-static {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->extractSelCodeFromOtaSpNum(Ljava/lang/String;)I

    move-result p0

    packed-switch p0, :pswitch_data_1c

    :cond_18
    const/4 p0, 0x0

    return p0

    :pswitch_1a
    return v2

    nop

    :pswitch_data_1c
    .packed-switch 0x0
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
    .end packed-switch
.end method

.method private greylist-max-r isManualSelProhibitedInGlobalMode()Z
    .registers 7

    .line 4152
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10408f1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 4155
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_49

    .line 4156
    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_49

    .line 4158
    array-length v1, v0

    const-string v3, "true"

    const/4 v4, 0x1

    if-ne v1, v4, :cond_2c

    aget-object v1, v0, v2

    .line 4159
    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_48

    :cond_2c
    array-length v1, v0

    const/4 v5, 0x2

    if-ne v1, v5, :cond_49

    aget-object v1, v0, v4

    .line 4160
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_49

    aget-object v1, v0, v2

    .line 4161
    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_49

    aget-object v0, v0, v4

    .line 4162
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/Phone;->isMatchGid(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_49

    :cond_48
    move v2, v4

    .line 4166
    :cond_49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isManualNetSelAllowedInGlobal in current carrier is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    return v2
.end method

.method private blacklist isRequestBlockedByFDN(Lcom/android/internal/telephony/gsm/SsData$RequestType;Lcom/android/internal/telephony/gsm/SsData$ServiceType;)Z
    .registers 3

    .line 5410
    invoke-static {p1, p2}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->getControlStrings(Lcom/android/internal/telephony/gsm/SsData$RequestType;Lcom/android/internal/telephony/gsm/SsData$ServiceType;)Ljava/util/ArrayList;

    move-result-object p1

    .line 5411
    iget p2, p0, Lcom/android/internal/telephony/Phone;->mPhoneId:I

    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getCountryIso()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p1, p0}, Lcom/android/internal/telephony/FdnUtils;->isSuppServiceRequestBlockedByFdn(ILjava/util/ArrayList;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private greylist-max-r isValidCommandInterfaceCFAction(I)Z
    .registers 3

    .line 0
    const/4 p0, 0x1

    if-eqz p1, :cond_c

    if-eq p1, p0, :cond_c

    const/4 v0, 0x3

    if-eq p1, v0, :cond_c

    const/4 v0, 0x4

    if-eq p1, v0, :cond_c

    const/4 p0, 0x0

    :cond_c
    return p0
.end method

.method private greylist-max-r isValidCommandInterfaceCFReason(I)Z
    .registers 3

    .line 0
    const/4 p0, 0x1

    if-eqz p1, :cond_12

    if-eq p1, p0, :cond_12

    const/4 v0, 0x2

    if-eq p1, v0, :cond_12

    const/4 v0, 0x3

    if-eq p1, v0, :cond_12

    const/4 v0, 0x4

    if-eq p1, v0, :cond_12

    const/4 v0, 0x5

    if-eq p1, v0, :cond_12

    const/4 p0, 0x0

    :cond_12
    return p0
.end method

.method private synthetic blacklist lambda$handleMessage$2(I)V
    .registers 2

    add-int/lit8 p1, p1, -0x1

    .line 3670
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->reapplyUiccAppsEnablementIfNeeded(I)V

    return-void
.end method

.method private synthetic blacklist lambda$refreshSafetySources$4(Ljava/lang/String;)V
    .registers 3

    .line 5491
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSafetySource:Lcom/android/internal/telephony/security/CellularNetworkSecuritySafetySource;

    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0, p1}, Lcom/android/internal/telephony/security/CellularNetworkSecuritySafetySource;->refresh(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic blacklist lambda$setN1ModeEnabled$1(ZLandroid/os/Message;)V
    .registers 4

    if-eqz p1, :cond_a

    .line 2469
    iget-object p1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mN1ModeDisallowedReasons:Ljava/util/Set;

    sget-object v0, Lcom/android/internal/telephony/GsmCdmaPhone;->N1_MODE_DISALLOWED_REASON_IMS:Ljava/lang/Integer;

    invoke-interface {p1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_11

    .line 2471
    :cond_a
    iget-object p1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mN1ModeDisallowedReasons:Ljava/util/Set;

    sget-object v0, Lcom/android/internal/telephony/GsmCdmaPhone;->N1_MODE_DISALLOWED_REASON_IMS:Ljava/lang/Integer;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2473
    :goto_11
    iget-object p1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mModemN1Mode:Ljava/lang/Boolean;

    if-nez p1, :cond_21

    .line 2474
    iget-object p1, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v0, 0x45

    invoke-virtual {p0, v0, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/android/internal/telephony/CommandsInterface;->isN1ModeEnabled(Landroid/os/Message;)V

    return-void

    .line 2476
    :cond_21
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/GsmCdmaPhone;->maybeUpdateModemN1Mode(Landroid/os/Message;)V

    return-void
.end method

.method private blacklist loadTtyMode()V
    .registers 4

    .line 5185
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->hasCalling()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 5188
    :cond_7
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mContext:Landroid/content/Context;

    const-class v1, Landroid/telecom/TelecomManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_19

    .line 5190
    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->getCurrentTtyMode()I

    move-result v0

    goto :goto_1a

    :cond_19
    move v0, v1

    .line 5192
    :goto_1a
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->updateTtyMode(I)V

    .line 5194
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "preferred_tty_mode"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 5196
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->updateUiTtyMode(I)V

    return-void
.end method

.method private greylist-max-r logd(Ljava/lang/String;)V
    .registers 4

    .line 5096
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/internal/telephony/Phone;->mPhoneId:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "] "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "GsmCdmaPhone"

    invoke-static {p1, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private greylist-max-r loge(Ljava/lang/String;)V
    .registers 4

    .line 5105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/internal/telephony/Phone;->mPhoneId:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "] "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "GsmCdmaPhone"

    invoke-static {p1, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist logi(Ljava/lang/String;)V
    .registers 4

    .line 5100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/internal/telephony/Phone;->mPhoneId:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "] "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "GsmCdmaPhone"

    invoke-static {p1, p0}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist makeEmptyCallForward()[Lcom/android/internal/telephony/CallForwardInfo;
    .registers 4

    .line 5066
    new-instance p0, Lcom/android/internal/telephony/CallForwardInfo;

    invoke-direct {p0}, Lcom/android/internal/telephony/CallForwardInfo;-><init>()V

    filled-new-array {p0}, [Lcom/android/internal/telephony/CallForwardInfo;

    move-result-object p0

    const/4 v0, 0x0

    .line 5067
    aget-object v1, p0, v0

    const/16 v2, 0xff

    iput v2, v1, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    .line 5068
    iput v0, v1, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    const/4 v2, 0x1

    .line 5069
    iput v2, v1, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    const/16 v2, 0x81

    .line 5070
    iput v2, v1, Lcom/android/internal/telephony/CallForwardInfo;->toa:I

    .line 5071
    const-string v2, ""

    iput-object v2, v1, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    .line 5072
    iput v0, v1, Lcom/android/internal/telephony/CallForwardInfo;->timeSeconds:I

    return-object p0
.end method

.method private blacklist maybeUpdateModemN1Mode(Landroid/os/Message;)V
    .registers 5

    .line 2483
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mN1ModeDisallowedReasons:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    .line 2485
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "N1 Mode: isModemN1Enabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mModemN1Mode:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", wantN1Enabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 2488
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mModemN1Mode:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eq v1, v0, :cond_3c

    .line 2491
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mModemN1Mode:Ljava/lang/Boolean;

    const/16 v1, 0x46

    .line 2493
    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 2492
    invoke-super {p0, v0, p1}, Lcom/android/internal/telephony/Phone;->setN1ModeEnabled(ZLandroid/os/Message;)V

    return-void

    :cond_3c
    if-eqz p1, :cond_44

    .line 2495
    invoke-static {p1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    .line 2496
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_44
    return-void
.end method

.method private static blacklist mergeVoiceServiceStates(Landroid/telephony/ServiceState;Landroid/telephony/ServiceState;I)Landroid/telephony/ServiceState;
    .registers 4

    .line 1166
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    if-nez v0, :cond_7

    goto :goto_18

    :cond_7
    if-nez p2, :cond_a

    goto :goto_16

    .line 1179
    :cond_a
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result p1

    if-nez p1, :cond_15

    .line 1183
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getDataRegistrationState()I

    move-result p2

    goto :goto_16

    :cond_15
    const/4 p2, 0x1

    :goto_16
    if-eqz p2, :cond_19

    :goto_18
    return-object p0

    .line 1189
    :cond_19
    new-instance p1, Landroid/telephony/ServiceState;

    invoke-direct {p1, p0}, Landroid/telephony/ServiceState;-><init>(Landroid/telephony/ServiceState;)V

    .line 1190
    invoke-virtual {p1, p2}, Landroid/telephony/ServiceState;->setVoiceRegState(I)V

    const/4 p0, 0x0

    .line 1191
    invoke-virtual {p1, p0}, Landroid/telephony/ServiceState;->setEmergencyOnly(Z)V

    return-object p1
.end method

.method private blacklist migrateClirSettingIfNeeded(Landroid/content/SharedPreferences;)V
    .registers 7

    .line 3198
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "clir_key"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, -0x1

    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ltz v0, :cond_83

    .line 3201
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Migrate CLIR setting: value="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", clir_key"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3202
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "clir_sub_key"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3201
    const-string v4, "GsmCdmaPhone"

    invoke-static {v4, v2}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3203
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 3204
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 3207
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_83
    return-void
.end method

.method private blacklist onIncomingUSSD(ILjava/lang/String;)V
    .registers 9

    .line 3112
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-nez v0, :cond_b

    .line 3113
    const-string v0, "onIncomingUSSD: not expected on GSM"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->loge(Ljava/lang/String;)V

    :cond_b
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_11

    move v2, v1

    goto :goto_12

    :cond_11
    move v2, v0

    :goto_12
    if-eqz p1, :cond_18

    if-eq p1, v1, :cond_18

    move v3, v1

    goto :goto_19

    :cond_18
    move v3, v0

    :goto_19
    const/4 v4, 0x2

    if-ne p1, v4, :cond_1e

    move p1, v1

    goto :goto_1f

    :cond_1e
    move p1, v0

    .line 3134
    :goto_1f
    iget-object v4, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mPendingMMIs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    :goto_25
    if-ge v0, v4, :cond_41

    .line 3135
    iget-object v5, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mPendingMMIs:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/gsm/GsmMmiCode;

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isPendingUSSD()Z

    move-result v5

    if-eqz v5, :cond_3e

    .line 3136
    iget-object v4, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mPendingMMIs:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;

    goto :goto_42

    :cond_3e
    add-int/lit8 v0, v0, 0x1

    goto :goto_25

    :cond_41
    const/4 v0, 0x0

    :goto_42
    if-eqz v0, :cond_54

    if-eqz p1, :cond_4a

    .line 3144
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->onUssdRelease()V

    return-void

    :cond_4a
    if-eqz v3, :cond_50

    .line 3146
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->onUssdFinishedError()V

    return-void

    .line 3148
    :cond_50
    invoke-virtual {v0, p2, v2}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->onUssdFinished(Ljava/lang/String;Z)V

    return-void

    :cond_54
    if-nez v3, :cond_6c

    .line 3150
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6c

    .line 3157
    iget-object p1, p0, Lcom/android/internal/telephony/Phone;->mUiccApplication:Ljava/util/concurrent/atomic/AtomicReference;

    .line 3160
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 3157
    invoke-static {p2, v2, p0, p1}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->newNetworkInitiatedUssd(Ljava/lang/String;ZLcom/android/internal/telephony/GsmCdmaPhone;Lcom/android/internal/telephony/uicc/UiccCardApplication;)Lcom/android/internal/telephony/gsm/GsmMmiCode;

    move-result-object p1

    .line 3161
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->onNetworkInitiatedUssd(Lcom/android/internal/telephony/MmiCode;)V

    return-void

    :cond_6c
    if-eqz v3, :cond_7f

    if-nez p1, :cond_7f

    .line 3164
    iget-object p1, p0, Lcom/android/internal/telephony/Phone;->mUiccApplication:Ljava/util/concurrent/atomic/AtomicReference;

    .line 3167
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 3164
    invoke-static {p2, v1, p0, p1}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->newNetworkInitiatedUssd(Ljava/lang/String;ZLcom/android/internal/telephony/GsmCdmaPhone;Lcom/android/internal/telephony/uicc/UiccCardApplication;)Lcom/android/internal/telephony/gsm/GsmMmiCode;

    move-result-object p0

    .line 3168
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->onUssdFinishedError()V

    :cond_7f
    return-void
.end method

.method private blacklist onNetworkInitiatedUssd(Lcom/android/internal/telephony/MmiCode;)V
    .registers 4

    .line 3105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onNetworkInitiatedUssd: mmi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GsmCdmaPhone"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3106
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mMmiCompleteRegistrants:Lcom/android/internal/telephony/RegistrantList;

    new-instance v0, Landroid/os/AsyncResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    return-void
.end method

.method private blacklist onVoiceRegStateOrRatChanged(II)V
    .registers 4

    .line 4982
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->hasCalling()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 4983
    :cond_7
    const-string v0, "onVoiceRegStateOrRatChanged"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 4984
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCT:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/GsmCdmaPhone;->getCsCallRadioTech(II)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->dispatchCsCallRadioTech(I)V

    return-void
.end method

.method private blacklist parseImeiInfo(Landroid/os/Message;)V
    .registers 4

    .line 3824
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 3825
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_2a

    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v0, :cond_d

    goto :goto_2a

    .line 3829
    :cond_d
    check-cast v0, Landroid/hardware/radio/modem/ImeiInfo;

    .line 3830
    iget-object p1, v0, Landroid/hardware/radio/modem/ImeiInfo;->imei:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_24

    .line 3831
    iget p1, v0, Landroid/hardware/radio/modem/ImeiInfo;->type:I

    iput p1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mImeiType:I

    .line 3832
    iget-object p1, v0, Landroid/hardware/radio/modem/ImeiInfo;->imei:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mImei:Ljava/lang/String;

    .line 3833
    iget-object p1, v0, Landroid/hardware/radio/modem/ImeiInfo;->svn:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mImeiSv:Ljava/lang/String;

    return-void

    .line 3835
    :cond_24
    const-string p1, "parseImeiInfo :: IMEI value is empty"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->loge(Ljava/lang/String;)V

    return-void

    .line 3826
    :cond_2a
    :goto_2a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "parseImeiInfo :: Exception received : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->loge(Ljava/lang/String;)V

    return-void
.end method

.method private static blacklist pii(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 5109
    const-string v0, "GsmCdmaPhone"

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->pii(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private blacklist processIccRecordEvents(I)V
    .registers 3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    return-void

    .line 3959
    :cond_4
    const-string p1, "processIccRecordEvents: EVENT_CFI"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->logi(Ljava/lang/String;)V

    .line 3960
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifyCallForwardingIndicator()V

    return-void
.end method

.method private blacklist reapplyUiccAppsEnablementIfNeeded(I)V
    .registers 7

    .line 5200
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    iget v1, p0, Lcom/android/internal/telephony/Phone;->mPhoneId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccSlotForPhone(I)Lcom/android/internal/telephony/uicc/UiccSlot;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_bc

    .line 5203
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccSlot;->getCardState()Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_PRESENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-ne v2, v3, :cond_bc

    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mUiccApplicationsEnabled:Ljava/lang/Boolean;

    if-nez v2, :cond_19

    goto/16 :goto_bc

    .line 5212
    :cond_19
    iget v2, p0, Lcom/android/internal/telephony/Phone;->mPhoneId:I

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/UiccSlot;->getPortIndexFromPhoneId(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/UiccSlot;->getIccId(I)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_4a

    .line 5214
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "reapplyUiccAppsEnablementIfNeeded iccId is null, phoneId: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/Phone;->mPhoneId:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " portIndex: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/Phone;->mPhoneId:I

    .line 5215
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/UiccSlot;->getPortIndexFromPhoneId(I)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 5214
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->loge(Ljava/lang/String;)V

    return-void

    .line 5219
    :cond_4a
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mSubscriptionManagerService:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    iget-object v3, p0, Lcom/android/internal/telephony/Phone;->mContext:Landroid/content/Context;

    .line 5220
    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/Phone;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getAllSubInfoList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 5221
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v3, Lcom/android/internal/telephony/GsmCdmaPhone$$ExternalSyntheticLambda0;

    invoke-direct {v3, v2}, Lcom/android/internal/telephony/GsmCdmaPhone$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    .line 5222
    invoke-interface {v0, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 5223
    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    .line 5224
    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionInfo;

    .line 5226
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reapplyUiccAppsEnablementIfNeeded: retries="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", subInfo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    if-eqz v0, :cond_9a

    .line 5229
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->areUiccApplicationsEnabled()Z

    move-result v0

    if-eqz v0, :cond_98

    goto :goto_9a

    :cond_98
    const/4 v0, 0x0

    goto :goto_9b

    :cond_9a
    :goto_9a
    const/4 v0, 0x1

    .line 5233
    :goto_9b
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mUiccApplicationsEnabled:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eq v0, v1, :cond_bb

    .line 5234
    iget-object v1, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    new-instance v2, Landroid/util/Pair;

    .line 5236
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {v2, v3, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 p1, 0x38

    .line 5234
    invoke-static {p0, p1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-interface {v1, v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->enableUiccApplications(ZLandroid/os/Message;)V

    :cond_bb
    return-void

    .line 5205
    :cond_bc
    :goto_bc
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reapplyUiccAppsEnablementIfNeeded: slot state="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_cc

    .line 5206
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccSlot;->getCardState()Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    move-result-object v1

    :cond_cc
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 5205
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->loge(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist registerForIccRecordEvents()V
    .registers 5

    .line 4171
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    if-nez v0, :cond_b

    goto :goto_2f

    .line 4175
    :cond_b
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-eqz v1, :cond_21

    const/16 v1, 0x1c

    .line 4176
    invoke-virtual {v0, p0, v1, v3}, Lcom/android/internal/telephony/uicc/IccRecords;->registerForNetworkSelectionModeAutomatic(Landroid/os/Handler;ILjava/lang/Object;)V

    const/16 v1, 0x1d

    .line 4178
    invoke-virtual {v0, p0, v1, v3}, Lcom/android/internal/telephony/uicc/IccRecords;->registerForRecordsEvents(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 4179
    invoke-virtual {v0, p0, v2, v3}, Lcom/android/internal/telephony/uicc/IccRecords;->registerForRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void

    :cond_21
    const/16 v1, 0x16

    .line 4181
    invoke-virtual {v0, p0, v1, v3}, Lcom/android/internal/telephony/uicc/IccRecords;->registerForRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 4182
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeCdmaLte()Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 4184
    invoke-virtual {v0, p0, v2, v3}, Lcom/android/internal/telephony/uicc/IccRecords;->registerForRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    :cond_2f
    :goto_2f
    return-void
.end method

.method private blacklist sendEmergencyCallbackModeChange()V
    .registers 4

    .line 913
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 914
    const-string v1, "android.telephony.extra.PHONE_IN_ECM_STATE"

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->isInEcm()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 915
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    invoke-static {v0, v1}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    .line 916
    iget-object v1, p0, Lcom/android/internal/telephony/Phone;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 917
    const-string v0, "sendEmergencyCallbackModeChange"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->logi(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist sendUssdResponse(Ljava/lang/String;Ljava/lang/CharSequence;ILandroid/os/ResultReceiver;)V
    .registers 5

    .line 1766
    new-instance p0, Landroid/telephony/UssdResponse;

    invoke-direct {p0, p1, p2}, Landroid/telephony/UssdResponse;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 1767
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 1768
    const-string p2, "USSD_RESPONSE"

    invoke-virtual {p1, p2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1769
    invoke-virtual {p4, p3, p1}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    return-void
.end method

.method private blacklist setVmSimImsi(Ljava/lang/String;)V
    .registers 5

    .line 2002
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2003
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2004
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "vm_sim_imsi_key"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2005
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private blacklist storeVoiceMailNumber(Ljava/lang/String;)V
    .registers 5

    .line 1913
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1914
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1915
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getSubscriberId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->setVmSimImsi(Ljava/lang/String;)V

    .line 1916
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "storeVoiceMailNumber: mPrecisePhoneType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mPrecisePhoneType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " vmNumber="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "GsmCdmaPhone"

    .line 1917
    invoke-static {v2, p1}, Lcom/android/telephony/Rlog;->pii(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1916
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 1918
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v1

    if-eqz v1, :cond_59

    .line 1919
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "vm_number_key"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1920
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void

    .line 1922
    :cond_59
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "vm_number_key_cdma"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1923
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private blacklist subscriptionIdToPhoneAccountHandle(I)Landroid/telecom/PhoneAccountHandle;
    .registers 6

    .line 5078
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mContext:Landroid/content/Context;

    const-class v1, Landroid/telecom/TelecomManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    .line 5079
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object p0

    const/4 v1, 0x1

    .line 5081
    invoke-virtual {v0, v1}, Landroid/telecom/TelecomManager;->getCallCapablePhoneAccounts(Z)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    .line 5083
    :cond_19
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_30

    .line 5084
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/PhoneAccountHandle;

    .line 5085
    invoke-virtual {v0, v2}, Landroid/telecom/TelecomManager;->getPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccount;

    move-result-object v3

    .line 5086
    invoke-virtual {p0, v3}, Landroid/telephony/TelephonyManager;->getSubIdForPhoneAccount(Landroid/telecom/PhoneAccount;)I

    move-result v3

    if-ne p1, v3, :cond_19

    return-object v2

    :cond_30
    const/4 p0, 0x0

    return-object p0
.end method

.method private greylist-max-r syncClirSetting()V
    .registers 4

    .line 3177
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->hasCalling()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 3179
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 3180
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->migrateClirSettingIfNeeded(Landroid/content/SharedPreferences;)V

    .line 3182
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clir_sub_key"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 3183
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "syncClirSetting: clir_sub_key"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GsmCdmaPhone"

    invoke-static {v2, v1}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    if-ltz v0, :cond_57

    .line 3185
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {p0, v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->setCLIR(ILandroid/os/Message;)V

    return-void

    .line 3189
    :cond_57
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v0, 0x0

    invoke-interface {p0, v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->setCLIR(ILandroid/os/Message;)V

    return-void
.end method

.method private static blacklist telecomModeToPhoneMode(I)I
    .registers 3

    .line 0
    const/4 v0, 0x1

    if-eq p0, v0, :cond_b

    const/4 v1, 0x2

    if-eq p0, v1, :cond_b

    const/4 v1, 0x3

    if-eq p0, v1, :cond_b

    const/4 p0, 0x0

    return p0

    :cond_b
    return v0
.end method

.method private blacklist unregisterForIccRecordEvents()V
    .registers 2

    .line 4190
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    if-nez v0, :cond_b

    return-void

    .line 4194
    :cond_b
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/IccRecords;->unregisterForNetworkSelectionModeAutomatic(Landroid/os/Handler;)V

    .line 4195
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/IccRecords;->unregisterForRecordsEvents(Landroid/os/Handler;)V

    .line 4196
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/IccRecords;->unregisterForRecordsLoaded(Landroid/os/Handler;)V

    return-void
.end method

.method private blacklist updateBroadcastEmergencyCallStateChangesAfterCarrierConfigChanged(Landroid/os/PersistableBundle;)V
    .registers 4

    .line 5289
    const-string v0, "broadcast_emergency_call_state_changes_bool"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    .line 5291
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "broadcastEmergencyCallStateChanges = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 5292
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->setBroadcastEmergencyCallStateChanges(Z)V

    return-void
.end method

.method private blacklist updateCarrierN1ModeSupported(Landroid/os/PersistableBundle;)V
    .registers 3

    .line 2502
    invoke-static {p1}, Landroid/telephony/CarrierConfigManager;->isConfigForIdentifiedCarrier(Landroid/os/PersistableBundle;)Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 2504
    :cond_7
    const-string v0, "carrier_nr_availabilities_int_array"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object p1

    const/4 v0, 0x2

    .line 2508
    invoke-static {p1, v0}, Lcom/android/internal/telephony/util/ArrayUtils;->contains([II)Z

    move-result p1

    if-eqz p1, :cond_1c

    .line 2511
    iget-object p1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mN1ModeDisallowedReasons:Ljava/util/Set;

    sget-object v0, Lcom/android/internal/telephony/GsmCdmaPhone;->N1_MODE_DISALLOWED_REASON_CARRIER:Ljava/lang/Integer;

    invoke-interface {p1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_23

    .line 2513
    :cond_1c
    iget-object p1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mN1ModeDisallowedReasons:Ljava/util/Set;

    sget-object v0, Lcom/android/internal/telephony/GsmCdmaPhone;->N1_MODE_DISALLOWED_REASON_CARRIER:Ljava/lang/Integer;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2516
    :goto_23
    iget-object p1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mModemN1Mode:Ljava/lang/Boolean;

    if-nez p1, :cond_33

    .line 2517
    iget-object p1, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v0, 0x45

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/android/internal/telephony/CommandsInterface;->isN1ModeEnabled(Landroid/os/Message;)V

    return-void

    :cond_33
    const/4 p1, 0x0

    .line 2519
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->maybeUpdateModemN1Mode(Landroid/os/Message;)V

    return-void
.end method

.method private blacklist updateCdmaRoamingSettingsAfterCarrierConfigChanged(Landroid/os/PersistableBundle;)V
    .registers 6

    .line 5333
    const-string v0, "cdma_roaming_mode_int"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 5336
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "roaming_settings"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/16 v1, 0x2c

    .line 5339
    const-string v3, "cdma_roaming_mode is going to changed to "

    if-eq p1, v2, :cond_52

    if-eqz p1, :cond_38

    const/4 v0, 0x1

    if-eq p1, v0, :cond_38

    const/4 v0, 0x2

    if-eq p1, v0, :cond_38

    .line 5363
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid cdma_roaming_mode settings: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->loge(Ljava/lang/String;)V

    return-void

    .line 5346
    :cond_38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 5349
    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 5348
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/Phone;->setCdmaRoamingPreference(ILandroid/os/Message;)V

    return-void

    :cond_52
    if-eq v0, p1, :cond_6d

    .line 5356
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 5359
    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 5358
    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/Phone;->setCdmaRoamingPreference(ILandroid/os/Message;)V

    :cond_6d
    return-void
.end method

.method private blacklist updateCurrentCarrierInProvider(Ljava/lang/String;)Z
    .registers 7

    .line 4000
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeCdma()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1e

    .line 4001
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeCdmaLte()Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    iget v2, p0, Lcom/android/internal/telephony/Phone;->mPhoneId:I

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCardApplication(II)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v0

    if-nez v0, :cond_18

    goto :goto_1e

    .line 4023
    :cond_18
    const-string p1, "updateCurrentCarrierInProvider not updated X retVal=true"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    return v1

    .line 4003
    :cond_1e
    :goto_1e
    const-string v0, "CDMAPhone: updateCurrentCarrierInProvider called"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 4004
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7c

    .line 4006
    :try_start_29
    sget-object v0, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "current"

    invoke-static {v0, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 4007
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 4008
    const-string v3, "numeric"

    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4009
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateCurrentCarrierInProvider from system: numeric="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 4010
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v0, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 4013
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "update mccmnc="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 4014
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mContext:Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/android/internal/telephony/MccTable;->updateMccMncConfiguration(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_73
    .catch Landroid/database/SQLException; {:try_start_29 .. :try_end_73} :catch_74

    return v1

    :catch_74
    move-exception p0

    .line 4018
    const-string p1, "GsmCdmaPhone"

    const-string v0, "Can\'t store current operator"

    invoke-static {p1, v0, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_7c
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist updateLinkCapacityEstimate(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/LinkCapacityEstimate;",
            ">;)V"
        }
    .end annotation

    .line 710
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateLinkCapacityEstimate: lce list="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    if-nez p1, :cond_17

    return-void

    .line 714
    :cond_17
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Phone;->notifyLinkCapacityEstimateChanged(Ljava/util/List;)V

    return-void
.end method

.method private blacklist updateNrSettingsAfterCarrierConfigChanged(Landroid/os/PersistableBundle;)V
    .registers 3

    .line 5296
    const-string v0, "carrier_nr_availabilities_int_array"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object p1

    .line 5298
    invoke-static {p1}, Lcom/android/internal/telephony/util/ArrayUtils;->isEmpty([I)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/android/internal/telephony/Phone;->mIsCarrierNrSupported:Z

    return-void
.end method

.method private blacklist updateSsOverCdmaSupported(Landroid/os/PersistableBundle;)V
    .registers 3

    .line 2447
    const-string v0, "support_ss_over_cdma_bool"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSsOverCdmaSupported:Z

    return-void
.end method

.method private blacklist updateTtyMode(I)V
    .registers 4

    .line 5155
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "updateTtyMode ttyMode=%d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->logi(Ljava/lang/String;)V

    .line 5156
    invoke-static {p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->telecomModeToPhoneMode(I)I

    move-result p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->setTTYMode(ILandroid/os/Message;)V

    return-void
.end method

.method private blacklist updateUiTtyMode(I)V
    .registers 4

    .line 5159
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "updateUiTtyMode ttyMode=%d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->logi(Ljava/lang/String;)V

    .line 5160
    invoke-static {p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->telecomModeToPhoneMode(I)I

    move-result p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->setUiTTYMode(ILandroid/os/Message;)V

    return-void
.end method

.method private blacklist updateVoNrSettings(Landroid/os/PersistableBundle;)V
    .registers 7

    .line 5302
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccCard;->getState()Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->LOADED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v0, v1, :cond_d

    return-void

    .line 5306
    :cond_d
    const-string v0, "vonr_enabled_bool"

    .line 5307
    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 5308
    const-string v1, "vonr_on_by_default_bool"

    .line 5309
    invoke-virtual {p1, v1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    .line 5312
    iget-object v1, p0, Lcom/android/internal/telephony/Phone;->mSubscriptionManagerService:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    .line 5313
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getSubscriptionInfoInternal(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;

    move-result-object v1

    const/4 v2, -0x1

    if-eqz v1, :cond_2b

    .line 5315
    invoke-virtual {v1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->getNrAdvancedCallingEnabled()I

    move-result v1

    goto :goto_2c

    :cond_2b
    move v1, v2

    .line 5318
    :goto_2c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "VoNR setting from telephony.db:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " ,vonr_enabled_bool:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " ,vonr_on_by_default_bool:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    if-eqz v0, :cond_5a

    const/4 v0, 0x1

    if-eq v1, v0, :cond_5b

    if-ne v1, v2, :cond_5a

    if-eqz p1, :cond_5a

    goto :goto_5b

    :cond_5a
    const/4 v0, 0x0

    .line 5327
    :cond_5b
    :goto_5b
    iget-object p1, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x3d

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    const/4 v1, 0x0

    invoke-interface {p1, v0, p0, v1}, Lcom/android/internal/telephony/CommandsInterface;->setVoNrEnabled(ZLandroid/os/Message;Landroid/os/WorkSource;)V

    return-void
.end method

.method private blacklist useImsForCall(Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;)Z
    .registers 3

    .line 1399
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isImsUseEnabled()Z

    move-result v0

    if-eqz v0, :cond_36

    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_36

    .line 1401
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isVoiceOverCellularImsEnabled()Z

    move-result v0

    if-nez v0, :cond_28

    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isWifiCallingEnabled()Z

    move-result v0

    if-nez v0, :cond_28

    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    .line 1402
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isVideoEnabled()Z

    move-result v0

    if-eqz v0, :cond_36

    iget p1, p1, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;->videoState:I

    invoke-static {p1}, Landroid/telecom/VideoProfile;->isVideo(I)Z

    move-result p1

    if-eqz p1, :cond_36

    :cond_28
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    .line 1403
    invoke-interface {p0}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getState()I

    move-result p0

    if-nez p0, :cond_36

    const/4 p0, 0x1

    return p0

    :cond_36
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public blacklist acceptCall(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .line 991
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->hasCalling()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 992
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_18

    .line 993
    invoke-interface {v0}, Lcom/android/internal/telephony/PhoneInternalInterface;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->isRinging()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 994
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/PhoneInternalInterface;->acceptCall(I)V

    return-void

    .line 996
    :cond_18
    iget-object p0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCT:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->acceptCall()V

    return-void

    .line 991
    :cond_1e
    new-instance p0, Lcom/android/internal/telephony/CallStateException;

    invoke-direct {p0}, Lcom/android/internal/telephony/CallStateException;-><init>()V

    throw p0
.end method

.method public blacklist activateCellBroadcastSms(ILandroid/os/Message;)V
    .registers 3

    .line 4061
    const-string p1, "[GsmCdmaPhone] activateCellBroadcastSms() is obsolete; use SmsManager"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->loge(Ljava/lang/String;)V

    .line 4062
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public blacklist canConference()Z
    .registers 3

    .line 1033
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->hasCalling()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 1034
    :cond_8
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_14

    invoke-interface {v0}, Lcom/android/internal/telephony/PhoneInternalInterface;->canConference()Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 p0, 0x1

    return p0

    .line 1037
    :cond_14
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 1038
    iget-object p0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCT:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->canConference()Z

    move-result p0

    return p0

    .line 1040
    :cond_21
    const-string v0, "canConference: not possible in CDMA"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->loge(Ljava/lang/String;)V

    return v1
.end method

.method public blacklist canDisablePhysicalSubscription()Z
    .registers 1

    .line 5263
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {p0}, Lcom/android/internal/telephony/CommandsInterface;->canToggleUiccApplicationsEnablement()Z

    move-result p0

    return p0
.end method

.method public blacklist canTransfer()Z
    .registers 2

    .line 1090
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->hasCalling()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1091
    iget-object p0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCT:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->canTransfer()Z

    move-result p0

    return p0

    .line 1093
    :cond_13
    const-string v0, "canTransfer: not possible in CDMA"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->loge(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public blacklist changeCallBarringPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 8

    .line 2726
    invoke-static {p1}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->cbFacilityToServiceType(Ljava/lang/String;)Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    move-result-object v0

    .line 2727
    sget-object v1, Lcom/android/internal/telephony/gsm/SsData$RequestType;->SS_REGISTRATION:Lcom/android/internal/telephony/gsm/SsData$RequestType;

    invoke-static {v1, v0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->getControlStringsForPwd(Lcom/android/internal/telephony/gsm/SsData$RequestType;Lcom/android/internal/telephony/gsm/SsData$ServiceType;)Ljava/util/ArrayList;

    move-result-object v0

    .line 2730
    iget v1, p0, Lcom/android/internal/telephony/Phone;->mPhoneId:I

    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getCountryIso()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/android/internal/telephony/FdnUtils;->isSuppServiceRequestBlockedByFdn(ILjava/util/ArrayList;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 2731
    new-instance p0, Lcom/android/internal/telephony/CommandException;

    sget-object p1, Lcom/android/internal/telephony/CommandException$Error;->FDN_CHECK_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    const/4 p1, 0x0

    invoke-static {p4, p1, p0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 2733
    invoke-virtual {p4}, Landroid/os/Message;->sendToTarget()V

    return-void

    .line 2737
    :cond_25
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-eqz v0, :cond_31

    .line 2738
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/CommandsInterface;->changeBarringPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    return-void

    .line 2740
    :cond_31
    const-string p1, "changeCallBarringPassword: not possible in CDMA"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->loge(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist clearDisconnected()V
    .registers 2

    .line 1084
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->hasCalling()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 1085
    :cond_7
    iget-object p0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCT:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->clearDisconnected()V

    return-void
.end method

.method public blacklist conference()V
    .registers 2

    .line 1047
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_1e

    invoke-interface {v0}, Lcom/android/internal/telephony/PhoneInternalInterface;->canConference()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 1048
    const-string v0, "conference() - delegated to IMS phone"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 1050
    :try_start_f
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/PhoneInternalInterface;->conference()V
    :try_end_14
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_f .. :try_end_14} :catch_15

    return-void

    :catch_15
    move-exception v0

    .line 1052
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->loge(Ljava/lang/String;)V

    return-void

    .line 1056
    :cond_1e
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 1057
    iget-object p0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCT:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->conference()V

    return-void

    .line 1060
    :cond_2a
    const-string v0, "conference: not possible in CDMA"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->loge(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist deleteCarrierInfoForImsiEncryption(I)V
    .registers 3

    .line 2131
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result p0

    invoke-static {v0, p0, p1}, Lcom/android/internal/telephony/CarrierInfoManager;->deleteCarrierInfoForImsiEncryption(Landroid/content/Context;II)V

    return-void
.end method

.method public blacklist deleteCarrierInfoForImsiEncryption(ILjava/lang/String;)V
    .registers 4

    .line 2136
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result p0

    invoke-static {v0, p0, p1, p2}, Lcom/android/internal/telephony/CarrierInfoManager;->deleteCarrierInfoForImsiEncryption(Landroid/content/Context;IILjava/lang/String;)V

    return-void
.end method

.method public blacklist dial(Ljava/lang/String;Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;Ljava/util/function/Consumer;)Lcom/android/internal/telephony/Connection;
    .registers 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;",
            "Ljava/util/function/Consumer<",
            "Lcom/android/internal/telephony/Phone;",
            ">;)",
            "Lcom/android/internal/telephony/Connection;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    .line 1444
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->hasCalling()Z

    move-result v4

    if-eqz v4, :cond_3cf

    .line 1447
    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v4

    if-nez v4, :cond_21

    iget-object v4, v2, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    if-nez v4, :cond_19

    goto :goto_21

    .line 1448
    :cond_19
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    const-string v1, "Sending UUS information NOT supported in CDMA!"

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1450
    :cond_21
    :goto_21
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->checkForTestEmergencyNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1452
    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_48

    .line 1454
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "dialString replaced for possible emergency number: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " -> "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->logi(Ljava/lang/String;)V

    goto :goto_49

    :cond_48
    move-object v4, v0

    .line 1459
    :goto_49
    iget-object v0, v1, Lcom/android/internal/telephony/Phone;->mContext:Landroid/content/Context;

    const-string v6, "carrier_config"

    .line 1460
    invoke-virtual {v0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    .line 1461
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v6

    invoke-virtual {v0, v6}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v0

    .line 1462
    const-string v6, "support_wps_over_ims_bool"

    invoke-virtual {v0, v6}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    .line 1464
    const-string v7, "use_only_dialed_sim_ecc_list_bool"

    invoke-virtual {v0, v7}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 1468
    iget-object v7, v1, Lcom/android/internal/telephony/Phone;->mContext:Landroid/content/Context;

    const-class v8, Landroid/telephony/TelephonyManager;

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telephony/TelephonyManager;

    .line 1476
    const-string v8, "dial; isEmergency="

    if-eqz v0, :cond_9c

    .line 1477
    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getEmergencyNumberTracker()Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;

    move-result-object v9

    invoke-virtual {v9, v4}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v9

    .line 1478
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v11, " (based on this phone only); globalIsEmergency="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1480
    invoke-virtual {v7, v4}, Landroid/telephony/TelephonyManager;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v7

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1478
    invoke-direct {v1, v7}, Lcom/android/internal/telephony/GsmCdmaPhone;->logi(Ljava/lang/String;)V

    goto :goto_b7

    .line 1482
    :cond_9c
    invoke-virtual {v7, v4}, Landroid/telephony/TelephonyManager;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v9

    .line 1483
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, " (based on all phones)"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v7}, Lcom/android/internal/telephony/GsmCdmaPhone;->logi(Ljava/lang/String;)V

    .line 1487
    :goto_b7
    iget-boolean v7, v2, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;->isEmergency:Z

    if-eqz v7, :cond_d3

    .line 1488
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, " (domain selection module)"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v7}, Lcom/android/internal/telephony/GsmCdmaPhone;->logi(Ljava/lang/String;)V

    const/4 v9, 0x1

    .line 1493
    :cond_d3
    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->isWpsCallNumber(Ljava/lang/String;)Z

    move-result v7

    .line 1496
    invoke-static {v2}, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;->from(Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;)Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;

    move-result-object v2

    .line 1497
    invoke-virtual {v2, v9}, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs$Builder;->setIsEmergency(Z)Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs$Builder;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;

    .line 1498
    invoke-virtual {v2, v7}, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;->setIsWpsCall(Z)Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;

    move-result-object v2

    .line 1499
    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;->build()Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/telephony/GsmCdmaPhone;->mDialArgs:Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;

    .line 1501
    iget-object v8, v1, Lcom/android/internal/telephony/Phone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v9, :cond_f7

    .line 1503
    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->useImsForEmergency()Z

    move-result v12

    if-eqz v12, :cond_f7

    const/4 v12, 0x1

    goto :goto_f8

    :cond_f7
    const/4 v12, 0x0

    .line 1506
    :goto_f8
    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1505
    invoke-static {v13}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1507
    const-string v14, "*"

    invoke-virtual {v13, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    const-string v15, "#"

    if-nez v14, :cond_110

    invoke-virtual {v13, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_118

    .line 1508
    :cond_110
    invoke-virtual {v13, v15}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_118

    const/4 v14, 0x1

    goto :goto_119

    :cond_118
    const/4 v14, 0x0

    .line 1509
    :goto_119
    invoke-static {v13, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isSuppServiceCodes(Ljava/lang/String;Lcom/android/internal/telephony/Phone;)Z

    move-result v13

    if-eqz v14, :cond_123

    if-nez v13, :cond_123

    const/4 v15, 0x1

    goto :goto_124

    :cond_123
    const/4 v15, 0x0

    :goto_124
    if-eqz v8, :cond_12f

    .line 1511
    invoke-virtual {v8}, Lcom/android/internal/telephony/Phone;->isUtEnabled()Z

    move-result v16

    if-eqz v16, :cond_12f

    const/16 v16, 0x1

    goto :goto_131

    :cond_12f
    const/16 v16, 0x0

    .line 1512
    :goto_131
    invoke-direct {v1, v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->useImsForCall(Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;)Z

    move-result v17

    if-eqz v17, :cond_13e

    if-eqz v7, :cond_13b

    if-eqz v6, :cond_13e

    :cond_13b
    const/16 v17, 0x1

    goto :goto_140

    :cond_13e
    const/16 v17, 0x0

    .line 1515
    :goto_140
    iget-object v11, v2, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;->intentExtras:Landroid/os/Bundle;

    if-eqz v11, :cond_19f

    .line 1517
    const-string v10, "dial_domain"

    invoke-virtual {v11, v10}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_19f

    .line 1518
    invoke-virtual {v11, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v12

    move/from16 v18, v5

    .line 1519
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v19, v2

    const-string v2, "dial domain="

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->logi(Ljava/lang/String;)V

    const/4 v2, 0x2

    if-ne v12, v2, :cond_180

    if-eqz v9, :cond_171

    :goto_16d
    const/4 v12, 0x1

    :goto_16e
    const/16 v17, 0x0

    goto :goto_198

    :cond_171
    if-eqz v14, :cond_17c

    if-eqz v15, :cond_176

    goto :goto_17c

    .line 1530
    :cond_176
    const-string v2, "dial unexpected Ut domain selection, ignored"

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->loge(Ljava/lang/String;)V

    goto :goto_196

    :cond_17c
    :goto_17c
    const/4 v12, 0x0

    const/16 v17, 0x1

    goto :goto_198

    :cond_180
    const/4 v2, 0x4

    if-ne v12, v2, :cond_196

    if-eqz v9, :cond_191

    const/16 v2, 0x12

    .line 1536
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 1535
    const-string v5, "CallRadioTech"

    invoke-virtual {v11, v5, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_16d

    .line 1539
    :cond_191
    const-string v2, "dial DOMAIN_NON_3GPP_PS should be used only for emergency calls"

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->loge(Ljava/lang/String;)V

    :cond_196
    :goto_196
    const/4 v12, 0x0

    goto :goto_16e

    .line 1543
    :goto_198
    invoke-virtual {v11, v10}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    const/4 v11, 0x0

    :goto_19c
    move/from16 v2, v17

    goto :goto_1a6

    :cond_19f
    move-object/from16 v19, v2

    move/from16 v18, v5

    move/from16 v11, v16

    goto :goto_19c

    .line 1547
    :goto_1a6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "useImsForCall="

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, ", useOnlyDialedSimEccList="

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", isEmergency="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", useImsForEmergency="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", useImsForUt="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", isUt="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", isSuppServiceCode="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", isPotentialUssdCode="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", isWpsCall="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", allowWpsOverIms="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", imsPhone="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", imsPhone.isVoiceOverCellularImsEnabled()="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1559
    const-string v0, "N/A"

    if-eqz v8, :cond_215

    invoke-virtual {v8}, Lcom/android/internal/telephony/Phone;->isVoiceOverCellularImsEnabled()Z

    move-result v10

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    goto :goto_216

    :cond_215
    move-object v10, v0

    :goto_216
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, ", imsPhone.isVowifiEnabled()="

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v8, :cond_229

    .line 1561
    invoke-virtual {v8}, Lcom/android/internal/telephony/Phone;->isWifiCallingEnabled()Z

    move-result v10

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    goto :goto_22a

    :cond_229
    move-object v10, v0

    :goto_22a
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, ", imsPhone.isVideoEnabled()="

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v8, :cond_23d

    .line 1563
    invoke-virtual {v8}, Lcom/android/internal/telephony/Phone;->isVideoEnabled()Z

    move-result v10

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    goto :goto_23e

    :cond_23d
    move-object v10, v0

    :goto_23e
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, ", imsPhone.getServiceState().getState()="

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v8, :cond_254

    .line 1565
    invoke-interface {v8}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :cond_254
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1547
    invoke-direct {v1, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->logi(Ljava/lang/String;)V

    if-nez v9, :cond_277

    .line 1569
    iget v0, v1, Lcom/android/internal/telephony/Phone;->mPhoneId:I

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getCountryIso()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v4, v5}, Lcom/android/internal/telephony/FdnUtils;->isNumberBlockedByFDN(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_26d

    goto :goto_277

    .line 1570
    :cond_26d
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    const/16 v1, 0x8

    const-string v2, "cannot dial number blocked by FDN"

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/CallStateException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_277
    :goto_277
    if-nez v9, :cond_282

    .line 1577
    iget-object v0, v1, Lcom/android/internal/telephony/Phone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    iget v5, v1, Lcom/android/internal/telephony/Phone;->mPhoneId:I

    iget-object v10, v1, Lcom/android/internal/telephony/Phone;->mContext:Landroid/content/Context;

    invoke-static {v0, v5, v10}, Lcom/android/internal/telephony/Phone;->checkWfcWifiOnlyModeBeforeDial(Lcom/android/internal/telephony/Phone;ILandroid/content/Context;)V

    :cond_282
    if-eqz v8, :cond_2a0

    if-nez v6, :cond_2a0

    if-nez v2, :cond_2a0

    if-eqz v7, :cond_2a0

    .line 1580
    invoke-virtual {v8}, Lcom/android/internal/telephony/Phone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v0

    instance-of v0, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    if-eqz v0, :cond_2a0

    .line 1581
    const-string v0, "WPS call placed over CS; disconnecting all IMS calls.."

    invoke-direct {v1, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->logi(Ljava/lang/String;)V

    .line 1582
    invoke-virtual {v8}, Lcom/android/internal/telephony/Phone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    .line 1583
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->hangupAllConnections()V

    :cond_2a0
    if-eqz v2, :cond_2a6

    if-eqz v14, :cond_2ac

    if-nez v15, :cond_2ac

    :cond_2a6
    if-eqz v14, :cond_2aa

    if-nez v11, :cond_2ac

    :cond_2aa
    if-eqz v12, :cond_326

    .line 1590
    :cond_2ac
    :try_start_2ac
    const-string v0, "Trying IMS PS call"

    invoke-direct {v1, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 1591
    invoke-interface {v3, v8}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_2b4
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_2ac .. :try_end_2b4} :catch_2bd

    move-object/from16 v5, v19

    .line 1592
    :try_start_2b6
    invoke-interface {v8, v4, v5}, Lcom/android/internal/telephony/PhoneInternalInterface;->dial(Ljava/lang/String;Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;)Lcom/android/internal/telephony/Connection;

    move-result-object v0
    :try_end_2ba
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_2b6 .. :try_end_2ba} :catch_2bb

    return-object v0

    :catch_2bb
    move-exception v0

    goto :goto_2c0

    :catch_2bd
    move-exception v0

    move-object/from16 v5, v19

    .line 1594
    :goto_2c0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IMS PS call exception "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, "useImsForCall ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", imsPhone ="

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 1598
    const-string v2, "cs_fallback"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_308

    if-eqz v9, :cond_2f3

    goto :goto_308

    .line 1602
    :cond_2f3
    new-instance v1, Lcom/android/internal/telephony/CallStateException;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallStateException;->getError()I

    move-result v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/internal/telephony/CallStateException;-><init>(ILjava/lang/String;)V

    .line 1603
    invoke-virtual {v0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/Exception;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 1604
    throw v1

    .line 1599
    :cond_308
    :goto_308
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IMS call failed with Exception: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ". Falling back to CS."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->logi(Ljava/lang/String;)V

    goto :goto_328

    :cond_326
    move-object/from16 v5, v19

    .line 1609
    :goto_328
    iget-object v0, v1, Lcom/android/internal/telephony/GsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    if-eqz v0, :cond_34a

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_34a

    iget-object v0, v1, Lcom/android/internal/telephony/GsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 1610
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getDataRegistrationState()I

    move-result v0

    if-eqz v0, :cond_34a

    if-eqz v9, :cond_342

    goto :goto_34a

    .line 1612
    :cond_342
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    const-string v1, "cannot dial in current state"

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1615
    :cond_34a
    :goto_34a
    iget-object v0, v1, Lcom/android/internal/telephony/GsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    if-eqz v0, :cond_371

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_371

    iget v0, v5, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;->videoState:I

    .line 1616
    invoke-static {v0}, Landroid/telecom/VideoProfile;->isVideo(I)Z

    move-result v0

    if-nez v0, :cond_371

    if-nez v9, :cond_371

    if-eqz v14, :cond_365

    if-nez v11, :cond_371

    :cond_365
    if-eqz v15, :cond_368

    goto :goto_371

    .line 1621
    :cond_368
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    const-string v1, "cannot dial voice call in airplane mode"

    const/4 v2, 0x2

    invoke-direct {v0, v2, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 1627
    :cond_371
    :goto_371
    iget-object v0, v1, Lcom/android/internal/telephony/GsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    if-eqz v0, :cond_3ac

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 1628
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_3ac

    iget-object v0, v1, Lcom/android/internal/telephony/GsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 1629
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getDataRegistrationState()I

    move-result v0

    if-nez v0, :cond_396

    iget-object v0, v1, Lcom/android/internal/telephony/GsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 1631
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v0

    .line 1630
    invoke-static {v0}, Landroid/telephony/ServiceState;->isPsOnlyTech(I)Z

    move-result v0

    if-nez v0, :cond_3ac

    :cond_396
    iget v0, v5, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;->videoState:I

    .line 1632
    invoke-static {v0}, Landroid/telecom/VideoProfile;->isVideo(I)Z

    move-result v0

    if-nez v0, :cond_3ac

    if-nez v9, :cond_3ac

    if-eqz v15, :cond_3a3

    goto :goto_3ac

    .line 1636
    :cond_3a3
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    const-string v1, "cannot dial voice call in out of service"

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 1640
    :cond_3ac
    :goto_3ac
    const-string v0, "Trying (non-IMS) CS call"

    invoke-direct {v1, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    if-nez v18, :cond_3c7

    if-eqz v9, :cond_3c7

    .line 1643
    invoke-static {}, Lcom/android/internal/telephony/domainselection/DomainSelectionResolver;->getInstance()Lcom/android/internal/telephony/domainselection/DomainSelectionResolver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/domainselection/DomainSelectionResolver;->isDomainSelectionSupported()Z

    move-result v0

    if-nez v0, :cond_3c7

    const/4 v2, 0x1

    .line 1646
    iput-boolean v2, v1, Lcom/android/internal/telephony/GsmCdmaPhone;->mIsTestingEmergencyCallbackMode:Z

    .line 1647
    iget-object v0, v1, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0}, Lcom/android/internal/telephony/CommandsInterface;->testingEmergencyCall()V

    .line 1651
    :cond_3c7
    invoke-interface {v3, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1652
    invoke-virtual {v1, v4, v5}, Lcom/android/internal/telephony/GsmCdmaPhone;->dialInternal(Ljava/lang/String;Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;)Lcom/android/internal/telephony/Connection;

    move-result-object v0

    return-object v0

    .line 1445
    :cond_3cf
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    const-string v1, "Calling feature is not supported!"

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected blacklist dialInternal(Ljava/lang/String;Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;)Lcom/android/internal/telephony/Connection;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1695
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->dialInternal(Ljava/lang/String;Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;Landroid/os/ResultReceiver;)Lcom/android/internal/telephony/Connection;

    move-result-object p0

    return-object p0
.end method

.method protected blacklist dialInternal(Ljava/lang/String;Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;Landroid/os/ResultReceiver;)Lcom/android/internal/telephony/Connection;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .line 1703
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1705
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-eqz v0, :cond_72

    .line 1708
    iget-boolean v0, p2, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;->isEmergency:Z

    const/4 v1, 0x0

    if-nez v0, :cond_16

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->handleInCallMmiCommands(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    return-object v1

    .line 1719
    :cond_16
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1720
    iget-object v2, p0, Lcom/android/internal/telephony/Phone;->mUiccApplication:Ljava/util/concurrent/atomic/AtomicReference;

    .line 1721
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 1720
    invoke-static {v0, p0, v2, p3}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->newFromDialString(Ljava/lang/String;Lcom/android/internal/telephony/GsmCdmaPhone;Lcom/android/internal/telephony/uicc/UiccCardApplication;Landroid/os/ResultReceiver;)Lcom/android/internal/telephony/gsm/GsmMmiCode;

    move-result-object p3

    .line 1722
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dialInternal: dialing w/ mmi \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\'..."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    if-nez p3, :cond_48

    .line 1725
    iget-object p0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCT:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->dialGsm(Ljava/lang/String;Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;)Lcom/android/internal/telephony/Connection;

    move-result-object p0

    return-object p0

    .line 1726
    :cond_48
    invoke-virtual {p3}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isTemporaryModeCLIR()Z

    move-result p1

    if-eqz p1, :cond_5f

    .line 1727
    iget-object p0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCT:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    iget-object p1, p3, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mDialingNumber:Ljava/lang/String;

    invoke-virtual {p3}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->getCLIRMode()I

    move-result p3

    iget-object v0, p2, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    iget-object p2, p2, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;->intentExtras:Landroid/os/Bundle;

    invoke-virtual {p0, p1, p3, v0, p2}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->dialGsm(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;Landroid/os/Bundle;)Lcom/android/internal/telephony/Connection;

    move-result-object p0

    return-object p0

    .line 1730
    :cond_5f
    iget-object p1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mPendingMMIs:Ljava/util/ArrayList;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1731
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mMmiRegistrants:Lcom/android/internal/telephony/RegistrantList;

    new-instance p1, Landroid/os/AsyncResult;

    invoke-direct {p1, v1, p3, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 1732
    invoke-virtual {p3}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->processCode()V

    return-object v1

    .line 1736
    :cond_72
    iget-object p0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCT:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->dial(Ljava/lang/String;Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;)Lcom/android/internal/telephony/Connection;

    move-result-object p0

    return-object p0
.end method

.method public blacklist disableLocationUpdates()V
    .registers 1

    .line 2999
    iget-object p0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->disableLocationUpdates()V

    return-void
.end method

.method public blacklist dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6

    .line 4753
    const-string v0, "GsmCdmaPhone extends:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4754
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 4755
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mPrecisePhoneType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mPrecisePhoneType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4756
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mCT="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCT:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4757
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mSST="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4758
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mPendingMMIs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mPendingMMIs:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4759
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mIccPhoneBookIntManager="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mIccPhoneBookIntManager:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4760
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mImei="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mImei:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->pii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4761
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mImeiSv="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mImeiSv:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->pii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4762
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mVmNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mVmNumber:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->pii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4763
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mCdmaSSM="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4764
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mCdmaSubscriptionSource="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCdmaSubscriptionSource:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4765
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mWakeLock="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4766
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

    .line 4767
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mEsn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mEsn:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->pii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4768
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mMeid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mMeid:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->pii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4769
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mCarrierOtaSpNumSchema="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCarrierOtaSpNumSchema:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4770
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-nez v0, :cond_1ce

    .line 4771
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " getCdmaEriIconIndex()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getCdmaEriIconIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4772
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " getCdmaEriIconMode()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getCdmaEriIconMode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4773
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " getCdmaEriText()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getCdmaEriText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4774
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " isMinInfoReady()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isMinInfoReady()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4776
    :cond_1ce
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " isCspPlmnEnabled()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isCspPlmnEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4777
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mManualNetworkSelectionPlmn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mManualNetworkSelectionPlmn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4778
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mTelecomVoiceServiceStateOverride="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mTelecomVoiceServiceStateOverride:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mTelecomVoiceServiceStateOverride:I

    .line 4780
    invoke-static {v1}, Landroid/telephony/ServiceState;->rilServiceStateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4778
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4782
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mUiccApplicationsEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mUiccApplicationsEnabled:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4783
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 4785
    :try_start_23e
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCallWaitingController:Lcom/android/internal/telephony/CallWaitingController;

    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/CallWaitingController;->dump(Ljava/io/PrintWriter;)V
    :try_end_243
    .catch Ljava/lang/Exception; {:try_start_23e .. :try_end_243} :catch_244

    goto :goto_248

    :catch_244
    move-exception v0

    .line 4787
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 4789
    :goto_248
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 4791
    :try_start_24b
    iget-object p0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCellBroadcastConfigTracker:Lcom/android/internal/telephony/CellBroadcastConfigTracker;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/CellBroadcastConfigTracker;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_250
    .catch Ljava/lang/Exception; {:try_start_24b .. :try_end_250} :catch_251

    goto :goto_255

    :catch_251
    move-exception p0

    .line 4793
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 4795
    :goto_255
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    return-void
.end method

.method public blacklist enableEnhancedVoicePrivacy(ZLandroid/os/Message;)V
    .registers 4

    .line 1066
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1067
    const-string p1, "enableEnhancedVoicePrivacy: not expected on GSM"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->loge(Ljava/lang/String;)V

    return-void

    .line 1069
    :cond_c
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {p0, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->setPreferredVoicePrivacy(ZLandroid/os/Message;)V

    return-void
.end method

.method public blacklist enableLocationUpdates()V
    .registers 1

    .line 2994
    iget-object p0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->enableLocationUpdates()V

    return-void
.end method

.method public blacklist enableUiccApplications(ZLandroid/os/Message;)V
    .registers 5

    .line 5245
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    iget v1, p0, Lcom/android/internal/telephony/Phone;->mPhoneId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccSlotForPhone(I)Lcom/android/internal/telephony/uicc/UiccSlot;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 5246
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccSlot;->getCardState()Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_PRESENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-eq v0, v1, :cond_13

    goto :goto_19

    .line 5255
    :cond_13
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {p0, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->enableUiccApplications(ZLandroid/os/Message;)V

    return-void

    :cond_19
    :goto_19
    if-eqz p2, :cond_29

    .line 5248
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "No SIM card is present"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-static {p2, p1, p0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 5250
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    :cond_29
    return-void
.end method

.method public greylist-max-r exitEmergencyCallbackMode()V
    .registers 3

    .line 4203
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "exitEmergencyCallbackMode: mImsPhone="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/Phone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " isPhoneTypeGsm="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4204
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4203
    const-string v1, "GsmCdmaPhone"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4206
    invoke-static {}, Lcom/android/internal/telephony/domainselection/DomainSelectionResolver;->getInstance()Lcom/android/internal/telephony/domainselection/DomainSelectionResolver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/domainselection/DomainSelectionResolver;->isDomainSelectionSupported()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 4207
    invoke-static {}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->getInstance()Lcom/android/internal/telephony/emergency/EmergencyStateTracker;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->exitEmergencyCallbackMode()V

    return-void

    .line 4210
    :cond_36
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_46

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isInImsEcm()Z

    move-result v0

    if-eqz v0, :cond_46

    .line 4211
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->exitEmergencyCallbackMode()V

    return-void

    .line 4213
    :cond_46
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_53

    .line 4214
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 4217
    :cond_53
    iget-boolean v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mIsTestingEmergencyCallbackMode:Z

    if-eqz v0, :cond_5e

    const/16 v0, 0x1a

    .line 4222
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    goto :goto_5f

    :cond_5e
    const/4 v0, 0x0

    .line 4224
    :goto_5f
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {p0, v0}, Lcom/android/internal/telephony/CommandsInterface;->exitEmergencyCallbackMode(Landroid/os/Message;)V

    return-void
.end method

.method public blacklist explicitCallTransfer()V
    .registers 2

    .line 1100
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->hasCalling()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1101
    iget-object p0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCT:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->explicitCallTransfer()V

    return-void

    .line 1103
    :cond_12
    const-string v0, "explicitCallTransfer: not possible in CDMA"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->loge(Ljava/lang/String;)V

    return-void
.end method

.method protected whitelist test-api finalize()V
    .registers 3

    .line 719
    const-string v0, "GsmCdmaPhone finalized"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 720
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 721
    const-string v0, "GsmCdmaPhone"

    const-string v1, "UNEXPECTED; mWakeLock is held when finalizing."

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    iget-object p0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_1b
    return-void
.end method

.method public blacklist getAccessNetworksManager()Lcom/android/internal/telephony/data/AccessNetworksManager;
    .registers 1

    .line 796
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mAccessNetworksManager:Lcom/android/internal/telephony/data/AccessNetworksManager;

    return-object p0
.end method

.method public blacklist getAvailableNetworks(Landroid/os/Message;)V
    .registers 3

    .line 2943
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-nez v0, :cond_13

    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeCdmaLte()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_13

    .line 2947
    :cond_d
    const-string p1, "getAvailableNetworks: not possible in CDMA"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->loge(Ljava/lang/String;)V

    return-void

    :cond_13
    :goto_13
    const/16 v0, 0x33

    .line 2944
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 2945
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {p0, p1}, Lcom/android/internal/telephony/CommandsInterface;->getAvailableNetworks(Landroid/os/Message;)V

    return-void
.end method

.method public bridge synthetic blacklist getBackgroundCall()Lcom/android/internal/telephony/Call;
    .registers 1

    .line 158
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getBackgroundCall()Lcom/android/internal/telephony/GsmCdmaCall;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getBackgroundCall()Lcom/android/internal/telephony/GsmCdmaCall;
    .registers 2

    .line 1115
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->hasCalling()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 p0, 0x0

    return-object p0

    .line 1116
    :cond_8
    iget-object p0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCT:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    iget-object p0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    return-object p0
.end method

.method public blacklist getCallBarring(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;I)V
    .registers 7

    .line 2667
    invoke-static {p1}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->cbFacilityToServiceType(Ljava/lang/String;)Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    move-result-object v0

    .line 2668
    sget-object v1, Lcom/android/internal/telephony/gsm/SsData$RequestType;->SS_INTERROGATION:Lcom/android/internal/telephony/gsm/SsData$RequestType;

    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isRequestBlockedByFDN(Lcom/android/internal/telephony/gsm/SsData$RequestType;Lcom/android/internal/telephony/gsm/SsData$ServiceType;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 2669
    new-instance p0, Lcom/android/internal/telephony/CommandException;

    sget-object p1, Lcom/android/internal/telephony/CommandException$Error;->FDN_CHECK_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    const/4 p1, 0x0

    invoke-static {p3, p1, p0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 2671
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    return-void

    .line 2675
    :cond_1b
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    .line 2676
    invoke-virtual {p0, p3}, Lcom/android/internal/telephony/GsmCdmaPhone;->useSsOverIms(Landroid/os/Message;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 2677
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/PhoneInternalInterface;->getCallBarring(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;I)V

    return-void

    .line 2681
    :cond_27
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 2682
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {p0, p1, p2, p4, p3}, Lcom/android/internal/telephony/CommandsInterface;->queryFacilityLock(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V

    return-void

    .line 2684
    :cond_33
    const-string p1, "getCallBarringOption: not possible in CDMA"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->loge(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist getCallForwardingOption(IILandroid/os/Message;)V
    .registers 7

    .line 2546
    invoke-static {p1}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->cfReasonToServiceType(I)Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    move-result-object v0

    .line 2547
    sget-object v1, Lcom/android/internal/telephony/gsm/SsData$RequestType;->SS_INTERROGATION:Lcom/android/internal/telephony/gsm/SsData$RequestType;

    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isRequestBlockedByFDN(Lcom/android/internal/telephony/gsm/SsData$RequestType;Lcom/android/internal/telephony/gsm/SsData$ServiceType;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1b

    .line 2548
    new-instance p0, Lcom/android/internal/telephony/CommandException;

    sget-object p1, Lcom/android/internal/telephony/CommandException$Error;->FDN_CHECK_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    invoke-static {p3, v1, p0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 2550
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    return-void

    .line 2554
    :cond_1b
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    .line 2555
    invoke-virtual {p0, p3}, Lcom/android/internal/telephony/GsmCdmaPhone;->useSsOverIms(Landroid/os/Message;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 2556
    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/PhoneInternalInterface;->getCallForwardingOption(IILandroid/os/Message;)V

    return-void

    .line 2560
    :cond_27
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-eqz v0, :cond_46

    .line 2561
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->isValidCommandInterfaceCFReason(I)Z

    move-result v0

    if-eqz v0, :cond_45

    .line 2562
    const-string v0, "requesting call forwarding query."

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    if-nez p1, :cond_40

    const/16 v0, 0xd

    .line 2565
    invoke-virtual {p0, v0, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p3

    .line 2569
    :cond_40
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {p0, p1, p2, v1, p3}, Lcom/android/internal/telephony/CommandsInterface;->queryCallForwardStatus(IILjava/lang/String;Landroid/os/Message;)V

    :cond_45
    return-void

    .line 2572
    :cond_46
    iget-boolean p1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSsOverCdmaSupported:Z

    if-nez p1, :cond_57

    .line 2575
    new-instance p0, Lcom/android/internal/telephony/CommandException;

    sget-object p1, Lcom/android/internal/telephony/CommandException$Error;->INVALID_STATE:Lcom/android/internal/telephony/CommandException$Error;

    const-string p2, "Call Forwarding over CDMA unavailable"

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;Ljava/lang/String;)V

    invoke-static {p3, v1, p0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    goto :goto_63

    .line 2579
    :cond_57
    const-string p1, "getCallForwardingOption: not possible in CDMA, just return empty result"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->loge(Ljava/lang/String;)V

    .line 2580
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->makeEmptyCallForward()[Lcom/android/internal/telephony/CallForwardInfo;

    move-result-object p0

    invoke-static {p3, p0, v1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 2582
    :goto_63
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public blacklist getCallForwardingOption(ILandroid/os/Message;)V
    .registers 4

    const/4 v0, 0x1

    .line 2538
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/internal/telephony/GsmCdmaPhone;->getCallForwardingOption(IILandroid/os/Message;)V

    return-void
.end method

.method public greylist-max-r getCallTracker()Lcom/android/internal/telephony/CallTracker;
    .registers 1

    .line 791
    iget-object p0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCT:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    return-object p0
.end method

.method public blacklist getCallWaiting(Landroid/os/Message;)V
    .registers 5

    .line 2831
    sget-object v0, Lcom/android/internal/telephony/gsm/SsData$RequestType;->SS_INTERROGATION:Lcom/android/internal/telephony/gsm/SsData$RequestType;

    sget-object v1, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_WAIT:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->isRequestBlockedByFDN(Lcom/android/internal/telephony/gsm/SsData$RequestType;Lcom/android/internal/telephony/gsm/SsData$ServiceType;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_19

    .line 2832
    new-instance p0, Lcom/android/internal/telephony/CommandException;

    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->FDN_CHECK_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    invoke-static {p1, v1, p0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 2834
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void

    .line 2838
    :cond_19
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCallWaitingController:Lcom/android/internal/telephony/CallWaitingController;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CallWaitingController;->getCallWaiting(Landroid/os/Message;)Z

    move-result v0

    if-eqz v0, :cond_22

    return-void

    .line 2840
    :cond_22
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    .line 2841
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->useSsOverIms(Landroid/os/Message;)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 2842
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/PhoneInternalInterface;->getCallWaiting(Landroid/os/Message;)V

    return-void

    .line 2846
    :cond_2e
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_3b

    .line 2849
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {p0, v2, p1}, Lcom/android/internal/telephony/CommandsInterface;->queryCallWaiting(ILandroid/os/Message;)V

    return-void

    .line 2851
    :cond_3b
    iget-boolean p0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSsOverCdmaSupported:Z

    if-nez p0, :cond_4c

    .line 2854
    new-instance p0, Lcom/android/internal/telephony/CommandException;

    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->INVALID_STATE:Lcom/android/internal/telephony/CommandException$Error;

    const-string v2, "Call Waiting over CDMA unavailable"

    invoke-direct {p0, v0, v2}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;Ljava/lang/String;)V

    invoke-static {p1, v1, p0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    goto :goto_55

    :cond_4c
    const/16 p0, 0xff

    .line 2858
    filled-new-array {p0, v2}, [I

    move-result-object p0

    .line 2860
    invoke-static {p1, p0, v1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 2862
    :goto_55
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public blacklist getCarrierId()I
    .registers 2

    .line 2142
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mCarrierResolver:Lcom/android/internal/telephony/CarrierResolver;

    if-eqz v0, :cond_9

    .line 2143
    invoke-virtual {v0}, Lcom/android/internal/telephony/CarrierResolver;->getCarrierId()I

    move-result p0

    return p0

    :cond_9
    invoke-super {p0}, Lcom/android/internal/telephony/Phone;->getCarrierId()I

    move-result p0

    return p0
.end method

.method public blacklist getCarrierIdListVersion()I
    .registers 2

    .line 2179
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mCarrierResolver:Lcom/android/internal/telephony/CarrierResolver;

    if-eqz v0, :cond_9

    .line 2180
    invoke-virtual {v0}, Lcom/android/internal/telephony/CarrierResolver;->getCarrierListVersion()I

    move-result p0

    return p0

    :cond_9
    invoke-super {p0}, Lcom/android/internal/telephony/Phone;->getCarrierIdListVersion()I

    move-result p0

    return p0
.end method

.method public blacklist getCarrierInfoForImsiEncryption(IZ)Landroid/telephony/ImsiEncryptionInfo;
    .registers 10

    .line 2115
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mContext:Landroid/content/Context;

    const-class v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 2116
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v0

    .line 2117
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v3

    .line 2118
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCarrierId()I

    move-result v4

    .line 2119
    iget-object v2, p0, Lcom/android/internal/telephony/Phone;->mContext:Landroid/content/Context;

    .line 2120
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v6

    move v1, p1

    move v5, p2

    .line 2119
    invoke-static/range {v1 .. v6}, Lcom/android/internal/telephony/CarrierInfoManager;->getCarrierInfoForImsiEncryption(ILandroid/content/Context;Ljava/lang/String;IZI)Landroid/telephony/ImsiEncryptionInfo;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getCarrierName()Ljava/lang/String;
    .registers 2

    .line 2148
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mCarrierResolver:Lcom/android/internal/telephony/CarrierResolver;

    if-eqz v0, :cond_9

    .line 2149
    invoke-virtual {v0}, Lcom/android/internal/telephony/CarrierResolver;->getCarrierName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_9
    invoke-super {p0}, Lcom/android/internal/telephony/Phone;->getCarrierName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getCarrierPrivilegesTracker()Lcom/android/internal/telephony/CarrierPrivilegesTracker;
    .registers 1

    .line 1146
    iget-object p0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCarrierPrivilegesTracker:Lcom/android/internal/telephony/CarrierPrivilegesTracker;

    return-object p0
.end method

.method public blacklist getCdmaEriIconIndex()I
    .registers 2

    .line 4525
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 4526
    invoke-super {p0}, Lcom/android/internal/telephony/Phone;->getCdmaEriIconIndex()I

    move-result p0

    return p0

    .line 4528
    :cond_b
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getCdmaEriIconIndex()I

    move-result p0

    return p0
.end method

.method public blacklist getCdmaEriIconMode()I
    .registers 2

    .line 4539
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 4540
    invoke-super {p0}, Lcom/android/internal/telephony/Phone;->getCdmaEriIconMode()I

    move-result p0

    return p0

    .line 4542
    :cond_b
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getCdmaEriIconMode()I

    move-result p0

    return p0
.end method

.method public greylist-max-r getCdmaEriText()Ljava/lang/String;
    .registers 3

    .line 4552
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 4553
    invoke-super {p0}, Lcom/android/internal/telephony/Phone;->getCdmaEriText()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 4555
    :cond_b
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getCdmaRoamingIndicator()I

    move-result v0

    .line 4556
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getCdmaDefaultRoamingIndicator()I

    move-result v1

    .line 4557
    iget-object p0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->getCdmaEriText(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getCdmaMin()Ljava/lang/String;
    .registers 1

    .line 2326
    iget-object p0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getCdmaMin()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getCdmaPrlVersion()Ljava/lang/String;
    .registers 1

    .line 2321
    iget-object p0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getPrlVersion()Ljava/lang/String;

    move-result-object p0

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

    .line 5390
    iget-object p0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCellBroadcastConfigTracker:Lcom/android/internal/telephony/CellBroadcastConfigTracker;

    invoke-virtual {p0}, Lcom/android/internal/telephony/CellBroadcastConfigTracker;->getCellBroadcastIdRanges()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getCellBroadcastSmsConfig(Landroid/os/Message;)V
    .registers 3

    .line 4072
    const-string v0, "[GsmCdmaPhone] getCellBroadcastSmsConfig() is obsolete; use SmsManager"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->loge(Ljava/lang/String;)V

    .line 4073
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public blacklist getCellIdentity(Landroid/os/WorkSource;Landroid/os/Message;)V
    .registers 3

    .line 749
    iget-object p0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/ServiceStateTracker;->requestCellIdentity(Landroid/os/WorkSource;Landroid/os/Message;)V

    return-void
.end method

.method public blacklist getCountryIso()Ljava/lang/String;
    .registers 2

    .line 4908
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v0

    .line 4909
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object p0

    .line 4910
    invoke-virtual {p0, v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object p0

    if-eqz p0, :cond_28

    .line 4911
    invoke-virtual {p0}, Landroid/telephony/SubscriptionInfo;->getCountryIso()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1d

    goto :goto_28

    .line 4914
    :cond_1d
    invoke-virtual {p0}, Landroid/telephony/SubscriptionInfo;->getCountryIso()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_28
    :goto_28
    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist getCsCallRadioTech()I
    .registers 3

    .line 4939
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    if-eqz v0, :cond_17

    .line 4940
    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 4941
    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v1

    .line 4940
    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getCsCallRadioTech(II)I

    move-result p0

    return p0

    :cond_17
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist getDataActivityState()I
    .registers 1

    .line 848
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getDataNetworkController()Lcom/android/internal/telephony/data/DataNetworkController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataNetworkController;->getDataActivity()I

    move-result p0

    return p0
.end method

.method public blacklist getDataRoamingEnabled()Z
    .registers 1

    .line 3004
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getDataSettingsManager()Lcom/android/internal/telephony/data/DataSettingsManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataSettingsManager;->isDataRoamingEnabled()Z

    move-result p0

    return p0
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

    .line 5283
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getDataNetworkController()Lcom/android/internal/telephony/data/DataNetworkController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataNetworkController;->getDataServicePackages()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getDeviceId()Ljava/lang/String;
    .registers 3

    .line 2028
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2029
    iget-object p0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mImei:Ljava/lang/String;

    return-object p0

    .line 2031
    :cond_9
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mContext:Landroid/content/Context;

    const-string v1, "carrier_config"

    .line 2032
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    .line 2033
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v0

    const-string v1, "force_imei_bool"

    .line 2034
    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 2035
    iget-object p0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mImei:Ljava/lang/String;

    return-object p0

    .line 2037
    :cond_26
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getMeid()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_36

    .line 2038
    const-string v1, "^0*$"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_35

    goto :goto_36

    :cond_35
    return-object v0

    .line 2039
    :cond_36
    :goto_36
    const-string v0, "getDeviceId(): MEID is not initialized use ESN"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->loge(Ljava/lang/String;)V

    .line 2040
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getEsn()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getDeviceStateMonitor()Lcom/android/internal/telephony/DeviceStateMonitor;
    .registers 1

    .line 801
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mDeviceStateMonitor:Lcom/android/internal/telephony/DeviceStateMonitor;

    return-object p0
.end method

.method public blacklist getDeviceSvn()Ljava/lang/String;
    .registers 2

    .line 2048
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-nez v0, :cond_15

    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeCdmaLte()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_15

    .line 2051
    :cond_d
    const-string v0, "getDeviceSvn(): return 0"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->loge(Ljava/lang/String;)V

    .line 2052
    const-string p0, "0"

    return-object p0

    .line 2049
    :cond_15
    :goto_15
    iget-object p0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mImeiSv:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getDisplayInfoController()Lcom/android/internal/telephony/DisplayInfoController;
    .registers 1

    .line 806
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mDisplayInfoController:Lcom/android/internal/telephony/DisplayInfoController;

    return-object p0
.end method

.method public blacklist getDtmfToneDelayKey()Ljava/lang/String;
    .registers 1

    .line 5124
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result p0

    if-eqz p0, :cond_9

    .line 5125
    const-string p0, "gsm_dtmf_tone_delay_int"

    return-object p0

    .line 5126
    :cond_9
    const-string p0, "cdma_dtmf_tone_delay_int"

    return-object p0
.end method

.method public blacklist getEmergencyNumberDbVersion()I
    .registers 1

    .line 2185
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getEmergencyNumberTracker()Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;

    move-result-object p0

    if-nez p0, :cond_8

    const/4 p0, -0x1

    return p0

    .line 2187
    :cond_8
    invoke-virtual {p0}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->getEmergencyNumberDbVersion()I

    move-result p0

    return p0
.end method

.method public blacklist getEmergencyNumberTracker()Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;
    .registers 1

    .line 785
    iget-object p0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mEmergencyNumberTracker:Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;

    return-object p0
.end method

.method public blacklist getEnhancedVoicePrivacy(Landroid/os/Message;)V
    .registers 3

    .line 1075
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1076
    const-string p1, "getEnhancedVoicePrivacy: not expected on GSM"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->loge(Ljava/lang/String;)V

    return-void

    .line 1078
    :cond_c
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {p0, p1}, Lcom/android/internal/telephony/CommandsInterface;->getPreferredVoicePrivacy(Landroid/os/Message;)V

    return-void
.end method

.method public blacklist getEquivalentHomePlmns()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 5268
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 5269
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz p0, :cond_2a

    .line 5270
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccRecords;->getEhplmns()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2a

    .line 5271
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccRecords;->getEhplmns()[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 5273
    :cond_1f
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeCdma()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 5274
    const-string v0, "EHPLMN is not available in CDMA"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->loge(Ljava/lang/String;)V

    .line 5276
    :cond_2a
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0
.end method

.method public greylist-max-r getEsn()Ljava/lang/String;
    .registers 2

    .line 2074
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2075
    const-string v0, "[GsmCdmaPhone] getEsn() is a CDMA method"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->loge(Ljava/lang/String;)V

    .line 2076
    const-string p0, "0"

    return-object p0

    .line 2078
    :cond_e
    iget-object p0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mEsn:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic blacklist getForegroundCall()Lcom/android/internal/telephony/Call;
    .registers 1

    .line 158
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getForegroundCall()Lcom/android/internal/telephony/GsmCdmaCall;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getForegroundCall()Lcom/android/internal/telephony/GsmCdmaCall;
    .registers 2

    .line 1109
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->hasCalling()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 p0, 0x0

    return-object p0

    .line 1110
    :cond_8
    iget-object p0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCT:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    iget-object p0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    return-object p0
.end method

.method public blacklist getFullIccSerialNumber()Ljava/lang/String;
    .registers 3

    .line 1023
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 1024
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v1

    if-nez v1, :cond_19

    if-nez v0, :cond_19

    .line 1026
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    iget p0, p0, Lcom/android/internal/telephony/Phone;->mPhoneId:I

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->getIccRecords(II)Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v0

    :cond_19
    if-eqz v0, :cond_20

    .line 1028
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getFullIccId()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_20
    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist getGroupIdLevel1()Ljava/lang/String;
    .registers 3

    .line 2236
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_17

    .line 2237
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz p0, :cond_16

    .line 2238
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccRecords;->getGid1()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_16
    return-object v1

    .line 2239
    :cond_17
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeCdma()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 2240
    const-string v0, "GID1 is not available in CDMA"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->loge(Ljava/lang/String;)V

    return-object v1

    .line 2243
    :cond_23
    iget-object p0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSimRecords:Lcom/android/internal/telephony/uicc/SIMRecords;

    if-eqz p0, :cond_2c

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccRecords;->getGid1()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2c
    const-string p0, ""

    return-object p0
.end method

.method public blacklist getGroupIdLevel2()Ljava/lang/String;
    .registers 3

    .line 2249
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_17

    .line 2250
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz p0, :cond_16

    .line 2251
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccRecords;->getGid2()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_16
    return-object v1

    .line 2252
    :cond_17
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeCdma()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 2253
    const-string v0, "GID2 is not available in CDMA"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->loge(Ljava/lang/String;)V

    return-object v1

    .line 2256
    :cond_23
    iget-object p0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSimRecords:Lcom/android/internal/telephony/uicc/SIMRecords;

    if-eqz p0, :cond_2c

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccRecords;->getGid2()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2c
    const-string p0, ""

    return-object p0
.end method

.method public blacklist getIccCard()Lcom/android/internal/telephony/IccCard;
    .registers 2

    .line 4734
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getUiccProfile()Lcom/android/internal/telephony/uicc/UiccProfile;

    move-result-object v0

    if-eqz v0, :cond_7

    return-object v0

    .line 4738
    :cond_7
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    iget p0, p0, Lcom/android/internal/telephony/Phone;->mPhoneId:I

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccSlotForPhone(I)Lcom/android/internal/telephony/uicc/UiccSlot;

    move-result-object p0

    if-eqz p0, :cond_20

    .line 4739
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccSlot;->isStateUnknown()Z

    move-result p0

    if-eqz p0, :cond_18

    goto :goto_20

    .line 4742
    :cond_18
    new-instance p0, Lcom/android/internal/telephony/IccCard;

    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/IccCard;-><init>(Lcom/android/internal/telephony/IccCardConstants$State;)V

    return-object p0

    .line 4740
    :cond_20
    :goto_20
    new-instance p0, Lcom/android/internal/telephony/IccCard;

    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/IccCard;-><init>(Lcom/android/internal/telephony/IccCardConstants$State;)V

    return-object p0
.end method

.method public blacklist getIccPhoneBookInterfaceManager()Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;
    .registers 1

    .line 4050
    iget-object p0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mIccPhoneBookIntManager:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    return-object p0
.end method

.method public blacklist getIccRecordsLoaded()Z
    .registers 1

    .line 4725
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getUiccProfile()Lcom/android/internal/telephony/uicc/UiccProfile;

    move-result-object p0

    if-eqz p0, :cond_e

    .line 4726
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->getIccRecordsLoaded()Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist getIccSerialNumber()Ljava/lang/String;
    .registers 3

    .line 1013
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 1014
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v1

    if-nez v1, :cond_19

    if-nez v0, :cond_19

    .line 1016
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    iget p0, p0, Lcom/android/internal/telephony/Phone;->mPhoneId:I

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->getIccRecords(II)Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v0

    :cond_19
    if-eqz v0, :cond_20

    .line 1018
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getIccId()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_20
    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist getIccSmsInterfaceManager()Lcom/android/internal/telephony/IccSmsInterfaceManager;
    .registers 1

    .line 4708
    iget-object p0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mIccSmsInterfaceManager:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    return-object p0
.end method

.method public blacklist getImei()Ljava/lang/String;
    .registers 1

    .line 2063
    iget-object p0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mImei:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getImeiType()I
    .registers 1

    .line 2068
    iget p0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mImeiType:I

    return p0
.end method

.method public blacklist getInboundSmsHandler(Z)Lcom/android/internal/telephony/InboundSmsHandler;
    .registers 2

    .line 5383
    iget-object p0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mIccSmsInterfaceManager:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->getInboundSmsHandler(Z)Lcom/android/internal/telephony/InboundSmsHandler;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getIsimRecords()Lcom/android/internal/telephony/uicc/IsimRecords;
    .registers 1

    .line 2058
    iget-object p0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mIsimUiccRecords:Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    return-object p0
.end method

.method public blacklist getLine1AlphaTag()Ljava/lang/String;
    .registers 3

    .line 2349
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_17

    .line 2350
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz p0, :cond_16

    .line 2351
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccRecords;->getMsisdnAlphaTag()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_16
    return-object v1

    .line 2353
    :cond_17
    const-string v0, "getLine1AlphaTag: not possible in CDMA"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->loge(Ljava/lang/String;)V

    return-object v1
.end method

.method public greylist-max-r getLine1Number()Ljava/lang/String;
    .registers 4

    .line 2263
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_17

    .line 2264
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz p0, :cond_16

    .line 2265
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccRecords;->getMsisdnNumber()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_16
    return-object v1

    .line 2267
    :cond_17
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mContext:Landroid/content/Context;

    const-string v2, "carrier_config"

    .line 2268
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    .line 2269
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v0

    const-string v2, "use_usim_bool"

    invoke-virtual {v0, v2}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 2272
    iget-object p0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSimRecords:Lcom/android/internal/telephony/uicc/SIMRecords;

    if-eqz p0, :cond_3a

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->getMsisdnNumber()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3a
    return-object v1

    .line 2274
    :cond_3b
    iget-object p0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getMdnNumber()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getLteOnCdmaMode()I
    .registers 1

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist getMNOCarrierId()I
    .registers 2

    .line 2154
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mCarrierResolver:Lcom/android/internal/telephony/CarrierResolver;

    if-eqz v0, :cond_9

    .line 2155
    invoke-virtual {v0}, Lcom/android/internal/telephony/CarrierResolver;->getMnoCarrierId()I

    move-result p0

    return p0

    :cond_9
    invoke-super {p0}, Lcom/android/internal/telephony/Phone;->getMNOCarrierId()I

    move-result p0

    return p0
.end method

.method public blacklist getManualNetworkSelectionPlmn()Ljava/lang/String;
    .registers 1

    .line 2311
    iget-object p0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mManualNetworkSelectionPlmn:Ljava/lang/String;

    if-nez p0, :cond_6

    const-string p0, ""

    :cond_6
    return-object p0
.end method

.method public blacklist getMeid()Ljava/lang/String;
    .registers 1

    .line 2084
    iget-object p0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mMeid:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getMsisdn()Ljava/lang/String;
    .registers 3

    .line 2336
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_17

    .line 2337
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz p0, :cond_16

    .line 2338
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccRecords;->getMsisdnNumber()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_16
    return-object v1

    .line 2339
    :cond_17
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeCdmaLte()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 2340
    iget-object p0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSimRecords:Lcom/android/internal/telephony/uicc/SIMRecords;

    if-eqz p0, :cond_26

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->getMsisdnNumber()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_26
    return-object v1

    .line 2342
    :cond_27
    const-string v0, "getMsisdn: not expected on CDMA"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->loge(Ljava/lang/String;)V

    return-object v1
.end method

.method public blacklist getMute()Z
    .registers 1

    .line 2984
    iget-object p0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCT:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->getMute()Z

    move-result p0

    return p0
.end method

.method public blacklist getNai()Ljava/lang/String;
    .registers 4

    .line 2089
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    iget p0, p0, Lcom/android/internal/telephony/Phone;->mPhoneId:I

    const/4 v1, 0x2

    invoke-virtual {v0, p0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->getIccRecords(II)Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object p0

    .line 2090
    const-string v0, "GsmCdmaPhone"

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 2091
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IccRecords is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_25
    if-eqz p0, :cond_2c

    .line 2093
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccRecords;->getNAI()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2c
    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist getOperatorNumeric()Ljava/lang/String;
    .registers 6

    .line 4861
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_17

    .line 4862
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz p0, :cond_b7

    .line 4864
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_b7

    .line 4868
    :cond_17
    iget v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCdmaSubscriptionSource:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_25

    .line 4869
    const-string v0, "ro.cdma.home.operator.numeric"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    move-object v0, v1

    goto :goto_6e

    :cond_25
    if-nez v0, :cond_6c

    .line 4871
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mUiccApplication:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v0, :cond_47

    .line 4873
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v0

    sget-object v2, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_RUIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-ne v0, v2, :cond_47

    .line 4874
    const-string v0, "Legacy RUIM app present"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 4875
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    goto :goto_49

    .line 4878
    :cond_47
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSimRecords:Lcom/android/internal/telephony/uicc/SIMRecords;

    :goto_49
    if-eqz v0, :cond_54

    .line 4880
    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSimRecords:Lcom/android/internal/telephony/uicc/SIMRecords;

    if-ne v0, v2, :cond_54

    .line 4881
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v2

    goto :goto_6e

    .line 4883
    :cond_54
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v0, :cond_6a

    .line 4884
    instance-of v2, v0, Lcom/android/internal/telephony/uicc/RuimRecords;

    if-eqz v2, :cond_6a

    .line 4885
    move-object v2, v0

    check-cast v2, Lcom/android/internal/telephony/uicc/RuimRecords;

    .line 4886
    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/RuimRecords;->getRUIMOperatorNumeric()Ljava/lang/String;

    move-result-object v2

    goto :goto_6e

    :cond_6a
    move-object v2, v1

    goto :goto_6e

    :cond_6c
    move-object v0, v1

    move-object v2, v0

    :goto_6e
    if-nez v2, :cond_98

    .line 4891
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getOperatorNumeric: Cannot retrieve operatorNumeric: mCdmaSubscriptionSource = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCdmaSubscriptionSource:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " mIccRecords = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_8e

    .line 4894
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getRecordsLoaded()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    :cond_8e
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4891
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->loge(Ljava/lang/String;)V

    .line 4897
    :cond_98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getOperatorNumeric: mCdmaSubscriptionSource = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCdmaSubscriptionSource:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " operatorNumeric = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    move-object v1, v2

    .line 4901
    :cond_b7
    :goto_b7
    invoke-static {v1}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getOtasp()I
    .registers 1

    .line 4520
    iget-object p0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getOtasp()I

    move-result p0

    return p0
.end method

.method public blacklist getOutgoingCallerIdDisplay(Landroid/os/Message;)V
    .registers 5

    .line 2747
    sget-object v0, Lcom/android/internal/telephony/gsm/SsData$RequestType;->SS_INTERROGATION:Lcom/android/internal/telephony/gsm/SsData$RequestType;

    sget-object v1, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_CLIR:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->isRequestBlockedByFDN(Lcom/android/internal/telephony/gsm/SsData$RequestType;Lcom/android/internal/telephony/gsm/SsData$ServiceType;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_19

    .line 2748
    new-instance p0, Lcom/android/internal/telephony/CommandException;

    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->FDN_CHECK_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    invoke-static {p1, v1, p0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 2750
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void

    .line 2754
    :cond_19
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    .line 2756
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->useSsOverIms(Landroid/os/Message;)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 2757
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/PhoneInternalInterface;->getOutgoingCallerIdDisplay(Landroid/os/Message;)V

    return-void

    .line 2761
    :cond_25
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-eqz v0, :cond_31

    .line 2762
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {p0, p1}, Lcom/android/internal/telephony/CommandsInterface;->getCLIR(Landroid/os/Message;)V

    return-void

    .line 2764
    :cond_31
    const-string v0, "getOutgoingCallerIdDisplay: not possible in CDMA"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->loge(Ljava/lang/String;)V

    .line 2765
    new-instance p0, Lcom/android/internal/telephony/CommandException;

    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->REQUEST_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    invoke-static {p1, v1, p0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 2767
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public blacklist getPendingMmiCodes()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/android/internal/telephony/MmiCode;",
            ">;"
        }
    .end annotation

    .line 837
    iget-object p0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mPendingMMIs:Ljava/util/ArrayList;

    return-object p0
.end method

.method public greylist-max-r getPhoneType()I
    .registers 1

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public blacklist getPlmn()Ljava/lang/String;
    .registers 3

    .line 2280
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_17

    .line 2281
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz p0, :cond_16

    .line 2282
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccRecords;->getPnnHomeName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_16
    return-object v1

    .line 2283
    :cond_17
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeCdma()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 2284
    const-string v0, "Plmn is not available in CDMA"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->loge(Ljava/lang/String;)V

    return-object v1

    .line 2287
    :cond_23
    iget-object p0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSimRecords:Lcom/android/internal/telephony/uicc/SIMRecords;

    if-eqz p0, :cond_2c

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccRecords;->getPnnHomeName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2c
    return-object v1
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

    .line 1909
    iget-object p0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getRadioPowerOffReasons()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getRingingCall()Lcom/android/internal/telephony/Call;
    .registers 3

    .line 1121
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->hasCalling()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 p0, 0x0

    return-object p0

    .line 1122
    :cond_8
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_1b

    .line 1130
    invoke-interface {v0}, Lcom/android/internal/telephony/PhoneInternalInterface;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->isRinging()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 1131
    invoke-interface {v0}, Lcom/android/internal/telephony/PhoneInternalInterface;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object p0

    return-object p0

    .line 1134
    :cond_1b
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCT:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isRinging()Z

    move-result v0

    if-nez v0, :cond_54

    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCT:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    .line 1135
    invoke-virtual {v0}, Lcom/android/internal/telephony/CallTracker;->getRingingHandoverConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    if-eqz v0, :cond_54

    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCT:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    .line 1136
    invoke-virtual {v0}, Lcom/android/internal/telephony/CallTracker;->getRingingHandoverConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    if-eqz v0, :cond_54

    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCT:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    .line 1137
    invoke-virtual {v0}, Lcom/android/internal/telephony/CallTracker;->getRingingHandoverConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isRinging()Z

    move-result v0

    if-eqz v0, :cond_54

    .line 1138
    iget-object p0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCT:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallTracker;->getRingingHandoverConnection()Lcom/android/internal/telephony/Connection;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object p0

    return-object p0

    .line 1140
    :cond_54
    iget-object p0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCT:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    iget-object p0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/GsmCdmaCall;

    return-object p0
.end method

.method public greylist-max-r getServiceState()Landroid/telephony/ServiceState;
    .registers 3

    .line 730
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/android/internal/telephony/ServiceStateTracker;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    goto :goto_e

    :cond_9
    new-instance v0, Landroid/telephony/ServiceState;

    invoke-direct {v0}, Landroid/telephony/ServiceState;-><init>()V

    .line 731
    :goto_e
    iget-object v1, p0, Lcom/android/internal/telephony/Phone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v1, :cond_17

    invoke-interface {v1}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    goto :goto_1c

    :cond_17
    new-instance v1, Landroid/telephony/ServiceState;

    invoke-direct {v1}, Landroid/telephony/ServiceState;-><init>()V

    .line 732
    :goto_1c
    iget p0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mTelecomVoiceServiceStateOverride:I

    invoke-static {v0, v1, p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->mergeVoiceServiceStates(Landroid/telephony/ServiceState;Landroid/telephony/ServiceState;I)Landroid/telephony/ServiceState;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;
    .registers 1

    .line 780
    iget-object p0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    return-object p0
.end method

.method public blacklist getSignalStrengthController()Lcom/android/internal/telephony/SignalStrengthController;
    .registers 1

    .line 811
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mSignalStrengthController:Lcom/android/internal/telephony/SignalStrengthController;

    return-object p0
.end method

.method public blacklist getSmsDispatchersController()Lcom/android/internal/telephony/SmsDispatchersController;
    .registers 1

    .line 5500
    iget-object p0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mIccSmsInterfaceManager:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-object p0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mDispatchersController:Lcom/android/internal/telephony/SmsDispatchersController;

    return-object p0
.end method

.method public blacklist getSpecificCarrierId()I
    .registers 2

    .line 2160
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mCarrierResolver:Lcom/android/internal/telephony/CarrierResolver;

    if-eqz v0, :cond_9

    .line 2161
    invoke-virtual {v0}, Lcom/android/internal/telephony/CarrierResolver;->getSpecificCarrierId()I

    move-result p0

    return p0

    :cond_9
    invoke-super {p0}, Lcom/android/internal/telephony/Phone;->getSpecificCarrierId()I

    move-result p0

    return p0
.end method

.method public blacklist getSpecificCarrierName()Ljava/lang/String;
    .registers 2

    .line 2166
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mCarrierResolver:Lcom/android/internal/telephony/CarrierResolver;

    if-eqz v0, :cond_9

    .line 2167
    invoke-virtual {v0}, Lcom/android/internal/telephony/CarrierResolver;->getSpecificCarrierName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_9
    invoke-super {p0}, Lcom/android/internal/telephony/Phone;->getSpecificCarrierName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public greylist-max-r getState()Lcom/android/internal/telephony/PhoneConstants$State;
    .registers 3

    .line 755
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->hasCalling()Z

    move-result v0

    if-nez v0, :cond_9

    sget-object p0, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    return-object p0

    .line 757
    :cond_9
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_16

    .line 758
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    .line 759
    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v0, v1, :cond_16

    return-object v0

    .line 764
    :cond_16
    iget-object p0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCT:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    iget-object p0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    return-object p0
.end method

.method public blacklist getSubscriberId()Ljava/lang/String;
    .registers 3

    .line 2100
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeCdma()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 2101
    iget-object p0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getImsi()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2104
    :cond_d
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    iget p0, p0, Lcom/android/internal/telephony/Phone;->mPhoneId:I

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->getIccRecords(II)Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object p0

    if-eqz p0, :cond_1d

    .line 2107
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccRecords;->getIMSI()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1d
    const/4 p0, 0x0

    return-object p0
.end method

.method public greylist-max-r getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 2409
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getUnitTestMode()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x0

    return-object p0

    .line 2412
    :cond_8
    iget p0, p0, Lcom/android/internal/telephony/Phone;->mPhoneId:I

    invoke-static {p0, p1, p2}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getTerminalBasedCallWaitingState(Z)I
    .registers 2

    .line 2926
    iget-object p0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCallWaitingController:Lcom/android/internal/telephony/CallWaitingController;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/CallWaitingController;->getTerminalBasedCallWaitingState(Z)I

    move-result p0

    return p0
.end method

.method public blacklist getUiccCardApplication()Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .registers 3

    .line 3861
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 3862
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    iget p0, p0, Lcom/android/internal/telephony/Phone;->mPhoneId:I

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCardApplication(II)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object p0

    return-object p0

    .line 3864
    :cond_10
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    iget p0, p0, Lcom/android/internal/telephony/Phone;->mPhoneId:I

    const/4 v1, 0x2

    invoke-virtual {v0, p0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCardApplication(II)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getVoiceMailAlphaTag()Ljava/lang/String;
    .registers 3

    .line 2012
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    const-string v1, ""

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSimRecords:Lcom/android/internal/telephony/uicc/SIMRecords;

    if-eqz v0, :cond_23

    .line 2013
    :cond_c
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    goto :goto_1d

    :cond_1b
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSimRecords:Lcom/android/internal/telephony/uicc/SIMRecords;

    :goto_1d
    if-eqz v0, :cond_23

    .line 2015
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getVoiceMailAlphaTag()Ljava/lang/String;

    move-result-object v1

    :cond_23
    if-eqz v1, :cond_2d

    .line 2018
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2c

    goto :goto_2d

    :cond_2c
    return-object v1

    .line 2019
    :cond_2d
    :goto_2d
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mContext:Landroid/content/Context;

    const v0, 0x1040004

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    .line 2020
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getVoiceMailNumber()Ljava/lang/String;
    .registers 7

    .line 1930
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    const-string v1, "vm_number_key_cdma"

    const/4 v2, 0x0

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSimRecords:Lcom/android/internal/telephony/uicc/SIMRecords;

    if-eqz v0, :cond_e

    goto :goto_11

    :cond_e
    move-object v0, v2

    goto/16 :goto_93

    .line 1932
    :cond_11
    :goto_11
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    goto :goto_22

    :cond_20
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSimRecords:Lcom/android/internal/telephony/uicc/SIMRecords;

    :goto_22
    if-eqz v0, :cond_29

    .line 1933
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v0

    goto :goto_2b

    :cond_29
    const-string v0, ""

    .line 1934
    :goto_2b
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7b

    .line 1935
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1936
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v3

    if-eqz v3, :cond_42

    const-string v3, "vm_number_key"

    goto :goto_43

    :cond_42
    move-object v3, v1

    .line 1937
    :goto_43
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1938
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getVoiceMailNumber: from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " number="

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1939
    invoke-static {v0}, Lcom/android/telephony/Rlog;->piiHandle(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1938
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    goto :goto_93

    .line 1941
    :cond_7b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getVoiceMailNumber: from IccRecords number="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/android/telephony/Rlog;->piiHandle(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 1944
    :goto_93
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v3

    if-nez v3, :cond_d6

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_d6

    .line 1945
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1946
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1947
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getVoiceMailNumber: from VM_NUMBER_CDMA number="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/android/telephony/Rlog;->piiHandle(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 1950
    :cond_d6
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "carrier_config"

    if-eqz v1, :cond_15c

    .line 1952
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/CarrierConfigManager;

    .line 1953
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v1

    if-eqz v1, :cond_15c

    .line 1955
    const-string v3, "default_vm_number_string"

    .line 1956
    invoke-virtual {v1, v3}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1957
    const-string v4, "default_vm_number_roaming_string"

    .line 1958
    invoke-virtual {v1, v4}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1959
    const-string v5, "default_vm_number_roaming_and_ims_unregistered_string"

    invoke-virtual {v1, v5}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1963
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_10b

    move-object v0, v3

    .line 1964
    :cond_10b
    iget-object v3, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    iget-object v3, v3, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v3

    if-eqz v3, :cond_15c

    .line 1965
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_13d

    iget-object v3, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    .line 1966
    invoke-virtual {v3}, Lcom/android/internal/telephony/ServiceStateTracker;->isImsRegistered()Z

    move-result v3

    if-nez v3, :cond_13d

    .line 1969
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getVoiceMailNumber: from defaultVmNumberRoamingAndImsUnregistered number="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1970
    invoke-static {v1}, Lcom/android/telephony/Rlog;->piiHandle(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1969
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_15c

    .line 1971
    :cond_13d
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_15c

    .line 1974
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getVoiceMailNumber: from defaultVmNumberRoaming number="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1975
    invoke-static {v4}, Lcom/android/telephony/Rlog;->piiHandle(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1974
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    move-object v0, v4

    .line 1981
    :cond_15c
    :goto_15c
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_19a

    .line 1984
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/CarrierConfigManager;

    .line 1985
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v1

    if-eqz v1, :cond_19a

    .line 1986
    const-string v2, "config_telephony_use_own_number_for_voicemail_bool"

    invoke-virtual {v1, v2}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_19a

    .line 1988
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    .line 1989
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getVoiceMailNumber: from MSISDN number="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/android/telephony/Rlog;->piiHandle(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    :cond_19a
    return-object v0
.end method

.method public blacklist getWakeLock()Landroid/os/PowerManager$WakeLock;
    .registers 1

    .line 5131
    iget-object p0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object p0
.end method

.method public blacklist handleIdentifierDisclosureNotificationPreferenceChange()V
    .registers 4

    .line 5428
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getIdentifierDisclosureNotificationsPreferenceEnabled()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 5434
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mIdentifierDisclosureNotifier:Lcom/android/internal/telephony/security/CellularIdentifierDisclosureNotifier;

    iget-object v2, p0, Lcom/android/internal/telephony/Phone;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/security/CellularIdentifierDisclosureNotifier;->enable(Landroid/content/Context;)V

    goto :goto_15

    .line 5436
    :cond_e
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mIdentifierDisclosureNotifier:Lcom/android/internal/telephony/security/CellularIdentifierDisclosureNotifier;

    iget-object v2, p0, Lcom/android/internal/telephony/Phone;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/security/CellularIdentifierDisclosureNotifier;->disable(Landroid/content/Context;)V

    .line 5439
    :goto_15
    iget-object v1, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0x49

    .line 5440
    invoke-virtual {p0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    .line 5439
    invoke-interface {v1, v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->setCellularIdentifierTransparencyEnabled(ZLandroid/os/Message;)V

    return-void
.end method

.method public greylist-max-r handleInCallMmiCommands(Ljava/lang/String;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .line 1338
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_d

    .line 1339
    const-string p1, "method handleInCallMmiCommands is NOT supported in CDMA!"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->loge(Ljava/lang/String;)V

    return v1

    .line 1343
    :cond_d
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_20

    .line 1345
    invoke-interface {v0}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    if-nez v2, :cond_20

    .line 1346
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/PhoneInternalInterface;->handleInCallMmiCommands(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 1349
    :cond_20
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isInCall()Z

    move-result v0

    if-nez v0, :cond_27

    return v1

    .line 1353
    :cond_27
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2e

    return v1

    .line 1358
    :cond_2e
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    packed-switch v0, :pswitch_data_54

    return v1

    .line 1376
    :pswitch_36
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->handleCcbsIncallSupplementaryService(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 1373
    :pswitch_3b
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->handleEctIncallSupplementaryService(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 1370
    :pswitch_40
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->handleMultipartyIncallSupplementaryService(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 1367
    :pswitch_45
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->handleCallHoldIncallSupplementaryService(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 1364
    :pswitch_4a
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->handleCallWaitingIncallSupplementaryService(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 1361
    :pswitch_4f
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->handleCallDeflectionIncallSupplementaryService(Ljava/lang/String;)Z

    move-result p0

    return p0

    :pswitch_data_54
    .packed-switch 0x30
        :pswitch_4f
        :pswitch_4a
        :pswitch_45
        :pswitch_40
        :pswitch_3b
        :pswitch_36
    .end packed-switch
.end method

.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 9

    .line 3260
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "GsmCdmaPhone"

    packed-switch v0, :pswitch_data_718

    .line 3811
    :pswitch_b
    invoke-super {p0, p1}, Lcom/android/internal/telephony/Phone;->handleMessage(Landroid/os/Message;)V

    return-void

    .line 3805
    :pswitch_f
    const-string v0, "EVENT_SET_SECURITY_ALGORITHMS_UPDATED_ENABLED_DONE"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 3806
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 3807
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->doesResultIndicateModemSupport(Landroid/os/AsyncResult;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mIsNullCipherNotificationSupported:Z

    return-void

    .line 3787
    :pswitch_1f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EVENT_SECURITY_ALGORITHM_UPDATE phoneId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 3789
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 3790
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Landroid/telephony/SecurityAlgorithmUpdate;

    .line 3792
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mNullCipherNotifier:Lcom/android/internal/telephony/security/NullCipherNotifier;

    if-eqz v0, :cond_50

    .line 3793
    iget-object v1, p0, Lcom/android/internal/telephony/Phone;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    .line 3794
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v3

    .line 3793
    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/android/internal/telephony/security/NullCipherNotifier;->onSecurityAlgorithmUpdate(Landroid/content/Context;IILandroid/telephony/SecurityAlgorithmUpdate;)V

    .line 3796
    :cond_50
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mNullCipherNotifier:Lcom/android/internal/telephony/security/NullCipherNotifier;

    if-eqz v0, :cond_713

    .line 3798
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EVENT_SECURITY_ALGORITHM_UPDATE for non-Safety Center listeners phoneId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3799
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3798
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 3800
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-interface {v0, p0, p1}, Lcom/android/internal/telephony/PhoneNotifier;->notifySecurityAlgorithmsChanged(Lcom/android/internal/telephony/Phone;Landroid/telephony/SecurityAlgorithmUpdate;)V

    return-void

    .line 3781
    :pswitch_72
    const-string v0, "EVENT_SET_IDENTIFIER_DISCLOSURE_ENABLED_DONE"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 3782
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 3783
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->doesResultIndicateModemSupport(Landroid/os/AsyncResult;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mIsIdentifierDisclosureTransparencySupported:Z

    return-void

    .line 3755
    :pswitch_82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EVENT_CELL_IDENTIFIER_DISCLOSURE phoneId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 3757
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    if-eqz p1, :cond_de

    .line 3758
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v0, :cond_de

    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_a9

    goto :goto_de

    .line 3766
    :cond_a9
    check-cast v0, Landroid/telephony/CellularIdentifierDisclosure;

    .line 3767
    iget-object p1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mIdentifierDisclosureNotifier:Lcom/android/internal/telephony/security/CellularIdentifierDisclosureNotifier;

    if-eqz p1, :cond_ba

    if-eqz v0, :cond_ba

    .line 3769
    iget-object v1, p0, Lcom/android/internal/telephony/Phone;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v2

    invoke-virtual {p1, v1, v2, v0}, Lcom/android/internal/telephony/security/CellularIdentifierDisclosureNotifier;->addDisclosure(Landroid/content/Context;ILandroid/telephony/CellularIdentifierDisclosure;)V

    .line 3771
    :cond_ba
    iget-object p1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mIdentifierDisclosureNotifier:Lcom/android/internal/telephony/security/CellularIdentifierDisclosureNotifier;

    if-eqz p1, :cond_713

    if-eqz v0, :cond_713

    .line 3774
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EVENT_CELL_IDENTIFIER_DISCLOSURE for non-Safety Center listeners phoneId = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3775
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3774
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 3776
    iget-object p1, p0, Lcom/android/internal/telephony/Phone;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-interface {p1, p0, v0}, Lcom/android/internal/telephony/PhoneNotifier;->notifyCellularIdentifierDisclosedChanged(Lcom/android/internal/telephony/Phone;Landroid/telephony/CellularIdentifierDisclosure;)V

    return-void

    .line 3759
    :cond_de
    :goto_de
    const-string p0, "Failed to process cellular identifier disclosure"

    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v5, p0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    .line 3750
    :pswitch_e6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EVENT_GET_DEVICE_IMEI_CHANGE_DONE phoneId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 3751
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->parseImeiInfo(Landroid/os/Message;)V

    return-void

    .line 3734
    :pswitch_102
    const-string v0, "EVENT_SET_N1_MODE_ENABLED_DONE"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 3735
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    if-eqz p1, :cond_111

    .line 3736
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_11a

    .line 3737
    :cond_111
    const-string v0, "Failed to Set N1 Mode"

    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v5, v0, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3739
    iput-object v4, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mModemN1Mode:Ljava/lang/Boolean;

    :cond_11a
    if-eqz p1, :cond_713

    .line 3741
    iget-object p0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v0, p0, Landroid/os/Message;

    if-eqz v0, :cond_713

    .line 3743
    check-cast p0, Landroid/os/Message;

    .line 3744
    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {p0, v4, p1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 3745
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void

    .line 3715
    :pswitch_12d
    const-string v0, "EVENT_GET_N1_MODE_ENABLED_DONE"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 3716
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    if-eqz p1, :cond_151

    .line 3717
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_151

    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v0, :cond_151

    instance-of v1, v0, Ljava/lang/Boolean;

    if-nez v1, :cond_145

    goto :goto_151

    .line 3729
    :cond_145
    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mModemN1Mode:Ljava/lang/Boolean;

    .line 3730
    iget-object p1, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast p1, Landroid/os/Message;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->maybeUpdateModemN1Mode(Landroid/os/Message;)V

    return-void

    .line 3719
    :cond_151
    :goto_151
    iget-object p0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    const-string v0, "Failed to Retrieve N1 Mode"

    invoke-static {v5, v0, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3720
    iget-object p0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v0, p0, Landroid/os/Message;

    if-eqz v0, :cond_713

    .line 3722
    check-cast p0, Landroid/os/Message;

    .line 3723
    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {p0, v4, p1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 3724
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void

    .line 3704
    :pswitch_169
    const-string v0, "EVENT_TRIGGER_NOTIFY_ANBR"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 3705
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 3706
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_713

    .line 3707
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    if-eqz p0, :cond_713

    .line 3708
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, [I

    aget v0, v0, v3

    move-object v3, p1

    check-cast v3, [I

    aget v2, v3, v2

    check-cast p1, [I

    aget p1, p1, v1

    invoke-virtual {p0, v0, v2, p1}, Lcom/android/internal/telephony/Phone;->triggerNotifyAnbr(III)V

    return-void

    .line 3266
    :pswitch_18e
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->parseImeiInfo(Landroid/os/Message;)V

    return-void

    .line 3688
    :pswitch_192
    const-string v0, "EVENT_SET_NULL_CIPHER_AND_INTEGRITY_DONE"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 3689
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 3690
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->doesResultIndicateModemSupport(Landroid/os/AsyncResult;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mIsNullCipherAndIntegritySupported:Z

    return-void

    .line 3694
    :pswitch_1a2
    const-string v0, "EVENT_IMS_DEREGISTRATION_TRIGGERED"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 3695
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 3696
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_1bb

    .line 3697
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, [I

    aget p1, p1, v3

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Phone;->triggerImsDeregistration(I)V

    return-void

    .line 3699
    :cond_1bb
    const-string p0, "Unexpected unsol with exception"

    invoke-static {v5, p0, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    .line 3683
    :pswitch_1c1
    const-string p1, "EVENT_SUBSCRIPTIONS_CHANGED"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 3684
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->updateUsageSetting()Z

    .line 3685
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->updateNullCipherNotifier()V

    return-void

    .line 3680
    :pswitch_1cd
    const-string p1, "EVENT_SET_VONR_ENABLED_DONE is done"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    return-void

    .line 3676
    :pswitch_1d3
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->resetCarrierKeysForImsiEncryption()V

    return-void

    .line 3357
    :pswitch_1d7
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 3358
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_1e9

    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz p1, :cond_1e9

    .line 3359
    check-cast p1, Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->updateLinkCapacityEstimate(Ljava/util/List;)V

    return-void

    .line 3361
    :cond_1e9
    const-string p1, "Unexpected exception on EVENT_LINK_CAPACITY_CHANGED"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    return-void

    .line 3501
    :pswitch_1ef
    const-string v0, "Event BarringInfoChanged Received"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 3502
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 3503
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Landroid/telephony/BarringInfo;

    .line 3504
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-interface {v0, p0, p1}, Lcom/android/internal/telephony/PhoneNotifier;->notifyBarringInfoChanged(Lcom/android/internal/telephony/Phone;Landroid/telephony/BarringInfo;)V

    return-void

    .line 3493
    :pswitch_202
    const-string v0, "Event RegistrationFailed Received"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 3494
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 3495
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/RegistrationFailedEvent;

    .line 3496
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    iget-object v2, p1, Lcom/android/internal/telephony/RegistrationFailedEvent;->cellIdentity:Landroid/telephony/CellIdentity;

    iget-object v3, p1, Lcom/android/internal/telephony/RegistrationFailedEvent;->chosenPlmn:Ljava/lang/String;

    iget v4, p1, Lcom/android/internal/telephony/RegistrationFailedEvent;->domain:I

    iget v5, p1, Lcom/android/internal/telephony/RegistrationFailedEvent;->causeCode:I

    iget v6, p1, Lcom/android/internal/telephony/RegistrationFailedEvent;->additionalCauseCode:I

    move-object v1, p0

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/telephony/PhoneNotifier;->notifyRegistrationFailed(Lcom/android/internal/telephony/Phone;Landroid/telephony/CellIdentity;Ljava/lang/String;III)V

    return-void

    .line 3657
    :pswitch_220
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    if-eqz p1, :cond_713

    .line 3658
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_22c

    goto/16 :goto_713

    .line 3659
    :cond_22c
    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Landroid/util/Pair;

    if-nez v0, :cond_234

    goto/16 :goto_713

    .line 3661
    :cond_234
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 3662
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 3663
    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast p1, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {p1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object p1

    .line 3664
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error received when re-applying uicc application setting to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " on phone "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/Phone;->mPhoneId:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " Error code: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " retry count left: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->loge(Ljava/lang/String;)V

    if-lez v0, :cond_713

    .line 3667
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    if-eq p1, v1, :cond_284

    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->SIM_BUSY:Lcom/android/internal/telephony/CommandException$Error;

    if-ne p1, v1, :cond_713

    .line 3670
    :cond_284
    new-instance p1, Lcom/android/internal/telephony/GsmCdmaPhone$$ExternalSyntheticLambda5;

    invoke-direct {p1, p0, v0}, Lcom/android/internal/telephony/GsmCdmaPhone$$ExternalSyntheticLambda5;-><init>(Lcom/android/internal/telephony/GsmCdmaPhone;I)V

    const-wide/16 v0, 0x1388

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 3643
    :pswitch_28f
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    if-nez v0, :cond_297

    goto/16 :goto_713

    .line 3645
    :cond_297
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_2bc

    .line 3646
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received exception on event"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " : "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    return-void

    .line 3650
    :cond_2bc
    iget-object p1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mUiccApplicationsEnabled:Ljava/lang/Boolean;

    .line 3653
    :pswitch_2c2
    sget p1, Lcom/android/internal/telephony/GsmCdmaPhone;->ENABLE_UICC_APPS_MAX_RETRIES:I

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->reapplyUiccAppsEnablementIfNeeded(I)V

    return-void

    .line 3614
    :pswitch_2c8
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 3615
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_322

    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v0, :cond_322

    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    if-eqz v1, :cond_322

    .line 3616
    check-cast v0, Ljava/util/List;

    .line 3617
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3618
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2e3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_320

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/OperatorInfo;

    .line 3619
    sget-object v3, Lcom/android/internal/telephony/OperatorInfo$State;->CURRENT:Lcom/android/internal/telephony/OperatorInfo$State;

    invoke-virtual {v2}, Lcom/android/internal/telephony/OperatorInfo;->getState()Lcom/android/internal/telephony/OperatorInfo$State;

    move-result-object v4

    if-ne v3, v4, :cond_31c

    .line 3620
    new-instance v3, Lcom/android/internal/telephony/OperatorInfo;

    iget-object v4, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    .line 3622
    invoke-virtual {v2}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v5

    .line 3621
    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/ServiceStateTracker;->filterOperatorNameByPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    .line 3624
    invoke-virtual {v2}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaShort()Ljava/lang/String;

    move-result-object v6

    .line 3623
    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/ServiceStateTracker;->filterOperatorNameByPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 3625
    invoke-virtual {v2}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v6

    .line 3626
    invoke-virtual {v2}, Lcom/android/internal/telephony/OperatorInfo;->getState()Lcom/android/internal/telephony/OperatorInfo$State;

    move-result-object v2

    invoke-direct {v3, v4, v5, v6, v2}, Lcom/android/internal/telephony/OperatorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/OperatorInfo$State;)V

    .line 3620
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2e3

    .line 3629
    :cond_31c
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2e3

    .line 3632
    :cond_320
    iput-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .line 3635
    :cond_322
    iget-object p0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast p0, Landroid/os/Message;

    if-eqz p0, :cond_713

    .line 3637
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {p0, v0, p1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 3638
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void

    .line 3607
    :pswitch_333
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 3608
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 3609
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getDataSettingsManager()Lcom/android/internal/telephony/data/DataSettingsManager;

    move-result-object v0

    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mContext:Landroid/content/Context;

    .line 3611
    invoke-virtual {p0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object p0

    .line 3609
    invoke-virtual {v0, v1, p1, p0}, Lcom/android/internal/telephony/data/DataSettingsManager;->setDataEnabled(IZLjava/lang/String;)V

    return-void

    .line 3478
    :pswitch_34d
    const-string p1, "EVENT EVENT_RADIO_STATE_CHANGED"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 3479
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->handleRadioPowerStateChange()V

    return-void

    .line 3601
    :pswitch_356
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 3602
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Landroid/util/Pair;

    .line 3603
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->onVoiceRegStateOrRatChanged(II)V

    return-void

    .line 3300
    :pswitch_372
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Event EVENT_MODEM_RESET Received isInEcm = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->isInEcm()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " isPhoneTypeGsm = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3301
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mImsPhone = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/Phone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3300
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 3302
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->isInEcm()Z

    move-result v0

    if-eqz v0, :cond_713

    .line 3303
    invoke-static {}, Lcom/android/internal/telephony/domainselection/DomainSelectionResolver;->getInstance()Lcom/android/internal/telephony/domainselection/DomainSelectionResolver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/domainselection/DomainSelectionResolver;->isDomainSelectionSupported()Z

    move-result v0

    if-eqz v0, :cond_3b8

    .line 3304
    invoke-static {}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->getInstance()Lcom/android/internal/telephony/emergency/EmergencyStateTracker;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->exitEmergencyCallbackMode()V

    return-void

    .line 3306
    :cond_3b8
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-eqz v0, :cond_3c6

    .line 3307
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    if-eqz p0, :cond_713

    .line 3308
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->handleExitEmergencyCallbackMode()V

    return-void

    .line 3311
    :cond_3c6
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->handleExitEmergencyCallbackMode(Landroid/os/Message;)V

    return-void

    .line 3399
    :pswitch_3ca
    const-string p1, "cdma_roaming_mode change is done"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    return-void

    .line 3372
    :pswitch_3d0
    iget-object p1, p0, Lcom/android/internal/telephony/Phone;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x1110278

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    if-nez p1, :cond_3ea

    .line 3375
    iget-object p1, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v0, 0x28

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/android/internal/telephony/CommandsInterface;->getVoiceRadioTechnology(Landroid/os/Message;)V

    .line 3379
    :cond_3ea
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "carrier_config"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/CarrierConfigManager;

    .line 3380
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object p1

    if-eqz p1, :cond_419

    .line 3382
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->updateBroadcastEmergencyCallStateChangesAfterCarrierConfigChanged(Landroid/os/PersistableBundle;)V

    .line 3383
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->updateCdmaRoamingSettingsAfterCarrierConfigChanged(Landroid/os/PersistableBundle;)V

    .line 3384
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->hasCalling()Z

    move-result v0

    if-eqz v0, :cond_412

    .line 3385
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->updateNrSettingsAfterCarrierConfigChanged(Landroid/os/PersistableBundle;)V

    .line 3386
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->updateVoNrSettings(Landroid/os/PersistableBundle;)V

    .line 3388
    :cond_412
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->updateSsOverCdmaSupported(Landroid/os/PersistableBundle;)V

    .line 3389
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->updateCarrierN1ModeSupported(Landroid/os/PersistableBundle;)V

    goto :goto_431

    .line 3391
    :cond_419
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to retrieve a carrier config bundle for subId="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->loge(Ljava/lang/String;)V

    .line 3393
    :goto_431
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->loadAllowedNetworksFromSubscriptionDatabase()V

    .line 3395
    iget-object p1, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v0, 0x23

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/android/internal/telephony/CommandsInterface;->getRadioCapability(Landroid/os/Message;)V

    return-void

    .line 3366
    :pswitch_440
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->phoneObjectUpdater(I)V

    return-void

    .line 3329
    :pswitch_446
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 3330
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_45b

    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz p1, :cond_45b

    .line 3331
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mRilVersion:I

    return-void

    .line 3333
    :cond_45b
    const-string p1, "Unexpected exception on EVENT_RIL_CONNECTED"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    const/4 p1, -0x1

    .line 3334
    iput p1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mRilVersion:I

    return-void

    :pswitch_464
    const/16 v1, 0x27

    if-ne v0, v1, :cond_46b

    .line 3341
    const-string v0, "EVENT_VOICE_RADIO_TECH_CHANGED"

    goto :goto_46d

    :cond_46b
    const-string v0, "EVENT_REQUEST_VOICE_RADIO_TECH_DONE"

    .line 3342
    :goto_46d
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 3343
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_4b3

    .line 3344
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz p1, :cond_49e

    move-object v1, p1

    check-cast v1, [I

    array-length v1, v1

    if-eqz v1, :cond_49e

    .line 3345
    check-cast p1, [I

    aget p1, p1, v3

    .line 3346
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": newVoiceTech="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 3347
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->phoneObjectUpdater(I)V

    return-void

    .line 3349
    :cond_49e
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": has no tech!"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->loge(Ljava/lang/String;)V

    return-void

    .line 3352
    :cond_4b3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": exception="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->loge(Ljava/lang/String;)V

    return-void

    .line 3578
    :pswitch_4cd
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 3579
    const-string v0, "Event EVENT_SS received"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 3580
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-eqz v0, :cond_713

    .line 3584
    new-instance v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;

    iget-object v1, p0, Lcom/android/internal/telephony/Phone;->mUiccApplication:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/gsm/GsmMmiCode;-><init>(Lcom/android/internal/telephony/GsmCdmaPhone;Lcom/android/internal/telephony/uicc/UiccCardApplication;)V

    .line 3585
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->processSsData(Landroid/os/AsyncResult;)V

    return-void

    .line 3590
    :pswitch_4ed
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 3591
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/RadioCapability;

    .line 3592
    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz p1, :cond_4ff

    .line 3593
    const-string p0, "get phone radio capability fail, no need to change mRadioCapability"

    invoke-static {v5, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_502

    .line 3596
    :cond_4ff
    invoke-virtual {p0, v0, v3}, Lcom/android/internal/telephony/Phone;->radioCapabilityUpdated(Lcom/android/internal/telephony/RadioCapability;Z)V

    .line 3598
    :goto_502
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "EVENT_GET_RADIO_CAPABILITY: phone rc: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3561
    :pswitch_517
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 3562
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->processIccRecordEvents(I)V

    return-void

    .line 3550
    :pswitch_527
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 3551
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getIsManualSelection()Z

    move-result v0

    if-eqz v0, :cond_542

    .line 3552
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Landroid/os/Message;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Phone;->setNetworkSelectionModeAutomatic(Landroid/os/Message;)V

    .line 3553
    const-string p1, "SET_NETWORK_SELECTION_AUTOMATIC: set to automatic"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    return-void

    .line 3556
    :cond_542
    const-string p1, "SET_NETWORK_SELECTION_AUTOMATIC: already automatic, ignore"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    return-void

    .line 3403
    :pswitch_548
    const-string p1, "EVENT_CDMA_SUBSCRIPTION_SOURCE_CHANGED"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 3404
    iget-object p1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->getCdmaSubscriptionSource()I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCdmaSubscriptionSource:I

    return-void

    .line 3295
    :pswitch_556
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->handleExitEmergencyCallbackMode(Landroid/os/Message;)V

    return-void

    .line 3290
    :pswitch_55a
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->handleEnterEmergencyCallbackMode(Landroid/os/Message;)V

    return-void

    .line 3319
    :pswitch_55e
    const-string p1, "Event EVENT_RUIM_RECORDS_LOADED Received"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 3320
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->updateCurrentCarrierInProvider()Z

    return-void

    .line 3269
    :pswitch_567
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 3271
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_571

    goto/16 :goto_713

    .line 3274
    :cond_571
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, [Ljava/lang/String;

    .line 3275
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mImei:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_585

    .line 3276
    aget-object v0, p1, v3

    iput-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mImei:Ljava/lang/String;

    .line 3277
    aget-object v0, p1, v2

    iput-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mImeiSv:Ljava/lang/String;

    .line 3279
    :cond_585
    aget-object v0, p1, v1

    iput-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mEsn:Ljava/lang/String;

    const/4 v0, 0x3

    .line 3280
    aget-object p1, p1, v0

    iput-object p1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mMeid:Ljava/lang/String;

    .line 3282
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_713

    iget-object p1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mMeid:Ljava/lang/String;

    const-string v0, "^0*$"

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_713

    .line 3283
    const-string p1, "EVENT_GET_DEVICE_IDENTITY_DONE: set mMeid to null"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 3284
    iput-object v4, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mMeid:Ljava/lang/String;

    return-void

    .line 3520
    :pswitch_5a6
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 3521
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-nez v0, :cond_5b4

    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSimRecords:Lcom/android/internal/telephony/uicc/SIMRecords;

    if-eqz v0, :cond_5be

    :cond_5b4
    const-class v0, Lcom/android/internal/telephony/uicc/IccVmNotSupportedException;

    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 3522
    invoke-virtual {v0, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5d2

    .line 3523
    :cond_5be
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-nez v0, :cond_5d9

    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSimRecords:Lcom/android/internal/telephony/uicc/SIMRecords;

    if-nez v0, :cond_5d9

    const-class v0, Lcom/android/internal/telephony/uicc/IccException;

    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 3524
    invoke-virtual {v0, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5d9

    .line 3525
    :cond_5d2
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mVmNumber:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->storeVoiceMailNumber(Ljava/lang/String;)V

    .line 3526
    iput-object v4, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 3528
    :cond_5d9
    iget-object p0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast p0, Landroid/os/Message;

    if-eqz p0, :cond_713

    .line 3530
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {p0, v0, p1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 3531
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void

    .line 3408
    :pswitch_5ea
    const-string p1, "Event EVENT_REGISTERED_TO_NETWORK Received"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 3409
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result p1

    if-eqz p1, :cond_713

    .line 3410
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->syncClirSetting()V

    return-void

    .line 3566
    :pswitch_5f9
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 3567
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_606

    .line 3568
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Phone;->saveClirSetting(I)V

    .line 3570
    :cond_606
    iget-object p0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast p0, Landroid/os/Message;

    if-eqz p0, :cond_713

    .line 3572
    iget-object p1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {p0, p1, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 3573
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void

    .line 3537
    :pswitch_617
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 3538
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_626

    .line 3539
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [Lcom/android/internal/telephony/CallForwardInfo;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->handleCfuQueryResult([Lcom/android/internal/telephony/CallForwardInfo;)V

    .line 3541
    :cond_626
    iget-object p0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast p0, Landroid/os/Message;

    if-eqz p0, :cond_713

    .line 3543
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {p0, v0, p1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 3544
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void

    .line 3508
    :pswitch_637
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 3509
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/GsmCdmaPhone$Cfu;

    .line 3510
    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_64d

    .line 3511
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-ne p1, v2, :cond_648

    move v3, v2

    :cond_648
    iget-object p1, v1, Lcom/android/internal/telephony/GsmCdmaPhone$Cfu;->mSetCfNumber:Ljava/lang/String;

    invoke-virtual {p0, v2, v3, p1}, Lcom/android/internal/telephony/Phone;->setVoiceCallForwardingFlag(IZLjava/lang/String;)V

    .line 3513
    :cond_64d
    iget-object p0, v1, Lcom/android/internal/telephony/GsmCdmaPhone$Cfu;->mOnComplete:Landroid/os/Message;

    if-eqz p0, :cond_713

    .line 3514
    iget-object p1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {p0, p1, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 3515
    iget-object p0, v1, Lcom/android/internal/telephony/GsmCdmaPhone$Cfu;->mOnComplete:Landroid/os/Message;

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void

    .line 3472
    :pswitch_65e
    const-string p1, "Event EVENT_RADIO_OFF_OR_NOT_AVAILABLE Received"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 3473
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->handleRadioOffOrNotAvailable()V

    return-void

    .line 3458
    :pswitch_667
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 3460
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, [Ljava/lang/String;

    .line 3462
    array-length v0, p1

    if-le v0, v2, :cond_713

    .line 3464
    :try_start_672
    aget-object v0, p1, v3

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    aget-object p1, p1, v2

    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->onIncomingUSSD(ILjava/lang/String;)V
    :try_end_67d
    .catch Ljava/lang/NumberFormatException; {:try_start_672 .. :try_end_67d} :catch_67e

    return-void

    .line 3466
    :catch_67e
    const-string p0, "error parsing USSD"

    invoke-static {v5, p0}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_713

    .line 3433
    :pswitch_685
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 3435
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_68f

    goto/16 :goto_713

    .line 3439
    :cond_68f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Baseband version: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 3447
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_713

    .line 3449
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 3451
    iget-object v1, p0, Lcom/android/internal/telephony/Phone;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p0

    const/16 v2, 0x2d

    if-gt v0, v2, :cond_6be

    goto :goto_6c4

    :cond_6be
    add-int/lit8 v2, v0, -0x2d

    .line 3453
    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 3451
    :goto_6c4
    invoke-virtual {v1, p0, p1}, Landroid/telephony/TelephonyManager;->setBasebandVersionForPhone(ILjava/lang/String;)V

    return-void

    .line 3324
    :pswitch_6c8
    const-string p1, "Event EVENT_RADIO_ON Received"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 3325
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->handleRadioOn()V

    return-void

    .line 3415
    :pswitch_6d1
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->updateCurrentCarrierInProvider()Z

    .line 3419
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getVmSimImsi()Ljava/lang/String;

    move-result-object p1

    .line 3420
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    .line 3421
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v1

    if-eqz v1, :cond_6e4

    if-eqz p1, :cond_6f2

    :cond_6e4
    if-eqz v0, :cond_6f2

    .line 3422
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6f2

    .line 3423
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/GsmCdmaPhone;->storeVoiceMailNumber(Ljava/lang/String;)V

    .line 3424
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/GsmCdmaPhone;->setVmSimImsi(Ljava/lang/String;)V

    .line 3427
    :cond_6f2
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->updateVoiceMail()V

    .line 3429
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mSimRecordsLoadedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants()V

    return-void

    .line 3484
    :pswitch_6fb
    const-string v0, "Event EVENT_SSN Received"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 3485
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-eqz v0, :cond_713

    .line 3486
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 3487
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/gsm/SuppServiceNotification;

    .line 3488
    iget-object p0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSsnRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    :cond_713
    :goto_713
    return-void

    .line 3262
    :pswitch_714
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->handleRadioAvailable()V

    return-void

    :pswitch_data_718
    .packed-switch 0x1
        :pswitch_714
        :pswitch_6fb
        :pswitch_6d1
        :pswitch_b
        :pswitch_6c8
        :pswitch_685
        :pswitch_667
        :pswitch_65e
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_637
        :pswitch_617
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_5f9
        :pswitch_5ea
        :pswitch_5a6
        :pswitch_567
        :pswitch_55e
        :pswitch_b
        :pswitch_b
        :pswitch_55a
        :pswitch_556
        :pswitch_548
        :pswitch_527
        :pswitch_517
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_4ed
        :pswitch_4cd
        :pswitch_b
        :pswitch_b
        :pswitch_464
        :pswitch_464
        :pswitch_446
        :pswitch_440
        :pswitch_3d0
        :pswitch_3ca
        :pswitch_372
        :pswitch_356
        :pswitch_34d
        :pswitch_333
        :pswitch_b
        :pswitch_b
        :pswitch_2c8
        :pswitch_b
        :pswitch_28f
        :pswitch_2c2
        :pswitch_28f
        :pswitch_220
        :pswitch_202
        :pswitch_1ef
        :pswitch_1d7
        :pswitch_1d3
        :pswitch_1cd
        :pswitch_1c1
        :pswitch_b
        :pswitch_b
        :pswitch_1a2
        :pswitch_192
        :pswitch_18e
        :pswitch_169
        :pswitch_12d
        :pswitch_102
        :pswitch_e6
        :pswitch_82
        :pswitch_72
        :pswitch_1f
        :pswitch_f
    .end packed-switch
.end method

.method public blacklist handleNullCipherEnabledChange()V
    .registers 4

    .line 5416
    const-string v0, "enable_null_cipher_toggle"

    const/4 v1, 0x1

    const-string v2, "cellular_security"

    invoke-static {v2, v0, v1}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_11

    .line 5418
    const-string v0, "Not handling null cipher update. Feature disabled by DeviceConfig."

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->logi(Ljava/lang/String;)V

    return-void

    .line 5421
    :cond_11
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 5422
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getNullCipherAndIntegrityEnabledPreference()Z

    move-result v1

    const/16 v2, 0x42

    .line 5423
    invoke-virtual {p0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    .line 5421
    invoke-interface {v0, v1, p0}, Lcom/android/internal/telephony/CommandsInterface;->setNullCipherAndIntegrityEnabled(ZLandroid/os/Message;)V

    return-void
.end method

.method public blacklist handleNullCipherNotificationPreferenceChanged()V
    .registers 4

    .line 5445
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getNullCipherNotificationsPreferenceEnabled()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 5450
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mNullCipherNotifier:Lcom/android/internal/telephony/security/NullCipherNotifier;

    iget-object v2, p0, Lcom/android/internal/telephony/Phone;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/security/NullCipherNotifier;->enable(Landroid/content/Context;)V

    goto :goto_15

    .line 5452
    :cond_e
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mNullCipherNotifier:Lcom/android/internal/telephony/security/NullCipherNotifier;

    iget-object v2, p0, Lcom/android/internal/telephony/Phone;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/security/NullCipherNotifier;->disable(Landroid/content/Context;)V

    .line 5455
    :goto_15
    iget-object v1, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0x4b

    .line 5456
    invoke-virtual {p0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    .line 5455
    invoke-interface {v1, v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->setSecurityAlgorithmsUpdatedEnabled(ZLandroid/os/Message;)V

    return-void
.end method

.method public blacklist handlePinMmi(Ljava/lang/String;)Z
    .registers 4

    .line 1743
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1744
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mUiccApplication:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-static {p1, p0, v0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->newFromDialString(Ljava/lang/String;Lcom/android/internal/telephony/GsmCdmaPhone;Lcom/android/internal/telephony/uicc/UiccCardApplication;)Lcom/android/internal/telephony/gsm/GsmMmiCode;

    move-result-object p1

    goto :goto_1f

    .line 1746
    :cond_13
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mUiccApplication:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-static {p1, p0, v0}, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->newFromDialString(Ljava/lang/String;Lcom/android/internal/telephony/GsmCdmaPhone;Lcom/android/internal/telephony/uicc/UiccCardApplication;)Lcom/android/internal/telephony/cdma/CdmaMmiCode;

    move-result-object p1

    :goto_1f
    if-eqz p1, :cond_3c

    .line 1749
    invoke-interface {p1}, Lcom/android/internal/telephony/MmiCode;->isPinPukCommand()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 1750
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mPendingMMIs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1751
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mMmiRegistrants:Lcom/android/internal/telephony/RegistrantList;

    new-instance v0, Landroid/os/AsyncResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 1753
    :try_start_37
    invoke-interface {p1}, Lcom/android/internal/telephony/MmiCode;->processCode()V
    :try_end_3a
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_37 .. :try_end_3a} :catch_3a

    :catch_3a
    const/4 p0, 0x1

    return p0

    .line 1760
    :cond_3c
    const-string p1, "Mmi is null or unrecognized!"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->loge(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public blacklist handleTimerInEmergencyCallbackMode(I)V
    .registers 4

    .line 4303
    invoke-static {}, Lcom/android/internal/telephony/domainselection/DomainSelectionResolver;->getInstance()Lcom/android/internal/telephony/domainselection/DomainSelectionResolver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/domainselection/DomainSelectionResolver;->isDomainSelectionSupported()Z

    move-result v0

    if-eqz v0, :cond_b

    return-void

    :cond_b
    if-eqz p1, :cond_37

    const/4 v0, 0x1

    if-eq p1, v0, :cond_27

    .line 4318
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "handleTimerInEmergencyCallbackMode, unsupported action "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "GsmCdmaPhone"

    invoke-static {p1, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 4306
    :cond_27
    iget-object p1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mExitEcmRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4307
    iget-object p1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mEcmTimerResetRegistrants:Lcom/android/internal/telephony/RegistrantList;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 4308
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/Phone;->setEcmCanceledForEmergency(Z)V

    return-void

    .line 4311
    :cond_37
    invoke-static {}, Landroid/internal/telephony/sysprop/TelephonyProperties;->ecm_exit_timer()Ljava/util/Optional;

    move-result-object p1

    const-wide/32 v0, 0x493e0

    .line 4312
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 4313
    iget-object p1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mExitEcmRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 4314
    iget-object p1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mEcmTimerResetRegistrants:Lcom/android/internal/telephony/RegistrantList;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 4315
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Phone;->setEcmCanceledForEmergency(Z)V

    return-void
.end method

.method public blacklist handleUssdRequest(Ljava/lang/String;Landroid/os/ResultReceiver;)Z
    .registers 8

    .line 1774
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_77

    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mPendingMMIs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_12

    goto :goto_77

    .line 1782
    :cond_12
    iget v0, p0, Lcom/android/internal/telephony/Phone;->mPhoneId:I

    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getCountryIso()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, p1, v4}, Lcom/android/internal/telephony/FdnUtils;->isNumberBlockedByFDN(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 1783
    invoke-direct {p0, p1, v2, v1, p2}, Lcom/android/internal/telephony/GsmCdmaPhone;->sendUssdResponse(Ljava/lang/String;Ljava/lang/CharSequence;ILandroid/os/ResultReceiver;)V

    return v3

    .line 1789
    :cond_22
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    const/4 v1, 0x0

    if-eqz v0, :cond_54

    .line 1791
    invoke-interface {v0}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    if-eqz v2, :cond_37

    .line 1792
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isUtEnabled()Z

    move-result v2

    if-eqz v2, :cond_54

    .line 1794
    :cond_37
    :try_start_37
    const-string v2, "handleUssdRequest: attempting over IMS"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 1795
    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/PhoneInternalInterface;->handleUssdRequest(Ljava/lang/String;Landroid/os/ResultReceiver;)Z

    move-result p0
    :try_end_40
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_37 .. :try_end_40} :catch_41

    return p0

    :catch_41
    move-exception v0

    .line 1797
    const-string v2, "cs_fallback"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4f

    return v1

    .line 1802
    :cond_4f
    const-string v0, "handleUssdRequest: fallback to CS required"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 1808
    :cond_54
    :try_start_54
    new-instance v0, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs$Builder;

    invoke-direct {v0}, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs$Builder;->build()Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/internal/telephony/GsmCdmaPhone;->dialInternal(Ljava/lang/String;Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;Landroid/os/ResultReceiver;)Lcom/android/internal/telephony/Connection;
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_60} :catch_61

    return v3

    :catch_61
    move-exception p1

    .line 1810
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "handleUssdRequest: exception"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    return v1

    .line 1776
    :cond_77
    :goto_77
    invoke-direct {p0, p1, v2, v1, p2}, Lcom/android/internal/telephony/GsmCdmaPhone;->sendUssdResponse(Ljava/lang/String;Ljava/lang/CharSequence;ILandroid/os/ResultReceiver;)V

    return v3
.end method

.method public blacklist isCdmaSubscriptionAppPresent()Z
    .registers 3

    .line 4564
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    iget p0, p0, Lcom/android/internal/telephony/Phone;->mPhoneId:I

    const/4 v1, 0x2

    .line 4565
    invoke-virtual {v0, p0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCardApplication(II)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object p0

    if-eqz p0, :cond_1d

    .line 4566
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_CSIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-eq v0, v1, :cond_1b

    .line 4567
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object p0

    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_RUIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-ne p0, v0, :cond_1d

    :cond_1b
    const/4 p0, 0x1

    return p0

    :cond_1d
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist isCspPlmnEnabled()Z
    .registers 1

    .line 4101
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz p0, :cond_f

    .line 4102
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccRecords;->isCspPlmnEnabled()Z

    move-result p0

    return p0

    :cond_f
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist isDataSuspended()Z
    .registers 4

    .line 842
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCT:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 843
    :cond_6
    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v0, v2, :cond_16

    iget-object p0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->isConcurrentVoiceAndDataAllowed()Z

    move-result p0

    if-nez p0, :cond_16

    const/4 p0, 0x1

    return p0

    :cond_16
    return v1
.end method

.method public blacklist isIdentifierDisclosureTransparencySupported()Z
    .registers 1

    .line 5481
    iget-boolean p0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mIsIdentifierDisclosureTransparencySupported:Z

    return p0
.end method

.method public blacklist isImsUseEnabled()Z
    .registers 3

    .line 5373
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mImsManagerFactory:Lcom/android/internal/telephony/GsmCdmaPhone$ImsManagerFactory;

    iget-object v1, p0, Lcom/android/internal/telephony/Phone;->mContext:Landroid/content/Context;

    iget p0, p0, Lcom/android/internal/telephony/Phone;->mPhoneId:I

    invoke-interface {v0, v1, p0}, Lcom/android/internal/telephony/GsmCdmaPhone$ImsManagerFactory;->create(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object p0

    .line 5374
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->isVolteEnabledByPlatform()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 5375
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->isEnhanced4gLteModeSettingEnabledByUser()Z

    move-result v0

    if-nez v0, :cond_28

    .line 5376
    :cond_16
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->isWfcEnabledByPlatform()Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->isWfcEnabledByUser()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 5377
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->isNonTtyOrTtyOnVolteEnabled()Z

    move-result p0

    if-eqz p0, :cond_2a

    :cond_28
    const/4 p0, 0x1

    return p0

    :cond_2a
    const/4 p0, 0x0

    return p0
.end method

.method public greylist-max-r isInCall()Z
    .registers 4

    .line 1387
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->hasCalling()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 1389
    :cond_8
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getForegroundCall()Lcom/android/internal/telephony/GsmCdmaCall;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    .line 1390
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getBackgroundCall()Lcom/android/internal/telephony/GsmCdmaCall;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    .line 1391
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object p0

    .line 1393
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v0

    if-nez v0, :cond_34

    .line 1394
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v0

    if-nez v0, :cond_34

    .line 1395
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result p0

    if-eqz p0, :cond_33

    goto :goto_34

    :cond_33
    return v1

    :cond_34
    :goto_34
    const/4 p0, 0x1

    return p0
.end method

.method public blacklist isInEmergencyCall()Z
    .registers 2

    .line 890
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->hasCalling()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_14

    .line 893
    :cond_d
    iget-object p0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCT:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->isInEmergencyCall()Z

    move-result p0

    return p0

    :cond_14
    :goto_14
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist isInEmergencySmsMode()Z
    .registers 2

    .line 906
    invoke-super {p0}, Lcom/android/internal/telephony/Phone;->isInEmergencySmsMode()Z

    move-result v0

    if-nez v0, :cond_13

    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    if-eqz p0, :cond_11

    .line 907
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->isInEmergencySmsMode()Z

    move-result p0

    if-eqz p0, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x0

    return p0

    :cond_13
    :goto_13
    const/4 p0, 0x1

    return p0
.end method

.method public blacklist isMinInfoReady()Z
    .registers 1

    .line 2331
    iget-object p0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->isMinInfoReady()Z

    move-result p0

    return p0
.end method

.method public blacklist isNotificationOfWfcCallRequired(Ljava/lang/String;)Z
    .registers 6

    .line 1660
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mContext:Landroid/content/Context;

    const-string v1, "carrier_config"

    .line 1661
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    .line 1662
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4f

    .line 1667
    const-string v2, "notify_international_call_on_wfc_bool"

    .line 1668
    invoke-virtual {v0, v2}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 1675
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    .line 1676
    iget-object v2, p0, Lcom/android/internal/telephony/Phone;->mContext:Landroid/content/Context;

    const-class v3, Landroid/telephony/TelephonyManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 1677
    invoke-virtual {v2, p1}, Landroid/telephony/TelephonyManager;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v2

    .line 1680
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isImsUseEnabled()Z

    move-result v3

    if-eqz v3, :cond_4f

    if-eqz v0, :cond_4f

    .line 1683
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isVoiceOverCellularImsEnabled()Z

    move-result v3

    if-nez v3, :cond_4f

    .line 1685
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isWifiCallingEnabled()Z

    move-result v0

    if-eqz v0, :cond_4f

    if-nez v2, :cond_4f

    .line 1688
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getCountryIso()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/telephony/PhoneNumberUtils;->isInternationalNumber(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4f

    const/4 p0, 0x1

    return p0

    :cond_4f
    return v1
.end method

.method public blacklist isNullCipherAndIntegritySupported()Z
    .registers 1

    .line 5476
    iget-boolean p0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mIsNullCipherAndIntegritySupported:Z

    return p0
.end method

.method public blacklist isNullCipherNotificationSupported()Z
    .registers 1

    .line 5486
    iget-boolean p0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mIsNullCipherNotificationSupported:Z

    return p0
.end method

.method public blacklist isOtaSpNumber(Ljava/lang/String;)Z
    .registers 3

    .line 4502
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 4503
    invoke-super {p0, p1}, Lcom/android/internal/telephony/Phone;->isOtaSpNumber(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 4506
    :cond_b
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1c

    .line 4508
    invoke-static {p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->isIs683OtaSpDialStr(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1d

    .line 4510
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->isCarrierOtaSpNum(Ljava/lang/String;)Z

    move-result v0

    goto :goto_1d

    :cond_1c
    const/4 v0, 0x0

    .line 4513
    :cond_1d
    :goto_1d
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "isOtaSpNumber "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "GsmCdmaPhone"

    invoke-static {p1, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public blacklist isPhoneTypeCdma()Z
    .registers 2

    .line 671
    iget p0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mPrecisePhoneType:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_7

    const/4 p0, 0x1

    return p0

    :cond_7
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist isPhoneTypeCdmaLte()Z
    .registers 2

    .line 675
    iget p0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mPrecisePhoneType:I

    const/4 v0, 0x6

    if-ne p0, v0, :cond_7

    const/4 p0, 0x1

    return p0

    :cond_7
    const/4 p0, 0x0

    return p0
.end method

.method public greylist-max-r isPhoneTypeGsm()Z
    .registers 2

    .line 667
    iget p0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mPrecisePhoneType:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_6

    return v0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist isUserDataEnabled()Z
    .registers 2

    .line 3058
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getDataSettingsManager()Lcom/android/internal/telephony/data/DataSettingsManager;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/DataSettingsManager;->isDataEnabledForReason(I)Z

    move-result p0

    return p0
.end method

.method public blacklist isUtEnabled()Z
    .registers 2

    .line 5114
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_9

    .line 5116
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isUtEnabled()Z

    move-result p0

    return p0

    .line 5118
    :cond_9
    const-string v0, "isUtEnabled: called for GsmCdma"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public blacklist needsOtaServiceProvisioning()Z
    .registers 3

    .line 4092
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    .line 4095
    :cond_8
    iget-object p0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getOtasp()I

    move-result p0

    const/4 v0, 0x3

    if-eq p0, v0, :cond_13

    const/4 p0, 0x1

    return p0

    :cond_13
    return v1
.end method

.method public blacklist notifyCallForwardingIndicator()V
    .registers 2

    .line 965
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/PhoneNotifier;->notifyCallForwardingChanged(Lcom/android/internal/telephony/Phone;)V

    return-void
.end method

.method public blacklist notifyDisconnect(Lcom/android/internal/telephony/Connection;)V
    .registers 4

    .line 878
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mDisconnectRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 880
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getDisconnectCause()I

    move-result v1

    .line 881
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getPreciseDisconnectCause()I

    move-result p1

    .line 880
    invoke-interface {v0, p0, v1, p1}, Lcom/android/internal/telephony/PhoneNotifier;->notifyDisconnectCause(Lcom/android/internal/telephony/Phone;II)V

    return-void
.end method

.method public blacklist notifyEcbmTimerReset(Ljava/lang/Boolean;)V
    .registers 2

    .line 4918
    iget-object p0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mEcmTimerResetRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    return-void
.end method

.method public blacklist notifyEmergencyCallRegistrants(Z)V
    .registers 2

    .line 4293
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mEmergencyCallToggledRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    return-void
.end method

.method public blacklist notifyEmergencyDomainSelected(I)V
    .registers 4

    .line 5037
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyEmergencyDomainSelected transportType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 5038
    iget-object p0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mEmergencyDomainSelectedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    new-instance v0, Landroid/os/AsyncResult;

    .line 5039
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 5038
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    return-void
.end method

.method public blacklist notifyLocationChanged(Landroid/telephony/CellIdentity;)V
    .registers 3

    .line 960
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-interface {v0, p0, p1}, Lcom/android/internal/telephony/PhoneNotifier;->notifyCellLocation(Lcom/android/internal/telephony/Phone;Landroid/telephony/CellIdentity;)V

    return-void
.end method

.method public blacklist notifyNewRingingConnection(Lcom/android/internal/telephony/Connection;)V
    .registers 2

    .line 874
    invoke-super {p0, p1}, Lcom/android/internal/telephony/Phone;->notifyNewRingingConnectionP(Lcom/android/internal/telephony/Connection;)V

    return-void
.end method

.method public blacklist notifyPhoneStateChanged()V
    .registers 2

    .line 856
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/PhoneNotifier;->notifyPhoneState(Lcom/android/internal/telephony/Phone;)V

    return-void
.end method

.method public greylist-max-r notifyPreciseCallStateChanged()V
    .registers 4

    .line 867
    new-instance v0, Landroid/os/AsyncResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 868
    iget-object v2, p0, Lcom/android/internal/telephony/Phone;->mPreciseCallStateRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 870
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-interface {v0, p0, v1, v1, v1}, Lcom/android/internal/telephony/PhoneNotifier;->notifyPreciseCallState(Lcom/android/internal/telephony/Phone;[Ljava/lang/String;[I[I)V

    return-void
.end method

.method public greylist-max-r notifyServiceStateChanged(Landroid/telephony/ServiceState;)V
    .registers 2

    .line 947
    invoke-super {p0, p1}, Lcom/android/internal/telephony/Phone;->notifyServiceStateChangedP(Landroid/telephony/ServiceState;)V

    return-void
.end method

.method blacklist notifyServiceStateChangedForSubId(Landroid/telephony/ServiceState;I)V
    .registers 3

    .line 951
    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/Phone;->notifyServiceStateChangedPForSubId(Landroid/telephony/ServiceState;I)V

    return-void
.end method

.method public blacklist notifySuppServiceFailed(Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;)V
    .registers 2

    .line 942
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mSuppServiceFailedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    return-void
.end method

.method public blacklist notifyUnknownConnection(Lcom/android/internal/telephony/Connection;)V
    .registers 2

    .line 885
    invoke-super {p0, p1}, Lcom/android/internal/telephony/Phone;->notifyUnknownConnectionP(Lcom/android/internal/telephony/Connection;)V

    return-void
.end method

.method public blacklist notifyVolteSilentRedial(Ljava/lang/String;I)V
    .registers 6

    .line 5015
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyVolteSilentRedial: dialString="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " causeCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 5016
    new-instance v0, Landroid/os/AsyncResult;

    new-instance v1, Lcom/android/internal/telephony/Phone$SilentRedialParam;

    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mDialArgs:Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;

    invoke-direct {v1, p1, p2, v2}, Lcom/android/internal/telephony/Phone$SilentRedialParam;-><init>(Ljava/lang/String;ILcom/android/internal/telephony/PhoneInternalInterface$DialArgs;)V

    const/4 p1, 0x0

    invoke-direct {v0, p1, v1, p1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 5018
    iget-object p0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mVolteSilentRedialRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    return-void
.end method

.method public blacklist onMMIDone(Lcom/android/internal/telephony/MmiCode;)V
    .registers 6

    .line 3073
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mPendingMMIs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "GsmCdmaPhone"

    if-nez v0, :cond_35

    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-interface {p1}, Lcom/android/internal/telephony/MmiCode;->isUssdRequest()Z

    move-result v0

    if-nez v0, :cond_35

    move-object v0, p1

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;

    .line 3074
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isSsInfo()Z

    move-result v0

    if-eqz v0, :cond_20

    goto :goto_35

    .line 3087
    :cond_20
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onMMIDone: invalid response or already handled; ignoring: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3075
    :cond_35
    :goto_35
    invoke-interface {p1}, Lcom/android/internal/telephony/MmiCode;->getUssdCallbackReceiver()Landroid/os/ResultReceiver;

    move-result-object v0

    if-eqz v0, :cond_67

    .line 3077
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onMMIDone: invoking callback: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3078
    invoke-interface {p1}, Lcom/android/internal/telephony/MmiCode;->getState()Lcom/android/internal/telephony/MmiCode$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    if-ne v1, v2, :cond_5a

    const/16 v1, 0x64

    goto :goto_5b

    :cond_5a
    const/4 v1, -0x1

    .line 3080
    :goto_5b
    invoke-interface {p1}, Lcom/android/internal/telephony/MmiCode;->getDialString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lcom/android/internal/telephony/MmiCode;->getMessage()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-direct {p0, v2, p1, v1, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->sendUssdResponse(Ljava/lang/String;Ljava/lang/CharSequence;ILandroid/os/ResultReceiver;)V

    return-void

    .line 3083
    :cond_67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMMIDone: notifying registrants: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3084
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mMmiCompleteRegistrants:Lcom/android/internal/telephony/RegistrantList;

    new-instance v0, Landroid/os/AsyncResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    return-void
.end method

.method protected blacklist onSetNetworkSelectionModeCompleted()V
    .registers 1

    .line 2316
    iget-object p0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->pollState()V

    return-void
.end method

.method protected blacklist onUpdateIccAvailability()V
    .registers 6

    .line 3873
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    if-nez v0, :cond_5

    return-void

    .line 3880
    :cond_5
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-nez v0, :cond_13

    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeCdmaLte()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 3881
    :cond_13
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    iget v3, p0, Lcom/android/internal/telephony/Phone;->mPhoneId:I

    .line 3882
    invoke-virtual {v0, v3, v1}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCardApplication(II)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v0

    if-eqz v0, :cond_29

    .line 3886
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    .line 3887
    const-string v3, "New ISIM application found"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    goto :goto_2a

    :cond_29
    move-object v0, v2

    .line 3889
    :goto_2a
    iput-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mIsimUiccRecords:Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    .line 3893
    :cond_2c
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSimRecords:Lcom/android/internal/telephony/uicc/SIMRecords;

    if-eqz v0, :cond_33

    .line 3894
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/IccRecords;->unregisterForRecordsLoaded(Landroid/os/Handler;)V

    .line 3896
    :cond_33
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeCdmaLte()Z

    move-result v0

    const/4 v3, 0x1

    if-nez v0, :cond_44

    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeCdma()Z

    move-result v0

    if-eqz v0, :cond_41

    goto :goto_44

    .line 3908
    :cond_41
    iput-object v2, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSimRecords:Lcom/android/internal/telephony/uicc/SIMRecords;

    goto :goto_5d

    .line 3897
    :cond_44
    :goto_44
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    iget v4, p0, Lcom/android/internal/telephony/Phone;->mPhoneId:I

    invoke-virtual {v0, v4, v3}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCardApplication(II)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v0

    if-eqz v0, :cond_55

    .line 3901
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/SIMRecords;

    goto :goto_56

    :cond_55
    move-object v0, v2

    .line 3903
    :goto_56
    iput-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSimRecords:Lcom/android/internal/telephony/uicc/SIMRecords;

    if-eqz v0, :cond_5d

    .line 3905
    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/uicc/IccRecords;->registerForRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3912
    :cond_5d
    :goto_5d
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getUiccCardApplication()Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v0

    .line 3913
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v1

    if-nez v1, :cond_76

    if-nez v0, :cond_76

    .line 3914
    const-string v0, "can\'t find 3GPP2 application; trying APP_FAM_3GPP"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 3915
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    iget v1, p0, Lcom/android/internal/telephony/Phone;->mPhoneId:I

    invoke-virtual {v0, v1, v3}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCardApplication(II)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v0

    .line 3919
    :cond_76
    iget-object v1, p0, Lcom/android/internal/telephony/Phone;->mUiccApplication:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eq v1, v0, :cond_ff

    if-eqz v1, :cond_a1

    .line 3922
    const-string v1, "Removing stale icc objects."

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 3923
    iget-object v1, p0, Lcom/android/internal/telephony/Phone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_97

    .line 3924
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->unregisterForIccRecordEvents()V

    .line 3925
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mIccPhoneBookIntManager:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->updateIccRecords(Lcom/android/internal/telephony/uicc/IccRecords;)V

    .line 3927
    :cond_97
    iget-object v1, p0, Lcom/android/internal/telephony/Phone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 3928
    iget-object v1, p0, Lcom/android/internal/telephony/Phone;->mUiccApplication:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    :cond_a1
    if-eqz v0, :cond_ff

    .line 3932
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "New Uicc application found. type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 3934
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v1

    .line 3935
    iget-object v2, p0, Lcom/android/internal/telephony/Phone;->mUiccApplication:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 3936
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 3937
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->registerForIccRecordEvents()V

    .line 3938
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mIccPhoneBookIntManager:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->updateIccRecords(Lcom/android/internal/telephony/uicc/IccRecords;)V

    if-eqz v1, :cond_fc

    .line 3940
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/IccRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    .line 3942
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "New simOperatorNumeric = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 3944
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_fc

    .line 3945
    iget-object v1, p0, Lcom/android/internal/telephony/Phone;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/Phone;->mPhoneId:I

    invoke-virtual {v1, v2, v0}, Landroid/telephony/TelephonyManager;->setSimOperatorNumericForPhone(ILjava/lang/String;)V

    .line 3949
    :cond_fc
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->updateCurrentCarrierInProvider()Z

    .line 3953
    :cond_ff
    sget v0, Lcom/android/internal/telephony/GsmCdmaPhone;->ENABLE_UICC_APPS_MAX_RETRIES:I

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->reapplyUiccAppsEnablementIfNeeded(I)V

    return-void
.end method

.method protected blacklist phoneObjectUpdater(I)V
    .registers 4

    .line 4571
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "phoneObjectUpdater: newVoiceRadioTech="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 4573
    const-string p1, "phoneObjectUpdater: no-op as CDMA cleanup flag is set"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist queryCLIP(Landroid/os/Message;)V
    .registers 5

    .line 2805
    sget-object v0, Lcom/android/internal/telephony/gsm/SsData$RequestType;->SS_INTERROGATION:Lcom/android/internal/telephony/gsm/SsData$RequestType;

    sget-object v1, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_CLIP:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->isRequestBlockedByFDN(Lcom/android/internal/telephony/gsm/SsData$RequestType;Lcom/android/internal/telephony/gsm/SsData$ServiceType;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_19

    .line 2806
    new-instance p0, Lcom/android/internal/telephony/CommandException;

    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->FDN_CHECK_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    invoke-static {p1, v1, p0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 2808
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void

    .line 2812
    :cond_19
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    .line 2813
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->useSsOverIms(Landroid/os/Message;)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 2814
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/Phone;->queryCLIP(Landroid/os/Message;)V

    return-void

    .line 2818
    :cond_25
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-eqz v0, :cond_31

    .line 2819
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {p0, p1}, Lcom/android/internal/telephony/CommandsInterface;->queryCLIP(Landroid/os/Message;)V

    return-void

    .line 2821
    :cond_31
    const-string v0, "queryCLIP: not possible in CDMA"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->loge(Ljava/lang/String;)V

    .line 2822
    new-instance p0, Lcom/android/internal/telephony/CommandException;

    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->REQUEST_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    invoke-static {p1, v1, p0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 2824
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public blacklist refreshSafetySources(Ljava/lang/String;)V
    .registers 3

    .line 5491
    new-instance v0, Lcom/android/internal/telephony/GsmCdmaPhone$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone$$ExternalSyntheticLambda4;-><init>(Lcom/android/internal/telephony/GsmCdmaPhone;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public blacklist registerForCallWaiting(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4

    .line 3045
    iget-object p0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCT:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    if-eqz p0, :cond_7

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->registerForCallWaiting(Landroid/os/Handler;ILjava/lang/Object;)V

    :cond_7
    return-void
.end method

.method public blacklist registerForCdmaOtaStatusChange(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4

    .line 3014
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/internal/telephony/CommandsInterface;->registerForCdmaOtaProvision(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public blacklist registerForEcmTimerReset(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4

    .line 4996
    iget-object p0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mEcmTimerResetRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public blacklist registerForEmergencyDomainSelected(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4

    .line 5025
    iget-object p0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mEmergencyDomainSelectedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public blacklist registerForSimRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4

    .line 981
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mSimRecordsLoadedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public blacklist registerForSubscriptionInfoReady(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4

    .line 3024
    iget-object p0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForSubscriptionInfoReady(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public blacklist registerForSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4

    .line 971
    iget-object p0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSsnRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public blacklist registerForVolteSilentRedial(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4

    .line 5006
    iget-object p0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mVolteSilentRedialRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public blacklist rejectCall()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .line 1002
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->hasCalling()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1003
    iget-object p0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCT:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->rejectCall()V

    return-void

    .line 1002
    :cond_c
    new-instance p0, Lcom/android/internal/telephony/CallStateException;

    invoke-direct {p0}, Lcom/android/internal/telephony/CallStateException;-><init>()V

    throw p0
.end method

.method public blacklist resetCarrierKeysForImsiEncryption()V
    .registers 4

    .line 2192
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCIM:Lcom/android/internal/telephony/CarrierInfoManager;

    iget-object v1, p0, Lcom/android/internal/telephony/Phone;->mContext:Landroid/content/Context;

    iget p0, p0, Lcom/android/internal/telephony/Phone;->mPhoneId:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Lcom/android/internal/telephony/CarrierInfoManager;->resetCarrierKeysForImsiEncryption(Landroid/content/Context;IZ)V

    return-void
.end method

.method public blacklist resetCarrierKeysForImsiEncryption(Z)V
    .registers 4

    .line 2197
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCIM:Lcom/android/internal/telephony/CarrierInfoManager;

    iget-object v1, p0, Lcom/android/internal/telephony/Phone;->mContext:Landroid/content/Context;

    iget p0, p0, Lcom/android/internal/telephony/Phone;->mPhoneId:I

    invoke-virtual {v0, v1, p0, p1}, Lcom/android/internal/telephony/CarrierInfoManager;->resetCarrierKeysForImsiEncryption(Landroid/content/Context;IZ)V

    return-void
.end method

.method public blacklist resolveSubscriptionCarrierId(Ljava/lang/String;)V
    .registers 2

    .line 2172
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mCarrierResolver:Lcom/android/internal/telephony/CarrierResolver;

    if-eqz p0, :cond_7

    .line 2173
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/CarrierResolver;->resolveSubscriptionCarrierId(Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method public blacklist sendBurstDtmf(Ljava/lang/String;IILandroid/os/Message;)V
    .registers 9

    .line 1855
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1856
    const-string p1, "[GsmCdmaPhone] sendBurstDtmf() is a CDMA method"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->loge(Ljava/lang/String;)V

    return-void

    :cond_c
    const/4 v0, 0x0

    move v1, v0

    .line 1859
    :goto_e
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_41

    .line 1860
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->is12Key(C)Z

    move-result v2

    if-nez v2, :cond_3e

    .line 1861
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendDtmf called with invalid character \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1864
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1861
    const-string v2, "GsmCdmaPhone"

    invoke-static {v2, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_42

    :cond_3e
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_41
    const/4 v0, 0x1

    .line 1870
    :goto_42
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCT:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v1, v2, :cond_51

    if-eqz v0, :cond_51

    .line 1871
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/CommandsInterface;->sendBurstDtmf(Ljava/lang/String;IILandroid/os/Message;)V

    :cond_51
    return-void
.end method

.method public blacklist sendDtmf(C)V
    .registers 4

    .line 1830
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->is12Key(C)Z

    move-result v0

    if-nez v0, :cond_20

    .line 1831
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendDtmf called with invalid character \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->loge(Ljava/lang/String;)V

    return-void

    .line 1833
    :cond_20
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCT:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v0, v1, :cond_2e

    .line 1834
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Lcom/android/internal/telephony/CommandsInterface;->sendDtmf(CLandroid/os/Message;)V

    :cond_2e
    return-void
.end method

.method public blacklist sendEmergencyCallStateChange(Z)V
    .registers 4

    .line 922
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeCdma()Z

    move-result v0

    if-nez v0, :cond_c

    .line 924
    const-string p1, "sendEmergencyCallStateChange - skip for non-cdma"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->logi(Ljava/lang/String;)V

    return-void

    .line 927
    :cond_c
    iget-boolean v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mBroadcastEmergencyCallStateChanges:Z

    if-eqz v0, :cond_40

    .line 928
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.EMERGENCY_CALL_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 929
    const-string v1, "android.telephony.extra.PHONE_IN_EMERGENCY_CALL"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 930
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    invoke-static {v0, v1}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    .line 931
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mContext:Landroid/content/Context;

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 932
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "sendEmergencyCallStateChange: callActive "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "GsmCdmaPhone"

    invoke-static {p1, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_40
    return-void
.end method

.method public blacklist sendUssdResponse(Ljava/lang/String;)V
    .registers 5

    .line 1818
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 1819
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mUiccApplication:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-static {p1, p0, v0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->newFromUssdUserInput(Ljava/lang/String;Lcom/android/internal/telephony/GsmCdmaPhone;Lcom/android/internal/telephony/uicc/UiccCardApplication;)Lcom/android/internal/telephony/gsm/GsmMmiCode;

    move-result-object v0

    .line 1820
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mPendingMMIs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1821
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mMmiRegistrants:Lcom/android/internal/telephony/RegistrantList;

    new-instance v1, Landroid/os/AsyncResult;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v0, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 1822
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sendUssd(Ljava/lang/String;)V

    return-void

    .line 1824
    :cond_26
    const-string p1, "sendUssdResponse: not possible in CDMA"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->loge(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist setBroadcastEmergencyCallStateChanges(Z)V
    .registers 2

    .line 938
    iput-boolean p1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mBroadcastEmergencyCallStateChanges:Z

    return-void
.end method

.method public blacklist setCallBarring(Ljava/lang/String;ZLjava/lang/String;Landroid/os/Message;I)V
    .registers 13

    if-eqz p2, :cond_5

    .line 2692
    sget-object v0, Lcom/android/internal/telephony/gsm/SsData$RequestType;->SS_ACTIVATION:Lcom/android/internal/telephony/gsm/SsData$RequestType;

    goto :goto_7

    .line 2693
    :cond_5
    sget-object v0, Lcom/android/internal/telephony/gsm/SsData$RequestType;->SS_DEACTIVATION:Lcom/android/internal/telephony/gsm/SsData$RequestType;

    .line 2694
    :goto_7
    invoke-static {p1}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->cbFacilityToServiceType(Ljava/lang/String;)Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    move-result-object v1

    .line 2695
    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->isRequestBlockedByFDN(Lcom/android/internal/telephony/gsm/SsData$RequestType;Lcom/android/internal/telephony/gsm/SsData$ServiceType;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 2696
    new-instance p0, Lcom/android/internal/telephony/CommandException;

    sget-object p1, Lcom/android/internal/telephony/CommandException$Error;->FDN_CHECK_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    const/4 p1, 0x0

    invoke-static {p4, p1, p0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 2698
    invoke-virtual {p4}, Landroid/os/Message;->sendToTarget()V

    return-void

    .line 2702
    :cond_20
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    .line 2703
    invoke-virtual {p0, p4}, Lcom/android/internal/telephony/GsmCdmaPhone;->useSsOverIms(Landroid/os/Message;)Z

    move-result v1

    if-eqz v1, :cond_31

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    .line 2704
    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/PhoneInternalInterface;->setCallBarring(Ljava/lang/String;ZLjava/lang/String;Landroid/os/Message;I)V

    return-void

    :cond_31
    move v6, p5

    move-object p5, p4

    move p4, v6

    .line 2708
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-eqz v0, :cond_40

    .line 2709
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface/range {p0 .. p5}, Lcom/android/internal/telephony/CommandsInterface;->setFacilityLock(Ljava/lang/String;ZLjava/lang/String;ILandroid/os/Message;)V

    return-void

    .line 2711
    :cond_40
    const-string p1, "setCallBarringOption: not possible in CDMA"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->loge(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist setCallForwardingOption(IILjava/lang/String;IILandroid/os/Message;)V
    .registers 16

    .line 2604
    invoke-static {p1}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->cfActionToRequestType(I)Lcom/android/internal/telephony/gsm/SsData$RequestType;

    move-result-object v0

    .line 2605
    invoke-static {p2}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->cfReasonToServiceType(I)Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    move-result-object v1

    .line 2606
    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->isRequestBlockedByFDN(Lcom/android/internal/telephony/gsm/SsData$RequestType;Lcom/android/internal/telephony/gsm/SsData$ServiceType;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1d

    .line 2607
    new-instance p0, Lcom/android/internal/telephony/CommandException;

    sget-object p1, Lcom/android/internal/telephony/CommandException$Error;->FDN_CHECK_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    invoke-static {p6, v1, p0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 2609
    invoke-virtual {p6}, Landroid/os/Message;->sendToTarget()V

    return-void

    .line 2613
    :cond_1d
    iget-object v2, p0, Lcom/android/internal/telephony/Phone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    .line 2614
    invoke-virtual {p0, p6}, Lcom/android/internal/telephony/GsmCdmaPhone;->useSsOverIms(Landroid/os/Message;)Z

    move-result v0

    if-eqz v0, :cond_2f

    move v3, p1

    move v4, p2

    move-object v5, p3

    move v6, p4

    move v7, p5

    move-object v8, p6

    .line 2615
    invoke-interface/range {v2 .. v8}, Lcom/android/internal/telephony/PhoneInternalInterface;->setCallForwardingOption(IILjava/lang/String;IILandroid/os/Message;)V

    return-void

    :cond_2f
    move v8, p4

    move-object p4, p3

    move p3, v8

    move-object v8, p6

    .line 2620
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result p6

    if-eqz p6, :cond_5f

    .line 2621
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->isValidCommandInterfaceCFAction(I)Z

    move-result p6

    if-eqz p6, :cond_5e

    .line 2622
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/GsmCdmaPhone;->isValidCommandInterfaceCFReason(I)Z

    move-result p6

    if-eqz p6, :cond_5e

    if-nez p2, :cond_58

    .line 2626
    new-instance p6, Lcom/android/internal/telephony/GsmCdmaPhone$Cfu;

    invoke-direct {p6, p4, v8}, Lcom/android/internal/telephony/GsmCdmaPhone$Cfu;-><init>(Ljava/lang/String;Landroid/os/Message;)V

    .line 2628
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->isCfEnable(I)Z

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0xc

    .line 2627
    invoke-virtual {p0, v2, v0, v1, p6}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p6

    goto :goto_59

    :cond_58
    move-object p6, v8

    .line 2632
    :goto_59
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface/range {p0 .. p6}, Lcom/android/internal/telephony/CommandsInterface;->setCallForward(IIILjava/lang/String;ILandroid/os/Message;)V

    :cond_5e
    return-void

    .line 2639
    :cond_5f
    iget-boolean p3, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSsOverCdmaSupported:Z

    const/16 p5, 0xff

    if-eqz p3, :cond_b9

    .line 2640
    invoke-static {p4}, Lcom/android/internal/telephony/GsmCdmaConnection;->formatDialString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 2641
    invoke-static {p1, p2, p3}, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->getCallForwardingPrefixAndNumber(IILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2643
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "setCallForwardingOption: dial for set call forwarding prefixWithNumber= "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " number= "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/GsmCdmaPhone;->loge(Ljava/lang/String;)V

    .line 2646
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result p2

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/GsmCdmaPhone;->subscriptionIdToPhoneAccountHandle(I)Landroid/telecom/PhoneAccountHandle;

    move-result-object p2

    .line 2647
    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    .line 2648
    const-string p4, "android.telecom.extra.PHONE_ACCOUNT_HANDLE"

    invoke-virtual {p3, p4, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2650
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mContext:Landroid/content/Context;

    const-class p2, Landroid/telecom/TelecomManager;

    invoke-virtual {p0, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telecom/TelecomManager;

    .line 2651
    const-string p2, "tel"

    .line 2652
    invoke-static {p2, p1, v1}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 2651
    invoke-virtual {p0, p1, p3}, Landroid/telecom/TelecomManager;->placeCall(Landroid/net/Uri;Landroid/os/Bundle;)V

    .line 2654
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {v8, p0, v1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 2655
    invoke-virtual {v8}, Landroid/os/Message;->sendToTarget()V

    return-void

    .line 2657
    :cond_b9
    const-string p1, "setCallForwardingOption: SS over CDMA not supported, can not complete"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->loge(Ljava/lang/String;)V

    .line 2658
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {v8, p0, v1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 2659
    invoke-virtual {v8}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public blacklist setCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V
    .registers 13

    const/4 v4, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v5, p4

    move-object v6, p5

    .line 2592
    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/GsmCdmaPhone;->setCallForwardingOption(IILjava/lang/String;IILandroid/os/Message;)V

    return-void
.end method

.method public blacklist setCallWaiting(ZILandroid/os/Message;)V
    .registers 8

    if-eqz p1, :cond_5

    .line 2882
    sget-object v0, Lcom/android/internal/telephony/gsm/SsData$RequestType;->SS_ACTIVATION:Lcom/android/internal/telephony/gsm/SsData$RequestType;

    goto :goto_7

    .line 2883
    :cond_5
    sget-object v0, Lcom/android/internal/telephony/gsm/SsData$RequestType;->SS_DEACTIVATION:Lcom/android/internal/telephony/gsm/SsData$RequestType;

    .line 2884
    :goto_7
    sget-object v1, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_WAIT:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->isRequestBlockedByFDN(Lcom/android/internal/telephony/gsm/SsData$RequestType;Lcom/android/internal/telephony/gsm/SsData$ServiceType;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1e

    .line 2885
    new-instance p0, Lcom/android/internal/telephony/CommandException;

    sget-object p1, Lcom/android/internal/telephony/CommandException$Error;->FDN_CHECK_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    invoke-static {p3, v1, p0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 2887
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    return-void

    .line 2891
    :cond_1e
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCallWaitingController:Lcom/android/internal/telephony/CallWaitingController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/CallWaitingController;->setCallWaiting(ZILandroid/os/Message;)Z

    move-result v0

    if-eqz v0, :cond_27

    return-void

    .line 2893
    :cond_27
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    .line 2894
    invoke-virtual {p0, p3}, Lcom/android/internal/telephony/GsmCdmaPhone;->useSsOverIms(Landroid/os/Message;)Z

    move-result v2

    if-eqz v2, :cond_33

    .line 2895
    invoke-interface {v0, p1, p3}, Lcom/android/internal/telephony/PhoneInternalInterface;->setCallWaiting(ZLandroid/os/Message;)V

    return-void

    .line 2899
    :cond_33
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 2900
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/internal/telephony/CommandsInterface;->setCallWaiting(ZILandroid/os/Message;)V

    return-void

    .line 2901
    :cond_3f
    iget-boolean p2, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSsOverCdmaSupported:Z

    const/16 v0, 0xff

    if-eqz p2, :cond_8f

    .line 2902
    invoke-static {p1}, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->getCallWaitingPrefix(Z)Ljava/lang/String;

    move-result-object p1

    .line 2903
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCallWaiting in CDMA : dial for set call waiting prefix= "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v2, "GsmCdmaPhone"

    invoke-static {v2, p2}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2907
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result p2

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/GsmCdmaPhone;->subscriptionIdToPhoneAccountHandle(I)Landroid/telecom/PhoneAccountHandle;

    move-result-object p2

    .line 2908
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 2909
    const-string v3, "android.telecom.extra.PHONE_ACCOUNT_HANDLE"

    invoke-virtual {v2, v3, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2911
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mContext:Landroid/content/Context;

    const-class p2, Landroid/telecom/TelecomManager;

    invoke-virtual {p0, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telecom/TelecomManager;

    .line 2912
    const-string p2, "tel"

    .line 2913
    invoke-static {p2, p1, v1}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 2912
    invoke-virtual {p0, p1, v2}, Landroid/telecom/TelecomManager;->placeCall(Landroid/net/Uri;Landroid/os/Bundle;)V

    .line 2915
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p3, p0, v1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 2916
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    return-void

    .line 2918
    :cond_8f
    const-string p1, "setCallWaiting: SS over CDMA not supported, can not complete"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->loge(Ljava/lang/String;)V

    .line 2919
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p3, p0, v1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 2920
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public blacklist setCallWaiting(ZLandroid/os/Message;)V
    .registers 6

    .line 2870
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "carrier_config"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    .line 2871
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1d

    .line 2873
    const-string v2, "call_waiting_service_class_int"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 2876
    :cond_1d
    invoke-virtual {p0, p1, v1, p2}, Lcom/android/internal/telephony/GsmCdmaPhone;->setCallWaiting(ZILandroid/os/Message;)V

    return-void
.end method

.method public blacklist setCarrierInfoForImsiEncryption(Landroid/telephony/ImsiEncryptionInfo;)V
    .registers 4

    .line 2125
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/android/internal/telephony/Phone;->mPhoneId:I

    invoke-static {p1, v0, v1}, Lcom/android/internal/telephony/CarrierInfoManager;->setCarrierInfoForImsiEncryption(Landroid/telephony/ImsiEncryptionInfo;Landroid/content/Context;I)V

    .line 2126
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Lcom/android/internal/telephony/CommandsInterface;->setCarrierInfoForImsiEncryption(Landroid/telephony/ImsiEncryptionInfo;Landroid/os/Message;)V

    return-void
.end method

.method public blacklist setCarrierTestOverride(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 14

    .line 2203
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mCarrierResolver:Lcom/android/internal/telephony/CarrierResolver;

    invoke-virtual {v0, p9}, Lcom/android/internal/telephony/CarrierResolver;->setTestOverrideApn(Ljava/lang/String;)V

    .line 2204
    iget-object p9, p0, Lcom/android/internal/telephony/Phone;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    invoke-virtual {p9, v0}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccProfileForPhone(I)Lcom/android/internal/telephony/uicc/UiccProfile;

    move-result-object p9

    const/4 v0, 0x0

    if-eqz p9, :cond_32

    if-nez p8, :cond_16

    move-object p8, v0

    goto :goto_2e

    .line 2209
    :cond_16
    invoke-virtual {p8}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 2210
    sget-object p8, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_2e

    .line 2212
    :cond_1f
    new-instance v1, Landroid/telephony/UiccAccessRule;

    .line 2213
    invoke-static {p8}, Lcom/android/internal/telephony/uicc/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object p8

    const-wide/16 v2, 0x0

    invoke-direct {v1, p8, v0, v2, v3}, Landroid/telephony/UiccAccessRule;-><init>([BLjava/lang/String;J)V

    .line 2214
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p8

    .line 2216
    :goto_2e
    invoke-virtual {p9, p8}, Lcom/android/internal/telephony/uicc/UiccProfile;->setTestOverrideCarrierPrivilegeRules(Ljava/util/List;)V

    goto :goto_37

    .line 2219
    :cond_32
    iget-object p9, p0, Lcom/android/internal/telephony/Phone;->mCarrierResolver:Lcom/android/internal/telephony/CarrierResolver;

    invoke-virtual {p9, p8}, Lcom/android/internal/telephony/CarrierResolver;->setTestOverrideCarrierPriviledgeRule(Ljava/lang/String;)V

    .line 2222
    :goto_37
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result p8

    if-eqz p8, :cond_48

    .line 2223
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    :goto_46
    move-object p0, v0

    goto :goto_57

    .line 2224
    :cond_48
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeCdmaLte()Z

    move-result p8

    if-eqz p8, :cond_51

    .line 2225
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSimRecords:Lcom/android/internal/telephony/uicc/SIMRecords;

    goto :goto_46

    .line 2227
    :cond_51
    const-string p8, "setCarrierTestOverride fails in CDMA only"

    invoke-direct {p0, p8}, Lcom/android/internal/telephony/GsmCdmaPhone;->loge(Ljava/lang/String;)V

    goto :goto_46

    :goto_57
    if-eqz p0, :cond_5c

    .line 2230
    invoke-virtual/range {p0 .. p7}, Lcom/android/internal/telephony/uicc/IccRecords;->setCarrierTestOverride(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5c
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

    .line 5399
    iget-object p0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCellBroadcastConfigTracker:Lcom/android/internal/telephony/CellBroadcastConfigTracker;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/CellBroadcastConfigTracker;->setCellBroadcastIdRanges(Ljava/util/List;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public blacklist setCellBroadcastSmsConfig([ILandroid/os/Message;)V
    .registers 3

    .line 4083
    const-string p1, "[GsmCdmaPhone] setCellBroadcastSmsConfig() is obsolete; use SmsManager"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->loge(Ljava/lang/String;)V

    .line 4084
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public blacklist setDataRoamingEnabled(Z)V
    .registers 2

    .line 3009
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getDataSettingsManager()Lcom/android/internal/telephony/data/DataSettingsManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/DataSettingsManager;->setDataRoamingEnabled(Z)V

    return-void
.end method

.method public blacklist setImsRegistrationState(Z)V
    .registers 3

    .line 4719
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/ServiceStateTracker;->setImsRegistrationState(Z)V

    .line 4720
    iget-object p0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCallWaitingController:Lcom/android/internal/telephony/CallWaitingController;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/CallWaitingController;->setImsRegistrationState(Z)V

    return-void
.end method

.method protected blacklist setIsInEmergencyCall()V
    .registers 2

    .line 899
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->hasCalling()Z

    move-result v0

    if-nez v0, :cond_11

    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-nez v0, :cond_11

    .line 900
    iget-object p0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCT:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->setIsInEmergencyCall()V

    :cond_11
    return-void
.end method

.method public blacklist setLine1Number(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)Z
    .registers 6

    .line 2360
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_17

    .line 2361
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz p0, :cond_16

    .line 2363
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/uicc/IccRecords;->setMsisdnNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    const/4 p0, 0x1

    return p0

    :cond_16
    return v1

    .line 2369
    :cond_17
    const-string p1, "setLine1Number: not possible in CDMA"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->loge(Ljava/lang/String;)V

    return v1
.end method

.method public blacklist setLinkCapacityReportingCriteria([I[II)V
    .registers 12

    .line 4702
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v3, 0x32

    const/4 v7, 0x0

    const/16 v1, 0xbb8

    const/16 v2, 0x32

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    invoke-interface/range {v0 .. v7}, Lcom/android/internal/telephony/CommandsInterface;->setLinkCapacityReportingCriteria(III[I[IILandroid/os/Message;)V

    return-void
.end method

.method public blacklist setMute(Z)V
    .registers 2

    .line 2979
    iget-object p0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCT:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->setMute(Z)V

    return-void
.end method

.method public blacklist setN1ModeEnabled(ZLandroid/os/Message;)V
    .registers 4

    .line 2467
    new-instance v0, Lcom/android/internal/telephony/GsmCdmaPhone$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/internal/telephony/GsmCdmaPhone$$ExternalSyntheticLambda2;-><init>(Lcom/android/internal/telephony/GsmCdmaPhone;ZLandroid/os/Message;)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public greylist-max-r setOnEcbModeExitResponse(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 5

    .line 3035
    new-instance v0, Lcom/android/internal/telephony/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/internal/telephony/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mEcmExitRespRegistrant:Lcom/android/internal/telephony/Registrant;

    return-void
.end method

.method public blacklist setOperatorBrandOverride(Ljava/lang/String;)Z
    .registers 5

    .line 4800
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 4804
    :cond_6
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccPort(I)Lcom/android/internal/telephony/uicc/UiccPort;

    move-result-object v0

    if-nez v0, :cond_11

    return v1

    .line 4809
    :cond_11
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/uicc/UiccPort;->setOperatorBrandOverride(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2f

    .line 4813
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    .line 4814
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    invoke-virtual {v2}, Lcom/android/internal/telephony/ServiceStateTracker;->getServiceProviderName()Ljava/lang/String;

    move-result-object v2

    .line 4813
    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->setSimOperatorNameForPhone(ILjava/lang/String;)V

    .line 4816
    iget-object p0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->pollState()V

    :cond_2f
    return p1
.end method

.method public blacklist setOutgoingCallerIdDisplay(ILandroid/os/Message;)V
    .registers 6

    .line 2774
    invoke-static {p1}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->clirModeToRequestType(I)Lcom/android/internal/telephony/gsm/SsData$RequestType;

    move-result-object v0

    .line 2775
    sget-object v1, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_CLIR:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->isRequestBlockedByFDN(Lcom/android/internal/telephony/gsm/SsData$RequestType;Lcom/android/internal/telephony/gsm/SsData$ServiceType;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1b

    .line 2776
    new-instance p0, Lcom/android/internal/telephony/CommandException;

    sget-object p1, Lcom/android/internal/telephony/CommandException$Error;->FDN_CHECK_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    invoke-static {p2, v1, p0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 2778
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    return-void

    .line 2782
    :cond_1b
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    .line 2783
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/GsmCdmaPhone;->useSsOverIms(Landroid/os/Message;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 2784
    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/PhoneInternalInterface;->setOutgoingCallerIdDisplay(ILandroid/os/Message;)V

    return-void

    .line 2788
    :cond_27
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 2792
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x12

    const/4 v2, 0x0

    .line 2793
    invoke-virtual {p0, v1, p1, v2, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 2792
    invoke-interface {v0, p1, p0}, Lcom/android/internal/telephony/CommandsInterface;->setCLIR(ILandroid/os/Message;)V

    return-void

    .line 2795
    :cond_3a
    const-string p1, "setOutgoingCallerIdDisplay: not possible in CDMA"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->loge(Ljava/lang/String;)V

    .line 2796
    new-instance p0, Lcom/android/internal/telephony/CommandException;

    sget-object p1, Lcom/android/internal/telephony/CommandException$Error;->REQUEST_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    invoke-static {p2, v1, p0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 2798
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

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

    .line 1889
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/GsmCdmaPhone;->setRadioPowerForReason(ZZZZI)V

    return-void
.end method

.method public blacklist setRadioPowerForReason(ZZZZI)V
    .registers 6

    .line 1902
    iget-object p0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    invoke-virtual/range {p0 .. p5}, Lcom/android/internal/telephony/ServiceStateTracker;->setRadioPowerForReason(ZZZZI)V

    return-void
.end method

.method public blacklist setRadioPowerOnForTestEmergencyCall(Z)V
    .registers 4

    .line 1878
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/ServiceStateTracker;->clearAllRadioOffReasons()V

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1883
    invoke-virtual {p0, v0, v1, p1, v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->setRadioPower(ZZZZ)V

    return-void
.end method

.method public blacklist setTTYMode(ILandroid/os/Message;)V
    .registers 3

    .line 2964
    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/Phone;->setTTYMode(ILandroid/os/Message;)V

    .line 2965
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    if-eqz p0, :cond_a

    .line 2966
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/Phone;->setTTYMode(ILandroid/os/Message;)V

    :cond_a
    return-void
.end method

.method public blacklist setTerminalBasedCallWaitingStatus(I)V
    .registers 2

    .line 2931
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    if-eqz p0, :cond_7

    .line 2932
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Phone;->setTerminalBasedCallWaitingStatus(I)V

    :cond_7
    return-void
.end method

.method public blacklist setTerminalBasedCallWaitingSupported(Z)V
    .registers 2

    .line 2938
    iget-object p0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCallWaitingController:Lcom/android/internal/telephony/CallWaitingController;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/CallWaitingController;->setTerminalBasedCallWaitingSupported(Z)V

    return-void
.end method

.method public blacklist setUiTTYMode(ILandroid/os/Message;)V
    .registers 3

    .line 2972
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    if-eqz p0, :cond_7

    .line 2973
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/Phone;->setUiTTYMode(ILandroid/os/Message;)V

    :cond_7
    return-void
.end method

.method public blacklist setVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 5

    .line 2377
    iput-object p2, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mVmNumber:Ljava/lang/String;

    const/16 p2, 0x14

    const/4 v0, 0x0

    .line 2378
    invoke-virtual {p0, p2, v0, v0, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    .line 2380
    iget-object p3, p0, Lcom/android/internal/telephony/Phone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 2382
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-nez v0, :cond_1c

    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSimRecords:Lcom/android/internal/telephony/uicc/SIMRecords;

    if-eqz v0, :cond_1c

    move-object p3, v0

    :cond_1c
    if-eqz p3, :cond_23

    .line 2387
    iget-object p0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mVmNumber:Ljava/lang/String;

    invoke-virtual {p3, p1, p0, p2}, Lcom/android/internal/telephony/uicc/IccRecords;->setVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    :cond_23
    return-void
.end method

.method public blacklist setVoiceMessageWaiting(II)V
    .registers 4

    .line 5051
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 5052
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v0, :cond_14

    .line 5054
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/uicc/IccRecords;->setVoiceMessageWaiting(II)V

    return-void

    .line 5056
    :cond_14
    const-string p1, "SIM Records not found, MWI not updated"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    return-void

    .line 5059
    :cond_1a
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/Phone;->setVoiceMessageCount(I)V

    return-void
.end method

.method public blacklist setVoiceServiceStateOverride(Z)V
    .registers 4

    xor-int/lit8 v0, p1, 0x1

    .line 739
    iget v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mTelecomVoiceServiceStateOverride:I

    if-eq v0, v1, :cond_8

    const/4 v1, 0x1

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    .line 740
    :goto_9
    iput v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mTelecomVoiceServiceStateOverride:I

    if-eqz v1, :cond_1d

    .line 741
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    if-eqz v0, :cond_1d

    .line 742
    invoke-virtual {v0}, Lcom/android/internal/telephony/ServiceStateTracker;->onTelecomVoiceServiceStateOverrideChanged()V

    .line 743
    iget-object p0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getServiceStateStats()Lcom/android/internal/telephony/metrics/ServiceStateStats;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/metrics/ServiceStateStats;->onVoiceServiceStateOverrideChanged(Z)V

    :cond_1d
    return-void
.end method

.method public blacklist shouldForceAutoNetworkSelect()Z
    .registers 5

    .line 4111
    sget v0, Lcom/android/internal/telephony/RILConstants;->PREFERRED_NETWORK_MODE:I

    invoke-static {v0}, Landroid/telephony/RadioAccessFamily;->getRafFromNetworkType(I)I

    .line 4113
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v0

    .line 4116
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_11

    return v1

    .line 4120
    :cond_11
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/Phone;->getAllowedNetworkTypes(I)J

    move-result-wide v2

    long-to-int v0, v2

    .line 4123
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "shouldForceAutoNetworkSelect in mode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 4128
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isManualSelProhibitedInGlobalMode()Z

    move-result v2

    if-eqz v2, :cond_55

    const/16 v2, 0xa

    .line 4129
    invoke-static {v2}, Landroid/telephony/RadioAccessFamily;->getRafFromNetworkType(I)I

    move-result v2

    if-eq v0, v2, :cond_3f

    const/4 v2, 0x7

    .line 4131
    invoke-static {v2}, Landroid/telephony/RadioAccessFamily;->getRafFromNetworkType(I)I

    move-result v2

    if-ne v0, v2, :cond_55

    .line 4133
    :cond_3f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Should force auto network select mode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    .line 4136
    :cond_55
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Should not force auto network select mode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    return v1
.end method

.method public blacklist startConference([Ljava/lang/String;Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;)Lcom/android/internal/telephony/Connection;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .line 1420
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    .line 1421
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/GsmCdmaPhone;->useImsForCall(Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;)Z

    move-result v1

    .line 1422
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "useImsForCall="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    if-eqz v1, :cond_60

    .line 1425
    :try_start_1c
    const-string v2, "Trying IMS PS Conference call"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 1426
    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/PhoneInternalInterface;->startConference([Ljava/lang/String;Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;)Lcom/android/internal/telephony/Connection;

    move-result-object p0
    :try_end_25
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_1c .. :try_end_25} :catch_26

    return-object p0

    :catch_26
    move-exception p1

    .line 1428
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IMS PS conference call exception "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "useImsForCall ="

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", imsPhone ="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 1430
    new-instance p0, Lcom/android/internal/telephony/CallStateException;

    invoke-virtual {p1}, Lcom/android/internal/telephony/CallStateException;->getError()I

    move-result p2

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/android/internal/telephony/CallStateException;-><init>(ILjava/lang/String;)V

    .line 1431
    invoke-virtual {p1}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Exception;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 1432
    throw p0

    .line 1435
    :cond_60
    new-instance p0, Lcom/android/internal/telephony/CallStateException;

    const/4 p1, 0x1

    const-string p2, "cannot dial conference call in out of service"

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/CallStateException;-><init>(ILjava/lang/String;)V

    throw p0
.end method

.method public blacklist startDtmf(C)V
    .registers 4

    .line 1841
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->is12Key(C)Z

    move-result v0

    if-nez v0, :cond_20

    .line 1842
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startDtmf called with invalid character \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->loge(Ljava/lang/String;)V

    return-void

    .line 1844
    :cond_20
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Lcom/android/internal/telephony/CommandsInterface;->startDtmf(CLandroid/os/Message;)V

    return-void
.end method

.method public blacklist startNetworkScan(Landroid/telephony/NetworkScanRequest;Landroid/os/Message;)V
    .registers 3

    .line 2953
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {p0, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->startNetworkScan(Landroid/telephony/NetworkScanRequest;Landroid/os/Message;)V

    return-void
.end method

.method public blacklist stopDtmf()V
    .registers 2

    .line 1850
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/android/internal/telephony/CommandsInterface;->stopDtmf(Landroid/os/Message;)V

    return-void
.end method

.method public blacklist stopNetworkScan(Landroid/os/Message;)V
    .registers 2

    .line 2958
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {p0, p1}, Lcom/android/internal/telephony/CommandsInterface;->stopNetworkScan(Landroid/os/Message;)V

    return-void
.end method

.method public blacklist supports3gppCallForwardingWhileRoaming()Z
    .registers 3

    .line 3093
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "carrier_config"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    .line 3094
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object p0

    const/4 v0, 0x1

    if-eqz p0, :cond_1e

    .line 3096
    const-string v1, "support_3gpp_call_forwarding_while_roaming_bool"

    invoke-virtual {p0, v1, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0

    :cond_1e
    return v0
.end method

.method public blacklist switchHoldingAndActive()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .line 1008
    iget-object p0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCT:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->switchWaitingOrHoldingAndActive()V

    return-void
.end method

.method public blacklist unregisterForCallWaiting(Landroid/os/Handler;)V
    .registers 2

    .line 3050
    iget-object p0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCT:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    if-eqz p0, :cond_7

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->unregisterForCallWaiting(Landroid/os/Handler;)V

    :cond_7
    return-void
.end method

.method public blacklist unregisterForCdmaOtaStatusChange(Landroid/os/Handler;)V
    .registers 2

    .line 3019
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {p0, p1}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForCdmaOtaProvision(Landroid/os/Handler;)V

    return-void
.end method

.method public blacklist unregisterForEcmTimerReset(Landroid/os/Handler;)V
    .registers 2

    .line 5001
    iget-object p0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mEcmTimerResetRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public blacklist unregisterForEmergencyDomainSelected(Landroid/os/Handler;)V
    .registers 2

    .line 5031
    iget-object p0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mEmergencyDomainSelectedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public blacklist unregisterForSimRecordsLoaded(Landroid/os/Handler;)V
    .registers 2

    .line 986
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mSimRecordsLoadedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public blacklist unregisterForSubscriptionInfoReady(Landroid/os/Handler;)V
    .registers 2

    .line 3029
    iget-object p0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ServiceStateTracker;->unregisterForSubscriptionInfoReady(Landroid/os/Handler;)V

    return-void
.end method

.method public blacklist unregisterForSuppServiceNotification(Landroid/os/Handler;)V
    .registers 2

    .line 976
    iget-object p0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSsnRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public blacklist unregisterForVolteSilentRedial(Landroid/os/Handler;)V
    .registers 2

    .line 5011
    iget-object p0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mVolteSilentRedialRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public blacklist unsetOnEcbModeExitResponse(Landroid/os/Handler;)V
    .registers 2

    .line 3040
    iget-object p0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mEcmExitRespRegistrant:Lcom/android/internal/telephony/Registrant;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Registrant;->clear()V

    return-void
.end method

.method public blacklist updateCurrentCarrierInProvider()Z
    .registers 6

    .line 3972
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v0

    int-to-long v0, v0

    .line 3973
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v2

    .line 3975
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateCurrentCarrierInProvider: mSubId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " currentDds = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " operatorNumeric = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 3978
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_65

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v3

    int-to-long v3, v3

    cmp-long v0, v3, v0

    if-nez v0, :cond_65

    .line 3980
    :try_start_40
    sget-object v0, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "current"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 3981
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 3982
    const-string v3, "numeric"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3983
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_5b
    .catch Landroid/database/SQLException; {:try_start_40 .. :try_end_5b} :catch_5d

    const/4 p0, 0x1

    return p0

    :catch_5d
    move-exception p0

    .line 3986
    const-string v0, "GsmCdmaPhone"

    const-string v1, "Can\'t store current operator"

    invoke-static {v0, v1, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_65
    const/4 p0, 0x0

    return p0
.end method

.method protected blacklist updateManualNetworkSelection(Lcom/android/internal/telephony/Phone$NetworkSelectMessage;)V
    .registers 4

    .line 2298
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v0

    .line 2299
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 2300
    iget-object p1, p1, Lcom/android/internal/telephony/Phone$NetworkSelectMessage;->operatorNumeric:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mManualNetworkSelectionPlmn:Ljava/lang/String;

    return-void

    :cond_f
    const/4 p1, 0x0

    .line 2303
    iput-object p1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mManualNetworkSelectionPlmn:Ljava/lang/String;

    .line 2304
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Cannot update network selection due to invalid subId "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "GsmCdmaPhone"

    invoke-static {p1, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public blacklist updateNullCipherNotifier()V
    .registers 5

    .line 5464
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mSubscriptionManagerService:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    .line 5465
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getSubscriptionInfoInternal(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 5468
    invoke-virtual {v0}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->isActive()Z

    move-result v1

    goto :goto_12

    :cond_11
    const/4 v1, 0x0

    .line 5470
    :goto_12
    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mNullCipherNotifier:Lcom/android/internal/telephony/security/NullCipherNotifier;

    iget-object v3, p0, Lcom/android/internal/telephony/Phone;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p0

    if-eqz v1, :cond_21

    .line 5471
    invoke-virtual {v0}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->getSubscriptionId()I

    move-result v0

    goto :goto_22

    :cond_21
    const/4 v0, -0x1

    .line 5470
    :goto_22
    invoke-virtual {v2, v3, p0, v0}, Lcom/android/internal/telephony/security/NullCipherNotifier;->setSubscriptionMapping(Landroid/content/Context;II)V

    return-void
.end method

.method public blacklist updatePhoneObject(I)V
    .registers 5

    .line 4713
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updatePhoneObject: radioTechnology="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/16 v2, 0x2a

    .line 4714
    invoke-virtual {p0, v2, p1, v0, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public blacklist updateServiceLocation(Landroid/os/WorkSource;)V
    .registers 2

    .line 2989
    iget-object p0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ServiceStateTracker;->enableSingleLocationUpdate(Landroid/os/WorkSource;)V

    return-void
.end method

.method public blacklist updateVoiceMail()V
    .registers 4

    .line 816
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-eqz v0, :cond_41

    .line 818
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v0, :cond_15

    .line 821
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getVoiceMessageCount()I

    move-result v0

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    :goto_16
    const/4 v1, -0x2

    if-ne v0, v1, :cond_1d

    .line 824
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getStoredVoiceMessageCount()I

    move-result v0

    .line 826
    :cond_1d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateVoiceMail countVoiceMessages = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " subId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 827
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 826
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 828
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/Phone;->setVoiceMessageCount(I)V

    return-void

    .line 830
    :cond_41
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getStoredVoiceMessageCount()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/Phone;->setVoiceMessageCount(I)V

    return-void
.end method

.method public blacklist useImsForEmergency()Z
    .registers 3

    .line 1407
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mContext:Landroid/content/Context;

    const-string v1, "carrier_config"

    .line 1408
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    .line 1409
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v0

    const-string v1, "carrier_use_ims_first_for_emergency_bool"

    .line 1410
    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 1411
    iget-object v1, p0, Lcom/android/internal/telephony/Phone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v1, :cond_36

    if-eqz v0, :cond_36

    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/android/internal/telephony/Phone;->mPhoneId:I

    .line 1413
    invoke-static {v0, v1}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/ims/ImsManager;->isNonTtyOrTtyOnVolteEnabled()Z

    move-result v0

    if-eqz v0, :cond_36

    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    .line 1414
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->isImsAvailable()Z

    move-result p0

    if-eqz p0, :cond_36

    const/4 p0, 0x1

    return p0

    :cond_36
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist useSsOverIms(Landroid/os/Message;)Z
    .registers 5

    .line 2525
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isUtEnabled()Z

    move-result v0

    .line 2527
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "useSsOverIms: isUtEnabled()= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " isCsRetry(onComplete))= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2528
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->isCsRetry(Landroid/os/Message;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2527
    const-string v2, "GsmCdmaPhone"

    invoke-static {v2, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_30

    .line 2530
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->isCsRetry(Landroid/os/Message;)Z

    move-result p0

    if-nez p0, :cond_30

    const/4 p0, 0x1

    return p0

    :cond_30
    const/4 p0, 0x0

    return p0
.end method
